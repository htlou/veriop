; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/16f728f/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/16f728f/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_stream_100_200(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca <4 x i64>, align 32
  %3 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(512) %5, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %3, align 64
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %9, align 32
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store ptr @XXH3_kSecret, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 16, ptr %15, align 8
  %16 = icmp eq ptr %0, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 200, ptr %19, align 32
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(200) %21, ptr noundef nonnull readonly align 1 dereferenceable(200) %18, i64 range(i64 100, 201) 200, i1 false)
  %22 = load i32, ptr %20, align 64
  %23 = add i32 %22, 200
  store i32 %23, ptr %20, align 64
  %24 = load ptr, ptr %13, align 8
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %4, ptr %24
  br label %382

27:                                               ; preds = %1
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %29, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 201) 100, i1 false)
  store i32 100, ptr %28, align 64
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 300, ptr %31, align 32
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %34, ptr noundef nonnull readonly align 1 dereferenceable(156) %30, i64 156, i1 false)
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 528
  %37 = load i64, ptr %15, align 8
  %38 = load i64, ptr %14, align 8
  %39 = load i64, ptr %36, align 16
  %40 = sub i64 %37, %39
  %41 = icmp ugt i64 %40, 4
  %42 = shl i64 %39, 3
  %43 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %42
  br i1 %41, label %150, label %44

44:                                               ; preds = %27
  %45 = icmp eq i64 %37, %39
  %46 = load <4 x i64>, ptr %3, align 64
  %47 = load <4 x i64>, ptr %9, align 32
  br i1 %45, label %83, label %48

48:                                               ; preds = %44, %48
  %49 = phi <4 x i64> [ %80, %48 ], [ %47, %44 ]
  %50 = phi <4 x i64> [ %67, %48 ], [ %46, %44 ]
  %51 = phi i64 [ %81, %48 ], [ 0, %44 ]
  %52 = shl i64 %51, 6
  %53 = getelementptr inbounds nuw i8, ptr %33, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %54, i32 0, i32 3, i32 1)
  %55 = shl i64 %51, 3
  %56 = getelementptr inbounds nuw i8, ptr %43, i64 %55
  %57 = load <4 x i64>, ptr %53, align 64
  %58 = load <4 x i64>, ptr %56, align 8
  %59 = xor <4 x i64> %58, %57
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %59, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = add <4 x i64> %57, %50
  %67 = add <4 x i64> %66, %65
  %68 = getelementptr inbounds nuw i8, ptr %53, i64 32
  %69 = load <4 x i64>, ptr %68, align 32
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 32
  %71 = load <4 x i64>, ptr %70, align 8
  %72 = xor <4 x i64> %71, %69
  %73 = bitcast <4 x i64> %72 to <8 x i32>
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = and <4 x i64> %72, splat (i64 4294967295)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = add <4 x i64> %69, %49
  %80 = add <4 x i64> %79, %78
  %81 = add nuw i64 %51, 1
  %82 = icmp eq i64 %81, %40
  br i1 %82, label %83, label %48

83:                                               ; preds = %48, %44
  %84 = phi <4 x i64> [ %47, %44 ], [ %80, %48 ]
  %85 = phi <4 x i64> [ %46, %44 ], [ %67, %48 ]
  %86 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %38
  %87 = lshr <4 x i64> %85, splat (i64 47)
  %88 = load <4 x i64>, ptr %86, align 1
  %89 = xor <4 x i64> %87, %88
  %90 = xor <4 x i64> %89, %85
  %91 = bitcast <4 x i64> %90 to <8 x i32>
  %92 = shufflevector <8 x i32> %91, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %93 = bitcast <8 x i32> %92 to <4 x i64>
  %94 = and <4 x i64> %90, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, splat (i64 2654435761)
  %96 = mul <4 x i64> %93, splat (i64 -7046029290881679360)
  %97 = add <4 x i64> %96, %95
  store <4 x i64> %97, ptr %3, align 64
  %98 = lshr <4 x i64> %84, splat (i64 47)
  %99 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %100 = load <4 x i64>, ptr %99, align 1
  %101 = xor <4 x i64> %98, %100
  %102 = xor <4 x i64> %101, %84
  %103 = bitcast <4 x i64> %102 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = and <4 x i64> %102, splat (i64 4294967295)
  %107 = mul nuw <4 x i64> %106, splat (i64 2654435761)
  %108 = mul <4 x i64> %105, splat (i64 -7046029290881679360)
  %109 = add <4 x i64> %108, %107
  store <4 x i64> %109, ptr %9, align 32
  %110 = shl nuw nsw i64 %40, 6
  %111 = getelementptr inbounds nuw i8, ptr %33, i64 %110
  %112 = sub nuw nsw i64 4, %40
  %113 = icmp eq i64 %40, 4
  br i1 %113, label %260, label %114

114:                                              ; preds = %83, %114
  %115 = phi <4 x i64> [ %146, %114 ], [ %109, %83 ]
  %116 = phi <4 x i64> [ %133, %114 ], [ %97, %83 ]
  %117 = phi i64 [ %147, %114 ], [ 0, %83 ]
  %118 = shl i64 %117, 6
  %119 = getelementptr inbounds nuw i8, ptr %111, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %120, i32 0, i32 3, i32 1)
  %121 = shl i64 %117, 3
  %122 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %121
  %123 = load <4 x i64>, ptr %119, align 64
  %124 = load <4 x i64>, ptr %122, align 8
  %125 = xor <4 x i64> %124, %123
  %126 = bitcast <4 x i64> %125 to <8 x i32>
  %127 = shufflevector <8 x i32> %126, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %128 = bitcast <8 x i32> %127 to <4 x i64>
  %129 = and <4 x i64> %125, splat (i64 4294967295)
  %130 = and <4 x i64> %128, splat (i64 4294967295)
  %131 = mul nuw <4 x i64> %130, %129
  %132 = add <4 x i64> %123, %116
  %133 = add <4 x i64> %132, %131
  %134 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %135 = load <4 x i64>, ptr %134, align 32
  %136 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %137 = load <4 x i64>, ptr %136, align 8
  %138 = xor <4 x i64> %137, %135
  %139 = bitcast <4 x i64> %138 to <8 x i32>
  %140 = shufflevector <8 x i32> %139, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %141 = bitcast <8 x i32> %140 to <4 x i64>
  %142 = and <4 x i64> %138, splat (i64 4294967295)
  %143 = and <4 x i64> %141, splat (i64 4294967295)
  %144 = mul nuw <4 x i64> %143, %142
  %145 = add <4 x i64> %135, %115
  %146 = add <4 x i64> %145, %144
  %147 = add nuw i64 %117, 1
  %148 = icmp eq i64 %147, %112
  br i1 %148, label %149, label %114

149:                                              ; preds = %114
  store <4 x i64> %133, ptr %3, align 64
  store <4 x i64> %146, ptr %9, align 32
  br label %260

150:                                              ; preds = %27
  %151 = load <4 x i64>, ptr %3, align 64
  %152 = load <4 x i64>, ptr %9, align 32
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %153, i32 0, i32 3, i32 1)
  %154 = load <4 x i64>, ptr %33, align 64
  %155 = load <4 x i64>, ptr %43, align 8
  %156 = xor <4 x i64> %155, %154
  %157 = bitcast <4 x i64> %156 to <8 x i32>
  %158 = shufflevector <8 x i32> %157, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %159 = bitcast <8 x i32> %158 to <4 x i64>
  %160 = and <4 x i64> %156, splat (i64 4294967295)
  %161 = and <4 x i64> %159, splat (i64 4294967295)
  %162 = mul nuw <4 x i64> %161, %160
  %163 = add <4 x i64> %154, %151
  %164 = add <4 x i64> %163, %162
  %165 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %166 = load <4 x i64>, ptr %165, align 32
  %167 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %168 = load <4 x i64>, ptr %167, align 8
  %169 = xor <4 x i64> %168, %166
  %170 = bitcast <4 x i64> %169 to <8 x i32>
  %171 = shufflevector <8 x i32> %170, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %172 = bitcast <8 x i32> %171 to <4 x i64>
  %173 = and <4 x i64> %169, splat (i64 4294967295)
  %174 = and <4 x i64> %172, splat (i64 4294967295)
  %175 = mul nuw <4 x i64> %174, %173
  %176 = add <4 x i64> %166, %152
  %177 = add <4 x i64> %176, %175
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %179, i32 0, i32 3, i32 1)
  %180 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %181 = load <4 x i64>, ptr %178, align 64
  %182 = load <4 x i64>, ptr %180, align 8
  %183 = xor <4 x i64> %182, %181
  %184 = bitcast <4 x i64> %183 to <8 x i32>
  %185 = shufflevector <8 x i32> %184, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %186 = bitcast <8 x i32> %185 to <4 x i64>
  %187 = and <4 x i64> %183, splat (i64 4294967295)
  %188 = and <4 x i64> %186, splat (i64 4294967295)
  %189 = mul nuw <4 x i64> %188, %187
  %190 = add <4 x i64> %164, %181
  %191 = add <4 x i64> %190, %189
  %192 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %193 = load <4 x i64>, ptr %192, align 32
  %194 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %195 = load <4 x i64>, ptr %194, align 8
  %196 = xor <4 x i64> %195, %193
  %197 = bitcast <4 x i64> %196 to <8 x i32>
  %198 = shufflevector <8 x i32> %197, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %199 = bitcast <8 x i32> %198 to <4 x i64>
  %200 = and <4 x i64> %196, splat (i64 4294967295)
  %201 = and <4 x i64> %199, splat (i64 4294967295)
  %202 = mul nuw <4 x i64> %201, %200
  %203 = add <4 x i64> %177, %193
  %204 = add <4 x i64> %203, %202
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %206, i32 0, i32 3, i32 1)
  %207 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %208 = load <4 x i64>, ptr %205, align 64
  %209 = load <4 x i64>, ptr %207, align 8
  %210 = xor <4 x i64> %209, %208
  %211 = bitcast <4 x i64> %210 to <8 x i32>
  %212 = shufflevector <8 x i32> %211, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %213 = bitcast <8 x i32> %212 to <4 x i64>
  %214 = and <4 x i64> %210, splat (i64 4294967295)
  %215 = and <4 x i64> %213, splat (i64 4294967295)
  %216 = mul nuw <4 x i64> %215, %214
  %217 = add <4 x i64> %191, %208
  %218 = add <4 x i64> %217, %216
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %220 = load <4 x i64>, ptr %219, align 32
  %221 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %222 = load <4 x i64>, ptr %221, align 8
  %223 = xor <4 x i64> %222, %220
  %224 = bitcast <4 x i64> %223 to <8 x i32>
  %225 = shufflevector <8 x i32> %224, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %226 = bitcast <8 x i32> %225 to <4 x i64>
  %227 = and <4 x i64> %223, splat (i64 4294967295)
  %228 = and <4 x i64> %226, splat (i64 4294967295)
  %229 = mul nuw <4 x i64> %228, %227
  %230 = add <4 x i64> %204, %220
  %231 = add <4 x i64> %230, %229
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %233, i32 0, i32 3, i32 1)
  %234 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %235 = load <4 x i64>, ptr %232, align 64
  %236 = load <4 x i64>, ptr %234, align 8
  %237 = xor <4 x i64> %236, %235
  %238 = bitcast <4 x i64> %237 to <8 x i32>
  %239 = shufflevector <8 x i32> %238, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %240 = bitcast <8 x i32> %239 to <4 x i64>
  %241 = and <4 x i64> %237, splat (i64 4294967295)
  %242 = and <4 x i64> %240, splat (i64 4294967295)
  %243 = mul nuw <4 x i64> %242, %241
  %244 = add <4 x i64> %218, %235
  %245 = add <4 x i64> %244, %243
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 480
  %247 = load <4 x i64>, ptr %246, align 32
  %248 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %249 = load <4 x i64>, ptr %248, align 8
  %250 = xor <4 x i64> %249, %247
  %251 = bitcast <4 x i64> %250 to <8 x i32>
  %252 = shufflevector <8 x i32> %251, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %253 = bitcast <8 x i32> %252 to <4 x i64>
  %254 = and <4 x i64> %250, splat (i64 4294967295)
  %255 = and <4 x i64> %253, splat (i64 4294967295)
  %256 = mul nuw <4 x i64> %255, %254
  %257 = add <4 x i64> %231, %247
  %258 = add <4 x i64> %257, %256
  store <4 x i64> %245, ptr %3, align 64
  store <4 x i64> %258, ptr %9, align 32
  %259 = add i64 %39, 4
  br label %260

