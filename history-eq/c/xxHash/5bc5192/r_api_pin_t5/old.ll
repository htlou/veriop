; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c"
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
  br i1 %6, label %963, label %7

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
  br i1 %19, label %21, label %33

21:                                               ; preds = %7
  store i64 400, ptr %20, align 16
  %22 = load <4 x i64>, ptr %4, align 64
  %23 = load <4 x i64>, ptr %12, align 32
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %25 = load i64, ptr %18, align 8
  %26 = load i64, ptr %17, align 32
  %27 = load i64, ptr %24, align 8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %26
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %31 = sub i64 %25, %27
  %32 = icmp ugt i64 %31, 4
  br i1 %32, label %527, label %419

33:                                               ; preds = %7
  store i64 300, ptr %20, align 16
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %35 = load <4 x i64>, ptr %4, align 64
  %36 = load <4 x i64>, ptr %12, align 32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %37, i32 0, i32 3, i32 1)
  %38 = load <4 x i64>, ptr %0, align 1
  %39 = load <4 x i64>, ptr %1, align 1
  %40 = xor <4 x i64> %39, %38
  %41 = bitcast <4 x i64> %40 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = and <4 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %44
  %47 = shufflevector <4 x i64> %38, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %48 = add <4 x i64> %35, %47
  %49 = add <4 x i64> %48, %46
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load <4 x i64>, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %53 = load <4 x i64>, ptr %52, align 1
  %54 = xor <4 x i64> %53, %51
  %55 = bitcast <4 x i64> %54 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = and <4 x i64> %54, splat (i64 4294967295)
  %59 = and <4 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <4 x i64> %59, %58
  %61 = shufflevector <4 x i64> %51, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %62 = add <4 x i64> %36, %61
  %63 = add <4 x i64> %62, %60
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %65, i32 0, i32 3, i32 1)
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %67 = load <4 x i64>, ptr %64, align 1
  %68 = load <4 x i64>, ptr %66, align 1
  %69 = xor <4 x i64> %68, %67
  %70 = bitcast <4 x i64> %69 to <8 x i32>
  %71 = shufflevector <8 x i32> %70, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %72 = bitcast <8 x i32> %71 to <4 x i64>
  %73 = and <4 x i64> %69, splat (i64 4294967295)
  %74 = and <4 x i64> %72, splat (i64 4294967295)
  %75 = mul nuw <4 x i64> %74, %73
  %76 = shufflevector <4 x i64> %67, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %77 = add <4 x i64> %49, %76
  %78 = add <4 x i64> %77, %75
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %80 = load <4 x i64>, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %82 = load <4 x i64>, ptr %81, align 1
  %83 = xor <4 x i64> %82, %80
  %84 = bitcast <4 x i64> %83 to <8 x i32>
  %85 = shufflevector <8 x i32> %84, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %86 = bitcast <8 x i32> %85 to <4 x i64>
  %87 = and <4 x i64> %83, splat (i64 4294967295)
  %88 = and <4 x i64> %86, splat (i64 4294967295)
  %89 = mul nuw <4 x i64> %88, %87
  %90 = shufflevector <4 x i64> %80, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %91 = add <4 x i64> %63, %90
  %92 = add <4 x i64> %91, %89
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %94, i32 0, i32 3, i32 1)
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %96 = load <4 x i64>, ptr %93, align 1
  %97 = load <4 x i64>, ptr %95, align 1
  %98 = xor <4 x i64> %97, %96
  %99 = bitcast <4 x i64> %98 to <8 x i32>
  %100 = shufflevector <8 x i32> %99, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %101 = bitcast <8 x i32> %100 to <4 x i64>
  %102 = and <4 x i64> %98, splat (i64 4294967295)
  %103 = and <4 x i64> %101, splat (i64 4294967295)
  %104 = mul nuw <4 x i64> %103, %102
  %105 = shufflevector <4 x i64> %96, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %106 = add <4 x i64> %78, %105
  %107 = add <4 x i64> %106, %104
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %109 = load <4 x i64>, ptr %108, align 1
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %111 = load <4 x i64>, ptr %110, align 1
  %112 = xor <4 x i64> %111, %109
  %113 = bitcast <4 x i64> %112 to <8 x i32>
  %114 = shufflevector <8 x i32> %113, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %115 = bitcast <8 x i32> %114 to <4 x i64>
  %116 = and <4 x i64> %112, splat (i64 4294967295)
  %117 = and <4 x i64> %115, splat (i64 4294967295)
  %118 = mul nuw <4 x i64> %117, %116
  %119 = shufflevector <4 x i64> %109, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %120 = add <4 x i64> %92, %119
  %121 = add <4 x i64> %120, %118
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %123, i32 0, i32 3, i32 1)
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %125 = load <4 x i64>, ptr %122, align 1
  %126 = load <4 x i64>, ptr %124, align 1
  %127 = xor <4 x i64> %126, %125
  %128 = bitcast <4 x i64> %127 to <8 x i32>
  %129 = shufflevector <8 x i32> %128, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %130 = bitcast <8 x i32> %129 to <4 x i64>
  %131 = and <4 x i64> %127, splat (i64 4294967295)
  %132 = and <4 x i64> %130, splat (i64 4294967295)
  %133 = mul nuw <4 x i64> %132, %131
  %134 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = add <4 x i64> %107, %134
  %136 = add <4 x i64> %135, %133
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %138 = load <4 x i64>, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %140 = load <4 x i64>, ptr %139, align 1
  %141 = xor <4 x i64> %140, %138
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %138, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %121, %148
  %150 = add <4 x i64> %149, %147
  store <4 x i64> %136, ptr %4, align 64
  store <4 x i64> %150, ptr %12, align 32
  store i64 4, ptr %34, align 8
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %151, ptr noundef nonnull readonly align 1 dereferenceable(64) %152, i64 64, i1 false)
  %153 = getelementptr i8, ptr %0, i64 256
  %154 = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %154, ptr noundef nonnull readonly align 1 dereferenceable(44) %153, i64 44, i1 false)
  store i32 44, ptr %8, align 64
  %155 = load ptr, ptr %16, align 8
  %156 = icmp eq ptr %155, null
  %157 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %158 = select i1 %156, ptr %157, ptr %155
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 528
  store i64 700, ptr %159, align 16
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %161 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %162 = getelementptr inbounds nuw i8, ptr %4, i64 300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %162, ptr noundef nonnull readonly align 1 dereferenceable(212) %160, i64 212, i1 false)
  %163 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %164 = load i64, ptr %18, align 8
  %165 = load i64, ptr %17, align 32
  %166 = add i64 %164, -4
  %167 = icmp ugt i64 %166, 4
  br i1 %167, label %281, label %168

168:                                              ; preds = %33
  %169 = sub nsw i64 8, %164
  %170 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %171 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %172 = select i1 %156, ptr %170, ptr %171
  %173 = icmp eq i64 %164, 4
  %174 = load <4 x i64>, ptr %4, align 64
  %175 = load <4 x i64>, ptr %12, align 32
  br i1 %173, label %213, label %176

176:                                              ; preds = %168, %176
  %177 = phi <4 x i64> [ %210, %176 ], [ %175, %168 ]
  %178 = phi <4 x i64> [ %196, %176 ], [ %174, %168 ]
  %179 = phi i64 [ %211, %176 ], [ 0, %168 ]
  %180 = shl i64 %179, 6
  %181 = getelementptr inbounds nuw i8, ptr %161, i64 %180
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %182, i32 0, i32 3, i32 1)
  %183 = shl i64 %179, 3
  %184 = getelementptr inbounds nuw i8, ptr %172, i64 %183
  %185 = load <4 x i64>, ptr %181, align 64
  %186 = load <4 x i64>, ptr %184, align 1
  %187 = xor <4 x i64> %186, %185
  %188 = bitcast <4 x i64> %187 to <8 x i32>
  %189 = shufflevector <8 x i32> %188, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %190 = bitcast <8 x i32> %189 to <4 x i64>
  %191 = and <4 x i64> %187, splat (i64 4294967295)
  %192 = and <4 x i64> %190, splat (i64 4294967295)
  %193 = mul nuw <4 x i64> %192, %191
  %194 = shufflevector <4 x i64> %185, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %195 = add <4 x i64> %178, %194
  %196 = add <4 x i64> %195, %193
  %197 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %198 = load <4 x i64>, ptr %197, align 32
  %199 = getelementptr inbounds nuw i8, ptr %184, i64 32
  %200 = load <4 x i64>, ptr %199, align 1
  %201 = xor <4 x i64> %200, %198
  %202 = bitcast <4 x i64> %201 to <8 x i32>
  %203 = shufflevector <8 x i32> %202, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %204 = bitcast <8 x i32> %203 to <4 x i64>
  %205 = and <4 x i64> %201, splat (i64 4294967295)
  %206 = and <4 x i64> %204, splat (i64 4294967295)
  %207 = mul nuw <4 x i64> %206, %205
  %208 = shufflevector <4 x i64> %198, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %209 = add <4 x i64> %177, %208
  %210 = add <4 x i64> %209, %207
  %211 = add nuw i64 %179, 1
  %212 = icmp eq i64 %211, %166
  br i1 %212, label %213, label %176

