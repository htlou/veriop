; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8293860/api64_len300_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8293860/api64_len300_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 8
  %4 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %230, label %6

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
  %45 = load <4 x i64>, ptr %0, align 1
  %46 = load <4 x i64>, ptr %3, align 8
  %47 = xor <4 x i64> %46, %45
  %48 = bitcast <4 x i64> %47 to <8 x i32>
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %50 = bitcast <8 x i32> %49 to <4 x i64>
  %51 = and <4 x i64> %47, splat (i64 4294967295)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = add <4 x i64> %45, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %56 = load <4 x i64>, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %58 = load <4 x i64>, ptr %57, align 8
  %59 = xor <4 x i64> %58, %56
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %59, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = add <4 x i64> %56, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %68 = load <4 x i64>, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %70 = load <4 x i64>, ptr %69, align 8
  %71 = xor <4 x i64> %70, %68
  %72 = bitcast <4 x i64> %71 to <8 x i32>
  %73 = shufflevector <8 x i32> %72, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %74 = bitcast <8 x i32> %73 to <4 x i64>
  %75 = and <4 x i64> %71, splat (i64 4294967295)
  %76 = and <4 x i64> %74, splat (i64 4294967295)
  %77 = mul nuw <4 x i64> %76, %75
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %79 = load <4 x i64>, ptr %78, align 1
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %81 = load <4 x i64>, ptr %80, align 8
  %82 = xor <4 x i64> %81, %79
  %83 = bitcast <4 x i64> %82 to <8 x i32>
  %84 = shufflevector <8 x i32> %83, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %85 = bitcast <8 x i32> %84 to <4 x i64>
  %86 = and <4 x i64> %82, splat (i64 4294967295)
  %87 = and <4 x i64> %85, splat (i64 4294967295)
  %88 = mul nuw <4 x i64> %87, %86
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %90 = load <4 x i64>, ptr %89, align 1
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %92 = load <4 x i64>, ptr %91, align 8
  %93 = xor <4 x i64> %92, %90
  %94 = bitcast <4 x i64> %93 to <8 x i32>
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %97 = and <4 x i64> %93, splat (i64 4294967295)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %101 = load <4 x i64>, ptr %100, align 1
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %103 = load <4 x i64>, ptr %102, align 8
  %104 = xor <4 x i64> %103, %101
  %105 = bitcast <4 x i64> %104 to <8 x i32>
  %106 = shufflevector <8 x i32> %105, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %107 = bitcast <8 x i32> %106 to <4 x i64>
  %108 = and <4 x i64> %104, splat (i64 4294967295)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %112 = load <4 x i64>, ptr %111, align 1
  %113 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %114 = load <4 x i64>, ptr %113, align 8
  %115 = xor <4 x i64> %114, %112
  %116 = bitcast <4 x i64> %115 to <8 x i32>
  %117 = shufflevector <8 x i32> %116, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %118 = bitcast <8 x i32> %117 to <4 x i64>
  %119 = and <4 x i64> %115, splat (i64 4294967295)
  %120 = and <4 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <4 x i64> %120, %119
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %123 = load <4 x i64>, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %125 = load <4 x i64>, ptr %124, align 8
  %126 = xor <4 x i64> %125, %123
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %134 = load <4 x i64>, ptr %133, align 1
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %136 = load <4 x i64>, ptr %135, align 1
  %137 = xor <4 x i64> %136, %134
  %138 = bitcast <4 x i64> %137 to <8 x i32>
  %139 = shufflevector <8 x i32> %138, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %140 = bitcast <8 x i32> %139 to <4 x i64>
  %141 = and <4 x i64> %137, splat (i64 4294967295)
  %142 = and <4 x i64> %140, splat (i64 4294967295)
  %143 = mul nuw <4 x i64> %142, %141
  %144 = add <4 x i64> %54, %68
  %145 = add <4 x i64> %144, %53
  %146 = add <4 x i64> %145, %90
  %147 = add <4 x i64> %146, %77
  %148 = add <4 x i64> %147, %112
  %149 = add <4 x i64> %148, %99
  %150 = add <4 x i64> %149, %134
  %151 = add <4 x i64> %150, %121
  %152 = add <4 x i64> %151, %143
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = getelementptr inbounds nuw i8, ptr %4, i64 33
  %156 = load <4 x i64>, ptr %155, align 1
  %157 = xor <4 x i64> %156, %154
  %158 = bitcast <4 x i64> %157 to <8 x i32>
  %159 = shufflevector <8 x i32> %158, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %160 = bitcast <8 x i32> %159 to <4 x i64>
  %161 = and <4 x i64> %157, splat (i64 4294967295)
  %162 = and <4 x i64> %160, splat (i64 4294967295)
  %163 = mul nuw <4 x i64> %162, %161
  %164 = add <4 x i64> %66, %79
  %165 = add <4 x i64> %164, %65
  %166 = add <4 x i64> %165, %101
  %167 = add <4 x i64> %166, %88
  %168 = add <4 x i64> %167, %123
  %169 = add <4 x i64> %168, %110
  %170 = add <4 x i64> %169, %154
  %171 = add <4 x i64> %170, %132
  %172 = add <4 x i64> %171, %163
  %173 = extractelement <4 x i64> %152, i64 0
  %174 = bitcast <4 x i64> %70 to i256
  %175 = lshr i256 %174, 24
  %176 = trunc i256 %175 to i64
  %177 = xor i64 %173, %176
  %178 = extractelement <4 x i64> %152, i64 1
  %179 = bitcast <4 x i64> %92 to i256
  %180 = lshr i256 %179, 24
  %181 = trunc i256 %180 to i64
  %182 = xor i64 %178, %181
  %183 = zext i64 %177 to i128
  %184 = zext i64 %182 to i128
  %185 = mul nuw i128 %184, %183
  %186 = lshr i128 %185, 64
  %187 = xor i128 %186, %185
  %188 = trunc i128 %187 to i64
  %189 = add i64 %188, 7566781886141388340
  %190 = extractelement <4 x i64> %152, i64 2
  %191 = bitcast <4 x i64> %114 to i256
  %192 = lshr i256 %191, 24
  %193 = trunc i256 %192 to i64
  %194 = xor i64 %190, %193
  %195 = extractelement <4 x i64> %152, i64 3
  %196 = lshr i256 %191, 88
  %197 = trunc i256 %196 to i64
  %198 = xor i64 %195, %197
  %199 = zext i64 %194 to i128
  %200 = zext i64 %198 to i128
  %201 = mul nuw i128 %200, %199
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %189, %204
  %206 = extractelement <4 x i64> %172, i64 0
  %207 = lshr i256 %191, 152
  %208 = trunc i256 %207 to i64
  %209 = xor i64 %206, %208
  %210 = extractelement <4 x i64> %172, i64 1
  %211 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %212 = load i64, ptr %211, align 1
  %213 = xor i64 %210, %212
  %214 = zext i64 %209 to i128
  %215 = zext i64 %213 to i128
  %216 = mul nuw i128 %215, %214
  %217 = lshr i128 %216, 64
  %218 = xor i128 %217, %216
  %219 = trunc i128 %218 to i64
  %220 = add i64 %205, %219
  %221 = extractelement <4 x i64> %172, i64 2
  %222 = bitcast <4 x i64> %125 to i256
  %223 = lshr i256 %222, 24
  %224 = trunc i256 %223 to i64
  %225 = xor i64 %221, %224
  %226 = extractelement <4 x i64> %172, i64 3
  %227 = lshr i256 %222, 88
  %228 = trunc i256 %227 to i64
  %229 = xor i64 %226, %228
  br label %377

