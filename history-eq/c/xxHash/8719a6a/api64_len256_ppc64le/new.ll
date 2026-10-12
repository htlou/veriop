; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len256_ppc64le/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8719a6a/api64_len256_ppc64le/wrapper.c"
target datalayout = "e-m:e-Fn32-i64:64-i128:128-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %247, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, -4734510112055689544
  store i64 %6, ptr %3, align 16
  %7 = sub i64 2066345149520216444, %1
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %7, ptr %8, align 8
  %9 = add i64 %1, -2623469361688619810
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %9, ptr %10, align 16
  %11 = sub i64 2262974939099578482, %1
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %11, ptr %12, align 8
  %13 = add i64 %1, 8711581037947681227
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %13, ptr %14, align 16
  %15 = sub i64 2410270004345854594, %1
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %15, ptr %16, align 8
  %17 = add i64 %1, -8204357891075471176
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %17, ptr %18, align 16
  %19 = sub i64 5487137525590930912, %1
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %19, ptr %20, align 8
  %21 = add i64 %1, -3818837453329782724
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %21, ptr %22, align 16
  %23 = sub i64 -6688317018830679928, %1
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %23, ptr %24, align 8
  %25 = add i64 %1, 5690594596133299313
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %25, ptr %26, align 16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = load <2 x i64>, ptr %0, align 1
  %29 = load <2 x i64>, ptr %3, align 16
  %30 = xor <2 x i64> %29, %28
  %31 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %30, <2 x i64> splat (i64 32))
  %32 = bitcast <2 x i64> %31 to <4 x i32>
  %33 = bitcast <2 x i64> %30 to <4 x i32>
  %34 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %33, <4 x i32> %32)
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = load <2 x i64>, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %38 = load <2 x i64>, ptr %37, align 16
  %39 = xor <2 x i64> %38, %36
  %40 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %39, <2 x i64> splat (i64 32))
  %41 = bitcast <2 x i64> %40 to <4 x i32>
  %42 = bitcast <2 x i64> %39 to <4 x i32>
  %43 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %42, <4 x i32> %41)
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load <2 x i64>, ptr %44, align 1
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %47 = load <2 x i64>, ptr %46, align 16
  %48 = xor <2 x i64> %47, %45
  %49 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %48, <2 x i64> splat (i64 32))
  %50 = bitcast <2 x i64> %49 to <4 x i32>
  %51 = bitcast <2 x i64> %48 to <4 x i32>
  %52 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %51, <4 x i32> %50)
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %54 = load <2 x i64>, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %56 = load <2 x i64>, ptr %55, align 16
  %57 = xor <2 x i64> %56, %54
  %58 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %57, <2 x i64> splat (i64 32))
  %59 = bitcast <2 x i64> %58 to <4 x i32>
  %60 = bitcast <2 x i64> %57 to <4 x i32>
  %61 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %60, <4 x i32> %59)
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %63, i32 0, i32 3, i32 1)
  %64 = load <2 x i64>, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %66 = load <2 x i64>, ptr %65, align 8
  %67 = xor <2 x i64> %66, %64
  %68 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %67, <2 x i64> splat (i64 32))
  %69 = bitcast <2 x i64> %68 to <4 x i32>
  %70 = bitcast <2 x i64> %67 to <4 x i32>
  %71 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %70, <4 x i32> %69)
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %73 = load <2 x i64>, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %75 = load <2 x i64>, ptr %74, align 8
  %76 = xor <2 x i64> %75, %73
  %77 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %76, <2 x i64> splat (i64 32))
  %78 = bitcast <2 x i64> %77 to <4 x i32>
  %79 = bitcast <2 x i64> %76 to <4 x i32>
  %80 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %79, <4 x i32> %78)
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %82 = load <2 x i64>, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %84 = load <2 x i64>, ptr %83, align 8
  %85 = xor <2 x i64> %84, %82
  %86 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %85, <2 x i64> splat (i64 32))
  %87 = bitcast <2 x i64> %86 to <4 x i32>
  %88 = bitcast <2 x i64> %85 to <4 x i32>
  %89 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %88, <4 x i32> %87)
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %91 = load <2 x i64>, ptr %90, align 1
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %93 = load <2 x i64>, ptr %92, align 8
  %94 = xor <2 x i64> %93, %91
  %95 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %94, <2 x i64> splat (i64 32))
  %96 = bitcast <2 x i64> %95 to <4 x i32>
  %97 = bitcast <2 x i64> %94 to <4 x i32>
  %98 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %97, <4 x i32> %96)
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %100, i32 0, i32 3, i32 1)
  %101 = load <2 x i64>, ptr %99, align 1
  %102 = xor <2 x i64> %101, %38
  %103 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %102, <2 x i64> splat (i64 32))
  %104 = bitcast <2 x i64> %103 to <4 x i32>
  %105 = bitcast <2 x i64> %102 to <4 x i32>
  %106 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %105, <4 x i32> %104)
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %108 = load <2 x i64>, ptr %107, align 1
  %109 = xor <2 x i64> %108, %47
  %110 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %109, <2 x i64> splat (i64 32))
  %111 = bitcast <2 x i64> %110 to <4 x i32>
  %112 = bitcast <2 x i64> %109 to <4 x i32>
  %113 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %112, <4 x i32> %111)
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %115 = load <2 x i64>, ptr %114, align 1
  %116 = xor <2 x i64> %115, %56
  %117 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %116, <2 x i64> splat (i64 32))
  %118 = bitcast <2 x i64> %117 to <4 x i32>
  %119 = bitcast <2 x i64> %116 to <4 x i32>
  %120 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %119, <4 x i32> %118)
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %122 = load <2 x i64>, ptr %121, align 1
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %124 = load <2 x i64>, ptr %123, align 16
  %125 = xor <2 x i64> %124, %122
  %126 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %125, <2 x i64> splat (i64 32))
  %127 = bitcast <2 x i64> %126 to <4 x i32>
  %128 = bitcast <2 x i64> %125 to <4 x i32>
  %129 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %128, <4 x i32> %127)
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %131, i32 0, i32 3, i32 1)
  %132 = load <2 x i64>, ptr %130, align 1
  %133 = xor <2 x i64> %132, %75
  %134 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %133, <2 x i64> splat (i64 32))
  %135 = bitcast <2 x i64> %134 to <4 x i32>
  %136 = bitcast <2 x i64> %133 to <4 x i32>
  %137 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %136, <4 x i32> %135)
  %138 = add <2 x i64> %28, <i64 3266489917, i64 -7046029288634856825>
  %139 = add <2 x i64> %138, %34
  %140 = add <2 x i64> %139, %64
  %141 = add <2 x i64> %140, %71
  %142 = add <2 x i64> %141, %101
  %143 = add <2 x i64> %142, %106
  %144 = add <2 x i64> %143, %132
  %145 = add <2 x i64> %144, %137
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %147 = load <2 x i64>, ptr %146, align 1
  %148 = xor <2 x i64> %147, %84
  %149 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %148, <2 x i64> splat (i64 32))
  %150 = bitcast <2 x i64> %149 to <4 x i32>
  %151 = bitcast <2 x i64> %148 to <4 x i32>
  %152 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %151, <4 x i32> %150)
  %153 = add <2 x i64> %36, <i64 -4417276706812531889, i64 1609587929392839161>
  %154 = add <2 x i64> %153, %43
  %155 = add <2 x i64> %154, %73
  %156 = add <2 x i64> %155, %80
  %157 = add <2 x i64> %156, %108
  %158 = add <2 x i64> %157, %113
  %159 = add <2 x i64> %158, %147
  %160 = add <2 x i64> %159, %152
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %162 = load <2 x i64>, ptr %161, align 1
  %163 = xor <2 x i64> %162, %93
  %164 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %163, <2 x i64> splat (i64 32))
  %165 = bitcast <2 x i64> %164 to <4 x i32>
  %166 = bitcast <2 x i64> %163 to <4 x i32>
  %167 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %166, <4 x i32> %165)
  %168 = add <2 x i64> %45, <i64 -8796714831421723037, i64 2246822519>
  %169 = add <2 x i64> %168, %52
  %170 = add <2 x i64> %169, %82
  %171 = add <2 x i64> %170, %89
  %172 = add <2 x i64> %171, %115
  %173 = add <2 x i64> %172, %120
  %174 = add <2 x i64> %173, %162
  %175 = add <2 x i64> %174, %167
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %177 = load <2 x i64>, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %179 = load <2 x i64>, ptr %178, align 8
  %180 = xor <2 x i64> %179, %177
  %181 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %180, <2 x i64> splat (i64 32))
  %182 = bitcast <2 x i64> %181 to <4 x i32>
  %183 = bitcast <2 x i64> %180 to <4 x i32>
  %184 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %183, <4 x i32> %182)
  %185 = add <2 x i64> %54, <i64 2870177450012600261, i64 2654435761>
  %186 = add <2 x i64> %185, %61
  %187 = add <2 x i64> %186, %91
  %188 = add <2 x i64> %187, %98
  %189 = add <2 x i64> %188, %122
  %190 = add <2 x i64> %189, %129
  %191 = add <2 x i64> %190, %177
  %192 = add <2 x i64> %191, %184
  %193 = extractelement <2 x i64> %145, i64 0
  %194 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %195 = load i64, ptr %194, align 1
  %196 = xor i64 %195, %193
  %197 = extractelement <2 x i64> %145, i64 1
  %198 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %199 = load i64, ptr %198, align 1
  %200 = xor i64 %199, %197
  %201 = zext i64 %196 to i128
  %202 = zext i64 %200 to i128
  %203 = mul nuw i128 %202, %201
  %204 = lshr i128 %203, 64
  %205 = xor i128 %204, %203
  %206 = trunc i128 %205 to i64
  %207 = add i64 %206, 3997421333012711168
  %208 = extractelement <2 x i64> %160, i64 0
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %210 = load i64, ptr %209, align 1
  %211 = xor i64 %210, %208
  %212 = extractelement <2 x i64> %160, i64 1
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = zext i64 %211 to i128
  %217 = zext i64 %215 to i128
  %218 = mul nuw i128 %217, %216
  %219 = lshr i128 %218, 64
  %220 = xor i128 %219, %218
  %221 = trunc i128 %220 to i64
  %222 = add i64 %207, %221
  %223 = extractelement <2 x i64> %175, i64 0
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %225 = load i64, ptr %224, align 1
  %226 = xor i64 %225, %223
  %227 = extractelement <2 x i64> %175, i64 1
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %229 = load i64, ptr %228, align 1
  %230 = xor i64 %229, %227
  %231 = zext i64 %226 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %222, %236
  %238 = extractelement <2 x i64> %192, i64 0
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %240 = load i64, ptr %239, align 1
  %241 = xor i64 %240, %238
  %242 = extractelement <2 x i64> %192, i64 1
  %243 = bitcast <2 x i64> %124 to i128
  %244 = lshr i128 %243, 24
  %245 = trunc i128 %244 to i64
  %246 = xor i64 %242, %245
  br label %432

