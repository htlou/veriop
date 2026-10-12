; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_sec136_700(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #7
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %529, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3, align 64
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store ptr %1, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 72, ptr %16, align 32
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 9, ptr %17, align 8
  %18 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %18)
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 700, ptr %19, align 16
  %20 = load <4 x i64>, ptr %11, align 32
  %21 = load <4 x i64>, ptr %3, align 64
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %22, i32 0, i32 3, i32 1)
  %23 = load <4 x i64>, ptr %0, align 1
  %24 = load <4 x i64>, ptr %1, align 1
  %25 = xor <4 x i64> %24, %23
  %26 = bitcast <4 x i64> %25 to <8 x i32>
  %27 = shufflevector <8 x i32> %26, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %28 = bitcast <8 x i32> %27 to <4 x i64>
  %29 = and <4 x i64> %25, splat (i64 4294967295)
  %30 = and <4 x i64> %28, splat (i64 4294967295)
  %31 = mul nuw <4 x i64> %30, %29
  %32 = shufflevector <4 x i64> %23, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %33 = add <4 x i64> %21, %32
  %34 = add <4 x i64> %33, %31
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %38 = load <4 x i64>, ptr %37, align 1
  %39 = xor <4 x i64> %38, %36
  %40 = bitcast <4 x i64> %39 to <8 x i32>
  %41 = shufflevector <8 x i32> %40, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %42 = bitcast <8 x i32> %41 to <4 x i64>
  %43 = and <4 x i64> %39, splat (i64 4294967295)
  %44 = and <4 x i64> %42, splat (i64 4294967295)
  %45 = mul nuw <4 x i64> %44, %43
  %46 = shufflevector <4 x i64> %36, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %47 = add <4 x i64> %20, %46
  %48 = add <4 x i64> %47, %45
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %50, i32 0, i32 3, i32 1)
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %52 = load <4 x i64>, ptr %49, align 1
  %53 = load <4 x i64>, ptr %51, align 1
  %54 = xor <4 x i64> %53, %52
  %55 = bitcast <4 x i64> %54 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = and <4 x i64> %54, splat (i64 4294967295)
  %59 = and <4 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <4 x i64> %59, %58
  %61 = shufflevector <4 x i64> %52, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %62 = add <4 x i64> %34, %61
  %63 = add <4 x i64> %62, %60
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %65 = load <4 x i64>, ptr %64, align 1
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %67 = load <4 x i64>, ptr %66, align 1
  %68 = xor <4 x i64> %67, %65
  %69 = bitcast <4 x i64> %68 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = and <4 x i64> %68, splat (i64 4294967295)
  %73 = and <4 x i64> %71, splat (i64 4294967295)
  %74 = mul nuw <4 x i64> %73, %72
  %75 = shufflevector <4 x i64> %65, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %76 = add <4 x i64> %48, %75
  %77 = add <4 x i64> %76, %74
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %79, i32 0, i32 3, i32 1)
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %81 = load <4 x i64>, ptr %78, align 1
  %82 = load <4 x i64>, ptr %80, align 1
  %83 = xor <4 x i64> %82, %81
  %84 = bitcast <4 x i64> %83 to <8 x i32>
  %85 = shufflevector <8 x i32> %84, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %86 = bitcast <8 x i32> %85 to <4 x i64>
  %87 = and <4 x i64> %83, splat (i64 4294967295)
  %88 = and <4 x i64> %86, splat (i64 4294967295)
  %89 = mul nuw <4 x i64> %88, %87
  %90 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %91 = add <4 x i64> %63, %90
  %92 = add <4 x i64> %91, %89
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %94 = load <4 x i64>, ptr %93, align 1
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %96 = load <4 x i64>, ptr %95, align 1
  %97 = xor <4 x i64> %96, %94
  %98 = bitcast <4 x i64> %97 to <8 x i32>
  %99 = shufflevector <8 x i32> %98, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %100 = bitcast <8 x i32> %99 to <4 x i64>
  %101 = and <4 x i64> %97, splat (i64 4294967295)
  %102 = and <4 x i64> %100, splat (i64 4294967295)
  %103 = mul nuw <4 x i64> %102, %101
  %104 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %105 = add <4 x i64> %77, %104
  %106 = add <4 x i64> %105, %103
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %108, i32 0, i32 3, i32 1)
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %110 = load <4 x i64>, ptr %107, align 1
  %111 = load <4 x i64>, ptr %109, align 1
  %112 = xor <4 x i64> %111, %110
  %113 = bitcast <4 x i64> %112 to <8 x i32>
  %114 = shufflevector <8 x i32> %113, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %115 = bitcast <8 x i32> %114 to <4 x i64>
  %116 = and <4 x i64> %112, splat (i64 4294967295)
  %117 = and <4 x i64> %115, splat (i64 4294967295)
  %118 = mul nuw <4 x i64> %117, %116
  %119 = shufflevector <4 x i64> %110, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %120 = add <4 x i64> %92, %119
  %121 = add <4 x i64> %120, %118
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %123 = load <4 x i64>, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %125 = load <4 x i64>, ptr %124, align 1
  %126 = xor <4 x i64> %125, %123
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %134 = add <4 x i64> %106, %133
  %135 = add <4 x i64> %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %138, i32 0, i32 3, i32 1)
  %139 = load <4 x i64>, ptr %136, align 1
  %140 = load <4 x i64>, ptr %137, align 1
  %141 = xor <4 x i64> %140, %139
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %121, %148
  %150 = add <4 x i64> %149, %147
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %152 = load <4 x i64>, ptr %151, align 1
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = xor <4 x i64> %154, %152
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = shufflevector <4 x i64> %152, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %163 = add <4 x i64> %135, %162
  %164 = add <4 x i64> %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %166, i32 0, i32 3, i32 1)
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %168 = load <4 x i64>, ptr %165, align 1
  %169 = load <4 x i64>, ptr %167, align 1
  %170 = xor <4 x i64> %169, %168
  %171 = bitcast <4 x i64> %170 to <8 x i32>
  %172 = shufflevector <8 x i32> %171, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %173 = bitcast <8 x i32> %172 to <4 x i64>
  %174 = and <4 x i64> %170, splat (i64 4294967295)
  %175 = and <4 x i64> %173, splat (i64 4294967295)
  %176 = mul nuw <4 x i64> %175, %174
  %177 = shufflevector <4 x i64> %168, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %178 = add <4 x i64> %150, %177
  %179 = add <4 x i64> %178, %176
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %181 = load <4 x i64>, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %183 = load <4 x i64>, ptr %182, align 1
  %184 = xor <4 x i64> %183, %181
  %185 = bitcast <4 x i64> %184 to <8 x i32>
  %186 = shufflevector <8 x i32> %185, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %187 = bitcast <8 x i32> %186 to <4 x i64>
  %188 = and <4 x i64> %184, splat (i64 4294967295)
  %189 = and <4 x i64> %187, splat (i64 4294967295)
  %190 = mul nuw <4 x i64> %189, %188
  %191 = shufflevector <4 x i64> %181, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %192 = add <4 x i64> %164, %191
  %193 = add <4 x i64> %192, %190
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %195, i32 0, i32 3, i32 1)
  %196 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %197 = load <4 x i64>, ptr %194, align 1
  %198 = load <4 x i64>, ptr %196, align 1
  %199 = xor <4 x i64> %198, %197
  %200 = bitcast <4 x i64> %199 to <8 x i32>
  %201 = shufflevector <8 x i32> %200, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %202 = bitcast <8 x i32> %201 to <4 x i64>
  %203 = and <4 x i64> %199, splat (i64 4294967295)
  %204 = and <4 x i64> %202, splat (i64 4294967295)
  %205 = mul nuw <4 x i64> %204, %203
  %206 = shufflevector <4 x i64> %197, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %207 = add <4 x i64> %179, %206
  %208 = add <4 x i64> %207, %205
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %210 = load <4 x i64>, ptr %209, align 1
  %211 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %212 = load <4 x i64>, ptr %211, align 1
  %213 = xor <4 x i64> %212, %210
  %214 = bitcast <4 x i64> %213 to <8 x i32>
  %215 = shufflevector <8 x i32> %214, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %216 = bitcast <8 x i32> %215 to <4 x i64>
  %217 = and <4 x i64> %213, splat (i64 4294967295)
  %218 = and <4 x i64> %216, splat (i64 4294967295)
  %219 = mul nuw <4 x i64> %218, %217
  %220 = shufflevector <4 x i64> %210, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %221 = add <4 x i64> %193, %220
  %222 = add <4 x i64> %221, %219
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %224, i32 0, i32 3, i32 1)
  %225 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %226 = load <4 x i64>, ptr %223, align 1
  %227 = load <4 x i64>, ptr %225, align 1
  %228 = xor <4 x i64> %227, %226
  %229 = bitcast <4 x i64> %228 to <8 x i32>
  %230 = shufflevector <8 x i32> %229, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %231 = bitcast <8 x i32> %230 to <4 x i64>
  %232 = and <4 x i64> %228, splat (i64 4294967295)
  %233 = and <4 x i64> %231, splat (i64 4294967295)
  %234 = mul nuw <4 x i64> %233, %232
  %235 = shufflevector <4 x i64> %226, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %236 = add <4 x i64> %208, %235
  %237 = add <4 x i64> %236, %234
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %239 = load <4 x i64>, ptr %238, align 1
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %241 = load <4 x i64>, ptr %240, align 1
  %242 = xor <4 x i64> %241, %239
  %243 = bitcast <4 x i64> %242 to <8 x i32>
  %244 = shufflevector <8 x i32> %243, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %245 = bitcast <8 x i32> %244 to <4 x i64>
  %246 = and <4 x i64> %242, splat (i64 4294967295)
  %247 = and <4 x i64> %245, splat (i64 4294967295)
  %248 = mul nuw <4 x i64> %247, %246
  %249 = shufflevector <4 x i64> %239, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %250 = add <4 x i64> %222, %249
  %251 = add <4 x i64> %250, %248
  store <4 x i64> %237, ptr %3, align 64
  store <4 x i64> %251, ptr %11, align 32
  %252 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 8, ptr %252, align 8
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %254 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %254, ptr noundef nonnull readonly align 1 dereferenceable(64) %255, i64 64, i1 false)
  %256 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(188) %256, ptr noundef nonnull readonly align 1 dereferenceable(188) %253, i64 188, i1 false)
  store i32 188, ptr %7, align 64
  %257 = load i64, ptr %19, align 16
  %258 = load ptr, ptr %15, align 8
  %259 = icmp eq i64 %257, 700
  tail call void @llvm.assume(i1 %259)
  %260 = icmp eq ptr %258, %1
  tail call void @llvm.assume(i1 %260)
  %261 = load i64, ptr %17, align 8
  %262 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %263 = load i64, ptr %16, align 32
  %264 = add i64 %261, -8
  %265 = icmp ugt i64 %264, 2
  br i1 %265, label %374, label %266

