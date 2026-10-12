; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @target_sec136_300_400(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #7
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %5, i8 0, i64 512, i1 false)
  %6 = icmp eq ptr %1, null
  br i1 %6, label %1190, label %7

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
  br i1 %19, label %413, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 528
  store i64 300, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %23 = load <4 x i64>, ptr %4, align 64
  %24 = load <4 x i64>, ptr %12, align 32
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %25, i32 0, i32 3, i32 1)
  %26 = load <4 x i64>, ptr %0, align 1
  %27 = load <4 x i64>, ptr %1, align 1
  %28 = xor <4 x i64> %27, %26
  %29 = bitcast <4 x i64> %28 to <8 x i32>
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %31 = bitcast <8 x i32> %30 to <4 x i64>
  %32 = and <4 x i64> %28, splat (i64 4294967295)
  %33 = and <4 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <4 x i64> %33, %32
  %35 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %36 = add <4 x i64> %23, %35
  %37 = add <4 x i64> %36, %34
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %41 = load <4 x i64>, ptr %40, align 1
  %42 = xor <4 x i64> %41, %39
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %50 = add <4 x i64> %24, %49
  %51 = add <4 x i64> %50, %48
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %53, i32 0, i32 3, i32 1)
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %55 = load <4 x i64>, ptr %52, align 1
  %56 = load <4 x i64>, ptr %54, align 1
  %57 = xor <4 x i64> %56, %55
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = and <4 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, %61
  %64 = shufflevector <4 x i64> %55, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %65 = add <4 x i64> %37, %64
  %66 = add <4 x i64> %65, %63
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %68 = load <4 x i64>, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %70 = load <4 x i64>, ptr %69, align 1
  %71 = xor <4 x i64> %70, %68
  %72 = bitcast <4 x i64> %71 to <8 x i32>
  %73 = shufflevector <8 x i32> %72, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %74 = bitcast <8 x i32> %73 to <4 x i64>
  %75 = and <4 x i64> %71, splat (i64 4294967295)
  %76 = and <4 x i64> %74, splat (i64 4294967295)
  %77 = mul nuw <4 x i64> %76, %75
  %78 = shufflevector <4 x i64> %68, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %79 = add <4 x i64> %51, %78
  %80 = add <4 x i64> %79, %77
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %82, i32 0, i32 3, i32 1)
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %84 = load <4 x i64>, ptr %81, align 1
  %85 = load <4 x i64>, ptr %83, align 1
  %86 = xor <4 x i64> %85, %84
  %87 = bitcast <4 x i64> %86 to <8 x i32>
  %88 = shufflevector <8 x i32> %87, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %89 = bitcast <8 x i32> %88 to <4 x i64>
  %90 = and <4 x i64> %86, splat (i64 4294967295)
  %91 = and <4 x i64> %89, splat (i64 4294967295)
  %92 = mul nuw <4 x i64> %91, %90
  %93 = shufflevector <4 x i64> %84, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %94 = add <4 x i64> %66, %93
  %95 = add <4 x i64> %94, %92
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %97 = load <4 x i64>, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = xor <4 x i64> %99, %97
  %101 = bitcast <4 x i64> %100 to <8 x i32>
  %102 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %103 = bitcast <8 x i32> %102 to <4 x i64>
  %104 = and <4 x i64> %100, splat (i64 4294967295)
  %105 = and <4 x i64> %103, splat (i64 4294967295)
  %106 = mul nuw <4 x i64> %105, %104
  %107 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %108 = add <4 x i64> %80, %107
  %109 = add <4 x i64> %108, %106
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %111, i32 0, i32 3, i32 1)
  %112 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %113 = load <4 x i64>, ptr %110, align 1
  %114 = load <4 x i64>, ptr %112, align 1
  %115 = xor <4 x i64> %114, %113
  %116 = bitcast <4 x i64> %115 to <8 x i32>
  %117 = shufflevector <8 x i32> %116, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %118 = bitcast <8 x i32> %117 to <4 x i64>
  %119 = and <4 x i64> %115, splat (i64 4294967295)
  %120 = and <4 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <4 x i64> %120, %119
  %122 = shufflevector <4 x i64> %113, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %123 = add <4 x i64> %95, %122
  %124 = add <4 x i64> %123, %121
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %126 = load <4 x i64>, ptr %125, align 1
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %128 = load <4 x i64>, ptr %127, align 1
  %129 = xor <4 x i64> %128, %126
  %130 = bitcast <4 x i64> %129 to <8 x i32>
  %131 = shufflevector <8 x i32> %130, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %132 = bitcast <8 x i32> %131 to <4 x i64>
  %133 = and <4 x i64> %129, splat (i64 4294967295)
  %134 = and <4 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <4 x i64> %134, %133
  %136 = shufflevector <4 x i64> %126, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %137 = add <4 x i64> %109, %136
  %138 = add <4 x i64> %137, %135
  store <4 x i64> %124, ptr %4, align 64
  store <4 x i64> %138, ptr %12, align 32
  store i64 4, ptr %22, align 8
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %139, ptr noundef nonnull readonly align 1 dereferenceable(64) %140, i64 64, i1 false)
  %141 = getelementptr i8, ptr %0, i64 256
  %142 = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %142, ptr noundef nonnull readonly align 1 dereferenceable(44) %141, i64 44, i1 false)
  store i32 44, ptr %8, align 64
  %143 = load ptr, ptr %16, align 8
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 700
  %145 = icmp eq ptr %143, null
  %146 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %147 = select i1 %145, ptr %146, ptr %143
  %148 = getelementptr inbounds nuw i8, ptr %4, i64 528
  store i64 700, ptr %148, align 16
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %150 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %151, ptr noundef nonnull readonly align 1 dereferenceable(212) %149, i64 212, i1 false)
  %152 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %153 = load i64, ptr %18, align 8
  %154 = load i64, ptr %17, align 32
  %155 = add i64 %153, -4
  %156 = icmp ugt i64 %155, 4
  br i1 %156, label %269, label %157

157:                                              ; preds = %20
  %158 = sub nsw i64 8, %153
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %160 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %161 = select i1 %145, ptr %159, ptr %160
  %162 = icmp eq i64 %153, 4
  %163 = load <4 x i64>, ptr %4, align 64
  %164 = load <4 x i64>, ptr %12, align 32
  br i1 %162, label %202, label %165

165:                                              ; preds = %157, %165
  %166 = phi <4 x i64> [ %199, %165 ], [ %164, %157 ]
  %167 = phi <4 x i64> [ %185, %165 ], [ %163, %157 ]
  %168 = phi i64 [ %200, %165 ], [ 0, %157 ]
  %169 = shl i64 %168, 6
  %170 = getelementptr inbounds nuw i8, ptr %150, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %171, i32 0, i32 3, i32 1)
  %172 = shl i64 %168, 3
  %173 = getelementptr inbounds nuw i8, ptr %161, i64 %172
  %174 = load <4 x i64>, ptr %170, align 64
  %175 = load <4 x i64>, ptr %173, align 1
  %176 = xor <4 x i64> %175, %174
  %177 = bitcast <4 x i64> %176 to <8 x i32>
  %178 = shufflevector <8 x i32> %177, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %179 = bitcast <8 x i32> %178 to <4 x i64>
  %180 = and <4 x i64> %176, splat (i64 4294967295)
  %181 = and <4 x i64> %179, splat (i64 4294967295)
  %182 = mul nuw <4 x i64> %181, %180
  %183 = shufflevector <4 x i64> %174, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %184 = add <4 x i64> %167, %183
  %185 = add <4 x i64> %184, %182
  %186 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %187 = load <4 x i64>, ptr %186, align 32
  %188 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %189 = load <4 x i64>, ptr %188, align 1
  %190 = xor <4 x i64> %189, %187
  %191 = bitcast <4 x i64> %190 to <8 x i32>
  %192 = shufflevector <8 x i32> %191, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %193 = bitcast <8 x i32> %192 to <4 x i64>
  %194 = and <4 x i64> %190, splat (i64 4294967295)
  %195 = and <4 x i64> %193, splat (i64 4294967295)
  %196 = mul nuw <4 x i64> %195, %194
  %197 = shufflevector <4 x i64> %187, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %198 = add <4 x i64> %166, %197
  %199 = add <4 x i64> %198, %196
  %200 = add nuw i64 %168, 1
  %201 = icmp eq i64 %200, %155
  br i1 %201, label %202, label %165

202:                                              ; preds = %165, %157
  %203 = phi <4 x i64> [ %164, %157 ], [ %199, %165 ]
  %204 = phi <4 x i64> [ %163, %157 ], [ %185, %165 ]
  %205 = getelementptr inbounds nuw i8, ptr %147, i64 %154
  %206 = lshr <4 x i64> %204, splat (i64 47)
  %207 = load <4 x i64>, ptr %205, align 1
  %208 = xor <4 x i64> %206, %207
  %209 = xor <4 x i64> %208, %204
  %210 = bitcast <4 x i64> %209 to <8 x i32>
  %211 = shufflevector <8 x i32> %210, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %212 = bitcast <8 x i32> %211 to <4 x i64>
  %213 = and <4 x i64> %209, splat (i64 4294967295)
  %214 = mul nuw <4 x i64> %213, splat (i64 2654435761)
  %215 = mul <4 x i64> %212, splat (i64 -7046029290881679360)
  %216 = add <4 x i64> %215, %214
  store <4 x i64> %216, ptr %4, align 64
  %217 = lshr <4 x i64> %203, splat (i64 47)
  %218 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %219 = load <4 x i64>, ptr %218, align 1
  %220 = xor <4 x i64> %217, %219
  %221 = xor <4 x i64> %220, %203
  %222 = bitcast <4 x i64> %221 to <8 x i32>
  %223 = shufflevector <8 x i32> %222, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %224 = bitcast <8 x i32> %223 to <4 x i64>
  %225 = and <4 x i64> %221, splat (i64 4294967295)
  %226 = mul nuw <4 x i64> %225, splat (i64 2654435761)
  %227 = mul <4 x i64> %224, splat (i64 -7046029290881679360)
  %228 = add <4 x i64> %227, %226
  store <4 x i64> %228, ptr %12, align 32
  %229 = shl nuw nsw i64 %155, 6
  %230 = getelementptr inbounds nuw i8, ptr %150, i64 %229
  %231 = icmp eq i64 %155, 4
  br i1 %231, label %407, label %232

232:                                              ; preds = %202, %232
  %233 = phi <4 x i64> [ %266, %232 ], [ %228, %202 ]
  %234 = phi <4 x i64> [ %252, %232 ], [ %216, %202 ]
  %235 = phi i64 [ %267, %232 ], [ 0, %202 ]
  %236 = shl i64 %235, 6
  %237 = getelementptr inbounds nuw i8, ptr %230, i64 %236
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %238, i32 0, i32 3, i32 1)
  %239 = shl i64 %235, 3
  %240 = getelementptr inbounds nuw i8, ptr %147, i64 %239
  %241 = load <4 x i64>, ptr %237, align 64
  %242 = load <4 x i64>, ptr %240, align 1
  %243 = xor <4 x i64> %242, %241
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = shufflevector <4 x i64> %241, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %251 = add <4 x i64> %234, %250
  %252 = add <4 x i64> %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %237, i64 32
  %254 = load <4 x i64>, ptr %253, align 32
  %255 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %256 = load <4 x i64>, ptr %255, align 1
  %257 = xor <4 x i64> %256, %254
  %258 = bitcast <4 x i64> %257 to <8 x i32>
  %259 = shufflevector <8 x i32> %258, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %260 = bitcast <8 x i32> %259 to <4 x i64>
  %261 = and <4 x i64> %257, splat (i64 4294967295)
  %262 = and <4 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <4 x i64> %262, %261
  %264 = shufflevector <4 x i64> %254, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %265 = add <4 x i64> %233, %264
  %266 = add <4 x i64> %265, %263
  %267 = add nuw i64 %235, 1
  %268 = icmp eq i64 %267, %158
  br i1 %268, label %403, label %232

