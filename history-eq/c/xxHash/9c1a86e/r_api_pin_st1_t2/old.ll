; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c"
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
  br i1 %5, label %527, label %6

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
  %20 = load <4 x i64>, ptr %3, align 64
  %21 = load <4 x i64>, ptr %11, align 32
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1)
  %24 = load <4 x i64>, ptr %0, align 1
  %25 = load <4 x i64>, ptr %1, align 1
  %26 = xor <4 x i64> %25, %24
  %27 = bitcast <4 x i64> %26 to <8 x i32>
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %29 = bitcast <8 x i32> %28 to <4 x i64>
  %30 = and <4 x i64> %26, splat (i64 4294967295)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = shufflevector <4 x i64> %24, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %34 = add <4 x i64> %20, %33
  %35 = add <4 x i64> %34, %32
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %37 = load <4 x i64>, ptr %36, align 1
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = xor <4 x i64> %39, %37
  %41 = bitcast <4 x i64> %40 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = and <4 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %44
  %47 = shufflevector <4 x i64> %37, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %48 = add <4 x i64> %21, %47
  %49 = add <4 x i64> %48, %46
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %51, i32 0, i32 3, i32 1)
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %53 = load <4 x i64>, ptr %50, align 1
  %54 = load <4 x i64>, ptr %52, align 1
  %55 = xor <4 x i64> %54, %53
  %56 = bitcast <4 x i64> %55 to <8 x i32>
  %57 = shufflevector <8 x i32> %56, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %58 = bitcast <8 x i32> %57 to <4 x i64>
  %59 = and <4 x i64> %55, splat (i64 4294967295)
  %60 = and <4 x i64> %58, splat (i64 4294967295)
  %61 = mul nuw <4 x i64> %60, %59
  %62 = shufflevector <4 x i64> %53, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %63 = add <4 x i64> %35, %62
  %64 = add <4 x i64> %63, %61
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %66 = load <4 x i64>, ptr %65, align 1
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %68 = load <4 x i64>, ptr %67, align 1
  %69 = xor <4 x i64> %68, %66
  %70 = bitcast <4 x i64> %69 to <8 x i32>
  %71 = shufflevector <8 x i32> %70, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %72 = bitcast <8 x i32> %71 to <4 x i64>
  %73 = and <4 x i64> %69, splat (i64 4294967295)
  %74 = and <4 x i64> %72, splat (i64 4294967295)
  %75 = mul nuw <4 x i64> %74, %73
  %76 = shufflevector <4 x i64> %66, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %77 = add <4 x i64> %49, %76
  %78 = add <4 x i64> %77, %75
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %80, i32 0, i32 3, i32 1)
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %82 = load <4 x i64>, ptr %79, align 1
  %83 = load <4 x i64>, ptr %81, align 1
  %84 = xor <4 x i64> %83, %82
  %85 = bitcast <4 x i64> %84 to <8 x i32>
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %87 = bitcast <8 x i32> %86 to <4 x i64>
  %88 = and <4 x i64> %84, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %82, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = add <4 x i64> %64, %91
  %93 = add <4 x i64> %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %95 = load <4 x i64>, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %97 = load <4 x i64>, ptr %96, align 1
  %98 = xor <4 x i64> %97, %95
  %99 = bitcast <4 x i64> %98 to <8 x i32>
  %100 = shufflevector <8 x i32> %99, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %101 = bitcast <8 x i32> %100 to <4 x i64>
  %102 = and <4 x i64> %98, splat (i64 4294967295)
  %103 = and <4 x i64> %101, splat (i64 4294967295)
  %104 = mul nuw <4 x i64> %103, %102
  %105 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %106 = add <4 x i64> %78, %105
  %107 = add <4 x i64> %106, %104
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %109, i32 0, i32 3, i32 1)
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %111 = load <4 x i64>, ptr %108, align 1
  %112 = load <4 x i64>, ptr %110, align 1
  %113 = xor <4 x i64> %112, %111
  %114 = bitcast <4 x i64> %113 to <8 x i32>
  %115 = shufflevector <8 x i32> %114, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %116 = bitcast <8 x i32> %115 to <4 x i64>
  %117 = and <4 x i64> %113, splat (i64 4294967295)
  %118 = and <4 x i64> %116, splat (i64 4294967295)
  %119 = mul nuw <4 x i64> %118, %117
  %120 = shufflevector <4 x i64> %111, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %121 = add <4 x i64> %93, %120
  %122 = add <4 x i64> %121, %119
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %124 = load <4 x i64>, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %126 = load <4 x i64>, ptr %125, align 1
  %127 = xor <4 x i64> %126, %124
  %128 = bitcast <4 x i64> %127 to <8 x i32>
  %129 = shufflevector <8 x i32> %128, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %130 = bitcast <8 x i32> %129 to <4 x i64>
  %131 = and <4 x i64> %127, splat (i64 4294967295)
  %132 = and <4 x i64> %130, splat (i64 4294967295)
  %133 = mul nuw <4 x i64> %132, %131
  %134 = shufflevector <4 x i64> %124, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = add <4 x i64> %107, %134
  %136 = add <4 x i64> %135, %133
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %138, i32 0, i32 3, i32 1)
  %139 = load <4 x i64>, ptr %137, align 1
  %140 = xor <4 x i64> %39, %139
  %141 = bitcast <4 x i64> %140 to <8 x i32>
  %142 = shufflevector <8 x i32> %141, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %143 = bitcast <8 x i32> %142 to <4 x i64>
  %144 = and <4 x i64> %140, splat (i64 4294967295)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %122, %147
  %149 = add <4 x i64> %148, %146
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %151 = load <4 x i64>, ptr %150, align 1
  %152 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %153 = load <4 x i64>, ptr %152, align 1
  %154 = xor <4 x i64> %153, %151
  %155 = bitcast <4 x i64> %154 to <8 x i32>
  %156 = shufflevector <8 x i32> %155, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %157 = bitcast <8 x i32> %156 to <4 x i64>
  %158 = and <4 x i64> %154, splat (i64 4294967295)
  %159 = and <4 x i64> %157, splat (i64 4294967295)
  %160 = mul nuw <4 x i64> %159, %158
  %161 = shufflevector <4 x i64> %151, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %162 = add <4 x i64> %136, %161
  %163 = add <4 x i64> %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %165, i32 0, i32 3, i32 1)
  %166 = load <4 x i64>, ptr %164, align 1
  %167 = xor <4 x i64> %68, %166
  %168 = bitcast <4 x i64> %167 to <8 x i32>
  %169 = shufflevector <8 x i32> %168, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %170 = bitcast <8 x i32> %169 to <4 x i64>
  %171 = and <4 x i64> %167, splat (i64 4294967295)
  %172 = and <4 x i64> %170, splat (i64 4294967295)
  %173 = mul nuw <4 x i64> %172, %171
  %174 = shufflevector <4 x i64> %166, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %175 = add <4 x i64> %149, %174
  %176 = add <4 x i64> %175, %173
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %178 = load <4 x i64>, ptr %177, align 1
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %180 = load <4 x i64>, ptr %179, align 1
  %181 = xor <4 x i64> %180, %178
  %182 = bitcast <4 x i64> %181 to <8 x i32>
  %183 = shufflevector <8 x i32> %182, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %184 = bitcast <8 x i32> %183 to <4 x i64>
  %185 = and <4 x i64> %181, splat (i64 4294967295)
  %186 = and <4 x i64> %184, splat (i64 4294967295)
  %187 = mul nuw <4 x i64> %186, %185
  %188 = shufflevector <4 x i64> %178, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %189 = add <4 x i64> %163, %188
  %190 = add <4 x i64> %189, %187
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %192, i32 0, i32 3, i32 1)
  %193 = load <4 x i64>, ptr %191, align 1
  %194 = xor <4 x i64> %97, %193
  %195 = bitcast <4 x i64> %194 to <8 x i32>
  %196 = shufflevector <8 x i32> %195, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %197 = bitcast <8 x i32> %196 to <4 x i64>
  %198 = and <4 x i64> %194, splat (i64 4294967295)
  %199 = and <4 x i64> %197, splat (i64 4294967295)
  %200 = mul nuw <4 x i64> %199, %198
  %201 = shufflevector <4 x i64> %193, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %202 = add <4 x i64> %176, %201
  %203 = add <4 x i64> %202, %200
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %205 = load <4 x i64>, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %207 = load <4 x i64>, ptr %206, align 1
  %208 = xor <4 x i64> %207, %205
  %209 = bitcast <4 x i64> %208 to <8 x i32>
  %210 = shufflevector <8 x i32> %209, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %211 = bitcast <8 x i32> %210 to <4 x i64>
  %212 = and <4 x i64> %208, splat (i64 4294967295)
  %213 = and <4 x i64> %211, splat (i64 4294967295)
  %214 = mul nuw <4 x i64> %213, %212
  %215 = shufflevector <4 x i64> %205, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %216 = add <4 x i64> %190, %215
  %217 = add <4 x i64> %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %219, i32 0, i32 3, i32 1)
  %220 = load <4 x i64>, ptr %218, align 1
  %221 = xor <4 x i64> %126, %220
  %222 = bitcast <4 x i64> %221 to <8 x i32>
  %223 = shufflevector <8 x i32> %222, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %224 = bitcast <8 x i32> %223 to <4 x i64>
  %225 = and <4 x i64> %221, splat (i64 4294967295)
  %226 = and <4 x i64> %224, splat (i64 4294967295)
  %227 = mul nuw <4 x i64> %226, %225
  %228 = shufflevector <4 x i64> %220, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %229 = add <4 x i64> %203, %228
  %230 = add <4 x i64> %229, %227
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %232 = load <4 x i64>, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %234 = load <4 x i64>, ptr %233, align 1
  %235 = xor <4 x i64> %234, %232
  %236 = bitcast <4 x i64> %235 to <8 x i32>
  %237 = shufflevector <8 x i32> %236, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %238 = bitcast <8 x i32> %237 to <4 x i64>
  %239 = and <4 x i64> %235, splat (i64 4294967295)
  %240 = and <4 x i64> %238, splat (i64 4294967295)
  %241 = mul nuw <4 x i64> %240, %239
  %242 = shufflevector <4 x i64> %232, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %243 = add <4 x i64> %217, %242
  %244 = add <4 x i64> %243, %241
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %246, i32 0, i32 3, i32 1)
  %247 = load <4 x i64>, ptr %245, align 1
  %248 = xor <4 x i64> %153, %247
  %249 = bitcast <4 x i64> %248 to <8 x i32>
  %250 = shufflevector <8 x i32> %249, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %251 = bitcast <8 x i32> %250 to <4 x i64>
  %252 = and <4 x i64> %248, splat (i64 4294967295)
  %253 = and <4 x i64> %251, splat (i64 4294967295)
  %254 = mul nuw <4 x i64> %253, %252
  %255 = shufflevector <4 x i64> %247, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %256 = add <4 x i64> %230, %255
  %257 = add <4 x i64> %256, %254
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %259 = load <4 x i64>, ptr %258, align 1
  %260 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %261 = load <4 x i64>, ptr %260, align 1
  %262 = xor <4 x i64> %261, %259
  %263 = bitcast <4 x i64> %262 to <8 x i32>
  %264 = shufflevector <8 x i32> %263, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %265 = bitcast <8 x i32> %264 to <4 x i64>
  %266 = and <4 x i64> %262, splat (i64 4294967295)
  %267 = and <4 x i64> %265, splat (i64 4294967295)
  %268 = mul nuw <4 x i64> %267, %266
  %269 = shufflevector <4 x i64> %259, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %270 = add <4 x i64> %244, %269
  %271 = add <4 x i64> %270, %268
  %272 = lshr <4 x i64> %257, splat (i64 47)
  %273 = xor <4 x i64> %272, %180
  %274 = xor <4 x i64> %273, %257
  %275 = bitcast <4 x i64> %274 to <8 x i32>
  %276 = shufflevector <8 x i32> %275, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %277 = bitcast <8 x i32> %276 to <4 x i64>
  %278 = and <4 x i64> %274, splat (i64 4294967295)
  %279 = mul nuw <4 x i64> %278, splat (i64 2654435761)
  %280 = mul <4 x i64> %277, splat (i64 -7046029290881679360)
  %281 = add <4 x i64> %280, %279
  store <4 x i64> %281, ptr %3, align 64
  %282 = lshr <4 x i64> %271, splat (i64 47)
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %284 = load <4 x i64>, ptr %283, align 1
  %285 = xor <4 x i64> %282, %284
  %286 = xor <4 x i64> %285, %271
  %287 = bitcast <4 x i64> %286 to <8 x i32>
  %288 = shufflevector <8 x i32> %287, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %289 = bitcast <8 x i32> %288 to <4 x i64>
  %290 = and <4 x i64> %286, splat (i64 4294967295)
  %291 = mul nuw <4 x i64> %290, splat (i64 2654435761)
  %292 = mul <4 x i64> %289, splat (i64 -7046029290881679360)
  %293 = add <4 x i64> %292, %291
  store <4 x i64> %293, ptr %11, align 32
  store i64 0, ptr %22, align 8
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %295 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(124) %295, ptr noundef nonnull readonly align 1 dereferenceable(124) %294, i64 124, i1 false)
  store i32 124, ptr %7, align 64
  %296 = load i64, ptr %19, align 16
  %297 = load ptr, ptr %15, align 8
  %298 = icmp eq i64 %296, 700
  tail call void @llvm.assume(i1 %298)
  %299 = icmp eq ptr %297, %1
  tail call void @llvm.assume(i1 %299)
  %300 = load i64, ptr %17, align 8
  %301 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %302 = load i64, ptr %16, align 32
  %303 = icmp ugt i64 %300, 1
  br i1 %303, label %402, label %304

