; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_100_200(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca <4 x i64>, align 32
  %3 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 512
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
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 552
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store ptr @XXH3_kSecret, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 128, ptr %15, align 32
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 16, ptr %16, align 8
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 200, ptr %20, align 16
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(200) %21, ptr noundef nonnull readonly align 1 dereferenceable(200) %19, i64 range(i64 100, 201) 200, i1 false)
  %22 = load i32, ptr %4, align 64
  %23 = add i32 %22, 200
  store i32 %23, ptr %4, align 64
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %25 = load i64, ptr %24, align 64
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %27 = load i64, ptr %26, align 8
  br label %1204

28:                                               ; preds = %1
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %29, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 201) 100, i1 false)
  store i32 100, ptr %4, align 64
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 300, ptr %32, align 16
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %34, ptr noundef nonnull readonly align 1 dereferenceable(156) %30, i64 156, i1 false)
  %35 = getelementptr i8, ptr %0, i64 256
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %37 = load i64, ptr %16, align 8
  %38 = load i64, ptr %15, align 32
  %39 = load i64, ptr %36, align 8
  %40 = sub i64 %37, %39
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %154, label %42

42:                                               ; preds = %28
  %43 = sub nuw nsw i64 4, %40
  %44 = shl i64 %39, 3
  %45 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %44
  %46 = icmp eq i64 %37, %39
  %47 = load <4 x i64>, ptr %3, align 64
  %48 = load <4 x i64>, ptr %9, align 32
  br i1 %46, label %86, label %49

49:                                               ; preds = %42, %49
  %50 = phi <4 x i64> [ %83, %49 ], [ %48, %42 ]
  %51 = phi <4 x i64> [ %69, %49 ], [ %47, %42 ]
  %52 = phi i64 [ %84, %49 ], [ 0, %42 ]
  %53 = shl i64 %52, 6
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %55, i32 0, i32 3, i32 1)
  %56 = shl i64 %52, 3
  %57 = getelementptr inbounds nuw i8, ptr %45, i64 %56
  %58 = load <4 x i64>, ptr %54, align 64
  %59 = load <4 x i64>, ptr %57, align 8
  %60 = xor <4 x i64> %59, %58
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %58, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %51, %67
  %69 = add <4 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %71 = load <4 x i64>, ptr %70, align 32
  %72 = getelementptr inbounds nuw i8, ptr %57, i64 32
  %73 = load <4 x i64>, ptr %72, align 8
  %74 = xor <4 x i64> %73, %71
  %75 = bitcast <4 x i64> %74 to <8 x i32>
  %76 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %77 = bitcast <8 x i32> %76 to <4 x i64>
  %78 = and <4 x i64> %74, splat (i64 4294967295)
  %79 = and <4 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, %78
  %81 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %82 = add <4 x i64> %50, %81
  %83 = add <4 x i64> %82, %80
  %84 = add nuw i64 %52, 1
  %85 = icmp eq i64 %84, %40
  br i1 %85, label %86, label %49

86:                                               ; preds = %49, %42
  %87 = phi <4 x i64> [ %48, %42 ], [ %83, %49 ]
  %88 = phi <4 x i64> [ %47, %42 ], [ %69, %49 ]
  %89 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %38
  %90 = lshr <4 x i64> %88, splat (i64 47)
  %91 = load <4 x i64>, ptr %89, align 1
  %92 = xor <4 x i64> %90, %91
  %93 = xor <4 x i64> %92, %88
  %94 = bitcast <4 x i64> %93 to <8 x i32>
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %97 = and <4 x i64> %93, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, splat (i64 2654435761)
  %99 = mul <4 x i64> %96, splat (i64 -7046029290881679360)
  %100 = add <4 x i64> %99, %98
  store <4 x i64> %100, ptr %3, align 64
  %101 = lshr <4 x i64> %87, splat (i64 47)
  %102 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %103 = load <4 x i64>, ptr %102, align 1
  %104 = xor <4 x i64> %101, %103
  %105 = xor <4 x i64> %104, %87
  %106 = bitcast <4 x i64> %105 to <8 x i32>
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %108 = bitcast <8 x i32> %107 to <4 x i64>
  %109 = and <4 x i64> %105, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, splat (i64 2654435761)
  %111 = mul <4 x i64> %108, splat (i64 -7046029290881679360)
  %112 = add <4 x i64> %111, %110
  store <4 x i64> %112, ptr %9, align 32
  %113 = shl nuw nsw i64 %40, 6
  %114 = getelementptr inbounds nuw i8, ptr %33, i64 %113
  %115 = icmp eq i64 %40, 4
  br i1 %115, label %274, label %116

116:                                              ; preds = %86, %116
  %117 = phi <4 x i64> [ %150, %116 ], [ %112, %86 ]
  %118 = phi <4 x i64> [ %136, %116 ], [ %100, %86 ]
  %119 = phi i64 [ %151, %116 ], [ 0, %86 ]
  %120 = shl i64 %119, 6
  %121 = getelementptr inbounds nuw i8, ptr %114, i64 %120
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %122, i32 0, i32 3, i32 1)
  %123 = shl i64 %119, 3
  %124 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %123
  %125 = load <4 x i64>, ptr %121, align 64
  %126 = load <4 x i64>, ptr %124, align 8
  %127 = xor <4 x i64> %126, %125
  %128 = bitcast <4 x i64> %127 to <8 x i32>
  %129 = shufflevector <8 x i32> %128, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %130 = bitcast <8 x i32> %129 to <4 x i64>
  %131 = and <4 x i64> %127, splat (i64 4294967295)
  %132 = and <4 x i64> %130, splat (i64 4294967295)
  %133 = mul nuw <4 x i64> %132, %131
  %134 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = add <4 x i64> %118, %134
  %136 = add <4 x i64> %135, %133
  %137 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %138 = load <4 x i64>, ptr %137, align 32
  %139 = getelementptr inbounds nuw i8, ptr %124, i64 32
  %140 = load <4 x i64>, ptr %139, align 8
  %141 = xor <4 x i64> %140, %138
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %138, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %117, %148
  %150 = add <4 x i64> %149, %147
  %151 = add nuw i64 %119, 1
  %152 = icmp eq i64 %151, %43
  br i1 %152, label %153, label %116

153:                                              ; preds = %116
  store <4 x i64> %136, ptr %3, align 64
  store <4 x i64> %150, ptr %9, align 32
  br label %274

154:                                              ; preds = %28
  %155 = shl i64 %39, 3
  %156 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %155
  %157 = load <4 x i64>, ptr %3, align 64
  %158 = load <4 x i64>, ptr %9, align 32
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %159, i32 0, i32 3, i32 1)
  %160 = load <4 x i64>, ptr %33, align 64
  %161 = load <4 x i64>, ptr %156, align 8
  %162 = xor <4 x i64> %161, %160
  %163 = bitcast <4 x i64> %162 to <8 x i32>
  %164 = shufflevector <8 x i32> %163, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %165 = bitcast <8 x i32> %164 to <4 x i64>
  %166 = and <4 x i64> %162, splat (i64 4294967295)
  %167 = and <4 x i64> %165, splat (i64 4294967295)
  %168 = mul nuw <4 x i64> %167, %166
  %169 = shufflevector <4 x i64> %160, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %170 = add <4 x i64> %157, %169
  %171 = add <4 x i64> %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %173 = load <4 x i64>, ptr %172, align 32
  %174 = getelementptr inbounds nuw i8, ptr %156, i64 32
  %175 = load <4 x i64>, ptr %174, align 8
  %176 = xor <4 x i64> %175, %173
  %177 = bitcast <4 x i64> %176 to <8 x i32>
  %178 = shufflevector <8 x i32> %177, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %179 = bitcast <8 x i32> %178 to <4 x i64>
  %180 = and <4 x i64> %176, splat (i64 4294967295)
  %181 = and <4 x i64> %179, splat (i64 4294967295)
  %182 = mul nuw <4 x i64> %181, %180
  %183 = shufflevector <4 x i64> %173, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %184 = add <4 x i64> %158, %183
  %185 = add <4 x i64> %184, %182
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %187, i32 0, i32 3, i32 1)
  %188 = getelementptr inbounds nuw i8, ptr %156, i64 8
  %189 = load <4 x i64>, ptr %186, align 64
  %190 = load <4 x i64>, ptr %188, align 8
  %191 = xor <4 x i64> %190, %189
  %192 = bitcast <4 x i64> %191 to <8 x i32>
  %193 = shufflevector <8 x i32> %192, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %194 = bitcast <8 x i32> %193 to <4 x i64>
  %195 = and <4 x i64> %191, splat (i64 4294967295)
  %196 = and <4 x i64> %194, splat (i64 4294967295)
  %197 = mul nuw <4 x i64> %196, %195
  %198 = shufflevector <4 x i64> %189, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %199 = add <4 x i64> %171, %198
  %200 = add <4 x i64> %199, %197
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %202 = load <4 x i64>, ptr %201, align 32
  %203 = getelementptr inbounds nuw i8, ptr %156, i64 40
  %204 = load <4 x i64>, ptr %203, align 8
  %205 = xor <4 x i64> %204, %202
  %206 = bitcast <4 x i64> %205 to <8 x i32>
  %207 = shufflevector <8 x i32> %206, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %208 = bitcast <8 x i32> %207 to <4 x i64>
  %209 = and <4 x i64> %205, splat (i64 4294967295)
  %210 = and <4 x i64> %208, splat (i64 4294967295)
  %211 = mul nuw <4 x i64> %210, %209
  %212 = shufflevector <4 x i64> %202, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %213 = add <4 x i64> %185, %212
  %214 = add <4 x i64> %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %216 = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %216, i32 0, i32 3, i32 1)
  %217 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %218 = load <4 x i64>, ptr %215, align 64
  %219 = load <4 x i64>, ptr %217, align 8
  %220 = xor <4 x i64> %219, %218
  %221 = bitcast <4 x i64> %220 to <8 x i32>
  %222 = shufflevector <8 x i32> %221, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %223 = bitcast <8 x i32> %222 to <4 x i64>
  %224 = and <4 x i64> %220, splat (i64 4294967295)
  %225 = and <4 x i64> %223, splat (i64 4294967295)
  %226 = mul nuw <4 x i64> %225, %224
  %227 = shufflevector <4 x i64> %218, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %228 = add <4 x i64> %200, %227
  %229 = add <4 x i64> %228, %226
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %231 = load <4 x i64>, ptr %230, align 32
  %232 = getelementptr inbounds nuw i8, ptr %156, i64 48
  %233 = load <4 x i64>, ptr %232, align 8
  %234 = xor <4 x i64> %233, %231
  %235 = bitcast <4 x i64> %234 to <8 x i32>
  %236 = shufflevector <8 x i32> %235, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %237 = bitcast <8 x i32> %236 to <4 x i64>
  %238 = and <4 x i64> %234, splat (i64 4294967295)
  %239 = and <4 x i64> %237, splat (i64 4294967295)
  %240 = mul nuw <4 x i64> %239, %238
  %241 = shufflevector <4 x i64> %231, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %242 = add <4 x i64> %214, %241
  %243 = add <4 x i64> %242, %240
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %245, i32 0, i32 3, i32 1)
  %246 = getelementptr inbounds nuw i8, ptr %156, i64 24
  %247 = load <4 x i64>, ptr %244, align 64
  %248 = load <4 x i64>, ptr %246, align 8
  %249 = xor <4 x i64> %248, %247
  %250 = bitcast <4 x i64> %249 to <8 x i32>
  %251 = shufflevector <8 x i32> %250, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %252 = bitcast <8 x i32> %251 to <4 x i64>
  %253 = and <4 x i64> %249, splat (i64 4294967295)
  %254 = and <4 x i64> %252, splat (i64 4294967295)
  %255 = mul nuw <4 x i64> %254, %253
  %256 = shufflevector <4 x i64> %247, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %257 = add <4 x i64> %229, %256
  %258 = add <4 x i64> %257, %255
  %259 = getelementptr inbounds nuw i8, ptr %3, i64 480
  %260 = load <4 x i64>, ptr %259, align 32
  %261 = getelementptr inbounds nuw i8, ptr %156, i64 56
  %262 = load <4 x i64>, ptr %261, align 8
  %263 = xor <4 x i64> %262, %260
  %264 = bitcast <4 x i64> %263 to <8 x i32>
  %265 = shufflevector <8 x i32> %264, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %266 = bitcast <8 x i32> %265 to <4 x i64>
  %267 = and <4 x i64> %263, splat (i64 4294967295)
  %268 = and <4 x i64> %266, splat (i64 4294967295)
  %269 = mul nuw <4 x i64> %268, %267
  %270 = shufflevector <4 x i64> %260, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %271 = add <4 x i64> %243, %270
  %272 = add <4 x i64> %271, %269
  store <4 x i64> %258, ptr %3, align 64
  store <4 x i64> %272, ptr %9, align 32
  %273 = add i64 %39, 4
  br label %274

