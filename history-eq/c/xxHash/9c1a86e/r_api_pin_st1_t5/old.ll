; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_sec136_300_400(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #7
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %5, i8 0, i64 512, i1 false)
  %6 = icmp eq ptr %1, null
  br i1 %6, label %1154, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %12, align 32
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 72, ptr %17, align 32
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 9, ptr %18, align 8
  %19 = icmp eq ptr %0, null
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 528
  br i1 %19, label %21, label %23

21:                                               ; preds = %7
  store i64 400, ptr %20, align 16
  %22 = load i64, ptr %18, align 8
  br label %410

23:                                               ; preds = %7
  store i64 300, ptr %20, align 16
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %25 = load <4 x i64>, ptr %4, align 64
  %26 = load <4 x i64>, ptr %12, align 32
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = load <4 x i64>, ptr %0, align 1
  %29 = load <4 x i64>, ptr %1, align 1
  %30 = xor <4 x i64> %29, %28
  %31 = bitcast <4 x i64> %30 to <8 x i32>
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %33 = bitcast <8 x i32> %32 to <4 x i64>
  %34 = and <4 x i64> %30, splat (i64 4294967295)
  %35 = and <4 x i64> %33, splat (i64 4294967295)
  %36 = mul nuw <4 x i64> %35, %34
  %37 = shufflevector <4 x i64> %28, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %38 = add <4 x i64> %25, %37
  %39 = add <4 x i64> %38, %36
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %41 = load <4 x i64>, ptr %40, align 1
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %43 = load <4 x i64>, ptr %42, align 1
  %44 = xor <4 x i64> %43, %41
  %45 = bitcast <4 x i64> %44 to <8 x i32>
  %46 = shufflevector <8 x i32> %45, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %47 = bitcast <8 x i32> %46 to <4 x i64>
  %48 = and <4 x i64> %44, splat (i64 4294967295)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = shufflevector <4 x i64> %41, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %52 = add <4 x i64> %26, %51
  %53 = add <4 x i64> %52, %50
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %55, i32 0, i32 3, i32 1)
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %57 = load <4 x i64>, ptr %54, align 1
  %58 = load <4 x i64>, ptr %56, align 1
  %59 = xor <4 x i64> %58, %57
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %59, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = shufflevector <4 x i64> %57, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %67 = add <4 x i64> %39, %66
  %68 = add <4 x i64> %67, %65
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %70 = load <4 x i64>, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %72 = load <4 x i64>, ptr %71, align 1
  %73 = xor <4 x i64> %72, %70
  %74 = bitcast <4 x i64> %73 to <8 x i32>
  %75 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %76 = bitcast <8 x i32> %75 to <4 x i64>
  %77 = and <4 x i64> %73, splat (i64 4294967295)
  %78 = and <4 x i64> %76, splat (i64 4294967295)
  %79 = mul nuw <4 x i64> %78, %77
  %80 = shufflevector <4 x i64> %70, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %81 = add <4 x i64> %53, %80
  %82 = add <4 x i64> %81, %79
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %84, i32 0, i32 3, i32 1)
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %86 = load <4 x i64>, ptr %83, align 1
  %87 = load <4 x i64>, ptr %85, align 1
  %88 = xor <4 x i64> %87, %86
  %89 = bitcast <4 x i64> %88 to <8 x i32>
  %90 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %91 = bitcast <8 x i32> %90 to <4 x i64>
  %92 = and <4 x i64> %88, splat (i64 4294967295)
  %93 = and <4 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, %92
  %95 = shufflevector <4 x i64> %86, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %96 = add <4 x i64> %68, %95
  %97 = add <4 x i64> %96, %94
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %101 = load <4 x i64>, ptr %100, align 1
  %102 = xor <4 x i64> %101, %99
  %103 = bitcast <4 x i64> %102 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = and <4 x i64> %102, splat (i64 4294967295)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = shufflevector <4 x i64> %99, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %110 = add <4 x i64> %82, %109
  %111 = add <4 x i64> %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %113, i32 0, i32 3, i32 1)
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %115 = load <4 x i64>, ptr %112, align 1
  %116 = load <4 x i64>, ptr %114, align 1
  %117 = xor <4 x i64> %116, %115
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = shufflevector <4 x i64> %115, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %125 = add <4 x i64> %97, %124
  %126 = add <4 x i64> %125, %123
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %128 = load <4 x i64>, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %130 = load <4 x i64>, ptr %129, align 1
  %131 = xor <4 x i64> %130, %128
  %132 = bitcast <4 x i64> %131 to <8 x i32>
  %133 = shufflevector <8 x i32> %132, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %134 = bitcast <8 x i32> %133 to <4 x i64>
  %135 = and <4 x i64> %131, splat (i64 4294967295)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = shufflevector <4 x i64> %128, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %139 = add <4 x i64> %111, %138
  %140 = add <4 x i64> %139, %137
  store <4 x i64> %126, ptr %4, align 64
  store <4 x i64> %140, ptr %12, align 32
  store i64 4, ptr %24, align 8
  %141 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %141, ptr noundef nonnull readonly align 1 dereferenceable(64) %142, i64 64, i1 false)
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %144 = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %144, ptr noundef nonnull readonly align 1 dereferenceable(44) %143, i64 44, i1 false)
  store i32 44, ptr %8, align 64
  %145 = load ptr, ptr %16, align 8
  %146 = icmp eq ptr %145, null
  %147 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %148 = select i1 %146, ptr %147, ptr %145
  %149 = getelementptr inbounds nuw i8, ptr %4, i64 528
  store i64 700, ptr %149, align 16
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %152 = getelementptr inbounds nuw i8, ptr %4, i64 300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %152, ptr noundef nonnull readonly align 1 dereferenceable(212) %150, i64 212, i1 false)
  %153 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %154 = load i64, ptr %18, align 8
  %155 = load i64, ptr %17, align 32
  %156 = add i64 %154, -4
  %157 = icmp ugt i64 %156, 4
  br i1 %157, label %270, label %158

158:                                              ; preds = %23
  %159 = sub nsw i64 8, %154
  %160 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %161 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %162 = select i1 %146, ptr %160, ptr %161
  %163 = icmp eq i64 %154, 4
  %164 = load <4 x i64>, ptr %4, align 64
  %165 = load <4 x i64>, ptr %12, align 32
  br i1 %163, label %203, label %166

166:                                              ; preds = %158, %166
  %167 = phi <4 x i64> [ %200, %166 ], [ %165, %158 ]
  %168 = phi <4 x i64> [ %186, %166 ], [ %164, %158 ]
  %169 = phi i64 [ %201, %166 ], [ 0, %158 ]
  %170 = shl i64 %169, 6
  %171 = getelementptr inbounds nuw i8, ptr %151, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %172, i32 0, i32 3, i32 1)
  %173 = shl i64 %169, 3
  %174 = getelementptr inbounds nuw i8, ptr %162, i64 %173
  %175 = load <4 x i64>, ptr %171, align 64
  %176 = load <4 x i64>, ptr %174, align 1
  %177 = xor <4 x i64> %176, %175
  %178 = bitcast <4 x i64> %177 to <8 x i32>
  %179 = shufflevector <8 x i32> %178, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %180 = bitcast <8 x i32> %179 to <4 x i64>
  %181 = and <4 x i64> %177, splat (i64 4294967295)
  %182 = and <4 x i64> %180, splat (i64 4294967295)
  %183 = mul nuw <4 x i64> %182, %181
  %184 = shufflevector <4 x i64> %175, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %185 = add <4 x i64> %168, %184
  %186 = add <4 x i64> %185, %183
  %187 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %188 = load <4 x i64>, ptr %187, align 32
  %189 = getelementptr inbounds nuw i8, ptr %174, i64 32
  %190 = load <4 x i64>, ptr %189, align 1
  %191 = xor <4 x i64> %190, %188
  %192 = bitcast <4 x i64> %191 to <8 x i32>
  %193 = shufflevector <8 x i32> %192, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %194 = bitcast <8 x i32> %193 to <4 x i64>
  %195 = and <4 x i64> %191, splat (i64 4294967295)
  %196 = and <4 x i64> %194, splat (i64 4294967295)
  %197 = mul nuw <4 x i64> %196, %195
  %198 = shufflevector <4 x i64> %188, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %199 = add <4 x i64> %167, %198
  %200 = add <4 x i64> %199, %197
  %201 = add nuw i64 %169, 1
  %202 = icmp eq i64 %201, %156
  br i1 %202, label %203, label %166

203:                                              ; preds = %166, %158
  %204 = phi <4 x i64> [ %165, %158 ], [ %200, %166 ]
  %205 = phi <4 x i64> [ %164, %158 ], [ %186, %166 ]
  %206 = getelementptr inbounds nuw i8, ptr %148, i64 %155
  %207 = lshr <4 x i64> %205, splat (i64 47)
  %208 = load <4 x i64>, ptr %206, align 1
  %209 = xor <4 x i64> %207, %208
  %210 = xor <4 x i64> %209, %205
  %211 = bitcast <4 x i64> %210 to <8 x i32>
  %212 = shufflevector <8 x i32> %211, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %213 = bitcast <8 x i32> %212 to <4 x i64>
  %214 = and <4 x i64> %210, splat (i64 4294967295)
  %215 = mul nuw <4 x i64> %214, splat (i64 2654435761)
  %216 = mul <4 x i64> %213, splat (i64 -7046029290881679360)
  %217 = add <4 x i64> %216, %215
  store <4 x i64> %217, ptr %4, align 64
  %218 = lshr <4 x i64> %204, splat (i64 47)
  %219 = getelementptr inbounds nuw i8, ptr %206, i64 32
  %220 = load <4 x i64>, ptr %219, align 1
  %221 = xor <4 x i64> %218, %220
  %222 = xor <4 x i64> %221, %204
  %223 = bitcast <4 x i64> %222 to <8 x i32>
  %224 = shufflevector <8 x i32> %223, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %225 = bitcast <8 x i32> %224 to <4 x i64>
  %226 = and <4 x i64> %222, splat (i64 4294967295)
  %227 = mul nuw <4 x i64> %226, splat (i64 2654435761)
  %228 = mul <4 x i64> %225, splat (i64 -7046029290881679360)
  %229 = add <4 x i64> %228, %227
  store <4 x i64> %229, ptr %12, align 32
  %230 = shl nuw nsw i64 %156, 6
  %231 = getelementptr inbounds nuw i8, ptr %151, i64 %230
  %232 = icmp eq i64 %156, 4
  br i1 %232, label %408, label %233