260:                                              ; preds = %83, %149, %150
  %261 = phi i64 [ %259, %150 ], [ 0, %83 ], [ %112, %149 ]
  store i64 %261, ptr %36, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %33, ptr noundef nonnull readonly align 1 dereferenceable(44) %35, i64 44, i1 false)
  %262 = load i64, ptr %31, align 32
  store i32 44, ptr %32, align 64
  %263 = load ptr, ptr %13, align 8
  %264 = icmp eq ptr %263, null
  %265 = select i1 %264, ptr %4, ptr %263
  %266 = icmp ugt i64 %262, 240
  br i1 %266, label %267, label %382

267:                                              ; preds = %260
  %268 = load <4 x i64>, ptr %3, align 64
  %269 = load <4 x i64>, ptr %9, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  %270 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %271 = getelementptr inbounds nuw i8, ptr %3, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %271, i64 20, i1 false)
  %272 = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %272, ptr noundef nonnull align 64 dereferenceable(12) %270, i64 12, i1 false)
  %273 = getelementptr inbounds nuw i8, ptr %3, i64 268
  %274 = load <4 x i64>, ptr %273, align 4
  %275 = load i64, ptr %14, align 8
  %276 = getelementptr inbounds nuw i8, ptr %265, i64 %275
  %277 = getelementptr inbounds i8, ptr %276, i64 -7
  %278 = load <4 x i64>, ptr %2, align 32
  %279 = load <4 x i64>, ptr %277, align 1
  %280 = getelementptr inbounds nuw i8, ptr %276, i64 25
  %281 = load <4 x i64>, ptr %280, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  %282 = add <4 x i64> %274, %269
  %283 = xor <4 x i64> %281, %274
  %284 = bitcast <4 x i64> %283 to <8 x i32>
  %285 = shufflevector <8 x i32> %284, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %286 = bitcast <8 x i32> %285 to <4 x i64>
  %287 = and <4 x i64> %286, splat (i64 4294967295)
  %288 = and <4 x i64> %283, splat (i64 4294967295)
  %289 = mul nuw <4 x i64> %287, %288
  %290 = add <4 x i64> %282, %289
  %291 = add <4 x i64> %278, %268
  %292 = xor <4 x i64> %279, %278
  %293 = bitcast <4 x i64> %292 to <8 x i32>
  %294 = shufflevector <8 x i32> %293, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %295 = bitcast <8 x i32> %294 to <4 x i64>
  %296 = and <4 x i64> %295, splat (i64 4294967295)
  %297 = and <4 x i64> %292, splat (i64 4294967295)
  %298 = mul nuw <4 x i64> %296, %297
  %299 = add <4 x i64> %291, %298
  %300 = getelementptr inbounds nuw i8, ptr %3, i64 75
  %301 = getelementptr inbounds nuw i8, ptr %263, i64 11
  %302 = select i1 %264, ptr %300, ptr %301
  %303 = mul i64 %262, -7046029288634856825
  %304 = extractelement <4 x i64> %299, i64 0
  %305 = extractelement <4 x i64> %299, i64 1
  %306 = load i64, ptr %302, align 1
  %307 = getelementptr inbounds nuw i8, ptr %3, i64 83
  %308 = getelementptr i8, ptr %263, i64 19
  %309 = select i1 %264, ptr %307, ptr %308
  %310 = load i64, ptr %309, align 1
  %311 = xor i64 %306, %304
  %312 = xor i64 %310, %305
  %313 = zext i64 %311 to i128
  %314 = zext i64 %312 to i128
  %315 = mul nuw i128 %314, %313
  %316 = lshr i128 %315, 64
  %317 = xor i128 %316, %315
  %318 = trunc i128 %317 to i64
  %319 = add i64 %303, %318
  %320 = getelementptr inbounds nuw i8, ptr %3, i64 91
  %321 = getelementptr inbounds nuw i8, ptr %263, i64 27
  %322 = select i1 %264, ptr %320, ptr %321
  %323 = extractelement <4 x i64> %299, i64 2
  %324 = extractelement <4 x i64> %299, i64 3
  %325 = load i64, ptr %322, align 1
  %326 = getelementptr inbounds nuw i8, ptr %3, i64 99
  %327 = getelementptr i8, ptr %263, i64 35
  %328 = select i1 %264, ptr %326, ptr %327
  %329 = load i64, ptr %328, align 1
  %330 = xor i64 %325, %323
  %331 = xor i64 %329, %324
  %332 = zext i64 %330 to i128
  %333 = zext i64 %331 to i128
  %334 = mul nuw i128 %333, %332
  %335 = lshr i128 %334, 64
  %336 = xor i128 %335, %334
  %337 = trunc i128 %336 to i64
  %338 = add i64 %319, %337
  %339 = getelementptr inbounds nuw i8, ptr %3, i64 107
  %340 = getelementptr inbounds nuw i8, ptr %263, i64 43
  %341 = select i1 %264, ptr %339, ptr %340
  %342 = extractelement <4 x i64> %290, i64 0
  %343 = extractelement <4 x i64> %290, i64 1
  %344 = load i64, ptr %341, align 1
  %345 = getelementptr inbounds nuw i8, ptr %3, i64 115
  %346 = getelementptr i8, ptr %263, i64 51
  %347 = select i1 %264, ptr %345, ptr %346
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %344, %342
  %350 = xor i64 %348, %343
  %351 = zext i64 %349 to i128
  %352 = zext i64 %350 to i128
  %353 = mul nuw i128 %352, %351
  %354 = lshr i128 %353, 64
  %355 = xor i128 %354, %353
  %356 = trunc i128 %355 to i64
  %357 = add i64 %338, %356
  %358 = getelementptr inbounds nuw i8, ptr %3, i64 123
  %359 = getelementptr inbounds nuw i8, ptr %263, i64 59
  %360 = select i1 %264, ptr %358, ptr %359
  %361 = extractelement <4 x i64> %290, i64 2
  %362 = extractelement <4 x i64> %290, i64 3
  %363 = load i64, ptr %360, align 1
  %364 = getelementptr inbounds nuw i8, ptr %3, i64 131
  %365 = getelementptr i8, ptr %263, i64 67
  %366 = select i1 %264, ptr %364, ptr %365
  %367 = load i64, ptr %366, align 1
  %368 = xor i64 %363, %361
  %369 = xor i64 %367, %362
  %370 = zext i64 %368 to i128
  %371 = zext i64 %369 to i128
  %372 = mul nuw i128 %371, %370
  %373 = lshr i128 %372, 64
  %374 = xor i128 %373, %372
  %375 = trunc i128 %374 to i64
  %376 = add i64 %357, %375
  %377 = lshr i64 %376, 37
  %378 = xor i64 %377, %376
  %379 = mul i64 %378, 1609587791953885689
  %380 = lshr i64 %379, 32
  %381 = xor i64 %380, %379
  br label %1458