269:                                              ; preds = %20
  %270 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %271 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %272 = select i1 %145, ptr %270, ptr %271
  %273 = load <4 x i64>, ptr %4, align 64
  %274 = load <4 x i64>, ptr %12, align 32
  %275 = getelementptr inbounds nuw i8, ptr %4, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %275, i32 0, i32 3, i32 1)
  %276 = load <4 x i64>, ptr %150, align 64
  %277 = load <4 x i64>, ptr %272, align 1
  %278 = xor <4 x i64> %277, %276
  %279 = bitcast <4 x i64> %278 to <8 x i32>
  %280 = shufflevector <8 x i32> %279, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %281 = bitcast <8 x i32> %280 to <4 x i64>
  %282 = and <4 x i64> %278, splat (i64 4294967295)
  %283 = and <4 x i64> %281, splat (i64 4294967295)
  %284 = mul nuw <4 x i64> %283, %282
  %285 = shufflevector <4 x i64> %276, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %286 = add <4 x i64> %273, %285
  %287 = add <4 x i64> %286, %284
  %288 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %289 = load <4 x i64>, ptr %288, align 32
  %290 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %291 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %292 = select i1 %145, ptr %290, ptr %291
  %293 = load <4 x i64>, ptr %292, align 1
  %294 = xor <4 x i64> %293, %289
  %295 = bitcast <4 x i64> %294 to <8 x i32>
  %296 = shufflevector <8 x i32> %295, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %297 = bitcast <8 x i32> %296 to <4 x i64>
  %298 = and <4 x i64> %294, splat (i64 4294967295)
  %299 = and <4 x i64> %297, splat (i64 4294967295)
  %300 = mul nuw <4 x i64> %299, %298
  %301 = shufflevector <4 x i64> %289, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %302 = add <4 x i64> %274, %301
  %303 = add <4 x i64> %302, %300
  %304 = getelementptr inbounds nuw i8, ptr %4, i64 320
  %305 = getelementptr inbounds nuw i8, ptr %4, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %305, i32 0, i32 3, i32 1)
  %306 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %307 = getelementptr inbounds nuw i8, ptr %143, i64 40
  %308 = select i1 %145, ptr %306, ptr %307
  %309 = load <4 x i64>, ptr %304, align 64
  %310 = load <4 x i64>, ptr %308, align 1
  %311 = xor <4 x i64> %310, %309
  %312 = bitcast <4 x i64> %311 to <8 x i32>
  %313 = shufflevector <8 x i32> %312, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %314 = bitcast <8 x i32> %313 to <4 x i64>
  %315 = and <4 x i64> %311, splat (i64 4294967295)
  %316 = and <4 x i64> %314, splat (i64 4294967295)
  %317 = mul nuw <4 x i64> %316, %315
  %318 = shufflevector <4 x i64> %309, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %319 = add <4 x i64> %287, %318
  %320 = add <4 x i64> %319, %317
  %321 = getelementptr inbounds nuw i8, ptr %4, i64 352
  %322 = load <4 x i64>, ptr %321, align 32
  %323 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %324 = getelementptr inbounds nuw i8, ptr %143, i64 72
  %325 = select i1 %145, ptr %323, ptr %324
  %326 = load <4 x i64>, ptr %325, align 1
  %327 = xor <4 x i64> %326, %322
  %328 = bitcast <4 x i64> %327 to <8 x i32>
  %329 = shufflevector <8 x i32> %328, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %330 = bitcast <8 x i32> %329 to <4 x i64>
  %331 = and <4 x i64> %327, splat (i64 4294967295)
  %332 = and <4 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <4 x i64> %332, %331
  %334 = shufflevector <4 x i64> %322, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %335 = add <4 x i64> %303, %334
  %336 = add <4 x i64> %335, %333
  %337 = getelementptr inbounds nuw i8, ptr %4, i64 384
  %338 = getelementptr inbounds nuw i8, ptr %4, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %338, i32 0, i32 3, i32 1)
  %339 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %340 = getelementptr inbounds nuw i8, ptr %143, i64 48
  %341 = select i1 %145, ptr %339, ptr %340
  %342 = load <4 x i64>, ptr %337, align 64
  %343 = load <4 x i64>, ptr %341, align 1
  %344 = xor <4 x i64> %343, %342
  %345 = bitcast <4 x i64> %344 to <8 x i32>
  %346 = shufflevector <8 x i32> %345, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %347 = bitcast <8 x i32> %346 to <4 x i64>
  %348 = and <4 x i64> %344, splat (i64 4294967295)
  %349 = and <4 x i64> %347, splat (i64 4294967295)
  %350 = mul nuw <4 x i64> %349, %348
  %351 = shufflevector <4 x i64> %342, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %352 = add <4 x i64> %320, %351
  %353 = add <4 x i64> %352, %350
  %354 = getelementptr inbounds nuw i8, ptr %4, i64 416
  %355 = load <4 x i64>, ptr %354, align 32
  %356 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %357 = getelementptr inbounds nuw i8, ptr %143, i64 80
  %358 = select i1 %145, ptr %356, ptr %357
  %359 = load <4 x i64>, ptr %358, align 1
  %360 = xor <4 x i64> %359, %355
  %361 = bitcast <4 x i64> %360 to <8 x i32>
  %362 = shufflevector <8 x i32> %361, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %363 = bitcast <8 x i32> %362 to <4 x i64>
  %364 = and <4 x i64> %360, splat (i64 4294967295)
  %365 = and <4 x i64> %363, splat (i64 4294967295)
  %366 = mul nuw <4 x i64> %365, %364
  %367 = shufflevector <4 x i64> %355, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %368 = add <4 x i64> %336, %367
  %369 = add <4 x i64> %368, %366
  %370 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %371 = getelementptr inbounds nuw i8, ptr %4, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %371, i32 0, i32 3, i32 1)
  %372 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %373 = getelementptr inbounds nuw i8, ptr %143, i64 56
  %374 = select i1 %145, ptr %372, ptr %373
  %375 = load <4 x i64>, ptr %370, align 64
  %376 = load <4 x i64>, ptr %374, align 1
  %377 = xor <4 x i64> %376, %375
  %378 = bitcast <4 x i64> %377 to <8 x i32>
  %379 = shufflevector <8 x i32> %378, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %380 = bitcast <8 x i32> %379 to <4 x i64>
  %381 = and <4 x i64> %377, splat (i64 4294967295)
  %382 = and <4 x i64> %380, splat (i64 4294967295)
  %383 = mul nuw <4 x i64> %382, %381
  %384 = shufflevector <4 x i64> %375, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %385 = add <4 x i64> %353, %384
  %386 = add <4 x i64> %385, %383
  %387 = getelementptr inbounds nuw i8, ptr %4, i64 480
  %388 = load <4 x i64>, ptr %387, align 32
  %389 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %390 = getelementptr inbounds nuw i8, ptr %143, i64 88
  %391 = select i1 %145, ptr %389, ptr %390
  %392 = load <4 x i64>, ptr %391, align 1
  %393 = xor <4 x i64> %392, %388
  %394 = bitcast <4 x i64> %393 to <8 x i32>
  %395 = shufflevector <8 x i32> %394, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %396 = bitcast <8 x i32> %395 to <4 x i64>
  %397 = and <4 x i64> %393, splat (i64 4294967295)
  %398 = and <4 x i64> %396, splat (i64 4294967295)
  %399 = mul nuw <4 x i64> %398, %397
  %400 = shufflevector <4 x i64> %388, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %401 = add <4 x i64> %369, %400
  %402 = add <4 x i64> %401, %399
  br label %403

403:                                              ; preds = %232, %269
  %404 = phi <4 x i64> [ %386, %269 ], [ %252, %232 ]
  %405 = phi <4 x i64> [ %402, %269 ], [ %266, %232 ]
  %406 = phi i64 [ 8, %269 ], [ %158, %232 ]
  store <4 x i64> %404, ptr %4, align 64
  store <4 x i64> %405, ptr %12, align 32
  br label %407

407:                                              ; preds = %403, %202
  %408 = phi i64 [ 0, %202 ], [ %406, %403 ]
  store i64 %408, ptr %152, align 8
  store i32 0, ptr %8, align 64
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %410 = ptrtoint ptr %144 to i64
  %411 = shl i64 %153, 6
  %412 = icmp ult i64 %411, 188
  br i1 %412, label %431, label %641

413:                                              ; preds = %7
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 700
  %415 = getelementptr inbounds nuw i8, ptr %4, i64 528
  store i64 400, ptr %415, align 16
  %416 = load i64, ptr %18, align 8
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %418 = ptrtoint ptr %414 to i64
  %419 = shl i64 %416, 6
  %420 = icmp ult i64 %419, 400
  br i1 %420, label %431, label %421

421:                                              ; preds = %413
  %422 = load <4 x i64>, ptr %4, align 64
  %423 = load <4 x i64>, ptr %12, align 32
  %424 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %425 = load i64, ptr %17, align 32
  %426 = load i64, ptr %424, align 8
  %427 = getelementptr inbounds nuw i8, ptr %1, i64 %425
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 32
  %429 = sub i64 %416, %426
  %430 = icmp ugt i64 %429, 4
  br i1 %430, label %752, label %644

431:                                              ; preds = %413, %407
  %432 = phi i64 [ %419, %413 ], [ %411, %407 ]
  %433 = phi i64 [ %418, %413 ], [ %410, %407 ]
  %434 = phi ptr [ %417, %413 ], [ %409, %407 ]
  %435 = phi i64 [ 6, %413 ], [ 2, %407 ]
  %436 = phi i64 [ %416, %413 ], [ %153, %407 ]
  %437 = phi ptr [ %1, %413 ], [ %147, %407 ]
  %438 = phi ptr [ %415, %413 ], [ %148, %407 ]
  %439 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %440 = load i64, ptr %439, align 8
  %441 = sub i64 %436, %440
  %442 = shl i64 %440, 3
  %443 = getelementptr inbounds nuw i8, ptr %437, i64 %442
  %444 = icmp eq i64 %436, %440
  %445 = load <4 x i64>, ptr %4, align 64
  %446 = load <4 x i64>, ptr %12, align 32
  br i1 %444, label %485, label %447