213:                                              ; preds = %176, %168
  %214 = phi <4 x i64> [ %175, %168 ], [ %210, %176 ]
  %215 = phi <4 x i64> [ %174, %168 ], [ %196, %176 ]
  %216 = getelementptr inbounds nuw i8, ptr %158, i64 %165
  %217 = lshr <4 x i64> %215, splat (i64 47)
  %218 = load <4 x i64>, ptr %216, align 1
  %219 = xor <4 x i64> %217, %218
  %220 = xor <4 x i64> %219, %215
  %221 = bitcast <4 x i64> %220 to <8 x i32>
  %222 = shufflevector <8 x i32> %221, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %223 = bitcast <8 x i32> %222 to <4 x i64>
  %224 = and <4 x i64> %220, splat (i64 4294967295)
  %225 = mul nuw <4 x i64> %224, splat (i64 2654435761)
  %226 = mul <4 x i64> %223, splat (i64 -7046029290881679360)
  %227 = add <4 x i64> %226, %225
  store <4 x i64> %227, ptr %4, align 64
  %228 = lshr <4 x i64> %214, splat (i64 47)
  %229 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %230 = load <4 x i64>, ptr %229, align 1
  %231 = xor <4 x i64> %228, %230
  %232 = xor <4 x i64> %231, %214
  %233 = bitcast <4 x i64> %232 to <8 x i32>
  %234 = shufflevector <8 x i32> %233, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %235 = bitcast <8 x i32> %234 to <4 x i64>
  %236 = and <4 x i64> %232, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, splat (i64 2654435761)
  %238 = mul <4 x i64> %235, splat (i64 -7046029290881679360)
  %239 = add <4 x i64> %238, %237
  store <4 x i64> %239, ptr %12, align 32
  %240 = shl nuw nsw i64 %166, 6
  %241 = getelementptr inbounds nuw i8, ptr %161, i64 %240
  %242 = icmp eq i64 %166, 4
  br i1 %242, label %415, label %243

243:                                              ; preds = %213, %243
  %244 = phi <4 x i64> [ %277, %243 ], [ %239, %213 ]
  %245 = phi <4 x i64> [ %263, %243 ], [ %227, %213 ]
  %246 = phi i64 [ %278, %243 ], [ 0, %213 ]
  %247 = shl i64 %246, 6
  %248 = getelementptr inbounds nuw i8, ptr %241, i64 %247
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %249, i32 0, i32 3, i32 1)
  %250 = shl i64 %246, 3
  %251 = getelementptr inbounds nuw i8, ptr %158, i64 %250
  %252 = load <4 x i64>, ptr %248, align 64
  %253 = load <4 x i64>, ptr %251, align 1
  %254 = xor <4 x i64> %253, %252
  %255 = bitcast <4 x i64> %254 to <8 x i32>
  %256 = shufflevector <8 x i32> %255, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %257 = bitcast <8 x i32> %256 to <4 x i64>
  %258 = and <4 x i64> %254, splat (i64 4294967295)
  %259 = and <4 x i64> %257, splat (i64 4294967295)
  %260 = mul nuw <4 x i64> %259, %258
  %261 = shufflevector <4 x i64> %252, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %262 = add <4 x i64> %245, %261
  %263 = add <4 x i64> %262, %260
  %264 = getelementptr inbounds nuw i8, ptr %248, i64 32
  %265 = load <4 x i64>, ptr %264, align 32
  %266 = getelementptr inbounds nuw i8, ptr %251, i64 32
  %267 = load <4 x i64>, ptr %266, align 1
  %268 = xor <4 x i64> %267, %265
  %269 = bitcast <4 x i64> %268 to <8 x i32>
  %270 = shufflevector <8 x i32> %269, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %271 = bitcast <8 x i32> %270 to <4 x i64>
  %272 = and <4 x i64> %268, splat (i64 4294967295)
  %273 = and <4 x i64> %271, splat (i64 4294967295)
  %274 = mul nuw <4 x i64> %273, %272
  %275 = shufflevector <4 x i64> %265, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %276 = add <4 x i64> %244, %275
  %277 = add <4 x i64> %276, %274
  %278 = add nuw i64 %246, 1
  %279 = icmp eq i64 %278, %169
  br i1 %279, label %280, label %243

280:                                              ; preds = %243
  store <4 x i64> %263, ptr %4, align 64
  store <4 x i64> %277, ptr %12, align 32
  br label %415

281:                                              ; preds = %33
  %282 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %283 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %284 = select i1 %156, ptr %282, ptr %283
  %285 = load <4 x i64>, ptr %4, align 64
  %286 = load <4 x i64>, ptr %12, align 32
  %287 = getelementptr inbounds nuw i8, ptr %4, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %287, i32 0, i32 3, i32 1)
  %288 = load <4 x i64>, ptr %161, align 64
  %289 = load <4 x i64>, ptr %284, align 1
  %290 = xor <4 x i64> %289, %288
  %291 = bitcast <4 x i64> %290 to <8 x i32>
  %292 = shufflevector <8 x i32> %291, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %293 = bitcast <8 x i32> %292 to <4 x i64>
  %294 = and <4 x i64> %290, splat (i64 4294967295)
  %295 = and <4 x i64> %293, splat (i64 4294967295)
  %296 = mul nuw <4 x i64> %295, %294
  %297 = shufflevector <4 x i64> %288, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %298 = add <4 x i64> %285, %297
  %299 = add <4 x i64> %298, %296
  %300 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %301 = load <4 x i64>, ptr %300, align 32
  %302 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %303 = getelementptr inbounds nuw i8, ptr %155, i64 64
  %304 = select i1 %156, ptr %302, ptr %303
  %305 = load <4 x i64>, ptr %304, align 1
  %306 = xor <4 x i64> %305, %301
  %307 = bitcast <4 x i64> %306 to <8 x i32>
  %308 = shufflevector <8 x i32> %307, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %309 = bitcast <8 x i32> %308 to <4 x i64>
  %310 = and <4 x i64> %306, splat (i64 4294967295)
  %311 = and <4 x i64> %309, splat (i64 4294967295)
  %312 = mul nuw <4 x i64> %311, %310
  %313 = shufflevector <4 x i64> %301, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %314 = add <4 x i64> %286, %313
  %315 = add <4 x i64> %314, %312
  %316 = getelementptr inbounds nuw i8, ptr %4, i64 320
  %317 = getelementptr inbounds nuw i8, ptr %4, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %317, i32 0, i32 3, i32 1)
  %318 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %319 = getelementptr inbounds nuw i8, ptr %155, i64 40
  %320 = select i1 %156, ptr %318, ptr %319
  %321 = load <4 x i64>, ptr %316, align 64
  %322 = load <4 x i64>, ptr %320, align 1
  %323 = xor <4 x i64> %322, %321
  %324 = bitcast <4 x i64> %323 to <8 x i32>
  %325 = shufflevector <8 x i32> %324, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %326 = bitcast <8 x i32> %325 to <4 x i64>
  %327 = and <4 x i64> %323, splat (i64 4294967295)
  %328 = and <4 x i64> %326, splat (i64 4294967295)
  %329 = mul nuw <4 x i64> %328, %327
  %330 = shufflevector <4 x i64> %321, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %331 = add <4 x i64> %299, %330
  %332 = add <4 x i64> %331, %329
  %333 = getelementptr inbounds nuw i8, ptr %4, i64 352
  %334 = load <4 x i64>, ptr %333, align 32
  %335 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %336 = getelementptr inbounds nuw i8, ptr %155, i64 72
  %337 = select i1 %156, ptr %335, ptr %336
  %338 = load <4 x i64>, ptr %337, align 1
  %339 = xor <4 x i64> %338, %334
  %340 = bitcast <4 x i64> %339 to <8 x i32>
  %341 = shufflevector <8 x i32> %340, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %342 = bitcast <8 x i32> %341 to <4 x i64>
  %343 = and <4 x i64> %339, splat (i64 4294967295)
  %344 = and <4 x i64> %342, splat (i64 4294967295)
  %345 = mul nuw <4 x i64> %344, %343
  %346 = shufflevector <4 x i64> %334, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %347 = add <4 x i64> %315, %346
  %348 = add <4 x i64> %347, %345
  %349 = getelementptr inbounds nuw i8, ptr %4, i64 384
  %350 = getelementptr inbounds nuw i8, ptr %4, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %350, i32 0, i32 3, i32 1)
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %352 = getelementptr inbounds nuw i8, ptr %155, i64 48
  %353 = select i1 %156, ptr %351, ptr %352
  %354 = load <4 x i64>, ptr %349, align 64
  %355 = load <4 x i64>, ptr %353, align 1
  %356 = xor <4 x i64> %355, %354
  %357 = bitcast <4 x i64> %356 to <8 x i32>
  %358 = shufflevector <8 x i32> %357, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %359 = bitcast <8 x i32> %358 to <4 x i64>
  %360 = and <4 x i64> %356, splat (i64 4294967295)
  %361 = and <4 x i64> %359, splat (i64 4294967295)
  %362 = mul nuw <4 x i64> %361, %360
  %363 = shufflevector <4 x i64> %354, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %364 = add <4 x i64> %332, %363
  %365 = add <4 x i64> %364, %362
  %366 = getelementptr inbounds nuw i8, ptr %4, i64 416
  %367 = load <4 x i64>, ptr %366, align 32
  %368 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %369 = getelementptr inbounds nuw i8, ptr %155, i64 80
  %370 = select i1 %156, ptr %368, ptr %369
  %371 = load <4 x i64>, ptr %370, align 1
  %372 = xor <4 x i64> %371, %367
  %373 = bitcast <4 x i64> %372 to <8 x i32>
  %374 = shufflevector <8 x i32> %373, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %375 = bitcast <8 x i32> %374 to <4 x i64>
  %376 = and <4 x i64> %372, splat (i64 4294967295)
  %377 = and <4 x i64> %375, splat (i64 4294967295)
  %378 = mul nuw <4 x i64> %377, %376
  %379 = shufflevector <4 x i64> %367, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %380 = add <4 x i64> %348, %379
  %381 = add <4 x i64> %380, %378
  %382 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %383 = getelementptr inbounds nuw i8, ptr %4, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %383, i32 0, i32 3, i32 1)
  %384 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %385 = getelementptr inbounds nuw i8, ptr %155, i64 56
  %386 = select i1 %156, ptr %384, ptr %385
  %387 = load <4 x i64>, ptr %382, align 64
  %388 = load <4 x i64>, ptr %386, align 1
  %389 = xor <4 x i64> %388, %387
  %390 = bitcast <4 x i64> %389 to <8 x i32>
  %391 = shufflevector <8 x i32> %390, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %392 = bitcast <8 x i32> %391 to <4 x i64>
  %393 = and <4 x i64> %389, splat (i64 4294967295)
  %394 = and <4 x i64> %392, splat (i64 4294967295)
  %395 = mul nuw <4 x i64> %394, %393
  %396 = shufflevector <4 x i64> %387, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %397 = add <4 x i64> %365, %396
  %398 = add <4 x i64> %397, %395
  %399 = getelementptr inbounds nuw i8, ptr %4, i64 480
  %400 = load <4 x i64>, ptr %399, align 32
  %401 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %402 = getelementptr inbounds nuw i8, ptr %155, i64 88
  %403 = select i1 %156, ptr %401, ptr %402
  %404 = load <4 x i64>, ptr %403, align 1
  %405 = xor <4 x i64> %404, %400
  %406 = bitcast <4 x i64> %405 to <8 x i32>
  %407 = shufflevector <8 x i32> %406, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %408 = bitcast <8 x i32> %407 to <4 x i64>
  %409 = and <4 x i64> %405, splat (i64 4294967295)
  %410 = and <4 x i64> %408, splat (i64 4294967295)
  %411 = mul nuw <4 x i64> %410, %409
  %412 = shufflevector <4 x i64> %400, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %413 = add <4 x i64> %381, %412
  %414 = add <4 x i64> %413, %411
  store <4 x i64> %398, ptr %4, align 64
  store <4 x i64> %414, ptr %12, align 32
  store i64 8, ptr %163, align 8
  br label %651