233:                                              ; preds = %203, %233
  %234 = phi <4 x i64> [ %267, %233 ], [ %229, %203 ]
  %235 = phi <4 x i64> [ %253, %233 ], [ %217, %203 ]
  %236 = phi i64 [ %268, %233 ], [ 0, %203 ]
  %237 = shl i64 %236, 6
  %238 = getelementptr inbounds nuw i8, ptr %231, i64 %237
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %239, i32 0, i32 3, i32 1)
  %240 = shl i64 %236, 3
  %241 = getelementptr inbounds nuw i8, ptr %148, i64 %240
  %242 = load <4 x i64>, ptr %238, align 64
  %243 = load <4 x i64>, ptr %241, align 1
  %244 = xor <4 x i64> %243, %242
  %245 = bitcast <4 x i64> %244 to <8 x i32>
  %246 = shufflevector <8 x i32> %245, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %247 = bitcast <8 x i32> %246 to <4 x i64>
  %248 = and <4 x i64> %244, splat (i64 4294967295)
  %249 = and <4 x i64> %247, splat (i64 4294967295)
  %250 = mul nuw <4 x i64> %249, %248
  %251 = shufflevector <4 x i64> %242, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %252 = add <4 x i64> %235, %251
  %253 = add <4 x i64> %252, %250
  %254 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %255 = load <4 x i64>, ptr %254, align 32
  %256 = getelementptr inbounds nuw i8, ptr %241, i64 32
  %257 = load <4 x i64>, ptr %256, align 1
  %258 = xor <4 x i64> %257, %255
  %259 = bitcast <4 x i64> %258 to <8 x i32>
  %260 = shufflevector <8 x i32> %259, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %261 = bitcast <8 x i32> %260 to <4 x i64>
  %262 = and <4 x i64> %258, splat (i64 4294967295)
  %263 = and <4 x i64> %261, splat (i64 4294967295)
  %264 = mul nuw <4 x i64> %263, %262
  %265 = shufflevector <4 x i64> %255, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %266 = add <4 x i64> %234, %265
  %267 = add <4 x i64> %266, %264
  %268 = add nuw i64 %236, 1
  %269 = icmp eq i64 %268, %159
  br i1 %269, label %404, label %233

270:                                              ; preds = %23
  %271 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %272 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %273 = select i1 %146, ptr %271, ptr %272
  %274 = load <4 x i64>, ptr %4, align 64
  %275 = load <4 x i64>, ptr %12, align 32
  %276 = getelementptr inbounds nuw i8, ptr %4, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %276, i32 0, i32 3, i32 1)
  %277 = load <4 x i64>, ptr %151, align 64
  %278 = load <4 x i64>, ptr %273, align 1
  %279 = xor <4 x i64> %278, %277
  %280 = bitcast <4 x i64> %279 to <8 x i32>
  %281 = shufflevector <8 x i32> %280, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %282 = bitcast <8 x i32> %281 to <4 x i64>
  %283 = and <4 x i64> %279, splat (i64 4294967295)
  %284 = and <4 x i64> %282, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, %283
  %286 = shufflevector <4 x i64> %277, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %287 = add <4 x i64> %274, %286
  %288 = add <4 x i64> %287, %285
  %289 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %290 = load <4 x i64>, ptr %289, align 32
  %291 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %292 = getelementptr inbounds nuw i8, ptr %145, i64 64
  %293 = select i1 %146, ptr %291, ptr %292
  %294 = load <4 x i64>, ptr %293, align 1
  %295 = xor <4 x i64> %294, %290
  %296 = bitcast <4 x i64> %295 to <8 x i32>
  %297 = shufflevector <8 x i32> %296, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %298 = bitcast <8 x i32> %297 to <4 x i64>
  %299 = and <4 x i64> %295, splat (i64 4294967295)
  %300 = and <4 x i64> %298, splat (i64 4294967295)
  %301 = mul nuw <4 x i64> %300, %299
  %302 = shufflevector <4 x i64> %290, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %303 = add <4 x i64> %275, %302
  %304 = add <4 x i64> %303, %301
  %305 = getelementptr inbounds nuw i8, ptr %4, i64 320
  %306 = getelementptr inbounds nuw i8, ptr %4, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %306, i32 0, i32 3, i32 1)
  %307 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %308 = getelementptr inbounds nuw i8, ptr %145, i64 40
  %309 = select i1 %146, ptr %307, ptr %308
  %310 = load <4 x i64>, ptr %305, align 64
  %311 = load <4 x i64>, ptr %309, align 1
  %312 = xor <4 x i64> %311, %310
  %313 = bitcast <4 x i64> %312 to <8 x i32>
  %314 = shufflevector <8 x i32> %313, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %315 = bitcast <8 x i32> %314 to <4 x i64>
  %316 = and <4 x i64> %312, splat (i64 4294967295)
  %317 = and <4 x i64> %315, splat (i64 4294967295)
  %318 = mul nuw <4 x i64> %317, %316
  %319 = shufflevector <4 x i64> %310, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %320 = add <4 x i64> %288, %319
  %321 = add <4 x i64> %320, %318
  %322 = getelementptr inbounds nuw i8, ptr %4, i64 352
  %323 = load <4 x i64>, ptr %322, align 32
  %324 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %325 = getelementptr inbounds nuw i8, ptr %145, i64 72
  %326 = select i1 %146, ptr %324, ptr %325
  %327 = load <4 x i64>, ptr %326, align 1
  %328 = xor <4 x i64> %327, %323
  %329 = bitcast <4 x i64> %328 to <8 x i32>
  %330 = shufflevector <8 x i32> %329, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %331 = bitcast <8 x i32> %330 to <4 x i64>
  %332 = and <4 x i64> %328, splat (i64 4294967295)
  %333 = and <4 x i64> %331, splat (i64 4294967295)
  %334 = mul nuw <4 x i64> %333, %332
  %335 = shufflevector <4 x i64> %323, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %336 = add <4 x i64> %304, %335
  %337 = add <4 x i64> %336, %334
  %338 = getelementptr inbounds nuw i8, ptr %4, i64 384
  %339 = getelementptr inbounds nuw i8, ptr %4, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %339, i32 0, i32 3, i32 1)
  %340 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %341 = getelementptr inbounds nuw i8, ptr %145, i64 48
  %342 = select i1 %146, ptr %340, ptr %341
  %343 = load <4 x i64>, ptr %338, align 64
  %344 = load <4 x i64>, ptr %342, align 1
  %345 = xor <4 x i64> %344, %343
  %346 = bitcast <4 x i64> %345 to <8 x i32>
  %347 = shufflevector <8 x i32> %346, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %348 = bitcast <8 x i32> %347 to <4 x i64>
  %349 = and <4 x i64> %345, splat (i64 4294967295)
  %350 = and <4 x i64> %348, splat (i64 4294967295)
  %351 = mul nuw <4 x i64> %350, %349
  %352 = shufflevector <4 x i64> %343, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %353 = add <4 x i64> %321, %352
  %354 = add <4 x i64> %353, %351
  %355 = getelementptr inbounds nuw i8, ptr %4, i64 416
  %356 = load <4 x i64>, ptr %355, align 32
  %357 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %358 = getelementptr inbounds nuw i8, ptr %145, i64 80
  %359 = select i1 %146, ptr %357, ptr %358
  %360 = load <4 x i64>, ptr %359, align 1
  %361 = xor <4 x i64> %360, %356
  %362 = bitcast <4 x i64> %361 to <8 x i32>
  %363 = shufflevector <8 x i32> %362, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %364 = bitcast <8 x i32> %363 to <4 x i64>
  %365 = and <4 x i64> %361, splat (i64 4294967295)
  %366 = and <4 x i64> %364, splat (i64 4294967295)
  %367 = mul nuw <4 x i64> %366, %365
  %368 = shufflevector <4 x i64> %356, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %369 = add <4 x i64> %337, %368
  %370 = add <4 x i64> %369, %367
  %371 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %372 = getelementptr inbounds nuw i8, ptr %4, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %372, i32 0, i32 3, i32 1)
  %373 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %374 = getelementptr inbounds nuw i8, ptr %145, i64 56
  %375 = select i1 %146, ptr %373, ptr %374
  %376 = load <4 x i64>, ptr %371, align 64
  %377 = load <4 x i64>, ptr %375, align 1
  %378 = xor <4 x i64> %377, %376
  %379 = bitcast <4 x i64> %378 to <8 x i32>
  %380 = shufflevector <8 x i32> %379, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %381 = bitcast <8 x i32> %380 to <4 x i64>
  %382 = and <4 x i64> %378, splat (i64 4294967295)
  %383 = and <4 x i64> %381, splat (i64 4294967295)
  %384 = mul nuw <4 x i64> %383, %382
  %385 = shufflevector <4 x i64> %376, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %386 = add <4 x i64> %354, %385
  %387 = add <4 x i64> %386, %384
  %388 = getelementptr inbounds nuw i8, ptr %4, i64 480
  %389 = load <4 x i64>, ptr %388, align 32
  %390 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %391 = getelementptr inbounds nuw i8, ptr %145, i64 88
  %392 = select i1 %146, ptr %390, ptr %391
  %393 = load <4 x i64>, ptr %392, align 1
  %394 = xor <4 x i64> %393, %389
  %395 = bitcast <4 x i64> %394 to <8 x i32>
  %396 = shufflevector <8 x i32> %395, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %397 = bitcast <8 x i32> %396 to <4 x i64>
  %398 = and <4 x i64> %394, splat (i64 4294967295)
  %399 = and <4 x i64> %397, splat (i64 4294967295)
  %400 = mul nuw <4 x i64> %399, %398
  %401 = shufflevector <4 x i64> %389, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %402 = add <4 x i64> %370, %401
  %403 = add <4 x i64> %402, %400
  br label %404

404:                                              ; preds = %233, %270
  %405 = phi <4 x i64> [ %387, %270 ], [ %253, %233 ]
  %406 = phi <4 x i64> [ %403, %270 ], [ %267, %233 ]
  %407 = phi i64 [ 8, %270 ], [ %159, %233 ]
  store <4 x i64> %405, ptr %4, align 64
  store <4 x i64> %406, ptr %12, align 32
  br label %408

408:                                              ; preds = %404, %203
  %409 = phi i64 [ 0, %203 ], [ %407, %404 ]
  store i64 %409, ptr %153, align 8
  store i32 0, ptr %8, align 64
  br label %410

410:                                              ; preds = %408, %21
  %411 = phi ptr [ %149, %408 ], [ %20, %21 ]
  %412 = phi ptr [ %148, %408 ], [ %1, %21 ]
  %413 = phi i64 [ %154, %408 ], [ %22, %21 ]
  %414 = phi i64 [ 512, %408 ], [ 300, %21 ]
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 %414
  %416 = sub nuw nsw i64 700, %414
  %417 = shl i64 %413, 6
  %418 = icmp ugt i64 %416, %417
  br i1 %418, label %422, label %419

419:                                              ; preds = %410
  %420 = load <4 x i64>, ptr %4, align 64
  %421 = load <4 x i64>, ptr %12, align 32
  br label %586

422:                                              ; preds = %410
  %423 = lshr i64 %416, 6
  %424 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %425 = load i64, ptr %424, align 8
  %426 = sub i64 %413, %425
  %427 = shl i64 %425, 3
  %428 = getelementptr inbounds nuw i8, ptr %412, i64 %427
  %429 = icmp eq i64 %413, %425
  %430 = load <4 x i64>, ptr %4, align 64
  %431 = load <4 x i64>, ptr %12, align 32
  br i1 %429, label %470, label %432