447:                                              ; preds = %431, %447
  %448 = phi <4 x i64> [ %481, %447 ], [ %446, %431 ]
  %449 = phi <4 x i64> [ %467, %447 ], [ %445, %431 ]
  %450 = phi i64 [ %482, %447 ], [ 0, %431 ]
  %451 = shl i64 %450, 6
  %452 = getelementptr inbounds nuw i8, ptr %434, i64 %451
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %453, i32 0, i32 3, i32 1)
  %454 = shl i64 %450, 3
  %455 = getelementptr inbounds nuw i8, ptr %443, i64 %454
  %456 = load <4 x i64>, ptr %452, align 1
  %457 = load <4 x i64>, ptr %455, align 1
  %458 = xor <4 x i64> %457, %456
  %459 = bitcast <4 x i64> %458 to <8 x i32>
  %460 = shufflevector <8 x i32> %459, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %461 = bitcast <8 x i32> %460 to <4 x i64>
  %462 = and <4 x i64> %458, splat (i64 4294967295)
  %463 = and <4 x i64> %461, splat (i64 4294967295)
  %464 = mul nuw <4 x i64> %463, %462
  %465 = shufflevector <4 x i64> %456, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %466 = add <4 x i64> %449, %465
  %467 = add <4 x i64> %466, %464
  %468 = getelementptr inbounds nuw i8, ptr %452, i64 32
  %469 = load <4 x i64>, ptr %468, align 1
  %470 = getelementptr inbounds nuw i8, ptr %455, i64 32
  %471 = load <4 x i64>, ptr %470, align 1
  %472 = xor <4 x i64> %471, %469
  %473 = bitcast <4 x i64> %472 to <8 x i32>
  %474 = shufflevector <8 x i32> %473, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %475 = bitcast <8 x i32> %474 to <4 x i64>
  %476 = and <4 x i64> %472, splat (i64 4294967295)
  %477 = and <4 x i64> %475, splat (i64 4294967295)
  %478 = mul nuw <4 x i64> %477, %476
  %479 = shufflevector <4 x i64> %469, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %480 = add <4 x i64> %448, %479
  %481 = add <4 x i64> %480, %478
  %482 = add nuw i64 %450, 1
  %483 = icmp eq i64 %482, %441
  br i1 %483, label %484, label %447

484:                                              ; preds = %447
  store <4 x i64> %467, ptr %4, align 64
  store <4 x i64> %481, ptr %12, align 32
  br label %485

485:                                              ; preds = %484, %431
  %486 = phi <4 x i64> [ %481, %484 ], [ %446, %431 ]
  %487 = phi <4 x i64> [ %467, %484 ], [ %445, %431 ]
  %488 = load i64, ptr %17, align 32
  %489 = getelementptr inbounds nuw i8, ptr %437, i64 %488
  %490 = lshr <4 x i64> %487, splat (i64 47)
  %491 = load <4 x i64>, ptr %489, align 1
  %492 = xor <4 x i64> %490, %491
  %493 = xor <4 x i64> %492, %487
  %494 = bitcast <4 x i64> %493 to <8 x i32>
  %495 = shufflevector <8 x i32> %494, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %496 = bitcast <8 x i32> %495 to <4 x i64>
  %497 = and <4 x i64> %493, splat (i64 4294967295)
  %498 = mul nuw <4 x i64> %497, splat (i64 2654435761)
  %499 = mul <4 x i64> %496, splat (i64 -7046029290881679360)
  %500 = add <4 x i64> %499, %498
  store <4 x i64> %500, ptr %4, align 64
  %501 = lshr <4 x i64> %486, splat (i64 47)
  %502 = getelementptr inbounds nuw i8, ptr %489, i64 32
  %503 = load <4 x i64>, ptr %502, align 1
  %504 = xor <4 x i64> %501, %503
  %505 = xor <4 x i64> %504, %486
  %506 = bitcast <4 x i64> %505 to <8 x i32>
  %507 = shufflevector <8 x i32> %506, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %508 = bitcast <8 x i32> %507 to <4 x i64>
  %509 = and <4 x i64> %505, splat (i64 4294967295)
  %510 = mul nuw <4 x i64> %509, splat (i64 2654435761)
  %511 = mul <4 x i64> %508, splat (i64 -7046029290881679360)
  %512 = add <4 x i64> %511, %510
  store <4 x i64> %512, ptr %12, align 32
  store i64 0, ptr %439, align 8
  %513 = shl i64 %441, 6
  %514 = getelementptr inbounds nuw i8, ptr %434, i64 %513
  %515 = sub i64 %435, %441
  %516 = icmp ult i64 %515, %436
  br i1 %516, label %590, label %517

517:                                              ; preds = %485
  %518 = icmp eq i64 %436, 0
  br label %519

519:                                              ; preds = %562, %517
  %520 = phi <4 x i64> [ %512, %517 ], [ %586, %562 ]
  %521 = phi <4 x i64> [ %500, %517 ], [ %575, %562 ]
  %522 = phi ptr [ %514, %517 ], [ %587, %562 ]
  %523 = phi i64 [ %515, %517 ], [ %588, %562 ]
  br i1 %518, label %562, label %524

524:                                              ; preds = %519, %524
  %525 = phi <4 x i64> [ %558, %524 ], [ %520, %519 ]
  %526 = phi <4 x i64> [ %544, %524 ], [ %521, %519 ]
  %527 = phi i64 [ %559, %524 ], [ 0, %519 ]
  %528 = shl i64 %527, 6
  %529 = getelementptr inbounds nuw i8, ptr %522, i64 %528
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %530, i32 0, i32 3, i32 1)
  %531 = shl i64 %527, 3
  %532 = getelementptr inbounds nuw i8, ptr %437, i64 %531
  %533 = load <4 x i64>, ptr %529, align 1
  %534 = load <4 x i64>, ptr %532, align 1
  %535 = xor <4 x i64> %534, %533
  %536 = bitcast <4 x i64> %535 to <8 x i32>
  %537 = shufflevector <8 x i32> %536, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %538 = bitcast <8 x i32> %537 to <4 x i64>
  %539 = and <4 x i64> %535, splat (i64 4294967295)
  %540 = and <4 x i64> %538, splat (i64 4294967295)
  %541 = mul nuw <4 x i64> %540, %539
  %542 = shufflevector <4 x i64> %533, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %543 = add <4 x i64> %526, %542
  %544 = add <4 x i64> %543, %541
  %545 = getelementptr inbounds nuw i8, ptr %529, i64 32
  %546 = load <4 x i64>, ptr %545, align 1
  %547 = getelementptr inbounds nuw i8, ptr %532, i64 32
  %548 = load <4 x i64>, ptr %547, align 1
  %549 = xor <4 x i64> %548, %546
  %550 = bitcast <4 x i64> %549 to <8 x i32>
  %551 = shufflevector <8 x i32> %550, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %552 = bitcast <8 x i32> %551 to <4 x i64>
  %553 = and <4 x i64> %549, splat (i64 4294967295)
  %554 = and <4 x i64> %552, splat (i64 4294967295)
  %555 = mul nuw <4 x i64> %554, %553
  %556 = shufflevector <4 x i64> %546, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %557 = add <4 x i64> %525, %556
  %558 = add <4 x i64> %557, %555
  %559 = add nuw i64 %527, 1
  %560 = icmp eq i64 %559, %436
  br i1 %560, label %561, label %524

561:                                              ; preds = %524
  store <4 x i64> %544, ptr %4, align 64
  store <4 x i64> %558, ptr %12, align 32
  br label %562

562:                                              ; preds = %561, %519
  %563 = phi <4 x i64> [ %520, %519 ], [ %558, %561 ]
  %564 = phi <4 x i64> [ %521, %519 ], [ %544, %561 ]
  %565 = lshr <4 x i64> %564, splat (i64 47)
  %566 = load <4 x i64>, ptr %489, align 1
  %567 = xor <4 x i64> %565, %566
  %568 = xor <4 x i64> %567, %564
  %569 = bitcast <4 x i64> %568 to <8 x i32>
  %570 = shufflevector <8 x i32> %569, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %571 = bitcast <8 x i32> %570 to <4 x i64>
  %572 = and <4 x i64> %568, splat (i64 4294967295)
  %573 = mul nuw <4 x i64> %572, splat (i64 2654435761)
  %574 = mul <4 x i64> %571, splat (i64 -7046029290881679360)
  %575 = add <4 x i64> %574, %573
  store <4 x i64> %575, ptr %4, align 64
  %576 = lshr <4 x i64> %563, splat (i64 47)
  %577 = load <4 x i64>, ptr %502, align 1
  %578 = xor <4 x i64> %576, %577
  %579 = xor <4 x i64> %578, %563
  %580 = bitcast <4 x i64> %579 to <8 x i32>
  %581 = shufflevector <8 x i32> %580, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %582 = bitcast <8 x i32> %581 to <4 x i64>
  %583 = and <4 x i64> %579, splat (i64 4294967295)
  %584 = mul nuw <4 x i64> %583, splat (i64 2654435761)
  %585 = mul <4 x i64> %582, splat (i64 -7046029290881679360)
  %586 = add <4 x i64> %585, %584
  store <4 x i64> %586, ptr %12, align 32
  %587 = getelementptr inbounds nuw i8, ptr %522, i64 %432
  %588 = sub i64 %523, %436
  %589 = icmp ult i64 %588, %436
  br i1 %589, label %590, label %519

590:                                              ; preds = %562, %485
  %591 = phi <4 x i64> [ %512, %485 ], [ %586, %562 ]
  %592 = phi <4 x i64> [ %500, %485 ], [ %575, %562 ]
  %593 = phi i64 [ %515, %485 ], [ %588, %562 ]
  %594 = phi ptr [ %514, %485 ], [ %587, %562 ]
  %595 = icmp eq i64 %593, 0
  br i1 %595, label %634, label %596

596:                                              ; preds = %590, %596
  %597 = phi <4 x i64> [ %630, %596 ], [ %591, %590 ]
  %598 = phi <4 x i64> [ %616, %596 ], [ %592, %590 ]
  %599 = phi i64 [ %631, %596 ], [ 0, %590 ]
  %600 = shl i64 %599, 6
  %601 = getelementptr inbounds nuw i8, ptr %594, i64 %600
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %602, i32 0, i32 3, i32 1)
  %603 = shl i64 %599, 3
  %604 = getelementptr inbounds nuw i8, ptr %437, i64 %603
  %605 = load <4 x i64>, ptr %601, align 1
  %606 = load <4 x i64>, ptr %604, align 1
  %607 = xor <4 x i64> %606, %605
  %608 = bitcast <4 x i64> %607 to <8 x i32>
  %609 = shufflevector <8 x i32> %608, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %610 = bitcast <8 x i32> %609 to <4 x i64>
  %611 = and <4 x i64> %607, splat (i64 4294967295)
  %612 = and <4 x i64> %610, splat (i64 4294967295)
  %613 = mul nuw <4 x i64> %612, %611
  %614 = shufflevector <4 x i64> %605, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %615 = add <4 x i64> %598, %614
  %616 = add <4 x i64> %615, %613
  %617 = getelementptr inbounds nuw i8, ptr %601, i64 32
  %618 = load <4 x i64>, ptr %617, align 1
  %619 = getelementptr inbounds nuw i8, ptr %604, i64 32
  %620 = load <4 x i64>, ptr %619, align 1
  %621 = xor <4 x i64> %620, %618
  %622 = bitcast <4 x i64> %621 to <8 x i32>
  %623 = shufflevector <8 x i32> %622, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %624 = bitcast <8 x i32> %623 to <4 x i64>
  %625 = and <4 x i64> %621, splat (i64 4294967295)
  %626 = and <4 x i64> %624, splat (i64 4294967295)
  %627 = mul nuw <4 x i64> %626, %625
  %628 = shufflevector <4 x i64> %618, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %629 = add <4 x i64> %597, %628
  %630 = add <4 x i64> %629, %627
  %631 = add nuw i64 %599, 1
  %632 = icmp eq i64 %631, %593
  br i1 %632, label %633, label %596