304:                                              ; preds = %6
  %305 = sub nuw nsw i64 1, %300
  %306 = icmp eq i64 %300, 0
  br i1 %306, label %335, label %307

307:                                              ; preds = %304
  %308 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %308, i32 0, i32 3, i32 1)
  %309 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %310 = load <4 x i64>, ptr %309, align 32
  %311 = shufflevector <4 x i64> %310, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %312 = add <4 x i64> %293, %311
  %313 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %314 = load <4 x i64>, ptr %313, align 1
  %315 = xor <4 x i64> %314, %310
  %316 = bitcast <4 x i64> %315 to <8 x i32>
  %317 = shufflevector <8 x i32> %316, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %318 = bitcast <8 x i32> %317 to <4 x i64>
  %319 = and <4 x i64> %318, splat (i64 4294967295)
  %320 = and <4 x i64> %315, splat (i64 4294967295)
  %321 = mul nuw <4 x i64> %319, %320
  %322 = add <4 x i64> %312, %321
  %323 = load <4 x i64>, ptr %301, align 64
  %324 = shufflevector <4 x i64> %323, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %325 = add <4 x i64> %281, %324
  %326 = load <4 x i64>, ptr %297, align 1
  %327 = xor <4 x i64> %326, %323
  %328 = bitcast <4 x i64> %327 to <8 x i32>
  %329 = shufflevector <8 x i32> %328, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %330 = bitcast <8 x i32> %329 to <4 x i64>
  %331 = and <4 x i64> %330, splat (i64 4294967295)
  %332 = and <4 x i64> %327, splat (i64 4294967295)
  %333 = mul nuw <4 x i64> %331, %332
  %334 = add <4 x i64> %325, %333
  br label %335

