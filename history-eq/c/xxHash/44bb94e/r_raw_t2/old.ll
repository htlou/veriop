; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @target_raw_sofar8_600(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %5 = load i32, ptr %4, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %272

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %272

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 9
  br i1 %14, label %15, label %272

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %17 = load i64, ptr %16, align 32
  %18 = icmp eq i64 %17, 72
  %19 = icmp ne ptr %2, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %272

21:                                               ; preds = %15
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %25, label %272

25:                                               ; preds = %21
  %26 = ptrtoint ptr %0 to i64
  %27 = ptrtoint ptr %1 to i64
  %28 = add i64 %26, 576
  %29 = icmp ugt i64 %28, %27
  %30 = add i64 %27, 600
  %31 = icmp ugt i64 %30, %26
  %32 = and i1 %29, %31
  br i1 %32, label %272, label %33

33:                                               ; preds = %25
  %34 = ptrtoint ptr %2 to i64
  %35 = icmp ugt i64 %28, %34
  %36 = add i64 %34, 136
  %37 = icmp ugt i64 %36, %26
  %38 = and i1 %35, %37
  br i1 %38, label %272, label %39

39:                                               ; preds = %33
  %40 = icmp ugt i64 %30, %34
  %41 = icmp ugt i64 %36, %27
  %42 = and i1 %40, %41
  br i1 %42, label %272, label %43

43:                                               ; preds = %39
  %44 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %44)
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %46 = load i64, ptr %45, align 16
  %47 = add i64 %46, 600
  store i64 %47, ptr %45, align 16
  %48 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %49 = load <4 x i64>, ptr %0, align 32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load <4 x i64>, ptr %50, align 32
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %52, i32 0, i32 3, i32 1)
  %53 = load <4 x i64>, ptr %1, align 1
  %54 = load <4 x i64>, ptr %48, align 1
  %55 = xor <4 x i64> %54, %53
  %56 = lshr <4 x i64> %55, splat (i64 32)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, %56
  %59 = shufflevector <4 x i64> %53, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %60 = add <4 x i64> %49, %59
  %61 = add <4 x i64> %60, %58
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %63 = load <4 x i64>, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %23, i64 96
  %65 = load <4 x i64>, ptr %64, align 1
  %66 = xor <4 x i64> %65, %63
  %67 = lshr <4 x i64> %66, splat (i64 32)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = shufflevector <4 x i64> %63, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %71 = add <4 x i64> %51, %70
  %72 = add <4 x i64> %71, %69
  store <4 x i64> %61, ptr %0, align 32
  store <4 x i64> %72, ptr %50, align 32
  %73 = getelementptr inbounds nuw i8, ptr %23, i64 72
  %74 = lshr <4 x i64> %61, splat (i64 47)
  %75 = load <4 x i64>, ptr %73, align 1
  %76 = xor <4 x i64> %74, %75
  %77 = xor <4 x i64> %76, %61
  %78 = lshr <4 x i64> %77, splat (i64 32)
  %79 = and <4 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, splat (i64 2654435761)
  %81 = mul <4 x i64> %78, splat (i64 -7046029290881679360)
  %82 = add <4 x i64> %80, %81
  store <4 x i64> %82, ptr %0, align 32
  %83 = lshr <4 x i64> %72, splat (i64 47)
  %84 = getelementptr inbounds nuw i8, ptr %23, i64 104
  %85 = load <4 x i64>, ptr %84, align 1
  %86 = xor <4 x i64> %83, %85
  %87 = xor <4 x i64> %86, %72
  %88 = lshr <4 x i64> %87, splat (i64 32)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, splat (i64 2654435761)
  %91 = mul <4 x i64> %88, splat (i64 -7046029290881679360)
  %92 = add <4 x i64> %90, %91
  store <4 x i64> %92, ptr %50, align 32
  store i64 0, ptr %8, align 8
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %94, i32 0, i32 3, i32 1)
  %95 = load <4 x i64>, ptr %93, align 1
  %96 = load <4 x i64>, ptr %23, align 1
  %97 = xor <4 x i64> %96, %95
  %98 = lshr <4 x i64> %97, splat (i64 32)
  %99 = and <4 x i64> %97, splat (i64 4294967295)
  %100 = mul nuw <4 x i64> %99, %98
  %101 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %102 = add <4 x i64> %82, %101
  %103 = add <4 x i64> %102, %100
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %105 = load <4 x i64>, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, %105
  %109 = lshr <4 x i64> %108, splat (i64 32)
  %110 = and <4 x i64> %108, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, %109
  %112 = shufflevector <4 x i64> %105, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %113 = add <4 x i64> %92, %112
  %114 = add <4 x i64> %113, %111
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %116 = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %116, i32 0, i32 3, i32 1)
  %117 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %118 = load <4 x i64>, ptr %115, align 1
  %119 = load <4 x i64>, ptr %117, align 1
  %120 = xor <4 x i64> %119, %118
  %121 = lshr <4 x i64> %120, splat (i64 32)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = shufflevector <4 x i64> %118, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %125 = add <4 x i64> %103, %124
  %126 = add <4 x i64> %125, %123
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %128 = load <4 x i64>, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %23, i64 40
  %130 = load <4 x i64>, ptr %129, align 1
  %131 = xor <4 x i64> %130, %128
  %132 = lshr <4 x i64> %131, splat (i64 32)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %128, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %114, %135
  %137 = add <4 x i64> %136, %134
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %139, i32 0, i32 3, i32 1)
  %140 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %141 = load <4 x i64>, ptr %138, align 1
  %142 = load <4 x i64>, ptr %140, align 1
  %143 = xor <4 x i64> %142, %141
  %144 = lshr <4 x i64> %143, splat (i64 32)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %141, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %126, %147
  %149 = add <4 x i64> %148, %146
  %150 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %151 = load <4 x i64>, ptr %150, align 1
  %152 = getelementptr inbounds nuw i8, ptr %23, i64 48
  %153 = load <4 x i64>, ptr %152, align 1
  %154 = xor <4 x i64> %153, %151
  %155 = lshr <4 x i64> %154, splat (i64 32)
  %156 = and <4 x i64> %154, splat (i64 4294967295)
  %157 = mul nuw <4 x i64> %156, %155
  %158 = shufflevector <4 x i64> %151, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %159 = add <4 x i64> %137, %158
  %160 = add <4 x i64> %159, %157
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %162 = getelementptr inbounds nuw i8, ptr %1, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %162, i32 0, i32 3, i32 1)
  %163 = getelementptr inbounds nuw i8, ptr %23, i64 24
  %164 = load <4 x i64>, ptr %161, align 1
  %165 = load <4 x i64>, ptr %163, align 1
  %166 = xor <4 x i64> %165, %164
  %167 = lshr <4 x i64> %166, splat (i64 32)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %164, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = add <4 x i64> %149, %170
  %172 = add <4 x i64> %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %174 = load <4 x i64>, ptr %173, align 1
  %175 = getelementptr inbounds nuw i8, ptr %23, i64 56
  %176 = load <4 x i64>, ptr %175, align 1
  %177 = xor <4 x i64> %176, %174
  %178 = lshr <4 x i64> %177, splat (i64 32)
  %179 = and <4 x i64> %177, splat (i64 4294967295)
  %180 = mul nuw <4 x i64> %179, %178
  %181 = shufflevector <4 x i64> %174, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %182 = add <4 x i64> %160, %181
  %183 = add <4 x i64> %182, %180
  %184 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %185 = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %185, i32 0, i32 3, i32 1)
  %186 = load <4 x i64>, ptr %184, align 1
  %187 = xor <4 x i64> %107, %186
  %188 = lshr <4 x i64> %187, splat (i64 32)
  %189 = and <4 x i64> %187, splat (i64 4294967295)
  %190 = mul nuw <4 x i64> %189, %188
  %191 = shufflevector <4 x i64> %186, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %192 = add <4 x i64> %172, %191
  %193 = add <4 x i64> %192, %190
  %194 = getelementptr inbounds nuw i8, ptr %1, i64 352
  %195 = load <4 x i64>, ptr %194, align 1
  %196 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %197 = load <4 x i64>, ptr %196, align 1
  %198 = xor <4 x i64> %197, %195
  %199 = lshr <4 x i64> %198, splat (i64 32)
  %200 = and <4 x i64> %198, splat (i64 4294967295)
  %201 = mul nuw <4 x i64> %200, %199
  %202 = shufflevector <4 x i64> %195, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %203 = add <4 x i64> %183, %202
  %204 = add <4 x i64> %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %206 = getelementptr inbounds nuw i8, ptr %1, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %206, i32 0, i32 3, i32 1)
  %207 = load <4 x i64>, ptr %205, align 1
  %208 = xor <4 x i64> %130, %207
  %209 = lshr <4 x i64> %208, splat (i64 32)
  %210 = and <4 x i64> %208, splat (i64 4294967295)
  %211 = mul nuw <4 x i64> %210, %209
  %212 = shufflevector <4 x i64> %207, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %213 = add <4 x i64> %193, %212
  %214 = add <4 x i64> %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 416
  %216 = load <4 x i64>, ptr %215, align 1
  %217 = getelementptr inbounds nuw i8, ptr %23, i64 72
  %218 = load <4 x i64>, ptr %217, align 1
  %219 = xor <4 x i64> %218, %216
  %220 = lshr <4 x i64> %219, splat (i64 32)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = shufflevector <4 x i64> %216, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %224 = add <4 x i64> %204, %223
  %225 = add <4 x i64> %224, %222
  %226 = getelementptr inbounds nuw i8, ptr %1, i64 448
  %227 = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %227, i32 0, i32 3, i32 1)
  %228 = load <4 x i64>, ptr %226, align 1
  %229 = xor <4 x i64> %153, %228
  %230 = lshr <4 x i64> %229, splat (i64 32)
  %231 = and <4 x i64> %229, splat (i64 4294967295)
  %232 = mul nuw <4 x i64> %231, %230
  %233 = shufflevector <4 x i64> %228, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %234 = add <4 x i64> %214, %233
  %235 = add <4 x i64> %234, %232
  %236 = getelementptr inbounds nuw i8, ptr %1, i64 480
  %237 = load <4 x i64>, ptr %236, align 1
  %238 = getelementptr inbounds nuw i8, ptr %23, i64 80
  %239 = load <4 x i64>, ptr %238, align 1
  %240 = xor <4 x i64> %239, %237
  %241 = lshr <4 x i64> %240, splat (i64 32)
  %242 = and <4 x i64> %240, splat (i64 4294967295)
  %243 = mul nuw <4 x i64> %242, %241
  %244 = shufflevector <4 x i64> %237, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %245 = add <4 x i64> %225, %244
  %246 = add <4 x i64> %245, %243
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 512
  %248 = getelementptr inbounds nuw i8, ptr %1, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %248, i32 0, i32 3, i32 1)
  %249 = load <4 x i64>, ptr %247, align 1
  %250 = xor <4 x i64> %176, %249
  %251 = lshr <4 x i64> %250, splat (i64 32)
  %252 = and <4 x i64> %250, splat (i64 4294967295)
  %253 = mul nuw <4 x i64> %252, %251
  %254 = shufflevector <4 x i64> %249, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %255 = add <4 x i64> %235, %254
  %256 = add <4 x i64> %255, %253
  %257 = getelementptr inbounds nuw i8, ptr %1, i64 544
  %258 = load <4 x i64>, ptr %257, align 1
  %259 = getelementptr inbounds nuw i8, ptr %23, i64 88
  %260 = load <4 x i64>, ptr %259, align 1
  %261 = xor <4 x i64> %260, %258
  %262 = lshr <4 x i64> %261, splat (i64 32)
  %263 = and <4 x i64> %261, splat (i64 4294967295)
  %264 = mul nuw <4 x i64> %263, %262
  %265 = shufflevector <4 x i64> %258, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %266 = add <4 x i64> %246, %265
  %267 = add <4 x i64> %266, %264
  store <4 x i64> %256, ptr %0, align 32
  store <4 x i64> %267, ptr %50, align 32
  store i64 8, ptr %8, align 8
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %268, ptr noundef nonnull readonly align 1 dereferenceable(64) %269, i64 64, i1 false)
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 576
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %271, ptr noundef nonnull readonly align 1 dereferenceable(24) %270, i64 range(i64 -9223372036854775808, 257) 24, i1 false)
  store i32 24, ptr %4, align 64
  br label %272