633:                                              ; preds = %596
  store <4 x i64> %616, ptr %4, align 64
  store <4 x i64> %630, ptr %12, align 32
  br label %634

634:                                              ; preds = %633, %590
  %635 = phi <4 x i64> [ %630, %633 ], [ %591, %590 ]
  %636 = phi <4 x i64> [ %616, %633 ], [ %592, %590 ]
  %637 = shl i64 %593, 6
  %638 = getelementptr inbounds nuw i8, ptr %594, i64 %637
  store i64 %593, ptr %439, align 8
  %639 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %640 = getelementptr inbounds i8, ptr %638, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %639, ptr noundef nonnull readonly align 1 dereferenceable(64) %640, i64 64, i1 false)
  br label %877

641:                                              ; preds = %407
  %642 = load <4 x i64>, ptr %4, align 64
  %643 = load <4 x i64>, ptr %12, align 32
  br label %877

644:                                              ; preds = %421
  %645 = sub nuw nsw i64 4, %429
  %646 = shl i64 %426, 3
  %647 = getelementptr inbounds nuw i8, ptr %1, i64 %646
  %648 = icmp eq i64 %416, %426
  br i1 %648, label %686, label %649

649:                                              ; preds = %644, %649
  %650 = phi <4 x i64> [ %683, %649 ], [ %423, %644 ]
  %651 = phi <4 x i64> [ %669, %649 ], [ %422, %644 ]
  %652 = phi i64 [ %684, %649 ], [ 0, %644 ]
  %653 = shl i64 %652, 6
  %654 = getelementptr inbounds nuw i8, ptr %417, i64 %653
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %655, i32 0, i32 3, i32 1)
  %656 = shl i64 %652, 3
  %657 = getelementptr inbounds nuw i8, ptr %647, i64 %656
  %658 = load <4 x i64>, ptr %654, align 1
  %659 = load <4 x i64>, ptr %657, align 1
  %660 = xor <4 x i64> %659, %658
  %661 = bitcast <4 x i64> %660 to <8 x i32>
  %662 = shufflevector <8 x i32> %661, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %663 = bitcast <8 x i32> %662 to <4 x i64>
  %664 = and <4 x i64> %660, splat (i64 4294967295)
  %665 = and <4 x i64> %663, splat (i64 4294967295)
  %666 = mul nuw <4 x i64> %665, %664
  %667 = shufflevector <4 x i64> %658, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %668 = add <4 x i64> %651, %667
  %669 = add <4 x i64> %668, %666
  %670 = getelementptr inbounds nuw i8, ptr %654, i64 32
  %671 = load <4 x i64>, ptr %670, align 1
  %672 = getelementptr inbounds nuw i8, ptr %657, i64 32
  %673 = load <4 x i64>, ptr %672, align 1
  %674 = xor <4 x i64> %673, %671
  %675 = bitcast <4 x i64> %674 to <8 x i32>
  %676 = shufflevector <8 x i32> %675, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %677 = bitcast <8 x i32> %676 to <4 x i64>
  %678 = and <4 x i64> %674, splat (i64 4294967295)
  %679 = and <4 x i64> %677, splat (i64 4294967295)
  %680 = mul nuw <4 x i64> %679, %678
  %681 = shufflevector <4 x i64> %671, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %682 = add <4 x i64> %650, %681
  %683 = add <4 x i64> %682, %680
  %684 = add nuw i64 %652, 1
  %685 = icmp eq i64 %684, %429
  br i1 %685, label %686, label %649

686:                                              ; preds = %649, %644
  %687 = phi <4 x i64> [ %423, %644 ], [ %683, %649 ]
  %688 = phi <4 x i64> [ %422, %644 ], [ %669, %649 ]
  %689 = lshr <4 x i64> %688, splat (i64 47)
  %690 = load <4 x i64>, ptr %427, align 1
  %691 = xor <4 x i64> %689, %690
  %692 = xor <4 x i64> %691, %688
  %693 = bitcast <4 x i64> %692 to <8 x i32>
  %694 = shufflevector <8 x i32> %693, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %695 = bitcast <8 x i32> %694 to <4 x i64>
  %696 = and <4 x i64> %692, splat (i64 4294967295)
  %697 = mul nuw <4 x i64> %696, splat (i64 2654435761)
  %698 = mul <4 x i64> %695, splat (i64 -7046029290881679360)
  %699 = add <4 x i64> %698, %697
  store <4 x i64> %699, ptr %4, align 64
  %700 = lshr <4 x i64> %687, splat (i64 47)
  %701 = load <4 x i64>, ptr %428, align 1
  %702 = xor <4 x i64> %700, %701
  %703 = xor <4 x i64> %702, %687
  %704 = bitcast <4 x i64> %703 to <8 x i32>
  %705 = shufflevector <8 x i32> %704, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %706 = bitcast <8 x i32> %705 to <4 x i64>
  %707 = and <4 x i64> %703, splat (i64 4294967295)
  %708 = mul nuw <4 x i64> %707, splat (i64 2654435761)
  %709 = mul <4 x i64> %706, splat (i64 -7046029290881679360)
  %710 = add <4 x i64> %709, %708
  store <4 x i64> %710, ptr %12, align 32
  %711 = shl nuw nsw i64 %429, 6
  %712 = getelementptr inbounds nuw i8, ptr %417, i64 %711
  %713 = icmp eq i64 %429, 4
  br i1 %713, label %870, label %714

714:                                              ; preds = %686, %714
  %715 = phi <4 x i64> [ %748, %714 ], [ %710, %686 ]
  %716 = phi <4 x i64> [ %734, %714 ], [ %699, %686 ]
  %717 = phi i64 [ %749, %714 ], [ 0, %686 ]
  %718 = shl i64 %717, 6
  %719 = getelementptr inbounds nuw i8, ptr %712, i64 %718
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %720, i32 0, i32 3, i32 1)
  %721 = shl i64 %717, 3
  %722 = getelementptr inbounds nuw i8, ptr %1, i64 %721
  %723 = load <4 x i64>, ptr %719, align 1
  %724 = load <4 x i64>, ptr %722, align 1
  %725 = xor <4 x i64> %724, %723
  %726 = bitcast <4 x i64> %725 to <8 x i32>
  %727 = shufflevector <8 x i32> %726, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %728 = bitcast <8 x i32> %727 to <4 x i64>
  %729 = and <4 x i64> %725, splat (i64 4294967295)
  %730 = and <4 x i64> %728, splat (i64 4294967295)
  %731 = mul nuw <4 x i64> %730, %729
  %732 = shufflevector <4 x i64> %723, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %733 = add <4 x i64> %716, %732
  %734 = add <4 x i64> %733, %731
  %735 = getelementptr inbounds nuw i8, ptr %719, i64 32
  %736 = load <4 x i64>, ptr %735, align 1
  %737 = getelementptr inbounds nuw i8, ptr %722, i64 32
  %738 = load <4 x i64>, ptr %737, align 1
  %739 = xor <4 x i64> %738, %736
  %740 = bitcast <4 x i64> %739 to <8 x i32>
  %741 = shufflevector <8 x i32> %740, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %742 = bitcast <8 x i32> %741 to <4 x i64>
  %743 = and <4 x i64> %739, splat (i64 4294967295)
  %744 = and <4 x i64> %742, splat (i64 4294967295)
  %745 = mul nuw <4 x i64> %744, %743
  %746 = shufflevector <4 x i64> %736, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %747 = add <4 x i64> %715, %746
  %748 = add <4 x i64> %747, %745
  %749 = add nuw i64 %717, 1
  %750 = icmp eq i64 %749, %645
  br i1 %750, label %751, label %714

751:                                              ; preds = %714
  store <4 x i64> %734, ptr %4, align 64
  store <4 x i64> %748, ptr %12, align 32
  br label %870

752:                                              ; preds = %421
  %753 = shl i64 %426, 3
  %754 = getelementptr inbounds nuw i8, ptr %1, i64 %753
  %755 = getelementptr inbounds nuw i8, ptr %0, i64 620
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %755, i32 0, i32 3, i32 1)
  %756 = load <4 x i64>, ptr %417, align 1
  %757 = load <4 x i64>, ptr %754, align 1
  %758 = xor <4 x i64> %757, %756
  %759 = bitcast <4 x i64> %758 to <8 x i32>
  %760 = shufflevector <8 x i32> %759, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %761 = bitcast <8 x i32> %760 to <4 x i64>
  %762 = and <4 x i64> %758, splat (i64 4294967295)
  %763 = and <4 x i64> %761, splat (i64 4294967295)
  %764 = mul nuw <4 x i64> %763, %762
  %765 = shufflevector <4 x i64> %756, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %766 = add <4 x i64> %422, %765
  %767 = add <4 x i64> %766, %764
  %768 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %769 = load <4 x i64>, ptr %768, align 1
  %770 = getelementptr inbounds nuw i8, ptr %754, i64 32
  %771 = load <4 x i64>, ptr %770, align 1
  %772 = xor <4 x i64> %771, %769
  %773 = bitcast <4 x i64> %772 to <8 x i32>
  %774 = shufflevector <8 x i32> %773, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %775 = bitcast <8 x i32> %774 to <4 x i64>
  %776 = and <4 x i64> %772, splat (i64 4294967295)
  %777 = and <4 x i64> %775, splat (i64 4294967295)
  %778 = mul nuw <4 x i64> %777, %776
  %779 = shufflevector <4 x i64> %769, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %780 = add <4 x i64> %423, %779
  %781 = add <4 x i64> %780, %778
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 684
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %783, i32 0, i32 3, i32 1)
  %784 = getelementptr inbounds nuw i8, ptr %754, i64 8
  %785 = load <4 x i64>, ptr %782, align 1
  %786 = load <4 x i64>, ptr %784, align 1
  %787 = xor <4 x i64> %786, %785
  %788 = bitcast <4 x i64> %787 to <8 x i32>
  %789 = shufflevector <8 x i32> %788, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %790 = bitcast <8 x i32> %789 to <4 x i64>
  %791 = and <4 x i64> %787, splat (i64 4294967295)
  %792 = and <4 x i64> %790, splat (i64 4294967295)
  %793 = mul nuw <4 x i64> %792, %791
  %794 = shufflevector <4 x i64> %785, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %795 = add <4 x i64> %767, %794
  %796 = add <4 x i64> %795, %793
  %797 = getelementptr inbounds nuw i8, ptr %0, i64 396
  %798 = load <4 x i64>, ptr %797, align 1
  %799 = getelementptr inbounds nuw i8, ptr %754, i64 40
  %800 = load <4 x i64>, ptr %799, align 1
  %801 = xor <4 x i64> %800, %798
  %802 = bitcast <4 x i64> %801 to <8 x i32>
  %803 = shufflevector <8 x i32> %802, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %804 = bitcast <8 x i32> %803 to <4 x i64>
  %805 = and <4 x i64> %801, splat (i64 4294967295)
  %806 = and <4 x i64> %804, splat (i64 4294967295)
  %807 = mul nuw <4 x i64> %806, %805
  %808 = shufflevector <4 x i64> %798, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %809 = add <4 x i64> %781, %808
  %810 = add <4 x i64> %809, %807
  %811 = getelementptr inbounds nuw i8, ptr %0, i64 428
  %812 = getelementptr inbounds nuw i8, ptr %0, i64 748
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %812, i32 0, i32 3, i32 1)
  %813 = getelementptr inbounds nuw i8, ptr %754, i64 16
  %814 = load <4 x i64>, ptr %811, align 1
  %815 = load <4 x i64>, ptr %813, align 1
  %816 = xor <4 x i64> %815, %814
  %817 = bitcast <4 x i64> %816 to <8 x i32>
  %818 = shufflevector <8 x i32> %817, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %819 = bitcast <8 x i32> %818 to <4 x i64>
  %820 = and <4 x i64> %816, splat (i64 4294967295)
  %821 = and <4 x i64> %819, splat (i64 4294967295)
  %822 = mul nuw <4 x i64> %821, %820
  %823 = shufflevector <4 x i64> %814, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %824 = add <4 x i64> %796, %823
  %825 = add <4 x i64> %824, %822
  %826 = getelementptr inbounds nuw i8, ptr %0, i64 460
  %827 = load <4 x i64>, ptr %826, align 1
  %828 = getelementptr inbounds nuw i8, ptr %754, i64 48
  %829 = load <4 x i64>, ptr %828, align 1
  %830 = xor <4 x i64> %829, %827
  %831 = bitcast <4 x i64> %830 to <8 x i32>
  %832 = shufflevector <8 x i32> %831, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %833 = bitcast <8 x i32> %832 to <4 x i64>
  %834 = and <4 x i64> %830, splat (i64 4294967295)
  %835 = and <4 x i64> %833, splat (i64 4294967295)
  %836 = mul nuw <4 x i64> %835, %834
  %837 = shufflevector <4 x i64> %827, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %838 = add <4 x i64> %810, %837
  %839 = add <4 x i64> %838, %836
  %840 = getelementptr inbounds nuw i8, ptr %0, i64 492
  %841 = getelementptr inbounds nuw i8, ptr %0, i64 812
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %841, i32 0, i32 3, i32 1)
  %842 = getelementptr inbounds nuw i8, ptr %754, i64 24
  %843 = load <4 x i64>, ptr %840, align 1
  %844 = load <4 x i64>, ptr %842, align 1
  %845 = xor <4 x i64> %844, %843
  %846 = bitcast <4 x i64> %845 to <8 x i32>
  %847 = shufflevector <8 x i32> %846, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %848 = bitcast <8 x i32> %847 to <4 x i64>
  %849 = and <4 x i64> %845, splat (i64 4294967295)
  %850 = and <4 x i64> %848, splat (i64 4294967295)
  %851 = mul nuw <4 x i64> %850, %849
  %852 = shufflevector <4 x i64> %843, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %853 = add <4 x i64> %825, %852
  %854 = add <4 x i64> %853, %851
  %855 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %856 = load <4 x i64>, ptr %855, align 1
  %857 = getelementptr inbounds nuw i8, ptr %754, i64 56
  %858 = load <4 x i64>, ptr %857, align 1
  %859 = xor <4 x i64> %858, %856
  %860 = bitcast <4 x i64> %859 to <8 x i32>
  %861 = shufflevector <8 x i32> %860, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %862 = bitcast <8 x i32> %861 to <4 x i64>
  %863 = and <4 x i64> %859, splat (i64 4294967295)
  %864 = and <4 x i64> %862, splat (i64 4294967295)
  %865 = mul nuw <4 x i64> %864, %863
  %866 = shufflevector <4 x i64> %856, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %867 = add <4 x i64> %839, %866
  %868 = add <4 x i64> %867, %865
  store <4 x i64> %854, ptr %4, align 64
  store <4 x i64> %868, ptr %12, align 32
  %869 = add i64 %426, 4
  br label %870