432:                                              ; preds = %422, %432
  %433 = phi <4 x i64> [ %466, %432 ], [ %431, %422 ]
  %434 = phi <4 x i64> [ %452, %432 ], [ %430, %422 ]
  %435 = phi i64 [ %467, %432 ], [ 0, %422 ]
  %436 = shl i64 %435, 6
  %437 = getelementptr inbounds nuw i8, ptr %415, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %438, i32 0, i32 3, i32 1)
  %439 = shl i64 %435, 3
  %440 = getelementptr inbounds nuw i8, ptr %428, i64 %439
  %441 = load <4 x i64>, ptr %437, align 1
  %442 = load <4 x i64>, ptr %440, align 1
  %443 = xor <4 x i64> %442, %441
  %444 = bitcast <4 x i64> %443 to <8 x i32>
  %445 = shufflevector <8 x i32> %444, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %446 = bitcast <8 x i32> %445 to <4 x i64>
  %447 = and <4 x i64> %443, splat (i64 4294967295)
  %448 = and <4 x i64> %446, splat (i64 4294967295)
  %449 = mul nuw <4 x i64> %448, %447
  %450 = shufflevector <4 x i64> %441, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %451 = add <4 x i64> %434, %450
  %452 = add <4 x i64> %451, %449
  %453 = getelementptr inbounds nuw i8, ptr %437, i64 32
  %454 = load <4 x i64>, ptr %453, align 1
  %455 = getelementptr inbounds nuw i8, ptr %440, i64 32
  %456 = load <4 x i64>, ptr %455, align 1
  %457 = xor <4 x i64> %456, %454
  %458 = bitcast <4 x i64> %457 to <8 x i32>
  %459 = shufflevector <8 x i32> %458, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %460 = bitcast <8 x i32> %459 to <4 x i64>
  %461 = and <4 x i64> %457, splat (i64 4294967295)
  %462 = and <4 x i64> %460, splat (i64 4294967295)
  %463 = mul nuw <4 x i64> %462, %461
  %464 = shufflevector <4 x i64> %454, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %465 = add <4 x i64> %433, %464
  %466 = add <4 x i64> %465, %463
  %467 = add nuw i64 %435, 1
  %468 = icmp eq i64 %467, %426
  br i1 %468, label %469, label %432

469:                                              ; preds = %432
  store <4 x i64> %452, ptr %4, align 64
  store <4 x i64> %466, ptr %12, align 32
  br label %470

470:                                              ; preds = %469, %422
  %471 = phi <4 x i64> [ %466, %469 ], [ %431, %422 ]
  %472 = phi <4 x i64> [ %452, %469 ], [ %430, %422 ]
  %473 = load i64, ptr %17, align 32
  %474 = getelementptr inbounds nuw i8, ptr %412, i64 %473
  %475 = lshr <4 x i64> %472, splat (i64 47)
  %476 = load <4 x i64>, ptr %474, align 1
  %477 = xor <4 x i64> %475, %476
  %478 = xor <4 x i64> %477, %472
  %479 = bitcast <4 x i64> %478 to <8 x i32>
  %480 = shufflevector <8 x i32> %479, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %481 = bitcast <8 x i32> %480 to <4 x i64>
  %482 = and <4 x i64> %478, splat (i64 4294967295)
  %483 = mul nuw <4 x i64> %482, splat (i64 2654435761)
  %484 = mul <4 x i64> %481, splat (i64 -7046029290881679360)
  %485 = add <4 x i64> %484, %483
  store <4 x i64> %485, ptr %4, align 64
  %486 = lshr <4 x i64> %471, splat (i64 47)
  %487 = getelementptr inbounds nuw i8, ptr %474, i64 32
  %488 = load <4 x i64>, ptr %487, align 1
  %489 = xor <4 x i64> %486, %488
  %490 = xor <4 x i64> %489, %471
  %491 = bitcast <4 x i64> %490 to <8 x i32>
  %492 = shufflevector <8 x i32> %491, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %493 = bitcast <8 x i32> %492 to <4 x i64>
  %494 = and <4 x i64> %490, splat (i64 4294967295)
  %495 = mul nuw <4 x i64> %494, splat (i64 2654435761)
  %496 = mul <4 x i64> %493, splat (i64 -7046029290881679360)
  %497 = add <4 x i64> %496, %495
  store <4 x i64> %497, ptr %12, align 32
  store i64 0, ptr %424, align 8
  %498 = shl i64 %426, 6
  %499 = add nuw nsw i64 %498, %414
  %500 = sub i64 %423, %426
  %501 = icmp ugt i64 %500, %413
  br i1 %501, label %502, label %576

502:                                              ; preds = %470
  %503 = icmp eq i64 %413, 0
  br label %504

504:                                              ; preds = %548, %502
  %505 = phi <4 x i64> [ %497, %502 ], [ %572, %548 ]
  %506 = phi <4 x i64> [ %485, %502 ], [ %561, %548 ]
  %507 = phi i64 [ %499, %502 ], [ %573, %548 ]
  %508 = phi i64 [ %500, %502 ], [ %574, %548 ]
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 %507
  br i1 %503, label %548, label %510

510:                                              ; preds = %504, %510
  %511 = phi <4 x i64> [ %544, %510 ], [ %505, %504 ]
  %512 = phi <4 x i64> [ %530, %510 ], [ %506, %504 ]
  %513 = phi i64 [ %545, %510 ], [ 0, %504 ]
  %514 = shl i64 %513, 6
  %515 = getelementptr inbounds nuw i8, ptr %509, i64 %514
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %516, i32 0, i32 3, i32 1)
  %517 = shl i64 %513, 3
  %518 = getelementptr inbounds nuw i8, ptr %412, i64 %517
  %519 = load <4 x i64>, ptr %515, align 1
  %520 = load <4 x i64>, ptr %518, align 1
  %521 = xor <4 x i64> %520, %519
  %522 = bitcast <4 x i64> %521 to <8 x i32>
  %523 = shufflevector <8 x i32> %522, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %524 = bitcast <8 x i32> %523 to <4 x i64>
  %525 = and <4 x i64> %521, splat (i64 4294967295)
  %526 = and <4 x i64> %524, splat (i64 4294967295)
  %527 = mul nuw <4 x i64> %526, %525
  %528 = shufflevector <4 x i64> %519, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %529 = add <4 x i64> %512, %528
  %530 = add <4 x i64> %529, %527
  %531 = getelementptr inbounds nuw i8, ptr %515, i64 32
  %532 = load <4 x i64>, ptr %531, align 1
  %533 = getelementptr inbounds nuw i8, ptr %518, i64 32
  %534 = load <4 x i64>, ptr %533, align 1
  %535 = xor <4 x i64> %534, %532
  %536 = bitcast <4 x i64> %535 to <8 x i32>
  %537 = shufflevector <8 x i32> %536, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %538 = bitcast <8 x i32> %537 to <4 x i64>
  %539 = and <4 x i64> %535, splat (i64 4294967295)
  %540 = and <4 x i64> %538, splat (i64 4294967295)
  %541 = mul nuw <4 x i64> %540, %539
  %542 = shufflevector <4 x i64> %532, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %543 = add <4 x i64> %511, %542
  %544 = add <4 x i64> %543, %541
  %545 = add nuw i64 %513, 1
  %546 = icmp eq i64 %545, %413
  br i1 %546, label %547, label %510

547:                                              ; preds = %510
  store <4 x i64> %530, ptr %4, align 64
  store <4 x i64> %544, ptr %12, align 32
  br label %548

548:                                              ; preds = %547, %504
  %549 = phi <4 x i64> [ %505, %504 ], [ %544, %547 ]
  %550 = phi <4 x i64> [ %506, %504 ], [ %530, %547 ]
  %551 = lshr <4 x i64> %550, splat (i64 47)
  %552 = load <4 x i64>, ptr %474, align 1
  %553 = xor <4 x i64> %551, %552
  %554 = xor <4 x i64> %553, %550
  %555 = bitcast <4 x i64> %554 to <8 x i32>
  %556 = shufflevector <8 x i32> %555, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %557 = bitcast <8 x i32> %556 to <4 x i64>
  %558 = and <4 x i64> %554, splat (i64 4294967295)
  %559 = mul nuw <4 x i64> %558, splat (i64 2654435761)
  %560 = mul <4 x i64> %557, splat (i64 -7046029290881679360)
  %561 = add <4 x i64> %560, %559
  store <4 x i64> %561, ptr %4, align 64
  %562 = lshr <4 x i64> %549, splat (i64 47)
  %563 = load <4 x i64>, ptr %487, align 1
  %564 = xor <4 x i64> %562, %563
  %565 = xor <4 x i64> %564, %549
  %566 = bitcast <4 x i64> %565 to <8 x i32>
  %567 = shufflevector <8 x i32> %566, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %568 = bitcast <8 x i32> %567 to <4 x i64>
  %569 = and <4 x i64> %565, splat (i64 4294967295)
  %570 = mul nuw <4 x i64> %569, splat (i64 2654435761)
  %571 = mul <4 x i64> %568, splat (i64 -7046029290881679360)
  %572 = add <4 x i64> %571, %570
  store <4 x i64> %572, ptr %12, align 32
  %573 = add nuw nsw i64 %507, %417
  %574 = sub i64 %508, %413
  %575 = icmp ugt i64 %574, %413
  br i1 %575, label %504, label %576

576:                                              ; preds = %548, %470
  %577 = phi <4 x i64> [ %497, %470 ], [ %572, %548 ]
  %578 = phi <4 x i64> [ %485, %470 ], [ %561, %548 ]
  %579 = phi i64 [ %499, %470 ], [ %573, %548 ]
  %580 = sub nsw i64 700, %579
  %581 = icmp sgt i64 %579, 636
  br i1 %581, label %582, label %586

582:                                              ; preds = %576
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 %579
  %584 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %585 = getelementptr inbounds i8, ptr %583, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %584, ptr noundef nonnull readonly align 1 dereferenceable(64) %585, i64 64, i1 false)
  br label %844

586:                                              ; preds = %419, %576
  %587 = phi <4 x i64> [ %577, %576 ], [ %421, %419 ]
  %588 = phi <4 x i64> [ %578, %576 ], [ %420, %419 ]
  %589 = phi i64 [ %580, %576 ], [ %416, %419 ]
  %590 = phi i64 [ %579, %576 ], [ %414, %419 ]
  %591 = getelementptr inbounds nuw i8, ptr %0, i64 %590
  %592 = icmp sgt i64 %589, 256
  br i1 %592, label %593, label %844

593:                                              ; preds = %586
  %594 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %595 = load i64, ptr %17, align 32
  %596 = load i64, ptr %594, align 8
  %597 = getelementptr inbounds nuw i8, ptr %412, i64 %595
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 32
  br label %599

599:                                              ; preds = %833, %593
  %600 = phi <4 x i64> [ %587, %593 ], [ %834, %833 ]
  %601 = phi <4 x i64> [ %588, %593 ], [ %835, %833 ]
  %602 = phi i64 [ %596, %593 ], [ %836, %833 ]
  %603 = phi i64 [ %590, %593 ], [ %837, %833 ]
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 %603
  %605 = sub i64 %413, %602
  %606 = icmp ugt i64 %605, 4
  br i1 %606, label %715, label %607