247:                                              ; preds = %2
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %248, i32 0, i32 3, i32 1)
  %249 = load <2 x i64>, ptr %0, align 1
  %250 = xor <2 x i64> %249, <i64 -4734510112055689544, i64 2066345149520216444>
  %251 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %250, <2 x i64> splat (i64 32))
  %252 = bitcast <2 x i64> %251 to <4 x i32>
  %253 = bitcast <2 x i64> %250 to <4 x i32>
  %254 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %253, <4 x i32> %252)
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %256 = load <2 x i64>, ptr %255, align 1
  %257 = xor <2 x i64> %256, <i64 -2623469361688619810, i64 2262974939099578482>
  %258 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %257, <2 x i64> splat (i64 32))
  %259 = bitcast <2 x i64> %258 to <4 x i32>
  %260 = bitcast <2 x i64> %257 to <4 x i32>
  %261 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %260, <4 x i32> %259)
  %262 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %263 = load <2 x i64>, ptr %262, align 1
  %264 = xor <2 x i64> %263, <i64 8711581037947681227, i64 2410270004345854594>
  %265 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %264, <2 x i64> splat (i64 32))
  %266 = bitcast <2 x i64> %265 to <4 x i32>
  %267 = bitcast <2 x i64> %264 to <4 x i32>
  %268 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %267, <4 x i32> %266)
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %270 = load <2 x i64>, ptr %269, align 1
  %271 = xor <2 x i64> %270, <i64 -8204357891075471176, i64 5487137525590930912>
  %272 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %271, <2 x i64> splat (i64 32))
  %273 = bitcast <2 x i64> %272 to <4 x i32>
  %274 = bitcast <2 x i64> %271 to <4 x i32>
  %275 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %274, <4 x i32> %273)
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %277, i32 0, i32 3, i32 1)
  %278 = load <2 x i64>, ptr %276, align 1
  %279 = xor <2 x i64> %278, <i64 2066345149520216444, i64 -2623469361688619810>
  %280 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %279, <2 x i64> splat (i64 32))
  %281 = bitcast <2 x i64> %280 to <4 x i32>
  %282 = bitcast <2 x i64> %279 to <4 x i32>
  %283 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %282, <4 x i32> %281)
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %285 = load <2 x i64>, ptr %284, align 1
  %286 = xor <2 x i64> %285, <i64 2262974939099578482, i64 8711581037947681227>
  %287 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %286, <2 x i64> splat (i64 32))
  %288 = bitcast <2 x i64> %287 to <4 x i32>
  %289 = bitcast <2 x i64> %286 to <4 x i32>
  %290 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %289, <4 x i32> %288)
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %292 = load <2 x i64>, ptr %291, align 1
  %293 = xor <2 x i64> %292, <i64 2410270004345854594, i64 -8204357891075471176>
  %294 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %293, <2 x i64> splat (i64 32))
  %295 = bitcast <2 x i64> %294 to <4 x i32>
  %296 = bitcast <2 x i64> %293 to <4 x i32>
  %297 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %296, <4 x i32> %295)
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %299 = load <2 x i64>, ptr %298, align 1
  %300 = xor <2 x i64> %299, <i64 5487137525590930912, i64 -3818837453329782724>
  %301 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %300, <2 x i64> splat (i64 32))
  %302 = bitcast <2 x i64> %301 to <4 x i32>
  %303 = bitcast <2 x i64> %300 to <4 x i32>
  %304 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %303, <4 x i32> %302)
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %306, i32 0, i32 3, i32 1)
  %307 = load <2 x i64>, ptr %305, align 1
  %308 = xor <2 x i64> %307, <i64 -2623469361688619810, i64 2262974939099578482>
  %309 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %308, <2 x i64> splat (i64 32))
  %310 = bitcast <2 x i64> %309 to <4 x i32>
  %311 = bitcast <2 x i64> %308 to <4 x i32>
  %312 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %311, <4 x i32> %310)
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %314 = load <2 x i64>, ptr %313, align 1
  %315 = xor <2 x i64> %314, <i64 8711581037947681227, i64 2410270004345854594>
  %316 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %315, <2 x i64> splat (i64 32))
  %317 = bitcast <2 x i64> %316 to <4 x i32>
  %318 = bitcast <2 x i64> %315 to <4 x i32>
  %319 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %318, <4 x i32> %317)
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %321 = load <2 x i64>, ptr %320, align 1
  %322 = xor <2 x i64> %321, <i64 -8204357891075471176, i64 5487137525590930912>
  %323 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %322, <2 x i64> splat (i64 32))
  %324 = bitcast <2 x i64> %323 to <4 x i32>
  %325 = bitcast <2 x i64> %322 to <4 x i32>
  %326 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %325, <4 x i32> %324)
  %327 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %328 = load <2 x i64>, ptr %327, align 1
  %329 = xor <2 x i64> %328, <i64 -3818837453329782724, i64 -6688317018830679928>
  %330 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %329, <2 x i64> splat (i64 32))
  %331 = bitcast <2 x i64> %330 to <4 x i32>
  %332 = bitcast <2 x i64> %329 to <4 x i32>
  %333 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %332, <4 x i32> %331)
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %335, i32 0, i32 3, i32 1)
  %336 = load <2 x i64>, ptr %334, align 1
  %337 = xor <2 x i64> %336, <i64 2262974939099578482, i64 8711581037947681227>
  %338 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %337, <2 x i64> splat (i64 32))
  %339 = bitcast <2 x i64> %338 to <4 x i32>
  %340 = bitcast <2 x i64> %337 to <4 x i32>
  %341 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %340, <4 x i32> %339)
  %342 = add <2 x i64> %249, <i64 3266489917, i64 -7046029288634856825>
  %343 = add <2 x i64> %342, %254
  %344 = add <2 x i64> %343, %278
  %345 = add <2 x i64> %344, %283
  %346 = add <2 x i64> %345, %307
  %347 = add <2 x i64> %346, %312
  %348 = add <2 x i64> %347, %336
  %349 = add <2 x i64> %348, %341
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %351 = load <2 x i64>, ptr %350, align 1
  %352 = xor <2 x i64> %351, <i64 2410270004345854594, i64 -8204357891075471176>
  %353 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %352, <2 x i64> splat (i64 32))
  %354 = bitcast <2 x i64> %353 to <4 x i32>
  %355 = bitcast <2 x i64> %352 to <4 x i32>
  %356 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %355, <4 x i32> %354)
  %357 = add <2 x i64> %256, <i64 -4417276706812531889, i64 1609587929392839161>
  %358 = add <2 x i64> %357, %261
  %359 = add <2 x i64> %358, %285
  %360 = add <2 x i64> %359, %290
  %361 = add <2 x i64> %360, %314
  %362 = add <2 x i64> %361, %319
  %363 = add <2 x i64> %362, %351
  %364 = add <2 x i64> %363, %356
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %366 = load <2 x i64>, ptr %365, align 1
  %367 = xor <2 x i64> %366, <i64 5487137525590930912, i64 -3818837453329782724>
  %368 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %367, <2 x i64> splat (i64 32))
  %369 = bitcast <2 x i64> %368 to <4 x i32>
  %370 = bitcast <2 x i64> %367 to <4 x i32>
  %371 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %370, <4 x i32> %369)
  %372 = add <2 x i64> %263, <i64 -8796714831421723037, i64 2246822519>
  %373 = add <2 x i64> %372, %268
  %374 = add <2 x i64> %373, %292
  %375 = add <2 x i64> %374, %297
  %376 = add <2 x i64> %375, %321
  %377 = add <2 x i64> %376, %326
  %378 = add <2 x i64> %377, %366
  %379 = add <2 x i64> %378, %371
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %381 = load <2 x i64>, ptr %380, align 1
  %382 = xor <2 x i64> %381, <i64 -6688317018830679928, i64 5690594596133299313>
  %383 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %382, <2 x i64> splat (i64 32))
  %384 = bitcast <2 x i64> %383 to <4 x i32>
  %385 = bitcast <2 x i64> %382 to <4 x i32>
  %386 = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %385, <4 x i32> %384)
  %387 = add <2 x i64> %270, <i64 2870177450012600261, i64 2654435761>
  %388 = add <2 x i64> %387, %275
  %389 = add <2 x i64> %388, %299
  %390 = add <2 x i64> %389, %304
  %391 = add <2 x i64> %390, %328
  %392 = add <2 x i64> %391, %333
  %393 = add <2 x i64> %392, %381
  %394 = add <2 x i64> %393, %386
  %395 = extractelement <2 x i64> %349, i64 0
  %396 = xor i64 %395, 7914194659941938988
  %397 = extractelement <2 x i64> %349, i64 1
  %398 = xor i64 %397, -6611157965513653271
  %399 = zext i64 %396 to i128
  %400 = zext i64 %398 to i128
  %401 = mul nuw i128 %400, %399
  %402 = lshr i128 %401, 64
  %403 = xor i128 %402, %401
  %404 = trunc i128 %403 to i64
  %405 = add i64 %404, 3997421333012711168
  %406 = extractelement <2 x i64> %364, i64 0
  %407 = xor i64 %406, -1839215637059881052
  %408 = extractelement <2 x i64> %364, i64 1
  %409 = xor i64 %408, -3433288310154277810
  %410 = zext i64 %407 to i128
  %411 = zext i64 %409 to i128
  %412 = mul nuw i128 %411, %410
  %413 = lshr i128 %412, 64
  %414 = xor i128 %413, %412
  %415 = trunc i128 %414 to i64
  %416 = add i64 %405, %415
  %417 = extractelement <2 x i64> %379, i64 0
  %418 = xor i64 %417, 5046485836271438973
  %419 = extractelement <2 x i64> %379, i64 1
  %420 = xor i64 %419, -8055285457383852172
  %421 = zext i64 %418 to i128
  %422 = zext i64 %420 to i128
  %423 = mul nuw i128 %422, %421
  %424 = lshr i128 %423, 64
  %425 = xor i128 %424, %423
  %426 = trunc i128 %425 to i64
  %427 = add i64 %416, %426
  %428 = extractelement <2 x i64> %394, i64 0
  %429 = xor i64 %428, 5920048007935066598
  %430 = extractelement <2 x i64> %394, i64 1
  %431 = xor i64 %430, 7336514198459093435
  br label %432

432:                                              ; preds = %5, %247
  %433 = phi i64 [ %241, %5 ], [ %429, %247 ]
  %434 = phi i64 [ %246, %5 ], [ %431, %247 ]
  %435 = phi i64 [ %237, %5 ], [ %427, %247 ]
  %436 = zext i64 %433 to i128
  %437 = zext i64 %434 to i128
  %438 = mul nuw i128 %437, %436
  %439 = lshr i128 %438, 64
  %440 = xor i128 %439, %438
  %441 = trunc i128 %440 to i64
  %442 = add i64 %435, %441
  %443 = lshr i64 %442, 37
  %444 = xor i64 %443, %442
  %445 = mul i64 %444, 1609587929392839161
  %446 = lshr i64 %445, 32
  %447 = xor i64 %446, %445
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %447
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32>, <4 x i32>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64>, <2 x i64>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr8" "target-features"="+altivec,+bpermd,+crbits,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+quadword-atomics,+vsx,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