274:                                              ; preds = %154, %153, %86
  %275 = phi i64 [ %273, %154 ], [ 0, %86 ], [ %43, %153 ]
  store i64 %275, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %33, ptr noundef nonnull readonly align 1 dereferenceable(44) %35, i64 44, i1 false)
  %276 = load ptr, ptr %14, align 8
  %277 = freeze ptr %276
  %278 = load i64, ptr %32, align 16
  store i32 44, ptr %4, align 64
  %279 = icmp eq ptr %277, null
  %280 = select i1 %279, ptr %31, ptr %277
  %281 = icmp ugt i64 %278, 240
  br i1 %281, label %282, label %399

282:                                              ; preds = %274
  %283 = load <4 x i64>, ptr %3, align 64
  %284 = load <4 x i64>, ptr %9, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  %285 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %286 = getelementptr inbounds nuw i8, ptr %3, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %286, i64 20, i1 false)
  %287 = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %287, ptr noundef nonnull align 64 dereferenceable(12) %285, i64 12, i1 false)
  %288 = getelementptr inbounds nuw i8, ptr %3, i64 268
  %289 = load <4 x i64>, ptr %288, align 4
  %290 = load i64, ptr %15, align 32
  %291 = getelementptr inbounds nuw i8, ptr %280, i64 %290
  %292 = getelementptr inbounds i8, ptr %291, i64 -7
  %293 = load <4 x i64>, ptr %2, align 32
  %294 = load <4 x i64>, ptr %292, align 1
  %295 = getelementptr inbounds nuw i8, ptr %291, i64 25
  %296 = load <4 x i64>, ptr %295, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  %297 = shufflevector <4 x i64> %289, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %298 = add <4 x i64> %284, %297
  %299 = xor <4 x i64> %296, %289
  %300 = bitcast <4 x i64> %299 to <8 x i32>
  %301 = shufflevector <8 x i32> %300, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %302 = bitcast <8 x i32> %301 to <4 x i64>
  %303 = and <4 x i64> %302, splat (i64 4294967295)
  %304 = and <4 x i64> %299, splat (i64 4294967295)
  %305 = mul nuw <4 x i64> %303, %304
  %306 = add <4 x i64> %298, %305
  %307 = shufflevector <4 x i64> %293, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %308 = add <4 x i64> %283, %307
  %309 = xor <4 x i64> %294, %293
  %310 = bitcast <4 x i64> %309 to <8 x i32>
  %311 = shufflevector <8 x i32> %310, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %312 = bitcast <8 x i32> %311 to <4 x i64>
  %313 = and <4 x i64> %312, splat (i64 4294967295)
  %314 = and <4 x i64> %309, splat (i64 4294967295)
  %315 = mul nuw <4 x i64> %313, %314
  %316 = add <4 x i64> %308, %315
  %317 = getelementptr inbounds nuw i8, ptr %3, i64 75
  %318 = getelementptr inbounds nuw i8, ptr %277, i64 11
  %319 = select i1 %279, ptr %317, ptr %318
  %320 = mul i64 %278, -7046029288634856825
  %321 = extractelement <4 x i64> %316, i64 0
  %322 = extractelement <4 x i64> %316, i64 1
  %323 = load i64, ptr %319, align 1
  %324 = getelementptr inbounds nuw i8, ptr %3, i64 83
  %325 = getelementptr i8, ptr %277, i64 19
  %326 = select i1 %279, ptr %324, ptr %325
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %323, %321
  %329 = xor i64 %327, %322
  %330 = zext i64 %328 to i128
  %331 = zext i64 %329 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %320, %335
  %337 = getelementptr inbounds nuw i8, ptr %3, i64 91
  %338 = getelementptr inbounds nuw i8, ptr %277, i64 27
  %339 = select i1 %279, ptr %337, ptr %338
  %340 = extractelement <4 x i64> %316, i64 2
  %341 = extractelement <4 x i64> %316, i64 3
  %342 = load i64, ptr %339, align 1
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 99
  %344 = getelementptr i8, ptr %277, i64 35
  %345 = select i1 %279, ptr %343, ptr %344
  %346 = load i64, ptr %345, align 1
  %347 = xor i64 %342, %340
  %348 = xor i64 %346, %341
  %349 = zext i64 %347 to i128
  %350 = zext i64 %348 to i128
  %351 = mul nuw i128 %350, %349
  %352 = lshr i128 %351, 64
  %353 = xor i128 %352, %351
  %354 = trunc i128 %353 to i64
  %355 = add i64 %336, %354
  %356 = getelementptr inbounds nuw i8, ptr %3, i64 107
  %357 = getelementptr inbounds nuw i8, ptr %277, i64 43
  %358 = select i1 %279, ptr %356, ptr %357
  %359 = extractelement <4 x i64> %306, i64 0
  %360 = extractelement <4 x i64> %306, i64 1
  %361 = load i64, ptr %358, align 1
  %362 = getelementptr inbounds nuw i8, ptr %3, i64 115
  %363 = getelementptr i8, ptr %277, i64 51
  %364 = select i1 %279, ptr %362, ptr %363
  %365 = load i64, ptr %364, align 1
  %366 = xor i64 %361, %359
  %367 = xor i64 %365, %360
  %368 = zext i64 %366 to i128
  %369 = zext i64 %367 to i128
  %370 = mul nuw i128 %369, %368
  %371 = lshr i128 %370, 64
  %372 = xor i128 %371, %370
  %373 = trunc i128 %372 to i64
  %374 = add i64 %355, %373
  %375 = getelementptr inbounds nuw i8, ptr %3, i64 123
  %376 = getelementptr inbounds nuw i8, ptr %277, i64 59
  %377 = select i1 %279, ptr %375, ptr %376
  %378 = extractelement <4 x i64> %306, i64 2
  %379 = extractelement <4 x i64> %306, i64 3
  %380 = load i64, ptr %377, align 1
  %381 = getelementptr inbounds nuw i8, ptr %3, i64 131
  %382 = getelementptr i8, ptr %277, i64 67
  %383 = select i1 %279, ptr %381, ptr %382
  %384 = load i64, ptr %383, align 1
  %385 = xor i64 %380, %378
  %386 = xor i64 %384, %379
  %387 = zext i64 %385 to i128
  %388 = zext i64 %386 to i128
  %389 = mul nuw i128 %388, %387
  %390 = lshr i128 %389, 64
  %391 = xor i128 %390, %389
  %392 = trunc i128 %391 to i64
  %393 = add i64 %374, %392
  %394 = lshr i64 %393, 37
  %395 = xor i64 %394, %393
  %396 = mul i64 %395, 1609587791953885689
  %397 = lshr i64 %396, 32
  %398 = xor i64 %397, %396
  br label %1490

399:                                              ; preds = %274
  %400 = load i64, ptr %13, align 8
  %401 = icmp eq i64 %400, 0
  %402 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %403 = icmp samesign ult i64 %278, 17
  br i1 %401, label %879, label %404

404:                                              ; preds = %399
  br i1 %403, label %405, label %499

405:                                              ; preds = %404
  %406 = icmp samesign ugt i64 %278, 8
  br i1 %406, label %407, label %431, !prof !139

