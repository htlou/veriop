; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len256_s390x/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len256_s390x/wrapper.c"
target datalayout = "E-m:e-i1:8:16-i8:8:16-i64:64-f128:64-v128:64-a:8:16-n32:64"
target triple = "s390x-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %291, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, -4734510112055689544
  %7 = tail call noundef i64 @llvm.bswap.i64(i64 %6)
  store i64 %7, ptr %3, align 8
  %8 = sub i64 2066345149520216444, %1
  %9 = tail call noundef i64 @llvm.bswap.i64(i64 %8)
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %9, ptr %10, align 8
  %11 = add i64 %1, -2623469361688619810
  %12 = tail call noundef i64 @llvm.bswap.i64(i64 %11)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %12, ptr %13, align 8
  %14 = sub i64 2262974939099578482, %1
  %15 = tail call noundef i64 @llvm.bswap.i64(i64 %14)
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %15, ptr %16, align 8
  %17 = add i64 %1, 8711581037947681227
  %18 = tail call noundef i64 @llvm.bswap.i64(i64 %17)
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %18, ptr %19, align 8
  %20 = sub i64 2410270004345854594, %1
  %21 = tail call noundef i64 @llvm.bswap.i64(i64 %20)
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %21, ptr %22, align 8
  %23 = add i64 %1, -8204357891075471176
  %24 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %24, ptr %25, align 8
  %26 = sub i64 5487137525590930912, %1
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %27, ptr %28, align 8
  %29 = add i64 %1, -3818837453329782724
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %29)
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %30, ptr %31, align 8
  %32 = sub i64 -6688317018830679928, %1
  %33 = tail call noundef i64 @llvm.bswap.i64(i64 %32)
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %33, ptr %34, align 8
  %35 = add i64 %1, 5690594596133299313
  %36 = tail call noundef i64 @llvm.bswap.i64(i64 %35)
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %38, i32 0, i32 3, i32 1)
  %39 = load <2 x i64>, ptr %0, align 1
  %40 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %39)
  %41 = load <2 x i64>, ptr %3, align 8
  %42 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %41)
  %43 = xor <2 x i64> %42, %40
  %44 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %43, <2 x i64> %43, <2 x i64> splat (i64 32))
  %45 = bitcast <2 x i64> %44 to <4 x i32>
  %46 = bitcast <2 x i64> %43 to <4 x i32>
  %47 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %46, <4 x i32> %45)
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %49 = load <2 x i64>, ptr %48, align 1
  %50 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %49)
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %52 = load <2 x i64>, ptr %51, align 8
  %53 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %52)
  %54 = xor <2 x i64> %53, %50
  %55 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %54, <2 x i64> %54, <2 x i64> splat (i64 32))
  %56 = bitcast <2 x i64> %55 to <4 x i32>
  %57 = bitcast <2 x i64> %54 to <4 x i32>
  %58 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %57, <4 x i32> %56)
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %60 = load <2 x i64>, ptr %59, align 1
  %61 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %60)
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %63 = load <2 x i64>, ptr %62, align 8
  %64 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %63)
  %65 = xor <2 x i64> %64, %61
  %66 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %65, <2 x i64> %65, <2 x i64> splat (i64 32))
  %67 = bitcast <2 x i64> %66 to <4 x i32>
  %68 = bitcast <2 x i64> %65 to <4 x i32>
  %69 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %68, <4 x i32> %67)
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %71 = load <2 x i64>, ptr %70, align 1
  %72 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %71)
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %74 = load <2 x i64>, ptr %73, align 8
  %75 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %74)
  %76 = xor <2 x i64> %75, %72
  %77 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %76, <2 x i64> %76, <2 x i64> splat (i64 32))
  %78 = bitcast <2 x i64> %77 to <4 x i32>
  %79 = bitcast <2 x i64> %76 to <4 x i32>
  %80 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %79, <4 x i32> %78)
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %82, i32 0, i32 3, i32 1)
  %83 = load <2 x i64>, ptr %81, align 1
  %84 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %83)
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %86 = load <2 x i64>, ptr %85, align 8
  %87 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %86)
  %88 = xor <2 x i64> %87, %84
  %89 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %88, <2 x i64> %88, <2 x i64> splat (i64 32))
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = bitcast <2 x i64> %88 to <4 x i32>
  %92 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %91, <4 x i32> %90)
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %94 = load <2 x i64>, ptr %93, align 1
  %95 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %94)
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %97 = load <2 x i64>, ptr %96, align 8
  %98 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %97)
  %99 = xor <2 x i64> %98, %95
  %100 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %99, <2 x i64> %99, <2 x i64> splat (i64 32))
  %101 = bitcast <2 x i64> %100 to <4 x i32>
  %102 = bitcast <2 x i64> %99 to <4 x i32>
  %103 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %102, <4 x i32> %101)
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %105 = load <2 x i64>, ptr %104, align 1
  %106 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %105)
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %108 = load <2 x i64>, ptr %107, align 8
  %109 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %108)
  %110 = xor <2 x i64> %109, %106
  %111 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %110, <2 x i64> %110, <2 x i64> splat (i64 32))
  %112 = bitcast <2 x i64> %111 to <4 x i32>
  %113 = bitcast <2 x i64> %110 to <4 x i32>
  %114 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %113, <4 x i32> %112)
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %116 = load <2 x i64>, ptr %115, align 1
  %117 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %116)
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %119 = load <2 x i64>, ptr %118, align 8
  %120 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %119)
  %121 = xor <2 x i64> %120, %117
  %122 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %121, <2 x i64> %121, <2 x i64> splat (i64 32))
  %123 = bitcast <2 x i64> %122 to <4 x i32>
  %124 = bitcast <2 x i64> %121 to <4 x i32>
  %125 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %124, <4 x i32> %123)
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %127, i32 0, i32 3, i32 1)
  %128 = load <2 x i64>, ptr %126, align 1
  %129 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %128)
  %130 = xor <2 x i64> %129, %53
  %131 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %130, <2 x i64> %130, <2 x i64> splat (i64 32))
  %132 = bitcast <2 x i64> %131 to <4 x i32>
  %133 = bitcast <2 x i64> %130 to <4 x i32>
  %134 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %133, <4 x i32> %132)
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %136 = load <2 x i64>, ptr %135, align 1
  %137 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %136)
  %138 = xor <2 x i64> %137, %64
  %139 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %138, <2 x i64> %138, <2 x i64> splat (i64 32))
  %140 = bitcast <2 x i64> %139 to <4 x i32>
  %141 = bitcast <2 x i64> %138 to <4 x i32>
  %142 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %141, <4 x i32> %140)
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %144 = load <2 x i64>, ptr %143, align 1
  %145 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %144)
  %146 = xor <2 x i64> %145, %75
  %147 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %146, <2 x i64> %146, <2 x i64> splat (i64 32))
  %148 = bitcast <2 x i64> %147 to <4 x i32>
  %149 = bitcast <2 x i64> %146 to <4 x i32>
  %150 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %149, <4 x i32> %148)
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %152 = load <2 x i64>, ptr %151, align 1
  %153 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %152)
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %155 = load <2 x i64>, ptr %154, align 8
  %156 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %155)
  %157 = xor <2 x i64> %156, %153
  %158 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %157, <2 x i64> %157, <2 x i64> splat (i64 32))
  %159 = bitcast <2 x i64> %158 to <4 x i32>
  %160 = bitcast <2 x i64> %157 to <4 x i32>
  %161 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %160, <4 x i32> %159)
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %163, i32 0, i32 3, i32 1)
  %164 = load <2 x i64>, ptr %162, align 1
  %165 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %164)
  %166 = xor <2 x i64> %165, %98
  %167 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %166, <2 x i64> %166, <2 x i64> splat (i64 32))
  %168 = bitcast <2 x i64> %167 to <4 x i32>
  %169 = bitcast <2 x i64> %166 to <4 x i32>
  %170 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %169, <4 x i32> %168)
  %171 = add <2 x i64> %40, <i64 3266489917, i64 -7046029288634856825>
  %172 = add <2 x i64> %171, %47
  %173 = add <2 x i64> %172, %84
  %174 = add <2 x i64> %173, %92
  %175 = add <2 x i64> %174, %129
  %176 = add <2 x i64> %175, %134
  %177 = add <2 x i64> %176, %165
  %178 = add <2 x i64> %177, %170
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %180 = load <2 x i64>, ptr %179, align 1
  %181 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %180)
  %182 = xor <2 x i64> %181, %109
  %183 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %182, <2 x i64> %182, <2 x i64> splat (i64 32))
  %184 = bitcast <2 x i64> %183 to <4 x i32>
  %185 = bitcast <2 x i64> %182 to <4 x i32>
  %186 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %185, <4 x i32> %184)
  %187 = add <2 x i64> %50, <i64 -4417276706812531889, i64 1609587929392839161>
  %188 = add <2 x i64> %187, %58
  %189 = add <2 x i64> %188, %95
  %190 = add <2 x i64> %189, %103
  %191 = add <2 x i64> %190, %137
  %192 = add <2 x i64> %191, %142
  %193 = add <2 x i64> %192, %181
  %194 = add <2 x i64> %193, %186
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %196 = load <2 x i64>, ptr %195, align 1
  %197 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %196)
  %198 = xor <2 x i64> %197, %120
  %199 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %198, <2 x i64> %198, <2 x i64> splat (i64 32))
  %200 = bitcast <2 x i64> %199 to <4 x i32>
  %201 = bitcast <2 x i64> %198 to <4 x i32>
  %202 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %201, <4 x i32> %200)
  %203 = add <2 x i64> %61, <i64 -8796714831421723037, i64 2246822519>
  %204 = add <2 x i64> %203, %69
  %205 = add <2 x i64> %204, %106
  %206 = add <2 x i64> %205, %114
  %207 = add <2 x i64> %206, %145
  %208 = add <2 x i64> %207, %150
  %209 = add <2 x i64> %208, %197
  %210 = add <2 x i64> %209, %202
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %212 = load <2 x i64>, ptr %211, align 1
  %213 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %212)
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %215 = load <2 x i64>, ptr %214, align 8
  %216 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %215)
  %217 = xor <2 x i64> %216, %213
  %218 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %217, <2 x i64> %217, <2 x i64> splat (i64 32))
  %219 = bitcast <2 x i64> %218 to <4 x i32>
  %220 = bitcast <2 x i64> %217 to <4 x i32>
  %221 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %220, <4 x i32> %219)
  %222 = add <2 x i64> %72, <i64 2870177450012600261, i64 2654435761>
  %223 = add <2 x i64> %222, %80
  %224 = add <2 x i64> %223, %117
  %225 = add <2 x i64> %224, %125
  %226 = add <2 x i64> %225, %153
  %227 = add <2 x i64> %226, %161
  %228 = add <2 x i64> %227, %213
  %229 = add <2 x i64> %228, %221
  %230 = extractelement <2 x i64> %178, i64 0
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %232 = load i64, ptr %231, align 1
  %233 = tail call noundef i64 @llvm.bswap.i64(i64 %232)
  %234 = xor i64 %233, %230
  %235 = extractelement <2 x i64> %178, i64 1
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %237 = load i64, ptr %236, align 1
  %238 = tail call noundef i64 @llvm.bswap.i64(i64 %237)
  %239 = xor i64 %238, %235
  %240 = zext i64 %234 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %245, 3997421333012711168
  %247 = extractelement <2 x i64> %194, i64 0
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %249 = load i64, ptr %248, align 1
  %250 = tail call noundef i64 @llvm.bswap.i64(i64 %249)
  %251 = xor i64 %250, %247
  %252 = extractelement <2 x i64> %194, i64 1
  %253 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %254 = load i64, ptr %253, align 1
  %255 = tail call noundef i64 @llvm.bswap.i64(i64 %254)
  %256 = xor i64 %255, %252
  %257 = zext i64 %251 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %246, %262
  %264 = extractelement <2 x i64> %210, i64 0
  %265 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %266 = load i64, ptr %265, align 1
  %267 = tail call noundef i64 @llvm.bswap.i64(i64 %266)
  %268 = xor i64 %267, %264
  %269 = extractelement <2 x i64> %210, i64 1
  %270 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %271 = load i64, ptr %270, align 1
  %272 = tail call noundef i64 @llvm.bswap.i64(i64 %271)
  %273 = xor i64 %272, %269
  %274 = zext i64 %268 to i128
  %275 = zext i64 %273 to i128
  %276 = mul nuw i128 %275, %274
  %277 = lshr i128 %276, 64
  %278 = xor i128 %277, %276
  %279 = trunc i128 %278 to i64
  %280 = add i64 %263, %279
  %281 = extractelement <2 x i64> %229, i64 0
  %282 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %283 = load i64, ptr %282, align 1
  %284 = tail call noundef i64 @llvm.bswap.i64(i64 %283)
  %285 = xor i64 %284, %281
  %286 = extractelement <2 x i64> %229, i64 1
  %287 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %288 = load i64, ptr %287, align 1
  %289 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %290 = xor i64 %289, %286
  br label %492