607:                                              ; preds = %599
  %608 = sub nuw nsw i64 4, %605
  %609 = shl i64 %602, 3
  %610 = getelementptr inbounds nuw i8, ptr %412, i64 %609
  %611 = icmp eq i64 %413, %602
  br i1 %611, label %649, label %612

612:                                              ; preds = %607, %612
  %613 = phi <4 x i64> [ %646, %612 ], [ %600, %607 ]
  %614 = phi <4 x i64> [ %632, %612 ], [ %601, %607 ]
  %615 = phi i64 [ %647, %612 ], [ 0, %607 ]
  %616 = shl i64 %615, 6
  %617 = getelementptr inbounds nuw i8, ptr %604, i64 %616
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %618, i32 0, i32 3, i32 1)
  %619 = shl i64 %615, 3
  %620 = getelementptr inbounds nuw i8, ptr %610, i64 %619
  %621 = load <4 x i64>, ptr %617, align 1
  %622 = load <4 x i64>, ptr %620, align 1
  %623 = xor <4 x i64> %622, %621
  %624 = bitcast <4 x i64> %623 to <8 x i32>
  %625 = shufflevector <8 x i32> %624, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %626 = bitcast <8 x i32> %625 to <4 x i64>
  %627 = and <4 x i64> %623, splat (i64 4294967295)
  %628 = and <4 x i64> %626, splat (i64 4294967295)
  %629 = mul nuw <4 x i64> %628, %627
  %630 = shufflevector <4 x i64> %621, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %631 = add <4 x i64> %614, %630
  %632 = add <4 x i64> %631, %629
  %633 = getelementptr inbounds nuw i8, ptr %617, i64 32
  %634 = load <4 x i64>, ptr %633, align 1
  %635 = getelementptr inbounds nuw i8, ptr %620, i64 32
  %636 = load <4 x i64>, ptr %635, align 1
  %637 = xor <4 x i64> %636, %634
  %638 = bitcast <4 x i64> %637 to <8 x i32>
  %639 = shufflevector <8 x i32> %638, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %640 = bitcast <8 x i32> %639 to <4 x i64>
  %641 = and <4 x i64> %637, splat (i64 4294967295)
  %642 = and <4 x i64> %640, splat (i64 4294967295)
  %643 = mul nuw <4 x i64> %642, %641
  %644 = shufflevector <4 x i64> %634, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %645 = add <4 x i64> %613, %644
  %646 = add <4 x i64> %645, %643
  %647 = add nuw i64 %615, 1
  %648 = icmp eq i64 %647, %605
  br i1 %648, label %649, label %612

649:                                              ; preds = %612, %607
  %650 = phi <4 x i64> [ %600, %607 ], [ %646, %612 ]
  %651 = phi <4 x i64> [ %601, %607 ], [ %632, %612 ]
  %652 = lshr <4 x i64> %651, splat (i64 47)
  %653 = load <4 x i64>, ptr %597, align 1
  %654 = xor <4 x i64> %652, %653
  %655 = xor <4 x i64> %654, %651
  %656 = bitcast <4 x i64> %655 to <8 x i32>
  %657 = shufflevector <8 x i32> %656, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %658 = bitcast <8 x i32> %657 to <4 x i64>
  %659 = and <4 x i64> %655, splat (i64 4294967295)
  %660 = mul nuw <4 x i64> %659, splat (i64 2654435761)
  %661 = mul <4 x i64> %658, splat (i64 -7046029290881679360)
  %662 = add <4 x i64> %661, %660
  store <4 x i64> %662, ptr %4, align 64
  %663 = lshr <4 x i64> %650, splat (i64 47)
  %664 = load <4 x i64>, ptr %598, align 1
  %665 = xor <4 x i64> %663, %664
  %666 = xor <4 x i64> %665, %650
  %667 = bitcast <4 x i64> %666 to <8 x i32>
  %668 = shufflevector <8 x i32> %667, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %669 = bitcast <8 x i32> %668 to <4 x i64>
  %670 = and <4 x i64> %666, splat (i64 4294967295)
  %671 = mul nuw <4 x i64> %670, splat (i64 2654435761)
  %672 = mul <4 x i64> %669, splat (i64 -7046029290881679360)
  %673 = add <4 x i64> %672, %671
  store <4 x i64> %673, ptr %12, align 32
  %674 = shl nuw nsw i64 %605, 6
  %675 = getelementptr inbounds nuw i8, ptr %604, i64 %674
  %676 = icmp eq i64 %605, 4
  br i1 %676, label %833, label %677

677:                                              ; preds = %649, %677
  %678 = phi <4 x i64> [ %711, %677 ], [ %673, %649 ]
  %679 = phi <4 x i64> [ %697, %677 ], [ %662, %649 ]
  %680 = phi i64 [ %712, %677 ], [ 0, %649 ]
  %681 = shl i64 %680, 6
  %682 = getelementptr inbounds nuw i8, ptr %675, i64 %681
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %683, i32 0, i32 3, i32 1)
  %684 = shl i64 %680, 3
  %685 = getelementptr inbounds nuw i8, ptr %412, i64 %684
  %686 = load <4 x i64>, ptr %682, align 1
  %687 = load <4 x i64>, ptr %685, align 1
  %688 = xor <4 x i64> %687, %686
  %689 = bitcast <4 x i64> %688 to <8 x i32>
  %690 = shufflevector <8 x i32> %689, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %691 = bitcast <8 x i32> %690 to <4 x i64>
  %692 = and <4 x i64> %688, splat (i64 4294967295)
  %693 = and <4 x i64> %691, splat (i64 4294967295)
  %694 = mul nuw <4 x i64> %693, %692
  %695 = shufflevector <4 x i64> %686, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %696 = add <4 x i64> %679, %695
  %697 = add <4 x i64> %696, %694
  %698 = getelementptr inbounds nuw i8, ptr %682, i64 32
  %699 = load <4 x i64>, ptr %698, align 1
  %700 = getelementptr inbounds nuw i8, ptr %685, i64 32
  %701 = load <4 x i64>, ptr %700, align 1
  %702 = xor <4 x i64> %701, %699
  %703 = bitcast <4 x i64> %702 to <8 x i32>
  %704 = shufflevector <8 x i32> %703, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %705 = bitcast <8 x i32> %704 to <4 x i64>
  %706 = and <4 x i64> %702, splat (i64 4294967295)
  %707 = and <4 x i64> %705, splat (i64 4294967295)
  %708 = mul nuw <4 x i64> %707, %706
  %709 = shufflevector <4 x i64> %699, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %710 = add <4 x i64> %678, %709
  %711 = add <4 x i64> %710, %708
  %712 = add nuw i64 %680, 1
  %713 = icmp eq i64 %712, %608
  br i1 %713, label %714, label %677

714:                                              ; preds = %677
  store <4 x i64> %697, ptr %4, align 64
  store <4 x i64> %711, ptr %12, align 32
  br label %833

715:                                              ; preds = %599
  %716 = shl i64 %602, 3
  %717 = getelementptr inbounds nuw i8, ptr %412, i64 %716
  %718 = getelementptr inbounds nuw i8, ptr %604, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %718, i32 0, i32 3, i32 1)
  %719 = load <4 x i64>, ptr %604, align 1
  %720 = load <4 x i64>, ptr %717, align 1
  %721 = xor <4 x i64> %720, %719
  %722 = bitcast <4 x i64> %721 to <8 x i32>
  %723 = shufflevector <8 x i32> %722, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %724 = bitcast <8 x i32> %723 to <4 x i64>
  %725 = and <4 x i64> %721, splat (i64 4294967295)
  %726 = and <4 x i64> %724, splat (i64 4294967295)
  %727 = mul nuw <4 x i64> %726, %725
  %728 = shufflevector <4 x i64> %719, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %729 = add <4 x i64> %601, %728
  %730 = add <4 x i64> %729, %727
  %731 = getelementptr inbounds nuw i8, ptr %604, i64 32
  %732 = load <4 x i64>, ptr %731, align 1
  %733 = getelementptr inbounds nuw i8, ptr %717, i64 32
  %734 = load <4 x i64>, ptr %733, align 1
  %735 = xor <4 x i64> %734, %732
  %736 = bitcast <4 x i64> %735 to <8 x i32>
  %737 = shufflevector <8 x i32> %736, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %738 = bitcast <8 x i32> %737 to <4 x i64>
  %739 = and <4 x i64> %735, splat (i64 4294967295)
  %740 = and <4 x i64> %738, splat (i64 4294967295)
  %741 = mul nuw <4 x i64> %740, %739
  %742 = shufflevector <4 x i64> %732, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %743 = add <4 x i64> %600, %742
  %744 = add <4 x i64> %743, %741
  %745 = getelementptr inbounds nuw i8, ptr %604, i64 64
  %746 = getelementptr inbounds nuw i8, ptr %604, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %746, i32 0, i32 3, i32 1)
  %747 = getelementptr inbounds nuw i8, ptr %717, i64 8
  %748 = load <4 x i64>, ptr %745, align 1
  %749 = load <4 x i64>, ptr %747, align 1
  %750 = xor <4 x i64> %749, %748
  %751 = bitcast <4 x i64> %750 to <8 x i32>
  %752 = shufflevector <8 x i32> %751, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %753 = bitcast <8 x i32> %752 to <4 x i64>
  %754 = and <4 x i64> %750, splat (i64 4294967295)
  %755 = and <4 x i64> %753, splat (i64 4294967295)
  %756 = mul nuw <4 x i64> %755, %754
  %757 = shufflevector <4 x i64> %748, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %758 = add <4 x i64> %730, %757
  %759 = add <4 x i64> %758, %756
  %760 = getelementptr inbounds nuw i8, ptr %604, i64 96
  %761 = load <4 x i64>, ptr %760, align 1
  %762 = getelementptr inbounds nuw i8, ptr %717, i64 40
  %763 = load <4 x i64>, ptr %762, align 1
  %764 = xor <4 x i64> %763, %761
  %765 = bitcast <4 x i64> %764 to <8 x i32>
  %766 = shufflevector <8 x i32> %765, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %767 = bitcast <8 x i32> %766 to <4 x i64>
  %768 = and <4 x i64> %764, splat (i64 4294967295)
  %769 = and <4 x i64> %767, splat (i64 4294967295)
  %770 = mul nuw <4 x i64> %769, %768
  %771 = shufflevector <4 x i64> %761, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %772 = add <4 x i64> %744, %771
  %773 = add <4 x i64> %772, %770
  %774 = getelementptr inbounds nuw i8, ptr %604, i64 128
  %775 = getelementptr inbounds nuw i8, ptr %604, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %775, i32 0, i32 3, i32 1)
  %776 = getelementptr inbounds nuw i8, ptr %717, i64 16
  %777 = load <4 x i64>, ptr %774, align 1
  %778 = load <4 x i64>, ptr %776, align 1
  %779 = xor <4 x i64> %778, %777
  %780 = bitcast <4 x i64> %779 to <8 x i32>
  %781 = shufflevector <8 x i32> %780, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %782 = bitcast <8 x i32> %781 to <4 x i64>
  %783 = and <4 x i64> %779, splat (i64 4294967295)
  %784 = and <4 x i64> %782, splat (i64 4294967295)
  %785 = mul nuw <4 x i64> %784, %783
  %786 = shufflevector <4 x i64> %777, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %787 = add <4 x i64> %759, %786
  %788 = add <4 x i64> %787, %785
  %789 = getelementptr inbounds nuw i8, ptr %604, i64 160
  %790 = load <4 x i64>, ptr %789, align 1
  %791 = getelementptr inbounds nuw i8, ptr %717, i64 48
  %792 = load <4 x i64>, ptr %791, align 1
  %793 = xor <4 x i64> %792, %790
  %794 = bitcast <4 x i64> %793 to <8 x i32>
  %795 = shufflevector <8 x i32> %794, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %796 = bitcast <8 x i32> %795 to <4 x i64>
  %797 = and <4 x i64> %793, splat (i64 4294967295)
  %798 = and <4 x i64> %796, splat (i64 4294967295)
  %799 = mul nuw <4 x i64> %798, %797
  %800 = shufflevector <4 x i64> %790, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %801 = add <4 x i64> %773, %800
  %802 = add <4 x i64> %801, %799
  %803 = getelementptr inbounds nuw i8, ptr %604, i64 192
  %804 = getelementptr inbounds nuw i8, ptr %604, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %804, i32 0, i32 3, i32 1)
  %805 = getelementptr inbounds nuw i8, ptr %717, i64 24
  %806 = load <4 x i64>, ptr %803, align 1
  %807 = load <4 x i64>, ptr %805, align 1
  %808 = xor <4 x i64> %807, %806
  %809 = bitcast <4 x i64> %808 to <8 x i32>
  %810 = shufflevector <8 x i32> %809, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %811 = bitcast <8 x i32> %810 to <4 x i64>
  %812 = and <4 x i64> %808, splat (i64 4294967295)
  %813 = and <4 x i64> %811, splat (i64 4294967295)
  %814 = mul nuw <4 x i64> %813, %812
  %815 = shufflevector <4 x i64> %806, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %816 = add <4 x i64> %788, %815
  %817 = add <4 x i64> %816, %814
  %818 = getelementptr inbounds nuw i8, ptr %604, i64 224
  %819 = load <4 x i64>, ptr %818, align 1
  %820 = getelementptr inbounds nuw i8, ptr %717, i64 56
  %821 = load <4 x i64>, ptr %820, align 1
  %822 = xor <4 x i64> %821, %819
  %823 = bitcast <4 x i64> %822 to <8 x i32>
  %824 = shufflevector <8 x i32> %823, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %825 = bitcast <8 x i32> %824 to <4 x i64>
  %826 = and <4 x i64> %822, splat (i64 4294967295)
  %827 = and <4 x i64> %825, splat (i64 4294967295)
  %828 = mul nuw <4 x i64> %827, %826
  %829 = shufflevector <4 x i64> %819, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %830 = add <4 x i64> %802, %829
  %831 = add <4 x i64> %830, %828
  store <4 x i64> %817, ptr %4, align 64
  store <4 x i64> %831, ptr %12, align 32
  %832 = add i64 %602, 4
  br label %833