382:                                              ; preds = %17, %260
  %383 = phi ptr [ %26, %17 ], [ %265, %260 ]
  %384 = phi i1 [ %25, %17 ], [ %264, %260 ]
  %385 = phi ptr [ %24, %17 ], [ %263, %260 ]
  %386 = phi i64 [ 200, %17 ], [ %262, %260 ]
  %387 = getelementptr inbounds nuw i8, ptr %3, i64 552
  %388 = load i64, ptr %387, align 8
  %389 = icmp eq i64 %388, 0
  %390 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %391 = icmp samesign ult i64 %386, 17
  br i1 %389, label %864, label %392

392:                                              ; preds = %382
  br i1 %391, label %393, label %483

393:                                              ; preds = %392
  %394 = icmp samesign ugt i64 %386, 8
  br i1 %394, label %395, label %419, !prof !126

395:                                              ; preds = %393
  %396 = add i64 %388, 7458650908927343033
  %397 = sub i64 -5812251307325107654, %388
  %398 = load i64, ptr %390, align 64
  %399 = xor i64 %398, %396
  %400 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %401 = getelementptr inbounds i8, ptr %400, i64 -8
  %402 = load i64, ptr %401, align 1
  %403 = xor i64 %402, %397
  %404 = tail call noundef i64 @llvm.bswap.i64(i64 %399)
  %405 = add i64 %404, %386
  %406 = add i64 %405, %403
  %407 = zext i64 %399 to i128
  %408 = zext i64 %403 to i128
  %409 = mul nuw i128 %408, %407
  %410 = lshr i128 %409, 64
  %411 = xor i128 %410, %409
  %412 = trunc i128 %411 to i64
  %413 = add i64 %406, %412
  %414 = lshr i64 %413, 37
  %415 = xor i64 %414, %413
  %416 = mul i64 %415, 1609587791953885689
  %417 = lshr i64 %416, 32
  %418 = xor i64 %417, %416
  br label %1458

419:                                              ; preds = %393
  %420 = icmp samesign ugt i64 %386, 3
  br i1 %420, label %421, label %448, !prof !126

421:                                              ; preds = %419
  %422 = trunc i64 %388 to i32
  %423 = tail call noundef i32 @llvm.bswap.i32(i32 %422)
  %424 = zext i32 %423 to i64
  %425 = shl nuw i64 %424, 32
  %426 = xor i64 %425, %388
  %427 = load i32, ptr %390, align 64
  %428 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %429 = getelementptr inbounds i8, ptr %428, i64 -4
  %430 = load i32, ptr %429, align 1
  %431 = sub i64 -4090762196417718878, %426
  %432 = zext i32 %430 to i64
  %433 = zext i32 %427 to i64
  %434 = shl nuw i64 %433, 32
  %435 = or disjoint i64 %434, %432
  %436 = xor i64 %435, %431
  %437 = tail call i64 @llvm.fshl.i64(i64 %436, i64 %436, i64 49)
  %438 = tail call i64 @llvm.fshl.i64(i64 %436, i64 %436, i64 24)
  %439 = xor i64 %438, %437
  %440 = xor i64 %439, %436
  %441 = mul i64 %440, -6939452855193903323
  %442 = lshr i64 %441, 35
  %443 = add nuw nsw i64 %442, %386
  %444 = xor i64 %443, %441
  %445 = mul i64 %444, -6939452855193903323
  %446 = lshr i64 %445, 28
  %447 = xor i64 %446, %445
  br label %1458

448:                                              ; preds = %419
  %449 = icmp eq i64 %386, 0
  br i1 %449, label %475, label %450

450:                                              ; preds = %448
  %451 = load i8, ptr %390, align 64
  %452 = lshr i64 %386, 1
  %453 = getelementptr inbounds nuw i8, ptr %390, i64 %452
  %454 = load i8, ptr %453, align 1
  %455 = getelementptr i8, ptr %390, i64 %386
  %456 = getelementptr i8, ptr %455, i64 -1
  %457 = load i8, ptr %456, align 1
  %458 = zext i8 %451 to i64
  %459 = shl nuw nsw i64 %458, 16
  %460 = zext i8 %454 to i64
  %461 = shl nuw nsw i64 %460, 24
  %462 = zext i8 %457 to i64
  %463 = shl nuw nsw i64 %386, 8
  %464 = or disjoint i64 %459, %463
  %465 = or disjoint i64 %464, %461
  %466 = or disjoint i64 %465, %462
  %467 = add i64 %388, 2267503259
  %468 = xor i64 %466, %467
  %469 = mul i64 %468, -7046029288634856825
  %470 = lshr i64 %469, 37
  %471 = xor i64 %470, %469
  %472 = mul i64 %471, 1609587791953885689
  %473 = lshr i64 %472, 32
  %474 = xor i64 %473, %472
  br label %1458

475:                                              ; preds = %448
  %476 = add i64 %388, -7046029288634856825
  %477 = xor i64 %476, -8707998980786479652
  %478 = lshr i64 %477, 37
  %479 = xor i64 %478, %477
  %480 = mul i64 %479, 1609587791953885689
  %481 = lshr i64 %480, 32
  %482 = xor i64 %481, %480
  br label %1458

483:                                              ; preds = %392
  %484 = icmp samesign ult i64 %386, 129
  br i1 %484, label %485, label %627

485:                                              ; preds = %483
  %486 = mul i64 %386, -7046029288634856825
  %487 = icmp samesign ugt i64 %386, 32
  br i1 %487, label %488, label %590

488:                                              ; preds = %485
  %489 = icmp samesign ugt i64 %386, 64
  br i1 %489, label %490, label %557

490:                                              ; preds = %488
  %491 = icmp samesign ugt i64 %386, 96
  br i1 %491, label %492, label %524

492:                                              ; preds = %490
  %493 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %494 = load i64, ptr %493, align 16
  %495 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %496 = load i64, ptr %495, align 8
  %497 = add i64 %388, 4554437623014685352
  %498 = xor i64 %494, %497
  %499 = sub i64 2111919702937427193, %388
  %500 = xor i64 %496, %499
  %501 = zext i64 %498 to i128
  %502 = zext i64 %500 to i128
  %503 = mul nuw i128 %502, %501
  %504 = lshr i128 %503, 64
  %505 = xor i128 %504, %503
  %506 = trunc i128 %505 to i64
  %507 = add i64 %486, %506
  %508 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %509 = getelementptr inbounds i8, ptr %508, i64 -64
  %510 = load i64, ptr %509, align 1
  %511 = getelementptr i8, ptr %508, i64 -56
  %512 = load i64, ptr %511, align 1
  %513 = add i64 %388, 3556072174620004746
  %514 = xor i64 %510, %513
  %515 = sub i64 7238261902898274248, %388
  %516 = xor i64 %512, %515
  %517 = zext i64 %514 to i128
  %518 = zext i64 %516 to i128
  %519 = mul nuw i128 %518, %517
  %520 = lshr i128 %519, 64
  %521 = xor i128 %520, %519
  %522 = trunc i128 %521 to i64
  %523 = add i64 %507, %522
  br label %524

524:                                              ; preds = %492, %490
  %525 = phi i64 [ %523, %492 ], [ %486, %490 ]
  %526 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %527 = load i64, ptr %526, align 32
  %528 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %529 = load i64, ptr %528, align 8
  %530 = add i64 %388, -3818837453329782724
  %531 = xor i64 %527, %530
  %532 = sub i64 -6688317018830679928, %388
  %533 = xor i64 %529, %532
  %534 = zext i64 %531 to i128
  %535 = zext i64 %533 to i128
  %536 = mul nuw i128 %535, %534
  %537 = lshr i128 %536, 64
  %538 = xor i128 %537, %536
  %539 = trunc i128 %538 to i64
  %540 = add i64 %525, %539
  %541 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %542 = getelementptr inbounds i8, ptr %541, i64 -48
  %543 = load i64, ptr %542, align 1
  %544 = getelementptr i8, ptr %541, i64 -40
  %545 = load i64, ptr %544, align 1
  %546 = add i64 %388, 5690594596133299313
  %547 = xor i64 %543, %546
  %548 = sub i64 -2833645246901970632, %388
  %549 = xor i64 %545, %548
  %550 = zext i64 %547 to i128
  %551 = zext i64 %549 to i128
  %552 = mul nuw i128 %551, %550
  %553 = lshr i128 %552, 64
  %554 = xor i128 %553, %552
  %555 = trunc i128 %554 to i64
  %556 = add i64 %540, %555
  br label %557

557:                                              ; preds = %524, %488
  %558 = phi i64 [ %556, %524 ], [ %486, %488 ]
  %559 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %560 = load i64, ptr %559, align 16
  %561 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %562 = load i64, ptr %561, align 8
  %563 = add i64 %388, 8711581037947681227
  %564 = xor i64 %560, %563
  %565 = sub i64 2410270004345854594, %388
  %566 = xor i64 %562, %565
  %567 = zext i64 %564 to i128
  %568 = zext i64 %566 to i128
  %569 = mul nuw i128 %568, %567
  %570 = lshr i128 %569, 64
  %571 = xor i128 %570, %569
  %572 = trunc i128 %571 to i64
  %573 = add i64 %558, %572
  %574 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %575 = getelementptr inbounds i8, ptr %574, i64 -32
  %576 = load i64, ptr %575, align 1
  %577 = getelementptr i8, ptr %574, i64 -24
  %578 = load i64, ptr %577, align 1
  %579 = add i64 %388, -8204357891075471176
  %580 = xor i64 %576, %579
  %581 = sub i64 5487137525590930912, %388
  %582 = xor i64 %578, %581
  %583 = zext i64 %580 to i128
  %584 = zext i64 %582 to i128
  %585 = mul nuw i128 %584, %583
  %586 = lshr i128 %585, 64
  %587 = xor i128 %586, %585
  %588 = trunc i128 %587 to i64
  %589 = add i64 %573, %588
  br label %590