870:                                              ; preds = %752, %751, %686
  %871 = phi <4 x i64> [ %868, %752 ], [ %710, %686 ], [ %748, %751 ]
  %872 = phi <4 x i64> [ %854, %752 ], [ %699, %686 ], [ %734, %751 ]
  %873 = phi i64 [ %869, %752 ], [ 0, %686 ], [ %645, %751 ]
  %874 = getelementptr i8, ptr %0, i64 556
  store i64 %873, ptr %424, align 8
  %875 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %876 = getelementptr inbounds nuw i8, ptr %0, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %875, ptr noundef nonnull readonly align 1 dereferenceable(64) %876, i64 64, i1 false)
  br label %877

877:                                              ; preds = %641, %870, %634
  %878 = phi i64 [ %433, %634 ], [ %418, %870 ], [ %410, %641 ]
  %879 = phi ptr [ %438, %634 ], [ %415, %870 ], [ %148, %641 ]
  %880 = phi <4 x i64> [ %635, %634 ], [ %871, %870 ], [ %643, %641 ]
  %881 = phi <4 x i64> [ %636, %634 ], [ %872, %870 ], [ %642, %641 ]
  %882 = phi ptr [ %638, %634 ], [ %874, %870 ], [ %409, %641 ]
  %883 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %884 = ptrtoint ptr %882 to i64
  %885 = sub i64 %878, %884
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %883, ptr readonly align 1 %882, i64 %885, i1 false)
  %886 = trunc i64 %885 to i32
  store i32 %886, ptr %8, align 64
  %887 = load i64, ptr %879, align 16
  %888 = icmp eq i64 %887, 700
  tail call void @llvm.assume(i1 %888)
  %889 = load ptr, ptr %16, align 8
  %890 = icmp eq ptr %889, %1
  tail call void @llvm.assume(i1 %890)
  %891 = icmp ugt i32 %886, 63
  br i1 %891, label %892, label %1086

892:                                              ; preds = %877
  %893 = add i64 %885, 4294967295
  %894 = lshr i64 %893, 6
  %895 = and i64 %894, 67108863
  %896 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %897 = load i64, ptr %896, align 8
  %898 = load i64, ptr %18, align 8
  %899 = load i64, ptr %17, align 32
  %900 = sub i64 %898, %897
  %901 = icmp ugt i64 %900, %895
  br i1 %901, label %1011, label %902

902:                                              ; preds = %892
  %903 = sub nuw nsw i64 %895, %900
  %904 = shl i64 %897, 3
  %905 = getelementptr inbounds nuw i8, ptr %889, i64 %904
  %906 = icmp eq i64 %898, %897
  br i1 %906, label %944, label %907

907:                                              ; preds = %902, %907
  %908 = phi <4 x i64> [ %941, %907 ], [ %880, %902 ]
  %909 = phi <4 x i64> [ %927, %907 ], [ %881, %902 ]
  %910 = phi i64 [ %942, %907 ], [ 0, %902 ]
  %911 = shl i64 %910, 6
  %912 = getelementptr inbounds nuw i8, ptr %883, i64 %911
  %913 = getelementptr inbounds nuw i8, ptr %912, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %913, i32 0, i32 3, i32 1)
  %914 = shl i64 %910, 3
  %915 = getelementptr inbounds nuw i8, ptr %905, i64 %914
  %916 = load <4 x i64>, ptr %912, align 64
  %917 = load <4 x i64>, ptr %915, align 1
  %918 = xor <4 x i64> %917, %916
  %919 = bitcast <4 x i64> %918 to <8 x i32>
  %920 = shufflevector <8 x i32> %919, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %921 = bitcast <8 x i32> %920 to <4 x i64>
  %922 = and <4 x i64> %918, splat (i64 4294967295)
  %923 = and <4 x i64> %921, splat (i64 4294967295)
  %924 = mul nuw <4 x i64> %923, %922
  %925 = shufflevector <4 x i64> %916, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %926 = add <4 x i64> %909, %925
  %927 = add <4 x i64> %926, %924
  %928 = getelementptr inbounds nuw i8, ptr %912, i64 32
  %929 = load <4 x i64>, ptr %928, align 32
  %930 = getelementptr inbounds nuw i8, ptr %915, i64 32
  %931 = load <4 x i64>, ptr %930, align 1
  %932 = xor <4 x i64> %931, %929
  %933 = bitcast <4 x i64> %932 to <8 x i32>
  %934 = shufflevector <8 x i32> %933, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %935 = bitcast <8 x i32> %934 to <4 x i64>
  %936 = and <4 x i64> %932, splat (i64 4294967295)
  %937 = and <4 x i64> %935, splat (i64 4294967295)
  %938 = mul nuw <4 x i64> %937, %936
  %939 = shufflevector <4 x i64> %929, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %940 = add <4 x i64> %908, %939
  %941 = add <4 x i64> %940, %938
  %942 = add nuw i64 %910, 1
  %943 = icmp eq i64 %942, %900
  br i1 %943, label %944, label %907

944:                                              ; preds = %907, %902
  %945 = phi <4 x i64> [ %880, %902 ], [ %941, %907 ]
  %946 = phi <4 x i64> [ %881, %902 ], [ %927, %907 ]
  %947 = getelementptr inbounds nuw i8, ptr %889, i64 %899
  %948 = lshr <4 x i64> %946, splat (i64 47)
  %949 = load <4 x i64>, ptr %947, align 1
  %950 = xor <4 x i64> %948, %949
  %951 = xor <4 x i64> %950, %946
  %952 = bitcast <4 x i64> %951 to <8 x i32>
  %953 = shufflevector <8 x i32> %952, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %954 = bitcast <8 x i32> %953 to <4 x i64>
  %955 = and <4 x i64> %951, splat (i64 4294967295)
  %956 = mul nuw <4 x i64> %955, splat (i64 2654435761)
  %957 = mul <4 x i64> %954, splat (i64 -7046029290881679360)
  %958 = add <4 x i64> %957, %956
  %959 = lshr <4 x i64> %945, splat (i64 47)
  %960 = getelementptr inbounds nuw i8, ptr %947, i64 32
  %961 = load <4 x i64>, ptr %960, align 1
  %962 = xor <4 x i64> %959, %961
  %963 = xor <4 x i64> %962, %945
  %964 = bitcast <4 x i64> %963 to <8 x i32>
  %965 = shufflevector <8 x i32> %964, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %966 = bitcast <8 x i32> %965 to <4 x i64>
  %967 = and <4 x i64> %963, splat (i64 4294967295)
  %968 = mul nuw <4 x i64> %967, splat (i64 2654435761)
  %969 = mul <4 x i64> %966, splat (i64 -7046029290881679360)
  %970 = add <4 x i64> %969, %968
  %971 = shl nuw nsw i64 %900, 6
  %972 = getelementptr inbounds nuw i8, ptr %883, i64 %971
  %973 = icmp eq i64 %900, %895
  br i1 %973, label %1052, label %974