291:                                              ; preds = %2
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %292, i32 0, i32 3, i32 1)
  %293 = load <2 x i64>, ptr %0, align 1
  %294 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %293)
  %295 = xor <2 x i64> %294, <i64 -4734510112055689544, i64 2066345149520216444>
  %296 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %295, <2 x i64> %295, <2 x i64> splat (i64 32))
  %297 = bitcast <2 x i64> %296 to <4 x i32>
  %298 = bitcast <2 x i64> %295 to <4 x i32>
  %299 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %298, <4 x i32> %297)
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %301 = load <2 x i64>, ptr %300, align 1
  %302 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %301)
  %303 = xor <2 x i64> %302, <i64 -2623469361688619810, i64 2262974939099578482>
  %304 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %303, <2 x i64> %303, <2 x i64> splat (i64 32))
  %305 = bitcast <2 x i64> %304 to <4 x i32>
  %306 = bitcast <2 x i64> %303 to <4 x i32>
  %307 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %306, <4 x i32> %305)
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %309 = load <2 x i64>, ptr %308, align 1
  %310 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %309)
  %311 = xor <2 x i64> %310, <i64 8711581037947681227, i64 2410270004345854594>
  %312 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %311, <2 x i64> %311, <2 x i64> splat (i64 32))
  %313 = bitcast <2 x i64> %312 to <4 x i32>
  %314 = bitcast <2 x i64> %311 to <4 x i32>
  %315 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %314, <4 x i32> %313)
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %317 = load <2 x i64>, ptr %316, align 1
  %318 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %317)
  %319 = xor <2 x i64> %318, <i64 -8204357891075471176, i64 5487137525590930912>
  %320 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %319, <2 x i64> %319, <2 x i64> splat (i64 32))
  %321 = bitcast <2 x i64> %320 to <4 x i32>
  %322 = bitcast <2 x i64> %319 to <4 x i32>
  %323 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %322, <4 x i32> %321)
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %325, i32 0, i32 3, i32 1)
  %326 = load <2 x i64>, ptr %324, align 1
  %327 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %326)
  %328 = xor <2 x i64> %327, <i64 2066345149520216444, i64 -2623469361688619810>
  %329 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %328, <2 x i64> %328, <2 x i64> splat (i64 32))
  %330 = bitcast <2 x i64> %329 to <4 x i32>
  %331 = bitcast <2 x i64> %328 to <4 x i32>
  %332 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %331, <4 x i32> %330)
  %333 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %334 = load <2 x i64>, ptr %333, align 1
  %335 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %334)
  %336 = xor <2 x i64> %335, <i64 2262974939099578482, i64 8711581037947681227>
  %337 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %336, <2 x i64> %336, <2 x i64> splat (i64 32))
  %338 = bitcast <2 x i64> %337 to <4 x i32>
  %339 = bitcast <2 x i64> %336 to <4 x i32>
  %340 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %339, <4 x i32> %338)
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %342 = load <2 x i64>, ptr %341, align 1
  %343 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %342)
  %344 = xor <2 x i64> %343, <i64 2410270004345854594, i64 -8204357891075471176>
  %345 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %344, <2 x i64> %344, <2 x i64> splat (i64 32))
  %346 = bitcast <2 x i64> %345 to <4 x i32>
  %347 = bitcast <2 x i64> %344 to <4 x i32>
  %348 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %347, <4 x i32> %346)
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %350 = load <2 x i64>, ptr %349, align 1
  %351 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %350)
  %352 = xor <2 x i64> %351, <i64 5487137525590930912, i64 -3818837453329782724>
  %353 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %352, <2 x i64> %352, <2 x i64> splat (i64 32))
  %354 = bitcast <2 x i64> %353 to <4 x i32>
  %355 = bitcast <2 x i64> %352 to <4 x i32>
  %356 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %355, <4 x i32> %354)
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %358, i32 0, i32 3, i32 1)
  %359 = load <2 x i64>, ptr %357, align 1
  %360 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %359)
  %361 = xor <2 x i64> %360, <i64 -2623469361688619810, i64 2262974939099578482>
  %362 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %361, <2 x i64> %361, <2 x i64> splat (i64 32))
  %363 = bitcast <2 x i64> %362 to <4 x i32>
  %364 = bitcast <2 x i64> %361 to <4 x i32>
  %365 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %364, <4 x i32> %363)
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %367 = load <2 x i64>, ptr %366, align 1
  %368 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %367)
  %369 = xor <2 x i64> %368, <i64 8711581037947681227, i64 2410270004345854594>
  %370 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %369, <2 x i64> %369, <2 x i64> splat (i64 32))
  %371 = bitcast <2 x i64> %370 to <4 x i32>
  %372 = bitcast <2 x i64> %369 to <4 x i32>
  %373 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %372, <4 x i32> %371)
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %375 = load <2 x i64>, ptr %374, align 1
  %376 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %375)
  %377 = xor <2 x i64> %376, <i64 -8204357891075471176, i64 5487137525590930912>
  %378 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %377, <2 x i64> %377, <2 x i64> splat (i64 32))
  %379 = bitcast <2 x i64> %378 to <4 x i32>
  %380 = bitcast <2 x i64> %377 to <4 x i32>
  %381 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %380, <4 x i32> %379)
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %383 = load <2 x i64>, ptr %382, align 1
  %384 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %383)
  %385 = xor <2 x i64> %384, <i64 -3818837453329782724, i64 -6688317018830679928>
  %386 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %385, <2 x i64> %385, <2 x i64> splat (i64 32))
  %387 = bitcast <2 x i64> %386 to <4 x i32>
  %388 = bitcast <2 x i64> %385 to <4 x i32>
  %389 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %388, <4 x i32> %387)
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %391, i32 0, i32 3, i32 1)
  %392 = load <2 x i64>, ptr %390, align 1
  %393 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %392)
  %394 = xor <2 x i64> %393, <i64 2262974939099578482, i64 8711581037947681227>
  %395 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %394, <2 x i64> %394, <2 x i64> splat (i64 32))
  %396 = bitcast <2 x i64> %395 to <4 x i32>
  %397 = bitcast <2 x i64> %394 to <4 x i32>
  %398 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %397, <4 x i32> %396)
  %399 = add <2 x i64> %294, <i64 3266489917, i64 -7046029288634856825>
  %400 = add <2 x i64> %399, %299
  %401 = add <2 x i64> %400, %327
  %402 = add <2 x i64> %401, %332
  %403 = add <2 x i64> %402, %360
  %404 = add <2 x i64> %403, %365
  %405 = add <2 x i64> %404, %393
  %406 = add <2 x i64> %405, %398
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %408 = load <2 x i64>, ptr %407, align 1
  %409 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %408)
  %410 = xor <2 x i64> %409, <i64 2410270004345854594, i64 -8204357891075471176>
  %411 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %410, <2 x i64> %410, <2 x i64> splat (i64 32))
  %412 = bitcast <2 x i64> %411 to <4 x i32>
  %413 = bitcast <2 x i64> %410 to <4 x i32>
  %414 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %413, <4 x i32> %412)
  %415 = add <2 x i64> %302, <i64 -4417276706812531889, i64 1609587929392839161>
  %416 = add <2 x i64> %415, %307
  %417 = add <2 x i64> %416, %335
  %418 = add <2 x i64> %417, %340
  %419 = add <2 x i64> %418, %368
  %420 = add <2 x i64> %419, %373
  %421 = add <2 x i64> %420, %409
  %422 = add <2 x i64> %421, %414
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %424 = load <2 x i64>, ptr %423, align 1
  %425 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %424)
  %426 = xor <2 x i64> %425, <i64 5487137525590930912, i64 -3818837453329782724>
  %427 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %426, <2 x i64> %426, <2 x i64> splat (i64 32))
  %428 = bitcast <2 x i64> %427 to <4 x i32>
  %429 = bitcast <2 x i64> %426 to <4 x i32>
  %430 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %429, <4 x i32> %428)
  %431 = add <2 x i64> %310, <i64 -8796714831421723037, i64 2246822519>
  %432 = add <2 x i64> %431, %315
  %433 = add <2 x i64> %432, %343
  %434 = add <2 x i64> %433, %348
  %435 = add <2 x i64> %434, %376
  %436 = add <2 x i64> %435, %381
  %437 = add <2 x i64> %436, %425
  %438 = add <2 x i64> %437, %430
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %440 = load <2 x i64>, ptr %439, align 1
  %441 = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %440)
  %442 = xor <2 x i64> %441, <i64 -6688317018830679928, i64 5690594596133299313>
  %443 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %442, <2 x i64> %442, <2 x i64> splat (i64 32))
  %444 = bitcast <2 x i64> %443 to <4 x i32>
  %445 = bitcast <2 x i64> %442 to <4 x i32>
  %446 = tail call <2 x i64> @llvm.s390.vmlof(<4 x i32> %445, <4 x i32> %444)
  %447 = add <2 x i64> %318, <i64 2870177450012600261, i64 2654435761>
  %448 = add <2 x i64> %447, %323
  %449 = add <2 x i64> %448, %351
  %450 = add <2 x i64> %449, %356
  %451 = add <2 x i64> %450, %384
  %452 = add <2 x i64> %451, %389
  %453 = add <2 x i64> %452, %441
  %454 = add <2 x i64> %453, %446
  %455 = extractelement <2 x i64> %406, i64 0
  %456 = xor i64 %455, 7914194659941938988
  %457 = extractelement <2 x i64> %406, i64 1
  %458 = xor i64 %457, -6611157965513653271
  %459 = zext i64 %456 to i128
  %460 = zext i64 %458 to i128
  %461 = mul nuw i128 %460, %459
  %462 = lshr i128 %461, 64
  %463 = xor i128 %462, %461
  %464 = trunc i128 %463 to i64
  %465 = add i64 %464, 3997421333012711168
  %466 = extractelement <2 x i64> %422, i64 0
  %467 = xor i64 %466, -1839215637059881052
  %468 = extractelement <2 x i64> %422, i64 1
  %469 = xor i64 %468, -3433288310154277810
  %470 = zext i64 %467 to i128
  %471 = zext i64 %469 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %465, %475
  %477 = extractelement <2 x i64> %438, i64 0
  %478 = xor i64 %477, 5046485836271438973
  %479 = extractelement <2 x i64> %438, i64 1
  %480 = xor i64 %479, -8055285457383852172
  %481 = zext i64 %478 to i128
  %482 = zext i64 %480 to i128
  %483 = mul nuw i128 %482, %481
  %484 = lshr i128 %483, 64
  %485 = xor i128 %484, %483
  %486 = trunc i128 %485 to i64
  %487 = add i64 %476, %486
  %488 = extractelement <2 x i64> %454, i64 0
  %489 = xor i64 %488, 5920048007935066598
  %490 = extractelement <2 x i64> %454, i64 1
  %491 = xor i64 %490, 7336514198459093435
  br label %492

492:                                              ; preds = %5, %291
  %493 = phi i64 [ %285, %5 ], [ %489, %291 ]
  %494 = phi i64 [ %290, %5 ], [ %491, %291 ]
  %495 = phi i64 [ %280, %5 ], [ %487, %291 ]
  %496 = zext i64 %493 to i128
  %497 = zext i64 %494 to i128
  %498 = mul nuw i128 %497, %496
  %499 = lshr i128 %498, 64
  %500 = xor i128 %499, %498
  %501 = trunc i128 %500 to i64
  %502 = add i64 %495, %501
  %503 = lshr i64 %502, 37
  %504 = xor i64 %503, %502
  %505 = mul i64 %504, 1609587929392839161
  %506 = lshr i64 %505, 32
  %507 = xor i64 %506, %505
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %507
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #3

; Function Attrs: nofree nosync nounwind memory(none)
declare <2 x i64> @llvm.s390.vmlof(<4 x i32>, <4 x i32>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="z14" "target-features"="+transactional-execution,+vector,+vector-enhancements-1" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
