; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len256_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len256_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %191, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, -4734510112055689544
  store i64 %6, ptr %3, align 8
  %7 = sub i64 2066345149520216444, %1
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %7, ptr %8, align 8
  %9 = add i64 %1, -2623469361688619810
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %9, ptr %10, align 8
  %11 = sub i64 2262974939099578482, %1
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %11, ptr %12, align 8
  %13 = add i64 %1, 8711581037947681227
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %13, ptr %14, align 8
  %15 = sub i64 2410270004345854594, %1
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %15, ptr %16, align 8
  %17 = add i64 %1, -8204357891075471176
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %17, ptr %18, align 8
  %19 = sub i64 5487137525590930912, %1
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %19, ptr %20, align 8
  %21 = add i64 %1, -3818837453329782724
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %21, ptr %22, align 8
  %23 = sub i64 -6688317018830679928, %1
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %23, ptr %24, align 8
  %25 = add i64 %1, 5690594596133299313
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = load <4 x i64>, ptr %0, align 1
  %29 = load <4 x i64>, ptr %3, align 8
  %30 = xor <4 x i64> %29, %28
  %31 = bitcast <4 x i64> %30 to <8 x i32>
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %33 = bitcast <8 x i32> %32 to <4 x i64>
  %34 = and <4 x i64> %30, splat (i64 4294967295)
  %35 = and <4 x i64> %33, splat (i64 4294967295)
  %36 = mul nuw <4 x i64> %35, %34
  %37 = add <4 x i64> %28, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %41 = load <4 x i64>, ptr %40, align 8
  %42 = xor <4 x i64> %41, %39
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = add <4 x i64> %39, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %51, i32 0, i32 3, i32 1)
  %52 = load <4 x i64>, ptr %50, align 1
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %54 = load <4 x i64>, ptr %53, align 8
  %55 = xor <4 x i64> %54, %52
  %56 = bitcast <4 x i64> %55 to <8 x i32>
  %57 = shufflevector <8 x i32> %56, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %58 = bitcast <8 x i32> %57 to <4 x i64>
  %59 = and <4 x i64> %55, splat (i64 4294967295)
  %60 = and <4 x i64> %58, splat (i64 4294967295)
  %61 = mul nuw <4 x i64> %60, %59
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %63 = load <4 x i64>, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %65 = load <4 x i64>, ptr %64, align 8
  %66 = xor <4 x i64> %65, %63
  %67 = bitcast <4 x i64> %66 to <8 x i32>
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  %70 = and <4 x i64> %66, splat (i64 4294967295)
  %71 = and <4 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %74, i32 0, i32 3, i32 1)
  %75 = load <4 x i64>, ptr %73, align 1
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %77 = load <4 x i64>, ptr %76, align 8
  %78 = xor <4 x i64> %77, %75
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %86 = load <4 x i64>, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %88 = load <4 x i64>, ptr %87, align 8
  %89 = xor <4 x i64> %88, %86
  %90 = bitcast <4 x i64> %89 to <8 x i32>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %89, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %97, i32 0, i32 3, i32 1)
  %98 = load <4 x i64>, ptr %96, align 1
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %100 = load <4 x i64>, ptr %99, align 8
  %101 = xor <4 x i64> %100, %98
  %102 = bitcast <4 x i64> %101 to <8 x i32>
  %103 = shufflevector <8 x i32> %102, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %104 = bitcast <8 x i32> %103 to <4 x i64>
  %105 = and <4 x i64> %101, splat (i64 4294967295)
  %106 = and <4 x i64> %104, splat (i64 4294967295)
  %107 = mul nuw <4 x i64> %106, %105
  %108 = add <4 x i64> %37, %52
  %109 = add <4 x i64> %108, %36
  %110 = add <4 x i64> %109, %75
  %111 = add <4 x i64> %110, %61
  %112 = add <4 x i64> %111, %98
  %113 = add <4 x i64> %112, %84
  %114 = add <4 x i64> %113, %107
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %118 = load <4 x i64>, ptr %117, align 8
  %119 = xor <4 x i64> %118, %116
  %120 = bitcast <4 x i64> %119 to <8 x i32>
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %122 = bitcast <8 x i32> %121 to <4 x i64>
  %123 = and <4 x i64> %119, splat (i64 4294967295)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = add <4 x i64> %49, %63
  %127 = add <4 x i64> %126, %48
  %128 = add <4 x i64> %127, %86
  %129 = add <4 x i64> %128, %72
  %130 = add <4 x i64> %129, %116
  %131 = add <4 x i64> %130, %95
  %132 = add <4 x i64> %131, %125
  %133 = extractelement <4 x i64> %114, i64 0
  %134 = bitcast <4 x i64> %54 to i256
  %135 = lshr i256 %134, 24
  %136 = trunc i256 %135 to i64
  %137 = xor i64 %133, %136
  %138 = extractelement <4 x i64> %114, i64 1
  %139 = bitcast <4 x i64> %77 to i256
  %140 = lshr i256 %139, 24
  %141 = trunc i256 %140 to i64
  %142 = xor i64 %138, %141
  %143 = zext i64 %137 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %148, 3997421333012711168
  %150 = extractelement <4 x i64> %114, i64 2
  %151 = bitcast <4 x i64> %100 to i256
  %152 = lshr i256 %151, 24
  %153 = trunc i256 %152 to i64
  %154 = xor i64 %150, %153
  %155 = extractelement <4 x i64> %114, i64 3
  %156 = lshr i256 %151, 88
  %157 = trunc i256 %156 to i64
  %158 = xor i64 %155, %157
  %159 = zext i64 %154 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %149, %164
  %166 = extractelement <4 x i64> %132, i64 0
  %167 = lshr i256 %151, 152
  %168 = trunc i256 %167 to i64
  %169 = xor i64 %166, %168
  %170 = extractelement <4 x i64> %132, i64 1
  %171 = bitcast <4 x i64> %88 to i256
  %172 = lshr i256 %171, 24
  %173 = trunc i256 %172 to i64
  %174 = xor i64 %170, %173
  %175 = zext i64 %169 to i128
  %176 = zext i64 %174 to i128
  %177 = mul nuw i128 %176, %175
  %178 = lshr i128 %177, 64
  %179 = xor i128 %178, %177
  %180 = trunc i128 %179 to i64
  %181 = add i64 %165, %180
  %182 = extractelement <4 x i64> %132, i64 2
  %183 = bitcast <4 x i64> %118 to i256
  %184 = lshr i256 %183, 24
  %185 = trunc i256 %184 to i64
  %186 = xor i64 %182, %185
  %187 = extractelement <4 x i64> %132, i64 3
  %188 = lshr i256 %183, 88
  %189 = trunc i256 %188 to i64
  %190 = xor i64 %187, %189
  br label %320

