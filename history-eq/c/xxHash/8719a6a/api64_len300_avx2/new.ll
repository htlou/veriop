; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len300_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len300_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 8
  %4 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %233, label %6

6:                                                ; preds = %2
  %7 = add i64 %1, -4734510112055689544
  store i64 %7, ptr %3, align 8
  %8 = sub i64 2066345149520216444, %1
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %8, ptr %9, align 8
  %10 = add i64 %1, -2623469361688619810
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %10, ptr %11, align 8
  %12 = sub i64 2262974939099578482, %1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %12, ptr %13, align 8
  %14 = add i64 %1, 8711581037947681227
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %14, ptr %15, align 8
  %16 = sub i64 2410270004345854594, %1
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %16, ptr %17, align 8
  %18 = add i64 %1, -8204357891075471176
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %18, ptr %19, align 8
  %20 = sub i64 5487137525590930912, %1
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %20, ptr %21, align 8
  %22 = add i64 %1, -3818837453329782724
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %22, ptr %23, align 8
  %24 = sub i64 -6688317018830679928, %1
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %24, ptr %25, align 8
  %26 = add i64 %1, 5690594596133299313
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %26, ptr %27, align 8
  %28 = sub i64 7238261902898274248, %1
  store i64 %28, ptr %4, align 8
  %29 = add i64 %1, -4329134394285701654
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %29, ptr %30, align 8
  %31 = sub i64 -1485321483350670907, %1
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %31, ptr %32, align 8
  %33 = add i64 %1, 5321830579834785047
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %33, ptr %34, align 8
  %35 = sub i64 -7032137544937171245, %1
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %35, ptr %36, align 8
  %37 = add i64 %1, -242834301215959509
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %37, ptr %38, align 8
  %39 = sub i64 -3588858202114426737, %1
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %39, ptr %40, align 8
  %41 = add i64 %1, 2883454493032893253
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %41, ptr %42, align 8
  %43 = sub i64 9097354517224871855, %1
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %45, i32 0, i32 3, i32 1)
  %46 = load <4 x i64>, ptr %0, align 1
  %47 = load <4 x i64>, ptr %3, align 8
  %48 = xor <4 x i64> %47, %46
  %49 = bitcast <4 x i64> %48 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = and <4 x i64> %48, splat (i64 4294967295)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, %52
  %55 = add <4 x i64> %46, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %57 = load <4 x i64>, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %59 = load <4 x i64>, ptr %58, align 8
  %60 = xor <4 x i64> %59, %57
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = add <4 x i64> %57, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %69, i32 0, i32 3, i32 1)
  %70 = load <4 x i64>, ptr %68, align 1
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %72 = load <4 x i64>, ptr %71, align 8
  %73 = xor <4 x i64> %72, %70
  %74 = bitcast <4 x i64> %73 to <8 x i32>
  %75 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %76 = bitcast <8 x i32> %75 to <4 x i64>
  %77 = and <4 x i64> %73, splat (i64 4294967295)
  %78 = and <4 x i64> %76, splat (i64 4294967295)
  %79 = mul nuw <4 x i64> %78, %77
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %81 = load <4 x i64>, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %83 = load <4 x i64>, ptr %82, align 8
  %84 = xor <4 x i64> %83, %81
  %85 = bitcast <4 x i64> %84 to <8 x i32>
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %87 = bitcast <8 x i32> %86 to <4 x i64>
  %88 = and <4 x i64> %84, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %92, i32 0, i32 3, i32 1)
  %93 = load <4 x i64>, ptr %91, align 1
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %95 = load <4 x i64>, ptr %94, align 8
  %96 = xor <4 x i64> %95, %93
  %97 = bitcast <4 x i64> %96 to <8 x i32>
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %99 = bitcast <8 x i32> %98 to <4 x i64>
  %100 = and <4 x i64> %96, splat (i64 4294967295)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %104 = load <4 x i64>, ptr %103, align 1
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %106 = load <4 x i64>, ptr %105, align 8
  %107 = xor <4 x i64> %106, %104
  %108 = bitcast <4 x i64> %107 to <8 x i32>
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %110 = bitcast <8 x i32> %109 to <4 x i64>
  %111 = and <4 x i64> %107, splat (i64 4294967295)
  %112 = and <4 x i64> %110, splat (i64 4294967295)
  %113 = mul nuw <4 x i64> %112, %111
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %115, i32 0, i32 3, i32 1)
  %116 = load <4 x i64>, ptr %114, align 1
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %118 = load <4 x i64>, ptr %117, align 8
  %119 = xor <4 x i64> %118, %116
  %120 = bitcast <4 x i64> %119 to <8 x i32>
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %122 = bitcast <8 x i32> %121 to <4 x i64>
  %123 = and <4 x i64> %119, splat (i64 4294967295)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %127 = load <4 x i64>, ptr %126, align 1
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %129 = load <4 x i64>, ptr %128, align 8
  %130 = xor <4 x i64> %129, %127
  %131 = bitcast <4 x i64> %130 to <8 x i32>
  %132 = shufflevector <8 x i32> %131, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %133 = bitcast <8 x i32> %132 to <4 x i64>
  %134 = and <4 x i64> %130, splat (i64 4294967295)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %138 = load <4 x i64>, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %140 = load <4 x i64>, ptr %139, align 1
  %141 = xor <4 x i64> %140, %138
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = add <4 x i64> %55, %70
  %149 = add <4 x i64> %148, %54
  %150 = add <4 x i64> %149, %93
  %151 = add <4 x i64> %150, %79
  %152 = add <4 x i64> %151, %116
  %153 = add <4 x i64> %152, %102
  %154 = add <4 x i64> %153, %138
  %155 = add <4 x i64> %154, %125
  %156 = add <4 x i64> %155, %147
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %158 = load <4 x i64>, ptr %157, align 1
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 33
  %160 = load <4 x i64>, ptr %159, align 1
  %161 = xor <4 x i64> %160, %158
  %162 = bitcast <4 x i64> %161 to <8 x i32>
  %163 = shufflevector <8 x i32> %162, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %164 = bitcast <8 x i32> %163 to <4 x i64>
  %165 = and <4 x i64> %161, splat (i64 4294967295)
  %166 = and <4 x i64> %164, splat (i64 4294967295)
  %167 = mul nuw <4 x i64> %166, %165
  %168 = add <4 x i64> %67, %81
  %169 = add <4 x i64> %168, %66
  %170 = add <4 x i64> %169, %104
  %171 = add <4 x i64> %170, %90
  %172 = add <4 x i64> %171, %127
  %173 = add <4 x i64> %172, %113
  %174 = add <4 x i64> %173, %158
  %175 = add <4 x i64> %174, %136
  %176 = add <4 x i64> %175, %167
  %177 = extractelement <4 x i64> %156, i64 0
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %179 = load i64, ptr %178, align 1
  %180 = xor i64 %177, %179
  %181 = extractelement <4 x i64> %156, i64 1
  %182 = bitcast <4 x i64> %95 to i256
  %183 = lshr i256 %182, 24
  %184 = trunc i256 %183 to i64
  %185 = xor i64 %181, %184
  %186 = zext i64 %180 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %191, 7566781886141388340
  %193 = extractelement <4 x i64> %156, i64 2
  %194 = bitcast <4 x i64> %118 to i256
  %195 = lshr i256 %194, 24
  %196 = trunc i256 %195 to i64
  %197 = xor i64 %193, %196
  %198 = extractelement <4 x i64> %156, i64 3
  %199 = lshr i256 %194, 88
  %200 = trunc i256 %199 to i64
  %201 = xor i64 %198, %200
  %202 = zext i64 %197 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %192, %207
  %209 = extractelement <4 x i64> %176, i64 0
  %210 = lshr i256 %194, 152
  %211 = trunc i256 %210 to i64
  %212 = xor i64 %209, %211
  %213 = extractelement <4 x i64> %176, i64 1
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %215 = load i64, ptr %214, align 1
  %216 = xor i64 %213, %215
  %217 = zext i64 %212 to i128
  %218 = zext i64 %216 to i128
  %219 = mul nuw i128 %218, %217
  %220 = lshr i128 %219, 64
  %221 = xor i128 %220, %219
  %222 = trunc i128 %221 to i64
  %223 = add i64 %208, %222
  %224 = extractelement <4 x i64> %176, i64 2
  %225 = bitcast <4 x i64> %129 to i256
  %226 = lshr i256 %225, 24
  %227 = trunc i256 %226 to i64
  %228 = xor i64 %224, %227
  %229 = extractelement <4 x i64> %176, i64 3
  %230 = lshr i256 %225, 88
  %231 = trunc i256 %230 to i64
  %232 = xor i64 %229, %231
  br label %384