833:                                              ; preds = %715, %714, %649
  %834 = phi <4 x i64> [ %831, %715 ], [ %673, %649 ], [ %711, %714 ]
  %835 = phi <4 x i64> [ %817, %715 ], [ %662, %649 ], [ %697, %714 ]
  %836 = phi i64 [ %832, %715 ], [ 0, %649 ], [ %608, %714 ]
  %837 = add nuw nsw i64 %603, 256
  %838 = icmp slt i64 %603, 188
  br i1 %838, label %599, label %839

839:                                              ; preds = %833
  %840 = getelementptr inbounds nuw i8, ptr %0, i64 %837
  store i64 %836, ptr %594, align 8
  %841 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %842 = getelementptr inbounds nuw i8, ptr %604, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %841, ptr noundef nonnull readonly align 1 dereferenceable(64) %842, i64 64, i1 false)
  %843 = sub nsw i64 444, %603
  br label %844

844:                                              ; preds = %839, %586, %582
  %845 = phi <4 x i64> [ %834, %839 ], [ %587, %586 ], [ %577, %582 ]
  %846 = phi <4 x i64> [ %835, %839 ], [ %588, %586 ], [ %578, %582 ]
  %847 = phi i64 [ %843, %839 ], [ %589, %586 ], [ %580, %582 ]
  %848 = phi ptr [ %840, %839 ], [ %591, %586 ], [ %583, %582 ]
  %849 = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %849, ptr readonly align 1 %848, i64 %847, i1 false)
  %850 = trunc i64 %847 to i32
  store i32 %850, ptr %8, align 64
  %851 = load i64, ptr %411, align 16
  %852 = icmp eq i64 %851, 700
  tail call void @llvm.assume(i1 %852)
  %853 = load ptr, ptr %16, align 8
  %854 = icmp eq ptr %853, %1
  tail call void @llvm.assume(i1 %854)
  %855 = icmp ugt i32 %850, 63
  br i1 %855, label %856, label %1050

856:                                              ; preds = %844
  %857 = add i64 %847, 4294967295
  %858 = lshr i64 %857, 6
  %859 = and i64 %858, 67108863
  %860 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %861 = load i64, ptr %860, align 8
  %862 = load i64, ptr %18, align 8
  %863 = load i64, ptr %17, align 32
  %864 = sub i64 %862, %861
  %865 = icmp ugt i64 %864, %859
  br i1 %865, label %975, label %866

866:                                              ; preds = %856
  %867 = sub nuw nsw i64 %859, %864
  %868 = shl i64 %861, 3
  %869 = getelementptr inbounds nuw i8, ptr %853, i64 %868
  %870 = icmp eq i64 %862, %861
  br i1 %870, label %908, label %871

871:                                              ; preds = %866, %871
  %872 = phi <4 x i64> [ %905, %871 ], [ %845, %866 ]
  %873 = phi <4 x i64> [ %891, %871 ], [ %846, %866 ]
  %874 = phi i64 [ %906, %871 ], [ 0, %866 ]
  %875 = shl i64 %874, 6
  %876 = getelementptr inbounds nuw i8, ptr %849, i64 %875
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %877, i32 0, i32 3, i32 1)
  %878 = shl i64 %874, 3
  %879 = getelementptr inbounds nuw i8, ptr %869, i64 %878
  %880 = load <4 x i64>, ptr %876, align 64
  %881 = load <4 x i64>, ptr %879, align 1
  %882 = xor <4 x i64> %881, %880
  %883 = bitcast <4 x i64> %882 to <8 x i32>
  %884 = shufflevector <8 x i32> %883, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %885 = bitcast <8 x i32> %884 to <4 x i64>
  %886 = and <4 x i64> %882, splat (i64 4294967295)
  %887 = and <4 x i64> %885, splat (i64 4294967295)
  %888 = mul nuw <4 x i64> %887, %886
  %889 = shufflevector <4 x i64> %880, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %890 = add <4 x i64> %873, %889
  %891 = add <4 x i64> %890, %888
  %892 = getelementptr inbounds nuw i8, ptr %876, i64 32
  %893 = load <4 x i64>, ptr %892, align 32
  %894 = getelementptr inbounds nuw i8, ptr %879, i64 32
  %895 = load <4 x i64>, ptr %894, align 1
  %896 = xor <4 x i64> %895, %893
  %897 = bitcast <4 x i64> %896 to <8 x i32>
  %898 = shufflevector <8 x i32> %897, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %899 = bitcast <8 x i32> %898 to <4 x i64>
  %900 = and <4 x i64> %896, splat (i64 4294967295)
  %901 = and <4 x i64> %899, splat (i64 4294967295)
  %902 = mul nuw <4 x i64> %901, %900
  %903 = shufflevector <4 x i64> %893, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %904 = add <4 x i64> %872, %903
  %905 = add <4 x i64> %904, %902
  %906 = add nuw i64 %874, 1
  %907 = icmp eq i64 %906, %864
  br i1 %907, label %908, label %871

908:                                              ; preds = %871, %866
  %909 = phi <4 x i64> [ %845, %866 ], [ %905, %871 ]
  %910 = phi <4 x i64> [ %846, %866 ], [ %891, %871 ]
  %911 = getelementptr inbounds nuw i8, ptr %853, i64 %863
  %912 = lshr <4 x i64> %910, splat (i64 47)
  %913 = load <4 x i64>, ptr %911, align 1
  %914 = xor <4 x i64> %912, %913
  %915 = xor <4 x i64> %914, %910
  %916 = bitcast <4 x i64> %915 to <8 x i32>
  %917 = shufflevector <8 x i32> %916, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %918 = bitcast <8 x i32> %917 to <4 x i64>
  %919 = and <4 x i64> %915, splat (i64 4294967295)
  %920 = mul nuw <4 x i64> %919, splat (i64 2654435761)
  %921 = mul <4 x i64> %918, splat (i64 -7046029290881679360)
  %922 = add <4 x i64> %921, %920
  %923 = lshr <4 x i64> %909, splat (i64 47)
  %924 = getelementptr inbounds nuw i8, ptr %911, i64 32
  %925 = load <4 x i64>, ptr %924, align 1
  %926 = xor <4 x i64> %923, %925
  %927 = xor <4 x i64> %926, %909
  %928 = bitcast <4 x i64> %927 to <8 x i32>
  %929 = shufflevector <8 x i32> %928, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %930 = bitcast <8 x i32> %929 to <4 x i64>
  %931 = and <4 x i64> %927, splat (i64 4294967295)
  %932 = mul nuw <4 x i64> %931, splat (i64 2654435761)
  %933 = mul <4 x i64> %930, splat (i64 -7046029290881679360)
  %934 = add <4 x i64> %933, %932
  %935 = shl nuw nsw i64 %864, 6
  %936 = getelementptr inbounds nuw i8, ptr %849, i64 %935
  %937 = icmp eq i64 %864, %859
  br i1 %937, label %1016, label %938