266:                                              ; preds = %6
  %267 = sub nsw i64 10, %261
  %268 = getelementptr inbounds nuw i8, ptr %258, i64 64
  %269 = icmp eq i64 %261, 8
  br i1 %269, label %307, label %270

270:                                              ; preds = %266, %270
  %271 = phi <4 x i64> [ %304, %270 ], [ %251, %266 ]
  %272 = phi <4 x i64> [ %290, %270 ], [ %237, %266 ]
  %273 = phi i64 [ %305, %270 ], [ 0, %266 ]
  %274 = shl i64 %273, 6
  %275 = getelementptr inbounds nuw i8, ptr %262, i64 %274
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %276, i32 0, i32 3, i32 1)
  %277 = shl i64 %273, 3
  %278 = getelementptr inbounds nuw i8, ptr %268, i64 %277
  %279 = load <4 x i64>, ptr %275, align 64
  %280 = load <4 x i64>, ptr %278, align 1
  %281 = xor <4 x i64> %280, %279
  %282 = bitcast <4 x i64> %281 to <8 x i32>
  %283 = shufflevector <8 x i32> %282, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %284 = bitcast <8 x i32> %283 to <4 x i64>
  %285 = and <4 x i64> %281, splat (i64 4294967295)
  %286 = and <4 x i64> %284, splat (i64 4294967295)
  %287 = mul nuw <4 x i64> %286, %285
  %288 = shufflevector <4 x i64> %279, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %289 = add <4 x i64> %272, %288
  %290 = add <4 x i64> %289, %287
  %291 = getelementptr inbounds nuw i8, ptr %275, i64 32
  %292 = load <4 x i64>, ptr %291, align 32
  %293 = getelementptr inbounds nuw i8, ptr %278, i64 32
  %294 = load <4 x i64>, ptr %293, align 1
  %295 = xor <4 x i64> %294, %292
  %296 = bitcast <4 x i64> %295 to <8 x i32>
  %297 = shufflevector <8 x i32> %296, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %298 = bitcast <8 x i32> %297 to <4 x i64>
  %299 = and <4 x i64> %295, splat (i64 4294967295)
  %300 = and <4 x i64> %298, splat (i64 4294967295)
  %301 = mul nuw <4 x i64> %300, %299
  %302 = shufflevector <4 x i64> %292, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %303 = add <4 x i64> %271, %302
  %304 = add <4 x i64> %303, %301
  %305 = add nuw i64 %273, 1
  %306 = icmp eq i64 %305, %264
  br i1 %306, label %307, label %270