335:                                              ; preds = %307, %304
  %336 = phi <4 x i64> [ %293, %304 ], [ %322, %307 ]
  %337 = phi <4 x i64> [ %281, %304 ], [ %334, %307 ]
  %338 = getelementptr inbounds nuw i8, ptr %297, i64 %302
  %339 = lshr <4 x i64> %337, splat (i64 47)
  %340 = load <4 x i64>, ptr %338, align 1
  %341 = xor <4 x i64> %339, %340
  %342 = xor <4 x i64> %341, %337
  %343 = bitcast <4 x i64> %342 to <8 x i32>
  %344 = shufflevector <8 x i32> %343, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %345 = bitcast <8 x i32> %344 to <4 x i64>
  %346 = and <4 x i64> %342, splat (i64 4294967295)
  %347 = mul nuw <4 x i64> %346, splat (i64 2654435761)
  %348 = mul <4 x i64> %345, splat (i64 -7046029290881679360)
  %349 = add <4 x i64> %348, %347
  %350 = lshr <4 x i64> %336, splat (i64 47)
  %351 = getelementptr inbounds nuw i8, ptr %338, i64 32
  %352 = load <4 x i64>, ptr %351, align 1
  %353 = xor <4 x i64> %350, %352
  %354 = xor <4 x i64> %353, %336
  %355 = bitcast <4 x i64> %354 to <8 x i32>
  %356 = shufflevector <8 x i32> %355, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %357 = bitcast <8 x i32> %356 to <4 x i64>
  %358 = and <4 x i64> %354, splat (i64 4294967295)
  %359 = mul nuw <4 x i64> %358, splat (i64 2654435761)
  %360 = mul <4 x i64> %357, splat (i64 -7046029290881679360)
  %361 = add <4 x i64> %360, %359
  %362 = shl nuw nsw i64 %300, 6
  %363 = getelementptr inbounds nuw i8, ptr %301, i64 %362
  %364 = icmp eq i64 %300, 1
  br i1 %364, label %430, label %365