407:                                              ; preds = %405
  %408 = add i64 %400, 7458650908927343033
  %409 = sub i64 -5812251307325107654, %400
  %410 = load i64, ptr %402, align 64
  %411 = xor i64 %410, %408
  %412 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %413 = getelementptr inbounds i8, ptr %412, i64 -8
  %414 = load i64, ptr %413, align 1
  %415 = xor i64 %414, %409
  %416 = tail call noundef i64 @llvm.bswap.i64(i64 %411)
  %417 = add i64 %416, %278
  %418 = add i64 %417, %415
  %419 = zext i64 %411 to i128
  %420 = zext i64 %415 to i128
  %421 = mul nuw i128 %420, %419
  %422 = lshr i128 %421, 64
  %423 = xor i128 %422, %421
  %424 = trunc i128 %423 to i64
  %425 = add i64 %418, %424
  %426 = lshr i64 %425, 37
  %427 = xor i64 %426, %425
  %428 = mul i64 %427, 1609587791953885689
  %429 = lshr i64 %428, 32
  %430 = xor i64 %429, %428
  br label %1490

431:                                              ; preds = %405
  %432 = icmp samesign ugt i64 %278, 3
  br i1 %432, label %433, label %460, !prof !139

433:                                              ; preds = %431
  %434 = trunc i64 %400 to i32
  %435 = tail call noundef i32 @llvm.bswap.i32(i32 %434)
  %436 = zext i32 %435 to i64
  %437 = shl nuw i64 %436, 32
  %438 = xor i64 %437, %400
  %439 = load i32, ptr %402, align 64
  %440 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %441 = getelementptr inbounds i8, ptr %440, i64 -4
  %442 = load i32, ptr %441, align 1
  %443 = sub i64 -4090762196417718878, %438
  %444 = zext i32 %442 to i64
  %445 = zext i32 %439 to i64
  %446 = shl nuw i64 %445, 32
  %447 = or disjoint i64 %446, %444
  %448 = xor i64 %447, %443
  %449 = tail call i64 @llvm.fshl.i64(i64 %448, i64 %448, i64 49)
  %450 = tail call i64 @llvm.fshl.i64(i64 %448, i64 %448, i64 24)
  %451 = xor i64 %450, %449
  %452 = xor i64 %451, %448
  %453 = mul i64 %452, -6939452855193903323
  %454 = lshr i64 %453, 35
  %455 = add nuw nsw i64 %454, %278
  %456 = xor i64 %455, %453
  %457 = mul i64 %456, -6939452855193903323
  %458 = lshr i64 %457, 28
  %459 = xor i64 %458, %457
  br label %1490

460:                                              ; preds = %431
  %461 = icmp eq i64 %278, 0
  br i1 %461, label %489, label %462

462:                                              ; preds = %460
  %463 = load i8, ptr %402, align 64
  %464 = lshr i64 %278, 1
  %465 = getelementptr inbounds nuw i8, ptr %402, i64 %464
  %466 = load i8, ptr %465, align 1
  %467 = getelementptr i8, ptr %402, i64 %278
  %468 = getelementptr i8, ptr %467, i64 -1
  %469 = load i8, ptr %468, align 1
  %470 = zext i8 %463 to i64
  %471 = shl nuw nsw i64 %470, 16
  %472 = zext i8 %466 to i64
  %473 = shl nuw nsw i64 %472, 24
  %474 = zext i8 %469 to i64
  %475 = shl nuw nsw i64 %278, 8
  %476 = or disjoint i64 %471, %475
  %477 = or disjoint i64 %476, %473
  %478 = or disjoint i64 %477, %474
  %479 = add i64 %400, 2267503259
  %480 = xor i64 %478, %479
  %481 = lshr i64 %480, 33
  %482 = xor i64 %481, %480
  %483 = mul i64 %482, -4417276706812531889
  %484 = lshr i64 %483, 29
  %485 = xor i64 %484, %483
  %486 = mul i64 %485, 1609587929392839161
  %487 = lshr i64 %486, 32
  %488 = xor i64 %487, %486
  br label %1490

489:                                              ; preds = %460
  %490 = xor i64 %400, -8707998980786479652
  %491 = lshr i64 %490, 33
  %492 = xor i64 %491, %490
  %493 = mul i64 %492, -4417276706812531889
  %494 = lshr i64 %493, 29
  %495 = xor i64 %494, %493
  %496 = mul i64 %495, 1609587929392839161
  %497 = lshr i64 %496, 32
  %498 = xor i64 %497, %496
  br label %1490

499:                                              ; preds = %404
  %500 = icmp samesign ult i64 %278, 129
  %501 = mul i64 %278, -7046029288634856825
  br i1 %500, label %502, label %643

502:                                              ; preds = %499
  %503 = icmp samesign ugt i64 %278, 32
  br i1 %503, label %504, label %606

504:                                              ; preds = %502
  %505 = icmp samesign ugt i64 %278, 64
  br i1 %505, label %506, label %573

506:                                              ; preds = %504
  %507 = icmp samesign ugt i64 %278, 96
  br i1 %507, label %508, label %540

508:                                              ; preds = %506
  %509 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %510 = load i64, ptr %509, align 16
  %511 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %512 = load i64, ptr %511, align 8
  %513 = add i64 %400, 4554437623014685352
  %514 = xor i64 %510, %513
  %515 = sub i64 2111919702937427193, %400
  %516 = xor i64 %512, %515
  %517 = zext i64 %514 to i128
  %518 = zext i64 %516 to i128
  %519 = mul nuw i128 %518, %517
  %520 = lshr i128 %519, 64
  %521 = xor i128 %520, %519
  %522 = trunc i128 %521 to i64
  %523 = add i64 %501, %522
  %524 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %525 = getelementptr inbounds i8, ptr %524, i64 -64
  %526 = load i64, ptr %525, align 1
  %527 = getelementptr i8, ptr %524, i64 -56
  %528 = load i64, ptr %527, align 1
  %529 = add i64 %400, 3556072174620004746
  %530 = xor i64 %526, %529
  %531 = sub i64 7238261902898274248, %400
  %532 = xor i64 %528, %531
  %533 = zext i64 %530 to i128
  %534 = zext i64 %532 to i128
  %535 = mul nuw i128 %534, %533
  %536 = lshr i128 %535, 64
  %537 = xor i128 %536, %535
  %538 = trunc i128 %537 to i64
  %539 = add i64 %523, %538
  br label %540

540:                                              ; preds = %508, %506
  %541 = phi i64 [ %539, %508 ], [ %501, %506 ]
  %542 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %543 = load i64, ptr %542, align 32
  %544 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %545 = load i64, ptr %544, align 8
  %546 = add i64 %400, -3818837453329782724
  %547 = xor i64 %543, %546
  %548 = sub i64 -6688317018830679928, %400
  %549 = xor i64 %545, %548
  %550 = zext i64 %547 to i128
  %551 = zext i64 %549 to i128
  %552 = mul nuw i128 %551, %550
  %553 = lshr i128 %552, 64
  %554 = xor i128 %553, %552
  %555 = trunc i128 %554 to i64
  %556 = add i64 %541, %555
  %557 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %558 = getelementptr inbounds i8, ptr %557, i64 -48
  %559 = load i64, ptr %558, align 1
  %560 = getelementptr i8, ptr %557, i64 -40
  %561 = load i64, ptr %560, align 1
  %562 = add i64 %400, 5690594596133299313
  %563 = xor i64 %559, %562
  %564 = sub i64 -2833645246901970632, %400
  %565 = xor i64 %561, %564
  %566 = zext i64 %563 to i128
  %567 = zext i64 %565 to i128
  %568 = mul nuw i128 %567, %566
  %569 = lshr i128 %568, 64
  %570 = xor i128 %569, %568
  %571 = trunc i128 %570 to i64
  %572 = add i64 %556, %571
  br label %573

573:                                              ; preds = %540, %504
  %574 = phi i64 [ %572, %540 ], [ %501, %504 ]
  %575 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %576 = load i64, ptr %575, align 16
  %577 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %578 = load i64, ptr %577, align 8
  %579 = add i64 %400, 8711581037947681227
  %580 = xor i64 %576, %579
  %581 = sub i64 2410270004345854594, %400
  %582 = xor i64 %578, %581
  %583 = zext i64 %580 to i128
  %584 = zext i64 %582 to i128
  %585 = mul nuw i128 %584, %583
  %586 = lshr i128 %585, 64
  %587 = xor i128 %586, %585
  %588 = trunc i128 %587 to i64
  %589 = add i64 %574, %588
  %590 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %591 = getelementptr inbounds i8, ptr %590, i64 -32
  %592 = load i64, ptr %591, align 1
  %593 = getelementptr i8, ptr %590, i64 -24
  %594 = load i64, ptr %593, align 1
  %595 = add i64 %400, -8204357891075471176
  %596 = xor i64 %592, %595
  %597 = sub i64 5487137525590930912, %400
  %598 = xor i64 %594, %597
  %599 = zext i64 %596 to i128
  %600 = zext i64 %598 to i128
  %601 = mul nuw i128 %600, %599
  %602 = lshr i128 %601, 64
  %603 = xor i128 %602, %601
  %604 = trunc i128 %603 to i64
  %605 = add i64 %589, %604
  br label %606

606:                                              ; preds = %573, %502
  %607 = phi i64 [ %605, %573 ], [ %501, %502 ]
  %608 = load i64, ptr %402, align 64
  %609 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %610 = load i64, ptr %609, align 8
  %611 = add i64 %400, -4734510112055689544
  %612 = xor i64 %608, %611
  %613 = sub i64 2066345149520216444, %400
  %614 = xor i64 %610, %613
  %615 = zext i64 %612 to i128
  %616 = zext i64 %614 to i128
  %617 = mul nuw i128 %616, %615
  %618 = lshr i128 %617, 64
  %619 = xor i128 %618, %617
  %620 = trunc i128 %619 to i64
  %621 = add i64 %607, %620
  %622 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %623 = getelementptr inbounds i8, ptr %622, i64 -16
  %624 = load i64, ptr %623, align 1
  %625 = getelementptr i8, ptr %622, i64 -8
  %626 = load i64, ptr %625, align 1
  %627 = add i64 %400, -2623469361688619810
  %628 = xor i64 %624, %627
  %629 = sub i64 2262974939099578482, %400
  %630 = xor i64 %626, %629
  %631 = zext i64 %628 to i128
  %632 = zext i64 %630 to i128
  %633 = mul nuw i128 %632, %631
  %634 = lshr i128 %633, 64
  %635 = xor i128 %634, %633
  %636 = trunc i128 %635 to i64
  %637 = add i64 %621, %636
  %638 = lshr i64 %637, 37
  %639 = xor i64 %638, %637
  %640 = mul i64 %639, 1609587791953885689
  %641 = lshr i64 %640, 32
  %642 = xor i64 %641, %640
  br label %1490

