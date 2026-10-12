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
  ret i32 606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca ptr, align 8
  %50 = alloca i64, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca i32, align 4
  %57 = alloca ptr, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca ptr, align 8
  %64 = alloca i64, align 8
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  store ptr %0, ptr %63, align 8
  store i64 %1, ptr %64, align 8
  store i32 %2, ptr %65, align 4
  %67 = call i32 @XXH_isLittleEndian()
  store i32 %67, ptr %66, align 4
  %68 = load i32, ptr %66, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %274

70:                                               ; preds = %3
  %71 = load ptr, ptr %63, align 8
  %72 = load i64, ptr %64, align 8
  %73 = load i32, ptr %65, align 4
  store ptr %71, ptr %36, align 8
  store i64 %72, ptr %37, align 8
  store i32 %73, ptr %38, align 4
  store i32 1, ptr %39, align 4
  store i32 1, ptr %40, align 4
  %74 = load ptr, ptr %36, align 8
  store ptr %74, ptr %41, align 8
  %75 = load ptr, ptr %41, align 8
  %76 = load i64, ptr %37, align 8
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 %76
  store ptr %77, ptr %42, align 8
  %78 = load i64, ptr %37, align 8
  %79 = icmp uge i64 %78, 16
  br i1 %79, label %80, label %259

80:                                               ; preds = %70
  %81 = load ptr, ptr %42, align 8
  %82 = getelementptr inbounds i8, ptr %81, i64 -15
  store ptr %82, ptr %44, align 8
  %83 = load i32, ptr %38, align 4
  %84 = add i32 %83, -1640531535
  %85 = add i32 %84, -2048144777
  store i32 %85, ptr %45, align 4
  %86 = load i32, ptr %38, align 4
  %87 = add i32 %86, -2048144777
  store i32 %87, ptr %46, align 4
  %88 = load i32, ptr %38, align 4
  store i32 %88, ptr %47, align 4
  %89 = load i32, ptr %38, align 4
  %90 = sub i32 %89, -1640531535
  store i32 %90, ptr %48, align 4
  br label %91

91:                                               ; preds = %227, %80
  %92 = load i32, ptr %45, align 4
  %93 = load ptr, ptr %41, align 8
  %94 = load i32, ptr %39, align 4
  %95 = load i32, ptr %40, align 4
  store ptr %93, ptr %21, align 8
  store i32 %94, ptr %22, align 4
  store i32 %95, ptr %23, align 4
  %96 = load i32, ptr %23, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = load i32, ptr %22, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load ptr, ptr %21, align 8
  %103 = call i32 @XXH_read32(ptr noundef %102)
  br label %108

104:                                              ; preds = %98
  %105 = load ptr, ptr %21, align 8
  %106 = call i32 @XXH_read32(ptr noundef %105)
  %107 = call i32 @XXH_swap32(i32 noundef %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i32 [ %103, %101 ], [ %107, %104 ]
  store i32 %109, ptr %20, align 4
  br label %122

110:                                              ; preds = %91
  %111 = load i32, ptr %22, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load ptr, ptr %21, align 8
  %115 = load i32, ptr %114, align 4
  br label %120

116:                                              ; preds = %110
  %117 = load ptr, ptr %21, align 8
  %118 = load i32, ptr %117, align 4
  %119 = call i32 @XXH_swap32(i32 noundef %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = phi i32 [ %115, %113 ], [ %119, %116 ]
  store i32 %121, ptr %20, align 4
  br label %122

122:                                              ; preds = %108, %120
  %123 = load i32, ptr %20, align 4
  %124 = call i32 @XXH32_round(i32 noundef %92, i32 noundef %123)
  store i32 %124, ptr %45, align 4
  %125 = load ptr, ptr %41, align 8
  %126 = getelementptr inbounds i8, ptr %125, i64 4
  store ptr %126, ptr %41, align 8
  %127 = load i32, ptr %46, align 4
  %128 = load ptr, ptr %41, align 8
  %129 = load i32, ptr %39, align 4
  %130 = load i32, ptr %40, align 4
  store ptr %128, ptr %25, align 8
  store i32 %129, ptr %26, align 4
  store i32 %130, ptr %27, align 4
  %131 = load i32, ptr %27, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %145

133:                                              ; preds = %122
  %134 = load i32, ptr %26, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load ptr, ptr %25, align 8
  %138 = call i32 @XXH_read32(ptr noundef %137)
  br label %143

139:                                              ; preds = %133
  %140 = load ptr, ptr %25, align 8
  %141 = call i32 @XXH_read32(ptr noundef %140)
  %142 = call i32 @XXH_swap32(i32 noundef %141)
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i32 [ %138, %136 ], [ %142, %139 ]
  store i32 %144, ptr %24, align 4
  br label %157

145:                                              ; preds = %122
  %146 = load i32, ptr %26, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load ptr, ptr %25, align 8
  %150 = load i32, ptr %149, align 4
  br label %155

151:                                              ; preds = %145
  %152 = load ptr, ptr %25, align 8
  %153 = load i32, ptr %152, align 4
  %154 = call i32 @XXH_swap32(i32 noundef %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = phi i32 [ %150, %148 ], [ %154, %151 ]
  store i32 %156, ptr %24, align 4
  br label %157

157:                                              ; preds = %143, %155
  %158 = load i32, ptr %24, align 4
  %159 = call i32 @XXH32_round(i32 noundef %127, i32 noundef %158)
  store i32 %159, ptr %46, align 4
  %160 = load ptr, ptr %41, align 8
  %161 = getelementptr inbounds i8, ptr %160, i64 4
  store ptr %161, ptr %41, align 8
  %162 = load i32, ptr %47, align 4
  %163 = load ptr, ptr %41, align 8
  %164 = load i32, ptr %39, align 4
  %165 = load i32, ptr %40, align 4
  store ptr %163, ptr %29, align 8
  store i32 %164, ptr %30, align 4
  store i32 %165, ptr %31, align 4
  %166 = load i32, ptr %31, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %180

168:                                              ; preds = %157
  %169 = load i32, ptr %30, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load ptr, ptr %29, align 8
  %173 = call i32 @XXH_read32(ptr noundef %172)
  br label %178

174:                                              ; preds = %168
  %175 = load ptr, ptr %29, align 8
  %176 = call i32 @XXH_read32(ptr noundef %175)
  %177 = call i32 @XXH_swap32(i32 noundef %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i32 [ %173, %171 ], [ %177, %174 ]
  store i32 %179, ptr %28, align 4
  br label %192

180:                                              ; preds = %157
  %181 = load i32, ptr %30, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load ptr, ptr %29, align 8
  %185 = load i32, ptr %184, align 4
  br label %190

186:                                              ; preds = %180
  %187 = load ptr, ptr %29, align 8
  %188 = load i32, ptr %187, align 4
  %189 = call i32 @XXH_swap32(i32 noundef %188)
  br label %190

190:                                              ; preds = %186, %183
  %191 = phi i32 [ %185, %183 ], [ %189, %186 ]
  store i32 %191, ptr %28, align 4
  br label %192

192:                                              ; preds = %178, %190
  %193 = load i32, ptr %28, align 4
  %194 = call i32 @XXH32_round(i32 noundef %162, i32 noundef %193)
  store i32 %194, ptr %47, align 4
  %195 = load ptr, ptr %41, align 8
  %196 = getelementptr inbounds i8, ptr %195, i64 4
  store ptr %196, ptr %41, align 8
  %197 = load i32, ptr %48, align 4
  %198 = load ptr, ptr %41, align 8
  %199 = load i32, ptr %39, align 4
  %200 = load i32, ptr %40, align 4
  store ptr %198, ptr %33, align 8
  store i32 %199, ptr %34, align 4
  store i32 %200, ptr %35, align 4
  %201 = load i32, ptr %35, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %215

203:                                              ; preds = %192
  %204 = load i32, ptr %34, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load ptr, ptr %33, align 8
  %208 = call i32 @XXH_read32(ptr noundef %207)
  br label %213

209:                                              ; preds = %203
  %210 = load ptr, ptr %33, align 8
  %211 = call i32 @XXH_read32(ptr noundef %210)
  %212 = call i32 @XXH_swap32(i32 noundef %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = phi i32 [ %208, %206 ], [ %212, %209 ]
  store i32 %214, ptr %32, align 4
  br label %227

215:                                              ; preds = %192
  %216 = load i32, ptr %34, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load ptr, ptr %33, align 8
  %220 = load i32, ptr %219, align 4
  br label %225

221:                                              ; preds = %215
  %222 = load ptr, ptr %33, align 8
  %223 = load i32, ptr %222, align 4
  %224 = call i32 @XXH_swap32(i32 noundef %223)
  br label %225

225:                                              ; preds = %221, %218
  %226 = phi i32 [ %220, %218 ], [ %224, %221 ]
  store i32 %226, ptr %32, align 4
  br label %227

227:                                              ; preds = %213, %225
  %228 = load i32, ptr %32, align 4
  %229 = call i32 @XXH32_round(i32 noundef %197, i32 noundef %228)
  store i32 %229, ptr %48, align 4
  %230 = load ptr, ptr %41, align 8
  %231 = getelementptr inbounds i8, ptr %230, i64 4
  store ptr %231, ptr %41, align 8
  %232 = load ptr, ptr %41, align 8
  %233 = load ptr, ptr %44, align 8
  %234 = icmp ult ptr %232, %233
  br i1 %234, label %91, label %235

235:                                              ; preds = %227
  %236 = load i32, ptr %45, align 4
  %237 = shl i32 %236, 1
  %238 = load i32, ptr %45, align 4
  %239 = lshr i32 %238, 31
  %240 = or i32 %237, %239
  %241 = load i32, ptr %46, align 4
  %242 = shl i32 %241, 7
  %243 = load i32, ptr %46, align 4
  %244 = lshr i32 %243, 25
  %245 = or i32 %242, %244
  %246 = add i32 %240, %245
  %247 = load i32, ptr %47, align 4
  %248 = shl i32 %247, 12
  %249 = load i32, ptr %47, align 4
  %250 = lshr i32 %249, 20
  %251 = or i32 %248, %250
  %252 = add i32 %246, %251
  %253 = load i32, ptr %48, align 4
  %254 = shl i32 %253, 18
  %255 = load i32, ptr %48, align 4
  %256 = lshr i32 %255, 14
  %257 = or i32 %254, %256
  %258 = add i32 %252, %257
  store i32 %258, ptr %43, align 4
  br label %262

259:                                              ; preds = %70
  %260 = load i32, ptr %38, align 4
  %261 = add i32 %260, 374761393
  store i32 %261, ptr %43, align 4
  br label %262

262:                                              ; preds = %235, %259
  %263 = load i64, ptr %37, align 8
  %264 = trunc i64 %263 to i32
  %265 = load i32, ptr %43, align 4
  %266 = add i32 %265, %264
  store i32 %266, ptr %43, align 4
  %267 = load i32, ptr %43, align 4
  %268 = load ptr, ptr %41, align 8
  %269 = load i64, ptr %37, align 8
  %270 = and i64 %269, 15
  %271 = load i32, ptr %39, align 4
  %272 = load i32, ptr %40, align 4
  %273 = call i32 @XXH32_finalize(i32 noundef %267, ptr noundef %268, i64 noundef %270, i32 noundef %271, i32 noundef %272)
  store i32 %273, ptr %62, align 4
  br label %478

274:                                              ; preds = %3
  %275 = load ptr, ptr %63, align 8
  %276 = load i64, ptr %64, align 8
  %277 = load i32, ptr %65, align 4
  store ptr %275, ptr %49, align 8
  store i64 %276, ptr %50, align 8
  store i32 %277, ptr %51, align 4
  store i32 0, ptr %52, align 4
  store i32 1, ptr %53, align 4
  %278 = load ptr, ptr %49, align 8
  store ptr %278, ptr %54, align 8
  %279 = load ptr, ptr %54, align 8
  %280 = load i64, ptr %50, align 8
  %281 = getelementptr inbounds nuw i8, ptr %279, i64 %280
  store ptr %281, ptr %55, align 8
  %282 = load i64, ptr %50, align 8
  %283 = icmp uge i64 %282, 16
  br i1 %283, label %284, label %463

284:                                              ; preds = %274
  %285 = load ptr, ptr %55, align 8
  %286 = getelementptr inbounds i8, ptr %285, i64 -15
  store ptr %286, ptr %57, align 8
  %287 = load i32, ptr %51, align 4
  %288 = add i32 %287, -1640531535
  %289 = add i32 %288, -2048144777
  store i32 %289, ptr %58, align 4
  %290 = load i32, ptr %51, align 4
  %291 = add i32 %290, -2048144777
  store i32 %291, ptr %59, align 4
  %292 = load i32, ptr %51, align 4
  store i32 %292, ptr %60, align 4
  %293 = load i32, ptr %51, align 4
  %294 = sub i32 %293, -1640531535
  store i32 %294, ptr %61, align 4
  br label %295

295:                                              ; preds = %431, %284
  %296 = load i32, ptr %58, align 4
  %297 = load ptr, ptr %54, align 8
  %298 = load i32, ptr %52, align 4
  %299 = load i32, ptr %53, align 4
  store ptr %297, ptr %5, align 8
  store i32 %298, ptr %6, align 4
  store i32 %299, ptr %7, align 4
  %300 = load i32, ptr %7, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %314

302:                                              ; preds = %295
  %303 = load i32, ptr %6, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load ptr, ptr %5, align 8
  %307 = call i32 @XXH_read32(ptr noundef %306)
  br label %312

308:                                              ; preds = %302
  %309 = load ptr, ptr %5, align 8
  %310 = call i32 @XXH_read32(ptr noundef %309)
  %311 = call i32 @XXH_swap32(i32 noundef %310)
  br label %312

312:                                              ; preds = %308, %305
  %313 = phi i32 [ %307, %305 ], [ %311, %308 ]
  store i32 %313, ptr %4, align 4
  br label %326

314:                                              ; preds = %295
  %315 = load i32, ptr %6, align 4
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load ptr, ptr %5, align 8
  %319 = load i32, ptr %318, align 4
  br label %324

320:                                              ; preds = %314
  %321 = load ptr, ptr %5, align 8
  %322 = load i32, ptr %321, align 4
  %323 = call i32 @XXH_swap32(i32 noundef %322)
  br label %324

324:                                              ; preds = %320, %317
  %325 = phi i32 [ %319, %317 ], [ %323, %320 ]
  store i32 %325, ptr %4, align 4
  br label %326

326:                                              ; preds = %312, %324
  %327 = load i32, ptr %4, align 4
  %328 = call i32 @XXH32_round(i32 noundef %296, i32 noundef %327)
  store i32 %328, ptr %58, align 4
  %329 = load ptr, ptr %54, align 8
  %330 = getelementptr inbounds i8, ptr %329, i64 4
  store ptr %330, ptr %54, align 8
  %331 = load i32, ptr %59, align 4
  %332 = load ptr, ptr %54, align 8
  %333 = load i32, ptr %52, align 4
  %334 = load i32, ptr %53, align 4
  store ptr %332, ptr %9, align 8
  store i32 %333, ptr %10, align 4
  store i32 %334, ptr %11, align 4
  %335 = load i32, ptr %11, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %349

337:                                              ; preds = %326
  %338 = load i32, ptr %10, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load ptr, ptr %9, align 8
  %342 = call i32 @XXH_read32(ptr noundef %341)
  br label %347

343:                                              ; preds = %337
  %344 = load ptr, ptr %9, align 8
  %345 = call i32 @XXH_read32(ptr noundef %344)
  %346 = call i32 @XXH_swap32(i32 noundef %345)
  br label %347

347:                                              ; preds = %343, %340
  %348 = phi i32 [ %342, %340 ], [ %346, %343 ]
  store i32 %348, ptr %8, align 4
  br label %361

349:                                              ; preds = %326
  %350 = load i32, ptr %10, align 4
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %352, label %355

352:                                              ; preds = %349
  %353 = load ptr, ptr %9, align 8
  %354 = load i32, ptr %353, align 4
  br label %359

355:                                              ; preds = %349
  %356 = load ptr, ptr %9, align 8
  %357 = load i32, ptr %356, align 4
  %358 = call i32 @XXH_swap32(i32 noundef %357)
  br label %359

359:                                              ; preds = %355, %352
  %360 = phi i32 [ %354, %352 ], [ %358, %355 ]
  store i32 %360, ptr %8, align 4
  br label %361

361:                                              ; preds = %347, %359
  %362 = load i32, ptr %8, align 4
  %363 = call i32 @XXH32_round(i32 noundef %331, i32 noundef %362)
  store i32 %363, ptr %59, align 4
  %364 = load ptr, ptr %54, align 8
  %365 = getelementptr inbounds i8, ptr %364, i64 4
  store ptr %365, ptr %54, align 8
  %366 = load i32, ptr %60, align 4
  %367 = load ptr, ptr %54, align 8
  %368 = load i32, ptr %52, align 4
  %369 = load i32, ptr %53, align 4
  store ptr %367, ptr %13, align 8
  store i32 %368, ptr %14, align 4
  store i32 %369, ptr %15, align 4
  %370 = load i32, ptr %15, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %384

372:                                              ; preds = %361
  %373 = load i32, ptr %14, align 4
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load ptr, ptr %13, align 8
  %377 = call i32 @XXH_read32(ptr noundef %376)
  br label %382

378:                                              ; preds = %372
  %379 = load ptr, ptr %13, align 8
  %380 = call i32 @XXH_read32(ptr noundef %379)
  %381 = call i32 @XXH_swap32(i32 noundef %380)
  br label %382

382:                                              ; preds = %378, %375
  %383 = phi i32 [ %377, %375 ], [ %381, %378 ]
  store i32 %383, ptr %12, align 4
  br label %396

384:                                              ; preds = %361
  %385 = load i32, ptr %14, align 4
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load ptr, ptr %13, align 8
  %389 = load i32, ptr %388, align 4
  br label %394

390:                                              ; preds = %384
  %391 = load ptr, ptr %13, align 8
  %392 = load i32, ptr %391, align 4
  %393 = call i32 @XXH_swap32(i32 noundef %392)
  br label %394

394:                                              ; preds = %390, %387
  %395 = phi i32 [ %389, %387 ], [ %393, %390 ]
  store i32 %395, ptr %12, align 4
  br label %396

396:                                              ; preds = %382, %394
  %397 = load i32, ptr %12, align 4
  %398 = call i32 @XXH32_round(i32 noundef %366, i32 noundef %397)
  store i32 %398, ptr %60, align 4
  %399 = load ptr, ptr %54, align 8
  %400 = getelementptr inbounds i8, ptr %399, i64 4
  store ptr %400, ptr %54, align 8
  %401 = load i32, ptr %61, align 4
  %402 = load ptr, ptr %54, align 8
  %403 = load i32, ptr %52, align 4
  %404 = load i32, ptr %53, align 4
  store ptr %402, ptr %17, align 8
  store i32 %403, ptr %18, align 4
  store i32 %404, ptr %19, align 4
  %405 = load i32, ptr %19, align 4
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %407, label %419

407:                                              ; preds = %396
  %408 = load i32, ptr %18, align 4
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %410, label %413

410:                                              ; preds = %407
  %411 = load ptr, ptr %17, align 8
  %412 = call i32 @XXH_read32(ptr noundef %411)
  br label %417

413:                                              ; preds = %407
  %414 = load ptr, ptr %17, align 8
  %415 = call i32 @XXH_read32(ptr noundef %414)
  %416 = call i32 @XXH_swap32(i32 noundef %415)
  br label %417

417:                                              ; preds = %413, %410
  %418 = phi i32 [ %412, %410 ], [ %416, %413 ]
  store i32 %418, ptr %16, align 4
  br label %431

419:                                              ; preds = %396
  %420 = load i32, ptr %18, align 4
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %422, label %425

422:                                              ; preds = %419
  %423 = load ptr, ptr %17, align 8
  %424 = load i32, ptr %423, align 4
  br label %429

425:                                              ; preds = %419
  %426 = load ptr, ptr %17, align 8
  %427 = load i32, ptr %426, align 4
  %428 = call i32 @XXH_swap32(i32 noundef %427)
  br label %429

429:                                              ; preds = %425, %422
  %430 = phi i32 [ %424, %422 ], [ %428, %425 ]
  store i32 %430, ptr %16, align 4
  br label %431

431:                                              ; preds = %417, %429
  %432 = load i32, ptr %16, align 4
  %433 = call i32 @XXH32_round(i32 noundef %401, i32 noundef %432)
  store i32 %433, ptr %61, align 4
  %434 = load ptr, ptr %54, align 8
  %435 = getelementptr inbounds i8, ptr %434, i64 4
  store ptr %435, ptr %54, align 8
  %436 = load ptr, ptr %54, align 8
  %437 = load ptr, ptr %57, align 8
  %438 = icmp ult ptr %436, %437
  br i1 %438, label %295, label %439

439:                                              ; preds = %431
  %440 = load i32, ptr %58, align 4
  %441 = shl i32 %440, 1
  %442 = load i32, ptr %58, align 4
  %443 = lshr i32 %442, 31
  %444 = or i32 %441, %443
  %445 = load i32, ptr %59, align 4
  %446 = shl i32 %445, 7
  %447 = load i32, ptr %59, align 4
  %448 = lshr i32 %447, 25
  %449 = or i32 %446, %448
  %450 = add i32 %444, %449
  %451 = load i32, ptr %60, align 4
  %452 = shl i32 %451, 12
  %453 = load i32, ptr %60, align 4
  %454 = lshr i32 %453, 20
  %455 = or i32 %452, %454
  %456 = add i32 %450, %455
  %457 = load i32, ptr %61, align 4
  %458 = shl i32 %457, 18
  %459 = load i32, ptr %61, align 4
  %460 = lshr i32 %459, 14
  %461 = or i32 %458, %460
  %462 = add i32 %456, %461
  store i32 %462, ptr %56, align 4
  br label %466

463:                                              ; preds = %274
  %464 = load i32, ptr %51, align 4
  %465 = add i32 %464, 374761393
  store i32 %465, ptr %56, align 4
  br label %466

466:                                              ; preds = %439, %463
  %467 = load i64, ptr %50, align 8
  %468 = trunc i64 %467 to i32
  %469 = load i32, ptr %56, align 4
  %470 = add i32 %469, %468
  store i32 %470, ptr %56, align 4
  %471 = load i32, ptr %56, align 4
  %472 = load ptr, ptr %54, align 8
  %473 = load i64, ptr %50, align 8
  %474 = and i64 %473, 15
  %475 = load i32, ptr %52, align 4
  %476 = load i32, ptr %53, align 4
  %477 = call i32 @XXH32_finalize(i32 noundef %471, ptr noundef %472, i64 noundef %474, i32 noundef %475, i32 noundef %476)
  store i32 %477, ptr %62, align 4
  br label %478

478:                                              ; preds = %466, %262
  %479 = load i32, ptr %62, align 4
  ret i32 %479
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
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca ptr, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca ptr, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca ptr, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca ptr, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca ptr, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca ptr, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca ptr, align 8
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca ptr, align 8
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca ptr, align 8
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca ptr, align 8
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca ptr, align 8
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca ptr, align 8
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca ptr, align 8
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca ptr, align 8
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca ptr, align 8
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca ptr, align 8
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca ptr, align 8
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca ptr, align 8
  %102 = alloca ptr, align 8
  %103 = alloca i64, align 8
  %104 = alloca i32, align 4
  %105 = alloca ptr, align 8
  %106 = alloca ptr, align 8
  %107 = alloca ptr, align 8
  %108 = alloca ptr, align 8
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca ptr, align 8
  %115 = alloca ptr, align 8
  %116 = alloca i64, align 8
  %117 = alloca i32, align 4
  %118 = alloca ptr, align 8
  %119 = alloca ptr, align 8
  %120 = alloca ptr, align 8
  %121 = alloca ptr, align 8
  %122 = alloca i32, align 4
  %123 = alloca i32, align 4
  %124 = alloca i32, align 4
  %125 = alloca i32, align 4
  %126 = alloca i32, align 4
  %127 = alloca ptr, align 8
  %128 = alloca ptr, align 8
  %129 = alloca i64, align 8
  %130 = alloca i32, align 4
  store ptr %0, ptr %127, align 8
  store ptr %1, ptr %128, align 8
  store i64 %2, ptr %129, align 8
  %131 = call i32 @XXH_isLittleEndian()
  store i32 %131, ptr %130, align 4
  %132 = load i32, ptr %130, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %582

134:                                              ; preds = %3
  %135 = load ptr, ptr %127, align 8
  %136 = load ptr, ptr %128, align 8
  %137 = load i64, ptr %129, align 8
  store ptr %135, ptr %101, align 8
  store ptr %136, ptr %102, align 8
  store i64 %137, ptr %103, align 8
  store i32 1, ptr %104, align 4
  %138 = load ptr, ptr %102, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 1, ptr %100, align 4
  br label %580

141:                                              ; preds = %134
  %142 = load ptr, ptr %102, align 8
  store ptr %142, ptr %105, align 8
  %143 = load ptr, ptr %105, align 8
  %144 = load i64, ptr %103, align 8
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 %144
  store ptr %145, ptr %106, align 8
  %146 = load i64, ptr %103, align 8
  %147 = trunc i64 %146 to i32
  %148 = load ptr, ptr %101, align 8
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, %147
  store i32 %150, ptr %148, align 4
  %151 = load i64, ptr %103, align 8
  %152 = icmp uge i64 %151, 16
  %153 = zext i1 %152 to i32
  %154 = load ptr, ptr %101, align 8
  %155 = load i32, ptr %154, align 4
  %156 = icmp uge i32 %155, 16
  %157 = zext i1 %156 to i32
  %158 = or i32 %153, %157
  %159 = load ptr, ptr %101, align 8
  %160 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %159, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, ptr %160, align 4
  %163 = load ptr, ptr %101, align 8
  %164 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %163, i32 0, i32 7
  %165 = load i32, ptr %164, align 4
  %166 = zext i32 %165 to i64
  %167 = load i64, ptr %103, align 8
  %168 = add i64 %166, %167
  %169 = icmp ult i64 %168, 16
  br i1 %169, label %170, label %187

170:                                              ; preds = %141
  %171 = load ptr, ptr %101, align 8
  %172 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %171, i32 0, i32 6
  %173 = load ptr, ptr %101, align 8
  %174 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %173, i32 0, i32 7
  %175 = load i32, ptr %174, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds nuw i8, ptr %172, i64 %176
  %178 = load ptr, ptr %102, align 8
  %179 = load i64, ptr %103, align 8
  %180 = call ptr @XXH_memcpy(ptr noundef %177, ptr noundef %178, i64 noundef %179)
  %181 = load i64, ptr %103, align 8
  %182 = trunc i64 %181 to i32
  %183 = load ptr, ptr %101, align 8
  %184 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %183, i32 0, i32 7
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, %182
  store i32 %186, ptr %184, align 4
  store i32 0, ptr %100, align 4
  br label %580

187:                                              ; preds = %141
  %188 = load ptr, ptr %101, align 8
  %189 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %188, i32 0, i32 7
  %190 = load i32, ptr %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %376

192:                                              ; preds = %187
  %193 = load ptr, ptr %101, align 8
  %194 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %193, i32 0, i32 6
  %195 = load ptr, ptr %101, align 8
  %196 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %195, i32 0, i32 7
  %197 = load i32, ptr %196, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds nuw i8, ptr %194, i64 %198
  %200 = load ptr, ptr %102, align 8
  %201 = load ptr, ptr %101, align 8
  %202 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %201, i32 0, i32 7
  %203 = load i32, ptr %202, align 4
  %204 = sub i32 16, %203
  %205 = zext i32 %204 to i64
  %206 = call ptr @XXH_memcpy(ptr noundef %199, ptr noundef %200, i64 noundef %205)
  %207 = load ptr, ptr %101, align 8
  %208 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %207, i32 0, i32 6
  store ptr %208, ptr %107, align 8
  %209 = load ptr, ptr %101, align 8
  %210 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %209, i32 0, i32 2
  %211 = load i32, ptr %210, align 4
  %212 = load ptr, ptr %107, align 8
  %213 = load i32, ptr %104, align 4
  store ptr %212, ptr %80, align 8
  store i32 %213, ptr %81, align 4
  %214 = load ptr, ptr %80, align 8
  %215 = load i32, ptr %81, align 4
  store ptr %214, ptr %77, align 8
  store i32 %215, ptr %78, align 4
  store i32 1, ptr %79, align 4
  %216 = load i32, ptr %79, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %230

218:                                              ; preds = %192
  %219 = load i32, ptr %78, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load ptr, ptr %77, align 8
  %223 = call i32 @XXH_read32(ptr noundef %222)
  br label %228

224:                                              ; preds = %218
  %225 = load ptr, ptr %77, align 8
  %226 = call i32 @XXH_read32(ptr noundef %225)
  %227 = call i32 @XXH_swap32(i32 noundef %226)
  br label %228

228:                                              ; preds = %224, %221
  %229 = phi i32 [ %223, %221 ], [ %227, %224 ]
  store i32 %229, ptr %76, align 4
  br label %242

230:                                              ; preds = %192
  %231 = load i32, ptr %78, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load ptr, ptr %77, align 8
  %235 = load i32, ptr %234, align 4
  br label %240

236:                                              ; preds = %230
  %237 = load ptr, ptr %77, align 8
  %238 = load i32, ptr %237, align 4
  %239 = call i32 @XXH_swap32(i32 noundef %238)
  br label %240

240:                                              ; preds = %236, %233
  %241 = phi i32 [ %235, %233 ], [ %239, %236 ]
  store i32 %241, ptr %76, align 4
  br label %242

242:                                              ; preds = %228, %240
  %243 = load i32, ptr %76, align 4
  %244 = call i32 @XXH32_round(i32 noundef %211, i32 noundef %243)
  %245 = load ptr, ptr %101, align 8
  %246 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %245, i32 0, i32 2
  store i32 %244, ptr %246, align 4
  %247 = load ptr, ptr %107, align 8
  %248 = getelementptr inbounds nuw i32, ptr %247, i32 1
  store ptr %248, ptr %107, align 8
  %249 = load ptr, ptr %101, align 8
  %250 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %249, i32 0, i32 3
  %251 = load i32, ptr %250, align 4
  %252 = load ptr, ptr %107, align 8
  %253 = load i32, ptr %104, align 4
  store ptr %252, ptr %86, align 8
  store i32 %253, ptr %87, align 4
  %254 = load ptr, ptr %86, align 8
  %255 = load i32, ptr %87, align 4
  store ptr %254, ptr %83, align 8
  store i32 %255, ptr %84, align 4
  store i32 1, ptr %85, align 4
  %256 = load i32, ptr %85, align 4
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %270

258:                                              ; preds = %242
  %259 = load i32, ptr %84, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load ptr, ptr %83, align 8
  %263 = call i32 @XXH_read32(ptr noundef %262)
  br label %268

264:                                              ; preds = %258
  %265 = load ptr, ptr %83, align 8
  %266 = call i32 @XXH_read32(ptr noundef %265)
  %267 = call i32 @XXH_swap32(i32 noundef %266)
  br label %268

268:                                              ; preds = %264, %261
  %269 = phi i32 [ %263, %261 ], [ %267, %264 ]
  store i32 %269, ptr %82, align 4
  br label %282

270:                                              ; preds = %242
  %271 = load i32, ptr %84, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load ptr, ptr %83, align 8
  %275 = load i32, ptr %274, align 4
  br label %280

276:                                              ; preds = %270
  %277 = load ptr, ptr %83, align 8
  %278 = load i32, ptr %277, align 4
  %279 = call i32 @XXH_swap32(i32 noundef %278)
  br label %280

280:                                              ; preds = %276, %273
  %281 = phi i32 [ %275, %273 ], [ %279, %276 ]
  store i32 %281, ptr %82, align 4
  br label %282

282:                                              ; preds = %268, %280
  %283 = load i32, ptr %82, align 4
  %284 = call i32 @XXH32_round(i32 noundef %251, i32 noundef %283)
  %285 = load ptr, ptr %101, align 8
  %286 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %285, i32 0, i32 3
  store i32 %284, ptr %286, align 4
  %287 = load ptr, ptr %107, align 8
  %288 = getelementptr inbounds nuw i32, ptr %287, i32 1
  store ptr %288, ptr %107, align 8
  %289 = load ptr, ptr %101, align 8
  %290 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %289, i32 0, i32 4
  %291 = load i32, ptr %290, align 4
  %292 = load ptr, ptr %107, align 8
  %293 = load i32, ptr %104, align 4
  store ptr %292, ptr %92, align 8
  store i32 %293, ptr %93, align 4
  %294 = load ptr, ptr %92, align 8
  %295 = load i32, ptr %93, align 4
  store ptr %294, ptr %89, align 8
  store i32 %295, ptr %90, align 4
  store i32 1, ptr %91, align 4
  %296 = load i32, ptr %91, align 4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %310

298:                                              ; preds = %282
  %299 = load i32, ptr %90, align 4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load ptr, ptr %89, align 8
  %303 = call i32 @XXH_read32(ptr noundef %302)
  br label %308

304:                                              ; preds = %298
  %305 = load ptr, ptr %89, align 8
  %306 = call i32 @XXH_read32(ptr noundef %305)
  %307 = call i32 @XXH_swap32(i32 noundef %306)
  br label %308

308:                                              ; preds = %304, %301
  %309 = phi i32 [ %303, %301 ], [ %307, %304 ]
  store i32 %309, ptr %88, align 4
  br label %322

310:                                              ; preds = %282
  %311 = load i32, ptr %90, align 4
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load ptr, ptr %89, align 8
  %315 = load i32, ptr %314, align 4
  br label %320

316:                                              ; preds = %310
  %317 = load ptr, ptr %89, align 8
  %318 = load i32, ptr %317, align 4
  %319 = call i32 @XXH_swap32(i32 noundef %318)
  br label %320

320:                                              ; preds = %316, %313
  %321 = phi i32 [ %315, %313 ], [ %319, %316 ]
  store i32 %321, ptr %88, align 4
  br label %322

322:                                              ; preds = %308, %320
  %323 = load i32, ptr %88, align 4
  %324 = call i32 @XXH32_round(i32 noundef %291, i32 noundef %323)
  %325 = load ptr, ptr %101, align 8
  %326 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %325, i32 0, i32 4
  store i32 %324, ptr %326, align 4
  %327 = load ptr, ptr %107, align 8
  %328 = getelementptr inbounds nuw i32, ptr %327, i32 1
  store ptr %328, ptr %107, align 8
  %329 = load ptr, ptr %101, align 8
  %330 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %329, i32 0, i32 5
  %331 = load i32, ptr %330, align 4
  %332 = load ptr, ptr %107, align 8
  %333 = load i32, ptr %104, align 4
  store ptr %332, ptr %98, align 8
  store i32 %333, ptr %99, align 4
  %334 = load ptr, ptr %98, align 8
  %335 = load i32, ptr %99, align 4
  store ptr %334, ptr %95, align 8
  store i32 %335, ptr %96, align 4
  store i32 1, ptr %97, align 4
  %336 = load i32, ptr %97, align 4
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %350

338:                                              ; preds = %322
  %339 = load i32, ptr %96, align 4
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load ptr, ptr %95, align 8
  %343 = call i32 @XXH_read32(ptr noundef %342)
  br label %348

344:                                              ; preds = %338
  %345 = load ptr, ptr %95, align 8
  %346 = call i32 @XXH_read32(ptr noundef %345)
  %347 = call i32 @XXH_swap32(i32 noundef %346)
  br label %348

348:                                              ; preds = %344, %341
  %349 = phi i32 [ %343, %341 ], [ %347, %344 ]
  store i32 %349, ptr %94, align 4
  br label %362

350:                                              ; preds = %322
  %351 = load i32, ptr %96, align 4
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %356

353:                                              ; preds = %350
  %354 = load ptr, ptr %95, align 8
  %355 = load i32, ptr %354, align 4
  br label %360

356:                                              ; preds = %350
  %357 = load ptr, ptr %95, align 8
  %358 = load i32, ptr %357, align 4
  %359 = call i32 @XXH_swap32(i32 noundef %358)
  br label %360

360:                                              ; preds = %356, %353
  %361 = phi i32 [ %355, %353 ], [ %359, %356 ]
  store i32 %361, ptr %94, align 4
  br label %362

362:                                              ; preds = %348, %360
  %363 = load i32, ptr %94, align 4
  %364 = call i32 @XXH32_round(i32 noundef %331, i32 noundef %363)
  %365 = load ptr, ptr %101, align 8
  %366 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %365, i32 0, i32 5
  store i32 %364, ptr %366, align 4
  %367 = load ptr, ptr %101, align 8
  %368 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %367, i32 0, i32 7
  %369 = load i32, ptr %368, align 4
  %370 = sub i32 16, %369
  %371 = load ptr, ptr %105, align 8
  %372 = zext i32 %370 to i64
  %373 = getelementptr inbounds nuw i8, ptr %371, i64 %372
  store ptr %373, ptr %105, align 8
  %374 = load ptr, ptr %101, align 8
  %375 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %374, i32 0, i32 7
  store i32 0, ptr %375, align 4
  br label %376

376:                                              ; preds = %362, %187
  %377 = load ptr, ptr %105, align 8
  %378 = load ptr, ptr %106, align 8
  %379 = getelementptr inbounds i8, ptr %378, i64 -16
  %380 = icmp ule ptr %377, %379
  br i1 %380, label %381, label %557

381:                                              ; preds = %376
  %382 = load ptr, ptr %106, align 8
  %383 = getelementptr inbounds i8, ptr %382, i64 -16
  store ptr %383, ptr %108, align 8
  %384 = load ptr, ptr %101, align 8
  %385 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %384, i32 0, i32 2
  %386 = load i32, ptr %385, align 4
  store i32 %386, ptr %109, align 4
  %387 = load ptr, ptr %101, align 8
  %388 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %387, i32 0, i32 3
  %389 = load i32, ptr %388, align 4
  store i32 %389, ptr %110, align 4
  %390 = load ptr, ptr %101, align 8
  %391 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %390, i32 0, i32 4
  %392 = load i32, ptr %391, align 4
  store i32 %392, ptr %111, align 4
  %393 = load ptr, ptr %101, align 8
  %394 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %393, i32 0, i32 5
  %395 = load i32, ptr %394, align 4
  store i32 %395, ptr %112, align 4
  br label %396

396:                                              ; preds = %536, %381
  %397 = load i32, ptr %109, align 4
  %398 = load ptr, ptr %105, align 8
  %399 = load i32, ptr %104, align 4
  store ptr %398, ptr %56, align 8
  store i32 %399, ptr %57, align 4
  %400 = load ptr, ptr %56, align 8
  %401 = load i32, ptr %57, align 4
  store ptr %400, ptr %53, align 8
  store i32 %401, ptr %54, align 4
  store i32 1, ptr %55, align 4
  %402 = load i32, ptr %55, align 4
  %403 = icmp eq i32 %402, 1
  br i1 %403, label %404, label %416

404:                                              ; preds = %396
  %405 = load i32, ptr %54, align 4
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %407, label %410

407:                                              ; preds = %404
  %408 = load ptr, ptr %53, align 8
  %409 = call i32 @XXH_read32(ptr noundef %408)
  br label %414

410:                                              ; preds = %404
  %411 = load ptr, ptr %53, align 8
  %412 = call i32 @XXH_read32(ptr noundef %411)
  %413 = call i32 @XXH_swap32(i32 noundef %412)
  br label %414

414:                                              ; preds = %410, %407
  %415 = phi i32 [ %409, %407 ], [ %413, %410 ]
  store i32 %415, ptr %52, align 4
  br label %428

416:                                              ; preds = %396
  %417 = load i32, ptr %54, align 4
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load ptr, ptr %53, align 8
  %421 = load i32, ptr %420, align 4
  br label %426

422:                                              ; preds = %416
  %423 = load ptr, ptr %53, align 8
  %424 = load i32, ptr %423, align 4
  %425 = call i32 @XXH_swap32(i32 noundef %424)
  br label %426

426:                                              ; preds = %422, %419
  %427 = phi i32 [ %421, %419 ], [ %425, %422 ]
  store i32 %427, ptr %52, align 4
  br label %428

428:                                              ; preds = %414, %426
  %429 = load i32, ptr %52, align 4
  %430 = call i32 @XXH32_round(i32 noundef %397, i32 noundef %429)
  store i32 %430, ptr %109, align 4
  %431 = load ptr, ptr %105, align 8
  %432 = getelementptr inbounds i8, ptr %431, i64 4
  store ptr %432, ptr %105, align 8
  %433 = load i32, ptr %110, align 4
  %434 = load ptr, ptr %105, align 8
  %435 = load i32, ptr %104, align 4
  store ptr %434, ptr %62, align 8
  store i32 %435, ptr %63, align 4
  %436 = load ptr, ptr %62, align 8
  %437 = load i32, ptr %63, align 4
  store ptr %436, ptr %59, align 8
  store i32 %437, ptr %60, align 4
  store i32 1, ptr %61, align 4
  %438 = load i32, ptr %61, align 4
  %439 = icmp eq i32 %438, 1
  br i1 %439, label %440, label %452

440:                                              ; preds = %428
  %441 = load i32, ptr %60, align 4
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %443, label %446

443:                                              ; preds = %440
  %444 = load ptr, ptr %59, align 8
  %445 = call i32 @XXH_read32(ptr noundef %444)
  br label %450

446:                                              ; preds = %440
  %447 = load ptr, ptr %59, align 8
  %448 = call i32 @XXH_read32(ptr noundef %447)
  %449 = call i32 @XXH_swap32(i32 noundef %448)
  br label %450

450:                                              ; preds = %446, %443
  %451 = phi i32 [ %445, %443 ], [ %449, %446 ]
  store i32 %451, ptr %58, align 4
  br label %464

452:                                              ; preds = %428
  %453 = load i32, ptr %60, align 4
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %458

455:                                              ; preds = %452
  %456 = load ptr, ptr %59, align 8
  %457 = load i32, ptr %456, align 4
  br label %462

458:                                              ; preds = %452
  %459 = load ptr, ptr %59, align 8
  %460 = load i32, ptr %459, align 4
  %461 = call i32 @XXH_swap32(i32 noundef %460)
  br label %462

462:                                              ; preds = %458, %455
  %463 = phi i32 [ %457, %455 ], [ %461, %458 ]
  store i32 %463, ptr %58, align 4
  br label %464

464:                                              ; preds = %450, %462
  %465 = load i32, ptr %58, align 4
  %466 = call i32 @XXH32_round(i32 noundef %433, i32 noundef %465)
  store i32 %466, ptr %110, align 4
  %467 = load ptr, ptr %105, align 8
  %468 = getelementptr inbounds i8, ptr %467, i64 4
  store ptr %468, ptr %105, align 8
  %469 = load i32, ptr %111, align 4
  %470 = load ptr, ptr %105, align 8
  %471 = load i32, ptr %104, align 4
  store ptr %470, ptr %68, align 8
  store i32 %471, ptr %69, align 4
  %472 = load ptr, ptr %68, align 8
  %473 = load i32, ptr %69, align 4
  store ptr %472, ptr %65, align 8
  store i32 %473, ptr %66, align 4
  store i32 1, ptr %67, align 4
  %474 = load i32, ptr %67, align 4
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %476, label %488

476:                                              ; preds = %464
  %477 = load i32, ptr %66, align 4
  %478 = icmp eq i32 %477, 1
  br i1 %478, label %479, label %482

479:                                              ; preds = %476
  %480 = load ptr, ptr %65, align 8
  %481 = call i32 @XXH_read32(ptr noundef %480)
  br label %486

482:                                              ; preds = %476
  %483 = load ptr, ptr %65, align 8
  %484 = call i32 @XXH_read32(ptr noundef %483)
  %485 = call i32 @XXH_swap32(i32 noundef %484)
  br label %486

486:                                              ; preds = %482, %479
  %487 = phi i32 [ %481, %479 ], [ %485, %482 ]
  store i32 %487, ptr %64, align 4
  br label %500

488:                                              ; preds = %464
  %489 = load i32, ptr %66, align 4
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %491, label %494

491:                                              ; preds = %488
  %492 = load ptr, ptr %65, align 8
  %493 = load i32, ptr %492, align 4
  br label %498

494:                                              ; preds = %488
  %495 = load ptr, ptr %65, align 8
  %496 = load i32, ptr %495, align 4
  %497 = call i32 @XXH_swap32(i32 noundef %496)
  br label %498

498:                                              ; preds = %494, %491
  %499 = phi i32 [ %493, %491 ], [ %497, %494 ]
  store i32 %499, ptr %64, align 4
  br label %500

500:                                              ; preds = %486, %498
  %501 = load i32, ptr %64, align 4
  %502 = call i32 @XXH32_round(i32 noundef %469, i32 noundef %501)
  store i32 %502, ptr %111, align 4
  %503 = load ptr, ptr %105, align 8
  %504 = getelementptr inbounds i8, ptr %503, i64 4
  store ptr %504, ptr %105, align 8
  %505 = load i32, ptr %112, align 4
  %506 = load ptr, ptr %105, align 8
  %507 = load i32, ptr %104, align 4
  store ptr %506, ptr %74, align 8
  store i32 %507, ptr %75, align 4
  %508 = load ptr, ptr %74, align 8
  %509 = load i32, ptr %75, align 4
  store ptr %508, ptr %71, align 8
  store i32 %509, ptr %72, align 4
  store i32 1, ptr %73, align 4
  %510 = load i32, ptr %73, align 4
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %512, label %524

512:                                              ; preds = %500
  %513 = load i32, ptr %72, align 4
  %514 = icmp eq i32 %513, 1
  br i1 %514, label %515, label %518

515:                                              ; preds = %512
  %516 = load ptr, ptr %71, align 8
  %517 = call i32 @XXH_read32(ptr noundef %516)
  br label %522

518:                                              ; preds = %512
  %519 = load ptr, ptr %71, align 8
  %520 = call i32 @XXH_read32(ptr noundef %519)
  %521 = call i32 @XXH_swap32(i32 noundef %520)
  br label %522

522:                                              ; preds = %518, %515
  %523 = phi i32 [ %517, %515 ], [ %521, %518 ]
  store i32 %523, ptr %70, align 4
  br label %536

524:                                              ; preds = %500
  %525 = load i32, ptr %72, align 4
  %526 = icmp eq i32 %525, 1
  br i1 %526, label %527, label %530

527:                                              ; preds = %524
  %528 = load ptr, ptr %71, align 8
  %529 = load i32, ptr %528, align 4
  br label %534

530:                                              ; preds = %524
  %531 = load ptr, ptr %71, align 8
  %532 = load i32, ptr %531, align 4
  %533 = call i32 @XXH_swap32(i32 noundef %532)
  br label %534

534:                                              ; preds = %530, %527
  %535 = phi i32 [ %529, %527 ], [ %533, %530 ]
  store i32 %535, ptr %70, align 4
  br label %536

536:                                              ; preds = %522, %534
  %537 = load i32, ptr %70, align 4
  %538 = call i32 @XXH32_round(i32 noundef %505, i32 noundef %537)
  store i32 %538, ptr %112, align 4
  %539 = load ptr, ptr %105, align 8
  %540 = getelementptr inbounds i8, ptr %539, i64 4
  store ptr %540, ptr %105, align 8
  %541 = load ptr, ptr %105, align 8
  %542 = load ptr, ptr %108, align 8
  %543 = icmp ule ptr %541, %542
  br i1 %543, label %396, label %544

544:                                              ; preds = %536
  %545 = load i32, ptr %109, align 4
  %546 = load ptr, ptr %101, align 8
  %547 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %546, i32 0, i32 2
  store i32 %545, ptr %547, align 4
  %548 = load i32, ptr %110, align 4
  %549 = load ptr, ptr %101, align 8
  %550 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %549, i32 0, i32 3
  store i32 %548, ptr %550, align 4
  %551 = load i32, ptr %111, align 4
  %552 = load ptr, ptr %101, align 8
  %553 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %552, i32 0, i32 4
  store i32 %551, ptr %553, align 4
  %554 = load i32, ptr %112, align 4
  %555 = load ptr, ptr %101, align 8
  %556 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %555, i32 0, i32 5
  store i32 %554, ptr %556, align 4
  br label %557

557:                                              ; preds = %544, %376
  %558 = load ptr, ptr %105, align 8
  %559 = load ptr, ptr %106, align 8
  %560 = icmp ult ptr %558, %559
  br i1 %560, label %561, label %579

561:                                              ; preds = %557
  %562 = load ptr, ptr %101, align 8
  %563 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %562, i32 0, i32 6
  %564 = load ptr, ptr %105, align 8
  %565 = load ptr, ptr %106, align 8
  %566 = load ptr, ptr %105, align 8
  %567 = ptrtoint ptr %565 to i64
  %568 = ptrtoint ptr %566 to i64
  %569 = sub i64 %567, %568
  %570 = call ptr @XXH_memcpy(ptr noundef %563, ptr noundef %564, i64 noundef %569)
  %571 = load ptr, ptr %106, align 8
  %572 = load ptr, ptr %105, align 8
  %573 = ptrtoint ptr %571 to i64
  %574 = ptrtoint ptr %572 to i64
  %575 = sub i64 %573, %574
  %576 = trunc i64 %575 to i32
  %577 = load ptr, ptr %101, align 8
  %578 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %577, i32 0, i32 7
  store i32 %576, ptr %578, align 4
  br label %579

579:                                              ; preds = %561, %557
  store i32 0, ptr %100, align 4
  br label %580

580:                                              ; preds = %140, %170, %579
  %581 = load i32, ptr %100, align 4
  store i32 %581, ptr %126, align 4
  br label %1030

582:                                              ; preds = %3
  %583 = load ptr, ptr %127, align 8
  %584 = load ptr, ptr %128, align 8
  %585 = load i64, ptr %129, align 8
  store ptr %583, ptr %114, align 8
  store ptr %584, ptr %115, align 8
  store i64 %585, ptr %116, align 8
  store i32 0, ptr %117, align 4
  %586 = load ptr, ptr %115, align 8
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %589

588:                                              ; preds = %582
  store i32 1, ptr %113, align 4
  br label %1028

589:                                              ; preds = %582
  %590 = load ptr, ptr %115, align 8
  store ptr %590, ptr %118, align 8
  %591 = load ptr, ptr %118, align 8
  %592 = load i64, ptr %116, align 8
  %593 = getelementptr inbounds nuw i8, ptr %591, i64 %592
  store ptr %593, ptr %119, align 8
  %594 = load i64, ptr %116, align 8
  %595 = trunc i64 %594 to i32
  %596 = load ptr, ptr %114, align 8
  %597 = load i32, ptr %596, align 4
  %598 = add i32 %597, %595
  store i32 %598, ptr %596, align 4
  %599 = load i64, ptr %116, align 8
  %600 = icmp uge i64 %599, 16
  %601 = zext i1 %600 to i32
  %602 = load ptr, ptr %114, align 8
  %603 = load i32, ptr %602, align 4
  %604 = icmp uge i32 %603, 16
  %605 = zext i1 %604 to i32
  %606 = or i32 %601, %605
  %607 = load ptr, ptr %114, align 8
  %608 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %607, i32 0, i32 1
  %609 = load i32, ptr %608, align 4
  %610 = or i32 %609, %606
  store i32 %610, ptr %608, align 4
  %611 = load ptr, ptr %114, align 8
  %612 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %611, i32 0, i32 7
  %613 = load i32, ptr %612, align 4
  %614 = zext i32 %613 to i64
  %615 = load i64, ptr %116, align 8
  %616 = add i64 %614, %615
  %617 = icmp ult i64 %616, 16
  br i1 %617, label %618, label %635

618:                                              ; preds = %589
  %619 = load ptr, ptr %114, align 8
  %620 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %619, i32 0, i32 6
  %621 = load ptr, ptr %114, align 8
  %622 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %621, i32 0, i32 7
  %623 = load i32, ptr %622, align 4
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds nuw i8, ptr %620, i64 %624
  %626 = load ptr, ptr %115, align 8
  %627 = load i64, ptr %116, align 8
  %628 = call ptr @XXH_memcpy(ptr noundef %625, ptr noundef %626, i64 noundef %627)
  %629 = load i64, ptr %116, align 8
  %630 = trunc i64 %629 to i32
  %631 = load ptr, ptr %114, align 8
  %632 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %631, i32 0, i32 7
  %633 = load i32, ptr %632, align 4
  %634 = add i32 %633, %630
  store i32 %634, ptr %632, align 4
  store i32 0, ptr %113, align 4
  br label %1028

635:                                              ; preds = %589
  %636 = load ptr, ptr %114, align 8
  %637 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %636, i32 0, i32 7
  %638 = load i32, ptr %637, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %824

640:                                              ; preds = %635
  %641 = load ptr, ptr %114, align 8
  %642 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %641, i32 0, i32 6
  %643 = load ptr, ptr %114, align 8
  %644 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %643, i32 0, i32 7
  %645 = load i32, ptr %644, align 4
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds nuw i8, ptr %642, i64 %646
  %648 = load ptr, ptr %115, align 8
  %649 = load ptr, ptr %114, align 8
  %650 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %649, i32 0, i32 7
  %651 = load i32, ptr %650, align 4
  %652 = sub i32 16, %651
  %653 = zext i32 %652 to i64
  %654 = call ptr @XXH_memcpy(ptr noundef %647, ptr noundef %648, i64 noundef %653)
  %655 = load ptr, ptr %114, align 8
  %656 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %655, i32 0, i32 6
  store ptr %656, ptr %120, align 8
  %657 = load ptr, ptr %114, align 8
  %658 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %657, i32 0, i32 2
  %659 = load i32, ptr %658, align 4
  %660 = load ptr, ptr %120, align 8
  %661 = load i32, ptr %117, align 4
  store ptr %660, ptr %32, align 8
  store i32 %661, ptr %33, align 4
  %662 = load ptr, ptr %32, align 8
  %663 = load i32, ptr %33, align 4
  store ptr %662, ptr %29, align 8
  store i32 %663, ptr %30, align 4
  store i32 1, ptr %31, align 4
  %664 = load i32, ptr %31, align 4
  %665 = icmp eq i32 %664, 1
  br i1 %665, label %666, label %678

666:                                              ; preds = %640
  %667 = load i32, ptr %30, align 4
  %668 = icmp eq i32 %667, 1
  br i1 %668, label %669, label %672

669:                                              ; preds = %666
  %670 = load ptr, ptr %29, align 8
  %671 = call i32 @XXH_read32(ptr noundef %670)
  br label %676

672:                                              ; preds = %666
  %673 = load ptr, ptr %29, align 8
  %674 = call i32 @XXH_read32(ptr noundef %673)
  %675 = call i32 @XXH_swap32(i32 noundef %674)
  br label %676

676:                                              ; preds = %672, %669
  %677 = phi i32 [ %671, %669 ], [ %675, %672 ]
  store i32 %677, ptr %28, align 4
  br label %690

678:                                              ; preds = %640
  %679 = load i32, ptr %30, align 4
  %680 = icmp eq i32 %679, 1
  br i1 %680, label %681, label %684

681:                                              ; preds = %678
  %682 = load ptr, ptr %29, align 8
  %683 = load i32, ptr %682, align 4
  br label %688

684:                                              ; preds = %678
  %685 = load ptr, ptr %29, align 8
  %686 = load i32, ptr %685, align 4
  %687 = call i32 @XXH_swap32(i32 noundef %686)
  br label %688

688:                                              ; preds = %684, %681
  %689 = phi i32 [ %683, %681 ], [ %687, %684 ]
  store i32 %689, ptr %28, align 4
  br label %690

690:                                              ; preds = %676, %688
  %691 = load i32, ptr %28, align 4
  %692 = call i32 @XXH32_round(i32 noundef %659, i32 noundef %691)
  %693 = load ptr, ptr %114, align 8
  %694 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %693, i32 0, i32 2
  store i32 %692, ptr %694, align 4
  %695 = load ptr, ptr %120, align 8
  %696 = getelementptr inbounds nuw i32, ptr %695, i32 1
  store ptr %696, ptr %120, align 8
  %697 = load ptr, ptr %114, align 8
  %698 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %697, i32 0, i32 3
  %699 = load i32, ptr %698, align 4
  %700 = load ptr, ptr %120, align 8
  %701 = load i32, ptr %117, align 4
  store ptr %700, ptr %38, align 8
  store i32 %701, ptr %39, align 4
  %702 = load ptr, ptr %38, align 8
  %703 = load i32, ptr %39, align 4
  store ptr %702, ptr %35, align 8
  store i32 %703, ptr %36, align 4
  store i32 1, ptr %37, align 4
  %704 = load i32, ptr %37, align 4
  %705 = icmp eq i32 %704, 1
  br i1 %705, label %706, label %718

706:                                              ; preds = %690
  %707 = load i32, ptr %36, align 4
  %708 = icmp eq i32 %707, 1
  br i1 %708, label %709, label %712

709:                                              ; preds = %706
  %710 = load ptr, ptr %35, align 8
  %711 = call i32 @XXH_read32(ptr noundef %710)
  br label %716

712:                                              ; preds = %706
  %713 = load ptr, ptr %35, align 8
  %714 = call i32 @XXH_read32(ptr noundef %713)
  %715 = call i32 @XXH_swap32(i32 noundef %714)
  br label %716

716:                                              ; preds = %712, %709
  %717 = phi i32 [ %711, %709 ], [ %715, %712 ]
  store i32 %717, ptr %34, align 4
  br label %730

718:                                              ; preds = %690
  %719 = load i32, ptr %36, align 4
  %720 = icmp eq i32 %719, 1
  br i1 %720, label %721, label %724

721:                                              ; preds = %718
  %722 = load ptr, ptr %35, align 8
  %723 = load i32, ptr %722, align 4
  br label %728

724:                                              ; preds = %718
  %725 = load ptr, ptr %35, align 8
  %726 = load i32, ptr %725, align 4
  %727 = call i32 @XXH_swap32(i32 noundef %726)
  br label %728

728:                                              ; preds = %724, %721
  %729 = phi i32 [ %723, %721 ], [ %727, %724 ]
  store i32 %729, ptr %34, align 4
  br label %730

730:                                              ; preds = %716, %728
  %731 = load i32, ptr %34, align 4
  %732 = call i32 @XXH32_round(i32 noundef %699, i32 noundef %731)
  %733 = load ptr, ptr %114, align 8
  %734 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %733, i32 0, i32 3
  store i32 %732, ptr %734, align 4
  %735 = load ptr, ptr %120, align 8
  %736 = getelementptr inbounds nuw i32, ptr %735, i32 1
  store ptr %736, ptr %120, align 8
  %737 = load ptr, ptr %114, align 8
  %738 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %737, i32 0, i32 4
  %739 = load i32, ptr %738, align 4
  %740 = load ptr, ptr %120, align 8
  %741 = load i32, ptr %117, align 4
  store ptr %740, ptr %44, align 8
  store i32 %741, ptr %45, align 4
  %742 = load ptr, ptr %44, align 8
  %743 = load i32, ptr %45, align 4
  store ptr %742, ptr %41, align 8
  store i32 %743, ptr %42, align 4
  store i32 1, ptr %43, align 4
  %744 = load i32, ptr %43, align 4
  %745 = icmp eq i32 %744, 1
  br i1 %745, label %746, label %758

746:                                              ; preds = %730
  %747 = load i32, ptr %42, align 4
  %748 = icmp eq i32 %747, 1
  br i1 %748, label %749, label %752

749:                                              ; preds = %746
  %750 = load ptr, ptr %41, align 8
  %751 = call i32 @XXH_read32(ptr noundef %750)
  br label %756

752:                                              ; preds = %746
  %753 = load ptr, ptr %41, align 8
  %754 = call i32 @XXH_read32(ptr noundef %753)
  %755 = call i32 @XXH_swap32(i32 noundef %754)
  br label %756

756:                                              ; preds = %752, %749
  %757 = phi i32 [ %751, %749 ], [ %755, %752 ]
  store i32 %757, ptr %40, align 4
  br label %770

758:                                              ; preds = %730
  %759 = load i32, ptr %42, align 4
  %760 = icmp eq i32 %759, 1
  br i1 %760, label %761, label %764

761:                                              ; preds = %758
  %762 = load ptr, ptr %41, align 8
  %763 = load i32, ptr %762, align 4
  br label %768

764:                                              ; preds = %758
  %765 = load ptr, ptr %41, align 8
  %766 = load i32, ptr %765, align 4
  %767 = call i32 @XXH_swap32(i32 noundef %766)
  br label %768

768:                                              ; preds = %764, %761
  %769 = phi i32 [ %763, %761 ], [ %767, %764 ]
  store i32 %769, ptr %40, align 4
  br label %770

770:                                              ; preds = %756, %768
  %771 = load i32, ptr %40, align 4
  %772 = call i32 @XXH32_round(i32 noundef %739, i32 noundef %771)
  %773 = load ptr, ptr %114, align 8
  %774 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %773, i32 0, i32 4
  store i32 %772, ptr %774, align 4
  %775 = load ptr, ptr %120, align 8
  %776 = getelementptr inbounds nuw i32, ptr %775, i32 1
  store ptr %776, ptr %120, align 8
  %777 = load ptr, ptr %114, align 8
  %778 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %777, i32 0, i32 5
  %779 = load i32, ptr %778, align 4
  %780 = load ptr, ptr %120, align 8
  %781 = load i32, ptr %117, align 4
  store ptr %780, ptr %50, align 8
  store i32 %781, ptr %51, align 4
  %782 = load ptr, ptr %50, align 8
  %783 = load i32, ptr %51, align 4
  store ptr %782, ptr %47, align 8
  store i32 %783, ptr %48, align 4
  store i32 1, ptr %49, align 4
  %784 = load i32, ptr %49, align 4
  %785 = icmp eq i32 %784, 1
  br i1 %785, label %786, label %798

786:                                              ; preds = %770
  %787 = load i32, ptr %48, align 4
  %788 = icmp eq i32 %787, 1
  br i1 %788, label %789, label %792

789:                                              ; preds = %786
  %790 = load ptr, ptr %47, align 8
  %791 = call i32 @XXH_read32(ptr noundef %790)
  br label %796

792:                                              ; preds = %786
  %793 = load ptr, ptr %47, align 8
  %794 = call i32 @XXH_read32(ptr noundef %793)
  %795 = call i32 @XXH_swap32(i32 noundef %794)
  br label %796

796:                                              ; preds = %792, %789
  %797 = phi i32 [ %791, %789 ], [ %795, %792 ]
  store i32 %797, ptr %46, align 4
  br label %810

798:                                              ; preds = %770
  %799 = load i32, ptr %48, align 4
  %800 = icmp eq i32 %799, 1
  br i1 %800, label %801, label %804

801:                                              ; preds = %798
  %802 = load ptr, ptr %47, align 8
  %803 = load i32, ptr %802, align 4
  br label %808

804:                                              ; preds = %798
  %805 = load ptr, ptr %47, align 8
  %806 = load i32, ptr %805, align 4
  %807 = call i32 @XXH_swap32(i32 noundef %806)
  br label %808

808:                                              ; preds = %804, %801
  %809 = phi i32 [ %803, %801 ], [ %807, %804 ]
  store i32 %809, ptr %46, align 4
  br label %810

810:                                              ; preds = %796, %808
  %811 = load i32, ptr %46, align 4
  %812 = call i32 @XXH32_round(i32 noundef %779, i32 noundef %811)
  %813 = load ptr, ptr %114, align 8
  %814 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %813, i32 0, i32 5
  store i32 %812, ptr %814, align 4
  %815 = load ptr, ptr %114, align 8
  %816 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %815, i32 0, i32 7
  %817 = load i32, ptr %816, align 4
  %818 = sub i32 16, %817
  %819 = load ptr, ptr %118, align 8
  %820 = zext i32 %818 to i64
  %821 = getelementptr inbounds nuw i8, ptr %819, i64 %820
  store ptr %821, ptr %118, align 8
  %822 = load ptr, ptr %114, align 8
  %823 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %822, i32 0, i32 7
  store i32 0, ptr %823, align 4
  br label %824

824:                                              ; preds = %810, %635
  %825 = load ptr, ptr %118, align 8
  %826 = load ptr, ptr %119, align 8
  %827 = getelementptr inbounds i8, ptr %826, i64 -16
  %828 = icmp ule ptr %825, %827
  br i1 %828, label %829, label %1005

829:                                              ; preds = %824
  %830 = load ptr, ptr %119, align 8
  %831 = getelementptr inbounds i8, ptr %830, i64 -16
  store ptr %831, ptr %121, align 8
  %832 = load ptr, ptr %114, align 8
  %833 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %832, i32 0, i32 2
  %834 = load i32, ptr %833, align 4
  store i32 %834, ptr %122, align 4
  %835 = load ptr, ptr %114, align 8
  %836 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %835, i32 0, i32 3
  %837 = load i32, ptr %836, align 4
  store i32 %837, ptr %123, align 4
  %838 = load ptr, ptr %114, align 8
  %839 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %838, i32 0, i32 4
  %840 = load i32, ptr %839, align 4
  store i32 %840, ptr %124, align 4
  %841 = load ptr, ptr %114, align 8
  %842 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %841, i32 0, i32 5
  %843 = load i32, ptr %842, align 4
  store i32 %843, ptr %125, align 4
  br label %844

844:                                              ; preds = %984, %829
  %845 = load i32, ptr %122, align 4
  %846 = load ptr, ptr %118, align 8
  %847 = load i32, ptr %117, align 4
  store ptr %846, ptr %8, align 8
  store i32 %847, ptr %9, align 4
  %848 = load ptr, ptr %8, align 8
  %849 = load i32, ptr %9, align 4
  store ptr %848, ptr %5, align 8
  store i32 %849, ptr %6, align 4
  store i32 1, ptr %7, align 4
  %850 = load i32, ptr %7, align 4
  %851 = icmp eq i32 %850, 1
  br i1 %851, label %852, label %864

852:                                              ; preds = %844
  %853 = load i32, ptr %6, align 4
  %854 = icmp eq i32 %853, 1
  br i1 %854, label %855, label %858

855:                                              ; preds = %852
  %856 = load ptr, ptr %5, align 8
  %857 = call i32 @XXH_read32(ptr noundef %856)
  br label %862

858:                                              ; preds = %852
  %859 = load ptr, ptr %5, align 8
  %860 = call i32 @XXH_read32(ptr noundef %859)
  %861 = call i32 @XXH_swap32(i32 noundef %860)
  br label %862

862:                                              ; preds = %858, %855
  %863 = phi i32 [ %857, %855 ], [ %861, %858 ]
  store i32 %863, ptr %4, align 4
  br label %876

864:                                              ; preds = %844
  %865 = load i32, ptr %6, align 4
  %866 = icmp eq i32 %865, 1
  br i1 %866, label %867, label %870

867:                                              ; preds = %864
  %868 = load ptr, ptr %5, align 8
  %869 = load i32, ptr %868, align 4
  br label %874

870:                                              ; preds = %864
  %871 = load ptr, ptr %5, align 8
  %872 = load i32, ptr %871, align 4
  %873 = call i32 @XXH_swap32(i32 noundef %872)
  br label %874

874:                                              ; preds = %870, %867
  %875 = phi i32 [ %869, %867 ], [ %873, %870 ]
  store i32 %875, ptr %4, align 4
  br label %876

876:                                              ; preds = %862, %874
  %877 = load i32, ptr %4, align 4
  %878 = call i32 @XXH32_round(i32 noundef %845, i32 noundef %877)
  store i32 %878, ptr %122, align 4
  %879 = load ptr, ptr %118, align 8
  %880 = getelementptr inbounds i8, ptr %879, i64 4
  store ptr %880, ptr %118, align 8
  %881 = load i32, ptr %123, align 4
  %882 = load ptr, ptr %118, align 8
  %883 = load i32, ptr %117, align 4
  store ptr %882, ptr %14, align 8
  store i32 %883, ptr %15, align 4
  %884 = load ptr, ptr %14, align 8
  %885 = load i32, ptr %15, align 4
  store ptr %884, ptr %11, align 8
  store i32 %885, ptr %12, align 4
  store i32 1, ptr %13, align 4
  %886 = load i32, ptr %13, align 4
  %887 = icmp eq i32 %886, 1
  br i1 %887, label %888, label %900

888:                                              ; preds = %876
  %889 = load i32, ptr %12, align 4
  %890 = icmp eq i32 %889, 1
  br i1 %890, label %891, label %894

891:                                              ; preds = %888
  %892 = load ptr, ptr %11, align 8
  %893 = call i32 @XXH_read32(ptr noundef %892)
  br label %898

894:                                              ; preds = %888
  %895 = load ptr, ptr %11, align 8
  %896 = call i32 @XXH_read32(ptr noundef %895)
  %897 = call i32 @XXH_swap32(i32 noundef %896)
  br label %898

898:                                              ; preds = %894, %891
  %899 = phi i32 [ %893, %891 ], [ %897, %894 ]
  store i32 %899, ptr %10, align 4
  br label %912

900:                                              ; preds = %876
  %901 = load i32, ptr %12, align 4
  %902 = icmp eq i32 %901, 1
  br i1 %902, label %903, label %906

903:                                              ; preds = %900
  %904 = load ptr, ptr %11, align 8
  %905 = load i32, ptr %904, align 4
  br label %910

906:                                              ; preds = %900
  %907 = load ptr, ptr %11, align 8
  %908 = load i32, ptr %907, align 4
  %909 = call i32 @XXH_swap32(i32 noundef %908)
  br label %910

910:                                              ; preds = %906, %903
  %911 = phi i32 [ %905, %903 ], [ %909, %906 ]
  store i32 %911, ptr %10, align 4
  br label %912

912:                                              ; preds = %898, %910
  %913 = load i32, ptr %10, align 4
  %914 = call i32 @XXH32_round(i32 noundef %881, i32 noundef %913)
  store i32 %914, ptr %123, align 4
  %915 = load ptr, ptr %118, align 8
  %916 = getelementptr inbounds i8, ptr %915, i64 4
  store ptr %916, ptr %118, align 8
  %917 = load i32, ptr %124, align 4
  %918 = load ptr, ptr %118, align 8
  %919 = load i32, ptr %117, align 4
  store ptr %918, ptr %20, align 8
  store i32 %919, ptr %21, align 4
  %920 = load ptr, ptr %20, align 8
  %921 = load i32, ptr %21, align 4
  store ptr %920, ptr %17, align 8
  store i32 %921, ptr %18, align 4
  store i32 1, ptr %19, align 4
  %922 = load i32, ptr %19, align 4
  %923 = icmp eq i32 %922, 1
  br i1 %923, label %924, label %936

924:                                              ; preds = %912
  %925 = load i32, ptr %18, align 4
  %926 = icmp eq i32 %925, 1
  br i1 %926, label %927, label %930

927:                                              ; preds = %924
  %928 = load ptr, ptr %17, align 8
  %929 = call i32 @XXH_read32(ptr noundef %928)
  br label %934

930:                                              ; preds = %924
  %931 = load ptr, ptr %17, align 8
  %932 = call i32 @XXH_read32(ptr noundef %931)
  %933 = call i32 @XXH_swap32(i32 noundef %932)
  br label %934

934:                                              ; preds = %930, %927
  %935 = phi i32 [ %929, %927 ], [ %933, %930 ]
  store i32 %935, ptr %16, align 4
  br label %948

936:                                              ; preds = %912
  %937 = load i32, ptr %18, align 4
  %938 = icmp eq i32 %937, 1
  br i1 %938, label %939, label %942

939:                                              ; preds = %936
  %940 = load ptr, ptr %17, align 8
  %941 = load i32, ptr %940, align 4
  br label %946

942:                                              ; preds = %936
  %943 = load ptr, ptr %17, align 8
  %944 = load i32, ptr %943, align 4
  %945 = call i32 @XXH_swap32(i32 noundef %944)
  br label %946

946:                                              ; preds = %942, %939
  %947 = phi i32 [ %941, %939 ], [ %945, %942 ]
  store i32 %947, ptr %16, align 4
  br label %948

948:                                              ; preds = %934, %946
  %949 = load i32, ptr %16, align 4
  %950 = call i32 @XXH32_round(i32 noundef %917, i32 noundef %949)
  store i32 %950, ptr %124, align 4
  %951 = load ptr, ptr %118, align 8
  %952 = getelementptr inbounds i8, ptr %951, i64 4
  store ptr %952, ptr %118, align 8
  %953 = load i32, ptr %125, align 4
  %954 = load ptr, ptr %118, align 8
  %955 = load i32, ptr %117, align 4
  store ptr %954, ptr %26, align 8
  store i32 %955, ptr %27, align 4
  %956 = load ptr, ptr %26, align 8
  %957 = load i32, ptr %27, align 4
  store ptr %956, ptr %23, align 8
  store i32 %957, ptr %24, align 4
  store i32 1, ptr %25, align 4
  %958 = load i32, ptr %25, align 4
  %959 = icmp eq i32 %958, 1
  br i1 %959, label %960, label %972

960:                                              ; preds = %948
  %961 = load i32, ptr %24, align 4
  %962 = icmp eq i32 %961, 1
  br i1 %962, label %963, label %966

963:                                              ; preds = %960
  %964 = load ptr, ptr %23, align 8
  %965 = call i32 @XXH_read32(ptr noundef %964)
  br label %970

966:                                              ; preds = %960
  %967 = load ptr, ptr %23, align 8
  %968 = call i32 @XXH_read32(ptr noundef %967)
  %969 = call i32 @XXH_swap32(i32 noundef %968)
  br label %970

970:                                              ; preds = %966, %963
  %971 = phi i32 [ %965, %963 ], [ %969, %966 ]
  store i32 %971, ptr %22, align 4
  br label %984

972:                                              ; preds = %948
  %973 = load i32, ptr %24, align 4
  %974 = icmp eq i32 %973, 1
  br i1 %974, label %975, label %978

975:                                              ; preds = %972
  %976 = load ptr, ptr %23, align 8
  %977 = load i32, ptr %976, align 4
  br label %982

978:                                              ; preds = %972
  %979 = load ptr, ptr %23, align 8
  %980 = load i32, ptr %979, align 4
  %981 = call i32 @XXH_swap32(i32 noundef %980)
  br label %982

982:                                              ; preds = %978, %975
  %983 = phi i32 [ %977, %975 ], [ %981, %978 ]
  store i32 %983, ptr %22, align 4
  br label %984

984:                                              ; preds = %970, %982
  %985 = load i32, ptr %22, align 4
  %986 = call i32 @XXH32_round(i32 noundef %953, i32 noundef %985)
  store i32 %986, ptr %125, align 4
  %987 = load ptr, ptr %118, align 8
  %988 = getelementptr inbounds i8, ptr %987, i64 4
  store ptr %988, ptr %118, align 8
  %989 = load ptr, ptr %118, align 8
  %990 = load ptr, ptr %121, align 8
  %991 = icmp ule ptr %989, %990
  br i1 %991, label %844, label %992

992:                                              ; preds = %984
  %993 = load i32, ptr %122, align 4
  %994 = load ptr, ptr %114, align 8
  %995 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %994, i32 0, i32 2
  store i32 %993, ptr %995, align 4
  %996 = load i32, ptr %123, align 4
  %997 = load ptr, ptr %114, align 8
  %998 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %997, i32 0, i32 3
  store i32 %996, ptr %998, align 4
  %999 = load i32, ptr %124, align 4
  %1000 = load ptr, ptr %114, align 8
  %1001 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %1000, i32 0, i32 4
  store i32 %999, ptr %1001, align 4
  %1002 = load i32, ptr %125, align 4
  %1003 = load ptr, ptr %114, align 8
  %1004 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %1003, i32 0, i32 5
  store i32 %1002, ptr %1004, align 4
  br label %1005

1005:                                             ; preds = %992, %824
  %1006 = load ptr, ptr %118, align 8
  %1007 = load ptr, ptr %119, align 8
  %1008 = icmp ult ptr %1006, %1007
  br i1 %1008, label %1009, label %1027

1009:                                             ; preds = %1005
  %1010 = load ptr, ptr %114, align 8
  %1011 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %1010, i32 0, i32 6
  %1012 = load ptr, ptr %118, align 8
  %1013 = load ptr, ptr %119, align 8
  %1014 = load ptr, ptr %118, align 8
  %1015 = ptrtoint ptr %1013 to i64
  %1016 = ptrtoint ptr %1014 to i64
  %1017 = sub i64 %1015, %1016
  %1018 = call ptr @XXH_memcpy(ptr noundef %1011, ptr noundef %1012, i64 noundef %1017)
  %1019 = load ptr, ptr %119, align 8
  %1020 = load ptr, ptr %118, align 8
  %1021 = ptrtoint ptr %1019 to i64
  %1022 = ptrtoint ptr %1020 to i64
  %1023 = sub i64 %1021, %1022
  %1024 = trunc i64 %1023 to i32
  %1025 = load ptr, ptr %114, align 8
  %1026 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %1025, i32 0, i32 7
  store i32 %1024, ptr %1026, align 4
  br label %1027

1027:                                             ; preds = %1009, %1005
  store i32 0, ptr %113, align 4
  br label %1028

1028:                                             ; preds = %588, %618, %1027
  %1029 = load i32, ptr %113, align 4
  store i32 %1029, ptr %126, align 4
  br label %1030

1030:                                             ; preds = %1028, %580
  %1031 = load i32, ptr %126, align 4
  ret i32 %1031
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
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca i64, align 8
  %44 = alloca ptr, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca ptr, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca i64, align 8
  %57 = alloca ptr, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca ptr, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i32, align 4
  store ptr %0, ptr %63, align 8
  store i64 %1, ptr %64, align 8
  store i64 %2, ptr %65, align 8
  %67 = call i32 @XXH_isLittleEndian()
  store i32 %67, ptr %66, align 4
  %68 = load i32, ptr %66, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %284

70:                                               ; preds = %3
  %71 = load ptr, ptr %63, align 8
  %72 = load i64, ptr %64, align 8
  %73 = load i64, ptr %65, align 8
  store ptr %71, ptr %36, align 8
  store i64 %72, ptr %37, align 8
  store i64 %73, ptr %38, align 8
  store i32 1, ptr %39, align 4
  store i32 1, ptr %40, align 4
  %74 = load ptr, ptr %36, align 8
  store ptr %74, ptr %41, align 8
  %75 = load ptr, ptr %41, align 8
  %76 = load i64, ptr %37, align 8
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 %76
  store ptr %77, ptr %42, align 8
  %78 = load i64, ptr %37, align 8
  %79 = icmp uge i64 %78, 32
  br i1 %79, label %80, label %271

80:                                               ; preds = %70
  %81 = load ptr, ptr %42, align 8
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  store ptr %82, ptr %44, align 8
  %83 = load i64, ptr %38, align 8
  %84 = add i64 %83, -7046029288634856825
  %85 = add i64 %84, -4417276706812531889
  store i64 %85, ptr %45, align 8
  %86 = load i64, ptr %38, align 8
  %87 = add i64 %86, -4417276706812531889
  store i64 %87, ptr %46, align 8
  %88 = load i64, ptr %38, align 8
  store i64 %88, ptr %47, align 8
  %89 = load i64, ptr %38, align 8
  %90 = sub i64 %89, -7046029288634856825
  store i64 %90, ptr %48, align 8
  br label %91

91:                                               ; preds = %227, %80
  %92 = load i64, ptr %45, align 8
  %93 = load ptr, ptr %41, align 8
  %94 = load i32, ptr %39, align 4
  %95 = load i32, ptr %40, align 4
  store ptr %93, ptr %21, align 8
  store i32 %94, ptr %22, align 4
  store i32 %95, ptr %23, align 4
  %96 = load i32, ptr %23, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = load i32, ptr %22, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load ptr, ptr %21, align 8
  %103 = call i64 @XXH_read64(ptr noundef %102)
  br label %108

104:                                              ; preds = %98
  %105 = load ptr, ptr %21, align 8
  %106 = call i64 @XXH_read64(ptr noundef %105)
  %107 = call i64 @XXH_swap64(i64 noundef %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i64 [ %103, %101 ], [ %107, %104 ]
  store i64 %109, ptr %20, align 8
  br label %122

110:                                              ; preds = %91
  %111 = load i32, ptr %22, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load ptr, ptr %21, align 8
  %115 = load i64, ptr %114, align 8
  br label %120

116:                                              ; preds = %110
  %117 = load ptr, ptr %21, align 8
  %118 = load i64, ptr %117, align 8
  %119 = call i64 @XXH_swap64(i64 noundef %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = phi i64 [ %115, %113 ], [ %119, %116 ]
  store i64 %121, ptr %20, align 8
  br label %122

122:                                              ; preds = %108, %120
  %123 = load i64, ptr %20, align 8
  %124 = call i64 @XXH64_round(i64 noundef %92, i64 noundef %123)
  store i64 %124, ptr %45, align 8
  %125 = load ptr, ptr %41, align 8
  %126 = getelementptr inbounds i8, ptr %125, i64 8
  store ptr %126, ptr %41, align 8
  %127 = load i64, ptr %46, align 8
  %128 = load ptr, ptr %41, align 8
  %129 = load i32, ptr %39, align 4
  %130 = load i32, ptr %40, align 4
  store ptr %128, ptr %25, align 8
  store i32 %129, ptr %26, align 4
  store i32 %130, ptr %27, align 4
  %131 = load i32, ptr %27, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %145

133:                                              ; preds = %122
  %134 = load i32, ptr %26, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load ptr, ptr %25, align 8
  %138 = call i64 @XXH_read64(ptr noundef %137)
  br label %143

139:                                              ; preds = %133
  %140 = load ptr, ptr %25, align 8
  %141 = call i64 @XXH_read64(ptr noundef %140)
  %142 = call i64 @XXH_swap64(i64 noundef %141)
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i64 [ %138, %136 ], [ %142, %139 ]
  store i64 %144, ptr %24, align 8
  br label %157

145:                                              ; preds = %122
  %146 = load i32, ptr %26, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load ptr, ptr %25, align 8
  %150 = load i64, ptr %149, align 8
  br label %155

151:                                              ; preds = %145
  %152 = load ptr, ptr %25, align 8
  %153 = load i64, ptr %152, align 8
  %154 = call i64 @XXH_swap64(i64 noundef %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = phi i64 [ %150, %148 ], [ %154, %151 ]
  store i64 %156, ptr %24, align 8
  br label %157

157:                                              ; preds = %143, %155
  %158 = load i64, ptr %24, align 8
  %159 = call i64 @XXH64_round(i64 noundef %127, i64 noundef %158)
  store i64 %159, ptr %46, align 8
  %160 = load ptr, ptr %41, align 8
  %161 = getelementptr inbounds i8, ptr %160, i64 8
  store ptr %161, ptr %41, align 8
  %162 = load i64, ptr %47, align 8
  %163 = load ptr, ptr %41, align 8
  %164 = load i32, ptr %39, align 4
  %165 = load i32, ptr %40, align 4
  store ptr %163, ptr %29, align 8
  store i32 %164, ptr %30, align 4
  store i32 %165, ptr %31, align 4
  %166 = load i32, ptr %31, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %180

168:                                              ; preds = %157
  %169 = load i32, ptr %30, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load ptr, ptr %29, align 8
  %173 = call i64 @XXH_read64(ptr noundef %172)
  br label %178

174:                                              ; preds = %168
  %175 = load ptr, ptr %29, align 8
  %176 = call i64 @XXH_read64(ptr noundef %175)
  %177 = call i64 @XXH_swap64(i64 noundef %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i64 [ %173, %171 ], [ %177, %174 ]
  store i64 %179, ptr %28, align 8
  br label %192

180:                                              ; preds = %157
  %181 = load i32, ptr %30, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load ptr, ptr %29, align 8
  %185 = load i64, ptr %184, align 8
  br label %190

186:                                              ; preds = %180
  %187 = load ptr, ptr %29, align 8
  %188 = load i64, ptr %187, align 8
  %189 = call i64 @XXH_swap64(i64 noundef %188)
  br label %190

190:                                              ; preds = %186, %183
  %191 = phi i64 [ %185, %183 ], [ %189, %186 ]
  store i64 %191, ptr %28, align 8
  br label %192

192:                                              ; preds = %178, %190
  %193 = load i64, ptr %28, align 8
  %194 = call i64 @XXH64_round(i64 noundef %162, i64 noundef %193)
  store i64 %194, ptr %47, align 8
  %195 = load ptr, ptr %41, align 8
  %196 = getelementptr inbounds i8, ptr %195, i64 8
  store ptr %196, ptr %41, align 8
  %197 = load i64, ptr %48, align 8
  %198 = load ptr, ptr %41, align 8
  %199 = load i32, ptr %39, align 4
  %200 = load i32, ptr %40, align 4
  store ptr %198, ptr %33, align 8
  store i32 %199, ptr %34, align 4
  store i32 %200, ptr %35, align 4
  %201 = load i32, ptr %35, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %215

203:                                              ; preds = %192
  %204 = load i32, ptr %34, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load ptr, ptr %33, align 8
  %208 = call i64 @XXH_read64(ptr noundef %207)
  br label %213

209:                                              ; preds = %203
  %210 = load ptr, ptr %33, align 8
  %211 = call i64 @XXH_read64(ptr noundef %210)
  %212 = call i64 @XXH_swap64(i64 noundef %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = phi i64 [ %208, %206 ], [ %212, %209 ]
  store i64 %214, ptr %32, align 8
  br label %227

215:                                              ; preds = %192
  %216 = load i32, ptr %34, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load ptr, ptr %33, align 8
  %220 = load i64, ptr %219, align 8
  br label %225

221:                                              ; preds = %215
  %222 = load ptr, ptr %33, align 8
  %223 = load i64, ptr %222, align 8
  %224 = call i64 @XXH_swap64(i64 noundef %223)
  br label %225

225:                                              ; preds = %221, %218
  %226 = phi i64 [ %220, %218 ], [ %224, %221 ]
  store i64 %226, ptr %32, align 8
  br label %227

227:                                              ; preds = %213, %225
  %228 = load i64, ptr %32, align 8
  %229 = call i64 @XXH64_round(i64 noundef %197, i64 noundef %228)
  store i64 %229, ptr %48, align 8
  %230 = load ptr, ptr %41, align 8
  %231 = getelementptr inbounds i8, ptr %230, i64 8
  store ptr %231, ptr %41, align 8
  %232 = load ptr, ptr %41, align 8
  %233 = load ptr, ptr %44, align 8
  %234 = icmp ule ptr %232, %233
  br i1 %234, label %91, label %235

235:                                              ; preds = %227
  %236 = load i64, ptr %45, align 8
  %237 = shl i64 %236, 1
  %238 = load i64, ptr %45, align 8
  %239 = lshr i64 %238, 63
  %240 = or i64 %237, %239
  %241 = load i64, ptr %46, align 8
  %242 = shl i64 %241, 7
  %243 = load i64, ptr %46, align 8
  %244 = lshr i64 %243, 57
  %245 = or i64 %242, %244
  %246 = add i64 %240, %245
  %247 = load i64, ptr %47, align 8
  %248 = shl i64 %247, 12
  %249 = load i64, ptr %47, align 8
  %250 = lshr i64 %249, 52
  %251 = or i64 %248, %250
  %252 = add i64 %246, %251
  %253 = load i64, ptr %48, align 8
  %254 = shl i64 %253, 18
  %255 = load i64, ptr %48, align 8
  %256 = lshr i64 %255, 46
  %257 = or i64 %254, %256
  %258 = add i64 %252, %257
  store i64 %258, ptr %43, align 8
  %259 = load i64, ptr %43, align 8
  %260 = load i64, ptr %45, align 8
  %261 = call i64 @XXH64_mergeRound(i64 noundef %259, i64 noundef %260)
  store i64 %261, ptr %43, align 8
  %262 = load i64, ptr %43, align 8
  %263 = load i64, ptr %46, align 8
  %264 = call i64 @XXH64_mergeRound(i64 noundef %262, i64 noundef %263)
  store i64 %264, ptr %43, align 8
  %265 = load i64, ptr %43, align 8
  %266 = load i64, ptr %47, align 8
  %267 = call i64 @XXH64_mergeRound(i64 noundef %265, i64 noundef %266)
  store i64 %267, ptr %43, align 8
  %268 = load i64, ptr %43, align 8
  %269 = load i64, ptr %48, align 8
  %270 = call i64 @XXH64_mergeRound(i64 noundef %268, i64 noundef %269)
  store i64 %270, ptr %43, align 8
  br label %274

271:                                              ; preds = %70
  %272 = load i64, ptr %38, align 8
  %273 = add i64 %272, 2870177450012600261
  store i64 %273, ptr %43, align 8
  br label %274

274:                                              ; preds = %235, %271
  %275 = load i64, ptr %37, align 8
  %276 = load i64, ptr %43, align 8
  %277 = add i64 %276, %275
  store i64 %277, ptr %43, align 8
  %278 = load i64, ptr %43, align 8
  %279 = load ptr, ptr %41, align 8
  %280 = load i64, ptr %37, align 8
  %281 = load i32, ptr %39, align 4
  %282 = load i32, ptr %40, align 4
  %283 = call i64 @XXH64_finalize(i64 noundef %278, ptr noundef %279, i64 noundef %280, i32 noundef %281, i32 noundef %282)
  store i64 %283, ptr %62, align 8
  br label %498

284:                                              ; preds = %3
  %285 = load ptr, ptr %63, align 8
  %286 = load i64, ptr %64, align 8
  %287 = load i64, ptr %65, align 8
  store ptr %285, ptr %49, align 8
  store i64 %286, ptr %50, align 8
  store i64 %287, ptr %51, align 8
  store i32 0, ptr %52, align 4
  store i32 1, ptr %53, align 4
  %288 = load ptr, ptr %49, align 8
  store ptr %288, ptr %54, align 8
  %289 = load ptr, ptr %54, align 8
  %290 = load i64, ptr %50, align 8
  %291 = getelementptr inbounds nuw i8, ptr %289, i64 %290
  store ptr %291, ptr %55, align 8
  %292 = load i64, ptr %50, align 8
  %293 = icmp uge i64 %292, 32
  br i1 %293, label %294, label %485

294:                                              ; preds = %284
  %295 = load ptr, ptr %55, align 8
  %296 = getelementptr inbounds i8, ptr %295, i64 -32
  store ptr %296, ptr %57, align 8
  %297 = load i64, ptr %51, align 8
  %298 = add i64 %297, -7046029288634856825
  %299 = add i64 %298, -4417276706812531889
  store i64 %299, ptr %58, align 8
  %300 = load i64, ptr %51, align 8
  %301 = add i64 %300, -4417276706812531889
  store i64 %301, ptr %59, align 8
  %302 = load i64, ptr %51, align 8
  store i64 %302, ptr %60, align 8
  %303 = load i64, ptr %51, align 8
  %304 = sub i64 %303, -7046029288634856825
  store i64 %304, ptr %61, align 8
  br label %305

305:                                              ; preds = %441, %294
  %306 = load i64, ptr %58, align 8
  %307 = load ptr, ptr %54, align 8
  %308 = load i32, ptr %52, align 4
  %309 = load i32, ptr %53, align 4
  store ptr %307, ptr %5, align 8
  store i32 %308, ptr %6, align 4
  store i32 %309, ptr %7, align 4
  %310 = load i32, ptr %7, align 4
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %312, label %324

312:                                              ; preds = %305
  %313 = load i32, ptr %6, align 4
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load ptr, ptr %5, align 8
  %317 = call i64 @XXH_read64(ptr noundef %316)
  br label %322

318:                                              ; preds = %312
  %319 = load ptr, ptr %5, align 8
  %320 = call i64 @XXH_read64(ptr noundef %319)
  %321 = call i64 @XXH_swap64(i64 noundef %320)
  br label %322

322:                                              ; preds = %318, %315
  %323 = phi i64 [ %317, %315 ], [ %321, %318 ]
  store i64 %323, ptr %4, align 8
  br label %336

324:                                              ; preds = %305
  %325 = load i32, ptr %6, align 4
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load ptr, ptr %5, align 8
  %329 = load i64, ptr %328, align 8
  br label %334

330:                                              ; preds = %324
  %331 = load ptr, ptr %5, align 8
  %332 = load i64, ptr %331, align 8
  %333 = call i64 @XXH_swap64(i64 noundef %332)
  br label %334

334:                                              ; preds = %330, %327
  %335 = phi i64 [ %329, %327 ], [ %333, %330 ]
  store i64 %335, ptr %4, align 8
  br label %336

336:                                              ; preds = %322, %334
  %337 = load i64, ptr %4, align 8
  %338 = call i64 @XXH64_round(i64 noundef %306, i64 noundef %337)
  store i64 %338, ptr %58, align 8
  %339 = load ptr, ptr %54, align 8
  %340 = getelementptr inbounds i8, ptr %339, i64 8
  store ptr %340, ptr %54, align 8
  %341 = load i64, ptr %59, align 8
  %342 = load ptr, ptr %54, align 8
  %343 = load i32, ptr %52, align 4
  %344 = load i32, ptr %53, align 4
  store ptr %342, ptr %9, align 8
  store i32 %343, ptr %10, align 4
  store i32 %344, ptr %11, align 4
  %345 = load i32, ptr %11, align 4
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %359

347:                                              ; preds = %336
  %348 = load i32, ptr %10, align 4
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load ptr, ptr %9, align 8
  %352 = call i64 @XXH_read64(ptr noundef %351)
  br label %357

353:                                              ; preds = %347
  %354 = load ptr, ptr %9, align 8
  %355 = call i64 @XXH_read64(ptr noundef %354)
  %356 = call i64 @XXH_swap64(i64 noundef %355)
  br label %357

357:                                              ; preds = %353, %350
  %358 = phi i64 [ %352, %350 ], [ %356, %353 ]
  store i64 %358, ptr %8, align 8
  br label %371

359:                                              ; preds = %336
  %360 = load i32, ptr %10, align 4
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load ptr, ptr %9, align 8
  %364 = load i64, ptr %363, align 8
  br label %369

365:                                              ; preds = %359
  %366 = load ptr, ptr %9, align 8
  %367 = load i64, ptr %366, align 8
  %368 = call i64 @XXH_swap64(i64 noundef %367)
  br label %369

369:                                              ; preds = %365, %362
  %370 = phi i64 [ %364, %362 ], [ %368, %365 ]
  store i64 %370, ptr %8, align 8
  br label %371

371:                                              ; preds = %357, %369
  %372 = load i64, ptr %8, align 8
  %373 = call i64 @XXH64_round(i64 noundef %341, i64 noundef %372)
  store i64 %373, ptr %59, align 8
  %374 = load ptr, ptr %54, align 8
  %375 = getelementptr inbounds i8, ptr %374, i64 8
  store ptr %375, ptr %54, align 8
  %376 = load i64, ptr %60, align 8
  %377 = load ptr, ptr %54, align 8
  %378 = load i32, ptr %52, align 4
  %379 = load i32, ptr %53, align 4
  store ptr %377, ptr %13, align 8
  store i32 %378, ptr %14, align 4
  store i32 %379, ptr %15, align 4
  %380 = load i32, ptr %15, align 4
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %394

382:                                              ; preds = %371
  %383 = load i32, ptr %14, align 4
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load ptr, ptr %13, align 8
  %387 = call i64 @XXH_read64(ptr noundef %386)
  br label %392

388:                                              ; preds = %382
  %389 = load ptr, ptr %13, align 8
  %390 = call i64 @XXH_read64(ptr noundef %389)
  %391 = call i64 @XXH_swap64(i64 noundef %390)
  br label %392

392:                                              ; preds = %388, %385
  %393 = phi i64 [ %387, %385 ], [ %391, %388 ]
  store i64 %393, ptr %12, align 8
  br label %406

394:                                              ; preds = %371
  %395 = load i32, ptr %14, align 4
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %397, label %400

397:                                              ; preds = %394
  %398 = load ptr, ptr %13, align 8
  %399 = load i64, ptr %398, align 8
  br label %404

400:                                              ; preds = %394
  %401 = load ptr, ptr %13, align 8
  %402 = load i64, ptr %401, align 8
  %403 = call i64 @XXH_swap64(i64 noundef %402)
  br label %404

404:                                              ; preds = %400, %397
  %405 = phi i64 [ %399, %397 ], [ %403, %400 ]
  store i64 %405, ptr %12, align 8
  br label %406

406:                                              ; preds = %392, %404
  %407 = load i64, ptr %12, align 8
  %408 = call i64 @XXH64_round(i64 noundef %376, i64 noundef %407)
  store i64 %408, ptr %60, align 8
  %409 = load ptr, ptr %54, align 8
  %410 = getelementptr inbounds i8, ptr %409, i64 8
  store ptr %410, ptr %54, align 8
  %411 = load i64, ptr %61, align 8
  %412 = load ptr, ptr %54, align 8
  %413 = load i32, ptr %52, align 4
  %414 = load i32, ptr %53, align 4
  store ptr %412, ptr %17, align 8
  store i32 %413, ptr %18, align 4
  store i32 %414, ptr %19, align 4
  %415 = load i32, ptr %19, align 4
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %417, label %429

417:                                              ; preds = %406
  %418 = load i32, ptr %18, align 4
  %419 = icmp eq i32 %418, 1
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load ptr, ptr %17, align 8
  %422 = call i64 @XXH_read64(ptr noundef %421)
  br label %427

423:                                              ; preds = %417
  %424 = load ptr, ptr %17, align 8
  %425 = call i64 @XXH_read64(ptr noundef %424)
  %426 = call i64 @XXH_swap64(i64 noundef %425)
  br label %427

427:                                              ; preds = %423, %420
  %428 = phi i64 [ %422, %420 ], [ %426, %423 ]
  store i64 %428, ptr %16, align 8
  br label %441

429:                                              ; preds = %406
  %430 = load i32, ptr %18, align 4
  %431 = icmp eq i32 %430, 1
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load ptr, ptr %17, align 8
  %434 = load i64, ptr %433, align 8
  br label %439

435:                                              ; preds = %429
  %436 = load ptr, ptr %17, align 8
  %437 = load i64, ptr %436, align 8
  %438 = call i64 @XXH_swap64(i64 noundef %437)
  br label %439

439:                                              ; preds = %435, %432
  %440 = phi i64 [ %434, %432 ], [ %438, %435 ]
  store i64 %440, ptr %16, align 8
  br label %441

441:                                              ; preds = %427, %439
  %442 = load i64, ptr %16, align 8
  %443 = call i64 @XXH64_round(i64 noundef %411, i64 noundef %442)
  store i64 %443, ptr %61, align 8
  %444 = load ptr, ptr %54, align 8
  %445 = getelementptr inbounds i8, ptr %444, i64 8
  store ptr %445, ptr %54, align 8
  %446 = load ptr, ptr %54, align 8
  %447 = load ptr, ptr %57, align 8
  %448 = icmp ule ptr %446, %447
  br i1 %448, label %305, label %449

449:                                              ; preds = %441
  %450 = load i64, ptr %58, align 8
  %451 = shl i64 %450, 1
  %452 = load i64, ptr %58, align 8
  %453 = lshr i64 %452, 63
  %454 = or i64 %451, %453
  %455 = load i64, ptr %59, align 8
  %456 = shl i64 %455, 7
  %457 = load i64, ptr %59, align 8
  %458 = lshr i64 %457, 57
  %459 = or i64 %456, %458
  %460 = add i64 %454, %459
  %461 = load i64, ptr %60, align 8
  %462 = shl i64 %461, 12
  %463 = load i64, ptr %60, align 8
  %464 = lshr i64 %463, 52
  %465 = or i64 %462, %464
  %466 = add i64 %460, %465
  %467 = load i64, ptr %61, align 8
  %468 = shl i64 %467, 18
  %469 = load i64, ptr %61, align 8
  %470 = lshr i64 %469, 46
  %471 = or i64 %468, %470
  %472 = add i64 %466, %471
  store i64 %472, ptr %56, align 8
  %473 = load i64, ptr %56, align 8
  %474 = load i64, ptr %58, align 8
  %475 = call i64 @XXH64_mergeRound(i64 noundef %473, i64 noundef %474)
  store i64 %475, ptr %56, align 8
  %476 = load i64, ptr %56, align 8
  %477 = load i64, ptr %59, align 8
  %478 = call i64 @XXH64_mergeRound(i64 noundef %476, i64 noundef %477)
  store i64 %478, ptr %56, align 8
  %479 = load i64, ptr %56, align 8
  %480 = load i64, ptr %60, align 8
  %481 = call i64 @XXH64_mergeRound(i64 noundef %479, i64 noundef %480)
  store i64 %481, ptr %56, align 8
  %482 = load i64, ptr %56, align 8
  %483 = load i64, ptr %61, align 8
  %484 = call i64 @XXH64_mergeRound(i64 noundef %482, i64 noundef %483)
  store i64 %484, ptr %56, align 8
  br label %488

485:                                              ; preds = %284
  %486 = load i64, ptr %51, align 8
  %487 = add i64 %486, 2870177450012600261
  store i64 %487, ptr %56, align 8
  br label %488

488:                                              ; preds = %449, %485
  %489 = load i64, ptr %50, align 8
  %490 = load i64, ptr %56, align 8
  %491 = add i64 %490, %489
  store i64 %491, ptr %56, align 8
  %492 = load i64, ptr %56, align 8
  %493 = load ptr, ptr %54, align 8
  %494 = load i64, ptr %50, align 8
  %495 = load i32, ptr %52, align 4
  %496 = load i32, ptr %53, align 4
  %497 = call i64 @XXH64_finalize(i64 noundef %492, ptr noundef %493, i64 noundef %494, i32 noundef %495, i32 noundef %496)
  store i64 %497, ptr %62, align 8
  br label %498

498:                                              ; preds = %488, %274
  %499 = load i64, ptr %62, align 8
  ret i64 %499
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
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca i32, align 4
  %46 = alloca i64, align 8
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca ptr, align 8
  %51 = alloca i32, align 4
  %52 = alloca i64, align 8
  %53 = alloca ptr, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca ptr, align 8
  %57 = alloca i32, align 4
  %58 = alloca i64, align 8
  %59 = alloca ptr, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca ptr, align 8
  %63 = alloca i32, align 4
  %64 = alloca i64, align 8
  %65 = alloca ptr, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca ptr, align 8
  %69 = alloca i32, align 4
  %70 = alloca i64, align 8
  %71 = alloca ptr, align 8
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca ptr, align 8
  %75 = alloca i32, align 4
  %76 = alloca i64, align 8
  %77 = alloca ptr, align 8
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca ptr, align 8
  %81 = alloca i32, align 4
  %82 = alloca i64, align 8
  %83 = alloca ptr, align 8
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca ptr, align 8
  %87 = alloca i32, align 4
  %88 = alloca i64, align 8
  %89 = alloca ptr, align 8
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca ptr, align 8
  %93 = alloca i32, align 4
  %94 = alloca i64, align 8
  %95 = alloca ptr, align 8
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca ptr, align 8
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca ptr, align 8
  %102 = alloca ptr, align 8
  %103 = alloca i64, align 8
  %104 = alloca i32, align 4
  %105 = alloca ptr, align 8
  %106 = alloca ptr, align 8
  %107 = alloca ptr, align 8
  %108 = alloca i64, align 8
  %109 = alloca i64, align 8
  %110 = alloca i64, align 8
  %111 = alloca i64, align 8
  %112 = alloca i32, align 4
  %113 = alloca ptr, align 8
  %114 = alloca ptr, align 8
  %115 = alloca i64, align 8
  %116 = alloca i32, align 4
  %117 = alloca ptr, align 8
  %118 = alloca ptr, align 8
  %119 = alloca ptr, align 8
  %120 = alloca i64, align 8
  %121 = alloca i64, align 8
  %122 = alloca i64, align 8
  %123 = alloca i64, align 8
  %124 = alloca i32, align 4
  %125 = alloca ptr, align 8
  %126 = alloca ptr, align 8
  %127 = alloca i64, align 8
  %128 = alloca i32, align 4
  store ptr %0, ptr %125, align 8
  store ptr %1, ptr %126, align 8
  store i64 %2, ptr %127, align 8
  %129 = call i32 @XXH_isLittleEndian()
  store i32 %129, ptr %128, align 4
  %130 = load i32, ptr %128, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %566

132:                                              ; preds = %3
  %133 = load ptr, ptr %125, align 8
  %134 = load ptr, ptr %126, align 8
  %135 = load i64, ptr %127, align 8
  store ptr %133, ptr %101, align 8
  store ptr %134, ptr %102, align 8
  store i64 %135, ptr %103, align 8
  store i32 1, ptr %104, align 4
  %136 = load ptr, ptr %102, align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 1, ptr %100, align 4
  br label %564

139:                                              ; preds = %132
  %140 = load ptr, ptr %102, align 8
  store ptr %140, ptr %105, align 8
  %141 = load ptr, ptr %105, align 8
  %142 = load i64, ptr %103, align 8
  %143 = getelementptr inbounds nuw i8, ptr %141, i64 %142
  store ptr %143, ptr %106, align 8
  %144 = load i64, ptr %103, align 8
  %145 = load ptr, ptr %101, align 8
  %146 = load i64, ptr %145, align 8
  %147 = add i64 %146, %144
  store i64 %147, ptr %145, align 8
  %148 = load ptr, ptr %101, align 8
  %149 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %148, i32 0, i32 6
  %150 = load i32, ptr %149, align 8
  %151 = zext i32 %150 to i64
  %152 = load i64, ptr %103, align 8
  %153 = add i64 %151, %152
  %154 = icmp ult i64 %153, 32
  br i1 %154, label %155, label %172

155:                                              ; preds = %139
  %156 = load ptr, ptr %101, align 8
  %157 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %156, i32 0, i32 5
  %158 = load ptr, ptr %101, align 8
  %159 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %158, i32 0, i32 6
  %160 = load i32, ptr %159, align 8
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds nuw i8, ptr %157, i64 %161
  %163 = load ptr, ptr %102, align 8
  %164 = load i64, ptr %103, align 8
  %165 = call ptr @XXH_memcpy(ptr noundef %162, ptr noundef %163, i64 noundef %164)
  %166 = load i64, ptr %103, align 8
  %167 = trunc i64 %166 to i32
  %168 = load ptr, ptr %101, align 8
  %169 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %168, i32 0, i32 6
  %170 = load i32, ptr %169, align 8
  %171 = add i32 %170, %167
  store i32 %171, ptr %169, align 8
  store i32 0, ptr %100, align 4
  br label %564

172:                                              ; preds = %139
  %173 = load ptr, ptr %101, align 8
  %174 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %173, i32 0, i32 6
  %175 = load i32, ptr %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %360

177:                                              ; preds = %172
  %178 = load ptr, ptr %101, align 8
  %179 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %178, i32 0, i32 5
  %180 = load ptr, ptr %101, align 8
  %181 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %180, i32 0, i32 6
  %182 = load i32, ptr %181, align 8
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds nuw i8, ptr %179, i64 %183
  %185 = load ptr, ptr %102, align 8
  %186 = load ptr, ptr %101, align 8
  %187 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %186, i32 0, i32 6
  %188 = load i32, ptr %187, align 8
  %189 = sub i32 32, %188
  %190 = zext i32 %189 to i64
  %191 = call ptr @XXH_memcpy(ptr noundef %184, ptr noundef %185, i64 noundef %190)
  %192 = load ptr, ptr %101, align 8
  %193 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %192, i32 0, i32 1
  %194 = load i64, ptr %193, align 8
  %195 = load ptr, ptr %101, align 8
  %196 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %195, i32 0, i32 5
  %197 = load i32, ptr %104, align 4
  store ptr %196, ptr %80, align 8
  store i32 %197, ptr %81, align 4
  %198 = load ptr, ptr %80, align 8
  %199 = load i32, ptr %81, align 4
  store ptr %198, ptr %77, align 8
  store i32 %199, ptr %78, align 4
  store i32 1, ptr %79, align 4
  %200 = load i32, ptr %79, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %214

202:                                              ; preds = %177
  %203 = load i32, ptr %78, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load ptr, ptr %77, align 8
  %207 = call i64 @XXH_read64(ptr noundef %206)
  br label %212

208:                                              ; preds = %202
  %209 = load ptr, ptr %77, align 8
  %210 = call i64 @XXH_read64(ptr noundef %209)
  %211 = call i64 @XXH_swap64(i64 noundef %210)
  br label %212

212:                                              ; preds = %208, %205
  %213 = phi i64 [ %207, %205 ], [ %211, %208 ]
  store i64 %213, ptr %76, align 8
  br label %226

214:                                              ; preds = %177
  %215 = load i32, ptr %78, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load ptr, ptr %77, align 8
  %219 = load i64, ptr %218, align 8
  br label %224

220:                                              ; preds = %214
  %221 = load ptr, ptr %77, align 8
  %222 = load i64, ptr %221, align 8
  %223 = call i64 @XXH_swap64(i64 noundef %222)
  br label %224

224:                                              ; preds = %220, %217
  %225 = phi i64 [ %219, %217 ], [ %223, %220 ]
  store i64 %225, ptr %76, align 8
  br label %226

226:                                              ; preds = %212, %224
  %227 = load i64, ptr %76, align 8
  %228 = call i64 @XXH64_round(i64 noundef %194, i64 noundef %227)
  %229 = load ptr, ptr %101, align 8
  %230 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %229, i32 0, i32 1
  store i64 %228, ptr %230, align 8
  %231 = load ptr, ptr %101, align 8
  %232 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %231, i32 0, i32 2
  %233 = load i64, ptr %232, align 8
  %234 = load ptr, ptr %101, align 8
  %235 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %234, i32 0, i32 5
  %236 = getelementptr inbounds i64, ptr %235, i64 1
  %237 = load i32, ptr %104, align 4
  store ptr %236, ptr %86, align 8
  store i32 %237, ptr %87, align 4
  %238 = load ptr, ptr %86, align 8
  %239 = load i32, ptr %87, align 4
  store ptr %238, ptr %83, align 8
  store i32 %239, ptr %84, align 4
  store i32 1, ptr %85, align 4
  %240 = load i32, ptr %85, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %254

242:                                              ; preds = %226
  %243 = load i32, ptr %84, align 4
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load ptr, ptr %83, align 8
  %247 = call i64 @XXH_read64(ptr noundef %246)
  br label %252

248:                                              ; preds = %242
  %249 = load ptr, ptr %83, align 8
  %250 = call i64 @XXH_read64(ptr noundef %249)
  %251 = call i64 @XXH_swap64(i64 noundef %250)
  br label %252

252:                                              ; preds = %248, %245
  %253 = phi i64 [ %247, %245 ], [ %251, %248 ]
  store i64 %253, ptr %82, align 8
  br label %266

254:                                              ; preds = %226
  %255 = load i32, ptr %84, align 4
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load ptr, ptr %83, align 8
  %259 = load i64, ptr %258, align 8
  br label %264

260:                                              ; preds = %254
  %261 = load ptr, ptr %83, align 8
  %262 = load i64, ptr %261, align 8
  %263 = call i64 @XXH_swap64(i64 noundef %262)
  br label %264

264:                                              ; preds = %260, %257
  %265 = phi i64 [ %259, %257 ], [ %263, %260 ]
  store i64 %265, ptr %82, align 8
  br label %266

266:                                              ; preds = %252, %264
  %267 = load i64, ptr %82, align 8
  %268 = call i64 @XXH64_round(i64 noundef %233, i64 noundef %267)
  %269 = load ptr, ptr %101, align 8
  %270 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %269, i32 0, i32 2
  store i64 %268, ptr %270, align 8
  %271 = load ptr, ptr %101, align 8
  %272 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %271, i32 0, i32 3
  %273 = load i64, ptr %272, align 8
  %274 = load ptr, ptr %101, align 8
  %275 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %274, i32 0, i32 5
  %276 = getelementptr inbounds i64, ptr %275, i64 2
  %277 = load i32, ptr %104, align 4
  store ptr %276, ptr %92, align 8
  store i32 %277, ptr %93, align 4
  %278 = load ptr, ptr %92, align 8
  %279 = load i32, ptr %93, align 4
  store ptr %278, ptr %89, align 8
  store i32 %279, ptr %90, align 4
  store i32 1, ptr %91, align 4
  %280 = load i32, ptr %91, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %294

282:                                              ; preds = %266
  %283 = load i32, ptr %90, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load ptr, ptr %89, align 8
  %287 = call i64 @XXH_read64(ptr noundef %286)
  br label %292

288:                                              ; preds = %282
  %289 = load ptr, ptr %89, align 8
  %290 = call i64 @XXH_read64(ptr noundef %289)
  %291 = call i64 @XXH_swap64(i64 noundef %290)
  br label %292

292:                                              ; preds = %288, %285
  %293 = phi i64 [ %287, %285 ], [ %291, %288 ]
  store i64 %293, ptr %88, align 8
  br label %306

294:                                              ; preds = %266
  %295 = load i32, ptr %90, align 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load ptr, ptr %89, align 8
  %299 = load i64, ptr %298, align 8
  br label %304

300:                                              ; preds = %294
  %301 = load ptr, ptr %89, align 8
  %302 = load i64, ptr %301, align 8
  %303 = call i64 @XXH_swap64(i64 noundef %302)
  br label %304

304:                                              ; preds = %300, %297
  %305 = phi i64 [ %299, %297 ], [ %303, %300 ]
  store i64 %305, ptr %88, align 8
  br label %306

306:                                              ; preds = %292, %304
  %307 = load i64, ptr %88, align 8
  %308 = call i64 @XXH64_round(i64 noundef %273, i64 noundef %307)
  %309 = load ptr, ptr %101, align 8
  %310 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %309, i32 0, i32 3
  store i64 %308, ptr %310, align 8
  %311 = load ptr, ptr %101, align 8
  %312 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %311, i32 0, i32 4
  %313 = load i64, ptr %312, align 8
  %314 = load ptr, ptr %101, align 8
  %315 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %314, i32 0, i32 5
  %316 = getelementptr inbounds i64, ptr %315, i64 3
  %317 = load i32, ptr %104, align 4
  store ptr %316, ptr %98, align 8
  store i32 %317, ptr %99, align 4
  %318 = load ptr, ptr %98, align 8
  %319 = load i32, ptr %99, align 4
  store ptr %318, ptr %95, align 8
  store i32 %319, ptr %96, align 4
  store i32 1, ptr %97, align 4
  %320 = load i32, ptr %97, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %334

322:                                              ; preds = %306
  %323 = load i32, ptr %96, align 4
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load ptr, ptr %95, align 8
  %327 = call i64 @XXH_read64(ptr noundef %326)
  br label %332

328:                                              ; preds = %322
  %329 = load ptr, ptr %95, align 8
  %330 = call i64 @XXH_read64(ptr noundef %329)
  %331 = call i64 @XXH_swap64(i64 noundef %330)
  br label %332

332:                                              ; preds = %328, %325
  %333 = phi i64 [ %327, %325 ], [ %331, %328 ]
  store i64 %333, ptr %94, align 8
  br label %346

334:                                              ; preds = %306
  %335 = load i32, ptr %96, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load ptr, ptr %95, align 8
  %339 = load i64, ptr %338, align 8
  br label %344

340:                                              ; preds = %334
  %341 = load ptr, ptr %95, align 8
  %342 = load i64, ptr %341, align 8
  %343 = call i64 @XXH_swap64(i64 noundef %342)
  br label %344

344:                                              ; preds = %340, %337
  %345 = phi i64 [ %339, %337 ], [ %343, %340 ]
  store i64 %345, ptr %94, align 8
  br label %346

346:                                              ; preds = %332, %344
  %347 = load i64, ptr %94, align 8
  %348 = call i64 @XXH64_round(i64 noundef %313, i64 noundef %347)
  %349 = load ptr, ptr %101, align 8
  %350 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %349, i32 0, i32 4
  store i64 %348, ptr %350, align 8
  %351 = load ptr, ptr %101, align 8
  %352 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %351, i32 0, i32 6
  %353 = load i32, ptr %352, align 8
  %354 = sub i32 32, %353
  %355 = load ptr, ptr %105, align 8
  %356 = zext i32 %354 to i64
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 %356
  store ptr %357, ptr %105, align 8
  %358 = load ptr, ptr %101, align 8
  %359 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %358, i32 0, i32 6
  store i32 0, ptr %359, align 8
  br label %360

360:                                              ; preds = %346, %172
  %361 = load ptr, ptr %105, align 8
  %362 = getelementptr inbounds i8, ptr %361, i64 32
  %363 = load ptr, ptr %106, align 8
  %364 = icmp ule ptr %362, %363
  br i1 %364, label %365, label %541

365:                                              ; preds = %360
  %366 = load ptr, ptr %106, align 8
  %367 = getelementptr inbounds i8, ptr %366, i64 -32
  store ptr %367, ptr %107, align 8
  %368 = load ptr, ptr %101, align 8
  %369 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %368, i32 0, i32 1
  %370 = load i64, ptr %369, align 8
  store i64 %370, ptr %108, align 8
  %371 = load ptr, ptr %101, align 8
  %372 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %371, i32 0, i32 2
  %373 = load i64, ptr %372, align 8
  store i64 %373, ptr %109, align 8
  %374 = load ptr, ptr %101, align 8
  %375 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %374, i32 0, i32 3
  %376 = load i64, ptr %375, align 8
  store i64 %376, ptr %110, align 8
  %377 = load ptr, ptr %101, align 8
  %378 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %377, i32 0, i32 4
  %379 = load i64, ptr %378, align 8
  store i64 %379, ptr %111, align 8
  br label %380

380:                                              ; preds = %520, %365
  %381 = load i64, ptr %108, align 8
  %382 = load ptr, ptr %105, align 8
  %383 = load i32, ptr %104, align 4
  store ptr %382, ptr %56, align 8
  store i32 %383, ptr %57, align 4
  %384 = load ptr, ptr %56, align 8
  %385 = load i32, ptr %57, align 4
  store ptr %384, ptr %53, align 8
  store i32 %385, ptr %54, align 4
  store i32 1, ptr %55, align 4
  %386 = load i32, ptr %55, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %400

388:                                              ; preds = %380
  %389 = load i32, ptr %54, align 4
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load ptr, ptr %53, align 8
  %393 = call i64 @XXH_read64(ptr noundef %392)
  br label %398

394:                                              ; preds = %388
  %395 = load ptr, ptr %53, align 8
  %396 = call i64 @XXH_read64(ptr noundef %395)
  %397 = call i64 @XXH_swap64(i64 noundef %396)
  br label %398

398:                                              ; preds = %394, %391
  %399 = phi i64 [ %393, %391 ], [ %397, %394 ]
  store i64 %399, ptr %52, align 8
  br label %412

400:                                              ; preds = %380
  %401 = load i32, ptr %54, align 4
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = load ptr, ptr %53, align 8
  %405 = load i64, ptr %404, align 8
  br label %410

406:                                              ; preds = %400
  %407 = load ptr, ptr %53, align 8
  %408 = load i64, ptr %407, align 8
  %409 = call i64 @XXH_swap64(i64 noundef %408)
  br label %410

410:                                              ; preds = %406, %403
  %411 = phi i64 [ %405, %403 ], [ %409, %406 ]
  store i64 %411, ptr %52, align 8
  br label %412

412:                                              ; preds = %398, %410
  %413 = load i64, ptr %52, align 8
  %414 = call i64 @XXH64_round(i64 noundef %381, i64 noundef %413)
  store i64 %414, ptr %108, align 8
  %415 = load ptr, ptr %105, align 8
  %416 = getelementptr inbounds i8, ptr %415, i64 8
  store ptr %416, ptr %105, align 8
  %417 = load i64, ptr %109, align 8
  %418 = load ptr, ptr %105, align 8
  %419 = load i32, ptr %104, align 4
  store ptr %418, ptr %62, align 8
  store i32 %419, ptr %63, align 4
  %420 = load ptr, ptr %62, align 8
  %421 = load i32, ptr %63, align 4
  store ptr %420, ptr %59, align 8
  store i32 %421, ptr %60, align 4
  store i32 1, ptr %61, align 4
  %422 = load i32, ptr %61, align 4
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %424, label %436

424:                                              ; preds = %412
  %425 = load i32, ptr %60, align 4
  %426 = icmp eq i32 %425, 1
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = load ptr, ptr %59, align 8
  %429 = call i64 @XXH_read64(ptr noundef %428)
  br label %434

430:                                              ; preds = %424
  %431 = load ptr, ptr %59, align 8
  %432 = call i64 @XXH_read64(ptr noundef %431)
  %433 = call i64 @XXH_swap64(i64 noundef %432)
  br label %434

434:                                              ; preds = %430, %427
  %435 = phi i64 [ %429, %427 ], [ %433, %430 ]
  store i64 %435, ptr %58, align 8
  br label %448

436:                                              ; preds = %412
  %437 = load i32, ptr %60, align 4
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %442

439:                                              ; preds = %436
  %440 = load ptr, ptr %59, align 8
  %441 = load i64, ptr %440, align 8
  br label %446

442:                                              ; preds = %436
  %443 = load ptr, ptr %59, align 8
  %444 = load i64, ptr %443, align 8
  %445 = call i64 @XXH_swap64(i64 noundef %444)
  br label %446

446:                                              ; preds = %442, %439
  %447 = phi i64 [ %441, %439 ], [ %445, %442 ]
  store i64 %447, ptr %58, align 8
  br label %448

448:                                              ; preds = %434, %446
  %449 = load i64, ptr %58, align 8
  %450 = call i64 @XXH64_round(i64 noundef %417, i64 noundef %449)
  store i64 %450, ptr %109, align 8
  %451 = load ptr, ptr %105, align 8
  %452 = getelementptr inbounds i8, ptr %451, i64 8
  store ptr %452, ptr %105, align 8
  %453 = load i64, ptr %110, align 8
  %454 = load ptr, ptr %105, align 8
  %455 = load i32, ptr %104, align 4
  store ptr %454, ptr %68, align 8
  store i32 %455, ptr %69, align 4
  %456 = load ptr, ptr %68, align 8
  %457 = load i32, ptr %69, align 4
  store ptr %456, ptr %65, align 8
  store i32 %457, ptr %66, align 4
  store i32 1, ptr %67, align 4
  %458 = load i32, ptr %67, align 4
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %472

460:                                              ; preds = %448
  %461 = load i32, ptr %66, align 4
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  %464 = load ptr, ptr %65, align 8
  %465 = call i64 @XXH_read64(ptr noundef %464)
  br label %470

466:                                              ; preds = %460
  %467 = load ptr, ptr %65, align 8
  %468 = call i64 @XXH_read64(ptr noundef %467)
  %469 = call i64 @XXH_swap64(i64 noundef %468)
  br label %470

470:                                              ; preds = %466, %463
  %471 = phi i64 [ %465, %463 ], [ %469, %466 ]
  store i64 %471, ptr %64, align 8
  br label %484

472:                                              ; preds = %448
  %473 = load i32, ptr %66, align 4
  %474 = icmp eq i32 %473, 1
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load ptr, ptr %65, align 8
  %477 = load i64, ptr %476, align 8
  br label %482

478:                                              ; preds = %472
  %479 = load ptr, ptr %65, align 8
  %480 = load i64, ptr %479, align 8
  %481 = call i64 @XXH_swap64(i64 noundef %480)
  br label %482

482:                                              ; preds = %478, %475
  %483 = phi i64 [ %477, %475 ], [ %481, %478 ]
  store i64 %483, ptr %64, align 8
  br label %484

484:                                              ; preds = %470, %482
  %485 = load i64, ptr %64, align 8
  %486 = call i64 @XXH64_round(i64 noundef %453, i64 noundef %485)
  store i64 %486, ptr %110, align 8
  %487 = load ptr, ptr %105, align 8
  %488 = getelementptr inbounds i8, ptr %487, i64 8
  store ptr %488, ptr %105, align 8
  %489 = load i64, ptr %111, align 8
  %490 = load ptr, ptr %105, align 8
  %491 = load i32, ptr %104, align 4
  store ptr %490, ptr %74, align 8
  store i32 %491, ptr %75, align 4
  %492 = load ptr, ptr %74, align 8
  %493 = load i32, ptr %75, align 4
  store ptr %492, ptr %71, align 8
  store i32 %493, ptr %72, align 4
  store i32 1, ptr %73, align 4
  %494 = load i32, ptr %73, align 4
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %496, label %508

496:                                              ; preds = %484
  %497 = load i32, ptr %72, align 4
  %498 = icmp eq i32 %497, 1
  br i1 %498, label %499, label %502

499:                                              ; preds = %496
  %500 = load ptr, ptr %71, align 8
  %501 = call i64 @XXH_read64(ptr noundef %500)
  br label %506

502:                                              ; preds = %496
  %503 = load ptr, ptr %71, align 8
  %504 = call i64 @XXH_read64(ptr noundef %503)
  %505 = call i64 @XXH_swap64(i64 noundef %504)
  br label %506

506:                                              ; preds = %502, %499
  %507 = phi i64 [ %501, %499 ], [ %505, %502 ]
  store i64 %507, ptr %70, align 8
  br label %520

508:                                              ; preds = %484
  %509 = load i32, ptr %72, align 4
  %510 = icmp eq i32 %509, 1
  br i1 %510, label %511, label %514

511:                                              ; preds = %508
  %512 = load ptr, ptr %71, align 8
  %513 = load i64, ptr %512, align 8
  br label %518

514:                                              ; preds = %508
  %515 = load ptr, ptr %71, align 8
  %516 = load i64, ptr %515, align 8
  %517 = call i64 @XXH_swap64(i64 noundef %516)
  br label %518

518:                                              ; preds = %514, %511
  %519 = phi i64 [ %513, %511 ], [ %517, %514 ]
  store i64 %519, ptr %70, align 8
  br label %520

520:                                              ; preds = %506, %518
  %521 = load i64, ptr %70, align 8
  %522 = call i64 @XXH64_round(i64 noundef %489, i64 noundef %521)
  store i64 %522, ptr %111, align 8
  %523 = load ptr, ptr %105, align 8
  %524 = getelementptr inbounds i8, ptr %523, i64 8
  store ptr %524, ptr %105, align 8
  %525 = load ptr, ptr %105, align 8
  %526 = load ptr, ptr %107, align 8
  %527 = icmp ule ptr %525, %526
  br i1 %527, label %380, label %528

528:                                              ; preds = %520
  %529 = load i64, ptr %108, align 8
  %530 = load ptr, ptr %101, align 8
  %531 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %530, i32 0, i32 1
  store i64 %529, ptr %531, align 8
  %532 = load i64, ptr %109, align 8
  %533 = load ptr, ptr %101, align 8
  %534 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %533, i32 0, i32 2
  store i64 %532, ptr %534, align 8
  %535 = load i64, ptr %110, align 8
  %536 = load ptr, ptr %101, align 8
  %537 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %536, i32 0, i32 3
  store i64 %535, ptr %537, align 8
  %538 = load i64, ptr %111, align 8
  %539 = load ptr, ptr %101, align 8
  %540 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %539, i32 0, i32 4
  store i64 %538, ptr %540, align 8
  br label %541

541:                                              ; preds = %528, %360
  %542 = load ptr, ptr %105, align 8
  %543 = load ptr, ptr %106, align 8
  %544 = icmp ult ptr %542, %543
  br i1 %544, label %545, label %563

545:                                              ; preds = %541
  %546 = load ptr, ptr %101, align 8
  %547 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %546, i32 0, i32 5
  %548 = load ptr, ptr %105, align 8
  %549 = load ptr, ptr %106, align 8
  %550 = load ptr, ptr %105, align 8
  %551 = ptrtoint ptr %549 to i64
  %552 = ptrtoint ptr %550 to i64
  %553 = sub i64 %551, %552
  %554 = call ptr @XXH_memcpy(ptr noundef %547, ptr noundef %548, i64 noundef %553)
  %555 = load ptr, ptr %106, align 8
  %556 = load ptr, ptr %105, align 8
  %557 = ptrtoint ptr %555 to i64
  %558 = ptrtoint ptr %556 to i64
  %559 = sub i64 %557, %558
  %560 = trunc i64 %559 to i32
  %561 = load ptr, ptr %101, align 8
  %562 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %561, i32 0, i32 6
  store i32 %560, ptr %562, align 8
  br label %563

563:                                              ; preds = %545, %541
  store i32 0, ptr %100, align 4
  br label %564

564:                                              ; preds = %138, %155, %563
  %565 = load i32, ptr %100, align 4
  store i32 %565, ptr %124, align 4
  br label %1000

566:                                              ; preds = %3
  %567 = load ptr, ptr %125, align 8
  %568 = load ptr, ptr %126, align 8
  %569 = load i64, ptr %127, align 8
  store ptr %567, ptr %113, align 8
  store ptr %568, ptr %114, align 8
  store i64 %569, ptr %115, align 8
  store i32 0, ptr %116, align 4
  %570 = load ptr, ptr %114, align 8
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %573

572:                                              ; preds = %566
  store i32 1, ptr %112, align 4
  br label %998

573:                                              ; preds = %566
  %574 = load ptr, ptr %114, align 8
  store ptr %574, ptr %117, align 8
  %575 = load ptr, ptr %117, align 8
  %576 = load i64, ptr %115, align 8
  %577 = getelementptr inbounds nuw i8, ptr %575, i64 %576
  store ptr %577, ptr %118, align 8
  %578 = load i64, ptr %115, align 8
  %579 = load ptr, ptr %113, align 8
  %580 = load i64, ptr %579, align 8
  %581 = add i64 %580, %578
  store i64 %581, ptr %579, align 8
  %582 = load ptr, ptr %113, align 8
  %583 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %582, i32 0, i32 6
  %584 = load i32, ptr %583, align 8
  %585 = zext i32 %584 to i64
  %586 = load i64, ptr %115, align 8
  %587 = add i64 %585, %586
  %588 = icmp ult i64 %587, 32
  br i1 %588, label %589, label %606

589:                                              ; preds = %573
  %590 = load ptr, ptr %113, align 8
  %591 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %590, i32 0, i32 5
  %592 = load ptr, ptr %113, align 8
  %593 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %592, i32 0, i32 6
  %594 = load i32, ptr %593, align 8
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds nuw i8, ptr %591, i64 %595
  %597 = load ptr, ptr %114, align 8
  %598 = load i64, ptr %115, align 8
  %599 = call ptr @XXH_memcpy(ptr noundef %596, ptr noundef %597, i64 noundef %598)
  %600 = load i64, ptr %115, align 8
  %601 = trunc i64 %600 to i32
  %602 = load ptr, ptr %113, align 8
  %603 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %602, i32 0, i32 6
  %604 = load i32, ptr %603, align 8
  %605 = add i32 %604, %601
  store i32 %605, ptr %603, align 8
  store i32 0, ptr %112, align 4
  br label %998

606:                                              ; preds = %573
  %607 = load ptr, ptr %113, align 8
  %608 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %607, i32 0, i32 6
  %609 = load i32, ptr %608, align 8
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %794

611:                                              ; preds = %606
  %612 = load ptr, ptr %113, align 8
  %613 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %612, i32 0, i32 5
  %614 = load ptr, ptr %113, align 8
  %615 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %614, i32 0, i32 6
  %616 = load i32, ptr %615, align 8
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds nuw i8, ptr %613, i64 %617
  %619 = load ptr, ptr %114, align 8
  %620 = load ptr, ptr %113, align 8
  %621 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %620, i32 0, i32 6
  %622 = load i32, ptr %621, align 8
  %623 = sub i32 32, %622
  %624 = zext i32 %623 to i64
  %625 = call ptr @XXH_memcpy(ptr noundef %618, ptr noundef %619, i64 noundef %624)
  %626 = load ptr, ptr %113, align 8
  %627 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %626, i32 0, i32 1
  %628 = load i64, ptr %627, align 8
  %629 = load ptr, ptr %113, align 8
  %630 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %629, i32 0, i32 5
  %631 = load i32, ptr %116, align 4
  store ptr %630, ptr %32, align 8
  store i32 %631, ptr %33, align 4
  %632 = load ptr, ptr %32, align 8
  %633 = load i32, ptr %33, align 4
  store ptr %632, ptr %29, align 8
  store i32 %633, ptr %30, align 4
  store i32 1, ptr %31, align 4
  %634 = load i32, ptr %31, align 4
  %635 = icmp eq i32 %634, 1
  br i1 %635, label %636, label %648

636:                                              ; preds = %611
  %637 = load i32, ptr %30, align 4
  %638 = icmp eq i32 %637, 1
  br i1 %638, label %639, label %642

639:                                              ; preds = %636
  %640 = load ptr, ptr %29, align 8
  %641 = call i64 @XXH_read64(ptr noundef %640)
  br label %646

642:                                              ; preds = %636
  %643 = load ptr, ptr %29, align 8
  %644 = call i64 @XXH_read64(ptr noundef %643)
  %645 = call i64 @XXH_swap64(i64 noundef %644)
  br label %646

646:                                              ; preds = %642, %639
  %647 = phi i64 [ %641, %639 ], [ %645, %642 ]
  store i64 %647, ptr %28, align 8
  br label %660

648:                                              ; preds = %611
  %649 = load i32, ptr %30, align 4
  %650 = icmp eq i32 %649, 1
  br i1 %650, label %651, label %654

651:                                              ; preds = %648
  %652 = load ptr, ptr %29, align 8
  %653 = load i64, ptr %652, align 8
  br label %658

654:                                              ; preds = %648
  %655 = load ptr, ptr %29, align 8
  %656 = load i64, ptr %655, align 8
  %657 = call i64 @XXH_swap64(i64 noundef %656)
  br label %658

658:                                              ; preds = %654, %651
  %659 = phi i64 [ %653, %651 ], [ %657, %654 ]
  store i64 %659, ptr %28, align 8
  br label %660

660:                                              ; preds = %646, %658
  %661 = load i64, ptr %28, align 8
  %662 = call i64 @XXH64_round(i64 noundef %628, i64 noundef %661)
  %663 = load ptr, ptr %113, align 8
  %664 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %663, i32 0, i32 1
  store i64 %662, ptr %664, align 8
  %665 = load ptr, ptr %113, align 8
  %666 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %665, i32 0, i32 2
  %667 = load i64, ptr %666, align 8
  %668 = load ptr, ptr %113, align 8
  %669 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %668, i32 0, i32 5
  %670 = getelementptr inbounds i64, ptr %669, i64 1
  %671 = load i32, ptr %116, align 4
  store ptr %670, ptr %38, align 8
  store i32 %671, ptr %39, align 4
  %672 = load ptr, ptr %38, align 8
  %673 = load i32, ptr %39, align 4
  store ptr %672, ptr %35, align 8
  store i32 %673, ptr %36, align 4
  store i32 1, ptr %37, align 4
  %674 = load i32, ptr %37, align 4
  %675 = icmp eq i32 %674, 1
  br i1 %675, label %676, label %688

676:                                              ; preds = %660
  %677 = load i32, ptr %36, align 4
  %678 = icmp eq i32 %677, 1
  br i1 %678, label %679, label %682

679:                                              ; preds = %676
  %680 = load ptr, ptr %35, align 8
  %681 = call i64 @XXH_read64(ptr noundef %680)
  br label %686

682:                                              ; preds = %676
  %683 = load ptr, ptr %35, align 8
  %684 = call i64 @XXH_read64(ptr noundef %683)
  %685 = call i64 @XXH_swap64(i64 noundef %684)
  br label %686

686:                                              ; preds = %682, %679
  %687 = phi i64 [ %681, %679 ], [ %685, %682 ]
  store i64 %687, ptr %34, align 8
  br label %700

688:                                              ; preds = %660
  %689 = load i32, ptr %36, align 4
  %690 = icmp eq i32 %689, 1
  br i1 %690, label %691, label %694

691:                                              ; preds = %688
  %692 = load ptr, ptr %35, align 8
  %693 = load i64, ptr %692, align 8
  br label %698

694:                                              ; preds = %688
  %695 = load ptr, ptr %35, align 8
  %696 = load i64, ptr %695, align 8
  %697 = call i64 @XXH_swap64(i64 noundef %696)
  br label %698

698:                                              ; preds = %694, %691
  %699 = phi i64 [ %693, %691 ], [ %697, %694 ]
  store i64 %699, ptr %34, align 8
  br label %700

700:                                              ; preds = %686, %698
  %701 = load i64, ptr %34, align 8
  %702 = call i64 @XXH64_round(i64 noundef %667, i64 noundef %701)
  %703 = load ptr, ptr %113, align 8
  %704 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %703, i32 0, i32 2
  store i64 %702, ptr %704, align 8
  %705 = load ptr, ptr %113, align 8
  %706 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %705, i32 0, i32 3
  %707 = load i64, ptr %706, align 8
  %708 = load ptr, ptr %113, align 8
  %709 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %708, i32 0, i32 5
  %710 = getelementptr inbounds i64, ptr %709, i64 2
  %711 = load i32, ptr %116, align 4
  store ptr %710, ptr %44, align 8
  store i32 %711, ptr %45, align 4
  %712 = load ptr, ptr %44, align 8
  %713 = load i32, ptr %45, align 4
  store ptr %712, ptr %41, align 8
  store i32 %713, ptr %42, align 4
  store i32 1, ptr %43, align 4
  %714 = load i32, ptr %43, align 4
  %715 = icmp eq i32 %714, 1
  br i1 %715, label %716, label %728

716:                                              ; preds = %700
  %717 = load i32, ptr %42, align 4
  %718 = icmp eq i32 %717, 1
  br i1 %718, label %719, label %722

719:                                              ; preds = %716
  %720 = load ptr, ptr %41, align 8
  %721 = call i64 @XXH_read64(ptr noundef %720)
  br label %726

722:                                              ; preds = %716
  %723 = load ptr, ptr %41, align 8
  %724 = call i64 @XXH_read64(ptr noundef %723)
  %725 = call i64 @XXH_swap64(i64 noundef %724)
  br label %726

726:                                              ; preds = %722, %719
  %727 = phi i64 [ %721, %719 ], [ %725, %722 ]
  store i64 %727, ptr %40, align 8
  br label %740

728:                                              ; preds = %700
  %729 = load i32, ptr %42, align 4
  %730 = icmp eq i32 %729, 1
  br i1 %730, label %731, label %734

731:                                              ; preds = %728
  %732 = load ptr, ptr %41, align 8
  %733 = load i64, ptr %732, align 8
  br label %738

734:                                              ; preds = %728
  %735 = load ptr, ptr %41, align 8
  %736 = load i64, ptr %735, align 8
  %737 = call i64 @XXH_swap64(i64 noundef %736)
  br label %738

738:                                              ; preds = %734, %731
  %739 = phi i64 [ %733, %731 ], [ %737, %734 ]
  store i64 %739, ptr %40, align 8
  br label %740

740:                                              ; preds = %726, %738
  %741 = load i64, ptr %40, align 8
  %742 = call i64 @XXH64_round(i64 noundef %707, i64 noundef %741)
  %743 = load ptr, ptr %113, align 8
  %744 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %743, i32 0, i32 3
  store i64 %742, ptr %744, align 8
  %745 = load ptr, ptr %113, align 8
  %746 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %745, i32 0, i32 4
  %747 = load i64, ptr %746, align 8
  %748 = load ptr, ptr %113, align 8
  %749 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %748, i32 0, i32 5
  %750 = getelementptr inbounds i64, ptr %749, i64 3
  %751 = load i32, ptr %116, align 4
  store ptr %750, ptr %50, align 8
  store i32 %751, ptr %51, align 4
  %752 = load ptr, ptr %50, align 8
  %753 = load i32, ptr %51, align 4
  store ptr %752, ptr %47, align 8
  store i32 %753, ptr %48, align 4
  store i32 1, ptr %49, align 4
  %754 = load i32, ptr %49, align 4
  %755 = icmp eq i32 %754, 1
  br i1 %755, label %756, label %768

756:                                              ; preds = %740
  %757 = load i32, ptr %48, align 4
  %758 = icmp eq i32 %757, 1
  br i1 %758, label %759, label %762

759:                                              ; preds = %756
  %760 = load ptr, ptr %47, align 8
  %761 = call i64 @XXH_read64(ptr noundef %760)
  br label %766

762:                                              ; preds = %756
  %763 = load ptr, ptr %47, align 8
  %764 = call i64 @XXH_read64(ptr noundef %763)
  %765 = call i64 @XXH_swap64(i64 noundef %764)
  br label %766

766:                                              ; preds = %762, %759
  %767 = phi i64 [ %761, %759 ], [ %765, %762 ]
  store i64 %767, ptr %46, align 8
  br label %780

768:                                              ; preds = %740
  %769 = load i32, ptr %48, align 4
  %770 = icmp eq i32 %769, 1
  br i1 %770, label %771, label %774

771:                                              ; preds = %768
  %772 = load ptr, ptr %47, align 8
  %773 = load i64, ptr %772, align 8
  br label %778

774:                                              ; preds = %768
  %775 = load ptr, ptr %47, align 8
  %776 = load i64, ptr %775, align 8
  %777 = call i64 @XXH_swap64(i64 noundef %776)
  br label %778

778:                                              ; preds = %774, %771
  %779 = phi i64 [ %773, %771 ], [ %777, %774 ]
  store i64 %779, ptr %46, align 8
  br label %780

780:                                              ; preds = %766, %778
  %781 = load i64, ptr %46, align 8
  %782 = call i64 @XXH64_round(i64 noundef %747, i64 noundef %781)
  %783 = load ptr, ptr %113, align 8
  %784 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %783, i32 0, i32 4
  store i64 %782, ptr %784, align 8
  %785 = load ptr, ptr %113, align 8
  %786 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %785, i32 0, i32 6
  %787 = load i32, ptr %786, align 8
  %788 = sub i32 32, %787
  %789 = load ptr, ptr %117, align 8
  %790 = zext i32 %788 to i64
  %791 = getelementptr inbounds nuw i8, ptr %789, i64 %790
  store ptr %791, ptr %117, align 8
  %792 = load ptr, ptr %113, align 8
  %793 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %792, i32 0, i32 6
  store i32 0, ptr %793, align 8
  br label %794

794:                                              ; preds = %780, %606
  %795 = load ptr, ptr %117, align 8
  %796 = getelementptr inbounds i8, ptr %795, i64 32
  %797 = load ptr, ptr %118, align 8
  %798 = icmp ule ptr %796, %797
  br i1 %798, label %799, label %975

799:                                              ; preds = %794
  %800 = load ptr, ptr %118, align 8
  %801 = getelementptr inbounds i8, ptr %800, i64 -32
  store ptr %801, ptr %119, align 8
  %802 = load ptr, ptr %113, align 8
  %803 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %802, i32 0, i32 1
  %804 = load i64, ptr %803, align 8
  store i64 %804, ptr %120, align 8
  %805 = load ptr, ptr %113, align 8
  %806 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %805, i32 0, i32 2
  %807 = load i64, ptr %806, align 8
  store i64 %807, ptr %121, align 8
  %808 = load ptr, ptr %113, align 8
  %809 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %808, i32 0, i32 3
  %810 = load i64, ptr %809, align 8
  store i64 %810, ptr %122, align 8
  %811 = load ptr, ptr %113, align 8
  %812 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %811, i32 0, i32 4
  %813 = load i64, ptr %812, align 8
  store i64 %813, ptr %123, align 8
  br label %814

814:                                              ; preds = %954, %799
  %815 = load i64, ptr %120, align 8
  %816 = load ptr, ptr %117, align 8
  %817 = load i32, ptr %116, align 4
  store ptr %816, ptr %8, align 8
  store i32 %817, ptr %9, align 4
  %818 = load ptr, ptr %8, align 8
  %819 = load i32, ptr %9, align 4
  store ptr %818, ptr %5, align 8
  store i32 %819, ptr %6, align 4
  store i32 1, ptr %7, align 4
  %820 = load i32, ptr %7, align 4
  %821 = icmp eq i32 %820, 1
  br i1 %821, label %822, label %834

822:                                              ; preds = %814
  %823 = load i32, ptr %6, align 4
  %824 = icmp eq i32 %823, 1
  br i1 %824, label %825, label %828

825:                                              ; preds = %822
  %826 = load ptr, ptr %5, align 8
  %827 = call i64 @XXH_read64(ptr noundef %826)
  br label %832

828:                                              ; preds = %822
  %829 = load ptr, ptr %5, align 8
  %830 = call i64 @XXH_read64(ptr noundef %829)
  %831 = call i64 @XXH_swap64(i64 noundef %830)
  br label %832

832:                                              ; preds = %828, %825
  %833 = phi i64 [ %827, %825 ], [ %831, %828 ]
  store i64 %833, ptr %4, align 8
  br label %846

834:                                              ; preds = %814
  %835 = load i32, ptr %6, align 4
  %836 = icmp eq i32 %835, 1
  br i1 %836, label %837, label %840

837:                                              ; preds = %834
  %838 = load ptr, ptr %5, align 8
  %839 = load i64, ptr %838, align 8
  br label %844

840:                                              ; preds = %834
  %841 = load ptr, ptr %5, align 8
  %842 = load i64, ptr %841, align 8
  %843 = call i64 @XXH_swap64(i64 noundef %842)
  br label %844

844:                                              ; preds = %840, %837
  %845 = phi i64 [ %839, %837 ], [ %843, %840 ]
  store i64 %845, ptr %4, align 8
  br label %846

846:                                              ; preds = %832, %844
  %847 = load i64, ptr %4, align 8
  %848 = call i64 @XXH64_round(i64 noundef %815, i64 noundef %847)
  store i64 %848, ptr %120, align 8
  %849 = load ptr, ptr %117, align 8
  %850 = getelementptr inbounds i8, ptr %849, i64 8
  store ptr %850, ptr %117, align 8
  %851 = load i64, ptr %121, align 8
  %852 = load ptr, ptr %117, align 8
  %853 = load i32, ptr %116, align 4
  store ptr %852, ptr %14, align 8
  store i32 %853, ptr %15, align 4
  %854 = load ptr, ptr %14, align 8
  %855 = load i32, ptr %15, align 4
  store ptr %854, ptr %11, align 8
  store i32 %855, ptr %12, align 4
  store i32 1, ptr %13, align 4
  %856 = load i32, ptr %13, align 4
  %857 = icmp eq i32 %856, 1
  br i1 %857, label %858, label %870

858:                                              ; preds = %846
  %859 = load i32, ptr %12, align 4
  %860 = icmp eq i32 %859, 1
  br i1 %860, label %861, label %864

861:                                              ; preds = %858
  %862 = load ptr, ptr %11, align 8
  %863 = call i64 @XXH_read64(ptr noundef %862)
  br label %868

864:                                              ; preds = %858
  %865 = load ptr, ptr %11, align 8
  %866 = call i64 @XXH_read64(ptr noundef %865)
  %867 = call i64 @XXH_swap64(i64 noundef %866)
  br label %868

868:                                              ; preds = %864, %861
  %869 = phi i64 [ %863, %861 ], [ %867, %864 ]
  store i64 %869, ptr %10, align 8
  br label %882

870:                                              ; preds = %846
  %871 = load i32, ptr %12, align 4
  %872 = icmp eq i32 %871, 1
  br i1 %872, label %873, label %876

873:                                              ; preds = %870
  %874 = load ptr, ptr %11, align 8
  %875 = load i64, ptr %874, align 8
  br label %880

876:                                              ; preds = %870
  %877 = load ptr, ptr %11, align 8
  %878 = load i64, ptr %877, align 8
  %879 = call i64 @XXH_swap64(i64 noundef %878)
  br label %880

880:                                              ; preds = %876, %873
  %881 = phi i64 [ %875, %873 ], [ %879, %876 ]
  store i64 %881, ptr %10, align 8
  br label %882

882:                                              ; preds = %868, %880
  %883 = load i64, ptr %10, align 8
  %884 = call i64 @XXH64_round(i64 noundef %851, i64 noundef %883)
  store i64 %884, ptr %121, align 8
  %885 = load ptr, ptr %117, align 8
  %886 = getelementptr inbounds i8, ptr %885, i64 8
  store ptr %886, ptr %117, align 8
  %887 = load i64, ptr %122, align 8
  %888 = load ptr, ptr %117, align 8
  %889 = load i32, ptr %116, align 4
  store ptr %888, ptr %20, align 8
  store i32 %889, ptr %21, align 4
  %890 = load ptr, ptr %20, align 8
  %891 = load i32, ptr %21, align 4
  store ptr %890, ptr %17, align 8
  store i32 %891, ptr %18, align 4
  store i32 1, ptr %19, align 4
  %892 = load i32, ptr %19, align 4
  %893 = icmp eq i32 %892, 1
  br i1 %893, label %894, label %906

894:                                              ; preds = %882
  %895 = load i32, ptr %18, align 4
  %896 = icmp eq i32 %895, 1
  br i1 %896, label %897, label %900

897:                                              ; preds = %894
  %898 = load ptr, ptr %17, align 8
  %899 = call i64 @XXH_read64(ptr noundef %898)
  br label %904

900:                                              ; preds = %894
  %901 = load ptr, ptr %17, align 8
  %902 = call i64 @XXH_read64(ptr noundef %901)
  %903 = call i64 @XXH_swap64(i64 noundef %902)
  br label %904

904:                                              ; preds = %900, %897
  %905 = phi i64 [ %899, %897 ], [ %903, %900 ]
  store i64 %905, ptr %16, align 8
  br label %918

906:                                              ; preds = %882
  %907 = load i32, ptr %18, align 4
  %908 = icmp eq i32 %907, 1
  br i1 %908, label %909, label %912

909:                                              ; preds = %906
  %910 = load ptr, ptr %17, align 8
  %911 = load i64, ptr %910, align 8
  br label %916

912:                                              ; preds = %906
  %913 = load ptr, ptr %17, align 8
  %914 = load i64, ptr %913, align 8
  %915 = call i64 @XXH_swap64(i64 noundef %914)
  br label %916

916:                                              ; preds = %912, %909
  %917 = phi i64 [ %911, %909 ], [ %915, %912 ]
  store i64 %917, ptr %16, align 8
  br label %918

918:                                              ; preds = %904, %916
  %919 = load i64, ptr %16, align 8
  %920 = call i64 @XXH64_round(i64 noundef %887, i64 noundef %919)
  store i64 %920, ptr %122, align 8
  %921 = load ptr, ptr %117, align 8
  %922 = getelementptr inbounds i8, ptr %921, i64 8
  store ptr %922, ptr %117, align 8
  %923 = load i64, ptr %123, align 8
  %924 = load ptr, ptr %117, align 8
  %925 = load i32, ptr %116, align 4
  store ptr %924, ptr %26, align 8
  store i32 %925, ptr %27, align 4
  %926 = load ptr, ptr %26, align 8
  %927 = load i32, ptr %27, align 4
  store ptr %926, ptr %23, align 8
  store i32 %927, ptr %24, align 4
  store i32 1, ptr %25, align 4
  %928 = load i32, ptr %25, align 4
  %929 = icmp eq i32 %928, 1
  br i1 %929, label %930, label %942

930:                                              ; preds = %918
  %931 = load i32, ptr %24, align 4
  %932 = icmp eq i32 %931, 1
  br i1 %932, label %933, label %936

933:                                              ; preds = %930
  %934 = load ptr, ptr %23, align 8
  %935 = call i64 @XXH_read64(ptr noundef %934)
  br label %940

936:                                              ; preds = %930
  %937 = load ptr, ptr %23, align 8
  %938 = call i64 @XXH_read64(ptr noundef %937)
  %939 = call i64 @XXH_swap64(i64 noundef %938)
  br label %940

940:                                              ; preds = %936, %933
  %941 = phi i64 [ %935, %933 ], [ %939, %936 ]
  store i64 %941, ptr %22, align 8
  br label %954

942:                                              ; preds = %918
  %943 = load i32, ptr %24, align 4
  %944 = icmp eq i32 %943, 1
  br i1 %944, label %945, label %948

945:                                              ; preds = %942
  %946 = load ptr, ptr %23, align 8
  %947 = load i64, ptr %946, align 8
  br label %952

948:                                              ; preds = %942
  %949 = load ptr, ptr %23, align 8
  %950 = load i64, ptr %949, align 8
  %951 = call i64 @XXH_swap64(i64 noundef %950)
  br label %952

952:                                              ; preds = %948, %945
  %953 = phi i64 [ %947, %945 ], [ %951, %948 ]
  store i64 %953, ptr %22, align 8
  br label %954

954:                                              ; preds = %940, %952
  %955 = load i64, ptr %22, align 8
  %956 = call i64 @XXH64_round(i64 noundef %923, i64 noundef %955)
  store i64 %956, ptr %123, align 8
  %957 = load ptr, ptr %117, align 8
  %958 = getelementptr inbounds i8, ptr %957, i64 8
  store ptr %958, ptr %117, align 8
  %959 = load ptr, ptr %117, align 8
  %960 = load ptr, ptr %119, align 8
  %961 = icmp ule ptr %959, %960
  br i1 %961, label %814, label %962

962:                                              ; preds = %954
  %963 = load i64, ptr %120, align 8
  %964 = load ptr, ptr %113, align 8
  %965 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %964, i32 0, i32 1
  store i64 %963, ptr %965, align 8
  %966 = load i64, ptr %121, align 8
  %967 = load ptr, ptr %113, align 8
  %968 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %967, i32 0, i32 2
  store i64 %966, ptr %968, align 8
  %969 = load i64, ptr %122, align 8
  %970 = load ptr, ptr %113, align 8
  %971 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %970, i32 0, i32 3
  store i64 %969, ptr %971, align 8
  %972 = load i64, ptr %123, align 8
  %973 = load ptr, ptr %113, align 8
  %974 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %973, i32 0, i32 4
  store i64 %972, ptr %974, align 8
  br label %975

975:                                              ; preds = %962, %794
  %976 = load ptr, ptr %117, align 8
  %977 = load ptr, ptr %118, align 8
  %978 = icmp ult ptr %976, %977
  br i1 %978, label %979, label %997

979:                                              ; preds = %975
  %980 = load ptr, ptr %113, align 8
  %981 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %980, i32 0, i32 5
  %982 = load ptr, ptr %117, align 8
  %983 = load ptr, ptr %118, align 8
  %984 = load ptr, ptr %117, align 8
  %985 = ptrtoint ptr %983 to i64
  %986 = ptrtoint ptr %984 to i64
  %987 = sub i64 %985, %986
  %988 = call ptr @XXH_memcpy(ptr noundef %981, ptr noundef %982, i64 noundef %987)
  %989 = load ptr, ptr %118, align 8
  %990 = load ptr, ptr %117, align 8
  %991 = ptrtoint ptr %989 to i64
  %992 = ptrtoint ptr %990 to i64
  %993 = sub i64 %991, %992
  %994 = trunc i64 %993 to i32
  %995 = load ptr, ptr %113, align 8
  %996 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %995, i32 0, i32 6
  store i32 %994, ptr %996, align 8
  br label %997

997:                                              ; preds = %979, %975
  store i32 0, ptr %112, align 4
  br label %998

998:                                              ; preds = %572, %589, %997
  %999 = load i32, ptr %112, align 4
  store i32 %999, ptr %124, align 4
  br label %1000

1000:                                             ; preds = %998, %564
  %1001 = load i32, ptr %124, align 4
  ret i32 %1001
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
define dso_local i64 @XXH3_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca i64, align 8
  %48 = alloca ptr, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca ptr, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca i64, align 8
  store ptr %0, ptr %52, align 8
  store i64 %1, ptr %53, align 8
  store i64 %2, ptr %54, align 8
  %58 = load ptr, ptr %52, align 8
  store ptr %58, ptr %55, align 8
  store ptr @kKey, ptr %56, align 8
  %59 = load i64, ptr %53, align 8
  %60 = icmp ule i64 %59, 16
  br i1 %60, label %61, label %186

61:                                               ; preds = %3
  %62 = load ptr, ptr %52, align 8
  %63 = load i64, ptr %53, align 8
  %64 = load i64, ptr %54, align 8
  store ptr %62, ptr %48, align 8
  store i64 %63, ptr %49, align 8
  store i64 %64, ptr %50, align 8
  %65 = load i64, ptr %49, align 8
  %66 = icmp ugt i64 %65, 8
  br i1 %66, label %67, label %97

67:                                               ; preds = %61
  %68 = load ptr, ptr %48, align 8
  %69 = load i64, ptr %49, align 8
  %70 = load i64, ptr %50, align 8
  store ptr %68, ptr %23, align 8
  store i64 %69, ptr %24, align 8
  store ptr @kKey, ptr %25, align 8
  store i64 %70, ptr %26, align 8
  %71 = load ptr, ptr %25, align 8
  store ptr %71, ptr %27, align 8
  %72 = load i64, ptr %24, align 8
  %73 = load i64, ptr %26, align 8
  %74 = add i64 %72, %73
  %75 = mul i64 -7046029288634856825, %74
  store i64 %75, ptr %28, align 8
  %76 = load ptr, ptr %23, align 8
  %77 = call i64 @XXH_read64(ptr noundef %76)
  %78 = load ptr, ptr %27, align 8
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %77, %79
  store i64 %80, ptr %29, align 8
  %81 = load ptr, ptr %23, align 8
  %82 = load i64, ptr %24, align 8
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 %82
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = call i64 @XXH_read64(ptr noundef %84)
  %86 = load ptr, ptr %27, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %85, %88
  store i64 %89, ptr %30, align 8
  %90 = load i64, ptr %29, align 8
  %91 = load i64, ptr %30, align 8
  %92 = call i64 @XXH3_mul128(i64 noundef %90, i64 noundef %91)
  %93 = load i64, ptr %28, align 8
  %94 = add i64 %93, %92
  store i64 %94, ptr %28, align 8
  %95 = load i64, ptr %28, align 8
  %96 = call i64 @XXH64_avalanche2(i64 noundef %95)
  store i64 %96, ptr %47, align 8
  br label %184

97:                                               ; preds = %61
  %98 = load i64, ptr %49, align 8
  %99 = icmp uge i64 %98, 4
  br i1 %99, label %100, label %132

100:                                              ; preds = %97
  %101 = load ptr, ptr %48, align 8
  %102 = load i64, ptr %49, align 8
  %103 = load i64, ptr %50, align 8
  store ptr %101, ptr %15, align 8
  store i64 %102, ptr %16, align 8
  store ptr @kKey, ptr %17, align 8
  store i64 %103, ptr %18, align 8
  %104 = load ptr, ptr %17, align 8
  store ptr %104, ptr %19, align 8
  %105 = load i64, ptr %16, align 8
  %106 = load i64, ptr %18, align 8
  %107 = add i64 %105, %106
  %108 = mul i64 -7046029288634856825, %107
  store i64 %108, ptr %20, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = call i32 @XXH_read32(ptr noundef %109)
  %111 = load ptr, ptr %19, align 8
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %110, %112
  store i32 %113, ptr %21, align 4
  %114 = load ptr, ptr %15, align 8
  %115 = load i64, ptr %16, align 8
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 %115
  %117 = getelementptr inbounds i8, ptr %116, i64 -4
  %118 = call i32 @XXH_read32(ptr noundef %117)
  %119 = load ptr, ptr %19, align 8
  %120 = getelementptr inbounds i32, ptr %119, i64 1
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %118, %121
  store i32 %122, ptr %22, align 4
  %123 = load i32, ptr %21, align 4
  %124 = zext i32 %123 to i64
  %125 = load i32, ptr %22, align 4
  %126 = zext i32 %125 to i64
  %127 = mul i64 %124, %126
  %128 = load i64, ptr %20, align 8
  %129 = add i64 %128, %127
  store i64 %129, ptr %20, align 8
  %130 = load i64, ptr %20, align 8
  %131 = call i64 @XXH64_avalanche2(i64 noundef %130)
  store i64 %131, ptr %47, align 8
  br label %184

132:                                              ; preds = %97
  %133 = load i64, ptr %49, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %182

135:                                              ; preds = %132
  %136 = load ptr, ptr %48, align 8
  %137 = load i64, ptr %49, align 8
  %138 = load i64, ptr %50, align 8
  store ptr %136, ptr %4, align 8
  store i64 %137, ptr %5, align 8
  store ptr @kKey, ptr %6, align 8
  store i64 %138, ptr %7, align 8
  %139 = load ptr, ptr %6, align 8
  store ptr %139, ptr %8, align 8
  %140 = load ptr, ptr %4, align 8
  %141 = load i8, ptr %140, align 1
  store i8 %141, ptr %9, align 1
  %142 = load ptr, ptr %4, align 8
  %143 = load i64, ptr %5, align 8
  %144 = lshr i64 %143, 1
  %145 = getelementptr inbounds nuw i8, ptr %142, i64 %144
  %146 = load i8, ptr %145, align 1
  store i8 %146, ptr %10, align 1
  %147 = load ptr, ptr %4, align 8
  %148 = load i64, ptr %5, align 8
  %149 = sub i64 %148, 1
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 %149
  %151 = load i8, ptr %150, align 1
  store i8 %151, ptr %11, align 1
  %152 = load i8, ptr %9, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, ptr %10, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 8
  %157 = add i32 %153, %156
  store i32 %157, ptr %12, align 4
  %158 = load i64, ptr %5, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i8, ptr %11, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, 2
  %163 = add i32 %159, %162
  store i32 %163, ptr %13, align 4
  %164 = load i32, ptr %12, align 4
  %165 = zext i32 %164 to i64
  %166 = load i64, ptr %7, align 8
  %167 = add i64 %165, %166
  %168 = load ptr, ptr %8, align 8
  %169 = load i32, ptr %168, align 4
  %170 = zext i32 %169 to i64
  %171 = add i64 %167, %170
  %172 = and i64 %171, 4294967295
  %173 = load i32, ptr %13, align 4
  %174 = load ptr, ptr %8, align 8
  %175 = getelementptr inbounds i32, ptr %174, i64 1
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %173, %176
  %178 = zext i32 %177 to i64
  %179 = mul i64 %172, %178
  store i64 %179, ptr %14, align 8
  %180 = load i64, ptr %14, align 8
  %181 = call i64 @XXH64_avalanche2(i64 noundef %180)
  store i64 %181, ptr %47, align 8
  br label %184

182:                                              ; preds = %132
  %183 = load i64, ptr %50, align 8
  store i64 %183, ptr %47, align 8
  br label %184

184:                                              ; preds = %67, %100, %135, %182
  %185 = load i64, ptr %47, align 8
  store i64 %185, ptr %51, align 8
  br label %357

186:                                              ; preds = %3
  %187 = load i64, ptr %53, align 8
  %188 = load i64, ptr %54, align 8
  %189 = add i64 %187, %188
  %190 = mul i64 -7046029288634856825, %189
  store i64 %190, ptr %57, align 8
  %191 = load i64, ptr %53, align 8
  %192 = icmp ugt i64 %191, 32
  br i1 %192, label %193, label %318

193:                                              ; preds = %186
  %194 = load i64, ptr %53, align 8
  %195 = icmp ugt i64 %194, 64
  br i1 %195, label %196, label %281

196:                                              ; preds = %193
  %197 = load i64, ptr %53, align 8
  %198 = icmp ugt i64 %197, 96
  br i1 %198, label %199, label %244

199:                                              ; preds = %196
  %200 = load i64, ptr %53, align 8
  %201 = icmp ugt i64 %200, 128
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load ptr, ptr %52, align 8
  %204 = load i64, ptr %53, align 8
  %205 = load i64, ptr %54, align 8
  %206 = call i64 @XXH3_hashLong_64b(ptr noundef %203, i64 noundef %204, i64 noundef %205)
  store i64 %206, ptr %51, align 8
  br label %357

207:                                              ; preds = %199
  %208 = load ptr, ptr %55, align 8
  %209 = getelementptr inbounds i8, ptr %208, i64 48
  store ptr %209, ptr %31, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 12), ptr %32, align 8
  %210 = load ptr, ptr %31, align 8
  %211 = call i64 @XXH_read64(ptr noundef %210)
  %212 = load ptr, ptr %32, align 8
  %213 = load i64, ptr %212, align 8
  %214 = xor i64 %211, %213
  %215 = load ptr, ptr %31, align 8
  %216 = getelementptr inbounds i8, ptr %215, i64 8
  %217 = call i64 @XXH_read64(ptr noundef %216)
  %218 = load ptr, ptr %32, align 8
  %219 = getelementptr inbounds i64, ptr %218, i64 1
  %220 = load i64, ptr %219, align 8
  %221 = xor i64 %217, %220
  %222 = call i64 @XXH3_mul128(i64 noundef %214, i64 noundef %221)
  %223 = load i64, ptr %57, align 8
  %224 = add i64 %223, %222
  store i64 %224, ptr %57, align 8
  %225 = load ptr, ptr %55, align 8
  %226 = load i64, ptr %53, align 8
  %227 = getelementptr inbounds nuw i8, ptr %225, i64 %226
  %228 = getelementptr inbounds i8, ptr %227, i64 -64
  store ptr %228, ptr %33, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 14), ptr %34, align 8
  %229 = load ptr, ptr %33, align 8
  %230 = call i64 @XXH_read64(ptr noundef %229)
  %231 = load ptr, ptr %34, align 8
  %232 = load i64, ptr %231, align 8
  %233 = xor i64 %230, %232
  %234 = load ptr, ptr %33, align 8
  %235 = getelementptr inbounds i8, ptr %234, i64 8
  %236 = call i64 @XXH_read64(ptr noundef %235)
  %237 = load ptr, ptr %34, align 8
  %238 = getelementptr inbounds i64, ptr %237, i64 1
  %239 = load i64, ptr %238, align 8
  %240 = xor i64 %236, %239
  %241 = call i64 @XXH3_mul128(i64 noundef %233, i64 noundef %240)
  %242 = load i64, ptr %57, align 8
  %243 = add i64 %242, %241
  store i64 %243, ptr %57, align 8
  br label %244

244:                                              ; preds = %207, %196
  %245 = load ptr, ptr %55, align 8
  %246 = getelementptr inbounds i8, ptr %245, i64 32
  store ptr %246, ptr %35, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 8), ptr %36, align 8
  %247 = load ptr, ptr %35, align 8
  %248 = call i64 @XXH_read64(ptr noundef %247)
  %249 = load ptr, ptr %36, align 8
  %250 = load i64, ptr %249, align 8
  %251 = xor i64 %248, %250
  %252 = load ptr, ptr %35, align 8
  %253 = getelementptr inbounds i8, ptr %252, i64 8
  %254 = call i64 @XXH_read64(ptr noundef %253)
  %255 = load ptr, ptr %36, align 8
  %256 = getelementptr inbounds i64, ptr %255, i64 1
  %257 = load i64, ptr %256, align 8
  %258 = xor i64 %254, %257
  %259 = call i64 @XXH3_mul128(i64 noundef %251, i64 noundef %258)
  %260 = load i64, ptr %57, align 8
  %261 = add i64 %260, %259
  store i64 %261, ptr %57, align 8
  %262 = load ptr, ptr %55, align 8
  %263 = load i64, ptr %53, align 8
  %264 = getelementptr inbounds nuw i8, ptr %262, i64 %263
  %265 = getelementptr inbounds i8, ptr %264, i64 -48
  store ptr %265, ptr %37, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 10), ptr %38, align 8
  %266 = load ptr, ptr %37, align 8
  %267 = call i64 @XXH_read64(ptr noundef %266)
  %268 = load ptr, ptr %38, align 8
  %269 = load i64, ptr %268, align 8
  %270 = xor i64 %267, %269
  %271 = load ptr, ptr %37, align 8
  %272 = getelementptr inbounds i8, ptr %271, i64 8
  %273 = call i64 @XXH_read64(ptr noundef %272)
  %274 = load ptr, ptr %38, align 8
  %275 = getelementptr inbounds i64, ptr %274, i64 1
  %276 = load i64, ptr %275, align 8
  %277 = xor i64 %273, %276
  %278 = call i64 @XXH3_mul128(i64 noundef %270, i64 noundef %277)
  %279 = load i64, ptr %57, align 8
  %280 = add i64 %279, %278
  store i64 %280, ptr %57, align 8
  br label %281

281:                                              ; preds = %244, %193
  %282 = load ptr, ptr %55, align 8
  %283 = getelementptr inbounds i8, ptr %282, i64 16
  store ptr %283, ptr %39, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 4), ptr %40, align 8
  %284 = load ptr, ptr %39, align 8
  %285 = call i64 @XXH_read64(ptr noundef %284)
  %286 = load ptr, ptr %40, align 8
  %287 = load i64, ptr %286, align 8
  %288 = xor i64 %285, %287
  %289 = load ptr, ptr %39, align 8
  %290 = getelementptr inbounds i8, ptr %289, i64 8
  %291 = call i64 @XXH_read64(ptr noundef %290)
  %292 = load ptr, ptr %40, align 8
  %293 = getelementptr inbounds i64, ptr %292, i64 1
  %294 = load i64, ptr %293, align 8
  %295 = xor i64 %291, %294
  %296 = call i64 @XXH3_mul128(i64 noundef %288, i64 noundef %295)
  %297 = load i64, ptr %57, align 8
  %298 = add i64 %297, %296
  store i64 %298, ptr %57, align 8
  %299 = load ptr, ptr %55, align 8
  %300 = load i64, ptr %53, align 8
  %301 = getelementptr inbounds nuw i8, ptr %299, i64 %300
  %302 = getelementptr inbounds i8, ptr %301, i64 -32
  store ptr %302, ptr %41, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 6), ptr %42, align 8
  %303 = load ptr, ptr %41, align 8
  %304 = call i64 @XXH_read64(ptr noundef %303)
  %305 = load ptr, ptr %42, align 8
  %306 = load i64, ptr %305, align 8
  %307 = xor i64 %304, %306
  %308 = load ptr, ptr %41, align 8
  %309 = getelementptr inbounds i8, ptr %308, i64 8
  %310 = call i64 @XXH_read64(ptr noundef %309)
  %311 = load ptr, ptr %42, align 8
  %312 = getelementptr inbounds i64, ptr %311, i64 1
  %313 = load i64, ptr %312, align 8
  %314 = xor i64 %310, %313
  %315 = call i64 @XXH3_mul128(i64 noundef %307, i64 noundef %314)
  %316 = load i64, ptr %57, align 8
  %317 = add i64 %316, %315
  store i64 %317, ptr %57, align 8
  br label %318

318:                                              ; preds = %281, %186
  %319 = load ptr, ptr %55, align 8
  %320 = getelementptr inbounds i8, ptr %319, i64 0
  store ptr %320, ptr %43, align 8
  store ptr @kKey, ptr %44, align 8
  %321 = load ptr, ptr %43, align 8
  %322 = call i64 @XXH_read64(ptr noundef %321)
  %323 = load ptr, ptr %44, align 8
  %324 = load i64, ptr %323, align 8
  %325 = xor i64 %322, %324
  %326 = load ptr, ptr %43, align 8
  %327 = getelementptr inbounds i8, ptr %326, i64 8
  %328 = call i64 @XXH_read64(ptr noundef %327)
  %329 = load ptr, ptr %44, align 8
  %330 = getelementptr inbounds i64, ptr %329, i64 1
  %331 = load i64, ptr %330, align 8
  %332 = xor i64 %328, %331
  %333 = call i64 @XXH3_mul128(i64 noundef %325, i64 noundef %332)
  %334 = load i64, ptr %57, align 8
  %335 = add i64 %334, %333
  store i64 %335, ptr %57, align 8
  %336 = load ptr, ptr %55, align 8
  %337 = load i64, ptr %53, align 8
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 %337
  %339 = getelementptr inbounds i8, ptr %338, i64 -16
  store ptr %339, ptr %45, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 2), ptr %46, align 8
  %340 = load ptr, ptr %45, align 8
  %341 = call i64 @XXH_read64(ptr noundef %340)
  %342 = load ptr, ptr %46, align 8
  %343 = load i64, ptr %342, align 8
  %344 = xor i64 %341, %343
  %345 = load ptr, ptr %45, align 8
  %346 = getelementptr inbounds i8, ptr %345, i64 8
  %347 = call i64 @XXH_read64(ptr noundef %346)
  %348 = load ptr, ptr %46, align 8
  %349 = getelementptr inbounds i64, ptr %348, i64 1
  %350 = load i64, ptr %349, align 8
  %351 = xor i64 %347, %350
  %352 = call i64 @XXH3_mul128(i64 noundef %344, i64 noundef %351)
  %353 = load i64, ptr %57, align 8
  %354 = add i64 %353, %352
  store i64 %354, ptr %57, align 8
  %355 = load i64, ptr %57, align 8
  %356 = call i64 @XXH64_avalanche2(i64 noundef %355)
  store i64 %356, ptr %51, align 8
  br label %357

357:                                              ; preds = %318, %202, %184
  %358 = load i64, ptr %51, align 8
  ret i64 %358
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
  %24 = call i64 @XXH3_merge64B(ptr noundef %21, ptr noundef @kKey, i64 noundef %23)
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_avalanche2(i64 noundef %0) #0 {
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
define dso_local i64 @XXH3_64b(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @XXH3_64b_withSeed(ptr noundef %5, i64 noundef %6, i64 noundef 0)
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH3_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %17 = alloca %struct.XXH128_hash_t, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.XXH128_hash_t, align 8
  %28 = alloca ptr, align 8
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.XXH128_hash_t, align 8
  %38 = alloca ptr, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca ptr, align 8
  %52 = alloca ptr, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca %struct.XXH128_hash_t, align 8
  %58 = alloca ptr, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca ptr, align 8
  %64 = alloca ptr, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  store ptr %0, ptr %58, align 8
  store i64 %1, ptr %59, align 8
  store i64 %2, ptr %60, align 8
  %67 = load i64, ptr %59, align 8
  %68 = icmp ule i64 %67, 16
  br i1 %68, label %69, label %275

69:                                               ; preds = %3
  %70 = load ptr, ptr %58, align 8
  %71 = load i64, ptr %59, align 8
  %72 = load i64, ptr %60, align 8
  store ptr %70, ptr %38, align 8
  store i64 %71, ptr %39, align 8
  store i64 %72, ptr %40, align 8
  %73 = load i64, ptr %39, align 8
  %74 = icmp ugt i64 %73, 8
  br i1 %74, label %75, label %129

75:                                               ; preds = %69
  %76 = load ptr, ptr %38, align 8
  %77 = load i64, ptr %39, align 8
  %78 = load i64, ptr %40, align 8
  store ptr %76, ptr %28, align 8
  store i64 %77, ptr %29, align 8
  store ptr @kKey, ptr %30, align 8
  store i64 %78, ptr %31, align 8
  %79 = load ptr, ptr %30, align 8
  store ptr %79, ptr %32, align 8
  %80 = load i64, ptr %29, align 8
  %81 = load i64, ptr %31, align 8
  %82 = add i64 %80, %81
  %83 = mul i64 -7046029288634856825, %82
  store i64 %83, ptr %33, align 8
  %84 = load i64, ptr %29, align 8
  %85 = load i64, ptr %31, align 8
  %86 = sub i64 %84, %85
  %87 = mul i64 -4417276706812531889, %86
  store i64 %87, ptr %34, align 8
  %88 = load ptr, ptr %28, align 8
  %89 = call i64 @XXH_read64(ptr noundef %88)
  store i64 %89, ptr %35, align 8
  %90 = load ptr, ptr %28, align 8
  %91 = load i64, ptr %29, align 8
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 %91
  %93 = getelementptr inbounds i8, ptr %92, i64 -8
  %94 = call i64 @XXH_read64(ptr noundef %93)
  store i64 %94, ptr %36, align 8
  %95 = load i64, ptr %35, align 8
  %96 = load ptr, ptr %32, align 8
  %97 = load i64, ptr %96, align 8
  %98 = add i64 %95, %97
  %99 = load i64, ptr %36, align 8
  %100 = load ptr, ptr %32, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = add i64 %99, %102
  %104 = call i64 @XXH3_mul128(i64 noundef %98, i64 noundef %103)
  %105 = load i64, ptr %33, align 8
  %106 = add i64 %105, %104
  store i64 %106, ptr %33, align 8
  %107 = load i64, ptr %35, align 8
  %108 = load ptr, ptr %32, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  %110 = load i64, ptr %109, align 8
  %111 = add i64 %107, %110
  %112 = load i64, ptr %36, align 8
  %113 = load ptr, ptr %32, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 3
  %115 = load i64, ptr %114, align 8
  %116 = add i64 %112, %115
  %117 = call i64 @XXH3_mul128(i64 noundef %111, i64 noundef %116)
  %118 = load i64, ptr %34, align 8
  %119 = add i64 %118, %117
  store i64 %119, ptr %34, align 8
  %120 = load i64, ptr %33, align 8
  %121 = call i64 @XXH64_avalanche2(i64 noundef %120)
  store i64 %121, ptr %27, align 8
  %122 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %27, i32 0, i32 1
  %123 = load i64, ptr %34, align 8
  %124 = call i64 @XXH64_avalanche2(i64 noundef %123)
  store i64 %124, ptr %122, align 8
  %125 = load { i64, i64 }, ptr %27, align 8
  %126 = extractvalue { i64, i64 } %125, 0
  store i64 %126, ptr %37, align 8
  %127 = getelementptr inbounds nuw { i64, i64 }, ptr %37, i32 0, i32 1
  %128 = extractvalue { i64, i64 } %125, 1
  store i64 %128, ptr %127, align 8
  br label %269

129:                                              ; preds = %69
  %130 = load i64, ptr %39, align 8
  %131 = icmp uge i64 %130, 4
  br i1 %131, label %132, label %190

132:                                              ; preds = %129
  %133 = load ptr, ptr %38, align 8
  %134 = load i64, ptr %39, align 8
  %135 = load i64, ptr %40, align 8
  store ptr %133, ptr %18, align 8
  store i64 %134, ptr %19, align 8
  store ptr @kKey, ptr %20, align 8
  store i64 %135, ptr %21, align 8
  %136 = load ptr, ptr %20, align 8
  store ptr %136, ptr %22, align 8
  %137 = load i64, ptr %19, align 8
  %138 = load i64, ptr %21, align 8
  %139 = add i64 %137, %138
  %140 = mul i64 -7046029288634856825, %139
  store i64 %140, ptr %23, align 8
  %141 = load i64, ptr %19, align 8
  %142 = load i64, ptr %21, align 8
  %143 = sub i64 %141, %142
  %144 = mul i64 -4417276706812531889, %143
  store i64 %144, ptr %24, align 8
  %145 = load ptr, ptr %18, align 8
  %146 = call i32 @XXH_read32(ptr noundef %145)
  store i32 %146, ptr %25, align 4
  %147 = load ptr, ptr %18, align 8
  %148 = load i64, ptr %19, align 8
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 %148
  %150 = getelementptr inbounds i8, ptr %149, i64 -4
  %151 = call i32 @XXH_read32(ptr noundef %150)
  store i32 %151, ptr %26, align 4
  %152 = load i32, ptr %25, align 4
  %153 = load ptr, ptr %22, align 8
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %152, %154
  %156 = zext i32 %155 to i64
  %157 = load i32, ptr %26, align 4
  %158 = load ptr, ptr %22, align 8
  %159 = getelementptr inbounds i32, ptr %158, i64 1
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %157, %160
  %162 = zext i32 %161 to i64
  %163 = mul i64 %156, %162
  %164 = load i64, ptr %23, align 8
  %165 = add i64 %164, %163
  store i64 %165, ptr %23, align 8
  %166 = load i32, ptr %25, align 4
  %167 = load ptr, ptr %22, align 8
  %168 = getelementptr inbounds i32, ptr %167, i64 2
  %169 = load i32, ptr %168, align 4
  %170 = sub i32 %166, %169
  %171 = zext i32 %170 to i64
  %172 = load i32, ptr %26, align 4
  %173 = load ptr, ptr %22, align 8
  %174 = getelementptr inbounds i32, ptr %173, i64 3
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %172, %175
  %177 = zext i32 %176 to i64
  %178 = mul i64 %171, %177
  %179 = load i64, ptr %24, align 8
  %180 = add i64 %179, %178
  store i64 %180, ptr %24, align 8
  %181 = load i64, ptr %23, align 8
  %182 = call i64 @XXH64_avalanche2(i64 noundef %181)
  store i64 %182, ptr %17, align 8
  %183 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %17, i32 0, i32 1
  %184 = load i64, ptr %24, align 8
  %185 = call i64 @XXH64_avalanche2(i64 noundef %184)
  store i64 %185, ptr %183, align 8
  %186 = load { i64, i64 }, ptr %17, align 8
  %187 = extractvalue { i64, i64 } %186, 0
  store i64 %187, ptr %37, align 8
  %188 = getelementptr inbounds nuw { i64, i64 }, ptr %37, i32 0, i32 1
  %189 = extractvalue { i64, i64 } %186, 1
  store i64 %189, ptr %188, align 8
  br label %269

190:                                              ; preds = %129
  %191 = load i64, ptr %39, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %264

193:                                              ; preds = %190
  %194 = load ptr, ptr %38, align 8
  %195 = load i64, ptr %39, align 8
  %196 = load i64, ptr %40, align 8
  store ptr %194, ptr %5, align 8
  store i64 %195, ptr %6, align 8
  store ptr @kKey, ptr %7, align 8
  store i64 %196, ptr %8, align 8
  %197 = load ptr, ptr %7, align 8
  store ptr %197, ptr %9, align 8
  %198 = load ptr, ptr %5, align 8
  %199 = load i8, ptr %198, align 1
  store i8 %199, ptr %10, align 1
  %200 = load ptr, ptr %5, align 8
  %201 = load i64, ptr %6, align 8
  %202 = lshr i64 %201, 1
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %202
  %204 = load i8, ptr %203, align 1
  store i8 %204, ptr %11, align 1
  %205 = load ptr, ptr %5, align 8
  %206 = load i64, ptr %6, align 8
  %207 = sub i64 %206, 1
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 %207
  %209 = load i8, ptr %208, align 1
  store i8 %209, ptr %12, align 1
  %210 = load i8, ptr %10, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8, ptr %11, align 1
  %213 = zext i8 %212 to i32
  %214 = shl i32 %213, 8
  %215 = add i32 %211, %214
  store i32 %215, ptr %13, align 4
  %216 = load i64, ptr %6, align 8
  %217 = trunc i64 %216 to i32
  %218 = load i8, ptr %12, align 1
  %219 = zext i8 %218 to i32
  %220 = shl i32 %219, 2
  %221 = add i32 %217, %220
  store i32 %221, ptr %14, align 4
  %222 = load i32, ptr %13, align 4
  %223 = zext i32 %222 to i64
  %224 = load i64, ptr %8, align 8
  %225 = add i64 %223, %224
  %226 = load ptr, ptr %9, align 8
  %227 = load i32, ptr %226, align 4
  %228 = zext i32 %227 to i64
  %229 = add i64 %225, %228
  %230 = and i64 %229, 4294967295
  %231 = load i32, ptr %14, align 4
  %232 = load ptr, ptr %9, align 8
  %233 = getelementptr inbounds i32, ptr %232, i64 1
  %234 = load i32, ptr %233, align 4
  %235 = add i32 %231, %234
  %236 = zext i32 %235 to i64
  %237 = mul i64 %230, %236
  store i64 %237, ptr %15, align 8
  %238 = load i32, ptr %13, align 4
  %239 = load ptr, ptr %9, align 8
  %240 = getelementptr inbounds i32, ptr %239, i64 2
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %238, %241
  %243 = zext i32 %242 to i64
  %244 = load i32, ptr %14, align 4
  %245 = zext i32 %244 to i64
  %246 = load i64, ptr %8, align 8
  %247 = sub i64 %245, %246
  %248 = load ptr, ptr %9, align 8
  %249 = getelementptr inbounds i32, ptr %248, i64 3
  %250 = load i32, ptr %249, align 4
  %251 = zext i32 %250 to i64
  %252 = add i64 %247, %251
  %253 = and i64 %252, 4294967295
  %254 = mul i64 %243, %253
  store i64 %254, ptr %16, align 8
  %255 = load i64, ptr %15, align 8
  %256 = call i64 @XXH64_avalanche2(i64 noundef %255)
  store i64 %256, ptr %4, align 8
  %257 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 1
  %258 = load i64, ptr %16, align 8
  %259 = call i64 @XXH64_avalanche2(i64 noundef %258)
  store i64 %259, ptr %257, align 8
  %260 = load { i64, i64 }, ptr %4, align 8
  %261 = extractvalue { i64, i64 } %260, 0
  store i64 %261, ptr %37, align 8
  %262 = getelementptr inbounds nuw { i64, i64 }, ptr %37, i32 0, i32 1
  %263 = extractvalue { i64, i64 } %260, 1
  store i64 %263, ptr %262, align 8
  br label %269

264:                                              ; preds = %190
  %265 = load i64, ptr %40, align 8
  store i64 %265, ptr %37, align 8
  %266 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %37, i32 0, i32 1
  %267 = load i64, ptr %40, align 8
  %268 = sub i64 0, %267
  store i64 %268, ptr %266, align 8
  br label %269

269:                                              ; preds = %75, %132, %193, %264
  %270 = load { i64, i64 }, ptr %37, align 8
  %271 = getelementptr inbounds nuw { i64, i64 }, ptr %57, i32 0, i32 0
  %272 = extractvalue { i64, i64 } %270, 0
  store i64 %272, ptr %271, align 8
  %273 = getelementptr inbounds nuw { i64, i64 }, ptr %57, i32 0, i32 1
  %274 = extractvalue { i64, i64 } %270, 1
  store i64 %274, ptr %273, align 8
  br label %469

275:                                              ; preds = %3
  %276 = load i64, ptr %59, align 8
  %277 = load i64, ptr %60, align 8
  %278 = add i64 %276, %277
  %279 = mul i64 -7046029288634856825, %278
  store i64 %279, ptr %61, align 8
  store i64 0, ptr %62, align 8
  %280 = load ptr, ptr %58, align 8
  store ptr %280, ptr %63, align 8
  store ptr @kKey, ptr %64, align 8
  %281 = load i64, ptr %59, align 8
  %282 = icmp ugt i64 %281, 32
  br i1 %282, label %283, label %412

283:                                              ; preds = %275
  %284 = load i64, ptr %59, align 8
  %285 = icmp ugt i64 %284, 64
  br i1 %285, label %286, label %375

286:                                              ; preds = %283
  %287 = load i64, ptr %59, align 8
  %288 = icmp ugt i64 %287, 96
  br i1 %288, label %289, label %338

289:                                              ; preds = %286
  %290 = load i64, ptr %59, align 8
  %291 = icmp ugt i64 %290, 128
  br i1 %291, label %292, label %301

292:                                              ; preds = %289
  %293 = load ptr, ptr %58, align 8
  %294 = load i64, ptr %59, align 8
  %295 = load i64, ptr %60, align 8
  %296 = call { i64, i64 } @XXH3_hashLong_128b(ptr noundef %293, i64 noundef %294, i64 noundef %295)
  %297 = getelementptr inbounds nuw { i64, i64 }, ptr %57, i32 0, i32 0
  %298 = extractvalue { i64, i64 } %296, 0
  store i64 %298, ptr %297, align 8
  %299 = getelementptr inbounds nuw { i64, i64 }, ptr %57, i32 0, i32 1
  %300 = extractvalue { i64, i64 } %296, 1
  store i64 %300, ptr %299, align 8
  br label %469

301:                                              ; preds = %289
  %302 = load ptr, ptr %63, align 8
  %303 = getelementptr inbounds i8, ptr %302, i64 48
  store ptr %303, ptr %41, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 12), ptr %42, align 8
  %304 = load ptr, ptr %41, align 8
  %305 = call i64 @XXH_read64(ptr noundef %304)
  %306 = load ptr, ptr %42, align 8
  %307 = load i64, ptr %306, align 8
  %308 = xor i64 %305, %307
  %309 = load ptr, ptr %41, align 8
  %310 = getelementptr inbounds i8, ptr %309, i64 8
  %311 = call i64 @XXH_read64(ptr noundef %310)
  %312 = load ptr, ptr %42, align 8
  %313 = getelementptr inbounds i64, ptr %312, i64 1
  %314 = load i64, ptr %313, align 8
  %315 = xor i64 %311, %314
  %316 = call i64 @XXH3_mul128(i64 noundef %308, i64 noundef %315)
  %317 = load i64, ptr %61, align 8
  %318 = add i64 %317, %316
  store i64 %318, ptr %61, align 8
  %319 = load ptr, ptr %63, align 8
  %320 = load i64, ptr %59, align 8
  %321 = getelementptr inbounds nuw i8, ptr %319, i64 %320
  %322 = getelementptr inbounds i8, ptr %321, i64 -64
  store ptr %322, ptr %43, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 14), ptr %44, align 8
  %323 = load ptr, ptr %43, align 8
  %324 = call i64 @XXH_read64(ptr noundef %323)
  %325 = load ptr, ptr %44, align 8
  %326 = load i64, ptr %325, align 8
  %327 = xor i64 %324, %326
  %328 = load ptr, ptr %43, align 8
  %329 = getelementptr inbounds i8, ptr %328, i64 8
  %330 = call i64 @XXH_read64(ptr noundef %329)
  %331 = load ptr, ptr %44, align 8
  %332 = getelementptr inbounds i64, ptr %331, i64 1
  %333 = load i64, ptr %332, align 8
  %334 = xor i64 %330, %333
  %335 = call i64 @XXH3_mul128(i64 noundef %327, i64 noundef %334)
  %336 = load i64, ptr %62, align 8
  %337 = add i64 %336, %335
  store i64 %337, ptr %62, align 8
  br label %338

338:                                              ; preds = %301, %286
  %339 = load ptr, ptr %63, align 8
  %340 = getelementptr inbounds i8, ptr %339, i64 32
  store ptr %340, ptr %45, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 8), ptr %46, align 8
  %341 = load ptr, ptr %45, align 8
  %342 = call i64 @XXH_read64(ptr noundef %341)
  %343 = load ptr, ptr %46, align 8
  %344 = load i64, ptr %343, align 8
  %345 = xor i64 %342, %344
  %346 = load ptr, ptr %45, align 8
  %347 = getelementptr inbounds i8, ptr %346, i64 8
  %348 = call i64 @XXH_read64(ptr noundef %347)
  %349 = load ptr, ptr %46, align 8
  %350 = getelementptr inbounds i64, ptr %349, i64 1
  %351 = load i64, ptr %350, align 8
  %352 = xor i64 %348, %351
  %353 = call i64 @XXH3_mul128(i64 noundef %345, i64 noundef %352)
  %354 = load i64, ptr %61, align 8
  %355 = add i64 %354, %353
  store i64 %355, ptr %61, align 8
  %356 = load ptr, ptr %63, align 8
  %357 = load i64, ptr %59, align 8
  %358 = getelementptr inbounds nuw i8, ptr %356, i64 %357
  %359 = getelementptr inbounds i8, ptr %358, i64 -48
  store ptr %359, ptr %47, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 10), ptr %48, align 8
  %360 = load ptr, ptr %47, align 8
  %361 = call i64 @XXH_read64(ptr noundef %360)
  %362 = load ptr, ptr %48, align 8
  %363 = load i64, ptr %362, align 8
  %364 = xor i64 %361, %363
  %365 = load ptr, ptr %47, align 8
  %366 = getelementptr inbounds i8, ptr %365, i64 8
  %367 = call i64 @XXH_read64(ptr noundef %366)
  %368 = load ptr, ptr %48, align 8
  %369 = getelementptr inbounds i64, ptr %368, i64 1
  %370 = load i64, ptr %369, align 8
  %371 = xor i64 %367, %370
  %372 = call i64 @XXH3_mul128(i64 noundef %364, i64 noundef %371)
  %373 = load i64, ptr %62, align 8
  %374 = add i64 %373, %372
  store i64 %374, ptr %62, align 8
  br label %375

375:                                              ; preds = %338, %283
  %376 = load ptr, ptr %63, align 8
  %377 = getelementptr inbounds i8, ptr %376, i64 16
  store ptr %377, ptr %49, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 4), ptr %50, align 8
  %378 = load ptr, ptr %49, align 8
  %379 = call i64 @XXH_read64(ptr noundef %378)
  %380 = load ptr, ptr %50, align 8
  %381 = load i64, ptr %380, align 8
  %382 = xor i64 %379, %381
  %383 = load ptr, ptr %49, align 8
  %384 = getelementptr inbounds i8, ptr %383, i64 8
  %385 = call i64 @XXH_read64(ptr noundef %384)
  %386 = load ptr, ptr %50, align 8
  %387 = getelementptr inbounds i64, ptr %386, i64 1
  %388 = load i64, ptr %387, align 8
  %389 = xor i64 %385, %388
  %390 = call i64 @XXH3_mul128(i64 noundef %382, i64 noundef %389)
  %391 = load i64, ptr %61, align 8
  %392 = add i64 %391, %390
  store i64 %392, ptr %61, align 8
  %393 = load ptr, ptr %63, align 8
  %394 = load i64, ptr %59, align 8
  %395 = getelementptr inbounds nuw i8, ptr %393, i64 %394
  %396 = getelementptr inbounds i8, ptr %395, i64 -32
  store ptr %396, ptr %51, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 6), ptr %52, align 8
  %397 = load ptr, ptr %51, align 8
  %398 = call i64 @XXH_read64(ptr noundef %397)
  %399 = load ptr, ptr %52, align 8
  %400 = load i64, ptr %399, align 8
  %401 = xor i64 %398, %400
  %402 = load ptr, ptr %51, align 8
  %403 = getelementptr inbounds i8, ptr %402, i64 8
  %404 = call i64 @XXH_read64(ptr noundef %403)
  %405 = load ptr, ptr %52, align 8
  %406 = getelementptr inbounds i64, ptr %405, i64 1
  %407 = load i64, ptr %406, align 8
  %408 = xor i64 %404, %407
  %409 = call i64 @XXH3_mul128(i64 noundef %401, i64 noundef %408)
  %410 = load i64, ptr %62, align 8
  %411 = add i64 %410, %409
  store i64 %411, ptr %62, align 8
  br label %412

412:                                              ; preds = %375, %275
  %413 = load ptr, ptr %63, align 8
  %414 = getelementptr inbounds i8, ptr %413, i64 0
  store ptr %414, ptr %53, align 8
  store ptr @kKey, ptr %54, align 8
  %415 = load ptr, ptr %53, align 8
  %416 = call i64 @XXH_read64(ptr noundef %415)
  %417 = load ptr, ptr %54, align 8
  %418 = load i64, ptr %417, align 8
  %419 = xor i64 %416, %418
  %420 = load ptr, ptr %53, align 8
  %421 = getelementptr inbounds i8, ptr %420, i64 8
  %422 = call i64 @XXH_read64(ptr noundef %421)
  %423 = load ptr, ptr %54, align 8
  %424 = getelementptr inbounds i64, ptr %423, i64 1
  %425 = load i64, ptr %424, align 8
  %426 = xor i64 %422, %425
  %427 = call i64 @XXH3_mul128(i64 noundef %419, i64 noundef %426)
  %428 = load i64, ptr %61, align 8
  %429 = add i64 %428, %427
  store i64 %429, ptr %61, align 8
  %430 = load ptr, ptr %63, align 8
  %431 = load i64, ptr %59, align 8
  %432 = getelementptr inbounds nuw i8, ptr %430, i64 %431
  %433 = getelementptr inbounds i8, ptr %432, i64 -16
  store ptr %433, ptr %55, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 2), ptr %56, align 8
  %434 = load ptr, ptr %55, align 8
  %435 = call i64 @XXH_read64(ptr noundef %434)
  %436 = load ptr, ptr %56, align 8
  %437 = load i64, ptr %436, align 8
  %438 = xor i64 %435, %437
  %439 = load ptr, ptr %55, align 8
  %440 = getelementptr inbounds i8, ptr %439, i64 8
  %441 = call i64 @XXH_read64(ptr noundef %440)
  %442 = load ptr, ptr %56, align 8
  %443 = getelementptr inbounds i64, ptr %442, i64 1
  %444 = load i64, ptr %443, align 8
  %445 = xor i64 %441, %444
  %446 = call i64 @XXH3_mul128(i64 noundef %438, i64 noundef %445)
  %447 = load i64, ptr %62, align 8
  %448 = add i64 %447, %446
  store i64 %448, ptr %62, align 8
  %449 = load i64, ptr %61, align 8
  %450 = load i64, ptr %62, align 8
  %451 = add i64 %449, %450
  store i64 %451, ptr %65, align 8
  %452 = load i64, ptr %61, align 8
  %453 = mul i64 %452, 1609587929392839161
  %454 = load i64, ptr %62, align 8
  %455 = mul i64 %454, -8796714831421723037
  %456 = add i64 %453, %455
  %457 = load i64, ptr %59, align 8
  %458 = load i64, ptr %60, align 8
  %459 = sub i64 %457, %458
  %460 = mul i64 %459, -4417276706812531889
  %461 = add i64 %456, %460
  store i64 %461, ptr %66, align 8
  %462 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %57, i32 0, i32 0
  %463 = load i64, ptr %65, align 8
  %464 = call i64 @XXH64_avalanche2(i64 noundef %463)
  store i64 %464, ptr %462, align 8
  %465 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %57, i32 0, i32 1
  %466 = load i64, ptr %66, align 8
  %467 = call i64 @XXH64_avalanche2(i64 noundef %466)
  %468 = sub i64 0, %467
  store i64 %468, ptr %465, align 8
  br label %469

469:                                              ; preds = %412, %292, %269
  %470 = load { i64, i64 }, ptr %57, align 8
  ret { i64, i64 } %470
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
  %27 = call i64 @XXH3_merge64B(ptr noundef %24, ptr noundef @kKey, i64 noundef %26)
  store i64 %27, ptr %9, align 8
  %28 = getelementptr inbounds [8 x i64], ptr %8, i64 0, i64 0
  %29 = load i64, ptr %6, align 8
  %30 = add i64 %29, 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = call i64 @XXH3_merge64B(ptr noundef %28, ptr noundef getelementptr inbounds (i32, ptr @kKey, i64 16), i64 noundef %31)
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
define dso_local { i64, i64 } @XXH3_128b(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.XXH128_hash_t, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %8 = call { i64, i64 } @XXH3_128b_withSeed(ptr noundef %6, i64 noundef %7, i64 noundef 0)
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
  %11 = call { i64, i64 } @XXH3_128b_withSeed(ptr noundef %8, i64 noundef %9, i64 noundef %10)
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
define internal i32 @XXH32_finalize(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca ptr, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca ptr, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca ptr, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca ptr, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca ptr, align 8
  %57 = alloca i64, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca ptr, align 8
  store i32 %0, ptr %55, align 4
  store ptr %1, ptr %56, align 8
  store i64 %2, ptr %57, align 8
  store i32 %3, ptr %58, align 4
  store i32 %4, ptr %59, align 4
  %61 = load ptr, ptr %56, align 8
  store ptr %61, ptr %60, align 8
  %62 = load i64, ptr %57, align 8
  %63 = and i64 %62, 15
  switch i64 %63, label %670 [
    i64 12, label %64
    i64 8, label %107
    i64 4, label %150
    i64 13, label %195
    i64 9, label %238
    i64 5, label %281
    i64 14, label %339
    i64 10, label %382
    i64 6, label %425
    i64 15, label %496
    i64 11, label %539
    i64 7, label %582
    i64 3, label %625
    i64 2, label %639
    i64 1, label %653
    i64 0, label %667
  ]

64:                                               ; preds = %5
  %65 = load ptr, ptr %60, align 8
  %66 = load i32, ptr %58, align 4
  %67 = load i32, ptr %59, align 4
  store ptr %65, ptr %7, align 8
  store i32 %66, ptr %8, align 4
  store i32 %67, ptr %9, align 4
  %68 = load i32, ptr %9, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load i32, ptr %8, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load ptr, ptr %7, align 8
  %75 = call i32 @XXH_read32(ptr noundef %74)
  br label %80

76:                                               ; preds = %70
  %77 = load ptr, ptr %7, align 8
  %78 = call i32 @XXH_read32(ptr noundef %77)
  %79 = call i32 @XXH_swap32(i32 noundef %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  store i32 %81, ptr %6, align 4
  br label %94

82:                                               ; preds = %64
  %83 = load i32, ptr %8, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8
  %87 = load i32, ptr %86, align 4
  br label %92

88:                                               ; preds = %82
  %89 = load ptr, ptr %7, align 8
  %90 = load i32, ptr %89, align 4
  %91 = call i32 @XXH_swap32(i32 noundef %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i32 [ %87, %85 ], [ %91, %88 ]
  store i32 %93, ptr %6, align 4
  br label %94

94:                                               ; preds = %80, %92
  %95 = load i32, ptr %6, align 4
  %96 = mul i32 %95, -1028477379
  %97 = load i32, ptr %55, align 4
  %98 = add i32 %97, %96
  store i32 %98, ptr %55, align 4
  %99 = load ptr, ptr %60, align 8
  %100 = getelementptr inbounds i8, ptr %99, i64 4
  store ptr %100, ptr %60, align 8
  %101 = load i32, ptr %55, align 4
  %102 = shl i32 %101, 17
  %103 = load i32, ptr %55, align 4
  %104 = lshr i32 %103, 15
  %105 = or i32 %102, %104
  %106 = mul i32 %105, 668265263
  store i32 %106, ptr %55, align 4
  br label %107

107:                                              ; preds = %5, %94
  %108 = load ptr, ptr %60, align 8
  %109 = load i32, ptr %58, align 4
  %110 = load i32, ptr %59, align 4
  store ptr %108, ptr %11, align 8
  store i32 %109, ptr %12, align 4
  store i32 %110, ptr %13, align 4
  %111 = load i32, ptr %13, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load i32, ptr %12, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load ptr, ptr %11, align 8
  %118 = call i32 @XXH_read32(ptr noundef %117)
  br label %123

119:                                              ; preds = %113
  %120 = load ptr, ptr %11, align 8
  %121 = call i32 @XXH_read32(ptr noundef %120)
  %122 = call i32 @XXH_swap32(i32 noundef %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i32 [ %118, %116 ], [ %122, %119 ]
  store i32 %124, ptr %10, align 4
  br label %137

125:                                              ; preds = %107
  %126 = load i32, ptr %12, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load ptr, ptr %11, align 8
  %130 = load i32, ptr %129, align 4
  br label %135

131:                                              ; preds = %125
  %132 = load ptr, ptr %11, align 8
  %133 = load i32, ptr %132, align 4
  %134 = call i32 @XXH_swap32(i32 noundef %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = phi i32 [ %130, %128 ], [ %134, %131 ]
  store i32 %136, ptr %10, align 4
  br label %137

137:                                              ; preds = %123, %135
  %138 = load i32, ptr %10, align 4
  %139 = mul i32 %138, -1028477379
  %140 = load i32, ptr %55, align 4
  %141 = add i32 %140, %139
  store i32 %141, ptr %55, align 4
  %142 = load ptr, ptr %60, align 8
  %143 = getelementptr inbounds i8, ptr %142, i64 4
  store ptr %143, ptr %60, align 8
  %144 = load i32, ptr %55, align 4
  %145 = shl i32 %144, 17
  %146 = load i32, ptr %55, align 4
  %147 = lshr i32 %146, 15
  %148 = or i32 %145, %147
  %149 = mul i32 %148, 668265263
  store i32 %149, ptr %55, align 4
  br label %150

150:                                              ; preds = %5, %137
  %151 = load ptr, ptr %60, align 8
  %152 = load i32, ptr %58, align 4
  %153 = load i32, ptr %59, align 4
  store ptr %151, ptr %15, align 8
  store i32 %152, ptr %16, align 4
  store i32 %153, ptr %17, align 4
  %154 = load i32, ptr %17, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load i32, ptr %16, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load ptr, ptr %15, align 8
  %161 = call i32 @XXH_read32(ptr noundef %160)
  br label %166

162:                                              ; preds = %156
  %163 = load ptr, ptr %15, align 8
  %164 = call i32 @XXH_read32(ptr noundef %163)
  %165 = call i32 @XXH_swap32(i32 noundef %164)
  br label %166

166:                                              ; preds = %162, %159
  %167 = phi i32 [ %161, %159 ], [ %165, %162 ]
  store i32 %167, ptr %14, align 4
  br label %180

168:                                              ; preds = %150
  %169 = load i32, ptr %16, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load ptr, ptr %15, align 8
  %173 = load i32, ptr %172, align 4
  br label %178

174:                                              ; preds = %168
  %175 = load ptr, ptr %15, align 8
  %176 = load i32, ptr %175, align 4
  %177 = call i32 @XXH_swap32(i32 noundef %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i32 [ %173, %171 ], [ %177, %174 ]
  store i32 %179, ptr %14, align 4
  br label %180

180:                                              ; preds = %166, %178
  %181 = load i32, ptr %14, align 4
  %182 = mul i32 %181, -1028477379
  %183 = load i32, ptr %55, align 4
  %184 = add i32 %183, %182
  store i32 %184, ptr %55, align 4
  %185 = load ptr, ptr %60, align 8
  %186 = getelementptr inbounds i8, ptr %185, i64 4
  store ptr %186, ptr %60, align 8
  %187 = load i32, ptr %55, align 4
  %188 = shl i32 %187, 17
  %189 = load i32, ptr %55, align 4
  %190 = lshr i32 %189, 15
  %191 = or i32 %188, %190
  %192 = mul i32 %191, 668265263
  store i32 %192, ptr %55, align 4
  %193 = load i32, ptr %55, align 4
  %194 = call i32 @XXH32_avalanche(i32 noundef %193)
  store i32 %194, ptr %54, align 4
  br label %671

195:                                              ; preds = %5
  %196 = load ptr, ptr %60, align 8
  %197 = load i32, ptr %58, align 4
  %198 = load i32, ptr %59, align 4
  store ptr %196, ptr %19, align 8
  store i32 %197, ptr %20, align 4
  store i32 %198, ptr %21, align 4
  %199 = load i32, ptr %21, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = load i32, ptr %20, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load ptr, ptr %19, align 8
  %206 = call i32 @XXH_read32(ptr noundef %205)
  br label %211

207:                                              ; preds = %201
  %208 = load ptr, ptr %19, align 8
  %209 = call i32 @XXH_read32(ptr noundef %208)
  %210 = call i32 @XXH_swap32(i32 noundef %209)
  br label %211

211:                                              ; preds = %207, %204
  %212 = phi i32 [ %206, %204 ], [ %210, %207 ]
  store i32 %212, ptr %18, align 4
  br label %225

213:                                              ; preds = %195
  %214 = load i32, ptr %20, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load ptr, ptr %19, align 8
  %218 = load i32, ptr %217, align 4
  br label %223

219:                                              ; preds = %213
  %220 = load ptr, ptr %19, align 8
  %221 = load i32, ptr %220, align 4
  %222 = call i32 @XXH_swap32(i32 noundef %221)
  br label %223

223:                                              ; preds = %219, %216
  %224 = phi i32 [ %218, %216 ], [ %222, %219 ]
  store i32 %224, ptr %18, align 4
  br label %225

225:                                              ; preds = %211, %223
  %226 = load i32, ptr %18, align 4
  %227 = mul i32 %226, -1028477379
  %228 = load i32, ptr %55, align 4
  %229 = add i32 %228, %227
  store i32 %229, ptr %55, align 4
  %230 = load ptr, ptr %60, align 8
  %231 = getelementptr inbounds i8, ptr %230, i64 4
  store ptr %231, ptr %60, align 8
  %232 = load i32, ptr %55, align 4
  %233 = shl i32 %232, 17
  %234 = load i32, ptr %55, align 4
  %235 = lshr i32 %234, 15
  %236 = or i32 %233, %235
  %237 = mul i32 %236, 668265263
  store i32 %237, ptr %55, align 4
  br label %238

238:                                              ; preds = %5, %225
  %239 = load ptr, ptr %60, align 8
  %240 = load i32, ptr %58, align 4
  %241 = load i32, ptr %59, align 4
  store ptr %239, ptr %23, align 8
  store i32 %240, ptr %24, align 4
  store i32 %241, ptr %25, align 4
  %242 = load i32, ptr %25, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %256

244:                                              ; preds = %238
  %245 = load i32, ptr %24, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load ptr, ptr %23, align 8
  %249 = call i32 @XXH_read32(ptr noundef %248)
  br label %254

250:                                              ; preds = %244
  %251 = load ptr, ptr %23, align 8
  %252 = call i32 @XXH_read32(ptr noundef %251)
  %253 = call i32 @XXH_swap32(i32 noundef %252)
  br label %254

254:                                              ; preds = %250, %247
  %255 = phi i32 [ %249, %247 ], [ %253, %250 ]
  store i32 %255, ptr %22, align 4
  br label %268

256:                                              ; preds = %238
  %257 = load i32, ptr %24, align 4
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load ptr, ptr %23, align 8
  %261 = load i32, ptr %260, align 4
  br label %266

262:                                              ; preds = %256
  %263 = load ptr, ptr %23, align 8
  %264 = load i32, ptr %263, align 4
  %265 = call i32 @XXH_swap32(i32 noundef %264)
  br label %266

266:                                              ; preds = %262, %259
  %267 = phi i32 [ %261, %259 ], [ %265, %262 ]
  store i32 %267, ptr %22, align 4
  br label %268

268:                                              ; preds = %254, %266
  %269 = load i32, ptr %22, align 4
  %270 = mul i32 %269, -1028477379
  %271 = load i32, ptr %55, align 4
  %272 = add i32 %271, %270
  store i32 %272, ptr %55, align 4
  %273 = load ptr, ptr %60, align 8
  %274 = getelementptr inbounds i8, ptr %273, i64 4
  store ptr %274, ptr %60, align 8
  %275 = load i32, ptr %55, align 4
  %276 = shl i32 %275, 17
  %277 = load i32, ptr %55, align 4
  %278 = lshr i32 %277, 15
  %279 = or i32 %276, %278
  %280 = mul i32 %279, 668265263
  store i32 %280, ptr %55, align 4
  br label %281

281:                                              ; preds = %5, %268
  %282 = load ptr, ptr %60, align 8
  %283 = load i32, ptr %58, align 4
  %284 = load i32, ptr %59, align 4
  store ptr %282, ptr %27, align 8
  store i32 %283, ptr %28, align 4
  store i32 %284, ptr %29, align 4
  %285 = load i32, ptr %29, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %299

287:                                              ; preds = %281
  %288 = load i32, ptr %28, align 4
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load ptr, ptr %27, align 8
  %292 = call i32 @XXH_read32(ptr noundef %291)
  br label %297

293:                                              ; preds = %287
  %294 = load ptr, ptr %27, align 8
  %295 = call i32 @XXH_read32(ptr noundef %294)
  %296 = call i32 @XXH_swap32(i32 noundef %295)
  br label %297

297:                                              ; preds = %293, %290
  %298 = phi i32 [ %292, %290 ], [ %296, %293 ]
  store i32 %298, ptr %26, align 4
  br label %311

299:                                              ; preds = %281
  %300 = load i32, ptr %28, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load ptr, ptr %27, align 8
  %304 = load i32, ptr %303, align 4
  br label %309

305:                                              ; preds = %299
  %306 = load ptr, ptr %27, align 8
  %307 = load i32, ptr %306, align 4
  %308 = call i32 @XXH_swap32(i32 noundef %307)
  br label %309

309:                                              ; preds = %305, %302
  %310 = phi i32 [ %304, %302 ], [ %308, %305 ]
  store i32 %310, ptr %26, align 4
  br label %311

311:                                              ; preds = %297, %309
  %312 = load i32, ptr %26, align 4
  %313 = mul i32 %312, -1028477379
  %314 = load i32, ptr %55, align 4
  %315 = add i32 %314, %313
  store i32 %315, ptr %55, align 4
  %316 = load ptr, ptr %60, align 8
  %317 = getelementptr inbounds i8, ptr %316, i64 4
  store ptr %317, ptr %60, align 8
  %318 = load i32, ptr %55, align 4
  %319 = shl i32 %318, 17
  %320 = load i32, ptr %55, align 4
  %321 = lshr i32 %320, 15
  %322 = or i32 %319, %321
  %323 = mul i32 %322, 668265263
  store i32 %323, ptr %55, align 4
  %324 = load ptr, ptr %60, align 8
  %325 = getelementptr inbounds nuw i8, ptr %324, i32 1
  store ptr %325, ptr %60, align 8
  %326 = load i8, ptr %324, align 1
  %327 = zext i8 %326 to i32
  %328 = mul i32 %327, 374761393
  %329 = load i32, ptr %55, align 4
  %330 = add i32 %329, %328
  store i32 %330, ptr %55, align 4
  %331 = load i32, ptr %55, align 4
  %332 = shl i32 %331, 11
  %333 = load i32, ptr %55, align 4
  %334 = lshr i32 %333, 21
  %335 = or i32 %332, %334
  %336 = mul i32 %335, -1640531535
  store i32 %336, ptr %55, align 4
  %337 = load i32, ptr %55, align 4
  %338 = call i32 @XXH32_avalanche(i32 noundef %337)
  store i32 %338, ptr %54, align 4
  br label %671

339:                                              ; preds = %5
  %340 = load ptr, ptr %60, align 8
  %341 = load i32, ptr %58, align 4
  %342 = load i32, ptr %59, align 4
  store ptr %340, ptr %31, align 8
  store i32 %341, ptr %32, align 4
  store i32 %342, ptr %33, align 4
  %343 = load i32, ptr %33, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %357

345:                                              ; preds = %339
  %346 = load i32, ptr %32, align 4
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load ptr, ptr %31, align 8
  %350 = call i32 @XXH_read32(ptr noundef %349)
  br label %355

351:                                              ; preds = %345
  %352 = load ptr, ptr %31, align 8
  %353 = call i32 @XXH_read32(ptr noundef %352)
  %354 = call i32 @XXH_swap32(i32 noundef %353)
  br label %355

355:                                              ; preds = %351, %348
  %356 = phi i32 [ %350, %348 ], [ %354, %351 ]
  store i32 %356, ptr %30, align 4
  br label %369

357:                                              ; preds = %339
  %358 = load i32, ptr %32, align 4
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load ptr, ptr %31, align 8
  %362 = load i32, ptr %361, align 4
  br label %367

363:                                              ; preds = %357
  %364 = load ptr, ptr %31, align 8
  %365 = load i32, ptr %364, align 4
  %366 = call i32 @XXH_swap32(i32 noundef %365)
  br label %367

367:                                              ; preds = %363, %360
  %368 = phi i32 [ %362, %360 ], [ %366, %363 ]
  store i32 %368, ptr %30, align 4
  br label %369

369:                                              ; preds = %355, %367
  %370 = load i32, ptr %30, align 4
  %371 = mul i32 %370, -1028477379
  %372 = load i32, ptr %55, align 4
  %373 = add i32 %372, %371
  store i32 %373, ptr %55, align 4
  %374 = load ptr, ptr %60, align 8
  %375 = getelementptr inbounds i8, ptr %374, i64 4
  store ptr %375, ptr %60, align 8
  %376 = load i32, ptr %55, align 4
  %377 = shl i32 %376, 17
  %378 = load i32, ptr %55, align 4
  %379 = lshr i32 %378, 15
  %380 = or i32 %377, %379
  %381 = mul i32 %380, 668265263
  store i32 %381, ptr %55, align 4
  br label %382

382:                                              ; preds = %5, %369
  %383 = load ptr, ptr %60, align 8
  %384 = load i32, ptr %58, align 4
  %385 = load i32, ptr %59, align 4
  store ptr %383, ptr %35, align 8
  store i32 %384, ptr %36, align 4
  store i32 %385, ptr %37, align 4
  %386 = load i32, ptr %37, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %400

388:                                              ; preds = %382
  %389 = load i32, ptr %36, align 4
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load ptr, ptr %35, align 8
  %393 = call i32 @XXH_read32(ptr noundef %392)
  br label %398

394:                                              ; preds = %388
  %395 = load ptr, ptr %35, align 8
  %396 = call i32 @XXH_read32(ptr noundef %395)
  %397 = call i32 @XXH_swap32(i32 noundef %396)
  br label %398

398:                                              ; preds = %394, %391
  %399 = phi i32 [ %393, %391 ], [ %397, %394 ]
  store i32 %399, ptr %34, align 4
  br label %412

400:                                              ; preds = %382
  %401 = load i32, ptr %36, align 4
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = load ptr, ptr %35, align 8
  %405 = load i32, ptr %404, align 4
  br label %410

406:                                              ; preds = %400
  %407 = load ptr, ptr %35, align 8
  %408 = load i32, ptr %407, align 4
  %409 = call i32 @XXH_swap32(i32 noundef %408)
  br label %410

410:                                              ; preds = %406, %403
  %411 = phi i32 [ %405, %403 ], [ %409, %406 ]
  store i32 %411, ptr %34, align 4
  br label %412

412:                                              ; preds = %398, %410
  %413 = load i32, ptr %34, align 4
  %414 = mul i32 %413, -1028477379
  %415 = load i32, ptr %55, align 4
  %416 = add i32 %415, %414
  store i32 %416, ptr %55, align 4
  %417 = load ptr, ptr %60, align 8
  %418 = getelementptr inbounds i8, ptr %417, i64 4
  store ptr %418, ptr %60, align 8
  %419 = load i32, ptr %55, align 4
  %420 = shl i32 %419, 17
  %421 = load i32, ptr %55, align 4
  %422 = lshr i32 %421, 15
  %423 = or i32 %420, %422
  %424 = mul i32 %423, 668265263
  store i32 %424, ptr %55, align 4
  br label %425

425:                                              ; preds = %5, %412
  %426 = load ptr, ptr %60, align 8
  %427 = load i32, ptr %58, align 4
  %428 = load i32, ptr %59, align 4
  store ptr %426, ptr %39, align 8
  store i32 %427, ptr %40, align 4
  store i32 %428, ptr %41, align 4
  %429 = load i32, ptr %41, align 4
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %443

431:                                              ; preds = %425
  %432 = load i32, ptr %40, align 4
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = load ptr, ptr %39, align 8
  %436 = call i32 @XXH_read32(ptr noundef %435)
  br label %441

437:                                              ; preds = %431
  %438 = load ptr, ptr %39, align 8
  %439 = call i32 @XXH_read32(ptr noundef %438)
  %440 = call i32 @XXH_swap32(i32 noundef %439)
  br label %441

441:                                              ; preds = %437, %434
  %442 = phi i32 [ %436, %434 ], [ %440, %437 ]
  store i32 %442, ptr %38, align 4
  br label %455

443:                                              ; preds = %425
  %444 = load i32, ptr %40, align 4
  %445 = icmp eq i32 %444, 1
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load ptr, ptr %39, align 8
  %448 = load i32, ptr %447, align 4
  br label %453

449:                                              ; preds = %443
  %450 = load ptr, ptr %39, align 8
  %451 = load i32, ptr %450, align 4
  %452 = call i32 @XXH_swap32(i32 noundef %451)
  br label %453

453:                                              ; preds = %449, %446
  %454 = phi i32 [ %448, %446 ], [ %452, %449 ]
  store i32 %454, ptr %38, align 4
  br label %455

455:                                              ; preds = %441, %453
  %456 = load i32, ptr %38, align 4
  %457 = mul i32 %456, -1028477379
  %458 = load i32, ptr %55, align 4
  %459 = add i32 %458, %457
  store i32 %459, ptr %55, align 4
  %460 = load ptr, ptr %60, align 8
  %461 = getelementptr inbounds i8, ptr %460, i64 4
  store ptr %461, ptr %60, align 8
  %462 = load i32, ptr %55, align 4
  %463 = shl i32 %462, 17
  %464 = load i32, ptr %55, align 4
  %465 = lshr i32 %464, 15
  %466 = or i32 %463, %465
  %467 = mul i32 %466, 668265263
  store i32 %467, ptr %55, align 4
  %468 = load ptr, ptr %60, align 8
  %469 = getelementptr inbounds nuw i8, ptr %468, i32 1
  store ptr %469, ptr %60, align 8
  %470 = load i8, ptr %468, align 1
  %471 = zext i8 %470 to i32
  %472 = mul i32 %471, 374761393
  %473 = load i32, ptr %55, align 4
  %474 = add i32 %473, %472
  store i32 %474, ptr %55, align 4
  %475 = load i32, ptr %55, align 4
  %476 = shl i32 %475, 11
  %477 = load i32, ptr %55, align 4
  %478 = lshr i32 %477, 21
  %479 = or i32 %476, %478
  %480 = mul i32 %479, -1640531535
  store i32 %480, ptr %55, align 4
  %481 = load ptr, ptr %60, align 8
  %482 = getelementptr inbounds nuw i8, ptr %481, i32 1
  store ptr %482, ptr %60, align 8
  %483 = load i8, ptr %481, align 1
  %484 = zext i8 %483 to i32
  %485 = mul i32 %484, 374761393
  %486 = load i32, ptr %55, align 4
  %487 = add i32 %486, %485
  store i32 %487, ptr %55, align 4
  %488 = load i32, ptr %55, align 4
  %489 = shl i32 %488, 11
  %490 = load i32, ptr %55, align 4
  %491 = lshr i32 %490, 21
  %492 = or i32 %489, %491
  %493 = mul i32 %492, -1640531535
  store i32 %493, ptr %55, align 4
  %494 = load i32, ptr %55, align 4
  %495 = call i32 @XXH32_avalanche(i32 noundef %494)
  store i32 %495, ptr %54, align 4
  br label %671

496:                                              ; preds = %5
  %497 = load ptr, ptr %60, align 8
  %498 = load i32, ptr %58, align 4
  %499 = load i32, ptr %59, align 4
  store ptr %497, ptr %43, align 8
  store i32 %498, ptr %44, align 4
  store i32 %499, ptr %45, align 4
  %500 = load i32, ptr %45, align 4
  %501 = icmp eq i32 %500, 1
  br i1 %501, label %502, label %514

502:                                              ; preds = %496
  %503 = load i32, ptr %44, align 4
  %504 = icmp eq i32 %503, 1
  br i1 %504, label %505, label %508

505:                                              ; preds = %502
  %506 = load ptr, ptr %43, align 8
  %507 = call i32 @XXH_read32(ptr noundef %506)
  br label %512

508:                                              ; preds = %502
  %509 = load ptr, ptr %43, align 8
  %510 = call i32 @XXH_read32(ptr noundef %509)
  %511 = call i32 @XXH_swap32(i32 noundef %510)
  br label %512

512:                                              ; preds = %508, %505
  %513 = phi i32 [ %507, %505 ], [ %511, %508 ]
  store i32 %513, ptr %42, align 4
  br label %526

514:                                              ; preds = %496
  %515 = load i32, ptr %44, align 4
  %516 = icmp eq i32 %515, 1
  br i1 %516, label %517, label %520

517:                                              ; preds = %514
  %518 = load ptr, ptr %43, align 8
  %519 = load i32, ptr %518, align 4
  br label %524

520:                                              ; preds = %514
  %521 = load ptr, ptr %43, align 8
  %522 = load i32, ptr %521, align 4
  %523 = call i32 @XXH_swap32(i32 noundef %522)
  br label %524

524:                                              ; preds = %520, %517
  %525 = phi i32 [ %519, %517 ], [ %523, %520 ]
  store i32 %525, ptr %42, align 4
  br label %526

526:                                              ; preds = %512, %524
  %527 = load i32, ptr %42, align 4
  %528 = mul i32 %527, -1028477379
  %529 = load i32, ptr %55, align 4
  %530 = add i32 %529, %528
  store i32 %530, ptr %55, align 4
  %531 = load ptr, ptr %60, align 8
  %532 = getelementptr inbounds i8, ptr %531, i64 4
  store ptr %532, ptr %60, align 8
  %533 = load i32, ptr %55, align 4
  %534 = shl i32 %533, 17
  %535 = load i32, ptr %55, align 4
  %536 = lshr i32 %535, 15
  %537 = or i32 %534, %536
  %538 = mul i32 %537, 668265263
  store i32 %538, ptr %55, align 4
  br label %539

539:                                              ; preds = %5, %526
  %540 = load ptr, ptr %60, align 8
  %541 = load i32, ptr %58, align 4
  %542 = load i32, ptr %59, align 4
  store ptr %540, ptr %47, align 8
  store i32 %541, ptr %48, align 4
  store i32 %542, ptr %49, align 4
  %543 = load i32, ptr %49, align 4
  %544 = icmp eq i32 %543, 1
  br i1 %544, label %545, label %557

545:                                              ; preds = %539
  %546 = load i32, ptr %48, align 4
  %547 = icmp eq i32 %546, 1
  br i1 %547, label %548, label %551

548:                                              ; preds = %545
  %549 = load ptr, ptr %47, align 8
  %550 = call i32 @XXH_read32(ptr noundef %549)
  br label %555

551:                                              ; preds = %545
  %552 = load ptr, ptr %47, align 8
  %553 = call i32 @XXH_read32(ptr noundef %552)
  %554 = call i32 @XXH_swap32(i32 noundef %553)
  br label %555

555:                                              ; preds = %551, %548
  %556 = phi i32 [ %550, %548 ], [ %554, %551 ]
  store i32 %556, ptr %46, align 4
  br label %569

557:                                              ; preds = %539
  %558 = load i32, ptr %48, align 4
  %559 = icmp eq i32 %558, 1
  br i1 %559, label %560, label %563

560:                                              ; preds = %557
  %561 = load ptr, ptr %47, align 8
  %562 = load i32, ptr %561, align 4
  br label %567

563:                                              ; preds = %557
  %564 = load ptr, ptr %47, align 8
  %565 = load i32, ptr %564, align 4
  %566 = call i32 @XXH_swap32(i32 noundef %565)
  br label %567

567:                                              ; preds = %563, %560
  %568 = phi i32 [ %562, %560 ], [ %566, %563 ]
  store i32 %568, ptr %46, align 4
  br label %569

569:                                              ; preds = %555, %567
  %570 = load i32, ptr %46, align 4
  %571 = mul i32 %570, -1028477379
  %572 = load i32, ptr %55, align 4
  %573 = add i32 %572, %571
  store i32 %573, ptr %55, align 4
  %574 = load ptr, ptr %60, align 8
  %575 = getelementptr inbounds i8, ptr %574, i64 4
  store ptr %575, ptr %60, align 8
  %576 = load i32, ptr %55, align 4
  %577 = shl i32 %576, 17
  %578 = load i32, ptr %55, align 4
  %579 = lshr i32 %578, 15
  %580 = or i32 %577, %579
  %581 = mul i32 %580, 668265263
  store i32 %581, ptr %55, align 4
  br label %582

582:                                              ; preds = %5, %569
  %583 = load ptr, ptr %60, align 8
  %584 = load i32, ptr %58, align 4
  %585 = load i32, ptr %59, align 4
  store ptr %583, ptr %51, align 8
  store i32 %584, ptr %52, align 4
  store i32 %585, ptr %53, align 4
  %586 = load i32, ptr %53, align 4
  %587 = icmp eq i32 %586, 1
  br i1 %587, label %588, label %600

588:                                              ; preds = %582
  %589 = load i32, ptr %52, align 4
  %590 = icmp eq i32 %589, 1
  br i1 %590, label %591, label %594

591:                                              ; preds = %588
  %592 = load ptr, ptr %51, align 8
  %593 = call i32 @XXH_read32(ptr noundef %592)
  br label %598

594:                                              ; preds = %588
  %595 = load ptr, ptr %51, align 8
  %596 = call i32 @XXH_read32(ptr noundef %595)
  %597 = call i32 @XXH_swap32(i32 noundef %596)
  br label %598

598:                                              ; preds = %594, %591
  %599 = phi i32 [ %593, %591 ], [ %597, %594 ]
  store i32 %599, ptr %50, align 4
  br label %612

600:                                              ; preds = %582
  %601 = load i32, ptr %52, align 4
  %602 = icmp eq i32 %601, 1
  br i1 %602, label %603, label %606

603:                                              ; preds = %600
  %604 = load ptr, ptr %51, align 8
  %605 = load i32, ptr %604, align 4
  br label %610

606:                                              ; preds = %600
  %607 = load ptr, ptr %51, align 8
  %608 = load i32, ptr %607, align 4
  %609 = call i32 @XXH_swap32(i32 noundef %608)
  br label %610

610:                                              ; preds = %606, %603
  %611 = phi i32 [ %605, %603 ], [ %609, %606 ]
  store i32 %611, ptr %50, align 4
  br label %612

612:                                              ; preds = %598, %610
  %613 = load i32, ptr %50, align 4
  %614 = mul i32 %613, -1028477379
  %615 = load i32, ptr %55, align 4
  %616 = add i32 %615, %614
  store i32 %616, ptr %55, align 4
  %617 = load ptr, ptr %60, align 8
  %618 = getelementptr inbounds i8, ptr %617, i64 4
  store ptr %618, ptr %60, align 8
  %619 = load i32, ptr %55, align 4
  %620 = shl i32 %619, 17
  %621 = load i32, ptr %55, align 4
  %622 = lshr i32 %621, 15
  %623 = or i32 %620, %622
  %624 = mul i32 %623, 668265263
  store i32 %624, ptr %55, align 4
  br label %625

625:                                              ; preds = %5, %612
  %626 = load ptr, ptr %60, align 8
  %627 = getelementptr inbounds nuw i8, ptr %626, i32 1
  store ptr %627, ptr %60, align 8
  %628 = load i8, ptr %626, align 1
  %629 = zext i8 %628 to i32
  %630 = mul i32 %629, 374761393
  %631 = load i32, ptr %55, align 4
  %632 = add i32 %631, %630
  store i32 %632, ptr %55, align 4
  %633 = load i32, ptr %55, align 4
  %634 = shl i32 %633, 11
  %635 = load i32, ptr %55, align 4
  %636 = lshr i32 %635, 21
  %637 = or i32 %634, %636
  %638 = mul i32 %637, -1640531535
  store i32 %638, ptr %55, align 4
  br label %639

639:                                              ; preds = %5, %625
  %640 = load ptr, ptr %60, align 8
  %641 = getelementptr inbounds nuw i8, ptr %640, i32 1
  store ptr %641, ptr %60, align 8
  %642 = load i8, ptr %640, align 1
  %643 = zext i8 %642 to i32
  %644 = mul i32 %643, 374761393
  %645 = load i32, ptr %55, align 4
  %646 = add i32 %645, %644
  store i32 %646, ptr %55, align 4
  %647 = load i32, ptr %55, align 4
  %648 = shl i32 %647, 11
  %649 = load i32, ptr %55, align 4
  %650 = lshr i32 %649, 21
  %651 = or i32 %648, %650
  %652 = mul i32 %651, -1640531535
  store i32 %652, ptr %55, align 4
  br label %653

653:                                              ; preds = %5, %639
  %654 = load ptr, ptr %60, align 8
  %655 = getelementptr inbounds nuw i8, ptr %654, i32 1
  store ptr %655, ptr %60, align 8
  %656 = load i8, ptr %654, align 1
  %657 = zext i8 %656 to i32
  %658 = mul i32 %657, 374761393
  %659 = load i32, ptr %55, align 4
  %660 = add i32 %659, %658
  store i32 %660, ptr %55, align 4
  %661 = load i32, ptr %55, align 4
  %662 = shl i32 %661, 11
  %663 = load i32, ptr %55, align 4
  %664 = lshr i32 %663, 21
  %665 = or i32 %662, %664
  %666 = mul i32 %665, -1640531535
  store i32 %666, ptr %55, align 4
  br label %667

667:                                              ; preds = %5, %653
  %668 = load i32, ptr %55, align 4
  %669 = call i32 @XXH32_avalanche(i32 noundef %668)
  store i32 %669, ptr %54, align 4
  br label %671

670:                                              ; preds = %5
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 391, ptr noundef @__PRETTY_FUNCTION__.XXH32_finalize) #10
  unreachable

671:                                              ; preds = %667, %455, %311, %180
  %672 = load i32, ptr %54, align 4
  ret i32 %672
}

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
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca ptr, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i64, align 8
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i64, align 8
  %51 = alloca ptr, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i64, align 8
  %55 = alloca ptr, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i64, align 8
  %59 = alloca ptr, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i64, align 8
  %63 = alloca ptr, align 8
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i64, align 8
  %67 = alloca ptr, align 8
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i64, align 8
  %71 = alloca ptr, align 8
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i64, align 8
  %75 = alloca ptr, align 8
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i64, align 8
  %79 = alloca ptr, align 8
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i64, align 8
  %83 = alloca ptr, align 8
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i64, align 8
  %87 = alloca ptr, align 8
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i64, align 8
  %91 = alloca ptr, align 8
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i64, align 8
  %95 = alloca ptr, align 8
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i64, align 8
  %99 = alloca ptr, align 8
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca ptr, align 8
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  %107 = alloca ptr, align 8
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca ptr, align 8
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca i32, align 4
  %115 = alloca ptr, align 8
  %116 = alloca i32, align 4
  %117 = alloca i32, align 4
  %118 = alloca i64, align 8
  %119 = alloca i64, align 8
  %120 = alloca ptr, align 8
  %121 = alloca i64, align 8
  %122 = alloca i32, align 4
  %123 = alloca i32, align 4
  %124 = alloca ptr, align 8
  %125 = alloca i64, align 8
  %126 = alloca i64, align 8
  %127 = alloca i64, align 8
  %128 = alloca i64, align 8
  %129 = alloca i64, align 8
  %130 = alloca i64, align 8
  %131 = alloca i64, align 8
  %132 = alloca i64, align 8
  %133 = alloca i64, align 8
  %134 = alloca i64, align 8
  %135 = alloca i64, align 8
  %136 = alloca i64, align 8
  %137 = alloca i64, align 8
  %138 = alloca i64, align 8
  %139 = alloca i64, align 8
  %140 = alloca i64, align 8
  %141 = alloca i64, align 8
  %142 = alloca i64, align 8
  %143 = alloca i64, align 8
  %144 = alloca i64, align 8
  %145 = alloca i64, align 8
  %146 = alloca i64, align 8
  %147 = alloca i64, align 8
  %148 = alloca i64, align 8
  store i64 %0, ptr %119, align 8
  store ptr %1, ptr %120, align 8
  store i64 %2, ptr %121, align 8
  store i32 %3, ptr %122, align 4
  store i32 %4, ptr %123, align 4
  %149 = load ptr, ptr %120, align 8
  store ptr %149, ptr %124, align 8
  %150 = load i64, ptr %121, align 8
  %151 = and i64 %150, 31
  switch i64 %151, label %1588 [
    i64 24, label %152
    i64 16, label %197
    i64 8, label %242
    i64 28, label %289
    i64 20, label %334
    i64 12, label %379
    i64 4, label %424
    i64 25, label %471
    i64 17, label %516
    i64 9, label %561
    i64 29, label %621
    i64 21, label %666
    i64 13, label %711
    i64 5, label %756
    i64 26, label %816
    i64 18, label %861
    i64 10, label %906
    i64 30, label %979
    i64 22, label %1024
    i64 14, label %1069
    i64 6, label %1114
    i64 27, label %1187
    i64 19, label %1232
    i64 11, label %1277
    i64 31, label %1363
    i64 23, label %1408
    i64 15, label %1453
    i64 7, label %1498
    i64 3, label %1543
    i64 2, label %1557
    i64 1, label %1571
    i64 0, label %1585
  ]

152:                                              ; preds = %5
  %153 = load ptr, ptr %124, align 8
  %154 = load i32, ptr %122, align 4
  %155 = load i32, ptr %123, align 4
  store ptr %153, ptr %7, align 8
  store i32 %154, ptr %8, align 4
  store i32 %155, ptr %9, align 4
  %156 = load i32, ptr %9, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load i32, ptr %8, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load ptr, ptr %7, align 8
  %163 = call i64 @XXH_read64(ptr noundef %162)
  br label %168

164:                                              ; preds = %158
  %165 = load ptr, ptr %7, align 8
  %166 = call i64 @XXH_read64(ptr noundef %165)
  %167 = call i64 @XXH_swap64(i64 noundef %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = phi i64 [ %163, %161 ], [ %167, %164 ]
  store i64 %169, ptr %6, align 8
  br label %182

170:                                              ; preds = %152
  %171 = load i32, ptr %8, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load ptr, ptr %7, align 8
  %175 = load i64, ptr %174, align 8
  br label %180

176:                                              ; preds = %170
  %177 = load ptr, ptr %7, align 8
  %178 = load i64, ptr %177, align 8
  %179 = call i64 @XXH_swap64(i64 noundef %178)
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi i64 [ %175, %173 ], [ %179, %176 ]
  store i64 %181, ptr %6, align 8
  br label %182

182:                                              ; preds = %168, %180
  %183 = load i64, ptr %6, align 8
  %184 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %183)
  store i64 %184, ptr %125, align 8
  %185 = load ptr, ptr %124, align 8
  %186 = getelementptr inbounds i8, ptr %185, i64 8
  store ptr %186, ptr %124, align 8
  %187 = load i64, ptr %125, align 8
  %188 = load i64, ptr %119, align 8
  %189 = xor i64 %188, %187
  store i64 %189, ptr %119, align 8
  %190 = load i64, ptr %119, align 8
  %191 = shl i64 %190, 27
  %192 = load i64, ptr %119, align 8
  %193 = lshr i64 %192, 37
  %194 = or i64 %191, %193
  %195 = mul i64 %194, -7046029288634856825
  %196 = add i64 %195, -8796714831421723037
  store i64 %196, ptr %119, align 8
  br label %197

197:                                              ; preds = %5, %182
  %198 = load ptr, ptr %124, align 8
  %199 = load i32, ptr %122, align 4
  %200 = load i32, ptr %123, align 4
  store ptr %198, ptr %11, align 8
  store i32 %199, ptr %12, align 4
  store i32 %200, ptr %13, align 4
  %201 = load i32, ptr %13, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load i32, ptr %12, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load ptr, ptr %11, align 8
  %208 = call i64 @XXH_read64(ptr noundef %207)
  br label %213

209:                                              ; preds = %203
  %210 = load ptr, ptr %11, align 8
  %211 = call i64 @XXH_read64(ptr noundef %210)
  %212 = call i64 @XXH_swap64(i64 noundef %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = phi i64 [ %208, %206 ], [ %212, %209 ]
  store i64 %214, ptr %10, align 8
  br label %227

215:                                              ; preds = %197
  %216 = load i32, ptr %12, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load ptr, ptr %11, align 8
  %220 = load i64, ptr %219, align 8
  br label %225

221:                                              ; preds = %215
  %222 = load ptr, ptr %11, align 8
  %223 = load i64, ptr %222, align 8
  %224 = call i64 @XXH_swap64(i64 noundef %223)
  br label %225

225:                                              ; preds = %221, %218
  %226 = phi i64 [ %220, %218 ], [ %224, %221 ]
  store i64 %226, ptr %10, align 8
  br label %227

227:                                              ; preds = %213, %225
  %228 = load i64, ptr %10, align 8
  %229 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %228)
  store i64 %229, ptr %126, align 8
  %230 = load ptr, ptr %124, align 8
  %231 = getelementptr inbounds i8, ptr %230, i64 8
  store ptr %231, ptr %124, align 8
  %232 = load i64, ptr %126, align 8
  %233 = load i64, ptr %119, align 8
  %234 = xor i64 %233, %232
  store i64 %234, ptr %119, align 8
  %235 = load i64, ptr %119, align 8
  %236 = shl i64 %235, 27
  %237 = load i64, ptr %119, align 8
  %238 = lshr i64 %237, 37
  %239 = or i64 %236, %238
  %240 = mul i64 %239, -7046029288634856825
  %241 = add i64 %240, -8796714831421723037
  store i64 %241, ptr %119, align 8
  br label %242

242:                                              ; preds = %5, %227
  %243 = load ptr, ptr %124, align 8
  %244 = load i32, ptr %122, align 4
  %245 = load i32, ptr %123, align 4
  store ptr %243, ptr %15, align 8
  store i32 %244, ptr %16, align 4
  store i32 %245, ptr %17, align 4
  %246 = load i32, ptr %17, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %260

248:                                              ; preds = %242
  %249 = load i32, ptr %16, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load ptr, ptr %15, align 8
  %253 = call i64 @XXH_read64(ptr noundef %252)
  br label %258

254:                                              ; preds = %248
  %255 = load ptr, ptr %15, align 8
  %256 = call i64 @XXH_read64(ptr noundef %255)
  %257 = call i64 @XXH_swap64(i64 noundef %256)
  br label %258

258:                                              ; preds = %254, %251
  %259 = phi i64 [ %253, %251 ], [ %257, %254 ]
  store i64 %259, ptr %14, align 8
  br label %272

260:                                              ; preds = %242
  %261 = load i32, ptr %16, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load ptr, ptr %15, align 8
  %265 = load i64, ptr %264, align 8
  br label %270

266:                                              ; preds = %260
  %267 = load ptr, ptr %15, align 8
  %268 = load i64, ptr %267, align 8
  %269 = call i64 @XXH_swap64(i64 noundef %268)
  br label %270

270:                                              ; preds = %266, %263
  %271 = phi i64 [ %265, %263 ], [ %269, %266 ]
  store i64 %271, ptr %14, align 8
  br label %272

272:                                              ; preds = %258, %270
  %273 = load i64, ptr %14, align 8
  %274 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %273)
  store i64 %274, ptr %127, align 8
  %275 = load ptr, ptr %124, align 8
  %276 = getelementptr inbounds i8, ptr %275, i64 8
  store ptr %276, ptr %124, align 8
  %277 = load i64, ptr %127, align 8
  %278 = load i64, ptr %119, align 8
  %279 = xor i64 %278, %277
  store i64 %279, ptr %119, align 8
  %280 = load i64, ptr %119, align 8
  %281 = shl i64 %280, 27
  %282 = load i64, ptr %119, align 8
  %283 = lshr i64 %282, 37
  %284 = or i64 %281, %283
  %285 = mul i64 %284, -7046029288634856825
  %286 = add i64 %285, -8796714831421723037
  store i64 %286, ptr %119, align 8
  %287 = load i64, ptr %119, align 8
  %288 = call i64 @XXH64_avalanche(i64 noundef %287)
  store i64 %288, ptr %118, align 8
  br label %1589

289:                                              ; preds = %5
  %290 = load ptr, ptr %124, align 8
  %291 = load i32, ptr %122, align 4
  %292 = load i32, ptr %123, align 4
  store ptr %290, ptr %19, align 8
  store i32 %291, ptr %20, align 4
  store i32 %292, ptr %21, align 4
  %293 = load i32, ptr %21, align 4
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %307

295:                                              ; preds = %289
  %296 = load i32, ptr %20, align 4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load ptr, ptr %19, align 8
  %300 = call i64 @XXH_read64(ptr noundef %299)
  br label %305

301:                                              ; preds = %295
  %302 = load ptr, ptr %19, align 8
  %303 = call i64 @XXH_read64(ptr noundef %302)
  %304 = call i64 @XXH_swap64(i64 noundef %303)
  br label %305

305:                                              ; preds = %301, %298
  %306 = phi i64 [ %300, %298 ], [ %304, %301 ]
  store i64 %306, ptr %18, align 8
  br label %319

307:                                              ; preds = %289
  %308 = load i32, ptr %20, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load ptr, ptr %19, align 8
  %312 = load i64, ptr %311, align 8
  br label %317

313:                                              ; preds = %307
  %314 = load ptr, ptr %19, align 8
  %315 = load i64, ptr %314, align 8
  %316 = call i64 @XXH_swap64(i64 noundef %315)
  br label %317

317:                                              ; preds = %313, %310
  %318 = phi i64 [ %312, %310 ], [ %316, %313 ]
  store i64 %318, ptr %18, align 8
  br label %319

319:                                              ; preds = %305, %317
  %320 = load i64, ptr %18, align 8
  %321 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %320)
  store i64 %321, ptr %128, align 8
  %322 = load ptr, ptr %124, align 8
  %323 = getelementptr inbounds i8, ptr %322, i64 8
  store ptr %323, ptr %124, align 8
  %324 = load i64, ptr %128, align 8
  %325 = load i64, ptr %119, align 8
  %326 = xor i64 %325, %324
  store i64 %326, ptr %119, align 8
  %327 = load i64, ptr %119, align 8
  %328 = shl i64 %327, 27
  %329 = load i64, ptr %119, align 8
  %330 = lshr i64 %329, 37
  %331 = or i64 %328, %330
  %332 = mul i64 %331, -7046029288634856825
  %333 = add i64 %332, -8796714831421723037
  store i64 %333, ptr %119, align 8
  br label %334

334:                                              ; preds = %5, %319
  %335 = load ptr, ptr %124, align 8
  %336 = load i32, ptr %122, align 4
  %337 = load i32, ptr %123, align 4
  store ptr %335, ptr %23, align 8
  store i32 %336, ptr %24, align 4
  store i32 %337, ptr %25, align 4
  %338 = load i32, ptr %25, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %352

340:                                              ; preds = %334
  %341 = load i32, ptr %24, align 4
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load ptr, ptr %23, align 8
  %345 = call i64 @XXH_read64(ptr noundef %344)
  br label %350

346:                                              ; preds = %340
  %347 = load ptr, ptr %23, align 8
  %348 = call i64 @XXH_read64(ptr noundef %347)
  %349 = call i64 @XXH_swap64(i64 noundef %348)
  br label %350

350:                                              ; preds = %346, %343
  %351 = phi i64 [ %345, %343 ], [ %349, %346 ]
  store i64 %351, ptr %22, align 8
  br label %364

352:                                              ; preds = %334
  %353 = load i32, ptr %24, align 4
  %354 = icmp eq i32 %353, 1
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load ptr, ptr %23, align 8
  %357 = load i64, ptr %356, align 8
  br label %362

358:                                              ; preds = %352
  %359 = load ptr, ptr %23, align 8
  %360 = load i64, ptr %359, align 8
  %361 = call i64 @XXH_swap64(i64 noundef %360)
  br label %362

362:                                              ; preds = %358, %355
  %363 = phi i64 [ %357, %355 ], [ %361, %358 ]
  store i64 %363, ptr %22, align 8
  br label %364

364:                                              ; preds = %350, %362
  %365 = load i64, ptr %22, align 8
  %366 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %365)
  store i64 %366, ptr %129, align 8
  %367 = load ptr, ptr %124, align 8
  %368 = getelementptr inbounds i8, ptr %367, i64 8
  store ptr %368, ptr %124, align 8
  %369 = load i64, ptr %129, align 8
  %370 = load i64, ptr %119, align 8
  %371 = xor i64 %370, %369
  store i64 %371, ptr %119, align 8
  %372 = load i64, ptr %119, align 8
  %373 = shl i64 %372, 27
  %374 = load i64, ptr %119, align 8
  %375 = lshr i64 %374, 37
  %376 = or i64 %373, %375
  %377 = mul i64 %376, -7046029288634856825
  %378 = add i64 %377, -8796714831421723037
  store i64 %378, ptr %119, align 8
  br label %379

379:                                              ; preds = %5, %364
  %380 = load ptr, ptr %124, align 8
  %381 = load i32, ptr %122, align 4
  %382 = load i32, ptr %123, align 4
  store ptr %380, ptr %27, align 8
  store i32 %381, ptr %28, align 4
  store i32 %382, ptr %29, align 4
  %383 = load i32, ptr %29, align 4
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %397

385:                                              ; preds = %379
  %386 = load i32, ptr %28, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load ptr, ptr %27, align 8
  %390 = call i64 @XXH_read64(ptr noundef %389)
  br label %395

391:                                              ; preds = %385
  %392 = load ptr, ptr %27, align 8
  %393 = call i64 @XXH_read64(ptr noundef %392)
  %394 = call i64 @XXH_swap64(i64 noundef %393)
  br label %395

395:                                              ; preds = %391, %388
  %396 = phi i64 [ %390, %388 ], [ %394, %391 ]
  store i64 %396, ptr %26, align 8
  br label %409

397:                                              ; preds = %379
  %398 = load i32, ptr %28, align 4
  %399 = icmp eq i32 %398, 1
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load ptr, ptr %27, align 8
  %402 = load i64, ptr %401, align 8
  br label %407

403:                                              ; preds = %397
  %404 = load ptr, ptr %27, align 8
  %405 = load i64, ptr %404, align 8
  %406 = call i64 @XXH_swap64(i64 noundef %405)
  br label %407

407:                                              ; preds = %403, %400
  %408 = phi i64 [ %402, %400 ], [ %406, %403 ]
  store i64 %408, ptr %26, align 8
  br label %409

409:                                              ; preds = %395, %407
  %410 = load i64, ptr %26, align 8
  %411 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %410)
  store i64 %411, ptr %130, align 8
  %412 = load ptr, ptr %124, align 8
  %413 = getelementptr inbounds i8, ptr %412, i64 8
  store ptr %413, ptr %124, align 8
  %414 = load i64, ptr %130, align 8
  %415 = load i64, ptr %119, align 8
  %416 = xor i64 %415, %414
  store i64 %416, ptr %119, align 8
  %417 = load i64, ptr %119, align 8
  %418 = shl i64 %417, 27
  %419 = load i64, ptr %119, align 8
  %420 = lshr i64 %419, 37
  %421 = or i64 %418, %420
  %422 = mul i64 %421, -7046029288634856825
  %423 = add i64 %422, -8796714831421723037
  store i64 %423, ptr %119, align 8
  br label %424

424:                                              ; preds = %5, %409
  %425 = load ptr, ptr %124, align 8
  %426 = load i32, ptr %122, align 4
  %427 = load i32, ptr %123, align 4
  store ptr %425, ptr %103, align 8
  store i32 %426, ptr %104, align 4
  store i32 %427, ptr %105, align 4
  %428 = load i32, ptr %105, align 4
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %430, label %442

430:                                              ; preds = %424
  %431 = load i32, ptr %104, align 4
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %436

433:                                              ; preds = %430
  %434 = load ptr, ptr %103, align 8
  %435 = call i32 @XXH_read32(ptr noundef %434)
  br label %440

436:                                              ; preds = %430
  %437 = load ptr, ptr %103, align 8
  %438 = call i32 @XXH_read32(ptr noundef %437)
  %439 = call i32 @XXH_swap32(i32 noundef %438)
  br label %440

440:                                              ; preds = %436, %433
  %441 = phi i32 [ %435, %433 ], [ %439, %436 ]
  store i32 %441, ptr %102, align 4
  br label %454

442:                                              ; preds = %424
  %443 = load i32, ptr %104, align 4
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = load ptr, ptr %103, align 8
  %447 = load i32, ptr %446, align 4
  br label %452

448:                                              ; preds = %442
  %449 = load ptr, ptr %103, align 8
  %450 = load i32, ptr %449, align 4
  %451 = call i32 @XXH_swap32(i32 noundef %450)
  br label %452

452:                                              ; preds = %448, %445
  %453 = phi i32 [ %447, %445 ], [ %451, %448 ]
  store i32 %453, ptr %102, align 4
  br label %454

454:                                              ; preds = %440, %452
  %455 = load i32, ptr %102, align 4
  %456 = zext i32 %455 to i64
  %457 = mul i64 %456, -7046029288634856825
  %458 = load i64, ptr %119, align 8
  %459 = xor i64 %458, %457
  store i64 %459, ptr %119, align 8
  %460 = load ptr, ptr %124, align 8
  %461 = getelementptr inbounds i8, ptr %460, i64 4
  store ptr %461, ptr %124, align 8
  %462 = load i64, ptr %119, align 8
  %463 = shl i64 %462, 23
  %464 = load i64, ptr %119, align 8
  %465 = lshr i64 %464, 41
  %466 = or i64 %463, %465
  %467 = mul i64 %466, -4417276706812531889
  %468 = add i64 %467, 1609587929392839161
  store i64 %468, ptr %119, align 8
  %469 = load i64, ptr %119, align 8
  %470 = call i64 @XXH64_avalanche(i64 noundef %469)
  store i64 %470, ptr %118, align 8
  br label %1589

471:                                              ; preds = %5
  %472 = load ptr, ptr %124, align 8
  %473 = load i32, ptr %122, align 4
  %474 = load i32, ptr %123, align 4
  store ptr %472, ptr %31, align 8
  store i32 %473, ptr %32, align 4
  store i32 %474, ptr %33, align 4
  %475 = load i32, ptr %33, align 4
  %476 = icmp eq i32 %475, 1
  br i1 %476, label %477, label %489

477:                                              ; preds = %471
  %478 = load i32, ptr %32, align 4
  %479 = icmp eq i32 %478, 1
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load ptr, ptr %31, align 8
  %482 = call i64 @XXH_read64(ptr noundef %481)
  br label %487

483:                                              ; preds = %477
  %484 = load ptr, ptr %31, align 8
  %485 = call i64 @XXH_read64(ptr noundef %484)
  %486 = call i64 @XXH_swap64(i64 noundef %485)
  br label %487

487:                                              ; preds = %483, %480
  %488 = phi i64 [ %482, %480 ], [ %486, %483 ]
  store i64 %488, ptr %30, align 8
  br label %501

489:                                              ; preds = %471
  %490 = load i32, ptr %32, align 4
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = load ptr, ptr %31, align 8
  %494 = load i64, ptr %493, align 8
  br label %499

495:                                              ; preds = %489
  %496 = load ptr, ptr %31, align 8
  %497 = load i64, ptr %496, align 8
  %498 = call i64 @XXH_swap64(i64 noundef %497)
  br label %499

499:                                              ; preds = %495, %492
  %500 = phi i64 [ %494, %492 ], [ %498, %495 ]
  store i64 %500, ptr %30, align 8
  br label %501

501:                                              ; preds = %487, %499
  %502 = load i64, ptr %30, align 8
  %503 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %502)
  store i64 %503, ptr %131, align 8
  %504 = load ptr, ptr %124, align 8
  %505 = getelementptr inbounds i8, ptr %504, i64 8
  store ptr %505, ptr %124, align 8
  %506 = load i64, ptr %131, align 8
  %507 = load i64, ptr %119, align 8
  %508 = xor i64 %507, %506
  store i64 %508, ptr %119, align 8
  %509 = load i64, ptr %119, align 8
  %510 = shl i64 %509, 27
  %511 = load i64, ptr %119, align 8
  %512 = lshr i64 %511, 37
  %513 = or i64 %510, %512
  %514 = mul i64 %513, -7046029288634856825
  %515 = add i64 %514, -8796714831421723037
  store i64 %515, ptr %119, align 8
  br label %516

516:                                              ; preds = %5, %501
  %517 = load ptr, ptr %124, align 8
  %518 = load i32, ptr %122, align 4
  %519 = load i32, ptr %123, align 4
  store ptr %517, ptr %35, align 8
  store i32 %518, ptr %36, align 4
  store i32 %519, ptr %37, align 4
  %520 = load i32, ptr %37, align 4
  %521 = icmp eq i32 %520, 1
  br i1 %521, label %522, label %534

522:                                              ; preds = %516
  %523 = load i32, ptr %36, align 4
  %524 = icmp eq i32 %523, 1
  br i1 %524, label %525, label %528

525:                                              ; preds = %522
  %526 = load ptr, ptr %35, align 8
  %527 = call i64 @XXH_read64(ptr noundef %526)
  br label %532

528:                                              ; preds = %522
  %529 = load ptr, ptr %35, align 8
  %530 = call i64 @XXH_read64(ptr noundef %529)
  %531 = call i64 @XXH_swap64(i64 noundef %530)
  br label %532

532:                                              ; preds = %528, %525
  %533 = phi i64 [ %527, %525 ], [ %531, %528 ]
  store i64 %533, ptr %34, align 8
  br label %546

534:                                              ; preds = %516
  %535 = load i32, ptr %36, align 4
  %536 = icmp eq i32 %535, 1
  br i1 %536, label %537, label %540

537:                                              ; preds = %534
  %538 = load ptr, ptr %35, align 8
  %539 = load i64, ptr %538, align 8
  br label %544

540:                                              ; preds = %534
  %541 = load ptr, ptr %35, align 8
  %542 = load i64, ptr %541, align 8
  %543 = call i64 @XXH_swap64(i64 noundef %542)
  br label %544

544:                                              ; preds = %540, %537
  %545 = phi i64 [ %539, %537 ], [ %543, %540 ]
  store i64 %545, ptr %34, align 8
  br label %546

546:                                              ; preds = %532, %544
  %547 = load i64, ptr %34, align 8
  %548 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %547)
  store i64 %548, ptr %132, align 8
  %549 = load ptr, ptr %124, align 8
  %550 = getelementptr inbounds i8, ptr %549, i64 8
  store ptr %550, ptr %124, align 8
  %551 = load i64, ptr %132, align 8
  %552 = load i64, ptr %119, align 8
  %553 = xor i64 %552, %551
  store i64 %553, ptr %119, align 8
  %554 = load i64, ptr %119, align 8
  %555 = shl i64 %554, 27
  %556 = load i64, ptr %119, align 8
  %557 = lshr i64 %556, 37
  %558 = or i64 %555, %557
  %559 = mul i64 %558, -7046029288634856825
  %560 = add i64 %559, -8796714831421723037
  store i64 %560, ptr %119, align 8
  br label %561

561:                                              ; preds = %5, %546
  %562 = load ptr, ptr %124, align 8
  %563 = load i32, ptr %122, align 4
  %564 = load i32, ptr %123, align 4
  store ptr %562, ptr %39, align 8
  store i32 %563, ptr %40, align 4
  store i32 %564, ptr %41, align 4
  %565 = load i32, ptr %41, align 4
  %566 = icmp eq i32 %565, 1
  br i1 %566, label %567, label %579

567:                                              ; preds = %561
  %568 = load i32, ptr %40, align 4
  %569 = icmp eq i32 %568, 1
  br i1 %569, label %570, label %573

570:                                              ; preds = %567
  %571 = load ptr, ptr %39, align 8
  %572 = call i64 @XXH_read64(ptr noundef %571)
  br label %577

573:                                              ; preds = %567
  %574 = load ptr, ptr %39, align 8
  %575 = call i64 @XXH_read64(ptr noundef %574)
  %576 = call i64 @XXH_swap64(i64 noundef %575)
  br label %577

577:                                              ; preds = %573, %570
  %578 = phi i64 [ %572, %570 ], [ %576, %573 ]
  store i64 %578, ptr %38, align 8
  br label %591

579:                                              ; preds = %561
  %580 = load i32, ptr %40, align 4
  %581 = icmp eq i32 %580, 1
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = load ptr, ptr %39, align 8
  %584 = load i64, ptr %583, align 8
  br label %589

585:                                              ; preds = %579
  %586 = load ptr, ptr %39, align 8
  %587 = load i64, ptr %586, align 8
  %588 = call i64 @XXH_swap64(i64 noundef %587)
  br label %589

589:                                              ; preds = %585, %582
  %590 = phi i64 [ %584, %582 ], [ %588, %585 ]
  store i64 %590, ptr %38, align 8
  br label %591

591:                                              ; preds = %577, %589
  %592 = load i64, ptr %38, align 8
  %593 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %592)
  store i64 %593, ptr %133, align 8
  %594 = load ptr, ptr %124, align 8
  %595 = getelementptr inbounds i8, ptr %594, i64 8
  store ptr %595, ptr %124, align 8
  %596 = load i64, ptr %133, align 8
  %597 = load i64, ptr %119, align 8
  %598 = xor i64 %597, %596
  store i64 %598, ptr %119, align 8
  %599 = load i64, ptr %119, align 8
  %600 = shl i64 %599, 27
  %601 = load i64, ptr %119, align 8
  %602 = lshr i64 %601, 37
  %603 = or i64 %600, %602
  %604 = mul i64 %603, -7046029288634856825
  %605 = add i64 %604, -8796714831421723037
  store i64 %605, ptr %119, align 8
  %606 = load ptr, ptr %124, align 8
  %607 = getelementptr inbounds nuw i8, ptr %606, i32 1
  store ptr %607, ptr %124, align 8
  %608 = load i8, ptr %606, align 1
  %609 = zext i8 %608 to i64
  %610 = mul i64 %609, 2870177450012600261
  %611 = load i64, ptr %119, align 8
  %612 = xor i64 %611, %610
  store i64 %612, ptr %119, align 8
  %613 = load i64, ptr %119, align 8
  %614 = shl i64 %613, 11
  %615 = load i64, ptr %119, align 8
  %616 = lshr i64 %615, 53
  %617 = or i64 %614, %616
  %618 = mul i64 %617, -7046029288634856825
  store i64 %618, ptr %119, align 8
  %619 = load i64, ptr %119, align 8
  %620 = call i64 @XXH64_avalanche(i64 noundef %619)
  store i64 %620, ptr %118, align 8
  br label %1589

621:                                              ; preds = %5
  %622 = load ptr, ptr %124, align 8
  %623 = load i32, ptr %122, align 4
  %624 = load i32, ptr %123, align 4
  store ptr %622, ptr %43, align 8
  store i32 %623, ptr %44, align 4
  store i32 %624, ptr %45, align 4
  %625 = load i32, ptr %45, align 4
  %626 = icmp eq i32 %625, 1
  br i1 %626, label %627, label %639

627:                                              ; preds = %621
  %628 = load i32, ptr %44, align 4
  %629 = icmp eq i32 %628, 1
  br i1 %629, label %630, label %633

630:                                              ; preds = %627
  %631 = load ptr, ptr %43, align 8
  %632 = call i64 @XXH_read64(ptr noundef %631)
  br label %637

633:                                              ; preds = %627
  %634 = load ptr, ptr %43, align 8
  %635 = call i64 @XXH_read64(ptr noundef %634)
  %636 = call i64 @XXH_swap64(i64 noundef %635)
  br label %637

637:                                              ; preds = %633, %630
  %638 = phi i64 [ %632, %630 ], [ %636, %633 ]
  store i64 %638, ptr %42, align 8
  br label %651

639:                                              ; preds = %621
  %640 = load i32, ptr %44, align 4
  %641 = icmp eq i32 %640, 1
  br i1 %641, label %642, label %645

642:                                              ; preds = %639
  %643 = load ptr, ptr %43, align 8
  %644 = load i64, ptr %643, align 8
  br label %649

645:                                              ; preds = %639
  %646 = load ptr, ptr %43, align 8
  %647 = load i64, ptr %646, align 8
  %648 = call i64 @XXH_swap64(i64 noundef %647)
  br label %649

649:                                              ; preds = %645, %642
  %650 = phi i64 [ %644, %642 ], [ %648, %645 ]
  store i64 %650, ptr %42, align 8
  br label %651

651:                                              ; preds = %637, %649
  %652 = load i64, ptr %42, align 8
  %653 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %652)
  store i64 %653, ptr %134, align 8
  %654 = load ptr, ptr %124, align 8
  %655 = getelementptr inbounds i8, ptr %654, i64 8
  store ptr %655, ptr %124, align 8
  %656 = load i64, ptr %134, align 8
  %657 = load i64, ptr %119, align 8
  %658 = xor i64 %657, %656
  store i64 %658, ptr %119, align 8
  %659 = load i64, ptr %119, align 8
  %660 = shl i64 %659, 27
  %661 = load i64, ptr %119, align 8
  %662 = lshr i64 %661, 37
  %663 = or i64 %660, %662
  %664 = mul i64 %663, -7046029288634856825
  %665 = add i64 %664, -8796714831421723037
  store i64 %665, ptr %119, align 8
  br label %666

666:                                              ; preds = %5, %651
  %667 = load ptr, ptr %124, align 8
  %668 = load i32, ptr %122, align 4
  %669 = load i32, ptr %123, align 4
  store ptr %667, ptr %47, align 8
  store i32 %668, ptr %48, align 4
  store i32 %669, ptr %49, align 4
  %670 = load i32, ptr %49, align 4
  %671 = icmp eq i32 %670, 1
  br i1 %671, label %672, label %684

672:                                              ; preds = %666
  %673 = load i32, ptr %48, align 4
  %674 = icmp eq i32 %673, 1
  br i1 %674, label %675, label %678

675:                                              ; preds = %672
  %676 = load ptr, ptr %47, align 8
  %677 = call i64 @XXH_read64(ptr noundef %676)
  br label %682

678:                                              ; preds = %672
  %679 = load ptr, ptr %47, align 8
  %680 = call i64 @XXH_read64(ptr noundef %679)
  %681 = call i64 @XXH_swap64(i64 noundef %680)
  br label %682

682:                                              ; preds = %678, %675
  %683 = phi i64 [ %677, %675 ], [ %681, %678 ]
  store i64 %683, ptr %46, align 8
  br label %696

684:                                              ; preds = %666
  %685 = load i32, ptr %48, align 4
  %686 = icmp eq i32 %685, 1
  br i1 %686, label %687, label %690

687:                                              ; preds = %684
  %688 = load ptr, ptr %47, align 8
  %689 = load i64, ptr %688, align 8
  br label %694

690:                                              ; preds = %684
  %691 = load ptr, ptr %47, align 8
  %692 = load i64, ptr %691, align 8
  %693 = call i64 @XXH_swap64(i64 noundef %692)
  br label %694

694:                                              ; preds = %690, %687
  %695 = phi i64 [ %689, %687 ], [ %693, %690 ]
  store i64 %695, ptr %46, align 8
  br label %696

696:                                              ; preds = %682, %694
  %697 = load i64, ptr %46, align 8
  %698 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %697)
  store i64 %698, ptr %135, align 8
  %699 = load ptr, ptr %124, align 8
  %700 = getelementptr inbounds i8, ptr %699, i64 8
  store ptr %700, ptr %124, align 8
  %701 = load i64, ptr %135, align 8
  %702 = load i64, ptr %119, align 8
  %703 = xor i64 %702, %701
  store i64 %703, ptr %119, align 8
  %704 = load i64, ptr %119, align 8
  %705 = shl i64 %704, 27
  %706 = load i64, ptr %119, align 8
  %707 = lshr i64 %706, 37
  %708 = or i64 %705, %707
  %709 = mul i64 %708, -7046029288634856825
  %710 = add i64 %709, -8796714831421723037
  store i64 %710, ptr %119, align 8
  br label %711

711:                                              ; preds = %5, %696
  %712 = load ptr, ptr %124, align 8
  %713 = load i32, ptr %122, align 4
  %714 = load i32, ptr %123, align 4
  store ptr %712, ptr %51, align 8
  store i32 %713, ptr %52, align 4
  store i32 %714, ptr %53, align 4
  %715 = load i32, ptr %53, align 4
  %716 = icmp eq i32 %715, 1
  br i1 %716, label %717, label %729

717:                                              ; preds = %711
  %718 = load i32, ptr %52, align 4
  %719 = icmp eq i32 %718, 1
  br i1 %719, label %720, label %723

720:                                              ; preds = %717
  %721 = load ptr, ptr %51, align 8
  %722 = call i64 @XXH_read64(ptr noundef %721)
  br label %727

723:                                              ; preds = %717
  %724 = load ptr, ptr %51, align 8
  %725 = call i64 @XXH_read64(ptr noundef %724)
  %726 = call i64 @XXH_swap64(i64 noundef %725)
  br label %727

727:                                              ; preds = %723, %720
  %728 = phi i64 [ %722, %720 ], [ %726, %723 ]
  store i64 %728, ptr %50, align 8
  br label %741

729:                                              ; preds = %711
  %730 = load i32, ptr %52, align 4
  %731 = icmp eq i32 %730, 1
  br i1 %731, label %732, label %735

732:                                              ; preds = %729
  %733 = load ptr, ptr %51, align 8
  %734 = load i64, ptr %733, align 8
  br label %739

735:                                              ; preds = %729
  %736 = load ptr, ptr %51, align 8
  %737 = load i64, ptr %736, align 8
  %738 = call i64 @XXH_swap64(i64 noundef %737)
  br label %739

739:                                              ; preds = %735, %732
  %740 = phi i64 [ %734, %732 ], [ %738, %735 ]
  store i64 %740, ptr %50, align 8
  br label %741

741:                                              ; preds = %727, %739
  %742 = load i64, ptr %50, align 8
  %743 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %742)
  store i64 %743, ptr %136, align 8
  %744 = load ptr, ptr %124, align 8
  %745 = getelementptr inbounds i8, ptr %744, i64 8
  store ptr %745, ptr %124, align 8
  %746 = load i64, ptr %136, align 8
  %747 = load i64, ptr %119, align 8
  %748 = xor i64 %747, %746
  store i64 %748, ptr %119, align 8
  %749 = load i64, ptr %119, align 8
  %750 = shl i64 %749, 27
  %751 = load i64, ptr %119, align 8
  %752 = lshr i64 %751, 37
  %753 = or i64 %750, %752
  %754 = mul i64 %753, -7046029288634856825
  %755 = add i64 %754, -8796714831421723037
  store i64 %755, ptr %119, align 8
  br label %756

756:                                              ; preds = %5, %741
  %757 = load ptr, ptr %124, align 8
  %758 = load i32, ptr %122, align 4
  %759 = load i32, ptr %123, align 4
  store ptr %757, ptr %107, align 8
  store i32 %758, ptr %108, align 4
  store i32 %759, ptr %109, align 4
  %760 = load i32, ptr %109, align 4
  %761 = icmp eq i32 %760, 1
  br i1 %761, label %762, label %774

762:                                              ; preds = %756
  %763 = load i32, ptr %108, align 4
  %764 = icmp eq i32 %763, 1
  br i1 %764, label %765, label %768

765:                                              ; preds = %762
  %766 = load ptr, ptr %107, align 8
  %767 = call i32 @XXH_read32(ptr noundef %766)
  br label %772

768:                                              ; preds = %762
  %769 = load ptr, ptr %107, align 8
  %770 = call i32 @XXH_read32(ptr noundef %769)
  %771 = call i32 @XXH_swap32(i32 noundef %770)
  br label %772

772:                                              ; preds = %768, %765
  %773 = phi i32 [ %767, %765 ], [ %771, %768 ]
  store i32 %773, ptr %106, align 4
  br label %786

774:                                              ; preds = %756
  %775 = load i32, ptr %108, align 4
  %776 = icmp eq i32 %775, 1
  br i1 %776, label %777, label %780

777:                                              ; preds = %774
  %778 = load ptr, ptr %107, align 8
  %779 = load i32, ptr %778, align 4
  br label %784

780:                                              ; preds = %774
  %781 = load ptr, ptr %107, align 8
  %782 = load i32, ptr %781, align 4
  %783 = call i32 @XXH_swap32(i32 noundef %782)
  br label %784

784:                                              ; preds = %780, %777
  %785 = phi i32 [ %779, %777 ], [ %783, %780 ]
  store i32 %785, ptr %106, align 4
  br label %786

786:                                              ; preds = %772, %784
  %787 = load i32, ptr %106, align 4
  %788 = zext i32 %787 to i64
  %789 = mul i64 %788, -7046029288634856825
  %790 = load i64, ptr %119, align 8
  %791 = xor i64 %790, %789
  store i64 %791, ptr %119, align 8
  %792 = load ptr, ptr %124, align 8
  %793 = getelementptr inbounds i8, ptr %792, i64 4
  store ptr %793, ptr %124, align 8
  %794 = load i64, ptr %119, align 8
  %795 = shl i64 %794, 23
  %796 = load i64, ptr %119, align 8
  %797 = lshr i64 %796, 41
  %798 = or i64 %795, %797
  %799 = mul i64 %798, -4417276706812531889
  %800 = add i64 %799, 1609587929392839161
  store i64 %800, ptr %119, align 8
  %801 = load ptr, ptr %124, align 8
  %802 = getelementptr inbounds nuw i8, ptr %801, i32 1
  store ptr %802, ptr %124, align 8
  %803 = load i8, ptr %801, align 1
  %804 = zext i8 %803 to i64
  %805 = mul i64 %804, 2870177450012600261
  %806 = load i64, ptr %119, align 8
  %807 = xor i64 %806, %805
  store i64 %807, ptr %119, align 8
  %808 = load i64, ptr %119, align 8
  %809 = shl i64 %808, 11
  %810 = load i64, ptr %119, align 8
  %811 = lshr i64 %810, 53
  %812 = or i64 %809, %811
  %813 = mul i64 %812, -7046029288634856825
  store i64 %813, ptr %119, align 8
  %814 = load i64, ptr %119, align 8
  %815 = call i64 @XXH64_avalanche(i64 noundef %814)
  store i64 %815, ptr %118, align 8
  br label %1589

816:                                              ; preds = %5
  %817 = load ptr, ptr %124, align 8
  %818 = load i32, ptr %122, align 4
  %819 = load i32, ptr %123, align 4
  store ptr %817, ptr %55, align 8
  store i32 %818, ptr %56, align 4
  store i32 %819, ptr %57, align 4
  %820 = load i32, ptr %57, align 4
  %821 = icmp eq i32 %820, 1
  br i1 %821, label %822, label %834

822:                                              ; preds = %816
  %823 = load i32, ptr %56, align 4
  %824 = icmp eq i32 %823, 1
  br i1 %824, label %825, label %828

825:                                              ; preds = %822
  %826 = load ptr, ptr %55, align 8
  %827 = call i64 @XXH_read64(ptr noundef %826)
  br label %832

828:                                              ; preds = %822
  %829 = load ptr, ptr %55, align 8
  %830 = call i64 @XXH_read64(ptr noundef %829)
  %831 = call i64 @XXH_swap64(i64 noundef %830)
  br label %832

832:                                              ; preds = %828, %825
  %833 = phi i64 [ %827, %825 ], [ %831, %828 ]
  store i64 %833, ptr %54, align 8
  br label %846

834:                                              ; preds = %816
  %835 = load i32, ptr %56, align 4
  %836 = icmp eq i32 %835, 1
  br i1 %836, label %837, label %840

837:                                              ; preds = %834
  %838 = load ptr, ptr %55, align 8
  %839 = load i64, ptr %838, align 8
  br label %844

840:                                              ; preds = %834
  %841 = load ptr, ptr %55, align 8
  %842 = load i64, ptr %841, align 8
  %843 = call i64 @XXH_swap64(i64 noundef %842)
  br label %844

844:                                              ; preds = %840, %837
  %845 = phi i64 [ %839, %837 ], [ %843, %840 ]
  store i64 %845, ptr %54, align 8
  br label %846

846:                                              ; preds = %832, %844
  %847 = load i64, ptr %54, align 8
  %848 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %847)
  store i64 %848, ptr %137, align 8
  %849 = load ptr, ptr %124, align 8
  %850 = getelementptr inbounds i8, ptr %849, i64 8
  store ptr %850, ptr %124, align 8
  %851 = load i64, ptr %137, align 8
  %852 = load i64, ptr %119, align 8
  %853 = xor i64 %852, %851
  store i64 %853, ptr %119, align 8
  %854 = load i64, ptr %119, align 8
  %855 = shl i64 %854, 27
  %856 = load i64, ptr %119, align 8
  %857 = lshr i64 %856, 37
  %858 = or i64 %855, %857
  %859 = mul i64 %858, -7046029288634856825
  %860 = add i64 %859, -8796714831421723037
  store i64 %860, ptr %119, align 8
  br label %861

861:                                              ; preds = %5, %846
  %862 = load ptr, ptr %124, align 8
  %863 = load i32, ptr %122, align 4
  %864 = load i32, ptr %123, align 4
  store ptr %862, ptr %59, align 8
  store i32 %863, ptr %60, align 4
  store i32 %864, ptr %61, align 4
  %865 = load i32, ptr %61, align 4
  %866 = icmp eq i32 %865, 1
  br i1 %866, label %867, label %879

867:                                              ; preds = %861
  %868 = load i32, ptr %60, align 4
  %869 = icmp eq i32 %868, 1
  br i1 %869, label %870, label %873

870:                                              ; preds = %867
  %871 = load ptr, ptr %59, align 8
  %872 = call i64 @XXH_read64(ptr noundef %871)
  br label %877

873:                                              ; preds = %867
  %874 = load ptr, ptr %59, align 8
  %875 = call i64 @XXH_read64(ptr noundef %874)
  %876 = call i64 @XXH_swap64(i64 noundef %875)
  br label %877

877:                                              ; preds = %873, %870
  %878 = phi i64 [ %872, %870 ], [ %876, %873 ]
  store i64 %878, ptr %58, align 8
  br label %891

879:                                              ; preds = %861
  %880 = load i32, ptr %60, align 4
  %881 = icmp eq i32 %880, 1
  br i1 %881, label %882, label %885

882:                                              ; preds = %879
  %883 = load ptr, ptr %59, align 8
  %884 = load i64, ptr %883, align 8
  br label %889

885:                                              ; preds = %879
  %886 = load ptr, ptr %59, align 8
  %887 = load i64, ptr %886, align 8
  %888 = call i64 @XXH_swap64(i64 noundef %887)
  br label %889

889:                                              ; preds = %885, %882
  %890 = phi i64 [ %884, %882 ], [ %888, %885 ]
  store i64 %890, ptr %58, align 8
  br label %891

891:                                              ; preds = %877, %889
  %892 = load i64, ptr %58, align 8
  %893 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %892)
  store i64 %893, ptr %138, align 8
  %894 = load ptr, ptr %124, align 8
  %895 = getelementptr inbounds i8, ptr %894, i64 8
  store ptr %895, ptr %124, align 8
  %896 = load i64, ptr %138, align 8
  %897 = load i64, ptr %119, align 8
  %898 = xor i64 %897, %896
  store i64 %898, ptr %119, align 8
  %899 = load i64, ptr %119, align 8
  %900 = shl i64 %899, 27
  %901 = load i64, ptr %119, align 8
  %902 = lshr i64 %901, 37
  %903 = or i64 %900, %902
  %904 = mul i64 %903, -7046029288634856825
  %905 = add i64 %904, -8796714831421723037
  store i64 %905, ptr %119, align 8
  br label %906

906:                                              ; preds = %5, %891
  %907 = load ptr, ptr %124, align 8
  %908 = load i32, ptr %122, align 4
  %909 = load i32, ptr %123, align 4
  store ptr %907, ptr %63, align 8
  store i32 %908, ptr %64, align 4
  store i32 %909, ptr %65, align 4
  %910 = load i32, ptr %65, align 4
  %911 = icmp eq i32 %910, 1
  br i1 %911, label %912, label %924

912:                                              ; preds = %906
  %913 = load i32, ptr %64, align 4
  %914 = icmp eq i32 %913, 1
  br i1 %914, label %915, label %918

915:                                              ; preds = %912
  %916 = load ptr, ptr %63, align 8
  %917 = call i64 @XXH_read64(ptr noundef %916)
  br label %922

918:                                              ; preds = %912
  %919 = load ptr, ptr %63, align 8
  %920 = call i64 @XXH_read64(ptr noundef %919)
  %921 = call i64 @XXH_swap64(i64 noundef %920)
  br label %922

922:                                              ; preds = %918, %915
  %923 = phi i64 [ %917, %915 ], [ %921, %918 ]
  store i64 %923, ptr %62, align 8
  br label %936

924:                                              ; preds = %906
  %925 = load i32, ptr %64, align 4
  %926 = icmp eq i32 %925, 1
  br i1 %926, label %927, label %930

927:                                              ; preds = %924
  %928 = load ptr, ptr %63, align 8
  %929 = load i64, ptr %928, align 8
  br label %934

930:                                              ; preds = %924
  %931 = load ptr, ptr %63, align 8
  %932 = load i64, ptr %931, align 8
  %933 = call i64 @XXH_swap64(i64 noundef %932)
  br label %934

934:                                              ; preds = %930, %927
  %935 = phi i64 [ %929, %927 ], [ %933, %930 ]
  store i64 %935, ptr %62, align 8
  br label %936

936:                                              ; preds = %922, %934
  %937 = load i64, ptr %62, align 8
  %938 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %937)
  store i64 %938, ptr %139, align 8
  %939 = load ptr, ptr %124, align 8
  %940 = getelementptr inbounds i8, ptr %939, i64 8
  store ptr %940, ptr %124, align 8
  %941 = load i64, ptr %139, align 8
  %942 = load i64, ptr %119, align 8
  %943 = xor i64 %942, %941
  store i64 %943, ptr %119, align 8
  %944 = load i64, ptr %119, align 8
  %945 = shl i64 %944, 27
  %946 = load i64, ptr %119, align 8
  %947 = lshr i64 %946, 37
  %948 = or i64 %945, %947
  %949 = mul i64 %948, -7046029288634856825
  %950 = add i64 %949, -8796714831421723037
  store i64 %950, ptr %119, align 8
  %951 = load ptr, ptr %124, align 8
  %952 = getelementptr inbounds nuw i8, ptr %951, i32 1
  store ptr %952, ptr %124, align 8
  %953 = load i8, ptr %951, align 1
  %954 = zext i8 %953 to i64
  %955 = mul i64 %954, 2870177450012600261
  %956 = load i64, ptr %119, align 8
  %957 = xor i64 %956, %955
  store i64 %957, ptr %119, align 8
  %958 = load i64, ptr %119, align 8
  %959 = shl i64 %958, 11
  %960 = load i64, ptr %119, align 8
  %961 = lshr i64 %960, 53
  %962 = or i64 %959, %961
  %963 = mul i64 %962, -7046029288634856825
  store i64 %963, ptr %119, align 8
  %964 = load ptr, ptr %124, align 8
  %965 = getelementptr inbounds nuw i8, ptr %964, i32 1
  store ptr %965, ptr %124, align 8
  %966 = load i8, ptr %964, align 1
  %967 = zext i8 %966 to i64
  %968 = mul i64 %967, 2870177450012600261
  %969 = load i64, ptr %119, align 8
  %970 = xor i64 %969, %968
  store i64 %970, ptr %119, align 8
  %971 = load i64, ptr %119, align 8
  %972 = shl i64 %971, 11
  %973 = load i64, ptr %119, align 8
  %974 = lshr i64 %973, 53
  %975 = or i64 %972, %974
  %976 = mul i64 %975, -7046029288634856825
  store i64 %976, ptr %119, align 8
  %977 = load i64, ptr %119, align 8
  %978 = call i64 @XXH64_avalanche(i64 noundef %977)
  store i64 %978, ptr %118, align 8
  br label %1589

979:                                              ; preds = %5
  %980 = load ptr, ptr %124, align 8
  %981 = load i32, ptr %122, align 4
  %982 = load i32, ptr %123, align 4
  store ptr %980, ptr %67, align 8
  store i32 %981, ptr %68, align 4
  store i32 %982, ptr %69, align 4
  %983 = load i32, ptr %69, align 4
  %984 = icmp eq i32 %983, 1
  br i1 %984, label %985, label %997

985:                                              ; preds = %979
  %986 = load i32, ptr %68, align 4
  %987 = icmp eq i32 %986, 1
  br i1 %987, label %988, label %991

988:                                              ; preds = %985
  %989 = load ptr, ptr %67, align 8
  %990 = call i64 @XXH_read64(ptr noundef %989)
  br label %995

991:                                              ; preds = %985
  %992 = load ptr, ptr %67, align 8
  %993 = call i64 @XXH_read64(ptr noundef %992)
  %994 = call i64 @XXH_swap64(i64 noundef %993)
  br label %995

995:                                              ; preds = %991, %988
  %996 = phi i64 [ %990, %988 ], [ %994, %991 ]
  store i64 %996, ptr %66, align 8
  br label %1009

997:                                              ; preds = %979
  %998 = load i32, ptr %68, align 4
  %999 = icmp eq i32 %998, 1
  br i1 %999, label %1000, label %1003

1000:                                             ; preds = %997
  %1001 = load ptr, ptr %67, align 8
  %1002 = load i64, ptr %1001, align 8
  br label %1007

1003:                                             ; preds = %997
  %1004 = load ptr, ptr %67, align 8
  %1005 = load i64, ptr %1004, align 8
  %1006 = call i64 @XXH_swap64(i64 noundef %1005)
  br label %1007

1007:                                             ; preds = %1003, %1000
  %1008 = phi i64 [ %1002, %1000 ], [ %1006, %1003 ]
  store i64 %1008, ptr %66, align 8
  br label %1009

1009:                                             ; preds = %995, %1007
  %1010 = load i64, ptr %66, align 8
  %1011 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1010)
  store i64 %1011, ptr %140, align 8
  %1012 = load ptr, ptr %124, align 8
  %1013 = getelementptr inbounds i8, ptr %1012, i64 8
  store ptr %1013, ptr %124, align 8
  %1014 = load i64, ptr %140, align 8
  %1015 = load i64, ptr %119, align 8
  %1016 = xor i64 %1015, %1014
  store i64 %1016, ptr %119, align 8
  %1017 = load i64, ptr %119, align 8
  %1018 = shl i64 %1017, 27
  %1019 = load i64, ptr %119, align 8
  %1020 = lshr i64 %1019, 37
  %1021 = or i64 %1018, %1020
  %1022 = mul i64 %1021, -7046029288634856825
  %1023 = add i64 %1022, -8796714831421723037
  store i64 %1023, ptr %119, align 8
  br label %1024

1024:                                             ; preds = %5, %1009
  %1025 = load ptr, ptr %124, align 8
  %1026 = load i32, ptr %122, align 4
  %1027 = load i32, ptr %123, align 4
  store ptr %1025, ptr %71, align 8
  store i32 %1026, ptr %72, align 4
  store i32 %1027, ptr %73, align 4
  %1028 = load i32, ptr %73, align 4
  %1029 = icmp eq i32 %1028, 1
  br i1 %1029, label %1030, label %1042

1030:                                             ; preds = %1024
  %1031 = load i32, ptr %72, align 4
  %1032 = icmp eq i32 %1031, 1
  br i1 %1032, label %1033, label %1036

1033:                                             ; preds = %1030
  %1034 = load ptr, ptr %71, align 8
  %1035 = call i64 @XXH_read64(ptr noundef %1034)
  br label %1040

1036:                                             ; preds = %1030
  %1037 = load ptr, ptr %71, align 8
  %1038 = call i64 @XXH_read64(ptr noundef %1037)
  %1039 = call i64 @XXH_swap64(i64 noundef %1038)
  br label %1040

1040:                                             ; preds = %1036, %1033
  %1041 = phi i64 [ %1035, %1033 ], [ %1039, %1036 ]
  store i64 %1041, ptr %70, align 8
  br label %1054

1042:                                             ; preds = %1024
  %1043 = load i32, ptr %72, align 4
  %1044 = icmp eq i32 %1043, 1
  br i1 %1044, label %1045, label %1048

1045:                                             ; preds = %1042
  %1046 = load ptr, ptr %71, align 8
  %1047 = load i64, ptr %1046, align 8
  br label %1052

1048:                                             ; preds = %1042
  %1049 = load ptr, ptr %71, align 8
  %1050 = load i64, ptr %1049, align 8
  %1051 = call i64 @XXH_swap64(i64 noundef %1050)
  br label %1052

1052:                                             ; preds = %1048, %1045
  %1053 = phi i64 [ %1047, %1045 ], [ %1051, %1048 ]
  store i64 %1053, ptr %70, align 8
  br label %1054

1054:                                             ; preds = %1040, %1052
  %1055 = load i64, ptr %70, align 8
  %1056 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1055)
  store i64 %1056, ptr %141, align 8
  %1057 = load ptr, ptr %124, align 8
  %1058 = getelementptr inbounds i8, ptr %1057, i64 8
  store ptr %1058, ptr %124, align 8
  %1059 = load i64, ptr %141, align 8
  %1060 = load i64, ptr %119, align 8
  %1061 = xor i64 %1060, %1059
  store i64 %1061, ptr %119, align 8
  %1062 = load i64, ptr %119, align 8
  %1063 = shl i64 %1062, 27
  %1064 = load i64, ptr %119, align 8
  %1065 = lshr i64 %1064, 37
  %1066 = or i64 %1063, %1065
  %1067 = mul i64 %1066, -7046029288634856825
  %1068 = add i64 %1067, -8796714831421723037
  store i64 %1068, ptr %119, align 8
  br label %1069

1069:                                             ; preds = %5, %1054
  %1070 = load ptr, ptr %124, align 8
  %1071 = load i32, ptr %122, align 4
  %1072 = load i32, ptr %123, align 4
  store ptr %1070, ptr %75, align 8
  store i32 %1071, ptr %76, align 4
  store i32 %1072, ptr %77, align 4
  %1073 = load i32, ptr %77, align 4
  %1074 = icmp eq i32 %1073, 1
  br i1 %1074, label %1075, label %1087

1075:                                             ; preds = %1069
  %1076 = load i32, ptr %76, align 4
  %1077 = icmp eq i32 %1076, 1
  br i1 %1077, label %1078, label %1081

1078:                                             ; preds = %1075
  %1079 = load ptr, ptr %75, align 8
  %1080 = call i64 @XXH_read64(ptr noundef %1079)
  br label %1085

1081:                                             ; preds = %1075
  %1082 = load ptr, ptr %75, align 8
  %1083 = call i64 @XXH_read64(ptr noundef %1082)
  %1084 = call i64 @XXH_swap64(i64 noundef %1083)
  br label %1085

1085:                                             ; preds = %1081, %1078
  %1086 = phi i64 [ %1080, %1078 ], [ %1084, %1081 ]
  store i64 %1086, ptr %74, align 8
  br label %1099

1087:                                             ; preds = %1069
  %1088 = load i32, ptr %76, align 4
  %1089 = icmp eq i32 %1088, 1
  br i1 %1089, label %1090, label %1093

1090:                                             ; preds = %1087
  %1091 = load ptr, ptr %75, align 8
  %1092 = load i64, ptr %1091, align 8
  br label %1097

1093:                                             ; preds = %1087
  %1094 = load ptr, ptr %75, align 8
  %1095 = load i64, ptr %1094, align 8
  %1096 = call i64 @XXH_swap64(i64 noundef %1095)
  br label %1097

1097:                                             ; preds = %1093, %1090
  %1098 = phi i64 [ %1092, %1090 ], [ %1096, %1093 ]
  store i64 %1098, ptr %74, align 8
  br label %1099

1099:                                             ; preds = %1085, %1097
  %1100 = load i64, ptr %74, align 8
  %1101 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1100)
  store i64 %1101, ptr %142, align 8
  %1102 = load ptr, ptr %124, align 8
  %1103 = getelementptr inbounds i8, ptr %1102, i64 8
  store ptr %1103, ptr %124, align 8
  %1104 = load i64, ptr %142, align 8
  %1105 = load i64, ptr %119, align 8
  %1106 = xor i64 %1105, %1104
  store i64 %1106, ptr %119, align 8
  %1107 = load i64, ptr %119, align 8
  %1108 = shl i64 %1107, 27
  %1109 = load i64, ptr %119, align 8
  %1110 = lshr i64 %1109, 37
  %1111 = or i64 %1108, %1110
  %1112 = mul i64 %1111, -7046029288634856825
  %1113 = add i64 %1112, -8796714831421723037
  store i64 %1113, ptr %119, align 8
  br label %1114

1114:                                             ; preds = %5, %1099
  %1115 = load ptr, ptr %124, align 8
  %1116 = load i32, ptr %122, align 4
  %1117 = load i32, ptr %123, align 4
  store ptr %1115, ptr %111, align 8
  store i32 %1116, ptr %112, align 4
  store i32 %1117, ptr %113, align 4
  %1118 = load i32, ptr %113, align 4
  %1119 = icmp eq i32 %1118, 1
  br i1 %1119, label %1120, label %1132

1120:                                             ; preds = %1114
  %1121 = load i32, ptr %112, align 4
  %1122 = icmp eq i32 %1121, 1
  br i1 %1122, label %1123, label %1126

1123:                                             ; preds = %1120
  %1124 = load ptr, ptr %111, align 8
  %1125 = call i32 @XXH_read32(ptr noundef %1124)
  br label %1130

1126:                                             ; preds = %1120
  %1127 = load ptr, ptr %111, align 8
  %1128 = call i32 @XXH_read32(ptr noundef %1127)
  %1129 = call i32 @XXH_swap32(i32 noundef %1128)
  br label %1130

1130:                                             ; preds = %1126, %1123
  %1131 = phi i32 [ %1125, %1123 ], [ %1129, %1126 ]
  store i32 %1131, ptr %110, align 4
  br label %1144

1132:                                             ; preds = %1114
  %1133 = load i32, ptr %112, align 4
  %1134 = icmp eq i32 %1133, 1
  br i1 %1134, label %1135, label %1138

1135:                                             ; preds = %1132
  %1136 = load ptr, ptr %111, align 8
  %1137 = load i32, ptr %1136, align 4
  br label %1142

1138:                                             ; preds = %1132
  %1139 = load ptr, ptr %111, align 8
  %1140 = load i32, ptr %1139, align 4
  %1141 = call i32 @XXH_swap32(i32 noundef %1140)
  br label %1142

1142:                                             ; preds = %1138, %1135
  %1143 = phi i32 [ %1137, %1135 ], [ %1141, %1138 ]
  store i32 %1143, ptr %110, align 4
  br label %1144

1144:                                             ; preds = %1130, %1142
  %1145 = load i32, ptr %110, align 4
  %1146 = zext i32 %1145 to i64
  %1147 = mul i64 %1146, -7046029288634856825
  %1148 = load i64, ptr %119, align 8
  %1149 = xor i64 %1148, %1147
  store i64 %1149, ptr %119, align 8
  %1150 = load ptr, ptr %124, align 8
  %1151 = getelementptr inbounds i8, ptr %1150, i64 4
  store ptr %1151, ptr %124, align 8
  %1152 = load i64, ptr %119, align 8
  %1153 = shl i64 %1152, 23
  %1154 = load i64, ptr %119, align 8
  %1155 = lshr i64 %1154, 41
  %1156 = or i64 %1153, %1155
  %1157 = mul i64 %1156, -4417276706812531889
  %1158 = add i64 %1157, 1609587929392839161
  store i64 %1158, ptr %119, align 8
  %1159 = load ptr, ptr %124, align 8
  %1160 = getelementptr inbounds nuw i8, ptr %1159, i32 1
  store ptr %1160, ptr %124, align 8
  %1161 = load i8, ptr %1159, align 1
  %1162 = zext i8 %1161 to i64
  %1163 = mul i64 %1162, 2870177450012600261
  %1164 = load i64, ptr %119, align 8
  %1165 = xor i64 %1164, %1163
  store i64 %1165, ptr %119, align 8
  %1166 = load i64, ptr %119, align 8
  %1167 = shl i64 %1166, 11
  %1168 = load i64, ptr %119, align 8
  %1169 = lshr i64 %1168, 53
  %1170 = or i64 %1167, %1169
  %1171 = mul i64 %1170, -7046029288634856825
  store i64 %1171, ptr %119, align 8
  %1172 = load ptr, ptr %124, align 8
  %1173 = getelementptr inbounds nuw i8, ptr %1172, i32 1
  store ptr %1173, ptr %124, align 8
  %1174 = load i8, ptr %1172, align 1
  %1175 = zext i8 %1174 to i64
  %1176 = mul i64 %1175, 2870177450012600261
  %1177 = load i64, ptr %119, align 8
  %1178 = xor i64 %1177, %1176
  store i64 %1178, ptr %119, align 8
  %1179 = load i64, ptr %119, align 8
  %1180 = shl i64 %1179, 11
  %1181 = load i64, ptr %119, align 8
  %1182 = lshr i64 %1181, 53
  %1183 = or i64 %1180, %1182
  %1184 = mul i64 %1183, -7046029288634856825
  store i64 %1184, ptr %119, align 8
  %1185 = load i64, ptr %119, align 8
  %1186 = call i64 @XXH64_avalanche(i64 noundef %1185)
  store i64 %1186, ptr %118, align 8
  br label %1589

1187:                                             ; preds = %5
  %1188 = load ptr, ptr %124, align 8
  %1189 = load i32, ptr %122, align 4
  %1190 = load i32, ptr %123, align 4
  store ptr %1188, ptr %79, align 8
  store i32 %1189, ptr %80, align 4
  store i32 %1190, ptr %81, align 4
  %1191 = load i32, ptr %81, align 4
  %1192 = icmp eq i32 %1191, 1
  br i1 %1192, label %1193, label %1205

1193:                                             ; preds = %1187
  %1194 = load i32, ptr %80, align 4
  %1195 = icmp eq i32 %1194, 1
  br i1 %1195, label %1196, label %1199

1196:                                             ; preds = %1193
  %1197 = load ptr, ptr %79, align 8
  %1198 = call i64 @XXH_read64(ptr noundef %1197)
  br label %1203

1199:                                             ; preds = %1193
  %1200 = load ptr, ptr %79, align 8
  %1201 = call i64 @XXH_read64(ptr noundef %1200)
  %1202 = call i64 @XXH_swap64(i64 noundef %1201)
  br label %1203

1203:                                             ; preds = %1199, %1196
  %1204 = phi i64 [ %1198, %1196 ], [ %1202, %1199 ]
  store i64 %1204, ptr %78, align 8
  br label %1217

1205:                                             ; preds = %1187
  %1206 = load i32, ptr %80, align 4
  %1207 = icmp eq i32 %1206, 1
  br i1 %1207, label %1208, label %1211

1208:                                             ; preds = %1205
  %1209 = load ptr, ptr %79, align 8
  %1210 = load i64, ptr %1209, align 8
  br label %1215

1211:                                             ; preds = %1205
  %1212 = load ptr, ptr %79, align 8
  %1213 = load i64, ptr %1212, align 8
  %1214 = call i64 @XXH_swap64(i64 noundef %1213)
  br label %1215

1215:                                             ; preds = %1211, %1208
  %1216 = phi i64 [ %1210, %1208 ], [ %1214, %1211 ]
  store i64 %1216, ptr %78, align 8
  br label %1217

1217:                                             ; preds = %1203, %1215
  %1218 = load i64, ptr %78, align 8
  %1219 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1218)
  store i64 %1219, ptr %143, align 8
  %1220 = load ptr, ptr %124, align 8
  %1221 = getelementptr inbounds i8, ptr %1220, i64 8
  store ptr %1221, ptr %124, align 8
  %1222 = load i64, ptr %143, align 8
  %1223 = load i64, ptr %119, align 8
  %1224 = xor i64 %1223, %1222
  store i64 %1224, ptr %119, align 8
  %1225 = load i64, ptr %119, align 8
  %1226 = shl i64 %1225, 27
  %1227 = load i64, ptr %119, align 8
  %1228 = lshr i64 %1227, 37
  %1229 = or i64 %1226, %1228
  %1230 = mul i64 %1229, -7046029288634856825
  %1231 = add i64 %1230, -8796714831421723037
  store i64 %1231, ptr %119, align 8
  br label %1232

1232:                                             ; preds = %5, %1217
  %1233 = load ptr, ptr %124, align 8
  %1234 = load i32, ptr %122, align 4
  %1235 = load i32, ptr %123, align 4
  store ptr %1233, ptr %83, align 8
  store i32 %1234, ptr %84, align 4
  store i32 %1235, ptr %85, align 4
  %1236 = load i32, ptr %85, align 4
  %1237 = icmp eq i32 %1236, 1
  br i1 %1237, label %1238, label %1250

1238:                                             ; preds = %1232
  %1239 = load i32, ptr %84, align 4
  %1240 = icmp eq i32 %1239, 1
  br i1 %1240, label %1241, label %1244

1241:                                             ; preds = %1238
  %1242 = load ptr, ptr %83, align 8
  %1243 = call i64 @XXH_read64(ptr noundef %1242)
  br label %1248

1244:                                             ; preds = %1238
  %1245 = load ptr, ptr %83, align 8
  %1246 = call i64 @XXH_read64(ptr noundef %1245)
  %1247 = call i64 @XXH_swap64(i64 noundef %1246)
  br label %1248

1248:                                             ; preds = %1244, %1241
  %1249 = phi i64 [ %1243, %1241 ], [ %1247, %1244 ]
  store i64 %1249, ptr %82, align 8
  br label %1262

1250:                                             ; preds = %1232
  %1251 = load i32, ptr %84, align 4
  %1252 = icmp eq i32 %1251, 1
  br i1 %1252, label %1253, label %1256

1253:                                             ; preds = %1250
  %1254 = load ptr, ptr %83, align 8
  %1255 = load i64, ptr %1254, align 8
  br label %1260

1256:                                             ; preds = %1250
  %1257 = load ptr, ptr %83, align 8
  %1258 = load i64, ptr %1257, align 8
  %1259 = call i64 @XXH_swap64(i64 noundef %1258)
  br label %1260

1260:                                             ; preds = %1256, %1253
  %1261 = phi i64 [ %1255, %1253 ], [ %1259, %1256 ]
  store i64 %1261, ptr %82, align 8
  br label %1262

1262:                                             ; preds = %1248, %1260
  %1263 = load i64, ptr %82, align 8
  %1264 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1263)
  store i64 %1264, ptr %144, align 8
  %1265 = load ptr, ptr %124, align 8
  %1266 = getelementptr inbounds i8, ptr %1265, i64 8
  store ptr %1266, ptr %124, align 8
  %1267 = load i64, ptr %144, align 8
  %1268 = load i64, ptr %119, align 8
  %1269 = xor i64 %1268, %1267
  store i64 %1269, ptr %119, align 8
  %1270 = load i64, ptr %119, align 8
  %1271 = shl i64 %1270, 27
  %1272 = load i64, ptr %119, align 8
  %1273 = lshr i64 %1272, 37
  %1274 = or i64 %1271, %1273
  %1275 = mul i64 %1274, -7046029288634856825
  %1276 = add i64 %1275, -8796714831421723037
  store i64 %1276, ptr %119, align 8
  br label %1277

1277:                                             ; preds = %5, %1262
  %1278 = load ptr, ptr %124, align 8
  %1279 = load i32, ptr %122, align 4
  %1280 = load i32, ptr %123, align 4
  store ptr %1278, ptr %87, align 8
  store i32 %1279, ptr %88, align 4
  store i32 %1280, ptr %89, align 4
  %1281 = load i32, ptr %89, align 4
  %1282 = icmp eq i32 %1281, 1
  br i1 %1282, label %1283, label %1295

1283:                                             ; preds = %1277
  %1284 = load i32, ptr %88, align 4
  %1285 = icmp eq i32 %1284, 1
  br i1 %1285, label %1286, label %1289

1286:                                             ; preds = %1283
  %1287 = load ptr, ptr %87, align 8
  %1288 = call i64 @XXH_read64(ptr noundef %1287)
  br label %1293

1289:                                             ; preds = %1283
  %1290 = load ptr, ptr %87, align 8
  %1291 = call i64 @XXH_read64(ptr noundef %1290)
  %1292 = call i64 @XXH_swap64(i64 noundef %1291)
  br label %1293

1293:                                             ; preds = %1289, %1286
  %1294 = phi i64 [ %1288, %1286 ], [ %1292, %1289 ]
  store i64 %1294, ptr %86, align 8
  br label %1307

1295:                                             ; preds = %1277
  %1296 = load i32, ptr %88, align 4
  %1297 = icmp eq i32 %1296, 1
  br i1 %1297, label %1298, label %1301

1298:                                             ; preds = %1295
  %1299 = load ptr, ptr %87, align 8
  %1300 = load i64, ptr %1299, align 8
  br label %1305

1301:                                             ; preds = %1295
  %1302 = load ptr, ptr %87, align 8
  %1303 = load i64, ptr %1302, align 8
  %1304 = call i64 @XXH_swap64(i64 noundef %1303)
  br label %1305

1305:                                             ; preds = %1301, %1298
  %1306 = phi i64 [ %1300, %1298 ], [ %1304, %1301 ]
  store i64 %1306, ptr %86, align 8
  br label %1307

1307:                                             ; preds = %1293, %1305
  %1308 = load i64, ptr %86, align 8
  %1309 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1308)
  store i64 %1309, ptr %145, align 8
  %1310 = load ptr, ptr %124, align 8
  %1311 = getelementptr inbounds i8, ptr %1310, i64 8
  store ptr %1311, ptr %124, align 8
  %1312 = load i64, ptr %145, align 8
  %1313 = load i64, ptr %119, align 8
  %1314 = xor i64 %1313, %1312
  store i64 %1314, ptr %119, align 8
  %1315 = load i64, ptr %119, align 8
  %1316 = shl i64 %1315, 27
  %1317 = load i64, ptr %119, align 8
  %1318 = lshr i64 %1317, 37
  %1319 = or i64 %1316, %1318
  %1320 = mul i64 %1319, -7046029288634856825
  %1321 = add i64 %1320, -8796714831421723037
  store i64 %1321, ptr %119, align 8
  %1322 = load ptr, ptr %124, align 8
  %1323 = getelementptr inbounds nuw i8, ptr %1322, i32 1
  store ptr %1323, ptr %124, align 8
  %1324 = load i8, ptr %1322, align 1
  %1325 = zext i8 %1324 to i64
  %1326 = mul i64 %1325, 2870177450012600261
  %1327 = load i64, ptr %119, align 8
  %1328 = xor i64 %1327, %1326
  store i64 %1328, ptr %119, align 8
  %1329 = load i64, ptr %119, align 8
  %1330 = shl i64 %1329, 11
  %1331 = load i64, ptr %119, align 8
  %1332 = lshr i64 %1331, 53
  %1333 = or i64 %1330, %1332
  %1334 = mul i64 %1333, -7046029288634856825
  store i64 %1334, ptr %119, align 8
  %1335 = load ptr, ptr %124, align 8
  %1336 = getelementptr inbounds nuw i8, ptr %1335, i32 1
  store ptr %1336, ptr %124, align 8
  %1337 = load i8, ptr %1335, align 1
  %1338 = zext i8 %1337 to i64
  %1339 = mul i64 %1338, 2870177450012600261
  %1340 = load i64, ptr %119, align 8
  %1341 = xor i64 %1340, %1339
  store i64 %1341, ptr %119, align 8
  %1342 = load i64, ptr %119, align 8
  %1343 = shl i64 %1342, 11
  %1344 = load i64, ptr %119, align 8
  %1345 = lshr i64 %1344, 53
  %1346 = or i64 %1343, %1345
  %1347 = mul i64 %1346, -7046029288634856825
  store i64 %1347, ptr %119, align 8
  %1348 = load ptr, ptr %124, align 8
  %1349 = getelementptr inbounds nuw i8, ptr %1348, i32 1
  store ptr %1349, ptr %124, align 8
  %1350 = load i8, ptr %1348, align 1
  %1351 = zext i8 %1350 to i64
  %1352 = mul i64 %1351, 2870177450012600261
  %1353 = load i64, ptr %119, align 8
  %1354 = xor i64 %1353, %1352
  store i64 %1354, ptr %119, align 8
  %1355 = load i64, ptr %119, align 8
  %1356 = shl i64 %1355, 11
  %1357 = load i64, ptr %119, align 8
  %1358 = lshr i64 %1357, 53
  %1359 = or i64 %1356, %1358
  %1360 = mul i64 %1359, -7046029288634856825
  store i64 %1360, ptr %119, align 8
  %1361 = load i64, ptr %119, align 8
  %1362 = call i64 @XXH64_avalanche(i64 noundef %1361)
  store i64 %1362, ptr %118, align 8
  br label %1589

1363:                                             ; preds = %5
  %1364 = load ptr, ptr %124, align 8
  %1365 = load i32, ptr %122, align 4
  %1366 = load i32, ptr %123, align 4
  store ptr %1364, ptr %91, align 8
  store i32 %1365, ptr %92, align 4
  store i32 %1366, ptr %93, align 4
  %1367 = load i32, ptr %93, align 4
  %1368 = icmp eq i32 %1367, 1
  br i1 %1368, label %1369, label %1381

1369:                                             ; preds = %1363
  %1370 = load i32, ptr %92, align 4
  %1371 = icmp eq i32 %1370, 1
  br i1 %1371, label %1372, label %1375

1372:                                             ; preds = %1369
  %1373 = load ptr, ptr %91, align 8
  %1374 = call i64 @XXH_read64(ptr noundef %1373)
  br label %1379

1375:                                             ; preds = %1369
  %1376 = load ptr, ptr %91, align 8
  %1377 = call i64 @XXH_read64(ptr noundef %1376)
  %1378 = call i64 @XXH_swap64(i64 noundef %1377)
  br label %1379

1379:                                             ; preds = %1375, %1372
  %1380 = phi i64 [ %1374, %1372 ], [ %1378, %1375 ]
  store i64 %1380, ptr %90, align 8
  br label %1393

1381:                                             ; preds = %1363
  %1382 = load i32, ptr %92, align 4
  %1383 = icmp eq i32 %1382, 1
  br i1 %1383, label %1384, label %1387

1384:                                             ; preds = %1381
  %1385 = load ptr, ptr %91, align 8
  %1386 = load i64, ptr %1385, align 8
  br label %1391

1387:                                             ; preds = %1381
  %1388 = load ptr, ptr %91, align 8
  %1389 = load i64, ptr %1388, align 8
  %1390 = call i64 @XXH_swap64(i64 noundef %1389)
  br label %1391

1391:                                             ; preds = %1387, %1384
  %1392 = phi i64 [ %1386, %1384 ], [ %1390, %1387 ]
  store i64 %1392, ptr %90, align 8
  br label %1393

1393:                                             ; preds = %1379, %1391
  %1394 = load i64, ptr %90, align 8
  %1395 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1394)
  store i64 %1395, ptr %146, align 8
  %1396 = load ptr, ptr %124, align 8
  %1397 = getelementptr inbounds i8, ptr %1396, i64 8
  store ptr %1397, ptr %124, align 8
  %1398 = load i64, ptr %146, align 8
  %1399 = load i64, ptr %119, align 8
  %1400 = xor i64 %1399, %1398
  store i64 %1400, ptr %119, align 8
  %1401 = load i64, ptr %119, align 8
  %1402 = shl i64 %1401, 27
  %1403 = load i64, ptr %119, align 8
  %1404 = lshr i64 %1403, 37
  %1405 = or i64 %1402, %1404
  %1406 = mul i64 %1405, -7046029288634856825
  %1407 = add i64 %1406, -8796714831421723037
  store i64 %1407, ptr %119, align 8
  br label %1408

1408:                                             ; preds = %5, %1393
  %1409 = load ptr, ptr %124, align 8
  %1410 = load i32, ptr %122, align 4
  %1411 = load i32, ptr %123, align 4
  store ptr %1409, ptr %95, align 8
  store i32 %1410, ptr %96, align 4
  store i32 %1411, ptr %97, align 4
  %1412 = load i32, ptr %97, align 4
  %1413 = icmp eq i32 %1412, 1
  br i1 %1413, label %1414, label %1426

1414:                                             ; preds = %1408
  %1415 = load i32, ptr %96, align 4
  %1416 = icmp eq i32 %1415, 1
  br i1 %1416, label %1417, label %1420

1417:                                             ; preds = %1414
  %1418 = load ptr, ptr %95, align 8
  %1419 = call i64 @XXH_read64(ptr noundef %1418)
  br label %1424

1420:                                             ; preds = %1414
  %1421 = load ptr, ptr %95, align 8
  %1422 = call i64 @XXH_read64(ptr noundef %1421)
  %1423 = call i64 @XXH_swap64(i64 noundef %1422)
  br label %1424

1424:                                             ; preds = %1420, %1417
  %1425 = phi i64 [ %1419, %1417 ], [ %1423, %1420 ]
  store i64 %1425, ptr %94, align 8
  br label %1438

1426:                                             ; preds = %1408
  %1427 = load i32, ptr %96, align 4
  %1428 = icmp eq i32 %1427, 1
  br i1 %1428, label %1429, label %1432

1429:                                             ; preds = %1426
  %1430 = load ptr, ptr %95, align 8
  %1431 = load i64, ptr %1430, align 8
  br label %1436

1432:                                             ; preds = %1426
  %1433 = load ptr, ptr %95, align 8
  %1434 = load i64, ptr %1433, align 8
  %1435 = call i64 @XXH_swap64(i64 noundef %1434)
  br label %1436

1436:                                             ; preds = %1432, %1429
  %1437 = phi i64 [ %1431, %1429 ], [ %1435, %1432 ]
  store i64 %1437, ptr %94, align 8
  br label %1438

1438:                                             ; preds = %1424, %1436
  %1439 = load i64, ptr %94, align 8
  %1440 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1439)
  store i64 %1440, ptr %147, align 8
  %1441 = load ptr, ptr %124, align 8
  %1442 = getelementptr inbounds i8, ptr %1441, i64 8
  store ptr %1442, ptr %124, align 8
  %1443 = load i64, ptr %147, align 8
  %1444 = load i64, ptr %119, align 8
  %1445 = xor i64 %1444, %1443
  store i64 %1445, ptr %119, align 8
  %1446 = load i64, ptr %119, align 8
  %1447 = shl i64 %1446, 27
  %1448 = load i64, ptr %119, align 8
  %1449 = lshr i64 %1448, 37
  %1450 = or i64 %1447, %1449
  %1451 = mul i64 %1450, -7046029288634856825
  %1452 = add i64 %1451, -8796714831421723037
  store i64 %1452, ptr %119, align 8
  br label %1453

1453:                                             ; preds = %5, %1438
  %1454 = load ptr, ptr %124, align 8
  %1455 = load i32, ptr %122, align 4
  %1456 = load i32, ptr %123, align 4
  store ptr %1454, ptr %99, align 8
  store i32 %1455, ptr %100, align 4
  store i32 %1456, ptr %101, align 4
  %1457 = load i32, ptr %101, align 4
  %1458 = icmp eq i32 %1457, 1
  br i1 %1458, label %1459, label %1471

1459:                                             ; preds = %1453
  %1460 = load i32, ptr %100, align 4
  %1461 = icmp eq i32 %1460, 1
  br i1 %1461, label %1462, label %1465

1462:                                             ; preds = %1459
  %1463 = load ptr, ptr %99, align 8
  %1464 = call i64 @XXH_read64(ptr noundef %1463)
  br label %1469

1465:                                             ; preds = %1459
  %1466 = load ptr, ptr %99, align 8
  %1467 = call i64 @XXH_read64(ptr noundef %1466)
  %1468 = call i64 @XXH_swap64(i64 noundef %1467)
  br label %1469

1469:                                             ; preds = %1465, %1462
  %1470 = phi i64 [ %1464, %1462 ], [ %1468, %1465 ]
  store i64 %1470, ptr %98, align 8
  br label %1483

1471:                                             ; preds = %1453
  %1472 = load i32, ptr %100, align 4
  %1473 = icmp eq i32 %1472, 1
  br i1 %1473, label %1474, label %1477

1474:                                             ; preds = %1471
  %1475 = load ptr, ptr %99, align 8
  %1476 = load i64, ptr %1475, align 8
  br label %1481

1477:                                             ; preds = %1471
  %1478 = load ptr, ptr %99, align 8
  %1479 = load i64, ptr %1478, align 8
  %1480 = call i64 @XXH_swap64(i64 noundef %1479)
  br label %1481

1481:                                             ; preds = %1477, %1474
  %1482 = phi i64 [ %1476, %1474 ], [ %1480, %1477 ]
  store i64 %1482, ptr %98, align 8
  br label %1483

1483:                                             ; preds = %1469, %1481
  %1484 = load i64, ptr %98, align 8
  %1485 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1484)
  store i64 %1485, ptr %148, align 8
  %1486 = load ptr, ptr %124, align 8
  %1487 = getelementptr inbounds i8, ptr %1486, i64 8
  store ptr %1487, ptr %124, align 8
  %1488 = load i64, ptr %148, align 8
  %1489 = load i64, ptr %119, align 8
  %1490 = xor i64 %1489, %1488
  store i64 %1490, ptr %119, align 8
  %1491 = load i64, ptr %119, align 8
  %1492 = shl i64 %1491, 27
  %1493 = load i64, ptr %119, align 8
  %1494 = lshr i64 %1493, 37
  %1495 = or i64 %1492, %1494
  %1496 = mul i64 %1495, -7046029288634856825
  %1497 = add i64 %1496, -8796714831421723037
  store i64 %1497, ptr %119, align 8
  br label %1498

1498:                                             ; preds = %5, %1483
  %1499 = load ptr, ptr %124, align 8
  %1500 = load i32, ptr %122, align 4
  %1501 = load i32, ptr %123, align 4
  store ptr %1499, ptr %115, align 8
  store i32 %1500, ptr %116, align 4
  store i32 %1501, ptr %117, align 4
  %1502 = load i32, ptr %117, align 4
  %1503 = icmp eq i32 %1502, 1
  br i1 %1503, label %1504, label %1516

1504:                                             ; preds = %1498
  %1505 = load i32, ptr %116, align 4
  %1506 = icmp eq i32 %1505, 1
  br i1 %1506, label %1507, label %1510

1507:                                             ; preds = %1504
  %1508 = load ptr, ptr %115, align 8
  %1509 = call i32 @XXH_read32(ptr noundef %1508)
  br label %1514

1510:                                             ; preds = %1504
  %1511 = load ptr, ptr %115, align 8
  %1512 = call i32 @XXH_read32(ptr noundef %1511)
  %1513 = call i32 @XXH_swap32(i32 noundef %1512)
  br label %1514

1514:                                             ; preds = %1510, %1507
  %1515 = phi i32 [ %1509, %1507 ], [ %1513, %1510 ]
  store i32 %1515, ptr %114, align 4
  br label %1528

1516:                                             ; preds = %1498
  %1517 = load i32, ptr %116, align 4
  %1518 = icmp eq i32 %1517, 1
  br i1 %1518, label %1519, label %1522

1519:                                             ; preds = %1516
  %1520 = load ptr, ptr %115, align 8
  %1521 = load i32, ptr %1520, align 4
  br label %1526

1522:                                             ; preds = %1516
  %1523 = load ptr, ptr %115, align 8
  %1524 = load i32, ptr %1523, align 4
  %1525 = call i32 @XXH_swap32(i32 noundef %1524)
  br label %1526

1526:                                             ; preds = %1522, %1519
  %1527 = phi i32 [ %1521, %1519 ], [ %1525, %1522 ]
  store i32 %1527, ptr %114, align 4
  br label %1528

1528:                                             ; preds = %1514, %1526
  %1529 = load i32, ptr %114, align 4
  %1530 = zext i32 %1529 to i64
  %1531 = mul i64 %1530, -7046029288634856825
  %1532 = load i64, ptr %119, align 8
  %1533 = xor i64 %1532, %1531
  store i64 %1533, ptr %119, align 8
  %1534 = load ptr, ptr %124, align 8
  %1535 = getelementptr inbounds i8, ptr %1534, i64 4
  store ptr %1535, ptr %124, align 8
  %1536 = load i64, ptr %119, align 8
  %1537 = shl i64 %1536, 23
  %1538 = load i64, ptr %119, align 8
  %1539 = lshr i64 %1538, 41
  %1540 = or i64 %1537, %1539
  %1541 = mul i64 %1540, -4417276706812531889
  %1542 = add i64 %1541, 1609587929392839161
  store i64 %1542, ptr %119, align 8
  br label %1543

1543:                                             ; preds = %5, %1528
  %1544 = load ptr, ptr %124, align 8
  %1545 = getelementptr inbounds nuw i8, ptr %1544, i32 1
  store ptr %1545, ptr %124, align 8
  %1546 = load i8, ptr %1544, align 1
  %1547 = zext i8 %1546 to i64
  %1548 = mul i64 %1547, 2870177450012600261
  %1549 = load i64, ptr %119, align 8
  %1550 = xor i64 %1549, %1548
  store i64 %1550, ptr %119, align 8
  %1551 = load i64, ptr %119, align 8
  %1552 = shl i64 %1551, 11
  %1553 = load i64, ptr %119, align 8
  %1554 = lshr i64 %1553, 53
  %1555 = or i64 %1552, %1554
  %1556 = mul i64 %1555, -7046029288634856825
  store i64 %1556, ptr %119, align 8
  br label %1557

1557:                                             ; preds = %5, %1543
  %1558 = load ptr, ptr %124, align 8
  %1559 = getelementptr inbounds nuw i8, ptr %1558, i32 1
  store ptr %1559, ptr %124, align 8
  %1560 = load i8, ptr %1558, align 1
  %1561 = zext i8 %1560 to i64
  %1562 = mul i64 %1561, 2870177450012600261
  %1563 = load i64, ptr %119, align 8
  %1564 = xor i64 %1563, %1562
  store i64 %1564, ptr %119, align 8
  %1565 = load i64, ptr %119, align 8
  %1566 = shl i64 %1565, 11
  %1567 = load i64, ptr %119, align 8
  %1568 = lshr i64 %1567, 53
  %1569 = or i64 %1566, %1568
  %1570 = mul i64 %1569, -7046029288634856825
  store i64 %1570, ptr %119, align 8
  br label %1571

1571:                                             ; preds = %5, %1557
  %1572 = load ptr, ptr %124, align 8
  %1573 = getelementptr inbounds nuw i8, ptr %1572, i32 1
  store ptr %1573, ptr %124, align 8
  %1574 = load i8, ptr %1572, align 1
  %1575 = zext i8 %1574 to i64
  %1576 = mul i64 %1575, 2870177450012600261
  %1577 = load i64, ptr %119, align 8
  %1578 = xor i64 %1577, %1576
  store i64 %1578, ptr %119, align 8
  %1579 = load i64, ptr %119, align 8
  %1580 = shl i64 %1579, 11
  %1581 = load i64, ptr %119, align 8
  %1582 = lshr i64 %1581, 53
  %1583 = or i64 %1580, %1582
  %1584 = mul i64 %1583, -7046029288634856825
  store i64 %1584, ptr %119, align 8
  br label %1585

1585:                                             ; preds = %5, %1571
  %1586 = load i64, ptr %119, align 8
  %1587 = call i64 @XXH64_avalanche(i64 noundef %1586)
  store i64 %1587, ptr %118, align 8
  br label %1589

1588:                                             ; preds = %5
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 851, ptr noundef @__PRETTY_FUNCTION__.XXH64_finalize) #10
  unreachable

1589:                                             ; preds = %1585, %1307, %1144, %936, %786, %591, %454, %272
  %1590 = load i64, ptr %118, align 8
  ret i64 %1590
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
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 16
  %18 = alloca i64, align 8
  %19 = alloca <2 x i64>, align 16
  %20 = alloca <2 x i64>, align 16
  %21 = alloca <2 x i64>, align 16
  %22 = alloca <2 x i64>, align 16
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  store ptr %0, ptr %23, align 8
  store ptr %1, ptr %24, align 8
  store i64 %2, ptr %25, align 8
  store i64 1024, ptr %26, align 8
  %31 = load i64, ptr %25, align 8
  %32 = udiv i64 %31, 1024
  store i64 %32, ptr %27, align 8
  store i64 0, ptr %28, align 8
  br label %33

33:                                               ; preds = %44, %3
  %34 = load i64, ptr %28, align 8
  %35 = load i64, ptr %27, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load ptr, ptr %23, align 8
  %39 = load ptr, ptr %24, align 8
  %40 = load i64, ptr %28, align 8
  %41 = mul i64 %40, 1024
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 %41
  call void @XXH3_accumulate(ptr noundef %38, ptr noundef %42, ptr noundef @kKey, i64 noundef 16)
  %43 = load ptr, ptr %23, align 8
  call void @XXH3_scrambleAcc(ptr noundef %43, ptr noundef getelementptr inbounds nuw (i32, ptr @kKey, i64 32))
  br label %44

44:                                               ; preds = %37
  %45 = load i64, ptr %28, align 8
  %46 = add i64 %45, 1
  store i64 %46, ptr %28, align 8
  br label %33

47:                                               ; preds = %33
  %48 = load i64, ptr %25, align 8
  %49 = urem i64 %48, 1024
  %50 = udiv i64 %49, 64
  store i64 %50, ptr %29, align 8
  %51 = load ptr, ptr %23, align 8
  %52 = load ptr, ptr %24, align 8
  %53 = load i64, ptr %27, align 8
  %54 = mul i64 %53, 1024
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 %54
  %56 = load i64, ptr %29, align 8
  call void @XXH3_accumulate(ptr noundef %51, ptr noundef %55, ptr noundef @kKey, i64 noundef %56)
  %57 = load i64, ptr %25, align 8
  %58 = and i64 %57, 63
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %121

60:                                               ; preds = %47
  %61 = load ptr, ptr %24, align 8
  %62 = load i64, ptr %25, align 8
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 %62
  %64 = getelementptr inbounds i8, ptr %63, i64 -64
  store ptr %64, ptr %30, align 8
  %65 = load ptr, ptr %23, align 8
  %66 = load ptr, ptr %30, align 8
  %67 = load i64, ptr %29, align 8
  %68 = mul i64 %67, 2
  %69 = getelementptr inbounds nuw i32, ptr @kKey, i64 %68
  store ptr %65, ptr %12, align 8
  store ptr %66, ptr %13, align 8
  store ptr %69, ptr %14, align 8
  %70 = load ptr, ptr %12, align 8
  store ptr %70, ptr %15, align 8
  %71 = load ptr, ptr %13, align 8
  store ptr %71, ptr %16, align 8
  %72 = load ptr, ptr %14, align 8
  store ptr %72, ptr %17, align 16
  store i64 0, ptr %18, align 8
  br label %73

73:                                               ; preds = %76, %60
  %74 = load i64, ptr %18, align 8
  %75 = icmp ult i64 %74, 4
  br i1 %75, label %76, label %120

76:                                               ; preds = %73
  %77 = load ptr, ptr %16, align 8
  %78 = load i64, ptr %18, align 8
  %79 = getelementptr inbounds nuw <2 x i64>, ptr %77, i64 %78
  store ptr %79, ptr %10, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = load <2 x i64>, ptr %80, align 1
  store <2 x i64> %81, ptr %19, align 16
  %82 = load ptr, ptr %17, align 16
  %83 = load i64, ptr %18, align 8
  %84 = getelementptr inbounds nuw <2 x i64>, ptr %82, i64 %83
  store ptr %84, ptr %11, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = load <2 x i64>, ptr %85, align 1
  store <2 x i64> %86, ptr %20, align 16
  %87 = load <2 x i64>, ptr %19, align 16
  %88 = load <2 x i64>, ptr %20, align 16
  store <2 x i64> %87, ptr %6, align 16
  store <2 x i64> %88, ptr %7, align 16
  %89 = load <2 x i64>, ptr %6, align 16
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = load <2 x i64>, ptr %7, align 16
  %92 = bitcast <2 x i64> %91 to <4 x i32>
  %93 = add <4 x i32> %90, %92
  %94 = bitcast <4 x i32> %93 to <2 x i64>
  store <2 x i64> %94, ptr %21, align 16
  %95 = load <2 x i64>, ptr %21, align 16
  %96 = load <2 x i64>, ptr %21, align 16
  %97 = bitcast <2 x i64> %96 to <4 x i32>
  %98 = shufflevector <4 x i32> %97, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %99 = bitcast <4 x i32> %98 to <2 x i64>
  store <2 x i64> %95, ptr %8, align 16
  store <2 x i64> %99, ptr %9, align 16
  %100 = load <2 x i64>, ptr %8, align 16
  %101 = bitcast <2 x i64> %100 to <4 x i32>
  %102 = load <2 x i64>, ptr %9, align 16
  %103 = bitcast <2 x i64> %102 to <4 x i32>
  %104 = and <2 x i64> %100, splat (i64 4294967295)
  %105 = and <2 x i64> %102, splat (i64 4294967295)
  %106 = mul <2 x i64> %104, %105
  store <2 x i64> %106, ptr %22, align 16
  %107 = load <2 x i64>, ptr %22, align 16
  %108 = load ptr, ptr %15, align 8
  %109 = load i64, ptr %18, align 8
  %110 = getelementptr inbounds nuw <2 x i64>, ptr %108, i64 %109
  %111 = load <2 x i64>, ptr %110, align 16
  store <2 x i64> %107, ptr %4, align 16
  store <2 x i64> %111, ptr %5, align 16
  %112 = load <2 x i64>, ptr %4, align 16
  %113 = load <2 x i64>, ptr %5, align 16
  %114 = add <2 x i64> %112, %113
  %115 = load ptr, ptr %15, align 8
  %116 = load i64, ptr %18, align 8
  %117 = getelementptr inbounds nuw <2 x i64>, ptr %115, i64 %116
  store <2 x i64> %114, ptr %117, align 16
  %118 = load i64, ptr %18, align 8
  %119 = add i64 %118, 1
  store i64 %119, ptr %18, align 8
  br label %73

120:                                              ; preds = %73
  br label %121

121:                                              ; preds = %120, %47
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_merge64B(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %12, align 8
  store ptr %1, ptr %13, align 8
  store i64 %2, ptr %14, align 8
  %17 = load ptr, ptr %13, align 8
  store ptr %17, ptr %15, align 8
  %18 = load i64, ptr %14, align 8
  store i64 %18, ptr %16, align 8
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  %21 = load ptr, ptr %15, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 0
  store ptr %20, ptr %4, align 8
  store ptr %22, ptr %5, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = call i64 @XXH_read64(ptr noundef %23)
  %25 = load ptr, ptr %5, align 8
  %26 = load i64, ptr %25, align 8
  %27 = xor i64 %24, %26
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  %30 = call i64 @XXH_read64(ptr noundef %29)
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds i64, ptr %31, i64 1
  %33 = load i64, ptr %32, align 8
  %34 = xor i64 %30, %33
  %35 = call i64 @XXH3_mul128(i64 noundef %27, i64 noundef %34)
  %36 = load i64, ptr %16, align 8
  %37 = add i64 %36, %35
  store i64 %37, ptr %16, align 8
  %38 = load ptr, ptr %12, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 2
  %40 = load ptr, ptr %15, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 2
  store ptr %39, ptr %6, align 8
  store ptr %41, ptr %7, align 8
  %42 = load ptr, ptr %6, align 8
  %43 = call i64 @XXH_read64(ptr noundef %42)
  %44 = load ptr, ptr %7, align 8
  %45 = load i64, ptr %44, align 8
  %46 = xor i64 %43, %45
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %49 = call i64 @XXH_read64(ptr noundef %48)
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds i64, ptr %50, i64 1
  %52 = load i64, ptr %51, align 8
  %53 = xor i64 %49, %52
  %54 = call i64 @XXH3_mul128(i64 noundef %46, i64 noundef %53)
  %55 = load i64, ptr %16, align 8
  %56 = add i64 %55, %54
  store i64 %56, ptr %16, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 4
  %59 = load ptr, ptr %15, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 4
  store ptr %58, ptr %8, align 8
  store ptr %60, ptr %9, align 8
  %61 = load ptr, ptr %8, align 8
  %62 = call i64 @XXH_read64(ptr noundef %61)
  %63 = load ptr, ptr %9, align 8
  %64 = load i64, ptr %63, align 8
  %65 = xor i64 %62, %64
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  %68 = call i64 @XXH_read64(ptr noundef %67)
  %69 = load ptr, ptr %9, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  %71 = load i64, ptr %70, align 8
  %72 = xor i64 %68, %71
  %73 = call i64 @XXH3_mul128(i64 noundef %65, i64 noundef %72)
  %74 = load i64, ptr %16, align 8
  %75 = add i64 %74, %73
  store i64 %75, ptr %16, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 6
  %78 = load ptr, ptr %15, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 6
  store ptr %77, ptr %10, align 8
  store ptr %79, ptr %11, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = call i64 @XXH_read64(ptr noundef %80)
  %82 = load ptr, ptr %11, align 8
  %83 = load i64, ptr %82, align 8
  %84 = xor i64 %81, %83
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds i8, ptr %85, i64 8
  %87 = call i64 @XXH_read64(ptr noundef %86)
  %88 = load ptr, ptr %11, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = xor i64 %87, %90
  %92 = call i64 @XXH3_mul128(i64 noundef %84, i64 noundef %91)
  %93 = load i64, ptr %16, align 8
  %94 = add i64 %93, %92
  store i64 %94, ptr %16, align 8
  %95 = load i64, ptr %16, align 8
  %96 = call i64 @XXH64_avalanche2(i64 noundef %95)
  ret i64 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_accumulate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #6 {
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <2 x i64>, align 16
  %7 = alloca <2 x i64>, align 16
  %8 = alloca <2 x i64>, align 16
  %9 = alloca <2 x i64>, align 16
  %10 = alloca <2 x i64>, align 16
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 16
  %19 = alloca i64, align 8
  %20 = alloca <2 x i64>, align 16
  %21 = alloca <2 x i64>, align 16
  %22 = alloca <2 x i64>, align 16
  %23 = alloca <2 x i64>, align 16
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store ptr %0, ptr %24, align 8
  store ptr %1, ptr %25, align 8
  store ptr %2, ptr %26, align 8
  store i64 %3, ptr %27, align 8
  store i64 0, ptr %28, align 8
  br label %29

29:                                               ; preds = %93, %4
  %30 = load i64, ptr %28, align 8
  %31 = load i64, ptr %27, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %96

33:                                               ; preds = %29
  %34 = load ptr, ptr %24, align 8
  %35 = load ptr, ptr %25, align 8
  %36 = load i64, ptr %28, align 8
  %37 = mul i64 %36, 64
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 %37
  %39 = load ptr, ptr %26, align 8
  store ptr %34, ptr %13, align 8
  store ptr %38, ptr %14, align 8
  store ptr %39, ptr %15, align 8
  %40 = load ptr, ptr %13, align 8
  store ptr %40, ptr %16, align 8
  %41 = load ptr, ptr %14, align 8
  store ptr %41, ptr %17, align 8
  %42 = load ptr, ptr %15, align 8
  store ptr %42, ptr %18, align 16
  store i64 0, ptr %19, align 8
  br label %43

43:                                               ; preds = %46, %33
  %44 = load i64, ptr %19, align 8
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %90

46:                                               ; preds = %43
  %47 = load ptr, ptr %17, align 8
  %48 = load i64, ptr %19, align 8
  %49 = getelementptr inbounds nuw <2 x i64>, ptr %47, i64 %48
  store ptr %49, ptr %11, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = load <2 x i64>, ptr %50, align 1
  store <2 x i64> %51, ptr %20, align 16
  %52 = load ptr, ptr %18, align 16
  %53 = load i64, ptr %19, align 8
  %54 = getelementptr inbounds nuw <2 x i64>, ptr %52, i64 %53
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = load <2 x i64>, ptr %55, align 1
  store <2 x i64> %56, ptr %21, align 16
  %57 = load <2 x i64>, ptr %20, align 16
  %58 = load <2 x i64>, ptr %21, align 16
  store <2 x i64> %57, ptr %7, align 16
  store <2 x i64> %58, ptr %8, align 16
  %59 = load <2 x i64>, ptr %7, align 16
  %60 = bitcast <2 x i64> %59 to <4 x i32>
  %61 = load <2 x i64>, ptr %8, align 16
  %62 = bitcast <2 x i64> %61 to <4 x i32>
  %63 = add <4 x i32> %60, %62
  %64 = bitcast <4 x i32> %63 to <2 x i64>
  store <2 x i64> %64, ptr %22, align 16
  %65 = load <2 x i64>, ptr %22, align 16
  %66 = load <2 x i64>, ptr %22, align 16
  %67 = bitcast <2 x i64> %66 to <4 x i32>
  %68 = shufflevector <4 x i32> %67, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %69 = bitcast <4 x i32> %68 to <2 x i64>
  store <2 x i64> %65, ptr %9, align 16
  store <2 x i64> %69, ptr %10, align 16
  %70 = load <2 x i64>, ptr %9, align 16
  %71 = bitcast <2 x i64> %70 to <4 x i32>
  %72 = load <2 x i64>, ptr %10, align 16
  %73 = bitcast <2 x i64> %72 to <4 x i32>
  %74 = and <2 x i64> %70, splat (i64 4294967295)
  %75 = and <2 x i64> %72, splat (i64 4294967295)
  %76 = mul <2 x i64> %74, %75
  store <2 x i64> %76, ptr %23, align 16
  %77 = load <2 x i64>, ptr %23, align 16
  %78 = load ptr, ptr %16, align 8
  %79 = load i64, ptr %19, align 8
  %80 = getelementptr inbounds nuw <2 x i64>, ptr %78, i64 %79
  %81 = load <2 x i64>, ptr %80, align 16
  store <2 x i64> %77, ptr %5, align 16
  store <2 x i64> %81, ptr %6, align 16
  %82 = load <2 x i64>, ptr %5, align 16
  %83 = load <2 x i64>, ptr %6, align 16
  %84 = add <2 x i64> %82, %83
  %85 = load ptr, ptr %16, align 8
  %86 = load i64, ptr %19, align 8
  %87 = getelementptr inbounds nuw <2 x i64>, ptr %85, i64 %86
  store <2 x i64> %84, ptr %87, align 16
  %88 = load i64, ptr %19, align 8
  %89 = add i64 %88, 1
  store i64 %89, ptr %19, align 8
  br label %43

90:                                               ; preds = %43
  %91 = load ptr, ptr %26, align 8
  %92 = getelementptr inbounds i32, ptr %91, i64 2
  store ptr %92, ptr %26, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i64, ptr %28, align 8
  %95 = add i64 %94, 1
  store i64 %95, ptr %28, align 8
  br label %29

96:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_scrambleAcc(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <1 x i64>, align 8
  %7 = alloca <1 x i64>, align 8
  %8 = alloca <1 x i64>, align 8
  %9 = alloca <1 x i64>, align 8
  %10 = alloca <2 x i64>, align 16
  %11 = alloca <2 x i64>, align 16
  %12 = alloca <2 x i64>, align 16
  %13 = alloca <2 x i64>, align 16
  %14 = alloca ptr, align 8
  %15 = alloca <2 x i64>, align 16
  %16 = alloca <2 x i64>, align 16
  %17 = alloca <2 x i64>, align 16
  %18 = alloca <2 x i64>, align 16
  %19 = alloca <2 x i64>, align 16
  %20 = alloca <2 x i64>, align 16
  %21 = alloca <2 x i64>, align 16
  %22 = alloca i32, align 4
  %23 = alloca <1 x i64>, align 8
  %24 = alloca <1 x i64>, align 8
  %25 = alloca <1 x i64>, align 8
  %26 = alloca <1 x i64>, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca <2 x i64>, align 16
  %32 = alloca <1 x i64>, align 8
  %33 = alloca i64, align 8
  %34 = alloca <2 x i64>, align 16
  %35 = alloca <2 x i64>, align 16
  %36 = alloca <2 x i64>, align 16
  %37 = alloca <2 x i64>, align 16
  %38 = alloca <2 x i64>, align 16
  %39 = alloca <2 x i64>, align 16
  %40 = alloca <2 x i64>, align 16
  store ptr %0, ptr %27, align 8
  store ptr %1, ptr %28, align 8
  %41 = load ptr, ptr %27, align 8
  store ptr %41, ptr %29, align 8
  %42 = load ptr, ptr %28, align 8
  store ptr %42, ptr %30, align 8
  store <1 x i64> splat (i64 2870177450012600261), ptr %32, align 8
  %43 = load double, ptr %32, align 8
  store double %43, ptr %23, align 8
  %44 = load <1 x i64>, ptr %23, align 8
  store <1 x i64> %44, ptr %24, align 8
  %45 = load <1 x i64>, ptr %24, align 8
  %46 = load <1 x i64>, ptr %24, align 8
  store <1 x i64> %45, ptr %25, align 8
  %47 = load double, ptr %25, align 8
  store <1 x i64> %46, ptr %26, align 8
  %48 = load double, ptr %26, align 8
  store double %47, ptr %6, align 8
  %49 = load <1 x i64>, ptr %6, align 8
  store double %48, ptr %7, align 8
  %50 = load <1 x i64>, ptr %7, align 8
  store <1 x i64> %49, ptr %8, align 8
  store <1 x i64> %50, ptr %9, align 8
  %51 = load <1 x i64>, ptr %8, align 8
  %52 = extractelement <1 x i64> %51, i32 0
  %53 = load <1 x i64>, ptr %9, align 8
  %54 = extractelement <1 x i64> %53, i32 0
  store i64 %52, ptr %3, align 8
  store i64 %54, ptr %4, align 8
  %55 = load i64, ptr %4, align 8
  %56 = insertelement <2 x i64> poison, i64 %55, i32 0
  %57 = load i64, ptr %3, align 8
  %58 = insertelement <2 x i64> %56, i64 %57, i32 1
  store <2 x i64> %58, ptr %5, align 16
  %59 = load <2 x i64>, ptr %5, align 16
  store <2 x i64> %59, ptr %31, align 16
  store i64 0, ptr %33, align 8
  br label %60

60:                                               ; preds = %121, %2
  %61 = load i64, ptr %33, align 8
  %62 = icmp ult i64 %61, 4
  br i1 %62, label %63, label %124

63:                                               ; preds = %60
  %64 = load ptr, ptr %29, align 8
  %65 = load i64, ptr %33, align 8
  %66 = getelementptr inbounds nuw <2 x i64>, ptr %64, i64 %65
  %67 = load <2 x i64>, ptr %66, align 16
  store <2 x i64> %67, ptr %34, align 16
  %68 = load <2 x i64>, ptr %34, align 16
  store <2 x i64> %68, ptr %21, align 16
  store i32 47, ptr %22, align 4
  %69 = load <2 x i64>, ptr %21, align 16
  %70 = load i32, ptr %22, align 4
  %71 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %69, i32 %70)
  store <2 x i64> %71, ptr %35, align 16
  %72 = load <2 x i64>, ptr %34, align 16
  %73 = load <2 x i64>, ptr %35, align 16
  store <2 x i64> %72, ptr %15, align 16
  store <2 x i64> %73, ptr %16, align 16
  %74 = load <2 x i64>, ptr %15, align 16
  %75 = load <2 x i64>, ptr %16, align 16
  %76 = xor <2 x i64> %74, %75
  store <2 x i64> %76, ptr %34, align 16
  %77 = load <2 x i64>, ptr %34, align 16
  %78 = load <2 x i64>, ptr %31, align 16
  store <2 x i64> %77, ptr %17, align 16
  store <2 x i64> %78, ptr %18, align 16
  %79 = load <2 x i64>, ptr %17, align 16
  %80 = load <2 x i64>, ptr %18, align 16
  %81 = xor <2 x i64> %79, %80
  store <2 x i64> %81, ptr %34, align 16
  %82 = load ptr, ptr %30, align 8
  %83 = load i64, ptr %33, align 8
  %84 = getelementptr inbounds nuw <2 x i64>, ptr %82, i64 %83
  store ptr %84, ptr %14, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = load <2 x i64>, ptr %85, align 1
  store <2 x i64> %86, ptr %36, align 16
  %87 = load <2 x i64>, ptr %34, align 16
  %88 = load <2 x i64>, ptr %36, align 16
  store <2 x i64> %87, ptr %10, align 16
  store <2 x i64> %88, ptr %11, align 16
  %89 = load <2 x i64>, ptr %10, align 16
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = load <2 x i64>, ptr %11, align 16
  %92 = bitcast <2 x i64> %91 to <4 x i32>
  %93 = and <2 x i64> %89, splat (i64 4294967295)
  %94 = and <2 x i64> %91, splat (i64 4294967295)
  %95 = mul <2 x i64> %93, %94
  store <2 x i64> %95, ptr %37, align 16
  %96 = load <2 x i64>, ptr %34, align 16
  %97 = bitcast <2 x i64> %96 to <4 x i32>
  %98 = shufflevector <4 x i32> %97, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %99 = bitcast <4 x i32> %98 to <2 x i64>
  store <2 x i64> %99, ptr %38, align 16
  %100 = load <2 x i64>, ptr %36, align 16
  %101 = bitcast <2 x i64> %100 to <4 x i32>
  %102 = shufflevector <4 x i32> %101, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %103 = bitcast <4 x i32> %102 to <2 x i64>
  store <2 x i64> %103, ptr %39, align 16
  %104 = load <2 x i64>, ptr %38, align 16
  %105 = load <2 x i64>, ptr %39, align 16
  store <2 x i64> %104, ptr %12, align 16
  store <2 x i64> %105, ptr %13, align 16
  %106 = load <2 x i64>, ptr %12, align 16
  %107 = bitcast <2 x i64> %106 to <4 x i32>
  %108 = load <2 x i64>, ptr %13, align 16
  %109 = bitcast <2 x i64> %108 to <4 x i32>
  %110 = and <2 x i64> %106, splat (i64 4294967295)
  %111 = and <2 x i64> %108, splat (i64 4294967295)
  %112 = mul <2 x i64> %110, %111
  store <2 x i64> %112, ptr %40, align 16
  %113 = load <2 x i64>, ptr %37, align 16
  %114 = load <2 x i64>, ptr %40, align 16
  store <2 x i64> %113, ptr %19, align 16
  store <2 x i64> %114, ptr %20, align 16
  %115 = load <2 x i64>, ptr %19, align 16
  %116 = load <2 x i64>, ptr %20, align 16
  %117 = xor <2 x i64> %115, %116
  %118 = load ptr, ptr %29, align 8
  %119 = load i64, ptr %33, align 8
  %120 = getelementptr inbounds nuw <2 x i64>, ptr %118, i64 %119
  store <2 x i64> %117, ptr %120, align 16
  br label %121

121:                                              ; preds = %63
  %122 = load i64, ptr %33, align 8
  %123 = add i64 %122, 1
  store i64 %123, ptr %33, align 8
  br label %60

124:                                              ; preds = %60
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