365:                                              ; preds = %335, %365
  %366 = phi <4 x i64> [ %399, %365 ], [ %361, %335 ]
  %367 = phi <4 x i64> [ %385, %365 ], [ %349, %335 ]
  %368 = phi i64 [ %400, %365 ], [ 0, %335 ]
  %369 = shl i64 %368, 6
  %370 = getelementptr inbounds nuw i8, ptr %363, i64 %369
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %371, i32 0, i32 3, i32 1)
  %372 = shl i64 %368, 3
  %373 = getelementptr inbounds nuw i8, ptr %297, i64 %372
  %374 = load <4 x i64>, ptr %370, align 64
  %375 = load <4 x i64>, ptr %373, align 1
  %376 = xor <4 x i64> %375, %374
  %377 = bitcast <4 x i64> %376 to <8 x i32>
  %378 = shufflevector <8 x i32> %377, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %379 = bitcast <8 x i32> %378 to <4 x i64>
  %380 = and <4 x i64> %376, splat (i64 4294967295)
  %381 = and <4 x i64> %379, splat (i64 4294967295)
  %382 = mul nuw <4 x i64> %381, %380
  %383 = shufflevector <4 x i64> %374, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %384 = add <4 x i64> %367, %383
  %385 = add <4 x i64> %384, %382
  %386 = getelementptr inbounds nuw i8, ptr %370, i64 32
  %387 = load <4 x i64>, ptr %386, align 32
  %388 = getelementptr inbounds nuw i8, ptr %373, i64 32
  %389 = load <4 x i64>, ptr %388, align 1
  %390 = xor <4 x i64> %389, %387
  %391 = bitcast <4 x i64> %390 to <8 x i32>
  %392 = shufflevector <8 x i32> %391, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %393 = bitcast <8 x i32> %392 to <4 x i64>
  %394 = and <4 x i64> %390, splat (i64 4294967295)
  %395 = and <4 x i64> %393, splat (i64 4294967295)
  %396 = mul nuw <4 x i64> %395, %394
  %397 = shufflevector <4 x i64> %387, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %398 = add <4 x i64> %366, %397
  %399 = add <4 x i64> %398, %396
  %400 = add nuw i64 %368, 1
  %401 = icmp eq i64 %400, %305
  br i1 %401, label %430, label %365