643:                                              ; preds = %499
  %644 = trunc nuw nsw i64 %278 to i32
  %645 = load i64, ptr %402, align 64
  %646 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %647 = load i64, ptr %646, align 8
  %648 = add i64 %400, -4734510112055689544
  %649 = xor i64 %645, %648
  %650 = sub i64 2066345149520216444, %400
  %651 = xor i64 %647, %650
  %652 = zext i64 %649 to i128
  %653 = zext i64 %651 to i128
  %654 = mul nuw i128 %653, %652
  %655 = lshr i128 %654, 64
  %656 = xor i128 %655, %654
  %657 = trunc i128 %656 to i64
  %658 = add i64 %501, %657
  %659 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %660 = load i64, ptr %659, align 16
  %661 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %662 = load i64, ptr %661, align 8
  %663 = add i64 %400, -2623469361688619810
  %664 = xor i64 %660, %663
  %665 = sub i64 2262974939099578482, %400
  %666 = xor i64 %662, %665
  %667 = zext i64 %664 to i128
  %668 = zext i64 %666 to i128
  %669 = mul nuw i128 %668, %667
  %670 = lshr i128 %669, 64
  %671 = xor i128 %670, %669
  %672 = trunc i128 %671 to i64
  %673 = add i64 %658, %672
  %674 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %675 = load i64, ptr %674, align 32
  %676 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %677 = load i64, ptr %676, align 8
  %678 = add i64 %400, 8711581037947681227
  %679 = xor i64 %675, %678
  %680 = sub i64 2410270004345854594, %400
  %681 = xor i64 %677, %680
  %682 = zext i64 %679 to i128
  %683 = zext i64 %681 to i128
  %684 = mul nuw i128 %683, %682
  %685 = lshr i128 %684, 64
  %686 = xor i128 %685, %684
  %687 = trunc i128 %686 to i64
  %688 = add i64 %673, %687
  %689 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %690 = load i64, ptr %689, align 16
  %691 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %692 = load i64, ptr %691, align 8
  %693 = add i64 %400, -8204357891075471176
  %694 = xor i64 %690, %693
  %695 = sub i64 5487137525590930912, %400
  %696 = xor i64 %692, %695
  %697 = zext i64 %694 to i128
  %698 = zext i64 %696 to i128
  %699 = mul nuw i128 %698, %697
  %700 = lshr i128 %699, 64
  %701 = xor i128 %700, %699
  %702 = trunc i128 %701 to i64
  %703 = add i64 %688, %702
  %704 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %705 = load i64, ptr %704, align 64
  %706 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %707 = load i64, ptr %706, align 8
  %708 = add i64 %400, -3818837453329782724
  %709 = xor i64 %705, %708
  %710 = sub i64 -6688317018830679928, %400
  %711 = xor i64 %707, %710
  %712 = zext i64 %709 to i128
  %713 = zext i64 %711 to i128
  %714 = mul nuw i128 %713, %712
  %715 = lshr i128 %714, 64
  %716 = xor i128 %715, %714
  %717 = trunc i128 %716 to i64
  %718 = add i64 %703, %717
  %719 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %720 = load i64, ptr %719, align 16
  %721 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %722 = load i64, ptr %721, align 8
  %723 = add i64 %400, 5690594596133299313
  %724 = xor i64 %720, %723
  %725 = sub i64 -2833645246901970632, %400
  %726 = xor i64 %722, %725
  %727 = zext i64 %724 to i128
  %728 = zext i64 %726 to i128
  %729 = mul nuw i128 %728, %727
  %730 = lshr i128 %729, 64
  %731 = xor i128 %730, %729
  %732 = trunc i128 %731 to i64
  %733 = add i64 %718, %732
  %734 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %735 = load i64, ptr %734, align 32
  %736 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %737 = load i64, ptr %736, align 8
  %738 = add i64 %400, 4554437623014685352
  %739 = xor i64 %735, %738
  %740 = sub i64 2111919702937427193, %400
  %741 = xor i64 %737, %740
  %742 = zext i64 %739 to i128
  %743 = zext i64 %741 to i128
  %744 = mul nuw i128 %743, %742
  %745 = lshr i128 %744, 64
  %746 = xor i128 %745, %744
  %747 = trunc i128 %746 to i64
  %748 = add i64 %733, %747
  %749 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %750 = load i64, ptr %749, align 16
  %751 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %752 = load i64, ptr %751, align 8
  %753 = add i64 %400, 3556072174620004746
  %754 = xor i64 %750, %753
  %755 = sub i64 7238261902898274248, %400
  %756 = xor i64 %752, %755
  %757 = zext i64 %754 to i128
  %758 = zext i64 %756 to i128
  %759 = mul nuw i128 %758, %757
  %760 = lshr i128 %759, 64
  %761 = xor i128 %760, %759
  %762 = trunc i128 %761 to i64
  %763 = add i64 %748, %762
  %764 = lshr i32 %644, 4
  %765 = lshr i64 %763, 37
  %766 = xor i64 %765, %763
  %767 = mul i64 %766, 1609587791953885689
  %768 = lshr i64 %767, 32
  %769 = xor i64 %768, %767
  %770 = icmp eq i32 %764, 8
  br i1 %770, label %856, label %771

771:                                              ; preds = %643
  %772 = zext nneg i32 %764 to i64
  %773 = and i64 %772, 1
  %774 = icmp eq i32 %764, 9
  br i1 %774, label %830, label %775

775:                                              ; preds = %771
  %776 = and i64 %772, 14
  %777 = add nsw i64 %776, -10
  br label %778

778:                                              ; preds = %778, %775
  %779 = phi i64 [ 8, %775 ], [ %825, %778 ]
  %780 = phi i64 [ %769, %775 ], [ %824, %778 ]
  %781 = phi i64 [ 0, %775 ], [ %826, %778 ]
  %782 = shl nsw i64 %779, 4
  %783 = getelementptr inbounds nuw i8, ptr %402, i64 %782
  %784 = getelementptr i8, ptr @XXH3_kSecret, i64 %782
  %785 = getelementptr i8, ptr %784, i64 -125
  %786 = load i64, ptr %783, align 32
  %787 = getelementptr i8, ptr %783, i64 8
  %788 = load i64, ptr %787, align 8
  %789 = load i64, ptr %785, align 1
  %790 = getelementptr i8, ptr %784, i64 -117
  %791 = load i64, ptr %790, align 1
  %792 = add i64 %789, %400
  %793 = xor i64 %792, %786
  %794 = sub i64 %791, %400
  %795 = xor i64 %794, %788
  %796 = zext i64 %793 to i128
  %797 = zext i64 %795 to i128
  %798 = mul nuw i128 %797, %796
  %799 = lshr i128 %798, 64
  %800 = xor i128 %799, %798
  %801 = trunc i128 %800 to i64
  %802 = add i64 %780, %801
  %803 = shl i64 %779, 4
  %804 = or disjoint i64 %803, 16
  %805 = getelementptr inbounds nuw i8, ptr %402, i64 %804
  %806 = getelementptr i8, ptr @XXH3_kSecret, i64 %804
  %807 = getelementptr i8, ptr %806, i64 -125
  %808 = load i64, ptr %805, align 16
  %809 = getelementptr i8, ptr %805, i64 8
  %810 = load i64, ptr %809, align 8
  %811 = load i64, ptr %807, align 1
  %812 = getelementptr i8, ptr %806, i64 -117
  %813 = load i64, ptr %812, align 1
  %814 = add i64 %811, %400
  %815 = xor i64 %814, %808
  %816 = sub i64 %813, %400
  %817 = xor i64 %816, %810
  %818 = zext i64 %815 to i128
  %819 = zext i64 %817 to i128
  %820 = mul nuw i128 %819, %818
  %821 = lshr i128 %820, 64
  %822 = xor i128 %821, %820
  %823 = trunc i128 %822 to i64
  %824 = add i64 %802, %823
  %825 = add nuw nsw i64 %779, 2
  %826 = add i64 %781, 2
  %827 = icmp eq i64 %781, %777
  br i1 %827, label %828, label %778

828:                                              ; preds = %778
  %829 = shl nsw i64 %825, 4
  br label %830

830:                                              ; preds = %828, %771
  %831 = phi i64 [ poison, %771 ], [ %824, %828 ]
  %832 = phi i64 [ 128, %771 ], [ %829, %828 ]
  %833 = phi i64 [ %769, %771 ], [ %824, %828 ]
  %834 = icmp eq i64 %773, 0
  br i1 %834, label %856, label %835

835:                                              ; preds = %830
  %836 = getelementptr inbounds nuw i8, ptr %402, i64 %832
  %837 = getelementptr i8, ptr @XXH3_kSecret, i64 %832
  %838 = getelementptr i8, ptr %837, i64 -125
  %839 = load i64, ptr %836, align 16
  %840 = getelementptr i8, ptr %836, i64 8
  %841 = load i64, ptr %840, align 8
  %842 = load i64, ptr %838, align 1
  %843 = getelementptr i8, ptr %837, i64 -117
  %844 = load i64, ptr %843, align 1
  %845 = add i64 %842, %400
  %846 = xor i64 %845, %839
  %847 = sub i64 %844, %400
  %848 = xor i64 %847, %841
  %849 = zext i64 %846 to i128
  %850 = zext i64 %848 to i128
  %851 = mul nuw i128 %850, %849
  %852 = lshr i128 %851, 64
  %853 = xor i128 %852, %851
  %854 = trunc i128 %853 to i64
  %855 = add i64 %833, %854
  br label %856