938:                                              ; preds = %908, %938
  %939 = phi <4 x i64> [ %972, %938 ], [ %934, %908 ]
  %940 = phi <4 x i64> [ %958, %938 ], [ %922, %908 ]
  %941 = phi i64 [ %973, %938 ], [ 0, %908 ]
  %942 = shl i64 %941, 6
  %943 = getelementptr inbounds nuw i8, ptr %936, i64 %942
  %944 = getelementptr inbounds nuw i8, ptr %943, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %944, i32 0, i32 3, i32 1)
  %945 = shl i64 %941, 3
  %946 = getelementptr inbounds nuw i8, ptr %853, i64 %945
  %947 = load <4 x i64>, ptr %943, align 64
  %948 = load <4 x i64>, ptr %946, align 1
  %949 = xor <4 x i64> %948, %947
  %950 = bitcast <4 x i64> %949 to <8 x i32>
  %951 = shufflevector <8 x i32> %950, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %952 = bitcast <8 x i32> %951 to <4 x i64>
  %953 = and <4 x i64> %949, splat (i64 4294967295)
  %954 = and <4 x i64> %952, splat (i64 4294967295)
  %955 = mul nuw <4 x i64> %954, %953
  %956 = shufflevector <4 x i64> %947, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %957 = add <4 x i64> %940, %956
  %958 = add <4 x i64> %957, %955
  %959 = getelementptr inbounds nuw i8, ptr %943, i64 32
  %960 = load <4 x i64>, ptr %959, align 32
  %961 = getelementptr inbounds nuw i8, ptr %946, i64 32
  %962 = load <4 x i64>, ptr %961, align 1
  %963 = xor <4 x i64> %962, %960
  %964 = bitcast <4 x i64> %963 to <8 x i32>
  %965 = shufflevector <8 x i32> %964, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %966 = bitcast <8 x i32> %965 to <4 x i64>
  %967 = and <4 x i64> %963, splat (i64 4294967295)
  %968 = and <4 x i64> %966, splat (i64 4294967295)
  %969 = mul nuw <4 x i64> %968, %967
  %970 = shufflevector <4 x i64> %960, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %971 = add <4 x i64> %939, %970
  %972 = add <4 x i64> %971, %969
  %973 = add nuw i64 %941, 1
  %974 = icmp eq i64 %973, %867
  br i1 %974, label %1016, label %938

975:                                              ; preds = %856
  %976 = shl i64 %861, 3
  %977 = getelementptr inbounds nuw i8, ptr %853, i64 %976
  %978 = icmp eq i32 %850, 64
  br i1 %978, label %1016, label %979

979:                                              ; preds = %975, %979
  %980 = phi <4 x i64> [ %1013, %979 ], [ %845, %975 ]
  %981 = phi <4 x i64> [ %999, %979 ], [ %846, %975 ]
  %982 = phi i64 [ %1014, %979 ], [ 0, %975 ]
  %983 = shl i64 %982, 6
  %984 = getelementptr inbounds nuw i8, ptr %849, i64 %983
  %985 = getelementptr inbounds nuw i8, ptr %984, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %985, i32 0, i32 3, i32 1)
  %986 = shl i64 %982, 3
  %987 = getelementptr inbounds nuw i8, ptr %977, i64 %986
  %988 = load <4 x i64>, ptr %984, align 64
  %989 = load <4 x i64>, ptr %987, align 1
  %990 = xor <4 x i64> %989, %988
  %991 = bitcast <4 x i64> %990 to <8 x i32>
  %992 = shufflevector <8 x i32> %991, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %993 = bitcast <8 x i32> %992 to <4 x i64>
  %994 = and <4 x i64> %990, splat (i64 4294967295)
  %995 = and <4 x i64> %993, splat (i64 4294967295)
  %996 = mul nuw <4 x i64> %995, %994
  %997 = shufflevector <4 x i64> %988, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %998 = add <4 x i64> %981, %997
  %999 = add <4 x i64> %998, %996
  %1000 = getelementptr inbounds nuw i8, ptr %984, i64 32
  %1001 = load <4 x i64>, ptr %1000, align 32
  %1002 = getelementptr inbounds nuw i8, ptr %987, i64 32
  %1003 = load <4 x i64>, ptr %1002, align 1
  %1004 = xor <4 x i64> %1003, %1001
  %1005 = bitcast <4 x i64> %1004 to <8 x i32>
  %1006 = shufflevector <8 x i32> %1005, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1007 = bitcast <8 x i32> %1006 to <4 x i64>
  %1008 = and <4 x i64> %1004, splat (i64 4294967295)
  %1009 = and <4 x i64> %1007, splat (i64 4294967295)
  %1010 = mul nuw <4 x i64> %1009, %1008
  %1011 = shufflevector <4 x i64> %1001, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1012 = add <4 x i64> %980, %1011
  %1013 = add <4 x i64> %1012, %1010
  %1014 = add nuw nsw i64 %982, 1
  %1015 = icmp eq i64 %1014, %859
  br i1 %1015, label %1016, label %979

1016:                                             ; preds = %938, %979, %975, %908
  %1017 = phi <4 x i64> [ %934, %908 ], [ %845, %975 ], [ %1013, %979 ], [ %972, %938 ]
  %1018 = phi <4 x i64> [ %922, %908 ], [ %846, %975 ], [ %999, %979 ], [ %958, %938 ]
  %1019 = and i64 %847, 4294967295
  %1020 = getelementptr inbounds nuw i8, ptr %849, i64 %1019
  %1021 = getelementptr inbounds i8, ptr %1020, i64 -64
  %1022 = getelementptr inbounds nuw i8, ptr %853, i64 %863
  %1023 = getelementptr inbounds i8, ptr %1022, i64 -7
  %1024 = load <4 x i64>, ptr %1021, align 1
  %1025 = load <4 x i64>, ptr %1023, align 1
  %1026 = xor <4 x i64> %1025, %1024
  %1027 = bitcast <4 x i64> %1026 to <8 x i32>
  %1028 = shufflevector <8 x i32> %1027, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1029 = bitcast <8 x i32> %1028 to <4 x i64>
  %1030 = and <4 x i64> %1026, splat (i64 4294967295)
  %1031 = and <4 x i64> %1029, splat (i64 4294967295)
  %1032 = mul nuw <4 x i64> %1031, %1030
  %1033 = shufflevector <4 x i64> %1024, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1034 = add <4 x i64> %1018, %1033
  %1035 = add <4 x i64> %1034, %1032
  %1036 = getelementptr inbounds i8, ptr %1020, i64 -32
  %1037 = load <4 x i64>, ptr %1036, align 1
  %1038 = getelementptr inbounds nuw i8, ptr %1022, i64 25
  %1039 = load <4 x i64>, ptr %1038, align 1
  %1040 = xor <4 x i64> %1039, %1037
  %1041 = bitcast <4 x i64> %1040 to <8 x i32>
  %1042 = shufflevector <8 x i32> %1041, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1043 = bitcast <8 x i32> %1042 to <4 x i64>
  %1044 = and <4 x i64> %1040, splat (i64 4294967295)
  %1045 = and <4 x i64> %1043, splat (i64 4294967295)
  %1046 = mul nuw <4 x i64> %1045, %1044
  %1047 = shufflevector <4 x i64> %1037, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1048 = add <4 x i64> %1017, %1047
  %1049 = add <4 x i64> %1048, %1046
  br label %1086

1050:                                             ; preds = %844
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %1051 = sub nsw i64 64, %847
  %1052 = and i64 %1051, 127
  %1053 = sub nsw i64 0, %1052
  %1054 = getelementptr inbounds i8, ptr %8, i64 %1053
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull readonly align 1 %1054, i64 %1052, i1 false)
  %1055 = getelementptr inbounds nuw i8, ptr %3, i64 %1052
  %1056 = and i64 %847, 63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1055, ptr nonnull readonly align 64 %849, i64 %1056, i1 false)
  %1057 = load i64, ptr %17, align 32
  %1058 = getelementptr inbounds nuw i8, ptr %853, i64 %1057
  %1059 = getelementptr inbounds i8, ptr %1058, i64 -7
  %1060 = load <4 x i64>, ptr %3, align 16
  %1061 = load <4 x i64>, ptr %1059, align 1
  %1062 = xor <4 x i64> %1061, %1060
  %1063 = bitcast <4 x i64> %1062 to <8 x i32>
  %1064 = shufflevector <8 x i32> %1063, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1065 = bitcast <8 x i32> %1064 to <4 x i64>
  %1066 = and <4 x i64> %1062, splat (i64 4294967295)
  %1067 = and <4 x i64> %1065, splat (i64 4294967295)
  %1068 = mul nuw <4 x i64> %1067, %1066
  %1069 = shufflevector <4 x i64> %1060, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1070 = add <4 x i64> %846, %1069
  %1071 = add <4 x i64> %1070, %1068
  %1072 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %1073 = load <4 x i64>, ptr %1072, align 16
  %1074 = getelementptr inbounds nuw i8, ptr %1058, i64 25
  %1075 = load <4 x i64>, ptr %1074, align 1
  %1076 = xor <4 x i64> %1075, %1073
  %1077 = bitcast <4 x i64> %1076 to <8 x i32>
  %1078 = shufflevector <8 x i32> %1077, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1079 = bitcast <8 x i32> %1078 to <4 x i64>
  %1080 = and <4 x i64> %1076, splat (i64 4294967295)
  %1081 = and <4 x i64> %1079, splat (i64 4294967295)
  %1082 = mul nuw <4 x i64> %1081, %1080
  %1083 = shufflevector <4 x i64> %1073, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1084 = add <4 x i64> %845, %1083
  %1085 = add <4 x i64> %1084, %1082
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  br label %1086

1086:                                             ; preds = %1016, %1050
  %1087 = phi <4 x i64> [ %1049, %1016 ], [ %1085, %1050 ]
  %1088 = phi <4 x i64> [ %1035, %1016 ], [ %1071, %1050 ]
  %1089 = getelementptr inbounds nuw i8, ptr %853, i64 11
  %1090 = extractelement <4 x i64> %1088, i64 0
  %1091 = extractelement <4 x i64> %1088, i64 1
  %1092 = load i64, ptr %1089, align 1
  %1093 = getelementptr i8, ptr %853, i64 19
  %1094 = load i64, ptr %1093, align 1
  %1095 = xor i64 %1092, %1090
  %1096 = xor i64 %1094, %1091
  %1097 = zext i64 %1095 to i128
  %1098 = zext i64 %1096 to i128
  %1099 = mul nuw i128 %1098, %1097
  %1100 = lshr i128 %1099, 64
  %1101 = xor i128 %1100, %1099
  %1102 = trunc i128 %1101 to i64
  %1103 = add i64 %1102, -6939834363949496028
  %1104 = getelementptr inbounds nuw i8, ptr %853, i64 27
  %1105 = extractelement <4 x i64> %1088, i64 2
  %1106 = extractelement <4 x i64> %1088, i64 3
  %1107 = load i64, ptr %1104, align 1
  %1108 = getelementptr i8, ptr %853, i64 35
  %1109 = load i64, ptr %1108, align 1
  %1110 = xor i64 %1107, %1105
  %1111 = xor i64 %1109, %1106
  %1112 = zext i64 %1110 to i128
  %1113 = zext i64 %1111 to i128
  %1114 = mul nuw i128 %1113, %1112
  %1115 = lshr i128 %1114, 64
  %1116 = xor i128 %1115, %1114
  %1117 = trunc i128 %1116 to i64
  %1118 = add i64 %1103, %1117
  %1119 = getelementptr inbounds nuw i8, ptr %853, i64 43
  %1120 = extractelement <4 x i64> %1087, i64 0
  %1121 = extractelement <4 x i64> %1087, i64 1
  %1122 = load i64, ptr %1119, align 1
  %1123 = getelementptr i8, ptr %853, i64 51
  %1124 = load i64, ptr %1123, align 1
  %1125 = xor i64 %1122, %1120
  %1126 = xor i64 %1124, %1121
  %1127 = zext i64 %1125 to i128
  %1128 = zext i64 %1126 to i128
  %1129 = mul nuw i128 %1128, %1127
  %1130 = lshr i128 %1129, 64
  %1131 = xor i128 %1130, %1129
  %1132 = trunc i128 %1131 to i64
  %1133 = add i64 %1118, %1132
  %1134 = getelementptr inbounds nuw i8, ptr %853, i64 59
  %1135 = extractelement <4 x i64> %1087, i64 2
  %1136 = extractelement <4 x i64> %1087, i64 3
  %1137 = load i64, ptr %1134, align 1
  %1138 = getelementptr i8, ptr %853, i64 67
  %1139 = load i64, ptr %1138, align 1
  %1140 = xor i64 %1137, %1135
  %1141 = xor i64 %1139, %1136
  %1142 = zext i64 %1140 to i128
  %1143 = zext i64 %1141 to i128
  %1144 = mul nuw i128 %1143, %1142
  %1145 = lshr i128 %1144, 64
  %1146 = xor i128 %1145, %1144
  %1147 = trunc i128 %1146 to i64
  %1148 = add i64 %1133, %1147
  %1149 = lshr i64 %1148, 37
  %1150 = xor i64 %1149, %1148
  %1151 = mul i64 %1150, 1609587791953885689
  %1152 = lshr i64 %1151, 32
  %1153 = xor i64 %1152, %1151
  br label %1154