307:                                              ; preds = %270, %266
  %308 = phi <4 x i64> [ %251, %266 ], [ %304, %270 ]
  %309 = phi <4 x i64> [ %237, %266 ], [ %290, %270 ]
  %310 = getelementptr inbounds nuw i8, ptr %258, i64 %263
  %311 = lshr <4 x i64> %309, splat (i64 47)
  %312 = load <4 x i64>, ptr %310, align 1
  %313 = xor <4 x i64> %311, %312
  %314 = xor <4 x i64> %313, %309
  %315 = bitcast <4 x i64> %314 to <8 x i32>
  %316 = shufflevector <8 x i32> %315, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %317 = bitcast <8 x i32> %316 to <4 x i64>
  %318 = and <4 x i64> %314, splat (i64 4294967295)
  %319 = mul nuw <4 x i64> %318, splat (i64 2654435761)
  %320 = mul <4 x i64> %317, splat (i64 -7046029290881679360)
  %321 = add <4 x i64> %320, %319
  %322 = lshr <4 x i64> %308, splat (i64 47)
  %323 = getelementptr inbounds nuw i8, ptr %310, i64 32
  %324 = load <4 x i64>, ptr %323, align 1
  %325 = xor <4 x i64> %322, %324
  %326 = xor <4 x i64> %325, %308
  %327 = bitcast <4 x i64> %326 to <8 x i32>
  %328 = shufflevector <8 x i32> %327, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %329 = bitcast <8 x i32> %328 to <4 x i64>
  %330 = and <4 x i64> %326, splat (i64 4294967295)
  %331 = mul nuw <4 x i64> %330, splat (i64 2654435761)
  %332 = mul <4 x i64> %329, splat (i64 -7046029290881679360)
  %333 = add <4 x i64> %332, %331
  %334 = shl nuw nsw i64 %264, 6
  %335 = getelementptr inbounds nuw i8, ptr %262, i64 %334
  %336 = icmp eq i64 %264, 2
  br i1 %336, label %432, label %337