856:                                              ; preds = %835, %830, %643
  %857 = phi i64 [ %769, %643 ], [ %831, %830 ], [ %855, %835 ]
  %858 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %859 = getelementptr inbounds i8, ptr %858, i64 -16
  %860 = load i64, ptr %859, align 1
  %861 = getelementptr i8, ptr %858, i64 -8
  %862 = load i64, ptr %861, align 1
  %863 = add i64 %400, 8320639771003045937
  %864 = xor i64 %860, %863
  %865 = sub i64 -1453760514566526364, %400
  %866 = xor i64 %862, %865
  %867 = zext i64 %864 to i128
  %868 = zext i64 %866 to i128
  %869 = mul nuw i128 %868, %867
  %870 = lshr i128 %869, 64
  %871 = xor i128 %870, %869
  %872 = trunc i128 %871 to i64
  %873 = add i64 %857, %872
  %874 = lshr i64 %873, 37
  %875 = xor i64 %874, %873
  %876 = mul i64 %875, 1609587791953885689
  %877 = lshr i64 %876, 32
  %878 = xor i64 %877, %876
  br label %1490

879:                                              ; preds = %399
  br i1 %403, label %880, label %1005

880:                                              ; preds = %879
  %881 = icmp samesign ugt i64 %278, 8
  br i1 %881, label %882, label %922, !prof !139

882:                                              ; preds = %880
  %883 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %884 = getelementptr inbounds nuw i8, ptr %277, i64 24
  %885 = select i1 %279, ptr %883, ptr %884
  %886 = load i64, ptr %885, align 1
  %887 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %888 = getelementptr inbounds nuw i8, ptr %277, i64 32
  %889 = select i1 %279, ptr %887, ptr %888
  %890 = load i64, ptr %889, align 1
  %891 = xor i64 %890, %886
  %892 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %893 = getelementptr inbounds nuw i8, ptr %277, i64 40
  %894 = select i1 %279, ptr %892, ptr %893
  %895 = load i64, ptr %894, align 1
  %896 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %897 = getelementptr inbounds nuw i8, ptr %277, i64 48
  %898 = select i1 %279, ptr %896, ptr %897
  %899 = load i64, ptr %898, align 1
  %900 = xor i64 %899, %895
  %901 = load i64, ptr %402, align 64
  %902 = xor i64 %891, %901
  %903 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %904 = getelementptr inbounds i8, ptr %903, i64 -8
  %905 = load i64, ptr %904, align 1
  %906 = xor i64 %900, %905
  %907 = tail call noundef i64 @llvm.bswap.i64(i64 %902)
  %908 = add i64 %907, %278
  %909 = add i64 %908, %906
  %910 = zext i64 %902 to i128
  %911 = zext i64 %906 to i128
  %912 = mul nuw i128 %911, %910
  %913 = lshr i128 %912, 64
  %914 = xor i128 %913, %912
  %915 = trunc i128 %914 to i64
  %916 = add i64 %909, %915
  %917 = lshr i64 %916, 37
  %918 = xor i64 %917, %916
  %919 = mul i64 %918, 1609587791953885689
  %920 = lshr i64 %919, 32
  %921 = xor i64 %920, %919
  br label %1490

922:                                              ; preds = %880
  %923 = icmp samesign ugt i64 %278, 3
  br i1 %923, label %924, label %954, !prof !139

924:                                              ; preds = %922
  %925 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %926 = getelementptr i8, ptr %277, i64 8
  %927 = select i1 %279, ptr %925, ptr %926
  %928 = load i64, ptr %927, align 1
  %929 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %930 = getelementptr i8, ptr %277, i64 16
  %931 = select i1 %279, ptr %929, ptr %930
  %932 = load i64, ptr %931, align 1
  %933 = load i32, ptr %402, align 64
  %934 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %935 = getelementptr inbounds i8, ptr %934, i64 -4
  %936 = load i32, ptr %935, align 1
  %937 = xor i64 %932, %928
  %938 = zext i32 %936 to i64
  %939 = zext i32 %933 to i64
  %940 = shl nuw i64 %939, 32
  %941 = or disjoint i64 %940, %938
  %942 = xor i64 %937, %941
  %943 = tail call i64 @llvm.fshl.i64(i64 %942, i64 %942, i64 49)
  %944 = tail call i64 @llvm.fshl.i64(i64 %942, i64 %942, i64 24)
  %945 = xor i64 %944, %943
  %946 = xor i64 %945, %942
  %947 = mul i64 %946, -6939452855193903323
  %948 = lshr i64 %947, 35
  %949 = add nuw nsw i64 %948, %278
  %950 = xor i64 %949, %947
  %951 = mul i64 %950, -6939452855193903323
  %952 = lshr i64 %951, 28
  %953 = xor i64 %952, %951
  br label %1490

954:                                              ; preds = %922
  %955 = icmp eq i64 %278, 0
  br i1 %955, label %987, label %956

956:                                              ; preds = %954
  %957 = load i32, ptr %280, align 1
  %958 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %959 = getelementptr i8, ptr %277, i64 4
  %960 = select i1 %279, ptr %958, ptr %959
  %961 = load i32, ptr %960, align 1
  %962 = load i8, ptr %402, align 64
  %963 = lshr i64 %278, 1
  %964 = getelementptr inbounds nuw i8, ptr %402, i64 %963
  %965 = load i8, ptr %964, align 1
  %966 = getelementptr i8, ptr %402, i64 %278
  %967 = getelementptr i8, ptr %966, i64 -1
  %968 = load i8, ptr %967, align 1
  %969 = zext i8 %962 to i64
  %970 = shl nuw nsw i64 %969, 16
  %971 = zext i8 %965 to i64
  %972 = shl nuw nsw i64 %971, 24
  %973 = zext i8 %968 to i64
  %974 = shl nuw nsw i64 %278, 8
  %975 = or disjoint i64 %970, %974
  %976 = or disjoint i64 %975, %972
  %977 = or disjoint i64 %976, %973
  %978 = xor i32 %961, %957
  %979 = zext i32 %978 to i64
  %980 = xor i64 %977, %979
  %981 = mul i64 %980, -4417276706812531889
  %982 = lshr i64 %981, 29
  %983 = xor i64 %982, %981
  %984 = mul i64 %983, 1609587929392839161
  %985 = lshr i64 %984, 32
  %986 = xor i64 %985, %984
  br label %1490

987:                                              ; preds = %954
  %988 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %989 = getelementptr inbounds nuw i8, ptr %277, i64 56
  %990 = select i1 %279, ptr %988, ptr %989
  %991 = load i64, ptr %990, align 1
  %992 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %993 = getelementptr inbounds nuw i8, ptr %277, i64 64
  %994 = select i1 %279, ptr %992, ptr %993
  %995 = load i64, ptr %994, align 1
  %996 = xor i64 %995, %991
  %997 = lshr i64 %996, 33
  %998 = xor i64 %997, %996
  %999 = mul i64 %998, -4417276706812531889
  %1000 = lshr i64 %999, 29
  %1001 = xor i64 %1000, %999
  %1002 = mul i64 %1001, 1609587929392839161
  %1003 = lshr i64 %1002, 32
  %1004 = xor i64 %1003, %1002
  br label %1490

1005:                                             ; preds = %879
  %1006 = icmp samesign ult i64 %278, 129
  %1007 = mul i64 %278, -7046029288634856825
  br i1 %1006, label %1008, label %1194

1008:                                             ; preds = %1005
  %1009 = icmp samesign ugt i64 %278, 32
  br i1 %1009, label %1010, label %1148

1010:                                             ; preds = %1008
  %1011 = icmp samesign ugt i64 %278, 64
  br i1 %1011, label %1012, label %1103

1012:                                             ; preds = %1010
  %1013 = icmp samesign ugt i64 %278, 96
  br i1 %1013, label %1014, label %1058

1014:                                             ; preds = %1012
  %1015 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1016 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1017 = getelementptr inbounds nuw i8, ptr %277, i64 96
  %1018 = select i1 %279, ptr %1016, ptr %1017
  %1019 = load i64, ptr %1015, align 16
  %1020 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1021 = load i64, ptr %1020, align 8
  %1022 = load i64, ptr %1018, align 1
  %1023 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1024 = getelementptr i8, ptr %277, i64 104
  %1025 = select i1 %279, ptr %1023, ptr %1024
  %1026 = load i64, ptr %1025, align 1
  %1027 = xor i64 %1022, %1019
  %1028 = xor i64 %1026, %1021
  %1029 = zext i64 %1027 to i128
  %1030 = zext i64 %1028 to i128
  %1031 = mul nuw i128 %1030, %1029
  %1032 = lshr i128 %1031, 64
  %1033 = xor i128 %1032, %1031
  %1034 = trunc i128 %1033 to i64
  %1035 = add i64 %1007, %1034
  %1036 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %1037 = getelementptr inbounds i8, ptr %1036, i64 -64
  %1038 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1039 = getelementptr inbounds nuw i8, ptr %277, i64 112
  %1040 = select i1 %279, ptr %1038, ptr %1039
  %1041 = load i64, ptr %1037, align 1
  %1042 = getelementptr i8, ptr %1036, i64 -56
  %1043 = load i64, ptr %1042, align 1
  %1044 = load i64, ptr %1040, align 1
  %1045 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1046 = getelementptr i8, ptr %277, i64 120
  %1047 = select i1 %279, ptr %1045, ptr %1046
  %1048 = load i64, ptr %1047, align 1
  %1049 = xor i64 %1044, %1041
  %1050 = xor i64 %1048, %1043
  %1051 = zext i64 %1049 to i128
  %1052 = zext i64 %1050 to i128
  %1053 = mul nuw i128 %1052, %1051
  %1054 = lshr i128 %1053, 64
  %1055 = xor i128 %1054, %1053
  %1056 = trunc i128 %1055 to i64
  %1057 = add i64 %1035, %1056
  br label %1058