974:                                              ; preds = %944, %974
  %975 = phi <4 x i64> [ %1008, %974 ], [ %970, %944 ]
  %976 = phi <4 x i64> [ %994, %974 ], [ %958, %944 ]
  %977 = phi i64 [ %1009, %974 ], [ 0, %944 ]
  %978 = shl i64 %977, 6
  %979 = getelementptr inbounds nuw i8, ptr %972, i64 %978
  %980 = getelementptr inbounds nuw i8, ptr %979, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %980, i32 0, i32 3, i32 1)
  %981 = shl i64 %977, 3
  %982 = getelementptr inbounds nuw i8, ptr %889, i64 %981
  %983 = load <4 x i64>, ptr %979, align 64
  %984 = load <4 x i64>, ptr %982, align 1
  %985 = xor <4 x i64> %984, %983
  %986 = bitcast <4 x i64> %985 to <8 x i32>
  %987 = shufflevector <8 x i32> %986, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %988 = bitcast <8 x i32> %987 to <4 x i64>
  %989 = and <4 x i64> %985, splat (i64 4294967295)
  %990 = and <4 x i64> %988, splat (i64 4294967295)
  %991 = mul nuw <4 x i64> %990, %989
  %992 = shufflevector <4 x i64> %983, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %993 = add <4 x i64> %976, %992
  %994 = add <4 x i64> %993, %991
  %995 = getelementptr inbounds nuw i8, ptr %979, i64 32
  %996 = load <4 x i64>, ptr %995, align 32
  %997 = getelementptr inbounds nuw i8, ptr %982, i64 32
  %998 = load <4 x i64>, ptr %997, align 1
  %999 = xor <4 x i64> %998, %996
  %1000 = bitcast <4 x i64> %999 to <8 x i32>
  %1001 = shufflevector <8 x i32> %1000, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1002 = bitcast <8 x i32> %1001 to <4 x i64>
  %1003 = and <4 x i64> %999, splat (i64 4294967295)
  %1004 = and <4 x i64> %1002, splat (i64 4294967295)
  %1005 = mul nuw <4 x i64> %1004, %1003
  %1006 = shufflevector <4 x i64> %996, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1007 = add <4 x i64> %975, %1006
  %1008 = add <4 x i64> %1007, %1005
  %1009 = add nuw i64 %977, 1
  %1010 = icmp eq i64 %1009, %903
  br i1 %1010, label %1052, label %974

1011:                                             ; preds = %892
  %1012 = shl i64 %897, 3
  %1013 = getelementptr inbounds nuw i8, ptr %889, i64 %1012
  %1014 = icmp eq i32 %886, 64
  br i1 %1014, label %1052, label %1015

1015:                                             ; preds = %1011, %1015
  %1016 = phi <4 x i64> [ %1049, %1015 ], [ %880, %1011 ]
  %1017 = phi <4 x i64> [ %1035, %1015 ], [ %881, %1011 ]
  %1018 = phi i64 [ %1050, %1015 ], [ 0, %1011 ]
  %1019 = shl i64 %1018, 6
  %1020 = getelementptr inbounds nuw i8, ptr %883, i64 %1019
  %1021 = getelementptr inbounds nuw i8, ptr %1020, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %1021, i32 0, i32 3, i32 1)
  %1022 = shl i64 %1018, 3
  %1023 = getelementptr inbounds nuw i8, ptr %1013, i64 %1022
  %1024 = load <4 x i64>, ptr %1020, align 64
  %1025 = load <4 x i64>, ptr %1023, align 1
  %1026 = xor <4 x i64> %1025, %1024
  %1027 = bitcast <4 x i64> %1026 to <8 x i32>
  %1028 = shufflevector <8 x i32> %1027, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1029 = bitcast <8 x i32> %1028 to <4 x i64>
  %1030 = and <4 x i64> %1026, splat (i64 4294967295)
  %1031 = and <4 x i64> %1029, splat (i64 4294967295)
  %1032 = mul nuw <4 x i64> %1031, %1030
  %1033 = shufflevector <4 x i64> %1024, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1034 = add <4 x i64> %1017, %1033
  %1035 = add <4 x i64> %1034, %1032
  %1036 = getelementptr inbounds nuw i8, ptr %1020, i64 32
  %1037 = load <4 x i64>, ptr %1036, align 32
  %1038 = getelementptr inbounds nuw i8, ptr %1023, i64 32
  %1039 = load <4 x i64>, ptr %1038, align 1
  %1040 = xor <4 x i64> %1039, %1037
  %1041 = bitcast <4 x i64> %1040 to <8 x i32>
  %1042 = shufflevector <8 x i32> %1041, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1043 = bitcast <8 x i32> %1042 to <4 x i64>
  %1044 = and <4 x i64> %1040, splat (i64 4294967295)
  %1045 = and <4 x i64> %1043, splat (i64 4294967295)
  %1046 = mul nuw <4 x i64> %1045, %1044
  %1047 = shufflevector <4 x i64> %1037, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1048 = add <4 x i64> %1016, %1047
  %1049 = add <4 x i64> %1048, %1046
  %1050 = add nuw nsw i64 %1018, 1
  %1051 = icmp eq i64 %1050, %895
  br i1 %1051, label %1052, label %1015

1052:                                             ; preds = %974, %1015, %1011, %944
  %1053 = phi <4 x i64> [ %970, %944 ], [ %880, %1011 ], [ %1049, %1015 ], [ %1008, %974 ]
  %1054 = phi <4 x i64> [ %958, %944 ], [ %881, %1011 ], [ %1035, %1015 ], [ %994, %974 ]
  %1055 = and i64 %885, 4294967295
  %1056 = getelementptr inbounds nuw i8, ptr %883, i64 %1055
  %1057 = getelementptr inbounds i8, ptr %1056, i64 -64
  %1058 = getelementptr inbounds nuw i8, ptr %889, i64 %899
  %1059 = getelementptr inbounds i8, ptr %1058, i64 -7
  %1060 = load <4 x i64>, ptr %1057, align 1
  %1061 = load <4 x i64>, ptr %1059, align 1
  %1062 = xor <4 x i64> %1061, %1060
  %1063 = bitcast <4 x i64> %1062 to <8 x i32>
  %1064 = shufflevector <8 x i32> %1063, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1065 = bitcast <8 x i32> %1064 to <4 x i64>
  %1066 = and <4 x i64> %1062, splat (i64 4294967295)
  %1067 = and <4 x i64> %1065, splat (i64 4294967295)
  %1068 = mul nuw <4 x i64> %1067, %1066
  %1069 = shufflevector <4 x i64> %1060, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1070 = add <4 x i64> %1054, %1069
  %1071 = add <4 x i64> %1070, %1068
  %1072 = getelementptr inbounds i8, ptr %1056, i64 -32
  %1073 = load <4 x i64>, ptr %1072, align 1
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
  %1084 = add <4 x i64> %1053, %1083
  %1085 = add <4 x i64> %1084, %1082
  br label %1122

1086:                                             ; preds = %877
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %1087 = sub i64 64, %885
  %1088 = and i64 %1087, 127
  %1089 = sub nsw i64 0, %1088
  %1090 = getelementptr inbounds i8, ptr %8, i64 %1089
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull readonly align 1 %1090, i64 %1088, i1 false)
  %1091 = getelementptr inbounds nuw i8, ptr %3, i64 %1088
  %1092 = and i64 %885, 63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1091, ptr nonnull readonly align 64 %883, i64 %1092, i1 false)
  %1093 = load i64, ptr %17, align 32
  %1094 = getelementptr inbounds nuw i8, ptr %889, i64 %1093
  %1095 = getelementptr inbounds i8, ptr %1094, i64 -7
  %1096 = load <4 x i64>, ptr %3, align 16
  %1097 = load <4 x i64>, ptr %1095, align 1
  %1098 = xor <4 x i64> %1097, %1096
  %1099 = bitcast <4 x i64> %1098 to <8 x i32>
  %1100 = shufflevector <8 x i32> %1099, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1101 = bitcast <8 x i32> %1100 to <4 x i64>
  %1102 = and <4 x i64> %1098, splat (i64 4294967295)
  %1103 = and <4 x i64> %1101, splat (i64 4294967295)
  %1104 = mul nuw <4 x i64> %1103, %1102
  %1105 = shufflevector <4 x i64> %1096, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1106 = add <4 x i64> %881, %1105
  %1107 = add <4 x i64> %1106, %1104
  %1108 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %1109 = load <4 x i64>, ptr %1108, align 16
  %1110 = getelementptr inbounds nuw i8, ptr %1094, i64 25
  %1111 = load <4 x i64>, ptr %1110, align 1
  %1112 = xor <4 x i64> %1111, %1109
  %1113 = bitcast <4 x i64> %1112 to <8 x i32>
  %1114 = shufflevector <8 x i32> %1113, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %1115 = bitcast <8 x i32> %1114 to <4 x i64>
  %1116 = and <4 x i64> %1112, splat (i64 4294967295)
  %1117 = and <4 x i64> %1115, splat (i64 4294967295)
  %1118 = mul nuw <4 x i64> %1117, %1116
  %1119 = shufflevector <4 x i64> %1109, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %1120 = add <4 x i64> %880, %1119
  %1121 = add <4 x i64> %1120, %1118
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  br label %1122

1122:                                             ; preds = %1052, %1086
  %1123 = phi <4 x i64> [ %1085, %1052 ], [ %1121, %1086 ]
  %1124 = phi <4 x i64> [ %1071, %1052 ], [ %1107, %1086 ]
  %1125 = getelementptr inbounds nuw i8, ptr %889, i64 11
  %1126 = extractelement <4 x i64> %1124, i64 0
  %1127 = extractelement <4 x i64> %1124, i64 1
  %1128 = load i64, ptr %1125, align 1
  %1129 = getelementptr i8, ptr %889, i64 19
  %1130 = load i64, ptr %1129, align 1
  %1131 = xor i64 %1128, %1126
  %1132 = xor i64 %1130, %1127
  %1133 = zext i64 %1131 to i128
  %1134 = zext i64 %1132 to i128
  %1135 = mul nuw i128 %1134, %1133
  %1136 = lshr i128 %1135, 64
  %1137 = xor i128 %1136, %1135
  %1138 = trunc i128 %1137 to i64
  %1139 = add i64 %1138, -6939834363949496028
  %1140 = getelementptr inbounds nuw i8, ptr %889, i64 27
  %1141 = extractelement <4 x i64> %1124, i64 2
  %1142 = extractelement <4 x i64> %1124, i64 3
  %1143 = load i64, ptr %1140, align 1
  %1144 = getelementptr i8, ptr %889, i64 35
  %1145 = load i64, ptr %1144, align 1
  %1146 = xor i64 %1143, %1141
  %1147 = xor i64 %1145, %1142
  %1148 = zext i64 %1146 to i128
  %1149 = zext i64 %1147 to i128
  %1150 = mul nuw i128 %1149, %1148
  %1151 = lshr i128 %1150, 64
  %1152 = xor i128 %1151, %1150
  %1153 = trunc i128 %1152 to i64
  %1154 = add i64 %1139, %1153
  %1155 = getelementptr inbounds nuw i8, ptr %889, i64 43
  %1156 = extractelement <4 x i64> %1123, i64 0
  %1157 = extractelement <4 x i64> %1123, i64 1
  %1158 = load i64, ptr %1155, align 1
  %1159 = getelementptr i8, ptr %889, i64 51
  %1160 = load i64, ptr %1159, align 1
  %1161 = xor i64 %1158, %1156
  %1162 = xor i64 %1160, %1157
  %1163 = zext i64 %1161 to i128
  %1164 = zext i64 %1162 to i128
  %1165 = mul nuw i128 %1164, %1163
  %1166 = lshr i128 %1165, 64
  %1167 = xor i128 %1166, %1165
  %1168 = trunc i128 %1167 to i64
  %1169 = add i64 %1154, %1168
  %1170 = getelementptr inbounds nuw i8, ptr %889, i64 59
  %1171 = extractelement <4 x i64> %1123, i64 2
  %1172 = extractelement <4 x i64> %1123, i64 3
  %1173 = load i64, ptr %1170, align 1
  %1174 = getelementptr i8, ptr %889, i64 67
  %1175 = load i64, ptr %1174, align 1
  %1176 = xor i64 %1173, %1171
  %1177 = xor i64 %1175, %1172
  %1178 = zext i64 %1176 to i128
  %1179 = zext i64 %1177 to i128
  %1180 = mul nuw i128 %1179, %1178
  %1181 = lshr i128 %1180, 64
  %1182 = xor i128 %1181, %1180
  %1183 = trunc i128 %1182 to i64
  %1184 = add i64 %1169, %1183
  %1185 = lshr i64 %1184, 37
  %1186 = xor i64 %1185, %1184
  %1187 = mul i64 %1186, 1609587791953885689
  %1188 = lshr i64 %1187, 32
  %1189 = xor i64 %1188, %1187
  br label %1190