272:                                              ; preds = %3, %7, %11, %15, %21, %25, %33, %39, %43
  %273 = phi i32 [ 0, %43 ], [ -1, %39 ], [ -1, %33 ], [ -1, %25 ], [ -1, %21 ], [ -1, %15 ], [ -1, %11 ], [ -1, %7 ], [ -1, %3 ]
  ret i32 %273
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

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
!11 = distinct !{!11, !12, !"XXH3_accumulate_avx2: argument 0"}
!12 = distinct !{!12, !"XXH3_accumulate_avx2"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_accumulate_avx2: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !12, !"XXH3_accumulate_avx2: argument 2"}
!17 = !{!18, !6}
!18 = distinct !{!18, !19, !"XXH3_scrambleAcc_avx2: argument 0"}
!19 = distinct !{!19, !"XXH3_scrambleAcc_avx2"}
!20 = !{!21, !9}
!21 = distinct !{!21, !19, !"XXH3_scrambleAcc_avx2: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_accumulate_512_avx2: argument 0"}
!24 = distinct !{!24, !"XXH3_accumulate_512_avx2"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"XXH3_accumulate_512_avx2: argument 1"}
!27 = !{!28}
!28 = distinct !{!28, !24, !"XXH3_accumulate_512_avx2: argument 2"}
!29 = !{!26, !14, !9}
!30 = !{!23, !28, !11, !16, !6}
!31 = !{!28, !16}
!32 = !{!23, !26, !11, !14}
!33 = !{!23, !11, !6}
!34 = !{!26, !28, !14, !16, !9}
!35 = !{!18}
!36 = !{!21}
!37 = !{!38}
!38 = distinct !{!38, !39, !"XXH3_accumulate_avx2: argument 0"}
!39 = distinct !{!39, !"XXH3_accumulate_avx2"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"XXH3_accumulate_avx2: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !39, !"XXH3_accumulate_avx2: argument 2"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_accumulate_512_avx2: argument 0"}
!46 = distinct !{!46, !"XXH3_accumulate_512_avx2"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"XXH3_accumulate_512_avx2: argument 1"}
!49 = !{!50}
!50 = distinct !{!50, !46, !"XXH3_accumulate_512_avx2: argument 2"}
!51 = !{!48, !41, !9}
!52 = !{!45, !50, !38, !43, !6}
!53 = !{!50, !43}
!54 = !{!45, !48, !38, !41}
!55 = !{!56}
!56 = distinct !{!56, !46, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!57 = !{!58}
!58 = distinct !{!58, !46, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!59 = !{!56, !41, !9}
!60 = !{!61, !58, !38, !43, !6}
!61 = distinct !{!61, !46, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!62 = !{!58, !43}
!63 = !{!61, !56, !38, !41}
!64 = !{!65}
!65 = distinct !{!65, !46, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!66 = !{!67}
!67 = distinct !{!67, !46, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!68 = !{!65, !41, !9}
!69 = !{!70, !67, !38, !43, !6}
!70 = distinct !{!70, !46, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!71 = !{!67, !43}
!72 = !{!70, !65, !38, !41}
!73 = !{!74}
!74 = distinct !{!74, !46, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!75 = !{!76}
!76 = distinct !{!76, !46, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!77 = !{!74, !41, !9}
!78 = !{!79, !76, !38, !43, !6}
!79 = distinct !{!79, !46, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!80 = !{!76, !43}
!81 = !{!79, !74, !38, !41}
!82 = !{!83}
!83 = distinct !{!83, !46, !"XXH3_accumulate_512_avx2: argument 1:It4"}
!84 = !{!85}
!85 = distinct !{!85, !46, !"XXH3_accumulate_512_avx2: argument 2:It4"}
!86 = !{!83, !41, !9}
!87 = !{!88, !85, !38, !43, !6}
!88 = distinct !{!88, !46, !"XXH3_accumulate_512_avx2: argument 0:It4"}
!89 = !{!85, !43}
!90 = !{!88, !83, !38, !41}
!91 = !{!92}
!92 = distinct !{!92, !46, !"XXH3_accumulate_512_avx2: argument 1:It5"}
!93 = !{!94}
!94 = distinct !{!94, !46, !"XXH3_accumulate_512_avx2: argument 2:It5"}
!95 = !{!92, !41, !9}
!96 = !{!97, !94, !38, !43, !6}
!97 = distinct !{!97, !46, !"XXH3_accumulate_512_avx2: argument 0:It5"}
!98 = !{!94, !43}
!99 = !{!97, !92, !38, !41}
!100 = !{!101}
!101 = distinct !{!101, !46, !"XXH3_accumulate_512_avx2: argument 1:It6"}
!102 = !{!103}
!103 = distinct !{!103, !46, !"XXH3_accumulate_512_avx2: argument 2:It6"}
!104 = !{!101, !41, !9}
!105 = !{!106, !103, !38, !43, !6}
!106 = distinct !{!106, !46, !"XXH3_accumulate_512_avx2: argument 0:It6"}
!107 = !{!103, !43}
!108 = !{!106, !101, !38, !41}
!109 = !{!110}
!110 = distinct !{!110, !46, !"XXH3_accumulate_512_avx2: argument 1:It7"}
!111 = !{!112}
!112 = distinct !{!112, !46, !"XXH3_accumulate_512_avx2: argument 2:It7"}
!113 = !{!110, !41, !9}
!114 = !{!115, !112, !38, !43, !6}
!115 = distinct !{!115, !46, !"XXH3_accumulate_512_avx2: argument 0:It7"}
!116 = !{!112, !43}
!117 = !{!115, !110, !38, !41}
!118 = !{!45, !38, !6}
!119 = !{!48, !50, !41, !43, !9}
!120 = !{!6, !9}