1058:                                             ; preds = %1014, %1012
  %1059 = phi i64 [ %1057, %1014 ], [ %1007, %1012 ]
  %1060 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1061 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1062 = getelementptr inbounds nuw i8, ptr %277, i64 64
  %1063 = select i1 %279, ptr %1061, ptr %1062
  %1064 = load i64, ptr %1060, align 32
  %1065 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1066 = load i64, ptr %1065, align 8
  %1067 = load i64, ptr %1063, align 1
  %1068 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1069 = getelementptr i8, ptr %277, i64 72
  %1070 = select i1 %279, ptr %1068, ptr %1069
  %1071 = load i64, ptr %1070, align 1
  %1072 = xor i64 %1067, %1064
  %1073 = xor i64 %1071, %1066
  %1074 = zext i64 %1072 to i128
  %1075 = zext i64 %1073 to i128
  %1076 = mul nuw i128 %1075, %1074
  %1077 = lshr i128 %1076, 64
  %1078 = xor i128 %1077, %1076
  %1079 = trunc i128 %1078 to i64
  %1080 = add i64 %1059, %1079
  %1081 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %1082 = getelementptr inbounds i8, ptr %1081, i64 -48
  %1083 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1084 = getelementptr inbounds nuw i8, ptr %277, i64 80
  %1085 = select i1 %279, ptr %1083, ptr %1084
  %1086 = load i64, ptr %1082, align 1
  %1087 = getelementptr i8, ptr %1081, i64 -40
  %1088 = load i64, ptr %1087, align 1
  %1089 = load i64, ptr %1085, align 1
  %1090 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1091 = getelementptr i8, ptr %277, i64 88
  %1092 = select i1 %279, ptr %1090, ptr %1091
  %1093 = load i64, ptr %1092, align 1
  %1094 = xor i64 %1089, %1086
  %1095 = xor i64 %1093, %1088
  %1096 = zext i64 %1094 to i128
  %1097 = zext i64 %1095 to i128
  %1098 = mul nuw i128 %1097, %1096
  %1099 = lshr i128 %1098, 64
  %1100 = xor i128 %1099, %1098
  %1101 = trunc i128 %1100 to i64
  %1102 = add i64 %1080, %1101
  br label %1103

1103:                                             ; preds = %1058, %1010
  %1104 = phi i64 [ %1102, %1058 ], [ %1007, %1010 ]
  %1105 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1106 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1107 = getelementptr inbounds nuw i8, ptr %277, i64 32
  %1108 = select i1 %279, ptr %1106, ptr %1107
  %1109 = load i64, ptr %1105, align 16
  %1110 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1111 = load i64, ptr %1110, align 8
  %1112 = load i64, ptr %1108, align 1
  %1113 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1114 = getelementptr i8, ptr %277, i64 40
  %1115 = select i1 %279, ptr %1113, ptr %1114
  %1116 = load i64, ptr %1115, align 1
  %1117 = xor i64 %1112, %1109
  %1118 = xor i64 %1116, %1111
  %1119 = zext i64 %1117 to i128
  %1120 = zext i64 %1118 to i128
  %1121 = mul nuw i128 %1120, %1119
  %1122 = lshr i128 %1121, 64
  %1123 = xor i128 %1122, %1121
  %1124 = trunc i128 %1123 to i64
  %1125 = add i64 %1104, %1124
  %1126 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %1127 = getelementptr inbounds i8, ptr %1126, i64 -32
  %1128 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1129 = getelementptr inbounds nuw i8, ptr %277, i64 48
  %1130 = select i1 %279, ptr %1128, ptr %1129
  %1131 = load i64, ptr %1127, align 1
  %1132 = getelementptr i8, ptr %1126, i64 -24
  %1133 = load i64, ptr %1132, align 1
  %1134 = load i64, ptr %1130, align 1
  %1135 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1136 = getelementptr i8, ptr %277, i64 56
  %1137 = select i1 %279, ptr %1135, ptr %1136
  %1138 = load i64, ptr %1137, align 1
  %1139 = xor i64 %1134, %1131
  %1140 = xor i64 %1138, %1133
  %1141 = zext i64 %1139 to i128
  %1142 = zext i64 %1140 to i128
  %1143 = mul nuw i128 %1142, %1141
  %1144 = lshr i128 %1143, 64
  %1145 = xor i128 %1144, %1143
  %1146 = trunc i128 %1145 to i64
  %1147 = add i64 %1125, %1146
  br label %1148

1148:                                             ; preds = %1103, %1008
  %1149 = phi i64 [ %1147, %1103 ], [ %1007, %1008 ]
  %1150 = load i64, ptr %402, align 64
  %1151 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1152 = load i64, ptr %1151, align 8
  %1153 = load i64, ptr %280, align 1
  %1154 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1155 = getelementptr i8, ptr %277, i64 8
  %1156 = select i1 %279, ptr %1154, ptr %1155
  %1157 = load i64, ptr %1156, align 1
  %1158 = xor i64 %1153, %1150
  %1159 = xor i64 %1157, %1152
  %1160 = zext i64 %1158 to i128
  %1161 = zext i64 %1159 to i128
  %1162 = mul nuw i128 %1161, %1160
  %1163 = lshr i128 %1162, 64
  %1164 = xor i128 %1163, %1162
  %1165 = trunc i128 %1164 to i64
  %1166 = add i64 %1149, %1165
  %1167 = getelementptr inbounds nuw i8, ptr %402, i64 %278
  %1168 = getelementptr inbounds i8, ptr %1167, i64 -16
  %1169 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1170 = getelementptr inbounds nuw i8, ptr %277, i64 16
  %1171 = select i1 %279, ptr %1169, ptr %1170
  %1172 = load i64, ptr %1168, align 1
  %1173 = getelementptr i8, ptr %1167, i64 -8
  %1174 = load i64, ptr %1173, align 1
  %1175 = load i64, ptr %1171, align 1
  %1176 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1177 = getelementptr i8, ptr %277, i64 24
  %1178 = select i1 %279, ptr %1176, ptr %1177
  %1179 = load i64, ptr %1178, align 1
  %1180 = xor i64 %1175, %1172
  %1181 = xor i64 %1179, %1174
  %1182 = zext i64 %1180 to i128
  %1183 = zext i64 %1181 to i128
  %1184 = mul nuw i128 %1183, %1182
  %1185 = lshr i128 %1184, 64
  %1186 = xor i128 %1185, %1184
  %1187 = trunc i128 %1186 to i64
  %1188 = add i64 %1166, %1187
  %1189 = lshr i64 %1188, 37
  %1190 = xor i64 %1189, %1188
  %1191 = mul i64 %1190, 1609587791953885689
  %1192 = lshr i64 %1191, 32
  %1193 = xor i64 %1192, %1191
  br label %1490

1194:                                             ; preds = %1005
  %1195 = trunc nuw nsw i64 %278 to i32
  %1196 = load i64, ptr %402, align 64
  %1197 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1198 = load i64, ptr %1197, align 8
  %1199 = load i64, ptr %280, align 1
  %1200 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1201 = getelementptr i8, ptr %277, i64 8
  %1202 = select i1 %279, ptr %1200, ptr %1201
  %1203 = lshr i32 %1195, 4
  br label %1204