402:                                              ; preds = %6
  %403 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %403, i32 0, i32 3, i32 1)
  %404 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %405 = load <4 x i64>, ptr %404, align 32
  %406 = shufflevector <4 x i64> %405, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %407 = add <4 x i64> %293, %406
  %408 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %409 = load <4 x i64>, ptr %408, align 1
  %410 = xor <4 x i64> %409, %405
  %411 = bitcast <4 x i64> %410 to <8 x i32>
  %412 = shufflevector <8 x i32> %411, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %413 = bitcast <8 x i32> %412 to <4 x i64>
  %414 = and <4 x i64> %413, splat (i64 4294967295)
  %415 = and <4 x i64> %410, splat (i64 4294967295)
  %416 = mul nuw <4 x i64> %414, %415
  %417 = add <4 x i64> %407, %416
  %418 = load <4 x i64>, ptr %301, align 64
  %419 = shufflevector <4 x i64> %418, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %420 = add <4 x i64> %281, %419
  %421 = load <4 x i64>, ptr %297, align 1
  %422 = xor <4 x i64> %421, %418
  %423 = bitcast <4 x i64> %422 to <8 x i32>
  %424 = shufflevector <8 x i32> %423, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %425 = bitcast <8 x i32> %424 to <4 x i64>
  %426 = and <4 x i64> %425, splat (i64 4294967295)
  %427 = and <4 x i64> %422, splat (i64 4294967295)
  %428 = mul nuw <4 x i64> %426, %427
  %429 = add <4 x i64> %420, %428
  br label %430