590:                                              ; preds = %557, %485
  %591 = phi i64 [ %589, %557 ], [ %486, %485 ]
  %592 = load i64, ptr %390, align 64
  %593 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %594 = load i64, ptr %593, align 8
  %595 = add i64 %388, -4734510112055689544
  %596 = xor i64 %592, %595
  %597 = sub i64 2066345149520216444, %388
  %598 = xor i64 %594, %597
  %599 = zext i64 %596 to i128
  %600 = zext i64 %598 to i128
  %601 = mul nuw i128 %600, %599
  %602 = lshr i128 %601, 64
  %603 = xor i128 %602, %601
  %604 = trunc i128 %603 to i64
  %605 = add i64 %591, %604
  %606 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %607 = getelementptr inbounds i8, ptr %606, i64 -16
  %608 = load i64, ptr %607, align 1
  %609 = getelementptr i8, ptr %606, i64 -8
  %610 = load i64, ptr %609, align 1
  %611 = add i64 %388, -2623469361688619810
  %612 = xor i64 %608, %611
  %613 = sub i64 2262974939099578482, %388
  %614 = xor i64 %610, %613
  %615 = zext i64 %612 to i128
  %616 = zext i64 %614 to i128
  %617 = mul nuw i128 %616, %615
  %618 = lshr i128 %617, 64
  %619 = xor i128 %618, %617
  %620 = trunc i128 %619 to i64
  %621 = add i64 %605, %620
  %622 = lshr i64 %621, 37
  %623 = xor i64 %622, %621
  %624 = mul i64 %623, 1609587791953885689
  %625 = lshr i64 %624, 32
  %626 = xor i64 %625, %624
  br label %1458

627:                                              ; preds = %483
  %628 = mul i64 %386, -7046029288634856825
  %629 = trunc nuw nsw i64 %386 to i32
  %630 = load i64, ptr %390, align 64
  %631 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %632 = load i64, ptr %631, align 8
  %633 = add i64 %388, -4734510112055689544
  %634 = xor i64 %630, %633
  %635 = sub i64 2066345149520216444, %388
  %636 = xor i64 %632, %635
  %637 = zext i64 %634 to i128
  %638 = zext i64 %636 to i128
  %639 = mul nuw i128 %638, %637
  %640 = lshr i128 %639, 64
  %641 = xor i128 %640, %639
  %642 = trunc i128 %641 to i64
  %643 = add i64 %628, %642
  %644 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %645 = load i64, ptr %644, align 16
  %646 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %647 = load i64, ptr %646, align 8
  %648 = add i64 %388, -2623469361688619810
  %649 = xor i64 %645, %648
  %650 = sub i64 2262974939099578482, %388
  %651 = xor i64 %647, %650
  %652 = zext i64 %649 to i128
  %653 = zext i64 %651 to i128
  %654 = mul nuw i128 %653, %652
  %655 = lshr i128 %654, 64
  %656 = xor i128 %655, %654
  %657 = trunc i128 %656 to i64
  %658 = add i64 %643, %657
  %659 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %660 = load i64, ptr %659, align 32
  %661 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %662 = load i64, ptr %661, align 8
  %663 = add i64 %388, 8711581037947681227
  %664 = xor i64 %660, %663
  %665 = sub i64 2410270004345854594, %388
  %666 = xor i64 %662, %665
  %667 = zext i64 %664 to i128
  %668 = zext i64 %666 to i128
  %669 = mul nuw i128 %668, %667
  %670 = lshr i128 %669, 64
  %671 = xor i128 %670, %669
  %672 = trunc i128 %671 to i64
  %673 = add i64 %658, %672
  %674 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %675 = load i64, ptr %674, align 16
  %676 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %677 = load i64, ptr %676, align 8
  %678 = add i64 %388, -8204357891075471176
  %679 = xor i64 %675, %678
  %680 = sub i64 5487137525590930912, %388
  %681 = xor i64 %677, %680
  %682 = zext i64 %679 to i128
  %683 = zext i64 %681 to i128
  %684 = mul nuw i128 %683, %682
  %685 = lshr i128 %684, 64
  %686 = xor i128 %685, %684
  %687 = trunc i128 %686 to i64
  %688 = add i64 %673, %687
  %689 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %690 = load i64, ptr %689, align 64
  %691 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %692 = load i64, ptr %691, align 8
  %693 = add i64 %388, -3818837453329782724
  %694 = xor i64 %690, %693
  %695 = sub i64 -6688317018830679928, %388
  %696 = xor i64 %692, %695
  %697 = zext i64 %694 to i128
  %698 = zext i64 %696 to i128
  %699 = mul nuw i128 %698, %697
  %700 = lshr i128 %699, 64
  %701 = xor i128 %700, %699
  %702 = trunc i128 %701 to i64
  %703 = add i64 %688, %702
  %704 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %705 = load i64, ptr %704, align 16
  %706 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %707 = load i64, ptr %706, align 8
  %708 = add i64 %388, 5690594596133299313
  %709 = xor i64 %705, %708
  %710 = sub i64 -2833645246901970632, %388
  %711 = xor i64 %707, %710
  %712 = zext i64 %709 to i128
  %713 = zext i64 %711 to i128
  %714 = mul nuw i128 %713, %712
  %715 = lshr i128 %714, 64
  %716 = xor i128 %715, %714
  %717 = trunc i128 %716 to i64
  %718 = add i64 %703, %717
  %719 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %720 = load i64, ptr %719, align 32
  %721 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %722 = load i64, ptr %721, align 8
  %723 = add i64 %388, 4554437623014685352
  %724 = xor i64 %720, %723
  %725 = sub i64 2111919702937427193, %388
  %726 = xor i64 %722, %725
  %727 = zext i64 %724 to i128
  %728 = zext i64 %726 to i128
  %729 = mul nuw i128 %728, %727
  %730 = lshr i128 %729, 64
  %731 = xor i128 %730, %729
  %732 = trunc i128 %731 to i64
  %733 = add i64 %718, %732
  %734 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %735 = load i64, ptr %734, align 16
  %736 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %737 = load i64, ptr %736, align 8
  %738 = add i64 %388, 3556072174620004746
  %739 = xor i64 %735, %738
  %740 = sub i64 7238261902898274248, %388
  %741 = xor i64 %737, %740
  %742 = zext i64 %739 to i128
  %743 = zext i64 %741 to i128
  %744 = mul nuw i128 %743, %742
  %745 = lshr i128 %744, 64
  %746 = xor i128 %745, %744
  %747 = trunc i128 %746 to i64
  %748 = add i64 %733, %747
  %749 = lshr i32 %629, 4
  %750 = lshr i64 %748, 37
  %751 = xor i64 %750, %748
  %752 = mul i64 %751, 1609587791953885689
  %753 = lshr i64 %752, 32
  %754 = xor i64 %753, %752
  %755 = icmp eq i32 %749, 8
  br i1 %755, label %841, label %756

756:                                              ; preds = %627
  %757 = zext nneg i32 %749 to i64
  %758 = and i64 %757, 1
  %759 = icmp eq i32 %749, 9
  br i1 %759, label %815, label %760

760:                                              ; preds = %756
  %761 = and i64 %757, 14
  %762 = add nsw i64 %761, -10
  br label %763

763:                                              ; preds = %763, %760
  %764 = phi i64 [ 8, %760 ], [ %810, %763 ]
  %765 = phi i64 [ %754, %760 ], [ %809, %763 ]
  %766 = phi i64 [ 0, %760 ], [ %811, %763 ]
  %767 = shl nsw i64 %764, 4
  %768 = getelementptr inbounds nuw i8, ptr %390, i64 %767
  %769 = getelementptr i8, ptr @XXH3_kSecret, i64 %767
  %770 = getelementptr i8, ptr %769, i64 -125
  %771 = load i64, ptr %768, align 32
  %772 = getelementptr i8, ptr %768, i64 8
  %773 = load i64, ptr %772, align 8
  %774 = load i64, ptr %770, align 1
  %775 = getelementptr i8, ptr %769, i64 -117
  %776 = load i64, ptr %775, align 1
  %777 = add i64 %774, %388
  %778 = xor i64 %777, %771
  %779 = sub i64 %776, %388
  %780 = xor i64 %779, %773
  %781 = zext i64 %778 to i128
  %782 = zext i64 %780 to i128
  %783 = mul nuw i128 %782, %781
  %784 = lshr i128 %783, 64
  %785 = xor i128 %784, %783
  %786 = trunc i128 %785 to i64
  %787 = add i64 %765, %786
  %788 = shl i64 %764, 4
  %789 = or disjoint i64 %788, 16
  %790 = getelementptr inbounds nuw i8, ptr %390, i64 %789
  %791 = getelementptr i8, ptr @XXH3_kSecret, i64 %789
  %792 = getelementptr i8, ptr %791, i64 -125
  %793 = load i64, ptr %790, align 16
  %794 = getelementptr i8, ptr %790, i64 8
  %795 = load i64, ptr %794, align 8
  %796 = load i64, ptr %792, align 1
  %797 = getelementptr i8, ptr %791, i64 -117
  %798 = load i64, ptr %797, align 1
  %799 = add i64 %796, %388
  %800 = xor i64 %799, %793
  %801 = sub i64 %798, %388
  %802 = xor i64 %801, %795
  %803 = zext i64 %800 to i128
  %804 = zext i64 %802 to i128
  %805 = mul nuw i128 %804, %803
  %806 = lshr i128 %805, 64
  %807 = xor i128 %806, %805
  %808 = trunc i128 %807 to i64
  %809 = add i64 %787, %808
  %810 = add nuw nsw i64 %764, 2
  %811 = add i64 %766, 2
  %812 = icmp eq i64 %766, %762
  br i1 %812, label %813, label %763