1204:                                             ; preds = %1194, %18
  %1205 = phi i64 [ -4734510112055689544, %18 ], [ %1199, %1194 ]
  %1206 = phi i64 [ %27, %18 ], [ %1198, %1194 ]
  %1207 = phi i64 [ %25, %18 ], [ %1196, %1194 ]
  %1208 = phi i32 [ 12, %18 ], [ %1203, %1194 ]
  %1209 = phi ptr [ @XXH3_kSecret, %18 ], [ %280, %1194 ]
  %1210 = phi i1 [ false, %18 ], [ %279, %1194 ]
  %1211 = phi ptr [ @XXH3_kSecret, %18 ], [ %277, %1194 ]
  %1212 = phi i64 [ 200, %18 ], [ %278, %1194 ]
  %1213 = phi i64 [ -7253308125045442184, %18 ], [ %1007, %1194 ]
  %1214 = phi ptr [ getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), %18 ], [ %1202, %1194 ]
  %1215 = load i64, ptr %1214, align 1
  %1216 = xor i64 %1205, %1207
  %1217 = xor i64 %1215, %1206
  %1218 = zext i64 %1216 to i128
  %1219 = zext i64 %1217 to i128
  %1220 = mul nuw i128 %1219, %1218
  %1221 = lshr i128 %1220, 64
  %1222 = xor i128 %1221, %1220
  %1223 = trunc i128 %1222 to i64
  %1224 = add i64 %1213, %1223
  %1225 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1226 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1227 = getelementptr inbounds nuw i8, ptr %1211, i64 16
  %1228 = select i1 %1210, ptr %1226, ptr %1227
  %1229 = load i64, ptr %1225, align 16
  %1230 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1231 = load i64, ptr %1230, align 8
  %1232 = load i64, ptr %1228, align 1
  %1233 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1234 = getelementptr i8, ptr %1211, i64 24
  %1235 = select i1 %1210, ptr %1233, ptr %1234
  %1236 = load i64, ptr %1235, align 1
  %1237 = xor i64 %1232, %1229
  %1238 = xor i64 %1236, %1231
  %1239 = zext i64 %1237 to i128
  %1240 = zext i64 %1238 to i128
  %1241 = mul nuw i128 %1240, %1239
  %1242 = lshr i128 %1241, 64
  %1243 = xor i128 %1242, %1241
  %1244 = trunc i128 %1243 to i64
  %1245 = add i64 %1224, %1244
  %1246 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1247 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1248 = getelementptr inbounds nuw i8, ptr %1211, i64 32
  %1249 = select i1 %1210, ptr %1247, ptr %1248
  %1250 = load i64, ptr %1246, align 32
  %1251 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1252 = load i64, ptr %1251, align 8
  %1253 = load i64, ptr %1249, align 1
  %1254 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1255 = getelementptr i8, ptr %1211, i64 40
  %1256 = select i1 %1210, ptr %1254, ptr %1255
  %1257 = load i64, ptr %1256, align 1
  %1258 = xor i64 %1253, %1250
  %1259 = xor i64 %1257, %1252
  %1260 = zext i64 %1258 to i128
  %1261 = zext i64 %1259 to i128
  %1262 = mul nuw i128 %1261, %1260
  %1263 = lshr i128 %1262, 64
  %1264 = xor i128 %1263, %1262
  %1265 = trunc i128 %1264 to i64
  %1266 = add i64 %1245, %1265
  %1267 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1268 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1269 = getelementptr inbounds nuw i8, ptr %1211, i64 48
  %1270 = select i1 %1210, ptr %1268, ptr %1269
  %1271 = load i64, ptr %1267, align 16
  %1272 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1273 = load i64, ptr %1272, align 8
  %1274 = load i64, ptr %1270, align 1
  %1275 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1276 = getelementptr i8, ptr %1211, i64 56
  %1277 = select i1 %1210, ptr %1275, ptr %1276
  %1278 = load i64, ptr %1277, align 1
  %1279 = xor i64 %1274, %1271
  %1280 = xor i64 %1278, %1273
  %1281 = zext i64 %1279 to i128
  %1282 = zext i64 %1280 to i128
  %1283 = mul nuw i128 %1282, %1281
  %1284 = lshr i128 %1283, 64
  %1285 = xor i128 %1284, %1283
  %1286 = trunc i128 %1285 to i64
  %1287 = add i64 %1266, %1286
  %1288 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %1289 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1290 = getelementptr inbounds nuw i8, ptr %1211, i64 64
  %1291 = select i1 %1210, ptr %1289, ptr %1290
  %1292 = load i64, ptr %1288, align 64
  %1293 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %1294 = load i64, ptr %1293, align 8
  %1295 = load i64, ptr %1291, align 1
  %1296 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1297 = getelementptr i8, ptr %1211, i64 72
  %1298 = select i1 %1210, ptr %1296, ptr %1297
  %1299 = load i64, ptr %1298, align 1
  %1300 = xor i64 %1295, %1292
  %1301 = xor i64 %1299, %1294
  %1302 = zext i64 %1300 to i128
  %1303 = zext i64 %1301 to i128
  %1304 = mul nuw i128 %1303, %1302
  %1305 = lshr i128 %1304, 64
  %1306 = xor i128 %1305, %1304
  %1307 = trunc i128 %1306 to i64
  %1308 = add i64 %1287, %1307
  %1309 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %1310 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1311 = getelementptr inbounds nuw i8, ptr %1211, i64 80
  %1312 = select i1 %1210, ptr %1310, ptr %1311
  %1313 = load i64, ptr %1309, align 16
  %1314 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %1315 = load i64, ptr %1314, align 8
  %1316 = load i64, ptr %1312, align 1
  %1317 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1318 = getelementptr i8, ptr %1211, i64 88
  %1319 = select i1 %1210, ptr %1317, ptr %1318
  %1320 = load i64, ptr %1319, align 1
  %1321 = xor i64 %1316, %1313
  %1322 = xor i64 %1320, %1315
  %1323 = zext i64 %1321 to i128
  %1324 = zext i64 %1322 to i128
  %1325 = mul nuw i128 %1324, %1323
  %1326 = lshr i128 %1325, 64
  %1327 = xor i128 %1326, %1325
  %1328 = trunc i128 %1327 to i64
  %1329 = add i64 %1308, %1328
  %1330 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %1331 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1332 = getelementptr inbounds nuw i8, ptr %1211, i64 96
  %1333 = select i1 %1210, ptr %1331, ptr %1332
  %1334 = load i64, ptr %1330, align 32
  %1335 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %1336 = load i64, ptr %1335, align 8
  %1337 = load i64, ptr %1333, align 1
  %1338 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1339 = getelementptr i8, ptr %1211, i64 104
  %1340 = select i1 %1210, ptr %1338, ptr %1339
  %1341 = load i64, ptr %1340, align 1
  %1342 = xor i64 %1337, %1334
  %1343 = xor i64 %1341, %1336
  %1344 = zext i64 %1342 to i128
  %1345 = zext i64 %1343 to i128
  %1346 = mul nuw i128 %1345, %1344
  %1347 = lshr i128 %1346, 64
  %1348 = xor i128 %1347, %1346
  %1349 = trunc i128 %1348 to i64
  %1350 = add i64 %1329, %1349
  %1351 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %1352 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1353 = getelementptr inbounds nuw i8, ptr %1211, i64 112
  %1354 = select i1 %1210, ptr %1352, ptr %1353
  %1355 = load i64, ptr %1351, align 16
  %1356 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %1357 = load i64, ptr %1356, align 8
  %1358 = load i64, ptr %1354, align 1
  %1359 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1360 = getelementptr i8, ptr %1211, i64 120
  %1361 = select i1 %1210, ptr %1359, ptr %1360
  %1362 = load i64, ptr %1361, align 1
  %1363 = xor i64 %1358, %1355
  %1364 = xor i64 %1362, %1357
  %1365 = zext i64 %1363 to i128
  %1366 = zext i64 %1364 to i128
  %1367 = mul nuw i128 %1366, %1365
  %1368 = lshr i128 %1367, 64
  %1369 = xor i128 %1368, %1367
  %1370 = trunc i128 %1369 to i64
  %1371 = add i64 %1350, %1370
  %1372 = lshr i64 %1371, 37
  %1373 = xor i64 %1372, %1371
  %1374 = mul i64 %1373, 1609587791953885689
  %1375 = lshr i64 %1374, 32
  %1376 = xor i64 %1375, %1374
  %1377 = icmp eq i32 %1208, 8
  br i1 %1377, label %1460, label %1378

1378:                                             ; preds = %1204
  %1379 = zext nneg i32 %1208 to i64
  %1380 = and i64 %1379, 1
  %1381 = icmp eq i32 %1208, 9
  br i1 %1381, label %1435, label %1382

1382:                                             ; preds = %1378
  %1383 = and i64 %1379, 268435454
  %1384 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1385 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1386 = add nsw i64 %1383, -10
  br label %1387

1387:                                             ; preds = %1387, %1382
  %1388 = phi i64 [ 8, %1382 ], [ %1430, %1387 ]
  %1389 = phi i64 [ %1376, %1382 ], [ %1429, %1387 ]
  %1390 = phi i64 [ 0, %1382 ], [ %1431, %1387 ]
  %1391 = shl nsw i64 %1388, 4
  %1392 = getelementptr inbounds nuw i8, ptr %1384, i64 %1391
  %1393 = getelementptr i8, ptr %1209, i64 %1391
  %1394 = getelementptr i8, ptr %1393, i64 -125
  %1395 = load i64, ptr %1392, align 32
  %1396 = getelementptr i8, ptr %1392, i64 8
  %1397 = load i64, ptr %1396, align 8
  %1398 = load i64, ptr %1394, align 1
  %1399 = getelementptr i8, ptr %1393, i64 -117
  %1400 = load i64, ptr %1399, align 1
  %1401 = xor i64 %1398, %1395
  %1402 = xor i64 %1400, %1397
  %1403 = zext i64 %1401 to i128
  %1404 = zext i64 %1402 to i128
  %1405 = mul nuw i128 %1404, %1403
  %1406 = lshr i128 %1405, 64
  %1407 = xor i128 %1406, %1405
  %1408 = trunc i128 %1407 to i64
  %1409 = add i64 %1389, %1408
  %1410 = shl i64 %1388, 4
  %1411 = or disjoint i64 %1410, 16
  %1412 = getelementptr inbounds nuw i8, ptr %1385, i64 %1411
  %1413 = getelementptr i8, ptr %1209, i64 %1411
  %1414 = getelementptr i8, ptr %1413, i64 -125
  %1415 = load i64, ptr %1412, align 16
  %1416 = getelementptr i8, ptr %1412, i64 8
  %1417 = load i64, ptr %1416, align 8
  %1418 = load i64, ptr %1414, align 1
  %1419 = getelementptr i8, ptr %1413, i64 -117
  %1420 = load i64, ptr %1419, align 1
  %1421 = xor i64 %1418, %1415
  %1422 = xor i64 %1420, %1417
  %1423 = zext i64 %1421 to i128
  %1424 = zext i64 %1422 to i128
  %1425 = mul nuw i128 %1424, %1423
  %1426 = lshr i128 %1425, 64
  %1427 = xor i128 %1426, %1425
  %1428 = trunc i128 %1427 to i64
  %1429 = add i64 %1409, %1428
  %1430 = add nuw nsw i64 %1388, 2
  %1431 = add i64 %1390, 2
  %1432 = icmp eq i64 %1390, %1386
  br i1 %1432, label %1433, label %1387

1433:                                             ; preds = %1387
  %1434 = shl nsw i64 %1430, 4
  br label %1435

1435:                                             ; preds = %1433, %1378
  %1436 = phi i64 [ poison, %1378 ], [ %1429, %1433 ]
  %1437 = phi i64 [ 128, %1378 ], [ %1434, %1433 ]
  %1438 = phi i64 [ %1376, %1378 ], [ %1429, %1433 ]
  %1439 = icmp eq i64 %1380, 0
  br i1 %1439, label %1460, label %1440

1440:                                             ; preds = %1435
  %1441 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1442 = getelementptr inbounds nuw i8, ptr %1441, i64 %1437
  %1443 = getelementptr i8, ptr %1209, i64 %1437
  %1444 = getelementptr i8, ptr %1443, i64 -125
  %1445 = load i64, ptr %1442, align 16
  %1446 = getelementptr i8, ptr %1442, i64 8
  %1447 = load i64, ptr %1446, align 8
  %1448 = load i64, ptr %1444, align 1
  %1449 = getelementptr i8, ptr %1443, i64 -117
  %1450 = load i64, ptr %1449, align 1
  %1451 = xor i64 %1448, %1445
  %1452 = xor i64 %1450, %1447
  %1453 = zext i64 %1451 to i128
  %1454 = zext i64 %1452 to i128
  %1455 = mul nuw i128 %1454, %1453
  %1456 = lshr i128 %1455, 64
  %1457 = xor i128 %1456, %1455
  %1458 = trunc i128 %1457 to i64
  %1459 = add i64 %1438, %1458
  br label %1460