337:                                              ; preds = %307, %337
  %338 = phi <4 x i64> [ %371, %337 ], [ %333, %307 ]
  %339 = phi <4 x i64> [ %357, %337 ], [ %321, %307 ]
  %340 = phi i64 [ %372, %337 ], [ 0, %307 ]
  %341 = shl i64 %340, 6
  %342 = getelementptr inbounds nuw i8, ptr %335, i64 %341
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %343, i32 0, i32 3, i32 1)
  %344 = shl i64 %340, 3
  %345 = getelementptr inbounds nuw i8, ptr %258, i64 %344
  %346 = load <4 x i64>, ptr %342, align 64
  %347 = load <4 x i64>, ptr %345, align 1
  %348 = xor <4 x i64> %347, %346
  %349 = bitcast <4 x i64> %348 to <8 x i32>
  %350 = shufflevector <8 x i32> %349, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %351 = bitcast <8 x i32> %350 to <4 x i64>
  %352 = and <4 x i64> %348, splat (i64 4294967295)
  %353 = and <4 x i64> %351, splat (i64 4294967295)
  %354 = mul nuw <4 x i64> %353, %352
  %355 = shufflevector <4 x i64> %346, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %356 = add <4 x i64> %339, %355
  %357 = add <4 x i64> %356, %354
  %358 = getelementptr inbounds nuw i8, ptr %342, i64 32
  %359 = load <4 x i64>, ptr %358, align 32
  %360 = getelementptr inbounds nuw i8, ptr %345, i64 32
  %361 = load <4 x i64>, ptr %360, align 1
  %362 = xor <4 x i64> %361, %359
  %363 = bitcast <4 x i64> %362 to <8 x i32>
  %364 = shufflevector <8 x i32> %363, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %365 = bitcast <8 x i32> %364 to <4 x i64>
  %366 = and <4 x i64> %362, splat (i64 4294967295)
  %367 = and <4 x i64> %365, splat (i64 4294967295)
  %368 = mul nuw <4 x i64> %367, %366
  %369 = shufflevector <4 x i64> %359, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %370 = add <4 x i64> %338, %369
  %371 = add <4 x i64> %370, %368
  %372 = add nuw i64 %340, 1
  %373 = icmp eq i64 %372, %267
  br i1 %373, label %432, label %337