813:                                              ; preds = %763
  %814 = shl nsw i64 %810, 4
  br label %815

815:                                              ; preds = %813, %756
  %816 = phi i64 [ poison, %756 ], [ %809, %813 ]
  %817 = phi i64 [ 128, %756 ], [ %814, %813 ]
  %818 = phi i64 [ %754, %756 ], [ %809, %813 ]
  %819 = icmp eq i64 %758, 0
  br i1 %819, label %841, label %820

820:                                              ; preds = %815
  %821 = getelementptr inbounds nuw i8, ptr %390, i64 %817
  %822 = getelementptr i8, ptr @XXH3_kSecret, i64 %817
  %823 = getelementptr i8, ptr %822, i64 -125
  %824 = load i64, ptr %821, align 16
  %825 = getelementptr i8, ptr %821, i64 8
  %826 = load i64, ptr %825, align 8
  %827 = load i64, ptr %823, align 1
  %828 = getelementptr i8, ptr %822, i64 -117
  %829 = load i64, ptr %828, align 1
  %830 = add i64 %827, %388
  %831 = xor i64 %830, %824
  %832 = sub i64 %829, %388
  %833 = xor i64 %832, %826
  %834 = zext i64 %831 to i128
  %835 = zext i64 %833 to i128
  %836 = mul nuw i128 %835, %834
  %837 = lshr i128 %836, 64
  %838 = xor i128 %837, %836
  %839 = trunc i128 %838 to i64
  %840 = add i64 %818, %839
  br label %841

841:                                              ; preds = %820, %815, %627
  %842 = phi i64 [ %754, %627 ], [ %816, %815 ], [ %840, %820 ]
  %843 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %844 = getelementptr inbounds i8, ptr %843, i64 -16
  %845 = load i64, ptr %844, align 1
  %846 = getelementptr i8, ptr %843, i64 -8
  %847 = load i64, ptr %846, align 1
  %848 = add i64 %388, 8320639771003045937
  %849 = xor i64 %845, %848
  %850 = sub i64 -1453760514566526364, %388
  %851 = xor i64 %847, %850
  %852 = zext i64 %849 to i128
  %853 = zext i64 %851 to i128
  %854 = mul nuw i128 %853, %852
  %855 = lshr i128 %854, 64
  %856 = xor i128 %855, %854
  %857 = trunc i128 %856 to i64
  %858 = add i64 %842, %857
  %859 = lshr i64 %858, 37
  %860 = xor i64 %859, %858
  %861 = mul i64 %860, 1609587791953885689
  %862 = lshr i64 %861, 32
  %863 = xor i64 %862, %861
  br label %1458

864:                                              ; preds = %382
  br i1 %391, label %865, label %988

865:                                              ; preds = %864
  %866 = icmp samesign ugt i64 %386, 8
  br i1 %866, label %867, label %907, !prof !126

867:                                              ; preds = %865
  %868 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %869 = getelementptr inbounds nuw i8, ptr %385, i64 24
  %870 = select i1 %384, ptr %868, ptr %869
  %871 = load i64, ptr %870, align 1
  %872 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %873 = getelementptr inbounds nuw i8, ptr %385, i64 32
  %874 = select i1 %384, ptr %872, ptr %873
  %875 = load i64, ptr %874, align 1
  %876 = xor i64 %875, %871
  %877 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %878 = getelementptr inbounds nuw i8, ptr %385, i64 40
  %879 = select i1 %384, ptr %877, ptr %878
  %880 = load i64, ptr %879, align 1
  %881 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %882 = getelementptr inbounds nuw i8, ptr %385, i64 48
  %883 = select i1 %384, ptr %881, ptr %882
  %884 = load i64, ptr %883, align 1
  %885 = xor i64 %884, %880
  %886 = load i64, ptr %390, align 64
  %887 = xor i64 %876, %886
  %888 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %889 = getelementptr inbounds i8, ptr %888, i64 -8
  %890 = load i64, ptr %889, align 1
  %891 = xor i64 %885, %890
  %892 = tail call noundef i64 @llvm.bswap.i64(i64 %887)
  %893 = add i64 %892, %386
  %894 = add i64 %893, %891
  %895 = zext i64 %887 to i128
  %896 = zext i64 %891 to i128
  %897 = mul nuw i128 %896, %895
  %898 = lshr i128 %897, 64
  %899 = xor i128 %898, %897
  %900 = trunc i128 %899 to i64
  %901 = add i64 %894, %900
  %902 = lshr i64 %901, 37
  %903 = xor i64 %902, %901
  %904 = mul i64 %903, 1609587791953885689
  %905 = lshr i64 %904, 32
  %906 = xor i64 %905, %904
  br label %1458

907:                                              ; preds = %865
  %908 = icmp samesign ugt i64 %386, 3
  br i1 %908, label %909, label %939, !prof !126

909:                                              ; preds = %907
  %910 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %911 = getelementptr i8, ptr %385, i64 8
  %912 = select i1 %384, ptr %910, ptr %911
  %913 = load i64, ptr %912, align 1
  %914 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %915 = getelementptr i8, ptr %385, i64 16
  %916 = select i1 %384, ptr %914, ptr %915
  %917 = load i64, ptr %916, align 1
  %918 = load i32, ptr %390, align 64
  %919 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %920 = getelementptr inbounds i8, ptr %919, i64 -4
  %921 = load i32, ptr %920, align 1
  %922 = xor i64 %917, %913
  %923 = zext i32 %921 to i64
  %924 = zext i32 %918 to i64
  %925 = shl nuw i64 %924, 32
  %926 = or disjoint i64 %925, %923
  %927 = xor i64 %922, %926
  %928 = tail call i64 @llvm.fshl.i64(i64 %927, i64 %927, i64 49)
  %929 = tail call i64 @llvm.fshl.i64(i64 %927, i64 %927, i64 24)
  %930 = xor i64 %929, %928
  %931 = xor i64 %930, %927
  %932 = mul i64 %931, -6939452855193903323
  %933 = lshr i64 %932, 35
  %934 = add nuw nsw i64 %933, %386
  %935 = xor i64 %934, %932
  %936 = mul i64 %935, -6939452855193903323
  %937 = lshr i64 %936, 28
  %938 = xor i64 %937, %936
  br label %1458

939:                                              ; preds = %907
  %940 = icmp eq i64 %386, 0
  br i1 %940, label %972, label %941

941:                                              ; preds = %939
  %942 = load i32, ptr %383, align 1
  %943 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %944 = getelementptr i8, ptr %385, i64 4
  %945 = select i1 %384, ptr %943, ptr %944
  %946 = load i32, ptr %945, align 1
  %947 = load i8, ptr %390, align 64
  %948 = lshr i64 %386, 1
  %949 = getelementptr inbounds nuw i8, ptr %390, i64 %948
  %950 = load i8, ptr %949, align 1
  %951 = getelementptr i8, ptr %390, i64 %386
  %952 = getelementptr i8, ptr %951, i64 -1
  %953 = load i8, ptr %952, align 1
  %954 = zext i8 %947 to i64
  %955 = shl nuw nsw i64 %954, 16
  %956 = zext i8 %950 to i64
  %957 = shl nuw nsw i64 %956, 24
  %958 = zext i8 %953 to i64
  %959 = shl nuw nsw i64 %386, 8
  %960 = or disjoint i64 %955, %959
  %961 = or disjoint i64 %960, %957
  %962 = or disjoint i64 %961, %958
  %963 = xor i32 %946, %942
  %964 = zext i32 %963 to i64
  %965 = xor i64 %962, %964
  %966 = mul i64 %965, -7046029288634856825
  %967 = lshr i64 %966, 37
  %968 = xor i64 %967, %966
  %969 = mul i64 %968, 1609587791953885689
  %970 = lshr i64 %969, 32
  %971 = xor i64 %970, %969
  br label %1458

972:                                              ; preds = %939
  %973 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %974 = getelementptr inbounds nuw i8, ptr %385, i64 56
  %975 = select i1 %384, ptr %973, ptr %974
  %976 = load i64, ptr %975, align 1
  %977 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %978 = getelementptr inbounds nuw i8, ptr %385, i64 64
  %979 = select i1 %384, ptr %977, ptr %978
  %980 = load i64, ptr %979, align 1
  %981 = xor i64 %976, %980
  %982 = xor i64 %981, -7046029288634856825
  %983 = lshr i64 %982, 37
  %984 = xor i64 %983, %982
  %985 = mul i64 %984, 1609587791953885689
  %986 = lshr i64 %985, 32
  %987 = xor i64 %986, %985
  br label %1458

988:                                              ; preds = %864
  %989 = icmp samesign ult i64 %386, 129
  %990 = mul i64 %386, -7046029288634856825
  br i1 %989, label %991, label %1177

991:                                              ; preds = %988
  %992 = icmp samesign ugt i64 %386, 32
  br i1 %992, label %993, label %1131

993:                                              ; preds = %991
  %994 = icmp samesign ugt i64 %386, 64
  br i1 %994, label %995, label %1086

995:                                              ; preds = %993
  %996 = icmp samesign ugt i64 %386, 96
  br i1 %996, label %997, label %1041