430:                                              ; preds = %365, %402, %335
  %431 = phi <4 x i64> [ %361, %335 ], [ %417, %402 ], [ %399, %365 ]
  %432 = phi <4 x i64> [ %349, %335 ], [ %429, %402 ], [ %385, %365 ]
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 316
  %434 = getelementptr inbounds nuw i8, ptr %297, i64 %302
  %435 = getelementptr inbounds i8, ptr %434, i64 -7
  %436 = load <4 x i64>, ptr %433, align 4
  %437 = load <4 x i64>, ptr %435, align 1
  %438 = xor <4 x i64> %437, %436
  %439 = bitcast <4 x i64> %438 to <8 x i32>
  %440 = shufflevector <8 x i32> %439, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %441 = bitcast <8 x i32> %440 to <4 x i64>
  %442 = and <4 x i64> %438, splat (i64 4294967295)
  %443 = and <4 x i64> %441, splat (i64 4294967295)
  %444 = mul nuw <4 x i64> %443, %442
  %445 = shufflevector <4 x i64> %436, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %446 = add <4 x i64> %432, %445
  %447 = add <4 x i64> %446, %444
  %448 = getelementptr inbounds nuw i8, ptr %3, i64 348
  %449 = load <4 x i64>, ptr %448, align 4
  %450 = getelementptr inbounds nuw i8, ptr %434, i64 25
  %451 = load <4 x i64>, ptr %450, align 1
  %452 = xor <4 x i64> %451, %449
  %453 = bitcast <4 x i64> %452 to <8 x i32>
  %454 = shufflevector <8 x i32> %453, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %455 = bitcast <8 x i32> %454 to <4 x i64>
  %456 = and <4 x i64> %452, splat (i64 4294967295)
  %457 = and <4 x i64> %455, splat (i64 4294967295)
  %458 = mul nuw <4 x i64> %457, %456
  %459 = shufflevector <4 x i64> %449, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %460 = add <4 x i64> %431, %459
  %461 = add <4 x i64> %460, %458
  %462 = getelementptr inbounds nuw i8, ptr %297, i64 11
  %463 = extractelement <4 x i64> %447, i64 0
  %464 = extractelement <4 x i64> %447, i64 1
  %465 = load i64, ptr %462, align 1
  %466 = getelementptr i8, ptr %297, i64 19
  %467 = load i64, ptr %466, align 1
  %468 = xor i64 %465, %463
  %469 = xor i64 %467, %464
  %470 = zext i64 %468 to i128
  %471 = zext i64 %469 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %475, -6939834363949496028
  %477 = getelementptr inbounds nuw i8, ptr %297, i64 27
  %478 = extractelement <4 x i64> %447, i64 2
  %479 = extractelement <4 x i64> %447, i64 3
  %480 = load i64, ptr %477, align 1
  %481 = getelementptr i8, ptr %297, i64 35
  %482 = load i64, ptr %481, align 1
  %483 = xor i64 %480, %478
  %484 = xor i64 %482, %479
  %485 = zext i64 %483 to i128
  %486 = zext i64 %484 to i128
  %487 = mul nuw i128 %486, %485
  %488 = lshr i128 %487, 64
  %489 = xor i128 %488, %487
  %490 = trunc i128 %489 to i64
  %491 = add i64 %476, %490
  %492 = getelementptr inbounds nuw i8, ptr %297, i64 43
  %493 = extractelement <4 x i64> %461, i64 0
  %494 = extractelement <4 x i64> %461, i64 1
  %495 = load i64, ptr %492, align 1
  %496 = getelementptr i8, ptr %297, i64 51
  %497 = load i64, ptr %496, align 1
  %498 = xor i64 %495, %493
  %499 = xor i64 %497, %494
  %500 = zext i64 %498 to i128
  %501 = zext i64 %499 to i128
  %502 = mul nuw i128 %501, %500
  %503 = lshr i128 %502, 64
  %504 = xor i128 %503, %502
  %505 = trunc i128 %504 to i64
  %506 = add i64 %491, %505
  %507 = getelementptr inbounds nuw i8, ptr %297, i64 59
  %508 = extractelement <4 x i64> %461, i64 2
  %509 = extractelement <4 x i64> %461, i64 3
  %510 = load i64, ptr %507, align 1
  %511 = getelementptr i8, ptr %297, i64 67
  %512 = load i64, ptr %511, align 1
  %513 = xor i64 %510, %508
  %514 = xor i64 %512, %509
  %515 = zext i64 %513 to i128
  %516 = zext i64 %514 to i128
  %517 = mul nuw i128 %516, %515
  %518 = lshr i128 %517, 64
  %519 = xor i128 %518, %517
  %520 = trunc i128 %519 to i64
  %521 = add i64 %506, %520
  %522 = lshr i64 %521, 37
  %523 = xor i64 %522, %521
  %524 = mul i64 %523, 1609587791953885689
  %525 = lshr i64 %524, 32
  %526 = xor i64 %525, %524
  br label %527

