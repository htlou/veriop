; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @target_raw_sofar8_600(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %5 = load i32, ptr %4, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %273

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %273

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 9
  br i1 %14, label %15, label %273

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %17 = load i64, ptr %16, align 32
  %18 = icmp eq i64 %17, 72
  %19 = icmp ne ptr %2, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %273

21:                                               ; preds = %15
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %25, label %273

25:                                               ; preds = %21
  %26 = ptrtoint ptr %0 to i64
  %27 = ptrtoint ptr %1 to i64
  %28 = add i64 %26, 576
  %29 = icmp ugt i64 %28, %27
  %30 = add i64 %27, 600
  %31 = icmp ugt i64 %30, %26
  %32 = and i1 %29, %31
  br i1 %32, label %273, label %33

33:                                               ; preds = %25
  %34 = ptrtoint ptr %2 to i64
  %35 = icmp ugt i64 %28, %34
  %36 = add i64 %34, 136
  %37 = icmp ugt i64 %36, %26
  %38 = and i1 %35, %37
  br i1 %38, label %273, label %39

39:                                               ; preds = %33
  %40 = icmp ugt i64 %30, %34
  %41 = icmp ugt i64 %36, %27
  %42 = and i1 %40, %41
  br i1 %42, label %273, label %43

43:                                               ; preds = %39
  %44 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %44)
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %46 = load i64, ptr %45, align 16
  %47 = add i64 %46, 600
  store i64 %47, ptr %45, align 16
  %48 = load <4 x i64>, ptr %0, align 32
  %49 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %50 = getelementptr inbounds nuw i8, ptr %23, i64 72
  %51 = load <4 x i64>, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %23, i64 104
  %53 = load <4 x i64>, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = load <4 x i64>, ptr %54, align 32
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %56, i32 0, i32 3, i32 1)
  %57 = load <4 x i64>, ptr %1, align 1
  %58 = load <4 x i64>, ptr %49, align 1
  %59 = xor <4 x i64> %58, %57
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, %60
  %63 = shufflevector <4 x i64> %57, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %64 = add <4 x i64> %48, %63
  %65 = add <4 x i64> %64, %62
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %67 = load <4 x i64>, ptr %66, align 1
  %68 = getelementptr inbounds nuw i8, ptr %23, i64 96
  %69 = load <4 x i64>, ptr %68, align 1
  %70 = xor <4 x i64> %69, %67
  %71 = lshr <4 x i64> %70, splat (i64 32)
  %72 = and <4 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, %71
  %74 = shufflevector <4 x i64> %67, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %75 = add <4 x i64> %55, %74
  %76 = add <4 x i64> %75, %73
  %77 = lshr <4 x i64> %65, splat (i64 47)
  %78 = xor <4 x i64> %51, %77
  %79 = xor <4 x i64> %78, %65
  %80 = lshr <4 x i64> %79, splat (i64 32)
  %81 = and <4 x i64> %79, splat (i64 4294967295)
  %82 = mul nuw <4 x i64> %81, splat (i64 2654435761)
  %83 = mul <4 x i64> %80, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %82, %83
  %85 = lshr <4 x i64> %76, splat (i64 47)
  %86 = xor <4 x i64> %53, %85
  %87 = xor <4 x i64> %86, %76
  %88 = lshr <4 x i64> %87, splat (i64 32)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, splat (i64 2654435761)
  %91 = mul <4 x i64> %88, splat (i64 -7046029290881679360)
  %92 = add <4 x i64> %90, %91
  store <4 x i64> %84, ptr %0, align 32
  store <4 x i64> %92, ptr %54, align 32
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
  %102 = add <4 x i64> %84, %101
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
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %256, ptr %0, align 32
  store <4 x i64> %267, ptr %268, align 32
  store i64 8, ptr %8, align 8
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 576
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %271 = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %270, ptr noundef nonnull readonly align 1 dereferenceable(64) %271, i64 64, i1 false)
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %272, ptr noundef nonnull readonly align 1 dereferenceable(24) %269, i64 range(i64 -9223372036854775808, 257) 24, i1 false)
  store i32 24, ptr %4, align 64
  br label %273