997:                                              ; preds = %995
  %998 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %999 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1000 = getelementptr inbounds nuw i8, ptr %385, i64 96
  %1001 = select i1 %384, ptr %999, ptr %1000
  %1002 = load i64, ptr %998, align 16
  %1003 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1004 = load i64, ptr %1003, align 8
  %1005 = load i64, ptr %1001, align 1
  %1006 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1007 = getelementptr i8, ptr %385, i64 104
  %1008 = select i1 %384, ptr %1006, ptr %1007
  %1009 = load i64, ptr %1008, align 1
  %1010 = xor i64 %1005, %1002
  %1011 = xor i64 %1009, %1004
  %1012 = zext i64 %1010 to i128
  %1013 = zext i64 %1011 to i128
  %1014 = mul nuw i128 %1013, %1012
  %1015 = lshr i128 %1014, 64
  %1016 = xor i128 %1015, %1014
  %1017 = trunc i128 %1016 to i64
  %1018 = add i64 %990, %1017
  %1019 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %1020 = getelementptr inbounds i8, ptr %1019, i64 -64
  %1021 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1022 = getelementptr inbounds nuw i8, ptr %385, i64 112
  %1023 = select i1 %384, ptr %1021, ptr %1022
  %1024 = load i64, ptr %1020, align 1
  %1025 = getelementptr i8, ptr %1019, i64 -56
  %1026 = load i64, ptr %1025, align 1
  %1027 = load i64, ptr %1023, align 1
  %1028 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1029 = getelementptr i8, ptr %385, i64 120
  %1030 = select i1 %384, ptr %1028, ptr %1029
  %1031 = load i64, ptr %1030, align 1
  %1032 = xor i64 %1027, %1024
  %1033 = xor i64 %1031, %1026
  %1034 = zext i64 %1032 to i128
  %1035 = zext i64 %1033 to i128
  %1036 = mul nuw i128 %1035, %1034
  %1037 = lshr i128 %1036, 64
  %1038 = xor i128 %1037, %1036
  %1039 = trunc i128 %1038 to i64
  %1040 = add i64 %1018, %1039
  br label %1041

1041:                                             ; preds = %997, %995
  %1042 = phi i64 [ %1040, %997 ], [ %990, %995 ]
  %1043 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1044 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1045 = getelementptr inbounds nuw i8, ptr %385, i64 64
  %1046 = select i1 %384, ptr %1044, ptr %1045
  %1047 = load i64, ptr %1043, align 32
  %1048 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1049 = load i64, ptr %1048, align 8
  %1050 = load i64, ptr %1046, align 1
  %1051 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1052 = getelementptr i8, ptr %385, i64 72
  %1053 = select i1 %384, ptr %1051, ptr %1052
  %1054 = load i64, ptr %1053, align 1
  %1055 = xor i64 %1050, %1047
  %1056 = xor i64 %1054, %1049
  %1057 = zext i64 %1055 to i128
  %1058 = zext i64 %1056 to i128
  %1059 = mul nuw i128 %1058, %1057
  %1060 = lshr i128 %1059, 64
  %1061 = xor i128 %1060, %1059
  %1062 = trunc i128 %1061 to i64
  %1063 = add i64 %1042, %1062
  %1064 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %1065 = getelementptr inbounds i8, ptr %1064, i64 -48
  %1066 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1067 = getelementptr inbounds nuw i8, ptr %385, i64 80
  %1068 = select i1 %384, ptr %1066, ptr %1067
  %1069 = load i64, ptr %1065, align 1
  %1070 = getelementptr i8, ptr %1064, i64 -40
  %1071 = load i64, ptr %1070, align 1
  %1072 = load i64, ptr %1068, align 1
  %1073 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1074 = getelementptr i8, ptr %385, i64 88
  %1075 = select i1 %384, ptr %1073, ptr %1074
  %1076 = load i64, ptr %1075, align 1
  %1077 = xor i64 %1072, %1069
  %1078 = xor i64 %1076, %1071
  %1079 = zext i64 %1077 to i128
  %1080 = zext i64 %1078 to i128
  %1081 = mul nuw i128 %1080, %1079
  %1082 = lshr i128 %1081, 64
  %1083 = xor i128 %1082, %1081
  %1084 = trunc i128 %1083 to i64
  %1085 = add i64 %1063, %1084
  br label %1086

1086:                                             ; preds = %1041, %993
  %1087 = phi i64 [ %1085, %1041 ], [ %990, %993 ]
  %1088 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1089 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1090 = getelementptr inbounds nuw i8, ptr %385, i64 32
  %1091 = select i1 %384, ptr %1089, ptr %1090
  %1092 = load i64, ptr %1088, align 16
  %1093 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1094 = load i64, ptr %1093, align 8
  %1095 = load i64, ptr %1091, align 1
  %1096 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1097 = getelementptr i8, ptr %385, i64 40
  %1098 = select i1 %384, ptr %1096, ptr %1097
  %1099 = load i64, ptr %1098, align 1
  %1100 = xor i64 %1095, %1092
  %1101 = xor i64 %1099, %1094
  %1102 = zext i64 %1100 to i128
  %1103 = zext i64 %1101 to i128
  %1104 = mul nuw i128 %1103, %1102
  %1105 = lshr i128 %1104, 64
  %1106 = xor i128 %1105, %1104
  %1107 = trunc i128 %1106 to i64
  %1108 = add i64 %1087, %1107
  %1109 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %1110 = getelementptr inbounds i8, ptr %1109, i64 -32
  %1111 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1112 = getelementptr inbounds nuw i8, ptr %385, i64 48
  %1113 = select i1 %384, ptr %1111, ptr %1112
  %1114 = load i64, ptr %1110, align 1
  %1115 = getelementptr i8, ptr %1109, i64 -24
  %1116 = load i64, ptr %1115, align 1
  %1117 = load i64, ptr %1113, align 1
  %1118 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1119 = getelementptr i8, ptr %385, i64 56
  %1120 = select i1 %384, ptr %1118, ptr %1119
  %1121 = load i64, ptr %1120, align 1
  %1122 = xor i64 %1117, %1114
  %1123 = xor i64 %1121, %1116
  %1124 = zext i64 %1122 to i128
  %1125 = zext i64 %1123 to i128
  %1126 = mul nuw i128 %1125, %1124
  %1127 = lshr i128 %1126, 64
  %1128 = xor i128 %1127, %1126
  %1129 = trunc i128 %1128 to i64
  %1130 = add i64 %1108, %1129
  br label %1131

1131:                                             ; preds = %1086, %991
  %1132 = phi i64 [ %1130, %1086 ], [ %990, %991 ]
  %1133 = load i64, ptr %390, align 64
  %1134 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1135 = load i64, ptr %1134, align 8
  %1136 = load i64, ptr %383, align 1
  %1137 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1138 = getelementptr i8, ptr %385, i64 8
  %1139 = select i1 %384, ptr %1137, ptr %1138
  %1140 = load i64, ptr %1139, align 1
  %1141 = xor i64 %1136, %1133
  %1142 = xor i64 %1140, %1135
  %1143 = zext i64 %1141 to i128
  %1144 = zext i64 %1142 to i128
  %1145 = mul nuw i128 %1144, %1143
  %1146 = lshr i128 %1145, 64
  %1147 = xor i128 %1146, %1145
  %1148 = trunc i128 %1147 to i64
  %1149 = add i64 %1132, %1148
  %1150 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %1151 = getelementptr inbounds i8, ptr %1150, i64 -16
  %1152 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1153 = getelementptr inbounds nuw i8, ptr %385, i64 16
  %1154 = select i1 %384, ptr %1152, ptr %1153
  %1155 = load i64, ptr %1151, align 1
  %1156 = getelementptr i8, ptr %1150, i64 -8
  %1157 = load i64, ptr %1156, align 1
  %1158 = load i64, ptr %1154, align 1
  %1159 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1160 = getelementptr i8, ptr %385, i64 24
  %1161 = select i1 %384, ptr %1159, ptr %1160
  %1162 = load i64, ptr %1161, align 1
  %1163 = xor i64 %1158, %1155
  %1164 = xor i64 %1162, %1157
  %1165 = zext i64 %1163 to i128
  %1166 = zext i64 %1164 to i128
  %1167 = mul nuw i128 %1166, %1165
  %1168 = lshr i128 %1167, 64
  %1169 = xor i128 %1168, %1167
  %1170 = trunc i128 %1169 to i64
  %1171 = add i64 %1149, %1170
  %1172 = lshr i64 %1171, 37
  %1173 = xor i64 %1172, %1171
  %1174 = mul i64 %1173, 1609587791953885689
  %1175 = lshr i64 %1174, 32
  %1176 = xor i64 %1175, %1174
  br label %1458