415:                                              ; preds = %213, %280
  %416 = phi <4 x i64> [ %239, %213 ], [ %277, %280 ]
  %417 = phi <4 x i64> [ %227, %213 ], [ %263, %280 ]
  %418 = phi i64 [ 0, %213 ], [ %169, %280 ]
  store i64 %418, ptr %163, align 8
  store i32 0, ptr %8, align 64
  br label %651

419:                                              ; preds = %21
  %420 = sub nuw nsw i64 4, %31
  %421 = shl i64 %27, 3
  %422 = getelementptr inbounds nuw i8, ptr %1, i64 %421
  %423 = icmp eq i64 %25, %27
  br i1 %423, label %461, label %424

424:                                              ; preds = %419, %424
  %425 = phi <4 x i64> [ %458, %424 ], [ %23, %419 ]
  %426 = phi <4 x i64> [ %444, %424 ], [ %22, %419 ]
  %427 = phi i64 [ %459, %424 ], [ 0, %419 ]
  %428 = shl i64 %427, 6
  %429 = getelementptr inbounds nuw i8, ptr %30, i64 %428
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %430, i32 0, i32 3, i32 1)
  %431 = shl i64 %427, 3
  %432 = getelementptr inbounds nuw i8, ptr %422, i64 %431
  %433 = load <4 x i64>, ptr %429, align 1
  %434 = load <4 x i64>, ptr %432, align 1
  %435 = xor <4 x i64> %434, %433
  %436 = bitcast <4 x i64> %435 to <8 x i32>
  %437 = shufflevector <8 x i32> %436, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %438 = bitcast <8 x i32> %437 to <4 x i64>
  %439 = and <4 x i64> %435, splat (i64 4294967295)
  %440 = and <4 x i64> %438, splat (i64 4294967295)
  %441 = mul nuw <4 x i64> %440, %439
  %442 = shufflevector <4 x i64> %433, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %443 = add <4 x i64> %426, %442
  %444 = add <4 x i64> %443, %441
  %445 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %446 = load <4 x i64>, ptr %445, align 1
  %447 = getelementptr inbounds nuw i8, ptr %432, i64 32
  %448 = load <4 x i64>, ptr %447, align 1
  %449 = xor <4 x i64> %448, %446
  %450 = bitcast <4 x i64> %449 to <8 x i32>
  %451 = shufflevector <8 x i32> %450, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %452 = bitcast <8 x i32> %451 to <4 x i64>
  %453 = and <4 x i64> %449, splat (i64 4294967295)
  %454 = and <4 x i64> %452, splat (i64 4294967295)
  %455 = mul nuw <4 x i64> %454, %453
  %456 = shufflevector <4 x i64> %446, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %457 = add <4 x i64> %425, %456
  %458 = add <4 x i64> %457, %455
  %459 = add nuw i64 %427, 1
  %460 = icmp eq i64 %459, %31
  br i1 %460, label %461, label %424

461:                                              ; preds = %424, %419
  %462 = phi <4 x i64> [ %23, %419 ], [ %458, %424 ]
  %463 = phi <4 x i64> [ %22, %419 ], [ %444, %424 ]
  %464 = lshr <4 x i64> %463, splat (i64 47)
  %465 = load <4 x i64>, ptr %28, align 1
  %466 = xor <4 x i64> %464, %465
  %467 = xor <4 x i64> %466, %463
  %468 = bitcast <4 x i64> %467 to <8 x i32>
  %469 = shufflevector <8 x i32> %468, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %470 = bitcast <8 x i32> %469 to <4 x i64>
  %471 = and <4 x i64> %467, splat (i64 4294967295)
  %472 = mul nuw <4 x i64> %471, splat (i64 2654435761)
  %473 = mul <4 x i64> %470, splat (i64 -7046029290881679360)
  %474 = add <4 x i64> %473, %472
  store <4 x i64> %474, ptr %4, align 64
  %475 = lshr <4 x i64> %462, splat (i64 47)
  %476 = load <4 x i64>, ptr %29, align 1
  %477 = xor <4 x i64> %475, %476
  %478 = xor <4 x i64> %477, %462
  %479 = bitcast <4 x i64> %478 to <8 x i32>
  %480 = shufflevector <8 x i32> %479, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %481 = bitcast <8 x i32> %480 to <4 x i64>
  %482 = and <4 x i64> %478, splat (i64 4294967295)
  %483 = mul nuw <4 x i64> %482, splat (i64 2654435761)
  %484 = mul <4 x i64> %481, splat (i64 -7046029290881679360)
  %485 = add <4 x i64> %484, %483
  store <4 x i64> %485, ptr %12, align 32
  %486 = shl nuw nsw i64 %31, 6
  %487 = getelementptr inbounds nuw i8, ptr %30, i64 %486
  %488 = icmp eq i64 %31, 4
  br i1 %488, label %645, label %489