273:                                              ; preds = %3, %7, %11, %15, %21, %25, %33, %39, %43
  %274 = phi i32 [ 0, %43 ], [ -1, %39 ], [ -1, %33 ], [ -1, %25 ], [ -1, %21 ], [ -1, %15 ], [ -1, %11 ], [ -1, %7 ], [ -1, %3 ]
  ret i32 %274
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
!10 = !{!11, !13, !15, !6}
!11 = distinct !{!11, !12, !"XXH3_accumulate_512_avx2: argument 0"}
!12 = distinct !{!12, !"XXH3_accumulate_512_avx2"}
!13 = distinct !{!13, !14, !"XXH3_accumulate_avx2: argument 0"}
!14 = distinct !{!14, !"XXH3_accumulate_avx2"}
!15 = distinct !{!15, !16, !"XXH3_consumeStripes: argument 0"}
!16 = distinct !{!16, !"XXH3_consumeStripes"}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !9}
!18 = distinct !{!18, !12, !"XXH3_accumulate_512_avx2: argument 1"}
!19 = distinct !{!19, !12, !"XXH3_accumulate_512_avx2: argument 2"}
!20 = distinct !{!20, !14, !"XXH3_accumulate_avx2: argument 1"}
!21 = distinct !{!21, !14, !"XXH3_accumulate_avx2: argument 2"}
!22 = distinct !{!22, !16, !"XXH3_consumeStripes: argument 1"}
!23 = distinct !{!23, !16, !"XXH3_consumeStripes: argument 2"}
!24 = distinct !{!24, !16, !"XXH3_consumeStripes: argument 3"}
!25 = !{!15}
!26 = !{!22}
!27 = !{!23}
!28 = !{!24}
!29 = !{!30, !24}
!30 = distinct !{!30, !31, !"XXH3_scrambleAcc_avx2: argument 1"}
!31 = distinct !{!31, !"XXH3_scrambleAcc_avx2"}
!32 = !{!33, !15, !22, !23}
!33 = distinct !{!33, !31, !"XXH3_scrambleAcc_avx2: argument 0"}
!34 = !{!15, !6}
!35 = !{!22, !23, !24, !9}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_accumulate_avx2: argument 1"}
!38 = distinct !{!38, !"XXH3_accumulate_avx2"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"XXH3_accumulate_avx2: argument 2"}
!41 = !{!40, !22, !24}
!42 = !{!43}
!43 = distinct !{!43, !44, !"XXH3_accumulate_512_avx2: argument 1"}
!44 = distinct !{!44, !"XXH3_accumulate_512_avx2"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"XXH3_accumulate_512_avx2: argument 2"}
!47 = !{!43, !37, !23, !9}
!48 = !{!49, !46, !50, !40, !15, !22, !24, !6}
!49 = distinct !{!49, !44, !"XXH3_accumulate_512_avx2: argument 0"}
!50 = distinct !{!50, !38, !"XXH3_accumulate_avx2: argument 0"}
!51 = !{!46, !40, !24}
!52 = !{!49, !43, !50, !37, !15, !22, !23}
!53 = !{!33}
!54 = !{!30}
!55 = !{!33, !15, !6}
!56 = !{!30, !22, !23, !24, !9}
!57 = !{!13}
!58 = !{!20}
!59 = !{!21}
!60 = !{!21, !22, !24}
!61 = !{!11}
!62 = !{!18}
!63 = !{!19}
!64 = !{!18, !20, !23, !9}
!65 = !{!11, !19, !13, !21, !15, !22, !24, !6}
!66 = !{!19, !21, !24}
!67 = !{!11, !18, !13, !20, !15, !22, !23}
!68 = !{!69}
!69 = distinct !{!69, !12, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!70 = !{!71}
!71 = distinct !{!71, !12, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!72 = !{!69, !20, !23, !9}
!73 = !{!74, !71, !13, !21, !15, !22, !24, !6}
!74 = distinct !{!74, !12, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!75 = !{!71, !21, !24}
!76 = !{!74, !69, !13, !20, !15, !22, !23}
!77 = !{!78}
!78 = distinct !{!78, !12, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!79 = !{!80}
!80 = distinct !{!80, !12, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!81 = !{!78, !20, !23, !9}
!82 = !{!83, !80, !13, !21, !15, !22, !24, !6}
!83 = distinct !{!83, !12, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!84 = !{!80, !21, !24}
!85 = !{!83, !78, !13, !20, !15, !22, !23}
!86 = !{!87}
!87 = distinct !{!87, !12, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!88 = !{!89}
!89 = distinct !{!89, !12, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!90 = !{!87, !20, !23, !9}
!91 = !{!92, !89, !13, !21, !15, !22, !24, !6}
!92 = distinct !{!92, !12, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!93 = !{!89, !21, !24}
!94 = !{!92, !87, !13, !20, !15, !22, !23}
!95 = !{!96}
!96 = distinct !{!96, !12, !"XXH3_accumulate_512_avx2: argument 1:It4"}
!97 = !{!98}
!98 = distinct !{!98, !12, !"XXH3_accumulate_512_avx2: argument 2:It4"}
!99 = !{!96, !20, !23, !9}
!100 = !{!101, !98, !13, !21, !15, !22, !24, !6}
!101 = distinct !{!101, !12, !"XXH3_accumulate_512_avx2: argument 0:It4"}
!102 = !{!98, !21, !24}
!103 = !{!101, !96, !13, !20, !15, !22, !23}
!104 = !{!105}
!105 = distinct !{!105, !12, !"XXH3_accumulate_512_avx2: argument 1:It5"}
!106 = !{!107}
!107 = distinct !{!107, !12, !"XXH3_accumulate_512_avx2: argument 2:It5"}
!108 = !{!105, !20, !23, !9}
!109 = !{!110, !107, !13, !21, !15, !22, !24, !6}
!110 = distinct !{!110, !12, !"XXH3_accumulate_512_avx2: argument 0:It5"}
!111 = !{!107, !21, !24}
!112 = !{!110, !105, !13, !20, !15, !22, !23}
!113 = !{!114}
!114 = distinct !{!114, !12, !"XXH3_accumulate_512_avx2: argument 1:It6"}
!115 = !{!116}
!116 = distinct !{!116, !12, !"XXH3_accumulate_512_avx2: argument 2:It6"}
!117 = !{!114, !20, !23, !9}
!118 = !{!119, !116, !13, !21, !15, !22, !24, !6}
!119 = distinct !{!119, !12, !"XXH3_accumulate_512_avx2: argument 0:It6"}
!120 = !{!116, !21, !24}
!121 = !{!119, !114, !13, !20, !15, !22, !23}
!122 = !{!123}
!123 = distinct !{!123, !12, !"XXH3_accumulate_512_avx2: argument 1:It7"}
!124 = !{!125}
!125 = distinct !{!125, !12, !"XXH3_accumulate_512_avx2: argument 2:It7"}
!126 = !{!123, !20, !23, !9}
!127 = !{!128, !125, !13, !21, !15, !22, !24, !6}
!128 = distinct !{!128, !12, !"XXH3_accumulate_512_avx2: argument 0:It7"}
!129 = !{!125, !21, !24}
!130 = !{!128, !123, !13, !20, !15, !22, !23}
!131 = !{!22, !6}
!132 = !{!15, !23, !24, !9}
!133 = !{!6, !9}