374:                                              ; preds = %6
  %375 = getelementptr inbounds nuw i8, ptr %258, i64 64
  %376 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %376, i32 0, i32 3, i32 1)
  %377 = load <4 x i64>, ptr %262, align 64
  %378 = load <4 x i64>, ptr %375, align 1
  %379 = xor <4 x i64> %378, %377
  %380 = bitcast <4 x i64> %379 to <8 x i32>
  %381 = shufflevector <8 x i32> %380, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %382 = bitcast <8 x i32> %381 to <4 x i64>
  %383 = and <4 x i64> %379, splat (i64 4294967295)
  %384 = and <4 x i64> %382, splat (i64 4294967295)
  %385 = mul nuw <4 x i64> %384, %383
  %386 = shufflevector <4 x i64> %377, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %387 = add <4 x i64> %237, %386
  %388 = add <4 x i64> %387, %385
  %389 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %390 = load <4 x i64>, ptr %389, align 32
  %391 = getelementptr inbounds nuw i8, ptr %258, i64 96
  %392 = load <4 x i64>, ptr %391, align 1
  %393 = xor <4 x i64> %392, %390
  %394 = bitcast <4 x i64> %393 to <8 x i32>
  %395 = shufflevector <8 x i32> %394, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %396 = bitcast <8 x i32> %395 to <4 x i64>
  %397 = and <4 x i64> %393, splat (i64 4294967295)
  %398 = and <4 x i64> %396, splat (i64 4294967295)
  %399 = mul nuw <4 x i64> %398, %397
  %400 = shufflevector <4 x i64> %390, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %401 = add <4 x i64> %251, %400
  %402 = add <4 x i64> %401, %399
  %403 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %404 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %404, i32 0, i32 3, i32 1)
  %405 = getelementptr inbounds nuw i8, ptr %258, i64 72
  %406 = load <4 x i64>, ptr %403, align 64
  %407 = load <4 x i64>, ptr %405, align 1
  %408 = xor <4 x i64> %407, %406
  %409 = bitcast <4 x i64> %408 to <8 x i32>
  %410 = shufflevector <8 x i32> %409, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %411 = bitcast <8 x i32> %410 to <4 x i64>
  %412 = and <4 x i64> %408, splat (i64 4294967295)
  %413 = and <4 x i64> %411, splat (i64 4294967295)
  %414 = mul nuw <4 x i64> %413, %412
  %415 = shufflevector <4 x i64> %406, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %416 = add <4 x i64> %388, %415
  %417 = add <4 x i64> %416, %414
  %418 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %419 = load <4 x i64>, ptr %418, align 32
  %420 = getelementptr inbounds nuw i8, ptr %258, i64 104
  %421 = load <4 x i64>, ptr %420, align 1
  %422 = xor <4 x i64> %421, %419
  %423 = bitcast <4 x i64> %422 to <8 x i32>
  %424 = shufflevector <8 x i32> %423, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %425 = bitcast <8 x i32> %424 to <4 x i64>
  %426 = and <4 x i64> %422, splat (i64 4294967295)
  %427 = and <4 x i64> %425, splat (i64 4294967295)
  %428 = mul nuw <4 x i64> %427, %426
  %429 = shufflevector <4 x i64> %419, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %430 = add <4 x i64> %402, %429
  %431 = add <4 x i64> %430, %428
  br label %432