489:                                              ; preds = %461, %489
  %490 = phi <4 x i64> [ %523, %489 ], [ %485, %461 ]
  %491 = phi <4 x i64> [ %509, %489 ], [ %474, %461 ]
  %492 = phi i64 [ %524, %489 ], [ 0, %461 ]
  %493 = shl i64 %492, 6
  %494 = getelementptr inbounds nuw i8, ptr %487, i64 %493
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %495, i32 0, i32 3, i32 1)
  %496 = shl i64 %492, 3
  %497 = getelementptr inbounds nuw i8, ptr %1, i64 %496
  %498 = load <4 x i64>, ptr %494, align 1
  %499 = load <4 x i64>, ptr %497, align 1
  %500 = xor <4 x i64> %499, %498
  %501 = bitcast <4 x i64> %500 to <8 x i32>
  %502 = shufflevector <8 x i32> %501, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %503 = bitcast <8 x i32> %502 to <4 x i64>
  %504 = and <4 x i64> %500, splat (i64 4294967295)
  %505 = and <4 x i64> %503, splat (i64 4294967295)
  %506 = mul nuw <4 x i64> %505, %504
  %507 = shufflevector <4 x i64> %498, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %508 = add <4 x i64> %491, %507
  %509 = add <4 x i64> %508, %506
  %510 = getelementptr inbounds nuw i8, ptr %494, i64 32
  %511 = load <4 x i64>, ptr %510, align 1
  %512 = getelementptr inbounds nuw i8, ptr %497, i64 32
  %513 = load <4 x i64>, ptr %512, align 1
  %514 = xor <4 x i64> %513, %511
  %515 = bitcast <4 x i64> %514 to <8 x i32>
  %516 = shufflevector <8 x i32> %515, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %517 = bitcast <8 x i32> %516 to <4 x i64>
  %518 = and <4 x i64> %514, splat (i64 4294967295)
  %519 = and <4 x i64> %517, splat (i64 4294967295)
  %520 = mul nuw <4 x i64> %519, %518
  %521 = shufflevector <4 x i64> %511, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %522 = add <4 x i64> %490, %521
  %523 = add <4 x i64> %522, %520
  %524 = add nuw i64 %492, 1
  %525 = icmp eq i64 %524, %420
  br i1 %525, label %526, label %489

526:                                              ; preds = %489
  store <4 x i64> %509, ptr %4, align 64
  store <4 x i64> %523, ptr %12, align 32
  br label %645

527:                                              ; preds = %21
  %528 = shl i64 %27, 3
  %529 = getelementptr inbounds nuw i8, ptr %1, i64 %528
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 620
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %530, i32 0, i32 3, i32 1)
  %531 = load <4 x i64>, ptr %30, align 1
  %532 = load <4 x i64>, ptr %529, align 1
  %533 = xor <4 x i64> %532, %531
  %534 = bitcast <4 x i64> %533 to <8 x i32>
  %535 = shufflevector <8 x i32> %534, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %536 = bitcast <8 x i32> %535 to <4 x i64>
  %537 = and <4 x i64> %533, splat (i64 4294967295)
  %538 = and <4 x i64> %536, splat (i64 4294967295)
  %539 = mul nuw <4 x i64> %538, %537
  %540 = shufflevector <4 x i64> %531, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %541 = add <4 x i64> %22, %540
  %542 = add <4 x i64> %541, %539
  %543 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %544 = load <4 x i64>, ptr %543, align 1
  %545 = getelementptr inbounds nuw i8, ptr %529, i64 32
  %546 = load <4 x i64>, ptr %545, align 1
  %547 = xor <4 x i64> %546, %544
  %548 = bitcast <4 x i64> %547 to <8 x i32>
  %549 = shufflevector <8 x i32> %548, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %550 = bitcast <8 x i32> %549 to <4 x i64>
  %551 = and <4 x i64> %547, splat (i64 4294967295)
  %552 = and <4 x i64> %550, splat (i64 4294967295)
  %553 = mul nuw <4 x i64> %552, %551
  %554 = shufflevector <4 x i64> %544, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %555 = add <4 x i64> %23, %554
  %556 = add <4 x i64> %555, %553
  %557 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %558 = getelementptr inbounds nuw i8, ptr %0, i64 684
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %558, i32 0, i32 3, i32 1)
  %559 = getelementptr inbounds nuw i8, ptr %529, i64 8
  %560 = load <4 x i64>, ptr %557, align 1
  %561 = load <4 x i64>, ptr %559, align 1
  %562 = xor <4 x i64> %561, %560
  %563 = bitcast <4 x i64> %562 to <8 x i32>
  %564 = shufflevector <8 x i32> %563, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %565 = bitcast <8 x i32> %564 to <4 x i64>
  %566 = and <4 x i64> %562, splat (i64 4294967295)
  %567 = and <4 x i64> %565, splat (i64 4294967295)
  %568 = mul nuw <4 x i64> %567, %566
  %569 = shufflevector <4 x i64> %560, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %570 = add <4 x i64> %542, %569
  %571 = add <4 x i64> %570, %568
  %572 = getelementptr inbounds nuw i8, ptr %0, i64 396
  %573 = load <4 x i64>, ptr %572, align 1
  %574 = getelementptr inbounds nuw i8, ptr %529, i64 40
  %575 = load <4 x i64>, ptr %574, align 1
  %576 = xor <4 x i64> %575, %573
  %577 = bitcast <4 x i64> %576 to <8 x i32>
  %578 = shufflevector <8 x i32> %577, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %579 = bitcast <8 x i32> %578 to <4 x i64>
  %580 = and <4 x i64> %576, splat (i64 4294967295)
  %581 = and <4 x i64> %579, splat (i64 4294967295)
  %582 = mul nuw <4 x i64> %581, %580
  %583 = shufflevector <4 x i64> %573, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %584 = add <4 x i64> %556, %583
  %585 = add <4 x i64> %584, %582
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 428
  %587 = getelementptr inbounds nuw i8, ptr %0, i64 748
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %587, i32 0, i32 3, i32 1)
  %588 = getelementptr inbounds nuw i8, ptr %529, i64 16
  %589 = load <4 x i64>, ptr %586, align 1
  %590 = load <4 x i64>, ptr %588, align 1
  %591 = xor <4 x i64> %590, %589
  %592 = bitcast <4 x i64> %591 to <8 x i32>
  %593 = shufflevector <8 x i32> %592, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %594 = bitcast <8 x i32> %593 to <4 x i64>
  %595 = and <4 x i64> %591, splat (i64 4294967295)
  %596 = and <4 x i64> %594, splat (i64 4294967295)
  %597 = mul nuw <4 x i64> %596, %595
  %598 = shufflevector <4 x i64> %589, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %599 = add <4 x i64> %571, %598
  %600 = add <4 x i64> %599, %597
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 460
  %602 = load <4 x i64>, ptr %601, align 1
  %603 = getelementptr inbounds nuw i8, ptr %529, i64 48
  %604 = load <4 x i64>, ptr %603, align 1
  %605 = xor <4 x i64> %604, %602
  %606 = bitcast <4 x i64> %605 to <8 x i32>
  %607 = shufflevector <8 x i32> %606, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %608 = bitcast <8 x i32> %607 to <4 x i64>
  %609 = and <4 x i64> %605, splat (i64 4294967295)
  %610 = and <4 x i64> %608, splat (i64 4294967295)
  %611 = mul nuw <4 x i64> %610, %609
  %612 = shufflevector <4 x i64> %602, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %613 = add <4 x i64> %585, %612
  %614 = add <4 x i64> %613, %611
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 492
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 812
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %616, i32 0, i32 3, i32 1)
  %617 = getelementptr inbounds nuw i8, ptr %529, i64 24
  %618 = load <4 x i64>, ptr %615, align 1
  %619 = load <4 x i64>, ptr %617, align 1
  %620 = xor <4 x i64> %619, %618
  %621 = bitcast <4 x i64> %620 to <8 x i32>
  %622 = shufflevector <8 x i32> %621, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %623 = bitcast <8 x i32> %622 to <4 x i64>
  %624 = and <4 x i64> %620, splat (i64 4294967295)
  %625 = and <4 x i64> %623, splat (i64 4294967295)
  %626 = mul nuw <4 x i64> %625, %624
  %627 = shufflevector <4 x i64> %618, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %628 = add <4 x i64> %600, %627
  %629 = add <4 x i64> %628, %626
  %630 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %631 = load <4 x i64>, ptr %630, align 1
  %632 = getelementptr inbounds nuw i8, ptr %529, i64 56
  %633 = load <4 x i64>, ptr %632, align 1
  %634 = xor <4 x i64> %633, %631
  %635 = bitcast <4 x i64> %634 to <8 x i32>
  %636 = shufflevector <8 x i32> %635, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %637 = bitcast <8 x i32> %636 to <4 x i64>
  %638 = and <4 x i64> %634, splat (i64 4294967295)
  %639 = and <4 x i64> %637, splat (i64 4294967295)
  %640 = mul nuw <4 x i64> %639, %638
  %641 = shufflevector <4 x i64> %631, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %642 = add <4 x i64> %614, %641
  %643 = add <4 x i64> %642, %640
  store <4 x i64> %629, ptr %4, align 64
  store <4 x i64> %643, ptr %12, align 32
  %644 = add i64 %27, 4
  br label %645

645:                                              ; preds = %527, %526, %461
  %646 = phi <4 x i64> [ %643, %527 ], [ %485, %461 ], [ %523, %526 ]
  %647 = phi <4 x i64> [ %629, %527 ], [ %474, %461 ], [ %509, %526 ]
  %648 = phi i64 [ %644, %527 ], [ 0, %461 ], [ %420, %526 ]
  store i64 %648, ptr %24, align 8
  %649 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %650 = getelementptr inbounds nuw i8, ptr %0, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %649, ptr noundef nonnull readonly align 1 dereferenceable(64) %650, i64 64, i1 false)
  br label %651