1190:                                             ; preds = %2, %1122
  %1191 = phi i64 [ %1189, %1122 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #7
  ret i64 %1191
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
!11 = distinct !{!11, !12, !"XXH3_consumeStripes: argument 0"}
!12 = distinct !{!12, !"XXH3_consumeStripes"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_consumeStripes: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !12, !"XXH3_consumeStripes: argument 2"}
!17 = !{!18}
!18 = distinct !{!18, !12, !"XXH3_consumeStripes: argument 3"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_accumulate: argument 0"}
!21 = distinct !{!21, !"XXH3_accumulate"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"XXH3_accumulate: argument 1"}
!24 = !{!25}
!25 = distinct !{!25, !21, !"XXH3_accumulate: argument 2"}
!26 = !{!27, !20, !11, !6}
!27 = distinct !{!27, !28, !"XXH3_accumulate_512_avx2: argument 0"}
!28 = distinct !{!28, !"XXH3_accumulate_512_avx2"}
!29 = !{!30, !31, !23, !25, !14, !16, !18, !9}
!30 = distinct !{!30, !28, !"XXH3_accumulate_512_avx2: argument 1"}
!31 = distinct !{!31, !28, !"XXH3_accumulate_512_avx2: argument 2"}
!32 = !{!20, !25, !11, !14, !18}
!33 = !{!27}
!34 = !{!30}
!35 = !{!31}
!36 = !{!30, !23, !16, !9}
!37 = !{!27, !31, !20, !25, !11, !14, !18, !6}
!38 = !{!31, !25, !18}
!39 = !{!27, !30, !20, !23, !11, !14, !16}
!40 = !{!41}
!41 = distinct !{!41, !28, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!42 = !{!43}
!43 = distinct !{!43, !28, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!44 = !{!41, !23, !16, !9}
!45 = !{!46, !43, !20, !25, !11, !14, !18, !6}
!46 = distinct !{!46, !28, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!47 = !{!43, !25, !18}
!48 = !{!46, !41, !20, !23, !11, !14, !16}
!49 = !{!50}
!50 = distinct !{!50, !28, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!51 = !{!52}
!52 = distinct !{!52, !28, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!53 = !{!50, !23, !16, !9}
!54 = !{!55, !52, !20, !25, !11, !14, !18, !6}
!55 = distinct !{!55, !28, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!56 = !{!52, !25, !18}
!57 = !{!55, !50, !20, !23, !11, !14, !16}
!58 = !{!59}
!59 = distinct !{!59, !28, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!60 = !{!61}
!61 = distinct !{!61, !28, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!62 = !{!59, !23, !16, !9}
!63 = !{!64, !61, !20, !25, !11, !14, !18, !6}
!64 = distinct !{!64, !28, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!65 = !{!61, !25, !18}
!66 = !{!64, !59, !20, !23, !11, !14, !16}
!67 = !{!14, !6}
!68 = !{!11, !16, !18, !9}
!69 = !{!6, !9}
!70 = !{!71}
!71 = distinct !{!71, !72, !"XXH3_update: argument 0"}
!72 = distinct !{!72, !"XXH3_update"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"XXH3_update: argument 1"}
!75 = !{!71, !74}
!76 = !{!77}
!77 = distinct !{!77, !78, !"XXH3_consumeStripes: argument 0"}
!78 = distinct !{!78, !"XXH3_consumeStripes"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"XXH3_consumeStripes: argument 1"}
!81 = !{!82}
!82 = distinct !{!82, !78, !"XXH3_consumeStripes: argument 2"}
!83 = !{!84}
!84 = distinct !{!84, !78, !"XXH3_consumeStripes: argument 3"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"XXH3_accumulate: argument 1"}
!87 = distinct !{!87, !"XXH3_accumulate"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"XXH3_accumulate: argument 2"}
!90 = !{!91, !77, !71}
!91 = distinct !{!91, !92, !"XXH3_scrambleAcc_avx2: argument 0"}
!92 = distinct !{!92, !"XXH3_scrambleAcc_avx2"}
!93 = !{!94, !80, !82, !84, !74}
!94 = distinct !{!94, !92, !"XXH3_scrambleAcc_avx2: argument 1"}
!95 = !{!77, !71}
!96 = !{!80, !82, !84, !74}
!97 = !{!98, !89, !77, !80, !84}
!98 = distinct !{!98, !87, !"XXH3_accumulate: argument 0"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_accumulate_512_avx2: argument 1"}
!101 = distinct !{!101, !"XXH3_accumulate_512_avx2"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"XXH3_accumulate_512_avx2: argument 2"}
!104 = !{!100, !86, !82, !71}
!105 = !{!106, !103, !98, !89, !77, !80, !84, !74}
!106 = distinct !{!106, !101, !"XXH3_accumulate_512_avx2: argument 0"}
!107 = !{!103, !89, !84}
!108 = !{!106, !100, !98, !86, !77, !80, !82}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!91}
!112 = !{!94}
!113 = !{!94, !84}
!114 = !{!91, !77, !80, !82}
!115 = !{!116}
!116 = distinct !{!116, !117, !"XXH3_accumulate: argument 1"}
!117 = distinct !{!117, !"XXH3_accumulate"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"XXH3_accumulate: argument 2"}
!120 = !{!121, !119, !77, !80, !84}
!121 = distinct !{!121, !117, !"XXH3_accumulate: argument 0"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"XXH3_accumulate_512_avx2: argument 1"}
!124 = distinct !{!124, !"XXH3_accumulate_512_avx2"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"XXH3_accumulate_512_avx2: argument 2"}
!127 = !{!123, !116, !82, !71}
!128 = !{!129, !126, !121, !119, !77, !80, !84, !74}
!129 = distinct !{!129, !124, !"XXH3_accumulate_512_avx2: argument 0"}
!130 = !{!126, !119, !84}
!131 = !{!129, !123, !121, !116, !77, !80, !82}
!132 = !{!133}
!133 = distinct !{!133, !134, !"XXH3_accumulate: argument 0"}
!134 = distinct !{!134, !"XXH3_accumulate"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"XXH3_accumulate: argument 1"}
!137 = !{!138}
!138 = distinct !{!138, !134, !"XXH3_accumulate: argument 2"}
!139 = !{!140, !133, !77, !71}
!140 = distinct !{!140, !141, !"XXH3_accumulate_512_avx2: argument 0"}
!141 = distinct !{!141, !"XXH3_accumulate_512_avx2"}
!142 = !{!143, !144, !136, !138, !80, !82, !84, !74}
!143 = distinct !{!143, !141, !"XXH3_accumulate_512_avx2: argument 1"}
!144 = distinct !{!144, !141, !"XXH3_accumulate_512_avx2: argument 2"}
!145 = !{!133, !138, !77, !80, !84}
!146 = !{!140}
!147 = !{!143}
!148 = !{!144}
!149 = !{!143, !136, !82, !71}
!150 = !{!140, !144, !133, !138, !77, !80, !84, !74}
!151 = !{!144, !138, !84}
!152 = !{!140, !143, !133, !136, !77, !80, !82}
!153 = !{!154}
!154 = distinct !{!154, !141, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!155 = !{!156}
!156 = distinct !{!156, !141, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!157 = !{!154, !136, !82, !71}
!158 = !{!159, !156, !133, !138, !77, !80, !84, !74}
!159 = distinct !{!159, !141, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!160 = !{!156, !138, !84}
!161 = !{!159, !154, !133, !136, !77, !80, !82}
!162 = !{!163}
!163 = distinct !{!163, !141, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!164 = !{!165}
!165 = distinct !{!165, !141, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!166 = !{!163, !136, !82, !71}
!167 = !{!168, !165, !133, !138, !77, !80, !84, !74}
!168 = distinct !{!168, !141, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!169 = !{!165, !138, !84}
!170 = !{!168, !163, !133, !136, !77, !80, !82}
!171 = !{!172}
!172 = distinct !{!172, !141, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!173 = !{!174}
!174 = distinct !{!174, !141, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!175 = !{!172, !136, !82, !71}
!176 = !{!177, !174, !133, !138, !77, !80, !84, !74}
!177 = distinct !{!177, !141, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!178 = !{!174, !138, !84}
!179 = !{!177, !172, !133, !136, !77, !80, !82}
!180 = !{!80, !71}
!181 = !{!77, !82, !84, !74}
!182 = !{!183}
!183 = distinct !{!183, !72, !"XXH3_update: argument 0:thread"}
!184 = !{!185}
!185 = distinct !{!185, !72, !"XXH3_update: argument 1:thread"}
!186 = !{!187, !71}
!187 = distinct !{!187, !188, !"XXH3_consumeStripes: argument 1"}
!188 = distinct !{!188, !"XXH3_consumeStripes"}
!189 = !{!190, !191, !192, !74}
!190 = distinct !{!190, !188, !"XXH3_consumeStripes: argument 0"}
!191 = distinct !{!191, !188, !"XXH3_consumeStripes: argument 2"}
!192 = distinct !{!192, !188, !"XXH3_consumeStripes: argument 3"}
!193 = !{!190}
!194 = !{!187}
!195 = !{!191}
!196 = !{!192}
!197 = !{!198}
!198 = distinct !{!198, !199, !"XXH3_accumulate: argument 0"}
!199 = distinct !{!199, !"XXH3_accumulate"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"XXH3_accumulate: argument 1"}
!202 = !{!203}
!203 = distinct !{!203, !199, !"XXH3_accumulate: argument 2"}
!204 = !{!205, !71}
!205 = distinct !{!205, !206, !"XXH3_scrambleAcc_avx2: argument 0"}
!206 = distinct !{!206, !"XXH3_scrambleAcc_avx2"}
!207 = !{!208, !74}
!208 = distinct !{!208, !206, !"XXH3_scrambleAcc_avx2: argument 1"}
!209 = !{!198, !203}
!210 = !{!211}
!211 = distinct !{!211, !212, !"XXH3_accumulate_512_avx2: argument 0"}
!212 = distinct !{!212, !"XXH3_accumulate_512_avx2"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"XXH3_accumulate_512_avx2: argument 1"}
!215 = !{!216}
!216 = distinct !{!216, !212, !"XXH3_accumulate_512_avx2: argument 2"}
!217 = !{!214, !201, !74}
!218 = !{!211, !216, !198, !203, !71}
!219 = !{!216, !203}
!220 = !{!211, !214, !198, !201}
!221 = !{!211, !198, !71}
!222 = !{!214, !216, !201, !203, !74}
!223 = !{!205}
!224 = !{!208}
!225 = !{!226}
!226 = distinct !{!226, !227, !"XXH3_accumulate: argument 0"}
!227 = distinct !{!227, !"XXH3_accumulate"}
!228 = !{!229}
!229 = distinct !{!229, !227, !"XXH3_accumulate: argument 1"}
!230 = !{!231}
!231 = distinct !{!231, !227, !"XXH3_accumulate: argument 2"}
!232 = !{!226, !231}
!233 = !{!234}
!234 = distinct !{!234, !235, !"XXH3_accumulate_512_avx2: argument 0"}
!235 = distinct !{!235, !"XXH3_accumulate_512_avx2"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"XXH3_accumulate_512_avx2: argument 1"}
!238 = !{!239}
!239 = distinct !{!239, !235, !"XXH3_accumulate_512_avx2: argument 2"}
!240 = !{!237, !229, !74}
!241 = !{!234, !239, !226, !231, !71}
!242 = !{!239, !231}
!243 = !{!234, !237, !226, !229}
!244 = !{!234, !226, !71}
!245 = !{!237, !239, !229, !231, !74}
!246 = !{!247}
!247 = distinct !{!247, !248, !"XXH3_scrambleAcc_avx2: argument 0"}
!248 = distinct !{!248, !"XXH3_scrambleAcc_avx2"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"XXH3_scrambleAcc_avx2: argument 1"}
!251 = !{!247, !71}
!252 = !{!250, !74}
!253 = distinct !{!253, !110}
!254 = !{!255}
!255 = distinct !{!255, !256, !"XXH3_accumulate: argument 0"}
!256 = distinct !{!256, !"XXH3_accumulate"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"XXH3_accumulate: argument 1"}
!259 = !{!260}
!260 = distinct !{!260, !256, !"XXH3_accumulate: argument 2"}
!261 = !{!255, !260}
!262 = !{!263}
!263 = distinct !{!263, !264, !"XXH3_accumulate_512_avx2: argument 0"}
!264 = distinct !{!264, !"XXH3_accumulate_512_avx2"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"XXH3_accumulate_512_avx2: argument 1"}
!267 = !{!268}
!268 = distinct !{!268, !264, !"XXH3_accumulate_512_avx2: argument 2"}
!269 = !{!266, !258, !74}
!270 = !{!263, !268, !255, !260, !71}
!271 = !{!268, !260}
!272 = !{!263, !266, !255, !258}
!273 = !{!263, !255, !71}
!274 = !{!266, !268, !258, !260, !74}
!275 = !{!276}
!276 = distinct !{!276, !277, !"XXH3_accumulate: argument 1"}
!277 = distinct !{!277, !"XXH3_accumulate"}
!278 = !{!279}
!279 = distinct !{!279, !277, !"XXH3_accumulate: argument 2"}
!280 = !{!281, !279, !190, !187, !192}
!281 = distinct !{!281, !277, !"XXH3_accumulate: argument 0"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"XXH3_accumulate_512_avx2: argument 1"}
!284 = distinct !{!284, !"XXH3_accumulate_512_avx2"}
!285 = !{!286}
!286 = distinct !{!286, !284, !"XXH3_accumulate_512_avx2: argument 2"}
!287 = !{!283, !276, !191, !74}
!288 = !{!289, !286, !281, !279, !190, !187, !192, !71}
!289 = distinct !{!289, !284, !"XXH3_accumulate_512_avx2: argument 0"}
!290 = !{!286, !279, !192}
!291 = !{!289, !283, !281, !276, !190, !187, !191}
!292 = !{!293}
!293 = distinct !{!293, !294, !"XXH3_scrambleAcc_avx2: argument 0"}
!294 = distinct !{!294, !"XXH3_scrambleAcc_avx2"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"XXH3_scrambleAcc_avx2: argument 1"}
!297 = !{!296, !192}
!298 = !{!293, !190, !187, !191}
!299 = !{!293, !190, !71}
!300 = !{!296, !187, !191, !192, !74}
!301 = !{!302}
!302 = distinct !{!302, !303, !"XXH3_accumulate: argument 0"}
!303 = distinct !{!303, !"XXH3_accumulate"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"XXH3_accumulate: argument 1"}
!306 = !{!307}
!307 = distinct !{!307, !303, !"XXH3_accumulate: argument 2"}
!308 = !{!302, !307, !190, !187, !192}
!309 = !{!310}
!310 = distinct !{!310, !311, !"XXH3_accumulate_512_avx2: argument 0"}
!311 = distinct !{!311, !"XXH3_accumulate_512_avx2"}
!312 = !{!313}
!313 = distinct !{!313, !311, !"XXH3_accumulate_512_avx2: argument 1"}
!314 = !{!315}
!315 = distinct !{!315, !311, !"XXH3_accumulate_512_avx2: argument 2"}
!316 = !{!313, !305, !191, !74}
!317 = !{!310, !315, !302, !307, !190, !187, !192, !71}
!318 = !{!315, !307, !192}
!319 = !{!310, !313, !302, !305, !190, !187, !191}
!320 = !{!310, !302, !190, !71}
!321 = !{!313, !315, !305, !307, !187, !191, !192, !74}
!322 = !{!323}
!323 = distinct !{!323, !324, !"XXH3_accumulate: argument 0"}
!324 = distinct !{!324, !"XXH3_accumulate"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"XXH3_accumulate: argument 1"}
!327 = !{!328}
!328 = distinct !{!328, !324, !"XXH3_accumulate: argument 2"}
!329 = !{!323, !328, !190, !187, !192}
!330 = !{!331}
!331 = distinct !{!331, !332, !"XXH3_accumulate_512_avx2: argument 0"}
!332 = distinct !{!332, !"XXH3_accumulate_512_avx2"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"XXH3_accumulate_512_avx2: argument 1"}
!335 = !{!336}
!336 = distinct !{!336, !332, !"XXH3_accumulate_512_avx2: argument 2"}
!337 = !{!334, !326, !191, !74}
!338 = !{!331, !336, !323, !328, !190, !187, !192, !71}
!339 = !{!336, !328, !192}
!340 = !{!331, !334, !323, !326, !190, !187, !191}
!341 = !{!342}
!342 = distinct !{!342, !332, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!343 = !{!344}
!344 = distinct !{!344, !332, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!345 = !{!342, !326, !191, !74}
!346 = !{!347, !344, !323, !328, !190, !187, !192, !71}
!347 = distinct !{!347, !332, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!348 = !{!344, !328, !192}
!349 = !{!347, !342, !323, !326, !190, !187, !191}
!350 = !{!351}
!351 = distinct !{!351, !332, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!352 = !{!353}
!353 = distinct !{!353, !332, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!354 = !{!351, !326, !191, !74}
!355 = !{!356, !353, !323, !328, !190, !187, !192, !71}
!356 = distinct !{!356, !332, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!357 = !{!353, !328, !192}
!358 = !{!356, !351, !323, !326, !190, !187, !191}
!359 = !{!360}
!360 = distinct !{!360, !332, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!361 = !{!362}
!362 = distinct !{!362, !332, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!363 = !{!360, !326, !191, !74}
!364 = !{!365, !362, !323, !328, !190, !187, !192, !71}
!365 = distinct !{!365, !332, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!366 = !{!362, !328, !192}
!367 = !{!365, !360, !323, !326, !190, !187, !191}
!368 = !{!331, !323, !190, !71}
!369 = !{!334, !336, !326, !328, !187, !191, !192, !74}
!370 = !{!371}
!371 = distinct !{!371, !372, !"XXH3_consumeStripes: argument 2"}
!372 = distinct !{!372, !"XXH3_consumeStripes"}
!373 = !{!374}
!374 = distinct !{!374, !372, !"XXH3_consumeStripes: argument 3"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"XXH3_accumulate: argument 1"}
!377 = distinct !{!377, !"XXH3_accumulate"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"XXH3_accumulate: argument 2"}
!380 = !{!381, !379, !382, !383, !374}
!381 = distinct !{!381, !377, !"XXH3_accumulate: argument 0"}
!382 = distinct !{!382, !372, !"XXH3_consumeStripes: argument 0"}
!383 = distinct !{!383, !372, !"XXH3_consumeStripes: argument 1"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"XXH3_accumulate_512_avx2: argument 1"}
!386 = distinct !{!386, !"XXH3_accumulate_512_avx2"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"XXH3_accumulate_512_avx2: argument 2"}
!389 = !{!385, !376, !371}
!390 = !{!391, !388, !381, !379, !382, !383, !374}
!391 = distinct !{!391, !386, !"XXH3_accumulate_512_avx2: argument 0"}
!392 = !{!388, !379, !374}
!393 = !{!391, !385, !381, !376, !382, !383, !371}
!394 = !{!395, !374}
!395 = distinct !{!395, !396, !"XXH3_scrambleAcc_avx2: argument 1"}
!396 = distinct !{!396, !"XXH3_scrambleAcc_avx2"}
!397 = !{!398, !382, !383, !371}
!398 = distinct !{!398, !396, !"XXH3_scrambleAcc_avx2: argument 0"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"XXH3_accumulate: argument 1"}
!401 = distinct !{!401, !"XXH3_accumulate"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"XXH3_accumulate: argument 2"}
!404 = !{!405, !403, !382, !383, !374}
!405 = distinct !{!405, !401, !"XXH3_accumulate: argument 0"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"XXH3_accumulate_512_avx2: argument 1"}
!408 = distinct !{!408, !"XXH3_accumulate_512_avx2"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"XXH3_accumulate_512_avx2: argument 2"}
!411 = !{!407, !400, !371}
!412 = !{!413, !410, !405, !403, !382, !383, !374}
!413 = distinct !{!413, !408, !"XXH3_accumulate_512_avx2: argument 0"}
!414 = !{!410, !403, !374}
!415 = !{!413, !407, !405, !400, !382, !383, !371}
!416 = !{!417}
!417 = distinct !{!417, !418, !"XXH3_accumulate: argument 1"}
!418 = distinct !{!418, !"XXH3_accumulate"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"XXH3_accumulate: argument 2"}
!421 = !{!422, !420, !382, !383, !374}
!422 = distinct !{!422, !418, !"XXH3_accumulate: argument 0"}
!423 = !{!424}
!424 = distinct !{!424, !425, !"XXH3_accumulate_512_avx2: argument 1"}
!425 = distinct !{!425, !"XXH3_accumulate_512_avx2"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"XXH3_accumulate_512_avx2: argument 2"}
!428 = !{!424, !417, !371}
!429 = !{!430, !427, !422, !420, !382, !383, !374}
!430 = distinct !{!430, !425, !"XXH3_accumulate_512_avx2: argument 0"}
!431 = !{!427, !420, !374}
!432 = !{!430, !424, !422, !417, !382, !383, !371}
!433 = !{!434}
!434 = distinct !{!434, !435, !"XXH3_accumulate_512_avx2: argument 1"}
!435 = distinct !{!435, !"XXH3_accumulate_512_avx2"}
!436 = !{!437}
!437 = distinct !{!437, !435, !"XXH3_accumulate_512_avx2: argument 2"}
!438 = !{!439, !437}
!439 = distinct !{!439, !435, !"XXH3_accumulate_512_avx2: argument 0"}
!440 = !{!439, !434}
!441 = !{!442}
!442 = distinct !{!442, !443, !"XXH3_accumulate_512_avx2: argument 1"}
!443 = distinct !{!443, !"XXH3_accumulate_512_avx2"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"XXH3_accumulate_512_avx2: argument 2"}
!446 = !{!447, !445}
!447 = distinct !{!447, !443, !"XXH3_accumulate_512_avx2: argument 0"}
!448 = !{!447, !442}
!449 = !{!450}
!450 = distinct !{!450, !451, !"XXH3_mergeAccs: argument 1"}
!451 = distinct !{!451, !"XXH3_mergeAccs"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"XXH3_mergeAccs: argument 0"}