230:                                              ; preds = %2
  %231 = load <4 x i64>, ptr %0, align 1
  %232 = xor <4 x i64> %231, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %233 = bitcast <4 x i64> %232 to <8 x i32>
  %234 = shufflevector <8 x i32> %233, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %235 = bitcast <8 x i32> %234 to <4 x i64>
  %236 = and <4 x i64> %232, splat (i64 4294967295)
  %237 = and <4 x i64> %235, splat (i64 4294967295)
  %238 = mul nuw <4 x i64> %237, %236
  %239 = add <4 x i64> %231, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %241 = load <4 x i64>, ptr %240, align 1
  %242 = xor <4 x i64> %241, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %243 = bitcast <4 x i64> %242 to <8 x i32>
  %244 = shufflevector <8 x i32> %243, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %245 = bitcast <8 x i32> %244 to <4 x i64>
  %246 = and <4 x i64> %242, splat (i64 4294967295)
  %247 = and <4 x i64> %245, splat (i64 4294967295)
  %248 = mul nuw <4 x i64> %247, %246
  %249 = add <4 x i64> %241, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %251 = load <4 x i64>, ptr %250, align 1
  %252 = xor <4 x i64> %251, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %253 = bitcast <4 x i64> %252 to <8 x i32>
  %254 = shufflevector <8 x i32> %253, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %255 = bitcast <8 x i32> %254 to <4 x i64>
  %256 = and <4 x i64> %252, splat (i64 4294967295)
  %257 = and <4 x i64> %255, splat (i64 4294967295)
  %258 = mul nuw <4 x i64> %257, %256
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %260 = load <4 x i64>, ptr %259, align 1
  %261 = xor <4 x i64> %260, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %262 = bitcast <4 x i64> %261 to <8 x i32>
  %263 = shufflevector <8 x i32> %262, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %264 = bitcast <8 x i32> %263 to <4 x i64>
  %265 = and <4 x i64> %261, splat (i64 4294967295)
  %266 = and <4 x i64> %264, splat (i64 4294967295)
  %267 = mul nuw <4 x i64> %266, %265
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %269 = load <4 x i64>, ptr %268, align 1
  %270 = xor <4 x i64> %269, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %271 = bitcast <4 x i64> %270 to <8 x i32>
  %272 = shufflevector <8 x i32> %271, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %273 = bitcast <8 x i32> %272 to <4 x i64>
  %274 = and <4 x i64> %270, splat (i64 4294967295)
  %275 = and <4 x i64> %273, splat (i64 4294967295)
  %276 = mul nuw <4 x i64> %275, %274
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %278 = load <4 x i64>, ptr %277, align 1
  %279 = xor <4 x i64> %278, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %280 = bitcast <4 x i64> %279 to <8 x i32>
  %281 = shufflevector <8 x i32> %280, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %282 = bitcast <8 x i32> %281 to <4 x i64>
  %283 = and <4 x i64> %279, splat (i64 4294967295)
  %284 = and <4 x i64> %282, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, %283
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %287 = load <4 x i64>, ptr %286, align 1
  %288 = xor <4 x i64> %287, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %289 = bitcast <4 x i64> %288 to <8 x i32>
  %290 = shufflevector <8 x i32> %289, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %291 = bitcast <8 x i32> %290 to <4 x i64>
  %292 = and <4 x i64> %288, splat (i64 4294967295)
  %293 = and <4 x i64> %291, splat (i64 4294967295)
  %294 = mul nuw <4 x i64> %293, %292
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %296 = load <4 x i64>, ptr %295, align 1
  %297 = xor <4 x i64> %296, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %298 = bitcast <4 x i64> %297 to <8 x i32>
  %299 = shufflevector <8 x i32> %298, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %300 = bitcast <8 x i32> %299 to <4 x i64>
  %301 = and <4 x i64> %297, splat (i64 4294967295)
  %302 = and <4 x i64> %300, splat (i64 4294967295)
  %303 = mul nuw <4 x i64> %302, %301
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %305 = load <4 x i64>, ptr %304, align 1
  %306 = xor <4 x i64> %305, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %307 = bitcast <4 x i64> %306 to <8 x i32>
  %308 = shufflevector <8 x i32> %307, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %309 = bitcast <8 x i32> %308 to <4 x i64>
  %310 = and <4 x i64> %306, splat (i64 4294967295)
  %311 = and <4 x i64> %309, splat (i64 4294967295)
  %312 = mul nuw <4 x i64> %311, %310
  %313 = add <4 x i64> %239, %251
  %314 = add <4 x i64> %313, %269
  %315 = add <4 x i64> %314, %238
  %316 = add <4 x i64> %315, %287
  %317 = add <4 x i64> %316, %258
  %318 = add <4 x i64> %317, %305
  %319 = add <4 x i64> %318, %276
  %320 = add <4 x i64> %319, %294
  %321 = add <4 x i64> %320, %312
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %323 = load <4 x i64>, ptr %322, align 1
  %324 = xor <4 x i64> %323, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %325 = bitcast <4 x i64> %324 to <8 x i32>
  %326 = shufflevector <8 x i32> %325, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %327 = bitcast <8 x i32> %326 to <4 x i64>
  %328 = and <4 x i64> %324, splat (i64 4294967295)
  %329 = and <4 x i64> %327, splat (i64 4294967295)
  %330 = mul nuw <4 x i64> %329, %328
  %331 = add <4 x i64> %249, %260
  %332 = add <4 x i64> %331, %278
  %333 = add <4 x i64> %332, %248
  %334 = add <4 x i64> %333, %296
  %335 = add <4 x i64> %334, %267
  %336 = add <4 x i64> %335, %323
  %337 = add <4 x i64> %336, %285
  %338 = add <4 x i64> %337, %303
  %339 = add <4 x i64> %338, %330
  %340 = extractelement <4 x i64> %321, i64 0
  %341 = xor i64 %340, 7914194659941938988
  %342 = extractelement <4 x i64> %321, i64 1
  %343 = xor i64 %342, -6611157965513653271
  %344 = zext i64 %341 to i128
  %345 = zext i64 %343 to i128
  %346 = mul nuw i128 %345, %344
  %347 = lshr i128 %346, 64
  %348 = xor i128 %347, %346
  %349 = trunc i128 %348 to i64
  %350 = add i64 %349, 7566781886141388340
  %351 = extractelement <4 x i64> %321, i64 2
  %352 = xor i64 %351, -1839215637059881052
  %353 = extractelement <4 x i64> %321, i64 3
  %354 = xor i64 %353, -3433288310154277810
  %355 = zext i64 %352 to i128
  %356 = zext i64 %354 to i128
  %357 = mul nuw i128 %356, %355
  %358 = lshr i128 %357, 64
  %359 = xor i128 %358, %357
  %360 = trunc i128 %359 to i64
  %361 = add i64 %350, %360
  %362 = extractelement <4 x i64> %339, i64 0
  %363 = xor i64 %362, 5046485836271438973
  %364 = extractelement <4 x i64> %339, i64 1
  %365 = xor i64 %364, -8055285457383852172
  %366 = zext i64 %363 to i128
  %367 = zext i64 %365 to i128
  %368 = mul nuw i128 %367, %366
  %369 = lshr i128 %368, 64
  %370 = xor i128 %369, %368
  %371 = trunc i128 %370 to i64
  %372 = add i64 %361, %371
  %373 = extractelement <4 x i64> %339, i64 2
  %374 = xor i64 %373, 5920048007935066598
  %375 = extractelement <4 x i64> %339, i64 3
  %376 = xor i64 %375, 7336514198459093435
  br label %377

377:                                              ; preds = %6, %230
  %378 = phi i64 [ %225, %6 ], [ %374, %230 ]
  %379 = phi i64 [ %229, %6 ], [ %376, %230 ]
  %380 = phi i64 [ %220, %6 ], [ %372, %230 ]
  %381 = zext i64 %378 to i128
  %382 = zext i64 %379 to i128
  %383 = mul nuw i128 %382, %381
  %384 = lshr i128 %383, 64
  %385 = xor i128 %384, %383
  %386 = trunc i128 %385 to i64
  %387 = add i64 %380, %386
  %388 = lshr i64 %387, 37
  %389 = xor i64 %388, %387
  %390 = mul i64 %389, 1609587929392839161
  %391 = lshr i64 %390, 32
  %392 = xor i64 %391, %390
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4)
  ret i64 %392
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