191:                                              ; preds = %2
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %192, i32 0, i32 3, i32 1)
  %193 = load <4 x i64>, ptr %0, align 1
  %194 = xor <4 x i64> %193, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %195 = bitcast <4 x i64> %194 to <8 x i32>
  %196 = shufflevector <8 x i32> %195, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %197 = bitcast <8 x i32> %196 to <4 x i64>
  %198 = and <4 x i64> %194, splat (i64 4294967295)
  %199 = and <4 x i64> %197, splat (i64 4294967295)
  %200 = mul nuw <4 x i64> %199, %198
  %201 = add <4 x i64> %193, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %203 = load <4 x i64>, ptr %202, align 1
  %204 = xor <4 x i64> %203, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %205 = bitcast <4 x i64> %204 to <8 x i32>
  %206 = shufflevector <8 x i32> %205, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %207 = bitcast <8 x i32> %206 to <4 x i64>
  %208 = and <4 x i64> %204, splat (i64 4294967295)
  %209 = and <4 x i64> %207, splat (i64 4294967295)
  %210 = mul nuw <4 x i64> %209, %208
  %211 = add <4 x i64> %203, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %213, i32 0, i32 3, i32 1)
  %214 = load <4 x i64>, ptr %212, align 1
  %215 = xor <4 x i64> %214, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %216 = bitcast <4 x i64> %215 to <8 x i32>
  %217 = shufflevector <8 x i32> %216, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %218 = bitcast <8 x i32> %217 to <4 x i64>
  %219 = and <4 x i64> %215, splat (i64 4294967295)
  %220 = and <4 x i64> %218, splat (i64 4294967295)
  %221 = mul nuw <4 x i64> %220, %219
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %223 = load <4 x i64>, ptr %222, align 1
  %224 = xor <4 x i64> %223, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %225 = bitcast <4 x i64> %224 to <8 x i32>
  %226 = shufflevector <8 x i32> %225, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %227 = bitcast <8 x i32> %226 to <4 x i64>
  %228 = and <4 x i64> %224, splat (i64 4294967295)
  %229 = and <4 x i64> %227, splat (i64 4294967295)
  %230 = mul nuw <4 x i64> %229, %228
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %232, i32 0, i32 3, i32 1)
  %233 = load <4 x i64>, ptr %231, align 1
  %234 = xor <4 x i64> %233, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %235 = bitcast <4 x i64> %234 to <8 x i32>
  %236 = shufflevector <8 x i32> %235, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %237 = bitcast <8 x i32> %236 to <4 x i64>
  %238 = and <4 x i64> %234, splat (i64 4294967295)
  %239 = and <4 x i64> %237, splat (i64 4294967295)
  %240 = mul nuw <4 x i64> %239, %238
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %242 = load <4 x i64>, ptr %241, align 1
  %243 = xor <4 x i64> %242, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %251, i32 0, i32 3, i32 1)
  %252 = load <4 x i64>, ptr %250, align 1
  %253 = xor <4 x i64> %252, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %254 = bitcast <4 x i64> %253 to <8 x i32>
  %255 = shufflevector <8 x i32> %254, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %256 = bitcast <8 x i32> %255 to <4 x i64>
  %257 = and <4 x i64> %253, splat (i64 4294967295)
  %258 = and <4 x i64> %256, splat (i64 4294967295)
  %259 = mul nuw <4 x i64> %258, %257
  %260 = add <4 x i64> %201, %214
  %261 = add <4 x i64> %260, %200
  %262 = add <4 x i64> %261, %233
  %263 = add <4 x i64> %262, %221
  %264 = add <4 x i64> %263, %252
  %265 = add <4 x i64> %264, %240
  %266 = add <4 x i64> %265, %259
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %268 = load <4 x i64>, ptr %267, align 1
  %269 = xor <4 x i64> %268, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %270 = bitcast <4 x i64> %269 to <8 x i32>
  %271 = shufflevector <8 x i32> %270, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %272 = bitcast <8 x i32> %271 to <4 x i64>
  %273 = and <4 x i64> %269, splat (i64 4294967295)
  %274 = and <4 x i64> %272, splat (i64 4294967295)
  %275 = mul nuw <4 x i64> %274, %273
  %276 = add <4 x i64> %211, %223
  %277 = add <4 x i64> %276, %210
  %278 = add <4 x i64> %277, %242
  %279 = add <4 x i64> %278, %230
  %280 = add <4 x i64> %279, %268
  %281 = add <4 x i64> %280, %249
  %282 = add <4 x i64> %281, %275
  %283 = extractelement <4 x i64> %266, i64 0
  %284 = xor i64 %283, 7914194659941938988
  %285 = extractelement <4 x i64> %266, i64 1
  %286 = xor i64 %285, -6611157965513653271
  %287 = zext i64 %284 to i128
  %288 = zext i64 %286 to i128
  %289 = mul nuw i128 %288, %287
  %290 = lshr i128 %289, 64
  %291 = xor i128 %290, %289
  %292 = trunc i128 %291 to i64
  %293 = add i64 %292, 3997421333012711168
  %294 = extractelement <4 x i64> %266, i64 2
  %295 = xor i64 %294, -1839215637059881052
  %296 = extractelement <4 x i64> %266, i64 3
  %297 = xor i64 %296, -3433288310154277810
  %298 = zext i64 %295 to i128
  %299 = zext i64 %297 to i128
  %300 = mul nuw i128 %299, %298
  %301 = lshr i128 %300, 64
  %302 = xor i128 %301, %300
  %303 = trunc i128 %302 to i64
  %304 = add i64 %293, %303
  %305 = extractelement <4 x i64> %282, i64 0
  %306 = xor i64 %305, 5046485836271438973
  %307 = extractelement <4 x i64> %282, i64 1
  %308 = xor i64 %307, -8055285457383852172
  %309 = zext i64 %306 to i128
  %310 = zext i64 %308 to i128
  %311 = mul nuw i128 %310, %309
  %312 = lshr i128 %311, 64
  %313 = xor i128 %312, %311
  %314 = trunc i128 %313 to i64
  %315 = add i64 %304, %314
  %316 = extractelement <4 x i64> %282, i64 2
  %317 = xor i64 %316, 5920048007935066598
  %318 = extractelement <4 x i64> %282, i64 3
  %319 = xor i64 %318, 7336514198459093435
  br label %320

320:                                              ; preds = %5, %191
  %321 = phi i64 [ %186, %5 ], [ %317, %191 ]
  %322 = phi i64 [ %190, %5 ], [ %319, %191 ]
  %323 = phi i64 [ %181, %5 ], [ %315, %191 ]
  %324 = zext i64 %321 to i128
  %325 = zext i64 %322 to i128
  %326 = mul nuw i128 %325, %324
  %327 = lshr i128 %326, 64
  %328 = xor i128 %327, %326
  %329 = trunc i128 %328 to i64
  %330 = add i64 %323, %329
  %331 = lshr i64 %330, 37
  %332 = xor i64 %331, %330
  %333 = mul i64 %332, 1609587929392839161
  %334 = lshr i64 %333, 32
  %335 = xor i64 %334, %333
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %335
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