233:                                              ; preds = %2
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %234, i32 0, i32 3, i32 1)
  %235 = load <4 x i64>, ptr %0, align 1
  %236 = xor <4 x i64> %235, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %237 = bitcast <4 x i64> %236 to <8 x i32>
  %238 = shufflevector <8 x i32> %237, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %239 = bitcast <8 x i32> %238 to <4 x i64>
  %240 = and <4 x i64> %236, splat (i64 4294967295)
  %241 = and <4 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <4 x i64> %241, %240
  %243 = add <4 x i64> %235, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %245 = load <4 x i64>, ptr %244, align 1
  %246 = xor <4 x i64> %245, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %247 = bitcast <4 x i64> %246 to <8 x i32>
  %248 = shufflevector <8 x i32> %247, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %249 = bitcast <8 x i32> %248 to <4 x i64>
  %250 = and <4 x i64> %246, splat (i64 4294967295)
  %251 = and <4 x i64> %249, splat (i64 4294967295)
  %252 = mul nuw <4 x i64> %251, %250
  %253 = add <4 x i64> %245, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %255, i32 0, i32 3, i32 1)
  %256 = load <4 x i64>, ptr %254, align 1
  %257 = xor <4 x i64> %256, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %258 = bitcast <4 x i64> %257 to <8 x i32>
  %259 = shufflevector <8 x i32> %258, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %260 = bitcast <8 x i32> %259 to <4 x i64>
  %261 = and <4 x i64> %257, splat (i64 4294967295)
  %262 = and <4 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <4 x i64> %262, %261
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %265 = load <4 x i64>, ptr %264, align 1
  %266 = xor <4 x i64> %265, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %267 = bitcast <4 x i64> %266 to <8 x i32>
  %268 = shufflevector <8 x i32> %267, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %269 = bitcast <8 x i32> %268 to <4 x i64>
  %270 = and <4 x i64> %266, splat (i64 4294967295)
  %271 = and <4 x i64> %269, splat (i64 4294967295)
  %272 = mul nuw <4 x i64> %271, %270
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %274, i32 0, i32 3, i32 1)
  %275 = load <4 x i64>, ptr %273, align 1
  %276 = xor <4 x i64> %275, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %277 = bitcast <4 x i64> %276 to <8 x i32>
  %278 = shufflevector <8 x i32> %277, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %279 = bitcast <8 x i32> %278 to <4 x i64>
  %280 = and <4 x i64> %276, splat (i64 4294967295)
  %281 = and <4 x i64> %279, splat (i64 4294967295)
  %282 = mul nuw <4 x i64> %281, %280
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %284 = load <4 x i64>, ptr %283, align 1
  %285 = xor <4 x i64> %284, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %286 = bitcast <4 x i64> %285 to <8 x i32>
  %287 = shufflevector <8 x i32> %286, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %288 = bitcast <8 x i32> %287 to <4 x i64>
  %289 = and <4 x i64> %285, splat (i64 4294967295)
  %290 = and <4 x i64> %288, splat (i64 4294967295)
  %291 = mul nuw <4 x i64> %290, %289
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %293, i32 0, i32 3, i32 1)
  %294 = load <4 x i64>, ptr %292, align 1
  %295 = xor <4 x i64> %294, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %296 = bitcast <4 x i64> %295 to <8 x i32>
  %297 = shufflevector <8 x i32> %296, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %298 = bitcast <8 x i32> %297 to <4 x i64>
  %299 = and <4 x i64> %295, splat (i64 4294967295)
  %300 = and <4 x i64> %298, splat (i64 4294967295)
  %301 = mul nuw <4 x i64> %300, %299
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %303 = load <4 x i64>, ptr %302, align 1
  %304 = xor <4 x i64> %303, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %305 = bitcast <4 x i64> %304 to <8 x i32>
  %306 = shufflevector <8 x i32> %305, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %307 = bitcast <8 x i32> %306 to <4 x i64>
  %308 = and <4 x i64> %304, splat (i64 4294967295)
  %309 = and <4 x i64> %307, splat (i64 4294967295)
  %310 = mul nuw <4 x i64> %309, %308
  %311 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %312 = load <4 x i64>, ptr %311, align 1
  %313 = xor <4 x i64> %312, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %314 = bitcast <4 x i64> %313 to <8 x i32>
  %315 = shufflevector <8 x i32> %314, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %316 = bitcast <8 x i32> %315 to <4 x i64>
  %317 = and <4 x i64> %313, splat (i64 4294967295)
  %318 = and <4 x i64> %316, splat (i64 4294967295)
  %319 = mul nuw <4 x i64> %318, %317
  %320 = add <4 x i64> %243, %256
  %321 = add <4 x i64> %320, %242
  %322 = add <4 x i64> %321, %275
  %323 = add <4 x i64> %322, %263
  %324 = add <4 x i64> %323, %294
  %325 = add <4 x i64> %324, %312
  %326 = add <4 x i64> %325, %282
  %327 = add <4 x i64> %326, %301
  %328 = add <4 x i64> %327, %319
  %329 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %330 = load <4 x i64>, ptr %329, align 1
  %331 = xor <4 x i64> %330, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %332 = bitcast <4 x i64> %331 to <8 x i32>
  %333 = shufflevector <8 x i32> %332, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %334 = bitcast <8 x i32> %333 to <4 x i64>
  %335 = and <4 x i64> %331, splat (i64 4294967295)
  %336 = and <4 x i64> %334, splat (i64 4294967295)
  %337 = mul nuw <4 x i64> %336, %335
  %338 = add <4 x i64> %253, %265
  %339 = add <4 x i64> %338, %252
  %340 = add <4 x i64> %339, %284
  %341 = add <4 x i64> %340, %272
  %342 = add <4 x i64> %341, %303
  %343 = add <4 x i64> %342, %330
  %344 = add <4 x i64> %343, %291
  %345 = add <4 x i64> %344, %310
  %346 = add <4 x i64> %345, %337
  %347 = extractelement <4 x i64> %328, i64 0
  %348 = xor i64 %347, 7914194659941938988
  %349 = extractelement <4 x i64> %328, i64 1
  %350 = xor i64 %349, -6611157965513653271
  %351 = zext i64 %348 to i128
  %352 = zext i64 %350 to i128
  %353 = mul nuw i128 %352, %351
  %354 = lshr i128 %353, 64
  %355 = xor i128 %354, %353
  %356 = trunc i128 %355 to i64
  %357 = add i64 %356, 7566781886141388340
  %358 = extractelement <4 x i64> %328, i64 2
  %359 = xor i64 %358, -1839215637059881052
  %360 = extractelement <4 x i64> %328, i64 3
  %361 = xor i64 %360, -3433288310154277810
  %362 = zext i64 %359 to i128
  %363 = zext i64 %361 to i128
  %364 = mul nuw i128 %363, %362
  %365 = lshr i128 %364, 64
  %366 = xor i128 %365, %364
  %367 = trunc i128 %366 to i64
  %368 = add i64 %357, %367
  %369 = extractelement <4 x i64> %346, i64 0
  %370 = xor i64 %369, 5046485836271438973
  %371 = extractelement <4 x i64> %346, i64 1
  %372 = xor i64 %371, -8055285457383852172
  %373 = zext i64 %370 to i128
  %374 = zext i64 %372 to i128
  %375 = mul nuw i128 %374, %373
  %376 = lshr i128 %375, 64
  %377 = xor i128 %376, %375
  %378 = trunc i128 %377 to i64
  %379 = add i64 %368, %378
  %380 = extractelement <4 x i64> %346, i64 2
  %381 = xor i64 %380, 5920048007935066598
  %382 = extractelement <4 x i64> %346, i64 3
  %383 = xor i64 %382, 7336514198459093435
  br label %384

384:                                              ; preds = %6, %233
  %385 = phi i64 [ %228, %6 ], [ %381, %233 ]
  %386 = phi i64 [ %232, %6 ], [ %383, %233 ]
  %387 = phi i64 [ %223, %6 ], [ %379, %233 ]
  %388 = zext i64 %385 to i128
  %389 = zext i64 %386 to i128
  %390 = mul nuw i128 %389, %388
  %391 = lshr i128 %390, 64
  %392 = xor i128 %391, %390
  %393 = trunc i128 %392 to i64
  %394 = add i64 %387, %393
  %395 = lshr i64 %394, 37
  %396 = xor i64 %395, %394
  %397 = mul i64 %396, 1609587929392839161
  %398 = lshr i64 %397, 32
  %399 = xor i64 %398, %397
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4)
  ret i64 %399
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