432:                                              ; preds = %337, %374, %307
  %433 = phi <4 x i64> [ %333, %307 ], [ %431, %374 ], [ %371, %337 ]
  %434 = phi <4 x i64> [ %321, %307 ], [ %417, %374 ], [ %357, %337 ]
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 412
  %436 = load <4 x i64>, ptr %435, align 4
  %437 = shufflevector <4 x i64> %436, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %438 = add <4 x i64> %433, %437
  %439 = getelementptr inbounds nuw i8, ptr %258, i64 %263
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 25
  %441 = load <4 x i64>, ptr %440, align 1
  %442 = xor <4 x i64> %441, %436
  %443 = bitcast <4 x i64> %442 to <8 x i32>
  %444 = shufflevector <8 x i32> %443, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %445 = bitcast <8 x i32> %444 to <4 x i64>
  %446 = and <4 x i64> %445, splat (i64 4294967295)
  %447 = and <4 x i64> %442, splat (i64 4294967295)
  %448 = mul nuw <4 x i64> %446, %447
  %449 = add <4 x i64> %438, %448
  %450 = getelementptr inbounds nuw i8, ptr %3, i64 380
  %451 = load <4 x i64>, ptr %450, align 4
  %452 = shufflevector <4 x i64> %451, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %453 = add <4 x i64> %434, %452
  %454 = getelementptr inbounds i8, ptr %439, i64 -7
  %455 = load <4 x i64>, ptr %454, align 1
  %456 = xor <4 x i64> %455, %451
  %457 = bitcast <4 x i64> %456 to <8 x i32>
  %458 = shufflevector <8 x i32> %457, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %459 = bitcast <8 x i32> %458 to <4 x i64>
  %460 = and <4 x i64> %459, splat (i64 4294967295)
  %461 = and <4 x i64> %456, splat (i64 4294967295)
  %462 = mul nuw <4 x i64> %460, %461
  %463 = add <4 x i64> %453, %462
  %464 = getelementptr inbounds nuw i8, ptr %258, i64 11
  %465 = extractelement <4 x i64> %463, i64 0
  %466 = extractelement <4 x i64> %463, i64 1
  %467 = load i64, ptr %464, align 1
  %468 = getelementptr i8, ptr %258, i64 19
  %469 = load i64, ptr %468, align 1
  %470 = xor i64 %467, %465
  %471 = xor i64 %469, %466
  %472 = zext i64 %470 to i128
  %473 = zext i64 %471 to i128
  %474 = mul nuw i128 %473, %472
  %475 = lshr i128 %474, 64
  %476 = xor i128 %475, %474
  %477 = trunc i128 %476 to i64
  %478 = add i64 %477, -6939834363949496028
  %479 = getelementptr inbounds nuw i8, ptr %258, i64 27
  %480 = extractelement <4 x i64> %463, i64 2
  %481 = extractelement <4 x i64> %463, i64 3
  %482 = load i64, ptr %479, align 1
  %483 = getelementptr i8, ptr %258, i64 35
  %484 = load i64, ptr %483, align 1
  %485 = xor i64 %482, %480
  %486 = xor i64 %484, %481
  %487 = zext i64 %485 to i128
  %488 = zext i64 %486 to i128
  %489 = mul nuw i128 %488, %487
  %490 = lshr i128 %489, 64
  %491 = xor i128 %490, %489
  %492 = trunc i128 %491 to i64
  %493 = add i64 %478, %492
  %494 = getelementptr inbounds nuw i8, ptr %258, i64 43
  %495 = extractelement <4 x i64> %449, i64 0
  %496 = extractelement <4 x i64> %449, i64 1
  %497 = load i64, ptr %494, align 1
  %498 = getelementptr i8, ptr %258, i64 51
  %499 = load i64, ptr %498, align 1
  %500 = xor i64 %497, %495
  %501 = xor i64 %499, %496
  %502 = zext i64 %500 to i128
  %503 = zext i64 %501 to i128
  %504 = mul nuw i128 %503, %502
  %505 = lshr i128 %504, 64
  %506 = xor i128 %505, %504
  %507 = trunc i128 %506 to i64
  %508 = add i64 %493, %507
  %509 = getelementptr inbounds nuw i8, ptr %258, i64 59
  %510 = extractelement <4 x i64> %449, i64 2
  %511 = extractelement <4 x i64> %449, i64 3
  %512 = load i64, ptr %509, align 1
  %513 = getelementptr i8, ptr %258, i64 67
  %514 = load i64, ptr %513, align 1
  %515 = xor i64 %512, %510
  %516 = xor i64 %514, %511
  %517 = zext i64 %515 to i128
  %518 = zext i64 %516 to i128
  %519 = mul nuw i128 %518, %517
  %520 = lshr i128 %519, 64
  %521 = xor i128 %520, %519
  %522 = trunc i128 %521 to i64
  %523 = add i64 %508, %522
  %524 = lshr i64 %523, 37
  %525 = xor i64 %524, %523
  %526 = mul i64 %525, 1609587791953885689
  %527 = lshr i64 %526, 32
  %528 = xor i64 %527, %526
  br label %529