651:                                              ; preds = %415, %281, %645
  %652 = phi i64 [ -300, %645 ], [ -512, %415 ], [ -512, %281 ]
  %653 = phi ptr [ %20, %645 ], [ %159, %415 ], [ %159, %281 ]
  %654 = phi <4 x i64> [ %646, %645 ], [ %416, %415 ], [ %414, %281 ]
  %655 = phi <4 x i64> [ %647, %645 ], [ %417, %415 ], [ %398, %281 ]
  %656 = phi i64 [ 444, %645 ], [ 700, %415 ], [ 700, %281 ]
  %657 = phi i64 [ 556, %645 ], [ 512, %415 ], [ 512, %281 ]
  %658 = add nsw i64 %652, %656
  %659 = getelementptr inbounds nuw i8, ptr %0, i64 %657
  %660 = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %660, ptr nonnull readonly align 1 %659, i64 %658, i1 false)
  %661 = trunc nsw i64 %658 to i32
  store i32 %661, ptr %8, align 64
  %662 = load i64, ptr %653, align 16
  %663 = icmp eq i64 %662, 700
  tail call void @llvm.assume(i1 %663)
  %664 = load ptr, ptr %16, align 8
  %665 = icmp eq ptr %664, %1
  tail call void @llvm.assume(i1 %665)
  %666 = icmp ugt i64 %658, 63
  br i1 %666, label %667, label %861

667:                                              ; preds = %651
  %668 = add nsw i64 %658, 4294967295
  %669 = lshr i64 %668, 6
  %670 = and i64 %669, 67108863
  %671 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %672 = load i64, ptr %671, align 8
  %673 = load i64, ptr %18, align 8
  %674 = load i64, ptr %17, align 32
  %675 = sub i64 %673, %672
  %676 = icmp ugt i64 %675, %670
  br i1 %676, label %786, label %677

677:                                              ; preds = %667
  %678 = sub nuw nsw i64 %670, %675
  %679 = shl i64 %672, 3
  %680 = getelementptr inbounds nuw i8, ptr %664, i64 %679
  %681 = icmp eq i64 %673, %672
  br i1 %681, label %719, label %682

682:                                              ; preds = %677, %682
  %683 = phi <4 x i64> [ %716, %682 ], [ %654, %677 ]
  %684 = phi <4 x i64> [ %702, %682 ], [ %655, %677 ]
  %685 = phi i64 [ %717, %682 ], [ 0, %677 ]
  %686 = shl i64 %685, 6
  %687 = getelementptr inbounds nuw i8, ptr %660, i64 %686
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %688, i32 0, i32 3, i32 1)
  %689 = shl i64 %685, 3
  %690 = getelementptr inbounds nuw i8, ptr %680, i64 %689
  %691 = load <4 x i64>, ptr %687, align 64
  %692 = load <4 x i64>, ptr %690, align 1
  %693 = xor <4 x i64> %692, %691
  %694 = bitcast <4 x i64> %693 to <8 x i32>
  %695 = shufflevector <8 x i32> %694, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %696 = bitcast <8 x i32> %695 to <4 x i64>
  %697 = and <4 x i64> %693, splat (i64 4294967295)
  %698 = and <4 x i64> %696, splat (i64 4294967295)
  %699 = mul nuw <4 x i64> %698, %697
  %700 = shufflevector <4 x i64> %691, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %701 = add <4 x i64> %684, %700
  %702 = add <4 x i64> %701, %699
  %703 = getelementptr inbounds nuw i8, ptr %687, i64 32
  %704 = load <4 x i64>, ptr %703, align 32
  %705 = getelementptr inbounds nuw i8, ptr %690, i64 32
  %706 = load <4 x i64>, ptr %705, align 1
  %707 = xor <4 x i64> %706, %704
  %708 = bitcast <4 x i64> %707 to <8 x i32>
  %709 = shufflevector <8 x i32> %708, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %710 = bitcast <8 x i32> %709 to <4 x i64>
  %711 = and <4 x i64> %707, splat (i64 4294967295)
  %712 = and <4 x i64> %710, splat (i64 4294967295)
  %713 = mul nuw <4 x i64> %712, %711
  %714 = shufflevector <4 x i64> %704, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %715 = add <4 x i64> %683, %714
  %716 = add <4 x i64> %715, %713
  %717 = add nuw i64 %685, 1
  %718 = icmp eq i64 %717, %675
  br i1 %718, label %719, label %682

719:                                              ; preds = %682, %677
  %720 = phi <4 x i64> [ %654, %677 ], [ %716, %682 ]
  %721 = phi <4 x i64> [ %655, %677 ], [ %702, %682 ]
  %722 = getelementptr inbounds nuw i8, ptr %664, i64 %674
  %723 = lshr <4 x i64> %721, splat (i64 47)
  %724 = load <4 x i64>, ptr %722, align 1
  %725 = xor <4 x i64> %723, %724
  %726 = xor <4 x i64> %725, %721
  %727 = bitcast <4 x i64> %726 to <8 x i32>
  %728 = shufflevector <8 x i32> %727, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %729 = bitcast <8 x i32> %728 to <4 x i64>
  %730 = and <4 x i64> %726, splat (i64 4294967295)
  %731 = mul nuw <4 x i64> %730, splat (i64 2654435761)
  %732 = mul <4 x i64> %729, splat (i64 -7046029290881679360)
  %733 = add <4 x i64> %732, %731
  %734 = lshr <4 x i64> %720, splat (i64 47)
  %735 = getelementptr inbounds nuw i8, ptr %722, i64 32
  %736 = load <4 x i64>, ptr %735, align 1
  %737 = xor <4 x i64> %734, %736
  %738 = xor <4 x i64> %737, %720
  %739 = bitcast <4 x i64> %738 to <8 x i32>
  %740 = shufflevector <8 x i32> %739, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %741 = bitcast <8 x i32> %740 to <4 x i64>
  %742 = and <4 x i64> %738, splat (i64 4294967295)
  %743 = mul nuw <4 x i64> %742, splat (i64 2654435761)
  %744 = mul <4 x i64> %741, splat (i64 -7046029290881679360)
  %745 = add <4 x i64> %744, %743
  %746 = shl nuw nsw i64 %675, 6
  %747 = getelementptr inbounds nuw i8, ptr %660, i64 %746
  %748 = icmp eq i64 %675, %670
  br i1 %748, label %827, label %749

749:                                              ; preds = %719, %749
  %750 = phi <4 x i64> [ %783, %749 ], [ %745, %719 ]
  %751 = phi <4 x i64> [ %769, %749 ], [ %733, %719 ]
  %752 = phi i64 [ %784, %749 ], [ 0, %719 ]
  %753 = shl i64 %752, 6
  %754 = getelementptr inbounds nuw i8, ptr %747, i64 %753
  %755 = getelementptr inbounds nuw i8, ptr %754, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %755, i32 0, i32 3, i32 1)
  %756 = shl i64 %752, 3
  %757 = getelementptr inbounds nuw i8, ptr %664, i64 %756
  %758 = load <4 x i64>, ptr %754, align 64
  %759 = load <4 x i64>, ptr %757, align 1
  %760 = xor <4 x i64> %759, %758
  %761 = bitcast <4 x i64> %760 to <8 x i32>
  %762 = shufflevector <8 x i32> %761, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %763 = bitcast <8 x i32> %762 to <4 x i64>
  %764 = and <4 x i64> %760, splat (i64 4294967295)
  %765 = and <4 x i64> %763, splat (i64 4294967295)
  %766 = mul nuw <4 x i64> %765, %764
  %767 = shufflevector <4 x i64> %758, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %768 = add <4 x i64> %751, %767
  %769 = add <4 x i64> %768, %766
  %770 = getelementptr inbounds nuw i8, ptr %754, i64 32
  %771 = load <4 x i64>, ptr %770, align 32
  %772 = getelementptr inbounds nuw i8, ptr %757, i64 32
  %773 = load <4 x i64>, ptr %772, align 1
  %774 = xor <4 x i64> %773, %771
  %775 = bitcast <4 x i64> %774 to <8 x i32>
  %776 = shufflevector <8 x i32> %775, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %777 = bitcast <8 x i32> %776 to <4 x i64>
  %778 = and <4 x i64> %774, splat (i64 4294967295)
  %779 = and <4 x i64> %777, splat (i64 4294967295)
  %780 = mul nuw <4 x i64> %779, %778
  %781 = shufflevector <4 x i64> %771, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %782 = add <4 x i64> %750, %781
  %783 = add <4 x i64> %782, %780
  %784 = add nuw i64 %752, 1
  %785 = icmp eq i64 %784, %678
  br i1 %785, label %827, label %749

786:                                              ; preds = %667
  %787 = shl i64 %672, 3
  %788 = getelementptr inbounds nuw i8, ptr %664, i64 %787
  %789 = icmp eq i64 %658, 64
  br i1 %789, label %827, label %790