1154:                                             ; preds = %2, %1086
  %1155 = phi i64 [ %1153, %1086 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #7
  ret i64 %1155
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_update: argument 0"}
!7 = distinct !{!7, !"XXH3_update"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_update: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH3_update: argument 0:thread"}
!12 = distinct !{!12, !"XXH3_update"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_update: argument 1:thread"}
!15 = !{!16}
!16 = distinct !{!16, !12, !"XXH3_update: argument 0"}
!17 = !{!18}
!18 = distinct !{!18, !12, !"XXH3_update: argument 1"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_consumeStripes: argument 0"}
!21 = distinct !{!21, !"XXH3_consumeStripes"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"XXH3_consumeStripes: argument 1"}
!24 = !{!25}
!25 = distinct !{!25, !21, !"XXH3_consumeStripes: argument 2"}
!26 = !{!27}
!27 = distinct !{!27, !21, !"XXH3_consumeStripes: argument 3"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_accumulate: argument 0"}
!30 = distinct !{!30, !"XXH3_accumulate"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"XXH3_accumulate: argument 1"}
!33 = !{!34}
!34 = distinct !{!34, !30, !"XXH3_accumulate: argument 2"}
!35 = !{!29, !34, !20, !23, !27}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_accumulate_512_avx2: argument 0"}
!38 = distinct !{!38, !"XXH3_accumulate_512_avx2"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"XXH3_accumulate_512_avx2: argument 1"}
!41 = !{!42}
!42 = distinct !{!42, !38, !"XXH3_accumulate_512_avx2: argument 2"}
!43 = !{!40, !32, !25, !9}
!44 = !{!37, !42, !29, !34, !20, !23, !27, !6}
!45 = !{!42, !34, !27}
!46 = !{!37, !40, !29, !32, !20, !23, !25}
!47 = !{!48}
!48 = distinct !{!48, !38, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!49 = !{!50}
!50 = distinct !{!50, !38, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!51 = !{!48, !32, !25, !9}
!52 = !{!53, !50, !29, !34, !20, !23, !27, !6}
!53 = distinct !{!53, !38, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!54 = !{!50, !34, !27}
!55 = !{!53, !48, !29, !32, !20, !23, !25}
!56 = !{!57}
!57 = distinct !{!57, !38, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!58 = !{!59}
!59 = distinct !{!59, !38, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!60 = !{!57, !32, !25, !9}
!61 = !{!62, !59, !29, !34, !20, !23, !27, !6}
!62 = distinct !{!62, !38, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!63 = !{!59, !34, !27}
!64 = !{!62, !57, !29, !32, !20, !23, !25}
!65 = !{!66}
!66 = distinct !{!66, !38, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!67 = !{!68}
!68 = distinct !{!68, !38, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!69 = !{!66, !32, !25, !9}
!70 = !{!71, !68, !29, !34, !20, !23, !27, !6}
!71 = distinct !{!71, !38, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!72 = !{!68, !34, !27}
!73 = !{!71, !66, !29, !32, !20, !23, !25}
!74 = !{!37, !29, !20, !6}
!75 = !{!40, !42, !32, !34, !23, !25, !27, !9}
!76 = !{!23, !6}
!77 = !{!20, !25, !27, !9}
!78 = !{!6, !9}
!79 = !{!16, !18}
!80 = !{!81}
!81 = distinct !{!81, !82, !"XXH3_consumeStripes: argument 0"}
!82 = distinct !{!82, !"XXH3_consumeStripes"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"XXH3_consumeStripes: argument 1"}
!85 = !{!86}
!86 = distinct !{!86, !82, !"XXH3_consumeStripes: argument 2"}
!87 = !{!88}
!88 = distinct !{!88, !82, !"XXH3_consumeStripes: argument 3"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"XXH3_accumulate: argument 1"}
!91 = distinct !{!91, !"XXH3_accumulate"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"XXH3_accumulate: argument 2"}
!94 = !{!95, !81, !16}
!95 = distinct !{!95, !96, !"XXH3_scrambleAcc_avx2: argument 0"}
!96 = distinct !{!96, !"XXH3_scrambleAcc_avx2"}
!97 = !{!98, !84, !86, !88, !18}
!98 = distinct !{!98, !96, !"XXH3_scrambleAcc_avx2: argument 1"}
!99 = !{!81, !16}
!100 = !{!84, !86, !88, !18}
!101 = !{!102, !93, !81, !84, !88}
!102 = distinct !{!102, !91, !"XXH3_accumulate: argument 0"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_accumulate_512_avx2: argument 1"}
!105 = distinct !{!105, !"XXH3_accumulate_512_avx2"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"XXH3_accumulate_512_avx2: argument 2"}
!108 = !{!104, !90, !86, !16}
!109 = !{!110, !107, !102, !93, !81, !84, !88, !18}
!110 = distinct !{!110, !105, !"XXH3_accumulate_512_avx2: argument 0"}
!111 = !{!107, !93, !88}
!112 = !{!110, !104, !102, !90, !81, !84, !86}
!113 = distinct !{!113, !114}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!95}
!116 = !{!98}
!117 = !{!98, !88}
!118 = !{!95, !81, !84, !86}
!119 = !{!120}
!120 = distinct !{!120, !121, !"XXH3_accumulate: argument 1"}
!121 = distinct !{!121, !"XXH3_accumulate"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"XXH3_accumulate: argument 2"}
!124 = !{!125, !123, !81, !84, !88}
!125 = distinct !{!125, !121, !"XXH3_accumulate: argument 0"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"XXH3_accumulate_512_avx2: argument 1"}
!128 = distinct !{!128, !"XXH3_accumulate_512_avx2"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"XXH3_accumulate_512_avx2: argument 2"}
!131 = !{!127, !120, !86, !16}
!132 = !{!133, !130, !125, !123, !81, !84, !88, !18}
!133 = distinct !{!133, !128, !"XXH3_accumulate_512_avx2: argument 0"}
!134 = !{!130, !123, !88}
!135 = !{!133, !127, !125, !120, !81, !84, !86}
!136 = !{!137}
!137 = distinct !{!137, !138, !"XXH3_accumulate: argument 0"}
!138 = distinct !{!138, !"XXH3_accumulate"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"XXH3_accumulate: argument 1"}
!141 = !{!142}
!142 = distinct !{!142, !138, !"XXH3_accumulate: argument 2"}
!143 = !{!144, !137, !81, !16}
!144 = distinct !{!144, !145, !"XXH3_accumulate_512_avx2: argument 0"}
!145 = distinct !{!145, !"XXH3_accumulate_512_avx2"}
!146 = !{!147, !148, !140, !142, !84, !86, !88, !18}
!147 = distinct !{!147, !145, !"XXH3_accumulate_512_avx2: argument 1"}
!148 = distinct !{!148, !145, !"XXH3_accumulate_512_avx2: argument 2"}
!149 = !{!137, !142, !81, !84, !88}
!150 = !{!144}
!151 = !{!147}
!152 = !{!148}
!153 = !{!147, !140, !86, !16}
!154 = !{!144, !148, !137, !142, !81, !84, !88, !18}
!155 = !{!148, !142, !88}
!156 = !{!144, !147, !137, !140, !81, !84, !86}
!157 = !{!158}
!158 = distinct !{!158, !145, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!159 = !{!160}
!160 = distinct !{!160, !145, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!161 = !{!158, !140, !86, !16}
!162 = !{!163, !160, !137, !142, !81, !84, !88, !18}
!163 = distinct !{!163, !145, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!164 = !{!160, !142, !88}
!165 = !{!163, !158, !137, !140, !81, !84, !86}
!166 = !{!167}
!167 = distinct !{!167, !145, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!168 = !{!169}
!169 = distinct !{!169, !145, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!170 = !{!167, !140, !86, !16}
!171 = !{!172, !169, !137, !142, !81, !84, !88, !18}
!172 = distinct !{!172, !145, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!173 = !{!169, !142, !88}
!174 = !{!172, !167, !137, !140, !81, !84, !86}
!175 = !{!176}
!176 = distinct !{!176, !145, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!177 = !{!178}
!178 = distinct !{!178, !145, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!179 = !{!176, !140, !86, !16}
!180 = !{!181, !178, !137, !142, !81, !84, !88, !18}
!181 = distinct !{!181, !145, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!182 = !{!178, !142, !88}
!183 = !{!181, !176, !137, !140, !81, !84, !86}
!184 = !{!84, !16}
!185 = !{!81, !86, !88, !18}
!186 = !{!187}
!187 = distinct !{!187, !188, !"XXH3_accumulate: argument 0"}
!188 = distinct !{!188, !"XXH3_accumulate"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"XXH3_accumulate: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !188, !"XXH3_accumulate: argument 2"}
!193 = !{!194, !16}
!194 = distinct !{!194, !195, !"XXH3_scrambleAcc_avx2: argument 0"}
!195 = distinct !{!195, !"XXH3_scrambleAcc_avx2"}
!196 = !{!197, !18}
!197 = distinct !{!197, !195, !"XXH3_scrambleAcc_avx2: argument 1"}
!198 = !{!187, !192}
!199 = !{!200}
!200 = distinct !{!200, !201, !"XXH3_accumulate_512_avx2: argument 0"}
!201 = distinct !{!201, !"XXH3_accumulate_512_avx2"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"XXH3_accumulate_512_avx2: argument 1"}
!204 = !{!205}
!205 = distinct !{!205, !201, !"XXH3_accumulate_512_avx2: argument 2"}
!206 = !{!203, !190, !18}
!207 = !{!200, !205, !187, !192, !16}
!208 = !{!205, !192}
!209 = !{!200, !203, !187, !190}
!210 = !{!200, !187, !16}
!211 = !{!203, !205, !190, !192, !18}
!212 = !{!194}
!213 = !{!197}
!214 = !{!215}
!215 = distinct !{!215, !216, !"XXH3_accumulate: argument 0"}
!216 = distinct !{!216, !"XXH3_accumulate"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"XXH3_accumulate: argument 1"}
!219 = !{!220}
!220 = distinct !{!220, !216, !"XXH3_accumulate: argument 2"}
!221 = !{!215, !220}
!222 = !{!223}
!223 = distinct !{!223, !224, !"XXH3_accumulate_512_avx2: argument 0"}
!224 = distinct !{!224, !"XXH3_accumulate_512_avx2"}
!225 = !{!226}
!226 = distinct !{!226, !224, !"XXH3_accumulate_512_avx2: argument 1"}
!227 = !{!228}
!228 = distinct !{!228, !224, !"XXH3_accumulate_512_avx2: argument 2"}
!229 = !{!226, !218, !18}
!230 = !{!223, !228, !215, !220, !16}
!231 = !{!228, !220}
!232 = !{!223, !226, !215, !218}
!233 = !{!223, !215, !16}
!234 = !{!226, !228, !218, !220, !18}
!235 = !{!236}
!236 = distinct !{!236, !237, !"XXH3_scrambleAcc_avx2: argument 0"}
!237 = distinct !{!237, !"XXH3_scrambleAcc_avx2"}
!238 = !{!239}
!239 = distinct !{!239, !237, !"XXH3_scrambleAcc_avx2: argument 1"}
!240 = !{!236, !16}
!241 = !{!239, !18}
!242 = distinct !{!242, !114}
!243 = !{!244, !16}
!244 = distinct !{!244, !245, !"XXH3_consumeStripes: argument 1"}
!245 = distinct !{!245, !"XXH3_consumeStripes"}
!246 = !{!247, !248, !249, !18}
!247 = distinct !{!247, !245, !"XXH3_consumeStripes: argument 0"}
!248 = distinct !{!248, !245, !"XXH3_consumeStripes: argument 2"}
!249 = distinct !{!249, !245, !"XXH3_consumeStripes: argument 3"}
!250 = !{!247}
!251 = !{!244}
!252 = !{!248}
!253 = !{!249}
!254 = !{!255}
!255 = distinct !{!255, !256, !"XXH3_accumulate: argument 1"}
!256 = distinct !{!256, !"XXH3_accumulate"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"XXH3_accumulate: argument 2"}
!259 = !{!260, !258, !247, !244, !249}
!260 = distinct !{!260, !256, !"XXH3_accumulate: argument 0"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"XXH3_accumulate_512_avx2: argument 1"}
!263 = distinct !{!263, !"XXH3_accumulate_512_avx2"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"XXH3_accumulate_512_avx2: argument 2"}
!266 = !{!262, !255, !248, !18}
!267 = !{!268, !265, !260, !258, !247, !244, !249, !16}
!268 = distinct !{!268, !263, !"XXH3_accumulate_512_avx2: argument 0"}
!269 = !{!265, !258, !249}
!270 = !{!268, !262, !260, !255, !247, !244, !248}
!271 = !{!272}
!272 = distinct !{!272, !273, !"XXH3_scrambleAcc_avx2: argument 0"}
!273 = distinct !{!273, !"XXH3_scrambleAcc_avx2"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"XXH3_scrambleAcc_avx2: argument 1"}
!276 = !{!275, !249}
!277 = !{!272, !247, !244, !248}
!278 = !{!272, !247, !16}
!279 = !{!275, !244, !248, !249, !18}
!280 = !{!281}
!281 = distinct !{!281, !282, !"XXH3_accumulate: argument 0"}
!282 = distinct !{!282, !"XXH3_accumulate"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"XXH3_accumulate: argument 1"}
!285 = !{!286}
!286 = distinct !{!286, !282, !"XXH3_accumulate: argument 2"}
!287 = !{!281, !286, !247, !244, !249}
!288 = !{!289}
!289 = distinct !{!289, !290, !"XXH3_accumulate_512_avx2: argument 0"}
!290 = distinct !{!290, !"XXH3_accumulate_512_avx2"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"XXH3_accumulate_512_avx2: argument 1"}
!293 = !{!294}
!294 = distinct !{!294, !290, !"XXH3_accumulate_512_avx2: argument 2"}
!295 = !{!292, !284, !248, !18}
!296 = !{!289, !294, !281, !286, !247, !244, !249, !16}
!297 = !{!294, !286, !249}
!298 = !{!289, !292, !281, !284, !247, !244, !248}
!299 = !{!289, !281, !247, !16}
!300 = !{!292, !294, !284, !286, !244, !248, !249, !18}
!301 = !{!302}
!302 = distinct !{!302, !303, !"XXH3_accumulate: argument 0"}
!303 = distinct !{!303, !"XXH3_accumulate"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"XXH3_accumulate: argument 1"}
!306 = !{!307}
!307 = distinct !{!307, !303, !"XXH3_accumulate: argument 2"}
!308 = !{!302, !307, !247, !244, !249}
!309 = !{!310}
!310 = distinct !{!310, !311, !"XXH3_accumulate_512_avx2: argument 0"}
!311 = distinct !{!311, !"XXH3_accumulate_512_avx2"}
!312 = !{!313}
!313 = distinct !{!313, !311, !"XXH3_accumulate_512_avx2: argument 1"}
!314 = !{!315}
!315 = distinct !{!315, !311, !"XXH3_accumulate_512_avx2: argument 2"}
!316 = !{!313, !305, !248, !18}
!317 = !{!310, !315, !302, !307, !247, !244, !249, !16}
!318 = !{!315, !307, !249}
!319 = !{!310, !313, !302, !305, !247, !244, !248}
!320 = !{!321}
!321 = distinct !{!321, !311, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!322 = !{!323}
!323 = distinct !{!323, !311, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!324 = !{!321, !305, !248, !18}
!325 = !{!326, !323, !302, !307, !247, !244, !249, !16}
!326 = distinct !{!326, !311, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!327 = !{!323, !307, !249}
!328 = !{!326, !321, !302, !305, !247, !244, !248}
!329 = !{!330}
!330 = distinct !{!330, !311, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!331 = !{!332}
!332 = distinct !{!332, !311, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!333 = !{!330, !305, !248, !18}
!334 = !{!335, !332, !302, !307, !247, !244, !249, !16}
!335 = distinct !{!335, !311, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!336 = !{!332, !307, !249}
!337 = !{!335, !330, !302, !305, !247, !244, !248}
!338 = !{!339}
!339 = distinct !{!339, !311, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!340 = !{!341}
!341 = distinct !{!341, !311, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!342 = !{!339, !305, !248, !18}
!343 = !{!344, !341, !302, !307, !247, !244, !249, !16}
!344 = distinct !{!344, !311, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!345 = !{!341, !307, !249}
!346 = !{!344, !339, !302, !305, !247, !244, !248}
!347 = !{!310, !302, !247, !16}
!348 = !{!313, !315, !305, !307, !244, !248, !249, !18}
!349 = distinct !{!349, !114}
!350 = !{!351}
!351 = distinct !{!351, !352, !"XXH3_consumeStripes: argument 2"}
!352 = distinct !{!352, !"XXH3_consumeStripes"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"XXH3_consumeStripes: argument 3"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"XXH3_accumulate: argument 1"}
!357 = distinct !{!357, !"XXH3_accumulate"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"XXH3_accumulate: argument 2"}
!360 = !{!361, !359, !362, !363, !354}
!361 = distinct !{!361, !357, !"XXH3_accumulate: argument 0"}
!362 = distinct !{!362, !352, !"XXH3_consumeStripes: argument 0"}
!363 = distinct !{!363, !352, !"XXH3_consumeStripes: argument 1"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"XXH3_accumulate_512_avx2: argument 1"}
!366 = distinct !{!366, !"XXH3_accumulate_512_avx2"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"XXH3_accumulate_512_avx2: argument 2"}
!369 = !{!365, !356, !351}
!370 = !{!371, !368, !361, !359, !362, !363, !354}
!371 = distinct !{!371, !366, !"XXH3_accumulate_512_avx2: argument 0"}
!372 = !{!368, !359, !354}
!373 = !{!371, !365, !361, !356, !362, !363, !351}
!374 = !{!375, !354}
!375 = distinct !{!375, !376, !"XXH3_scrambleAcc_avx2: argument 1"}
!376 = distinct !{!376, !"XXH3_scrambleAcc_avx2"}
!377 = !{!378, !362, !363, !351}
!378 = distinct !{!378, !376, !"XXH3_scrambleAcc_avx2: argument 0"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"XXH3_accumulate: argument 1"}
!381 = distinct !{!381, !"XXH3_accumulate"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"XXH3_accumulate: argument 2"}
!384 = !{!385, !383, !362, !363, !354}
!385 = distinct !{!385, !381, !"XXH3_accumulate: argument 0"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"XXH3_accumulate_512_avx2: argument 1"}
!388 = distinct !{!388, !"XXH3_accumulate_512_avx2"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"XXH3_accumulate_512_avx2: argument 2"}
!391 = !{!387, !380, !351}
!392 = !{!393, !390, !385, !383, !362, !363, !354}
!393 = distinct !{!393, !388, !"XXH3_accumulate_512_avx2: argument 0"}
!394 = !{!390, !383, !354}
!395 = !{!393, !387, !385, !380, !362, !363, !351}
!396 = !{!397}
!397 = distinct !{!397, !398, !"XXH3_accumulate: argument 1"}
!398 = distinct !{!398, !"XXH3_accumulate"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"XXH3_accumulate: argument 2"}
!401 = !{!402, !400, !362, !363, !354}
!402 = distinct !{!402, !398, !"XXH3_accumulate: argument 0"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"XXH3_accumulate_512_avx2: argument 1"}
!405 = distinct !{!405, !"XXH3_accumulate_512_avx2"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"XXH3_accumulate_512_avx2: argument 2"}
!408 = !{!404, !397, !351}
!409 = !{!410, !407, !402, !400, !362, !363, !354}
!410 = distinct !{!410, !405, !"XXH3_accumulate_512_avx2: argument 0"}
!411 = !{!407, !400, !354}
!412 = !{!410, !404, !402, !397, !362, !363, !351}
!413 = !{!414}
!414 = distinct !{!414, !415, !"XXH3_accumulate_512_avx2: argument 1"}
!415 = distinct !{!415, !"XXH3_accumulate_512_avx2"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"XXH3_accumulate_512_avx2: argument 2"}
!418 = !{!419, !417}
!419 = distinct !{!419, !415, !"XXH3_accumulate_512_avx2: argument 0"}
!420 = !{!419, !414}
!421 = !{!422}
!422 = distinct !{!422, !423, !"XXH3_accumulate_512_avx2: argument 1"}
!423 = distinct !{!423, !"XXH3_accumulate_512_avx2"}
!424 = !{!425}
!425 = distinct !{!425, !423, !"XXH3_accumulate_512_avx2: argument 2"}
!426 = !{!427, !425}
!427 = distinct !{!427, !423, !"XXH3_accumulate_512_avx2: argument 0"}
!428 = !{!427, !422}
!429 = !{!430}
!430 = distinct !{!430, !431, !"XXH3_mergeAccs: argument 1"}
!431 = distinct !{!431, !"XXH3_mergeAccs"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"XXH3_mergeAccs: argument 0"}