527:                                              ; preds = %2, %430
  %528 = phi i64 [ %526, %430 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #7
  ret i64 %528
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
!11 = distinct !{!11, !12, !"XXH3_accumulate: argument 1"}
!12 = distinct !{!12, !"XXH3_accumulate"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_accumulate: argument 2"}
!15 = !{!16, !6}
!16 = distinct !{!16, !17, !"XXH3_scrambleAcc_avx2: argument 0"}
!17 = distinct !{!17, !"XXH3_scrambleAcc_avx2"}
!18 = !{!19, !9}
!19 = distinct !{!19, !17, !"XXH3_scrambleAcc_avx2: argument 1"}
!20 = !{!21, !14}
!21 = distinct !{!21, !12, !"XXH3_accumulate: argument 0"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_accumulate_512_avx2: argument 1"}
!24 = distinct !{!24, !"XXH3_accumulate_512_avx2"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"XXH3_accumulate_512_avx2: argument 2"}
!27 = !{!23, !11, !9}
!28 = !{!29, !26, !21, !14, !6}
!29 = distinct !{!29, !24, !"XXH3_accumulate_512_avx2: argument 0"}
!30 = !{!26, !14}
!31 = !{!29, !23, !21, !11}
!32 = !{!33}
!33 = distinct !{!33, !24, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!34 = !{!35}
!35 = distinct !{!35, !24, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!36 = !{!33, !11, !9}
!37 = !{!29, !35, !21, !14, !6}
!38 = !{!35, !14}
!39 = !{!29, !33, !21, !11}
!40 = !{!41}
!41 = distinct !{!41, !24, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!42 = !{!43}
!43 = distinct !{!43, !24, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!44 = !{!41, !11, !9}
!45 = !{!29, !43, !21, !14, !6}
!46 = !{!43, !14}
!47 = !{!29, !41, !21, !11}
!48 = !{!49}
!49 = distinct !{!49, !24, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!50 = !{!51}
!51 = distinct !{!51, !24, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!52 = !{!49, !11, !9}
!53 = !{!29, !51, !21, !14, !6}
!54 = !{!51, !14}
!55 = !{!29, !49, !21, !11}
!56 = !{!57}
!57 = distinct !{!57, !24, !"XXH3_accumulate_512_avx2: argument 1:It4"}
!58 = !{!59}
!59 = distinct !{!59, !24, !"XXH3_accumulate_512_avx2: argument 2:It4"}
!60 = !{!57, !11, !9}
!61 = !{!29, !59, !21, !14, !6}
!62 = !{!59, !14}
!63 = !{!29, !57, !21, !11}
!64 = !{!65}
!65 = distinct !{!65, !24, !"XXH3_accumulate_512_avx2: argument 1:It5"}
!66 = !{!67}
!67 = distinct !{!67, !24, !"XXH3_accumulate_512_avx2: argument 2:It5"}
!68 = !{!65, !11, !9}
!69 = !{!29, !67, !21, !14, !6}
!70 = !{!67, !14}
!71 = !{!29, !65, !21, !11}
!72 = !{!73}
!73 = distinct !{!73, !24, !"XXH3_accumulate_512_avx2: argument 1:It6"}
!74 = !{!75}
!75 = distinct !{!75, !24, !"XXH3_accumulate_512_avx2: argument 2:It6"}
!76 = !{!73, !11, !9}
!77 = !{!29, !75, !21, !14, !6}
!78 = !{!75, !14}
!79 = !{!29, !73, !21, !11}
!80 = !{!81}
!81 = distinct !{!81, !24, !"XXH3_accumulate_512_avx2: argument 1:It7"}
!82 = !{!83}
!83 = distinct !{!83, !24, !"XXH3_accumulate_512_avx2: argument 2:It7"}
!84 = !{!81, !11, !9}
!85 = !{!29, !83, !21, !14, !6}
!86 = !{!83, !14}
!87 = !{!29, !81, !21, !11}
!88 = !{!89}
!89 = distinct !{!89, !24, !"XXH3_accumulate_512_avx2: argument 1:It8"}
!90 = !{!91}
!91 = distinct !{!91, !24, !"XXH3_accumulate_512_avx2: argument 2:It8"}
!92 = !{!89, !11, !9}
!93 = !{!29, !91, !21, !14, !6}
!94 = !{!91, !14}
!95 = !{!29, !89, !21, !11}
!96 = !{!16}
!97 = !{!19}
!98 = !{!6, !9}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_consumeStripes: argument 2"}
!101 = distinct !{!101, !"XXH3_consumeStripes"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"XXH3_consumeStripes: argument 3"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"XXH3_accumulate: argument 1"}
!106 = distinct !{!106, !"XXH3_accumulate"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"XXH3_accumulate: argument 2"}
!109 = !{!110, !108, !111, !112, !103}
!110 = distinct !{!110, !106, !"XXH3_accumulate: argument 0"}
!111 = distinct !{!111, !101, !"XXH3_consumeStripes: argument 0"}
!112 = distinct !{!112, !101, !"XXH3_consumeStripes: argument 1"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"XXH3_accumulate_512_avx2: argument 1"}
!115 = distinct !{!115, !"XXH3_accumulate_512_avx2"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"XXH3_accumulate_512_avx2: argument 2"}
!118 = !{!114, !105, !100}
!119 = !{!120, !117, !110, !108, !111, !112, !103}
!120 = distinct !{!120, !115, !"XXH3_accumulate_512_avx2: argument 0"}
!121 = !{!117, !108, !103}
!122 = !{!120, !114, !110, !105, !111, !112, !100}
!123 = !{!124, !103}
!124 = distinct !{!124, !125, !"XXH3_scrambleAcc_avx2: argument 1"}
!125 = distinct !{!125, !"XXH3_scrambleAcc_avx2"}
!126 = !{!127, !111, !112, !100}
!127 = distinct !{!127, !125, !"XXH3_scrambleAcc_avx2: argument 0"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"XXH3_accumulate: argument 1"}
!130 = distinct !{!130, !"XXH3_accumulate"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"XXH3_accumulate: argument 2"}
!133 = !{!134, !132, !111, !112, !103}
!134 = distinct !{!134, !130, !"XXH3_accumulate: argument 0"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"XXH3_accumulate_512_avx2: argument 1"}
!137 = distinct !{!137, !"XXH3_accumulate_512_avx2"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"XXH3_accumulate_512_avx2: argument 2"}
!140 = !{!136, !129, !100}
!141 = !{!142, !139, !134, !132, !111, !112, !103}
!142 = distinct !{!142, !137, !"XXH3_accumulate_512_avx2: argument 0"}
!143 = !{!139, !132, !103}
!144 = !{!142, !136, !134, !129, !111, !112, !100}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"XXH3_accumulate: argument 1"}
!149 = distinct !{!149, !"XXH3_accumulate"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"XXH3_accumulate: argument 2"}
!152 = !{!153, !151, !111, !112, !103}
!153 = distinct !{!153, !149, !"XXH3_accumulate: argument 0"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"XXH3_accumulate_512_avx2: argument 1"}
!156 = distinct !{!156, !"XXH3_accumulate_512_avx2"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"XXH3_accumulate_512_avx2: argument 2"}
!159 = !{!155, !148, !100}
!160 = !{!161, !158, !153, !151, !111, !112, !103}
!161 = distinct !{!161, !156, !"XXH3_accumulate_512_avx2: argument 0"}
!162 = !{!158, !151, !103}
!163 = !{!161, !155, !153, !148, !111, !112, !100}
!164 = !{!165}
!165 = distinct !{!165, !166, !"XXH3_accumulate_512_avx2: argument 1"}
!166 = distinct !{!166, !"XXH3_accumulate_512_avx2"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"XXH3_accumulate_512_avx2: argument 2"}
!169 = !{!170, !168}
!170 = distinct !{!170, !166, !"XXH3_accumulate_512_avx2: argument 0"}
!171 = !{!170, !165}
!172 = !{!173}
!173 = distinct !{!173, !174, !"XXH3_mergeAccs: argument 1"}
!174 = distinct !{!174, !"XXH3_mergeAccs"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"XXH3_mergeAccs: argument 0"}