790:                                              ; preds = %786, %790
  %791 = phi <4 x i64> [ %824, %790 ], [ %654, %786 ]
  %792 = phi <4 x i64> [ %810, %790 ], [ %655, %786 ]
  %793 = phi i64 [ %825, %790 ], [ 0, %786 ]
  %794 = shl i64 %793, 6
  %795 = getelementptr inbounds nuw i8, ptr %660, i64 %794
  %796 = getelementptr inbounds nuw i8, ptr %795, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %796, i32 0, i32 3, i32 1)
  %797 = shl i64 %793, 3
  %798 = getelementptr inbounds nuw i8, ptr %788, i64 %797
  %799 = load <4 x i64>, ptr %795, align 64
  %800 = load <4 x i64>, ptr %798, align 1
  %801 = xor <4 x i64> %800, %799
  %802 = bitcast <4 x i64> %801 to <8 x i32>
  %803 = shufflevector <8 x i32> %802, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %804 = bitcast <8 x i32> %803 to <4 x i64>
  %805 = and <4 x i64> %801, splat (i64 4294967295)
  %806 = and <4 x i64> %804, splat (i64 4294967295)
  %807 = mul nuw <4 x i64> %806, %805
  %808 = shufflevector <4 x i64> %799, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %809 = add <4 x i64> %792, %808
  %810 = add <4 x i64> %809, %807
  %811 = getelementptr inbounds nuw i8, ptr %795, i64 32
  %812 = load <4 x i64>, ptr %811, align 32
  %813 = getelementptr inbounds nuw i8, ptr %798, i64 32
  %814 = load <4 x i64>, ptr %813, align 1
  %815 = xor <4 x i64> %814, %812
  %816 = bitcast <4 x i64> %815 to <8 x i32>
  %817 = shufflevector <8 x i32> %816, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %818 = bitcast <8 x i32> %817 to <4 x i64>
  %819 = and <4 x i64> %815, splat (i64 4294967295)
  %820 = and <4 x i64> %818, splat (i64 4294967295)
  %821 = mul nuw <4 x i64> %820, %819
  %822 = shufflevector <4 x i64> %812, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %823 = add <4 x i64> %791, %822
  %824 = add <4 x i64> %823, %821
  %825 = add nuw nsw i64 %793, 1
  %826 = icmp eq i64 %825, %670
  br i1 %826, label %827, label %790

827:                                              ; preds = %749, %790, %786, %719
  %828 = phi <4 x i64> [ %745, %719 ], [ %654, %786 ], [ %824, %790 ], [ %783, %749 ]
  %829 = phi <4 x i64> [ %733, %719 ], [ %655, %786 ], [ %810, %790 ], [ %769, %749 ]
  %830 = and i64 %658, 4294967292
  %831 = getelementptr inbounds nuw i8, ptr %660, i64 %830
  %832 = getelementptr inbounds i8, ptr %831, i64 -64
  %833 = getelementptr inbounds nuw i8, ptr %664, i64 %674
  %834 = getelementptr inbounds i8, ptr %833, i64 -7
  %835 = load <4 x i64>, ptr %832, align 4
  %836 = load <4 x i64>, ptr %834, align 1
  %837 = xor <4 x i64> %836, %835
  %838 = bitcast <4 x i64> %837 to <8 x i32>
  %839 = shufflevector <8 x i32> %838, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %840 = bitcast <8 x i32> %839 to <4 x i64>
  %841 = and <4 x i64> %837, splat (i64 4294967295)
  %842 = and <4 x i64> %840, splat (i64 4294967295)
  %843 = mul nuw <4 x i64> %842, %841
  %844 = shufflevector <4 x i64> %835, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %845 = add <4 x i64> %829, %844
  %846 = add <4 x i64> %845, %843
  %847 = getelementptr inbounds i8, ptr %831, i64 -32
  %848 = load <4 x i64>, ptr %847, align 4
  %849 = getelementptr inbounds nuw i8, ptr %833, i64 25
  %850 = load <4 x i64>, ptr %849, align 1
  %851 = xor <4 x i64> %850, %848
  %852 = bitcast <4 x i64> %851 to <8 x i32>
  %853 = shufflevector <8 x i32> %852, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %854 = bitcast <8 x i32> %853 to <4 x i64>
  %855 = and <4 x i64> %851, splat (i64 4294967295)
  %856 = and <4 x i64> %854, splat (i64 4294967295)
  %857 = mul nuw <4 x i64> %856, %855
  %858 = shufflevector <4 x i64> %848, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %859 = add <4 x i64> %828, %858
  %860 = add <4 x i64> %859, %857
  br label %895

861:                                              ; preds = %651
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %862 = or disjoint i64 %658, -64
  %863 = sub nuw nsw i64 64, %658
  %864 = getelementptr inbounds i8, ptr %8, i64 %862
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull readonly align 4 %864, i64 %863, i1 false)
  %865 = getelementptr inbounds nuw i8, ptr %3, i64 %863
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %865, ptr nonnull readonly align 64 %660, i64 %658, i1 false)
  %866 = load i64, ptr %17, align 32
  %867 = getelementptr inbounds nuw i8, ptr %664, i64 %866
  %868 = getelementptr inbounds i8, ptr %867, i64 -7
  %869 = load <4 x i64>, ptr %3, align 16
  %870 = load <4 x i64>, ptr %868, align 1
  %871 = xor <4 x i64> %870, %869
  %872 = bitcast <4 x i64> %871 to <8 x i32>
  %873 = shufflevector <8 x i32> %872, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %874 = bitcast <8 x i32> %873 to <4 x i64>
  %875 = and <4 x i64> %871, splat (i64 4294967295)
  %876 = and <4 x i64> %874, splat (i64 4294967295)
  %877 = mul nuw <4 x i64> %876, %875
  %878 = shufflevector <4 x i64> %869, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %879 = add <4 x i64> %655, %878
  %880 = add <4 x i64> %879, %877
  %881 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %882 = load <4 x i64>, ptr %881, align 16
  %883 = getelementptr inbounds nuw i8, ptr %867, i64 25
  %884 = load <4 x i64>, ptr %883, align 1
  %885 = xor <4 x i64> %884, %882
  %886 = bitcast <4 x i64> %885 to <8 x i32>
  %887 = shufflevector <8 x i32> %886, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %888 = bitcast <8 x i32> %887 to <4 x i64>
  %889 = and <4 x i64> %885, splat (i64 4294967295)
  %890 = and <4 x i64> %888, splat (i64 4294967295)
  %891 = mul nuw <4 x i64> %890, %889
  %892 = shufflevector <4 x i64> %882, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %893 = add <4 x i64> %654, %892
  %894 = add <4 x i64> %893, %891
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  br label %895

895:                                              ; preds = %827, %861
  %896 = phi <4 x i64> [ %860, %827 ], [ %894, %861 ]
  %897 = phi <4 x i64> [ %846, %827 ], [ %880, %861 ]
  %898 = getelementptr inbounds nuw i8, ptr %664, i64 11
  %899 = extractelement <4 x i64> %897, i64 0
  %900 = extractelement <4 x i64> %897, i64 1
  %901 = load i64, ptr %898, align 1
  %902 = getelementptr i8, ptr %664, i64 19
  %903 = load i64, ptr %902, align 1
  %904 = xor i64 %901, %899
  %905 = xor i64 %903, %900
  %906 = zext i64 %904 to i128
  %907 = zext i64 %905 to i128
  %908 = mul nuw i128 %907, %906
  %909 = lshr i128 %908, 64
  %910 = xor i128 %909, %908
  %911 = trunc i128 %910 to i64
  %912 = add i64 %911, -6939834363949496028
  %913 = getelementptr inbounds nuw i8, ptr %664, i64 27
  %914 = extractelement <4 x i64> %897, i64 2
  %915 = extractelement <4 x i64> %897, i64 3
  %916 = load i64, ptr %913, align 1
  %917 = getelementptr i8, ptr %664, i64 35
  %918 = load i64, ptr %917, align 1
  %919 = xor i64 %916, %914
  %920 = xor i64 %918, %915
  %921 = zext i64 %919 to i128
  %922 = zext i64 %920 to i128
  %923 = mul nuw i128 %922, %921
  %924 = lshr i128 %923, 64
  %925 = xor i128 %924, %923
  %926 = trunc i128 %925 to i64
  %927 = add i64 %912, %926
  %928 = getelementptr inbounds nuw i8, ptr %664, i64 43
  %929 = extractelement <4 x i64> %896, i64 0
  %930 = extractelement <4 x i64> %896, i64 1
  %931 = load i64, ptr %928, align 1
  %932 = getelementptr i8, ptr %664, i64 51
  %933 = load i64, ptr %932, align 1
  %934 = xor i64 %931, %929
  %935 = xor i64 %933, %930
  %936 = zext i64 %934 to i128
  %937 = zext i64 %935 to i128
  %938 = mul nuw i128 %937, %936
  %939 = lshr i128 %938, 64
  %940 = xor i128 %939, %938
  %941 = trunc i128 %940 to i64
  %942 = add i64 %927, %941
  %943 = getelementptr inbounds nuw i8, ptr %664, i64 59
  %944 = extractelement <4 x i64> %896, i64 2
  %945 = extractelement <4 x i64> %896, i64 3
  %946 = load i64, ptr %943, align 1
  %947 = getelementptr i8, ptr %664, i64 67
  %948 = load i64, ptr %947, align 1
  %949 = xor i64 %946, %944
  %950 = xor i64 %948, %945
  %951 = zext i64 %949 to i128
  %952 = zext i64 %950 to i128
  %953 = mul nuw i128 %952, %951
  %954 = lshr i128 %953, 64
  %955 = xor i128 %954, %953
  %956 = trunc i128 %955 to i64
  %957 = add i64 %942, %956
  %958 = lshr i64 %957, 37
  %959 = xor i64 %958, %957
  %960 = mul i64 %959, 1609587791953885689
  %961 = lshr i64 %960, 32
  %962 = xor i64 %961, %960
  br label %963