1460:                                             ; preds = %1440, %1435, %1204
  %1461 = phi i64 [ %1376, %1204 ], [ %1436, %1435 ], [ %1459, %1440 ]
  %1462 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1463 = getelementptr inbounds nuw i8, ptr %1462, i64 %1212
  %1464 = getelementptr inbounds i8, ptr %1463, i64 -16
  %1465 = getelementptr inbounds nuw i8, ptr %3, i64 183
  %1466 = getelementptr inbounds nuw i8, ptr %1211, i64 119
  %1467 = select i1 %1210, ptr %1465, ptr %1466
  %1468 = load i64, ptr %1464, align 1
  %1469 = getelementptr i8, ptr %1463, i64 -8
  %1470 = load i64, ptr %1469, align 1
  %1471 = load i64, ptr %1467, align 1
  %1472 = getelementptr inbounds nuw i8, ptr %3, i64 191
  %1473 = getelementptr i8, ptr %1211, i64 127
  %1474 = select i1 %1210, ptr %1472, ptr %1473
  %1475 = load i64, ptr %1474, align 1
  %1476 = xor i64 %1471, %1468
  %1477 = xor i64 %1475, %1470
  %1478 = zext i64 %1476 to i128
  %1479 = zext i64 %1477 to i128
  %1480 = mul nuw i128 %1479, %1478
  %1481 = lshr i128 %1480, 64
  %1482 = xor i128 %1481, %1480
  %1483 = trunc i128 %1482 to i64
  %1484 = add i64 %1461, %1483
  %1485 = lshr i64 %1484, 37
  %1486 = xor i64 %1485, %1484
  %1487 = mul i64 %1486, 1609587791953885689
  %1488 = lshr i64 %1487, 32
  %1489 = xor i64 %1488, %1487
  br label %1490

1490:                                             ; preds = %282, %407, %433, %462, %489, %606, %856, %882, %924, %956, %987, %1148, %1460
  %1491 = phi i64 [ %398, %282 ], [ %642, %606 ], [ %878, %856 ], [ %430, %407 ], [ %459, %433 ], [ %488, %462 ], [ %498, %489 ], [ %1193, %1148 ], [ %1489, %1460 ], [ %921, %882 ], [ %953, %924 ], [ %986, %956 ], [ %1004, %987 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #8
  ret i64 %1491
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

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"XXH3_len_129to240_64b: argument 0:thread"}
!7 = distinct !{!7, !"XXH3_len_129to240_64b"}
!8 = distinct !{!8, !9, !"XXH3_64bits_internal: argument 0"}
!9 = distinct !{!9, !"XXH3_64bits_internal"}
!10 = !{!11, !12}
!11 = distinct !{!11, !7, !"XXH3_len_129to240_64b: argument 1:thread"}
!12 = distinct !{!12, !9, !"XXH3_64bits_internal: argument 1"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"XXH3_consumeStripes: argument 0"}
!15 = distinct !{!15, !"XXH3_consumeStripes"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"XXH3_consumeStripes: argument 1"}
!18 = !{!19}
!19 = distinct !{!19, !15, !"XXH3_consumeStripes: argument 2"}
!20 = !{!21}
!21 = distinct !{!21, !15, !"XXH3_consumeStripes: argument 3"}
!22 = !{!14, !19, !21}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_accumulate: argument 1"}
!25 = distinct !{!25, !"XXH3_accumulate"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"XXH3_accumulate: argument 2"}
!28 = !{!29, !14}
!29 = distinct !{!29, !30, !"XXH3_scrambleAcc_avx2: argument 0"}
!30 = distinct !{!30, !"XXH3_scrambleAcc_avx2"}
!31 = !{!32, !17, !19, !21}
!32 = distinct !{!32, !30, !"XXH3_scrambleAcc_avx2: argument 1"}
!33 = !{!17, !19, !21}
!34 = !{!35, !27, !14, !17, !21}
!35 = distinct !{!35, !25, !"XXH3_accumulate: argument 0"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_accumulate_512_avx2: argument 1"}
!38 = distinct !{!38, !"XXH3_accumulate_512_avx2"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"XXH3_accumulate_512_avx2: argument 2"}
!41 = !{!37, !24, !19}
!42 = !{!43, !40, !35, !27, !14, !17, !21}
!43 = distinct !{!43, !38, !"XXH3_accumulate_512_avx2: argument 0"}
!44 = !{!40, !27, !21}
!45 = !{!43, !37, !35, !24, !14, !17, !19}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!29}
!49 = !{!32}
!50 = !{!32, !21}
!51 = !{!29, !14, !17, !19}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_accumulate: argument 0"}
!54 = distinct !{!54, !"XXH3_accumulate"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"XXH3_accumulate: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !54, !"XXH3_accumulate: argument 2"}
!59 = !{!53, !58, !14, !17, !21}
!60 = !{!61}
!61 = distinct !{!61, !62, !"XXH3_accumulate_512_avx2: argument 0"}
!62 = distinct !{!62, !"XXH3_accumulate_512_avx2"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"XXH3_accumulate_512_avx2: argument 1"}
!65 = !{!66}
!66 = distinct !{!66, !62, !"XXH3_accumulate_512_avx2: argument 2"}
!67 = !{!64, !56, !19}
!68 = !{!61, !66, !53, !58, !14, !17, !21}
!69 = !{!66, !58, !21}
!70 = !{!61, !64, !53, !56, !14, !17, !19}
!71 = !{!61, !53, !14}
!72 = !{!64, !66, !56, !58, !17, !19, !21}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_accumulate: argument 0"}
!75 = distinct !{!75, !"XXH3_accumulate"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_accumulate: argument 1"}
!78 = !{!79}
!79 = distinct !{!79, !75, !"XXH3_accumulate: argument 2"}
!80 = !{!81, !74, !14}
!81 = distinct !{!81, !82, !"XXH3_accumulate_512_avx2: argument 0"}
!82 = distinct !{!82, !"XXH3_accumulate_512_avx2"}
!83 = !{!84, !85, !77, !79, !17, !19, !21}
!84 = distinct !{!84, !82, !"XXH3_accumulate_512_avx2: argument 1"}
!85 = distinct !{!85, !82, !"XXH3_accumulate_512_avx2: argument 2"}
!86 = !{!74, !79, !14, !17, !21}
!87 = !{!81}
!88 = !{!84}
!89 = !{!85}
!90 = !{!84, !77, !19}
!91 = !{!81, !85, !74, !79, !14, !17, !21}
!92 = !{!85, !79, !21}
!93 = !{!81, !84, !74, !77, !14, !17, !19}
!94 = !{!95}
!95 = distinct !{!95, !82, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!96 = !{!97}
!97 = distinct !{!97, !82, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!98 = !{!95, !77, !19}
!99 = !{!100, !97, !74, !79, !14, !17, !21}
!100 = distinct !{!100, !82, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!101 = !{!97, !79, !21}
!102 = !{!100, !95, !74, !77, !14, !17, !19}
!103 = !{!104}
!104 = distinct !{!104, !82, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!105 = !{!106}
!106 = distinct !{!106, !82, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!107 = !{!104, !77, !19}
!108 = !{!109, !106, !74, !79, !14, !17, !21}
!109 = distinct !{!109, !82, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!110 = !{!106, !79, !21}
!111 = !{!109, !104, !74, !77, !14, !17, !19}
!112 = !{!113}
!113 = distinct !{!113, !82, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!114 = !{!115}
!115 = distinct !{!115, !82, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!116 = !{!113, !77, !19}
!117 = !{!118, !115, !74, !79, !14, !17, !21}
!118 = distinct !{!118, !82, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!119 = !{!115, !79, !21}
!120 = !{!118, !113, !74, !77, !14, !17, !19}
!121 = !{!122}
!122 = distinct !{!122, !123, !"XXH3_accumulate_512_avx2: argument 1"}
!123 = distinct !{!123, !"XXH3_accumulate_512_avx2"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"XXH3_accumulate_512_avx2: argument 2"}
!126 = !{!127, !125}
!127 = distinct !{!127, !123, !"XXH3_accumulate_512_avx2: argument 0"}
!128 = !{!127, !122}
!129 = !{!130}
!130 = distinct !{!130, !131, !"XXH3_mergeAccs: argument 1"}
!131 = distinct !{!131, !"XXH3_mergeAccs"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"XXH3_mergeAccs: argument 0"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"XXH3_64bits_internal: argument 0"}
!136 = distinct !{!136, !"XXH3_64bits_internal"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"XXH3_64bits_internal: argument 1"}
!139 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!140 = !{!141, !135}
!141 = distinct !{!141, !142, !"XXH3_len_17to128_64b: argument 0"}
!142 = distinct !{!142, !"XXH3_len_17to128_64b"}
!143 = !{!144, !138}
!144 = distinct !{!144, !142, !"XXH3_len_17to128_64b: argument 1"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"XXH3_len_129to240_64b: argument 0"}
!147 = distinct !{!147, !"XXH3_len_129to240_64b"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"XXH3_len_129to240_64b: argument 1"}
!150 = !{!146, !135}
!151 = !{!149, !138}
!152 = distinct !{!152, !47}
!153 = !{!8}
!154 = !{!12}
!155 = !{!156}
!156 = distinct !{!156, !157, !"XXH3_len_17to128_64b: argument 0"}
!157 = distinct !{!157, !"XXH3_len_17to128_64b"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"XXH3_len_17to128_64b: argument 1"}
!160 = !{!156, !8}
!161 = !{!159, !12}
!162 = !{!163}
!163 = distinct !{!163, !7, !"XXH3_len_129to240_64b: argument 0"}
!164 = !{!165}
!165 = distinct !{!165, !7, !"XXH3_len_129to240_64b: argument 1"}
!166 = !{!163, !8}
!167 = !{!165, !12}