1177:                                             ; preds = %988
  %1178 = trunc nuw nsw i64 %386 to i32
  %1179 = load i64, ptr %390, align 64
  %1180 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1181 = load i64, ptr %1180, align 8
  %1182 = load i64, ptr %383, align 1
  %1183 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1184 = getelementptr i8, ptr %385, i64 8
  %1185 = select i1 %384, ptr %1183, ptr %1184
  %1186 = load i64, ptr %1185, align 1
  %1187 = xor i64 %1182, %1179
  %1188 = xor i64 %1186, %1181
  %1189 = zext i64 %1187 to i128
  %1190 = zext i64 %1188 to i128
  %1191 = mul nuw i128 %1190, %1189
  %1192 = lshr i128 %1191, 64
  %1193 = xor i128 %1192, %1191
  %1194 = trunc i128 %1193 to i64
  %1195 = add i64 %990, %1194
  %1196 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1197 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1198 = getelementptr inbounds nuw i8, ptr %385, i64 16
  %1199 = select i1 %384, ptr %1197, ptr %1198
  %1200 = load i64, ptr %1196, align 16
  %1201 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1202 = load i64, ptr %1201, align 8
  %1203 = load i64, ptr %1199, align 1
  %1204 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1205 = getelementptr i8, ptr %385, i64 24
  %1206 = select i1 %384, ptr %1204, ptr %1205
  %1207 = load i64, ptr %1206, align 1
  %1208 = xor i64 %1203, %1200
  %1209 = xor i64 %1207, %1202
  %1210 = zext i64 %1208 to i128
  %1211 = zext i64 %1209 to i128
  %1212 = mul nuw i128 %1211, %1210
  %1213 = lshr i128 %1212, 64
  %1214 = xor i128 %1213, %1212
  %1215 = trunc i128 %1214 to i64
  %1216 = add i64 %1195, %1215
  %1217 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1218 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1219 = getelementptr inbounds nuw i8, ptr %385, i64 32
  %1220 = select i1 %384, ptr %1218, ptr %1219
  %1221 = load i64, ptr %1217, align 32
  %1222 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1223 = load i64, ptr %1222, align 8
  %1224 = load i64, ptr %1220, align 1
  %1225 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1226 = getelementptr i8, ptr %385, i64 40
  %1227 = select i1 %384, ptr %1225, ptr %1226
  %1228 = load i64, ptr %1227, align 1
  %1229 = xor i64 %1224, %1221
  %1230 = xor i64 %1228, %1223
  %1231 = zext i64 %1229 to i128
  %1232 = zext i64 %1230 to i128
  %1233 = mul nuw i128 %1232, %1231
  %1234 = lshr i128 %1233, 64
  %1235 = xor i128 %1234, %1233
  %1236 = trunc i128 %1235 to i64
  %1237 = add i64 %1216, %1236
  %1238 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1239 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1240 = getelementptr inbounds nuw i8, ptr %385, i64 48
  %1241 = select i1 %384, ptr %1239, ptr %1240
  %1242 = load i64, ptr %1238, align 16
  %1243 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1244 = load i64, ptr %1243, align 8
  %1245 = load i64, ptr %1241, align 1
  %1246 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1247 = getelementptr i8, ptr %385, i64 56
  %1248 = select i1 %384, ptr %1246, ptr %1247
  %1249 = load i64, ptr %1248, align 1
  %1250 = xor i64 %1245, %1242
  %1251 = xor i64 %1249, %1244
  %1252 = zext i64 %1250 to i128
  %1253 = zext i64 %1251 to i128
  %1254 = mul nuw i128 %1253, %1252
  %1255 = lshr i128 %1254, 64
  %1256 = xor i128 %1255, %1254
  %1257 = trunc i128 %1256 to i64
  %1258 = add i64 %1237, %1257
  %1259 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %1260 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1261 = getelementptr inbounds nuw i8, ptr %385, i64 64
  %1262 = select i1 %384, ptr %1260, ptr %1261
  %1263 = load i64, ptr %1259, align 64
  %1264 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %1265 = load i64, ptr %1264, align 8
  %1266 = load i64, ptr %1262, align 1
  %1267 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1268 = getelementptr i8, ptr %385, i64 72
  %1269 = select i1 %384, ptr %1267, ptr %1268
  %1270 = load i64, ptr %1269, align 1
  %1271 = xor i64 %1266, %1263
  %1272 = xor i64 %1270, %1265
  %1273 = zext i64 %1271 to i128
  %1274 = zext i64 %1272 to i128
  %1275 = mul nuw i128 %1274, %1273
  %1276 = lshr i128 %1275, 64
  %1277 = xor i128 %1276, %1275
  %1278 = trunc i128 %1277 to i64
  %1279 = add i64 %1258, %1278
  %1280 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %1281 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1282 = getelementptr inbounds nuw i8, ptr %385, i64 80
  %1283 = select i1 %384, ptr %1281, ptr %1282
  %1284 = load i64, ptr %1280, align 16
  %1285 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %1286 = load i64, ptr %1285, align 8
  %1287 = load i64, ptr %1283, align 1
  %1288 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1289 = getelementptr i8, ptr %385, i64 88
  %1290 = select i1 %384, ptr %1288, ptr %1289
  %1291 = load i64, ptr %1290, align 1
  %1292 = xor i64 %1287, %1284
  %1293 = xor i64 %1291, %1286
  %1294 = zext i64 %1292 to i128
  %1295 = zext i64 %1293 to i128
  %1296 = mul nuw i128 %1295, %1294
  %1297 = lshr i128 %1296, 64
  %1298 = xor i128 %1297, %1296
  %1299 = trunc i128 %1298 to i64
  %1300 = add i64 %1279, %1299
  %1301 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %1302 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1303 = getelementptr inbounds nuw i8, ptr %385, i64 96
  %1304 = select i1 %384, ptr %1302, ptr %1303
  %1305 = load i64, ptr %1301, align 32
  %1306 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %1307 = load i64, ptr %1306, align 8
  %1308 = load i64, ptr %1304, align 1
  %1309 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1310 = getelementptr i8, ptr %385, i64 104
  %1311 = select i1 %384, ptr %1309, ptr %1310
  %1312 = load i64, ptr %1311, align 1
  %1313 = xor i64 %1308, %1305
  %1314 = xor i64 %1312, %1307
  %1315 = zext i64 %1313 to i128
  %1316 = zext i64 %1314 to i128
  %1317 = mul nuw i128 %1316, %1315
  %1318 = lshr i128 %1317, 64
  %1319 = xor i128 %1318, %1317
  %1320 = trunc i128 %1319 to i64
  %1321 = add i64 %1300, %1320
  %1322 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %1323 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1324 = getelementptr inbounds nuw i8, ptr %385, i64 112
  %1325 = select i1 %384, ptr %1323, ptr %1324
  %1326 = load i64, ptr %1322, align 16
  %1327 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %1328 = load i64, ptr %1327, align 8
  %1329 = load i64, ptr %1325, align 1
  %1330 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1331 = getelementptr i8, ptr %385, i64 120
  %1332 = select i1 %384, ptr %1330, ptr %1331
  %1333 = load i64, ptr %1332, align 1
  %1334 = xor i64 %1329, %1326
  %1335 = xor i64 %1333, %1328
  %1336 = zext i64 %1334 to i128
  %1337 = zext i64 %1335 to i128
  %1338 = mul nuw i128 %1337, %1336
  %1339 = lshr i128 %1338, 64
  %1340 = xor i128 %1339, %1338
  %1341 = trunc i128 %1340 to i64
  %1342 = add i64 %1321, %1341
  %1343 = lshr i32 %1178, 4
  %1344 = lshr i64 %1342, 37
  %1345 = xor i64 %1344, %1342
  %1346 = mul i64 %1345, 1609587791953885689
  %1347 = lshr i64 %1346, 32
  %1348 = xor i64 %1347, %1346
  %1349 = icmp eq i32 %1343, 8
  br i1 %1349, label %1429, label %1350

1350:                                             ; preds = %1177
  %1351 = zext nneg i32 %1343 to i64
  %1352 = and i64 %1351, 1
  %1353 = icmp eq i32 %1343, 9
  br i1 %1353, label %1405, label %1354

1354:                                             ; preds = %1350
  %1355 = and i64 %1351, 14
  %1356 = add nsw i64 %1355, -10
  br label %1357

1357:                                             ; preds = %1357, %1354
  %1358 = phi i64 [ 8, %1354 ], [ %1400, %1357 ]
  %1359 = phi i64 [ %1348, %1354 ], [ %1399, %1357 ]
  %1360 = phi i64 [ 0, %1354 ], [ %1401, %1357 ]
  %1361 = shl nsw i64 %1358, 4
  %1362 = getelementptr inbounds nuw i8, ptr %390, i64 %1361
  %1363 = getelementptr i8, ptr %383, i64 %1361
  %1364 = getelementptr i8, ptr %1363, i64 -125
  %1365 = load i64, ptr %1362, align 32
  %1366 = getelementptr i8, ptr %1362, i64 8
  %1367 = load i64, ptr %1366, align 8
  %1368 = load i64, ptr %1364, align 1
  %1369 = getelementptr i8, ptr %1363, i64 -117
  %1370 = load i64, ptr %1369, align 1
  %1371 = xor i64 %1368, %1365
  %1372 = xor i64 %1370, %1367
  %1373 = zext i64 %1371 to i128
  %1374 = zext i64 %1372 to i128
  %1375 = mul nuw i128 %1374, %1373
  %1376 = lshr i128 %1375, 64
  %1377 = xor i128 %1376, %1375
  %1378 = trunc i128 %1377 to i64
  %1379 = add i64 %1359, %1378
  %1380 = shl i64 %1358, 4
  %1381 = or disjoint i64 %1380, 16
  %1382 = getelementptr inbounds nuw i8, ptr %390, i64 %1381
  %1383 = getelementptr i8, ptr %383, i64 %1381
  %1384 = getelementptr i8, ptr %1383, i64 -125
  %1385 = load i64, ptr %1382, align 16
  %1386 = getelementptr i8, ptr %1382, i64 8
  %1387 = load i64, ptr %1386, align 8
  %1388 = load i64, ptr %1384, align 1
  %1389 = getelementptr i8, ptr %1383, i64 -117
  %1390 = load i64, ptr %1389, align 1
  %1391 = xor i64 %1388, %1385
  %1392 = xor i64 %1390, %1387
  %1393 = zext i64 %1391 to i128
  %1394 = zext i64 %1392 to i128
  %1395 = mul nuw i128 %1394, %1393
  %1396 = lshr i128 %1395, 64
  %1397 = xor i128 %1396, %1395
  %1398 = trunc i128 %1397 to i64
  %1399 = add i64 %1379, %1398
  %1400 = add nuw nsw i64 %1358, 2
  %1401 = add i64 %1360, 2
  %1402 = icmp eq i64 %1360, %1356
  br i1 %1402, label %1403, label %1357

1403:                                             ; preds = %1357
  %1404 = shl nsw i64 %1400, 4
  br label %1405

1405:                                             ; preds = %1403, %1350
  %1406 = phi i64 [ poison, %1350 ], [ %1399, %1403 ]
  %1407 = phi i64 [ 128, %1350 ], [ %1404, %1403 ]
  %1408 = phi i64 [ %1348, %1350 ], [ %1399, %1403 ]
  %1409 = icmp eq i64 %1352, 0
  br i1 %1409, label %1429, label %1410