963:                                              ; preds = %2, %895
  %964 = phi i64 [ %962, %895 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #7
  ret i64 %964
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

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!6 = distinct !{!6, !7, !"XXH3_consumeStripes: argument 1"}
!7 = distinct !{!7, !"XXH3_consumeStripes"}
!8 = !{!9, !10, !11}
!9 = distinct !{!9, !7, !"XXH3_consumeStripes: argument 0"}
!10 = distinct !{!10, !7, !"XXH3_consumeStripes: argument 2"}
!11 = distinct !{!11, !7, !"XXH3_consumeStripes: argument 3"}
!12 = !{!9}
!13 = !{!10}
!14 = !{!11}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_consumeStripes: argument 0"}
!17 = distinct !{!17, !"XXH3_consumeStripes"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"XXH3_consumeStripes: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !17, !"XXH3_consumeStripes: argument 2"}
!22 = !{!23}
!23 = distinct !{!23, !17, !"XXH3_consumeStripes: argument 3"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_accumulate: argument 0"}
!26 = distinct !{!26, !"XXH3_accumulate"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"XXH3_accumulate: argument 1"}
!29 = !{!30}
!30 = distinct !{!30, !26, !"XXH3_accumulate: argument 2"}
!31 = !{!32, !25, !16}
!32 = distinct !{!32, !33, !"XXH3_accumulate_512_avx2: argument 0"}
!33 = distinct !{!33, !"XXH3_accumulate_512_avx2"}
!34 = !{!35, !36, !28, !30, !19, !21, !23}
!35 = distinct !{!35, !33, !"XXH3_accumulate_512_avx2: argument 1"}
!36 = distinct !{!36, !33, !"XXH3_accumulate_512_avx2: argument 2"}
!37 = !{!25, !30, !16, !19, !23}
!38 = !{!32}
!39 = !{!35}
!40 = !{!36}
!41 = !{!35, !28, !21}
!42 = !{!32, !36, !25, !30, !16, !19, !23}
!43 = !{!36, !30, !23}
!44 = !{!32, !35, !25, !28, !16, !19, !21}
!45 = !{!46}
!46 = distinct !{!46, !33, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!47 = !{!48}
!48 = distinct !{!48, !33, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!49 = !{!46, !28, !21}
!50 = !{!51, !48, !25, !30, !16, !19, !23}
!51 = distinct !{!51, !33, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!52 = !{!48, !30, !23}
!53 = !{!51, !46, !25, !28, !16, !19, !21}
!54 = !{!55}
!55 = distinct !{!55, !33, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!56 = !{!57}
!57 = distinct !{!57, !33, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!58 = !{!55, !28, !21}
!59 = !{!60, !57, !25, !30, !16, !19, !23}
!60 = distinct !{!60, !33, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!61 = !{!57, !30, !23}
!62 = !{!60, !55, !25, !28, !16, !19, !21}
!63 = !{!64}
!64 = distinct !{!64, !33, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!65 = !{!66}
!66 = distinct !{!66, !33, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!67 = !{!64, !28, !21}
!68 = !{!69, !66, !25, !30, !16, !19, !23}
!69 = distinct !{!69, !33, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!70 = !{!66, !30, !23}
!71 = !{!69, !64, !25, !28, !16, !19, !21}
!72 = !{!16, !21, !23}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_consumeStripes: argument 0"}
!75 = distinct !{!75, !"XXH3_consumeStripes"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_consumeStripes: argument 1"}
!78 = !{!79}
!79 = distinct !{!79, !75, !"XXH3_consumeStripes: argument 2"}
!80 = !{!81}
!81 = distinct !{!81, !75, !"XXH3_consumeStripes: argument 3"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"XXH3_accumulate: argument 1"}
!84 = distinct !{!84, !"XXH3_accumulate"}
!85 = !{!86}
!86 = distinct !{!86, !84, !"XXH3_accumulate: argument 2"}
!87 = !{!88, !74}
!88 = distinct !{!88, !89, !"XXH3_scrambleAcc_avx2: argument 0"}
!89 = distinct !{!89, !"XXH3_scrambleAcc_avx2"}
!90 = !{!91, !77, !79, !81}
!91 = distinct !{!91, !89, !"XXH3_scrambleAcc_avx2: argument 1"}
!92 = !{!77, !79, !81}
!93 = !{!94, !86, !74, !77, !81}
!94 = distinct !{!94, !84, !"XXH3_accumulate: argument 0"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"XXH3_accumulate_512_avx2: argument 1"}
!97 = distinct !{!97, !"XXH3_accumulate_512_avx2"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"XXH3_accumulate_512_avx2: argument 2"}
!100 = !{!96, !83, !79}
!101 = !{!102, !99, !94, !86, !74, !77, !81}
!102 = distinct !{!102, !97, !"XXH3_accumulate_512_avx2: argument 0"}
!103 = !{!99, !86, !81}
!104 = !{!102, !96, !94, !83, !74, !77, !79}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!88}
!108 = !{!91}
!109 = !{!91, !81}
!110 = !{!88, !74, !77, !79}
!111 = !{!112}
!112 = distinct !{!112, !113, !"XXH3_accumulate: argument 0"}
!113 = distinct !{!113, !"XXH3_accumulate"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"XXH3_accumulate: argument 1"}
!116 = !{!117}
!117 = distinct !{!117, !113, !"XXH3_accumulate: argument 2"}
!118 = !{!112, !117, !74, !77, !81}
!119 = !{!120}
!120 = distinct !{!120, !121, !"XXH3_accumulate_512_avx2: argument 0"}
!121 = distinct !{!121, !"XXH3_accumulate_512_avx2"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"XXH3_accumulate_512_avx2: argument 1"}
!124 = !{!125}
!125 = distinct !{!125, !121, !"XXH3_accumulate_512_avx2: argument 2"}
!126 = !{!123, !115, !79}
!127 = !{!120, !125, !112, !117, !74, !77, !81}
!128 = !{!125, !117, !81}
!129 = !{!120, !123, !112, !115, !74, !77, !79}
!130 = !{!120, !112, !74}
!131 = !{!123, !125, !115, !117, !77, !79, !81}
!132 = !{!133}
!133 = distinct !{!133, !134, !"XXH3_accumulate: argument 0"}
!134 = distinct !{!134, !"XXH3_accumulate"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"XXH3_accumulate: argument 1"}
!137 = !{!138}
!138 = distinct !{!138, !134, !"XXH3_accumulate: argument 2"}
!139 = !{!140, !133, !74}
!140 = distinct !{!140, !141, !"XXH3_accumulate_512_avx2: argument 0"}
!141 = distinct !{!141, !"XXH3_accumulate_512_avx2"}
!142 = !{!143, !144, !136, !138, !77, !79, !81}
!143 = distinct !{!143, !141, !"XXH3_accumulate_512_avx2: argument 1"}
!144 = distinct !{!144, !141, !"XXH3_accumulate_512_avx2: argument 2"}
!145 = !{!133, !138, !74, !77, !81}
!146 = !{!140}
!147 = !{!143}
!148 = !{!144}
!149 = !{!143, !136, !79}
!150 = !{!140, !144, !133, !138, !74, !77, !81}
!151 = !{!144, !138, !81}
!152 = !{!140, !143, !133, !136, !74, !77, !79}
!153 = !{!154}
!154 = distinct !{!154, !141, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!155 = !{!156}
!156 = distinct !{!156, !141, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!157 = !{!154, !136, !79}
!158 = !{!159, !156, !133, !138, !74, !77, !81}
!159 = distinct !{!159, !141, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!160 = !{!156, !138, !81}
!161 = !{!159, !154, !133, !136, !74, !77, !79}
!162 = !{!163}
!163 = distinct !{!163, !141, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!164 = !{!165}
!165 = distinct !{!165, !141, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!166 = !{!163, !136, !79}
!167 = !{!168, !165, !133, !138, !74, !77, !81}
!168 = distinct !{!168, !141, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!169 = !{!165, !138, !81}
!170 = !{!168, !163, !133, !136, !74, !77, !79}
!171 = !{!172}
!172 = distinct !{!172, !141, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!173 = !{!174}
!174 = distinct !{!174, !141, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!175 = !{!172, !136, !79}
!176 = !{!177, !174, !133, !138, !74, !77, !81}
!177 = distinct !{!177, !141, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!178 = !{!174, !138, !81}
!179 = !{!177, !172, !133, !136, !74, !77, !79}
!180 = !{!74, !79, !81}
!181 = !{!182}
!182 = distinct !{!182, !183, !"XXH3_accumulate: argument 1"}
!183 = distinct !{!183, !"XXH3_accumulate"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"XXH3_accumulate: argument 2"}
!186 = !{!187, !185, !9, !6, !11}
!187 = distinct !{!187, !183, !"XXH3_accumulate: argument 0"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"XXH3_accumulate_512_avx2: argument 1"}
!190 = distinct !{!190, !"XXH3_accumulate_512_avx2"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"XXH3_accumulate_512_avx2: argument 2"}
!193 = !{!189, !182, !10}
!194 = !{!195, !192, !187, !185, !9, !6, !11}
!195 = distinct !{!195, !190, !"XXH3_accumulate_512_avx2: argument 0"}
!196 = !{!192, !185, !11}
!197 = !{!195, !189, !187, !182, !9, !6, !10}
!198 = !{!199}
!199 = distinct !{!199, !200, !"XXH3_scrambleAcc_avx2: argument 0"}
!200 = distinct !{!200, !"XXH3_scrambleAcc_avx2"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"XXH3_scrambleAcc_avx2: argument 1"}
!203 = !{!202, !11}
!204 = !{!199, !9, !6, !10}
!205 = !{!199, !9}
!206 = !{!202, !6, !10, !11}
!207 = !{!208}
!208 = distinct !{!208, !209, !"XXH3_accumulate: argument 0"}
!209 = distinct !{!209, !"XXH3_accumulate"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"XXH3_accumulate: argument 1"}
!212 = !{!213}
!213 = distinct !{!213, !209, !"XXH3_accumulate: argument 2"}
!214 = !{!208, !213, !9, !6, !11}
!215 = !{!216}
!216 = distinct !{!216, !217, !"XXH3_accumulate_512_avx2: argument 0"}
!217 = distinct !{!217, !"XXH3_accumulate_512_avx2"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"XXH3_accumulate_512_avx2: argument 1"}
!220 = !{!221}
!221 = distinct !{!221, !217, !"XXH3_accumulate_512_avx2: argument 2"}
!222 = !{!219, !211, !10}
!223 = !{!216, !221, !208, !213, !9, !6, !11}
!224 = !{!221, !213, !11}
!225 = !{!216, !219, !208, !211, !9, !6, !10}
!226 = !{!216, !208, !9}
!227 = !{!219, !221, !211, !213, !6, !10, !11}
!228 = !{!229}
!229 = distinct !{!229, !230, !"XXH3_accumulate: argument 0"}
!230 = distinct !{!230, !"XXH3_accumulate"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"XXH3_accumulate: argument 1"}
!233 = !{!234}
!234 = distinct !{!234, !230, !"XXH3_accumulate: argument 2"}
!235 = !{!229, !234, !9, !6, !11}
!236 = !{!237}
!237 = distinct !{!237, !238, !"XXH3_accumulate_512_avx2: argument 0"}
!238 = distinct !{!238, !"XXH3_accumulate_512_avx2"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"XXH3_accumulate_512_avx2: argument 1"}
!241 = !{!242}
!242 = distinct !{!242, !238, !"XXH3_accumulate_512_avx2: argument 2"}
!243 = !{!240, !232, !10}
!244 = !{!237, !242, !229, !234, !9, !6, !11}
!245 = !{!242, !234, !11}
!246 = !{!237, !240, !229, !232, !9, !6, !10}
!247 = !{!248}
!248 = distinct !{!248, !238, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!249 = !{!250}
!250 = distinct !{!250, !238, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!251 = !{!248, !232, !10}
!252 = !{!253, !250, !229, !234, !9, !6, !11}
!253 = distinct !{!253, !238, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!254 = !{!250, !234, !11}
!255 = !{!253, !248, !229, !232, !9, !6, !10}
!256 = !{!257}
!257 = distinct !{!257, !238, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!258 = !{!259}
!259 = distinct !{!259, !238, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!260 = !{!257, !232, !10}
!261 = !{!262, !259, !229, !234, !9, !6, !11}
!262 = distinct !{!262, !238, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!263 = !{!259, !234, !11}
!264 = !{!262, !257, !229, !232, !9, !6, !10}
!265 = !{!266}
!266 = distinct !{!266, !238, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!267 = !{!268}
!268 = distinct !{!268, !238, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!269 = !{!266, !232, !10}
!270 = !{!271, !268, !229, !234, !9, !6, !11}
!271 = distinct !{!271, !238, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!272 = !{!268, !234, !11}
!273 = !{!271, !266, !229, !232, !9, !6, !10}
!274 = !{!237, !229, !9}
!275 = !{!240, !242, !232, !234, !6, !10, !11}
!276 = !{!277}
!277 = distinct !{!277, !278, !"XXH3_consumeStripes: argument 2"}
!278 = distinct !{!278, !"XXH3_consumeStripes"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"XXH3_consumeStripes: argument 3"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"XXH3_accumulate: argument 1"}
!283 = distinct !{!283, !"XXH3_accumulate"}
!284 = !{!285}
!285 = distinct !{!285, !283, !"XXH3_accumulate: argument 2"}
!286 = !{!287, !285, !288, !289, !280}
!287 = distinct !{!287, !283, !"XXH3_accumulate: argument 0"}
!288 = distinct !{!288, !278, !"XXH3_consumeStripes: argument 0"}
!289 = distinct !{!289, !278, !"XXH3_consumeStripes: argument 1"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"XXH3_accumulate_512_avx2: argument 1"}
!292 = distinct !{!292, !"XXH3_accumulate_512_avx2"}
!293 = !{!294}
!294 = distinct !{!294, !292, !"XXH3_accumulate_512_avx2: argument 2"}
!295 = !{!291, !282, !277}
!296 = !{!297, !294, !287, !285, !288, !289, !280}
!297 = distinct !{!297, !292, !"XXH3_accumulate_512_avx2: argument 0"}
!298 = !{!294, !285, !280}
!299 = !{!297, !291, !287, !282, !288, !289, !277}
!300 = !{!301, !280}
!301 = distinct !{!301, !302, !"XXH3_scrambleAcc_avx2: argument 1"}
!302 = distinct !{!302, !"XXH3_scrambleAcc_avx2"}
!303 = !{!304, !288, !289, !277}
!304 = distinct !{!304, !302, !"XXH3_scrambleAcc_avx2: argument 0"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"XXH3_accumulate: argument 1"}
!307 = distinct !{!307, !"XXH3_accumulate"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"XXH3_accumulate: argument 2"}
!310 = !{!311, !309, !288, !289, !280}
!311 = distinct !{!311, !307, !"XXH3_accumulate: argument 0"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"XXH3_accumulate_512_avx2: argument 1"}
!314 = distinct !{!314, !"XXH3_accumulate_512_avx2"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"XXH3_accumulate_512_avx2: argument 2"}
!317 = !{!313, !306, !277}
!318 = !{!319, !316, !311, !309, !288, !289, !280}
!319 = distinct !{!319, !314, !"XXH3_accumulate_512_avx2: argument 0"}
!320 = !{!316, !309, !280}
!321 = !{!319, !313, !311, !306, !288, !289, !277}
!322 = !{!323}
!323 = distinct !{!323, !324, !"XXH3_accumulate: argument 1"}
!324 = distinct !{!324, !"XXH3_accumulate"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"XXH3_accumulate: argument 2"}
!327 = !{!328, !326, !288, !289, !280}
!328 = distinct !{!328, !324, !"XXH3_accumulate: argument 0"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"XXH3_accumulate_512_avx2: argument 1"}
!331 = distinct !{!331, !"XXH3_accumulate_512_avx2"}
!332 = !{!333}
!333 = distinct !{!333, !331, !"XXH3_accumulate_512_avx2: argument 2"}
!334 = !{!330, !323, !277}
!335 = !{!336, !333, !328, !326, !288, !289, !280}
!336 = distinct !{!336, !331, !"XXH3_accumulate_512_avx2: argument 0"}
!337 = !{!333, !326, !280}
!338 = !{!336, !330, !328, !323, !288, !289, !277}
!339 = !{!340}
!340 = distinct !{!340, !341, !"XXH3_accumulate_512_avx2: argument 1"}
!341 = distinct !{!341, !"XXH3_accumulate_512_avx2"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"XXH3_accumulate_512_avx2: argument 2"}
!344 = !{!345, !343}
!345 = distinct !{!345, !341, !"XXH3_accumulate_512_avx2: argument 0"}
!346 = !{!345, !340}
!347 = !{!348}
!348 = distinct !{!348, !349, !"XXH3_accumulate_512_avx2: argument 1"}
!349 = distinct !{!349, !"XXH3_accumulate_512_avx2"}
!350 = !{!351}
!351 = distinct !{!351, !349, !"XXH3_accumulate_512_avx2: argument 2"}
!352 = !{!353, !351}
!353 = distinct !{!353, !349, !"XXH3_accumulate_512_avx2: argument 0"}
!354 = !{!353, !348}
!355 = !{!356}
!356 = distinct !{!356, !357, !"XXH3_mergeAccs: argument 1"}
!357 = distinct !{!357, !"XXH3_mergeAccs"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"XXH3_mergeAccs: argument 0"}