529:                                              ; preds = %2, %432
  %530 = phi i64 [ %528, %432 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #7
  ret i64 %530
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
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_consumeStripes: argument 2"}
!10 = !{!11}
!11 = distinct !{!11, !7, !"XXH3_consumeStripes: argument 3"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_accumulate: argument 1"}
!14 = distinct !{!14, !"XXH3_accumulate"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_accumulate: argument 2"}
!17 = !{!18, !16, !19, !6, !11}
!18 = distinct !{!18, !14, !"XXH3_accumulate: argument 0"}
!19 = distinct !{!19, !7, !"XXH3_consumeStripes: argument 0"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_accumulate_512_avx2: argument 1"}
!22 = distinct !{!22, !"XXH3_accumulate_512_avx2"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"XXH3_accumulate_512_avx2: argument 2"}
!25 = !{!21, !13, !9}
!26 = !{!27, !24, !18, !16, !19, !6, !11}
!27 = distinct !{!27, !22, !"XXH3_accumulate_512_avx2: argument 0"}
!28 = !{!24, !16, !11}
!29 = !{!27, !21, !18, !13, !19, !6, !9}
!30 = !{!31}
!31 = distinct !{!31, !22, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!32 = !{!33}
!33 = distinct !{!33, !22, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!34 = !{!31, !13, !9}
!35 = !{!36, !33, !18, !16, !19, !6, !11}
!36 = distinct !{!36, !22, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!37 = !{!33, !16, !11}
!38 = !{!36, !31, !18, !13, !19, !6, !9}
!39 = !{!40}
!40 = distinct !{!40, !22, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!41 = !{!42}
!42 = distinct !{!42, !22, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!43 = !{!40, !13, !9}
!44 = !{!45, !42, !18, !16, !19, !6, !11}
!45 = distinct !{!45, !22, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!46 = !{!42, !16, !11}
!47 = !{!45, !40, !18, !13, !19, !6, !9}
!48 = !{!49}
!49 = distinct !{!49, !22, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!50 = !{!51}
!51 = distinct !{!51, !22, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!52 = !{!49, !13, !9}
!53 = !{!54, !51, !18, !16, !19, !6, !11}
!54 = distinct !{!54, !22, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!55 = !{!51, !16, !11}
!56 = !{!54, !49, !18, !13, !19, !6, !9}
!57 = !{!58}
!58 = distinct !{!58, !7, !"XXH3_consumeStripes: argument 2:It1"}
!59 = !{!60}
!60 = distinct !{!60, !7, !"XXH3_consumeStripes: argument 3:It1"}
!61 = !{!62}
!62 = distinct !{!62, !14, !"XXH3_accumulate: argument 1:It1"}
!63 = !{!64}
!64 = distinct !{!64, !14, !"XXH3_accumulate: argument 2:It1"}
!65 = !{!18, !64, !19, !66, !60}
!66 = distinct !{!66, !7, !"XXH3_consumeStripes: argument 1:It1"}
!67 = !{!68}
!68 = distinct !{!68, !22, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!69 = !{!70}
!70 = distinct !{!70, !22, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!71 = !{!68, !62, !58}
!72 = !{!27, !70, !18, !64, !19, !66, !60}
!73 = !{!70, !64, !60}
!74 = !{!27, !68, !18, !62, !19, !66, !58}
!75 = !{!76}
!76 = distinct !{!76, !22, !"XXH3_accumulate_512_avx2: argument 1:It1:It1"}
!77 = !{!78}
!78 = distinct !{!78, !22, !"XXH3_accumulate_512_avx2: argument 2:It1:It1"}
!79 = !{!76, !62, !58}
!80 = !{!36, !78, !18, !64, !19, !66, !60}
!81 = !{!78, !64, !60}
!82 = !{!36, !76, !18, !62, !19, !66, !58}
!83 = !{!84}
!84 = distinct !{!84, !22, !"XXH3_accumulate_512_avx2: argument 1:It2:It1"}
!85 = !{!86}
!86 = distinct !{!86, !22, !"XXH3_accumulate_512_avx2: argument 2:It2:It1"}
!87 = !{!84, !62, !58}
!88 = !{!45, !86, !18, !64, !19, !66, !60}
!89 = !{!86, !64, !60}
!90 = !{!45, !84, !18, !62, !19, !66, !58}
!91 = !{!92}
!92 = distinct !{!92, !22, !"XXH3_accumulate_512_avx2: argument 1:It3:It1"}
!93 = !{!94}
!94 = distinct !{!94, !22, !"XXH3_accumulate_512_avx2: argument 2:It3:It1"}
!95 = !{!92, !62, !58}
!96 = !{!54, !94, !18, !64, !19, !66, !60}
!97 = !{!94, !64, !60}
!98 = !{!54, !92, !18, !62, !19, !66, !58}
!99 = !{!19, !9, !11}
!100 = !{!101}
!101 = distinct !{!101, !102, !"XXH3_consumeStripes: argument 2"}
!102 = distinct !{!102, !"XXH3_consumeStripes"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"XXH3_consumeStripes: argument 3"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"XXH3_accumulate: argument 1"}
!107 = distinct !{!107, !"XXH3_accumulate"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"XXH3_accumulate: argument 2"}
!110 = !{!111, !109, !112, !113, !104}
!111 = distinct !{!111, !107, !"XXH3_accumulate: argument 0"}
!112 = distinct !{!112, !102, !"XXH3_consumeStripes: argument 0"}
!113 = distinct !{!113, !102, !"XXH3_consumeStripes: argument 1"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_accumulate_512_avx2: argument 1"}
!116 = distinct !{!116, !"XXH3_accumulate_512_avx2"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"XXH3_accumulate_512_avx2: argument 2"}
!119 = !{!115, !106, !101}
!120 = !{!121, !118, !111, !109, !112, !113, !104}
!121 = distinct !{!121, !116, !"XXH3_accumulate_512_avx2: argument 0"}
!122 = !{!118, !109, !104}
!123 = !{!121, !115, !111, !106, !112, !113, !101}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.mustprogress"}
!126 = !{!127, !104}
!127 = distinct !{!127, !128, !"XXH3_scrambleAcc_avx2: argument 1"}
!128 = distinct !{!128, !"XXH3_scrambleAcc_avx2"}
!129 = !{!130, !112, !113, !101}
!130 = distinct !{!130, !128, !"XXH3_scrambleAcc_avx2: argument 0"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"XXH3_accumulate: argument 1"}
!133 = distinct !{!133, !"XXH3_accumulate"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"XXH3_accumulate: argument 2"}
!136 = !{!137, !135, !112, !113, !104}
!137 = distinct !{!137, !133, !"XXH3_accumulate: argument 0"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"XXH3_accumulate_512_avx2: argument 1"}
!140 = distinct !{!140, !"XXH3_accumulate_512_avx2"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"XXH3_accumulate_512_avx2: argument 2"}
!143 = !{!139, !132, !101}
!144 = !{!145, !142, !137, !135, !112, !113, !104}
!145 = distinct !{!145, !140, !"XXH3_accumulate_512_avx2: argument 0"}
!146 = !{!142, !135, !104}
!147 = !{!145, !139, !137, !132, !112, !113, !101}
!148 = !{!149}
!149 = distinct !{!149, !150, !"XXH3_accumulate: argument 1"}
!150 = distinct !{!150, !"XXH3_accumulate"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"XXH3_accumulate: argument 2"}
!153 = !{!154, !152, !112, !113, !104}
!154 = distinct !{!154, !150, !"XXH3_accumulate: argument 0"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"XXH3_accumulate_512_avx2: argument 1"}
!157 = distinct !{!157, !"XXH3_accumulate_512_avx2"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"XXH3_accumulate_512_avx2: argument 2"}
!160 = !{!156, !149, !101}
!161 = !{!162, !159, !154, !152, !112, !113, !104}
!162 = distinct !{!162, !157, !"XXH3_accumulate_512_avx2: argument 0"}
!163 = !{!159, !152, !104}
!164 = !{!162, !156, !154, !149, !112, !113, !101}
!165 = !{!166}
!166 = distinct !{!166, !157, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!167 = !{!168}
!168 = distinct !{!168, !157, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!169 = !{!166, !149, !101}
!170 = !{!162, !168, !154, !152, !112, !113, !104}
!171 = !{!168, !152, !104}
!172 = !{!162, !166, !154, !149, !112, !113, !101}
!173 = !{!174}
!174 = distinct !{!174, !175, !"XXH3_accumulate_512_avx2: argument 1"}
!175 = distinct !{!175, !"XXH3_accumulate_512_avx2"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"XXH3_accumulate_512_avx2: argument 2"}
!178 = !{!179, !177}
!179 = distinct !{!179, !175, !"XXH3_accumulate_512_avx2: argument 0"}
!180 = !{!179, !174}
!181 = !{!182}
!182 = distinct !{!182, !183, !"XXH3_mergeAccs: argument 1"}
!183 = distinct !{!183, !"XXH3_mergeAccs"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"XXH3_mergeAccs: argument 0"}