1410:                                             ; preds = %1405
  %1411 = getelementptr inbounds nuw i8, ptr %390, i64 %1407
  %1412 = getelementptr i8, ptr %383, i64 %1407
  %1413 = getelementptr i8, ptr %1412, i64 -125
  %1414 = load i64, ptr %1411, align 16
  %1415 = getelementptr i8, ptr %1411, i64 8
  %1416 = load i64, ptr %1415, align 8
  %1417 = load i64, ptr %1413, align 1
  %1418 = getelementptr i8, ptr %1412, i64 -117
  %1419 = load i64, ptr %1418, align 1
  %1420 = xor i64 %1417, %1414
  %1421 = xor i64 %1419, %1416
  %1422 = zext i64 %1420 to i128
  %1423 = zext i64 %1421 to i128
  %1424 = mul nuw i128 %1423, %1422
  %1425 = lshr i128 %1424, 64
  %1426 = xor i128 %1425, %1424
  %1427 = trunc i128 %1426 to i64
  %1428 = add i64 %1408, %1427
  br label %1429

1429:                                             ; preds = %1410, %1405, %1177
  %1430 = phi i64 [ %1348, %1177 ], [ %1406, %1405 ], [ %1428, %1410 ]
  %1431 = getelementptr inbounds nuw i8, ptr %390, i64 %386
  %1432 = getelementptr inbounds i8, ptr %1431, i64 -16
  %1433 = getelementptr inbounds nuw i8, ptr %3, i64 183
  %1434 = getelementptr inbounds nuw i8, ptr %385, i64 119
  %1435 = select i1 %384, ptr %1433, ptr %1434
  %1436 = load i64, ptr %1432, align 1
  %1437 = getelementptr i8, ptr %1431, i64 -8
  %1438 = load i64, ptr %1437, align 1
  %1439 = load i64, ptr %1435, align 1
  %1440 = getelementptr inbounds nuw i8, ptr %3, i64 191
  %1441 = getelementptr i8, ptr %385, i64 127
  %1442 = select i1 %384, ptr %1440, ptr %1441
  %1443 = load i64, ptr %1442, align 1
  %1444 = xor i64 %1439, %1436
  %1445 = xor i64 %1443, %1438
  %1446 = zext i64 %1444 to i128
  %1447 = zext i64 %1445 to i128
  %1448 = mul nuw i128 %1447, %1446
  %1449 = lshr i128 %1448, 64
  %1450 = xor i128 %1449, %1448
  %1451 = trunc i128 %1450 to i64
  %1452 = add i64 %1430, %1451
  %1453 = lshr i64 %1452, 37
  %1454 = xor i64 %1453, %1452
  %1455 = mul i64 %1454, 1609587791953885689
  %1456 = lshr i64 %1455, 32
  %1457 = xor i64 %1456, %1455
  br label %1458

1458:                                             ; preds = %267, %395, %421, %450, %475, %590, %841, %867, %909, %941, %972, %1131, %1429
  %1459 = phi i64 [ %381, %267 ], [ %626, %590 ], [ %863, %841 ], [ %418, %395 ], [ %447, %421 ], [ %474, %450 ], [ %482, %475 ], [ %1176, %1131 ], [ %1457, %1429 ], [ %906, %867 ], [ %938, %909 ], [ %971, %941 ], [ %987, %972 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #8
  ret i64 %1459
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_consumeStripes: argument 0"}
!7 = distinct !{!7, !"XXH3_consumeStripes"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_consumeStripes: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !"XXH3_consumeStripes: argument 2"}
!12 = !{!13}
!13 = distinct !{!13, !7, !"XXH3_consumeStripes: argument 3"}
!14 = !{!6, !11, !13}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_accumulate: argument 1"}
!17 = distinct !{!17, !"XXH3_accumulate"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"XXH3_accumulate: argument 2"}
!20 = !{!21, !6}
!21 = distinct !{!21, !22, !"XXH3_scrambleAcc_avx2: argument 0"}
!22 = distinct !{!22, !"XXH3_scrambleAcc_avx2"}
!23 = !{!24, !9, !11, !13}
!24 = distinct !{!24, !22, !"XXH3_scrambleAcc_avx2: argument 1"}
!25 = !{!9, !11, !13}
!26 = !{!27, !19, !6, !9, !13}
!27 = distinct !{!27, !17, !"XXH3_accumulate: argument 0"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_accumulate_512_avx2: argument 1"}
!30 = distinct !{!30, !"XXH3_accumulate_512_avx2"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"XXH3_accumulate_512_avx2: argument 2"}
!33 = !{!29, !16, !11}
!34 = !{!35, !32, !27, !19, !6, !9, !13}
!35 = distinct !{!35, !30, !"XXH3_accumulate_512_avx2: argument 0"}
!36 = !{!32, !19, !13}
!37 = !{!35, !29, !27, !16, !6, !9, !11}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!21}
!41 = !{!24}
!42 = !{!24, !13}
!43 = !{!21, !6, !9, !11}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_accumulate: argument 0"}
!46 = distinct !{!46, !"XXH3_accumulate"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"XXH3_accumulate: argument 1"}
!49 = !{!50}
!50 = distinct !{!50, !46, !"XXH3_accumulate: argument 2"}
!51 = !{!45, !50, !6, !9, !13}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_accumulate_512_avx2: argument 0"}
!54 = distinct !{!54, !"XXH3_accumulate_512_avx2"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"XXH3_accumulate_512_avx2: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !54, !"XXH3_accumulate_512_avx2: argument 2"}
!59 = !{!56, !48, !11}
!60 = !{!53, !58, !45, !50, !6, !9, !13}
!61 = !{!58, !50, !13}
!62 = !{!53, !56, !45, !48, !6, !9, !11}
!63 = !{!53, !45, !6}
!64 = !{!56, !58, !48, !50, !9, !11, !13}
!65 = !{!66}
!66 = distinct !{!66, !67, !"XXH3_accumulate: argument 0"}
!67 = distinct !{!67, !"XXH3_accumulate"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"XXH3_accumulate: argument 1"}
!70 = !{!71}
!71 = distinct !{!71, !67, !"XXH3_accumulate: argument 2"}
!72 = !{!73, !66, !6}
!73 = distinct !{!73, !74, !"XXH3_accumulate_512_avx2: argument 0"}
!74 = distinct !{!74, !"XXH3_accumulate_512_avx2"}
!75 = !{!76, !77, !69, !71, !9, !11, !13}
!76 = distinct !{!76, !74, !"XXH3_accumulate_512_avx2: argument 1"}
!77 = distinct !{!77, !74, !"XXH3_accumulate_512_avx2: argument 2"}
!78 = !{!66, !71, !6, !9, !13}
!79 = !{!73}
!80 = !{!76}
!81 = !{!77}
!82 = !{!76, !69, !11}
!83 = !{!73, !77, !66, !71, !6, !9, !13}
!84 = !{!77, !71, !13}
!85 = !{!73, !76, !66, !69, !6, !9, !11}
!86 = !{!87}
!87 = distinct !{!87, !74, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!88 = !{!89}
!89 = distinct !{!89, !74, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!90 = !{!87, !69, !11}
!91 = !{!92, !89, !66, !71, !6, !9, !13}
!92 = distinct !{!92, !74, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!93 = !{!89, !71, !13}
!94 = !{!92, !87, !66, !69, !6, !9, !11}
!95 = !{!96}
!96 = distinct !{!96, !74, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!97 = !{!98}
!98 = distinct !{!98, !74, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!99 = !{!96, !69, !11}
!100 = !{!101, !98, !66, !71, !6, !9, !13}
!101 = distinct !{!101, !74, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!102 = !{!98, !71, !13}
!103 = !{!101, !96, !66, !69, !6, !9, !11}
!104 = !{!105}
!105 = distinct !{!105, !74, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!106 = !{!107}
!107 = distinct !{!107, !74, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!108 = !{!105, !69, !11}
!109 = !{!110, !107, !66, !71, !6, !9, !13}
!110 = distinct !{!110, !74, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!111 = !{!107, !71, !13}
!112 = !{!110, !105, !66, !69, !6, !9, !11}
!113 = !{!114}
!114 = distinct !{!114, !115, !"XXH3_accumulate_512_avx2: argument 1"}
!115 = distinct !{!115, !"XXH3_accumulate_512_avx2"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"XXH3_accumulate_512_avx2: argument 2"}
!118 = !{!119, !117}
!119 = distinct !{!119, !115, !"XXH3_accumulate_512_avx2: argument 0"}
!120 = !{!119, !114}
!121 = !{!122}
!122 = distinct !{!122, !123, !"XXH3_mergeAccs: argument 1"}
!123 = distinct !{!123, !"XXH3_mergeAccs"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"XXH3_mergeAccs: argument 0"}
!126 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!127 = !{!128}
!128 = distinct !{!128, !129, !"XXH3_len_17to128_64b: argument 0"}
!129 = distinct !{!129, !"XXH3_len_17to128_64b"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"XXH3_len_17to128_64b: argument 1"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"XXH3_len_129to240_64b: argument 0"}
!134 = distinct !{!134, !"XXH3_len_129to240_64b"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"XXH3_len_129to240_64b: argument 1"}
!137 = distinct !{!137, !39}
!138 = !{!139}
!139 = distinct !{!139, !140, !"XXH3_len_17to128_64b: argument 0"}
!140 = distinct !{!140, !"XXH3_len_17to128_64b"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"XXH3_len_17to128_64b: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"XXH3_len_129to240_64b: argument 0"}
!145 = distinct !{!145, !"XXH3_len_129to240_64b"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"XXH3_len_129to240_64b: argument 1"}
