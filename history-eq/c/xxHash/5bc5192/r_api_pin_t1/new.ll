; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5bc5192/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_100_200(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
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
  br label %1824

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
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 256
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
  %275 = phi <4 x i64> [ %272, %154 ], [ %112, %86 ], [ %150, %153 ]
  %276 = phi <4 x i64> [ %258, %154 ], [ %100, %86 ], [ %136, %153 ]
  %277 = phi i64 [ %273, %154 ], [ 0, %86 ], [ %43, %153 ]
  store i64 %277, ptr %36, align 8
  %278 = and i64 %37, 288230376151711743
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %432

280:                                              ; preds = %274
  %281 = sub i64 %37, %277
  %282 = shl i64 %277, 3
  %283 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %282
  %284 = icmp eq i64 %37, %277
  br i1 %284, label %322, label %285

285:                                              ; preds = %280, %285
  %286 = phi <4 x i64> [ %319, %285 ], [ %275, %280 ]
  %287 = phi <4 x i64> [ %305, %285 ], [ %276, %280 ]
  %288 = phi i64 [ %320, %285 ], [ 0, %280 ]
  %289 = shl i64 %288, 6
  %290 = getelementptr inbounds nuw i8, ptr %35, i64 %289
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %291, i32 0, i32 3, i32 1)
  %292 = shl i64 %288, 3
  %293 = getelementptr inbounds nuw i8, ptr %283, i64 %292
  %294 = load <4 x i64>, ptr %290, align 1
  %295 = load <4 x i64>, ptr %293, align 8
  %296 = xor <4 x i64> %295, %294
  %297 = bitcast <4 x i64> %296 to <8 x i32>
  %298 = shufflevector <8 x i32> %297, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %299 = bitcast <8 x i32> %298 to <4 x i64>
  %300 = and <4 x i64> %296, splat (i64 4294967295)
  %301 = and <4 x i64> %299, splat (i64 4294967295)
  %302 = mul nuw <4 x i64> %301, %300
  %303 = shufflevector <4 x i64> %294, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %304 = add <4 x i64> %287, %303
  %305 = add <4 x i64> %304, %302
  %306 = getelementptr inbounds nuw i8, ptr %290, i64 32
  %307 = load <4 x i64>, ptr %306, align 1
  %308 = getelementptr inbounds nuw i8, ptr %293, i64 32
  %309 = load <4 x i64>, ptr %308, align 8
  %310 = xor <4 x i64> %309, %307
  %311 = bitcast <4 x i64> %310 to <8 x i32>
  %312 = shufflevector <8 x i32> %311, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %313 = bitcast <8 x i32> %312 to <4 x i64>
  %314 = and <4 x i64> %310, splat (i64 4294967295)
  %315 = and <4 x i64> %313, splat (i64 4294967295)
  %316 = mul nuw <4 x i64> %315, %314
  %317 = shufflevector <4 x i64> %307, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %318 = add <4 x i64> %286, %317
  %319 = add <4 x i64> %318, %316
  %320 = add nuw i64 %288, 1
  %321 = icmp eq i64 %320, %281
  br i1 %321, label %322, label %285

322:                                              ; preds = %285, %280
  %323 = phi <4 x i64> [ %275, %280 ], [ %319, %285 ]
  %324 = phi <4 x i64> [ %276, %280 ], [ %305, %285 ]
  %325 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %38
  %326 = lshr <4 x i64> %324, splat (i64 47)
  %327 = load <4 x i64>, ptr %325, align 1
  %328 = xor <4 x i64> %326, %327
  %329 = xor <4 x i64> %328, %324
  %330 = bitcast <4 x i64> %329 to <8 x i32>
  %331 = shufflevector <8 x i32> %330, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %332 = bitcast <8 x i32> %331 to <4 x i64>
  %333 = and <4 x i64> %329, splat (i64 4294967295)
  %334 = mul nuw <4 x i64> %333, splat (i64 2654435761)
  %335 = mul <4 x i64> %332, splat (i64 -7046029290881679360)
  %336 = add <4 x i64> %335, %334
  store <4 x i64> %336, ptr %3, align 64
  %337 = lshr <4 x i64> %323, splat (i64 47)
  %338 = getelementptr inbounds nuw i8, ptr %325, i64 32
  %339 = load <4 x i64>, ptr %338, align 1
  %340 = xor <4 x i64> %337, %339
  %341 = xor <4 x i64> %340, %323
  %342 = bitcast <4 x i64> %341 to <8 x i32>
  %343 = shufflevector <8 x i32> %342, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %344 = bitcast <8 x i32> %343 to <4 x i64>
  %345 = and <4 x i64> %341, splat (i64 4294967295)
  %346 = mul nuw <4 x i64> %345, splat (i64 2654435761)
  %347 = mul <4 x i64> %344, splat (i64 -7046029290881679360)
  %348 = add <4 x i64> %347, %346
  store <4 x i64> %348, ptr %9, align 32
  store i64 0, ptr %36, align 8
  %349 = shl i64 %281, 6
  %350 = add nuw nsw i64 %349, 256
  %351 = sub i64 0, %281
  %352 = icmp ult i64 %37, %351
  br i1 %352, label %353, label %423

353:                                              ; preds = %322
  %354 = icmp eq i64 %37, 0
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 %350
  br label %356

356:                                              ; preds = %397, %353
  %357 = phi <4 x i64> [ %348, %353 ], [ %419, %397 ]
  %358 = phi <4 x i64> [ %336, %353 ], [ %409, %397 ]
  %359 = phi i64 [ %351, %353 ], [ %420, %397 ]
  br i1 %354, label %397, label %360

360:                                              ; preds = %356, %360
  %361 = phi <4 x i64> [ %394, %360 ], [ %357, %356 ]
  %362 = phi <4 x i64> [ %380, %360 ], [ %358, %356 ]
  %363 = phi i64 [ %395, %360 ], [ 0, %356 ]
  %364 = shl i64 %363, 6
  %365 = getelementptr inbounds nuw i8, ptr %355, i64 %364
  %366 = getelementptr inbounds nuw i8, ptr %365, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %366, i32 0, i32 3, i32 1)
  %367 = shl i64 %363, 3
  %368 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %367
  %369 = load <4 x i64>, ptr %365, align 1
  %370 = load <4 x i64>, ptr %368, align 8
  %371 = xor <4 x i64> %370, %369
  %372 = bitcast <4 x i64> %371 to <8 x i32>
  %373 = shufflevector <8 x i32> %372, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %374 = bitcast <8 x i32> %373 to <4 x i64>
  %375 = and <4 x i64> %371, splat (i64 4294967295)
  %376 = and <4 x i64> %374, splat (i64 4294967295)
  %377 = mul nuw <4 x i64> %376, %375
  %378 = shufflevector <4 x i64> %369, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %379 = add <4 x i64> %362, %378
  %380 = add <4 x i64> %379, %377
  %381 = getelementptr inbounds nuw i8, ptr %365, i64 32
  %382 = load <4 x i64>, ptr %381, align 1
  %383 = getelementptr inbounds nuw i8, ptr %368, i64 32
  %384 = load <4 x i64>, ptr %383, align 8
  %385 = xor <4 x i64> %384, %382
  %386 = bitcast <4 x i64> %385 to <8 x i32>
  %387 = shufflevector <8 x i32> %386, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %388 = bitcast <8 x i32> %387 to <4 x i64>
  %389 = and <4 x i64> %385, splat (i64 4294967295)
  %390 = and <4 x i64> %388, splat (i64 4294967295)
  %391 = mul nuw <4 x i64> %390, %389
  %392 = shufflevector <4 x i64> %382, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %393 = add <4 x i64> %361, %392
  %394 = add <4 x i64> %393, %391
  %395 = add nuw i64 %363, 1
  %396 = icmp eq i64 %395, %37
  br i1 %396, label %397, label %360

397:                                              ; preds = %360, %356
  %398 = phi <4 x i64> [ %357, %356 ], [ %394, %360 ]
  %399 = phi <4 x i64> [ %358, %356 ], [ %380, %360 ]
  %400 = lshr <4 x i64> %399, splat (i64 47)
  %401 = xor <4 x i64> %400, %327
  %402 = xor <4 x i64> %401, %399
  %403 = bitcast <4 x i64> %402 to <8 x i32>
  %404 = shufflevector <8 x i32> %403, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %405 = bitcast <8 x i32> %404 to <4 x i64>
  %406 = and <4 x i64> %402, splat (i64 4294967295)
  %407 = mul nuw <4 x i64> %406, splat (i64 2654435761)
  %408 = mul <4 x i64> %405, splat (i64 -7046029290881679360)
  %409 = add <4 x i64> %408, %407
  %410 = lshr <4 x i64> %398, splat (i64 47)
  %411 = xor <4 x i64> %410, %339
  %412 = xor <4 x i64> %411, %398
  %413 = bitcast <4 x i64> %412 to <8 x i32>
  %414 = shufflevector <8 x i32> %413, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %415 = bitcast <8 x i32> %414 to <4 x i64>
  %416 = and <4 x i64> %412, splat (i64 4294967295)
  %417 = mul nuw <4 x i64> %416, splat (i64 2654435761)
  %418 = mul <4 x i64> %415, splat (i64 -7046029290881679360)
  %419 = add <4 x i64> %418, %417
  %420 = sub i64 %359, %37
  %421 = icmp ugt i64 %420, %37
  br i1 %421, label %356, label %422

422:                                              ; preds = %397
  store <4 x i64> %409, ptr %3, align 64
  store <4 x i64> %419, ptr %9, align 32
  br label %423

423:                                              ; preds = %422, %322
  %424 = phi <4 x i64> [ %348, %322 ], [ %419, %422 ]
  %425 = phi <4 x i64> [ %336, %322 ], [ %409, %422 ]
  %426 = sub nsw i64 44, %349
  %427 = icmp sgt i64 %349, -20
  br i1 %427, label %428, label %432

428:                                              ; preds = %423
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 %350
  %430 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %431 = getelementptr inbounds i8, ptr %429, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %430, ptr noundef nonnull readonly align 1 dereferenceable(64) %431, i64 64, i1 false)
  br label %688

432:                                              ; preds = %423, %274
  %433 = phi <4 x i64> [ %424, %423 ], [ %275, %274 ]
  %434 = phi <4 x i64> [ %425, %423 ], [ %276, %274 ]
  %435 = phi i64 [ 0, %423 ], [ %277, %274 ]
  %436 = phi i64 [ %426, %423 ], [ 44, %274 ]
  %437 = phi i64 [ %350, %423 ], [ 256, %274 ]
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 %437
  %439 = icmp sgt i64 %436, 256
  br i1 %439, label %440, label %688

440:                                              ; preds = %432
  %441 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %38
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 32
  br label %443

443:                                              ; preds = %677, %440
  %444 = phi <4 x i64> [ %433, %440 ], [ %678, %677 ]
  %445 = phi <4 x i64> [ %434, %440 ], [ %679, %677 ]
  %446 = phi i64 [ %435, %440 ], [ %680, %677 ]
  %447 = phi i64 [ %437, %440 ], [ %681, %677 ]
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 %447
  %449 = sub i64 %37, %446
  %450 = icmp ugt i64 %449, 4
  br i1 %450, label %559, label %451

451:                                              ; preds = %443
  %452 = sub nuw nsw i64 4, %449
  %453 = shl i64 %446, 3
  %454 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %453
  %455 = icmp eq i64 %37, %446
  br i1 %455, label %493, label %456

456:                                              ; preds = %451, %456
  %457 = phi <4 x i64> [ %490, %456 ], [ %444, %451 ]
  %458 = phi <4 x i64> [ %476, %456 ], [ %445, %451 ]
  %459 = phi i64 [ %491, %456 ], [ 0, %451 ]
  %460 = shl i64 %459, 6
  %461 = getelementptr inbounds nuw i8, ptr %448, i64 %460
  %462 = getelementptr inbounds nuw i8, ptr %461, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %462, i32 0, i32 3, i32 1)
  %463 = shl i64 %459, 3
  %464 = getelementptr inbounds nuw i8, ptr %454, i64 %463
  %465 = load <4 x i64>, ptr %461, align 1
  %466 = load <4 x i64>, ptr %464, align 8
  %467 = xor <4 x i64> %466, %465
  %468 = bitcast <4 x i64> %467 to <8 x i32>
  %469 = shufflevector <8 x i32> %468, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %470 = bitcast <8 x i32> %469 to <4 x i64>
  %471 = and <4 x i64> %467, splat (i64 4294967295)
  %472 = and <4 x i64> %470, splat (i64 4294967295)
  %473 = mul nuw <4 x i64> %472, %471
  %474 = shufflevector <4 x i64> %465, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %475 = add <4 x i64> %458, %474
  %476 = add <4 x i64> %475, %473
  %477 = getelementptr inbounds nuw i8, ptr %461, i64 32
  %478 = load <4 x i64>, ptr %477, align 1
  %479 = getelementptr inbounds nuw i8, ptr %464, i64 32
  %480 = load <4 x i64>, ptr %479, align 8
  %481 = xor <4 x i64> %480, %478
  %482 = bitcast <4 x i64> %481 to <8 x i32>
  %483 = shufflevector <8 x i32> %482, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %484 = bitcast <8 x i32> %483 to <4 x i64>
  %485 = and <4 x i64> %481, splat (i64 4294967295)
  %486 = and <4 x i64> %484, splat (i64 4294967295)
  %487 = mul nuw <4 x i64> %486, %485
  %488 = shufflevector <4 x i64> %478, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %489 = add <4 x i64> %457, %488
  %490 = add <4 x i64> %489, %487
  %491 = add nuw i64 %459, 1
  %492 = icmp eq i64 %491, %449
  br i1 %492, label %493, label %456

493:                                              ; preds = %456, %451
  %494 = phi <4 x i64> [ %444, %451 ], [ %490, %456 ]
  %495 = phi <4 x i64> [ %445, %451 ], [ %476, %456 ]
  %496 = lshr <4 x i64> %495, splat (i64 47)
  %497 = load <4 x i64>, ptr %441, align 1
  %498 = xor <4 x i64> %496, %497
  %499 = xor <4 x i64> %498, %495
  %500 = bitcast <4 x i64> %499 to <8 x i32>
  %501 = shufflevector <8 x i32> %500, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %502 = bitcast <8 x i32> %501 to <4 x i64>
  %503 = and <4 x i64> %499, splat (i64 4294967295)
  %504 = mul nuw <4 x i64> %503, splat (i64 2654435761)
  %505 = mul <4 x i64> %502, splat (i64 -7046029290881679360)
  %506 = add <4 x i64> %505, %504
  store <4 x i64> %506, ptr %3, align 64
  %507 = lshr <4 x i64> %494, splat (i64 47)
  %508 = load <4 x i64>, ptr %442, align 1
  %509 = xor <4 x i64> %507, %508
  %510 = xor <4 x i64> %509, %494
  %511 = bitcast <4 x i64> %510 to <8 x i32>
  %512 = shufflevector <8 x i32> %511, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %513 = bitcast <8 x i32> %512 to <4 x i64>
  %514 = and <4 x i64> %510, splat (i64 4294967295)
  %515 = mul nuw <4 x i64> %514, splat (i64 2654435761)
  %516 = mul <4 x i64> %513, splat (i64 -7046029290881679360)
  %517 = add <4 x i64> %516, %515
  store <4 x i64> %517, ptr %9, align 32
  %518 = shl nuw nsw i64 %449, 6
  %519 = getelementptr inbounds nuw i8, ptr %448, i64 %518
  %520 = icmp eq i64 %449, 4
  br i1 %520, label %677, label %521

521:                                              ; preds = %493, %521
  %522 = phi <4 x i64> [ %555, %521 ], [ %517, %493 ]
  %523 = phi <4 x i64> [ %541, %521 ], [ %506, %493 ]
  %524 = phi i64 [ %556, %521 ], [ 0, %493 ]
  %525 = shl i64 %524, 6
  %526 = getelementptr inbounds nuw i8, ptr %519, i64 %525
  %527 = getelementptr inbounds nuw i8, ptr %526, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %527, i32 0, i32 3, i32 1)
  %528 = shl i64 %524, 3
  %529 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %528
  %530 = load <4 x i64>, ptr %526, align 1
  %531 = load <4 x i64>, ptr %529, align 8
  %532 = xor <4 x i64> %531, %530
  %533 = bitcast <4 x i64> %532 to <8 x i32>
  %534 = shufflevector <8 x i32> %533, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %535 = bitcast <8 x i32> %534 to <4 x i64>
  %536 = and <4 x i64> %532, splat (i64 4294967295)
  %537 = and <4 x i64> %535, splat (i64 4294967295)
  %538 = mul nuw <4 x i64> %537, %536
  %539 = shufflevector <4 x i64> %530, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %540 = add <4 x i64> %523, %539
  %541 = add <4 x i64> %540, %538
  %542 = getelementptr inbounds nuw i8, ptr %526, i64 32
  %543 = load <4 x i64>, ptr %542, align 1
  %544 = getelementptr inbounds nuw i8, ptr %529, i64 32
  %545 = load <4 x i64>, ptr %544, align 8
  %546 = xor <4 x i64> %545, %543
  %547 = bitcast <4 x i64> %546 to <8 x i32>
  %548 = shufflevector <8 x i32> %547, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %549 = bitcast <8 x i32> %548 to <4 x i64>
  %550 = and <4 x i64> %546, splat (i64 4294967295)
  %551 = and <4 x i64> %549, splat (i64 4294967295)
  %552 = mul nuw <4 x i64> %551, %550
  %553 = shufflevector <4 x i64> %543, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %554 = add <4 x i64> %522, %553
  %555 = add <4 x i64> %554, %552
  %556 = add nuw i64 %524, 1
  %557 = icmp eq i64 %556, %452
  br i1 %557, label %558, label %521

558:                                              ; preds = %521
  store <4 x i64> %541, ptr %3, align 64
  store <4 x i64> %555, ptr %9, align 32
  br label %677

559:                                              ; preds = %443
  %560 = shl i64 %446, 3
  %561 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %560
  %562 = getelementptr inbounds nuw i8, ptr %448, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %562, i32 0, i32 3, i32 1)
  %563 = load <4 x i64>, ptr %448, align 1
  %564 = load <4 x i64>, ptr %561, align 8
  %565 = xor <4 x i64> %564, %563
  %566 = bitcast <4 x i64> %565 to <8 x i32>
  %567 = shufflevector <8 x i32> %566, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %568 = bitcast <8 x i32> %567 to <4 x i64>
  %569 = and <4 x i64> %565, splat (i64 4294967295)
  %570 = and <4 x i64> %568, splat (i64 4294967295)
  %571 = mul nuw <4 x i64> %570, %569
  %572 = shufflevector <4 x i64> %563, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %573 = add <4 x i64> %445, %572
  %574 = add <4 x i64> %573, %571
  %575 = getelementptr inbounds nuw i8, ptr %448, i64 32
  %576 = load <4 x i64>, ptr %575, align 1
  %577 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %578 = load <4 x i64>, ptr %577, align 8
  %579 = xor <4 x i64> %578, %576
  %580 = bitcast <4 x i64> %579 to <8 x i32>
  %581 = shufflevector <8 x i32> %580, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %582 = bitcast <8 x i32> %581 to <4 x i64>
  %583 = and <4 x i64> %579, splat (i64 4294967295)
  %584 = and <4 x i64> %582, splat (i64 4294967295)
  %585 = mul nuw <4 x i64> %584, %583
  %586 = shufflevector <4 x i64> %576, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %587 = add <4 x i64> %444, %586
  %588 = add <4 x i64> %587, %585
  %589 = getelementptr inbounds nuw i8, ptr %448, i64 64
  %590 = getelementptr inbounds nuw i8, ptr %448, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %590, i32 0, i32 3, i32 1)
  %591 = getelementptr inbounds nuw i8, ptr %561, i64 8
  %592 = load <4 x i64>, ptr %589, align 1
  %593 = load <4 x i64>, ptr %591, align 8
  %594 = xor <4 x i64> %593, %592
  %595 = bitcast <4 x i64> %594 to <8 x i32>
  %596 = shufflevector <8 x i32> %595, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %597 = bitcast <8 x i32> %596 to <4 x i64>
  %598 = and <4 x i64> %594, splat (i64 4294967295)
  %599 = and <4 x i64> %597, splat (i64 4294967295)
  %600 = mul nuw <4 x i64> %599, %598
  %601 = shufflevector <4 x i64> %592, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %602 = add <4 x i64> %574, %601
  %603 = add <4 x i64> %602, %600
  %604 = getelementptr inbounds nuw i8, ptr %448, i64 96
  %605 = load <4 x i64>, ptr %604, align 1
  %606 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %607 = load <4 x i64>, ptr %606, align 8
  %608 = xor <4 x i64> %607, %605
  %609 = bitcast <4 x i64> %608 to <8 x i32>
  %610 = shufflevector <8 x i32> %609, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %611 = bitcast <8 x i32> %610 to <4 x i64>
  %612 = and <4 x i64> %608, splat (i64 4294967295)
  %613 = and <4 x i64> %611, splat (i64 4294967295)
  %614 = mul nuw <4 x i64> %613, %612
  %615 = shufflevector <4 x i64> %605, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %616 = add <4 x i64> %588, %615
  %617 = add <4 x i64> %616, %614
  %618 = getelementptr inbounds nuw i8, ptr %448, i64 128
  %619 = getelementptr inbounds nuw i8, ptr %448, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %619, i32 0, i32 3, i32 1)
  %620 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %621 = load <4 x i64>, ptr %618, align 1
  %622 = load <4 x i64>, ptr %620, align 8
  %623 = xor <4 x i64> %622, %621
  %624 = bitcast <4 x i64> %623 to <8 x i32>
  %625 = shufflevector <8 x i32> %624, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %626 = bitcast <8 x i32> %625 to <4 x i64>
  %627 = and <4 x i64> %623, splat (i64 4294967295)
  %628 = and <4 x i64> %626, splat (i64 4294967295)
  %629 = mul nuw <4 x i64> %628, %627
  %630 = shufflevector <4 x i64> %621, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %631 = add <4 x i64> %603, %630
  %632 = add <4 x i64> %631, %629
  %633 = getelementptr inbounds nuw i8, ptr %448, i64 160
  %634 = load <4 x i64>, ptr %633, align 1
  %635 = getelementptr inbounds nuw i8, ptr %561, i64 48
  %636 = load <4 x i64>, ptr %635, align 8
  %637 = xor <4 x i64> %636, %634
  %638 = bitcast <4 x i64> %637 to <8 x i32>
  %639 = shufflevector <8 x i32> %638, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %640 = bitcast <8 x i32> %639 to <4 x i64>
  %641 = and <4 x i64> %637, splat (i64 4294967295)
  %642 = and <4 x i64> %640, splat (i64 4294967295)
  %643 = mul nuw <4 x i64> %642, %641
  %644 = shufflevector <4 x i64> %634, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %645 = add <4 x i64> %617, %644
  %646 = add <4 x i64> %645, %643
  %647 = getelementptr inbounds nuw i8, ptr %448, i64 192
  %648 = getelementptr inbounds nuw i8, ptr %448, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %648, i32 0, i32 3, i32 1)
  %649 = getelementptr inbounds nuw i8, ptr %561, i64 24
  %650 = load <4 x i64>, ptr %647, align 1
  %651 = load <4 x i64>, ptr %649, align 8
  %652 = xor <4 x i64> %651, %650
  %653 = bitcast <4 x i64> %652 to <8 x i32>
  %654 = shufflevector <8 x i32> %653, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %655 = bitcast <8 x i32> %654 to <4 x i64>
  %656 = and <4 x i64> %652, splat (i64 4294967295)
  %657 = and <4 x i64> %655, splat (i64 4294967295)
  %658 = mul nuw <4 x i64> %657, %656
  %659 = shufflevector <4 x i64> %650, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %660 = add <4 x i64> %632, %659
  %661 = add <4 x i64> %660, %658
  %662 = getelementptr inbounds nuw i8, ptr %448, i64 224
  %663 = load <4 x i64>, ptr %662, align 1
  %664 = getelementptr inbounds nuw i8, ptr %561, i64 56
  %665 = load <4 x i64>, ptr %664, align 8
  %666 = xor <4 x i64> %665, %663
  %667 = bitcast <4 x i64> %666 to <8 x i32>
  %668 = shufflevector <8 x i32> %667, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %669 = bitcast <8 x i32> %668 to <4 x i64>
  %670 = and <4 x i64> %666, splat (i64 4294967295)
  %671 = and <4 x i64> %669, splat (i64 4294967295)
  %672 = mul nuw <4 x i64> %671, %670
  %673 = shufflevector <4 x i64> %663, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %674 = add <4 x i64> %646, %673
  %675 = add <4 x i64> %674, %672
  store <4 x i64> %661, ptr %3, align 64
  store <4 x i64> %675, ptr %9, align 32
  %676 = add i64 %446, 4
  br label %677

677:                                              ; preds = %559, %558, %493
  %678 = phi <4 x i64> [ %675, %559 ], [ %517, %493 ], [ %555, %558 ]
  %679 = phi <4 x i64> [ %661, %559 ], [ %506, %493 ], [ %541, %558 ]
  %680 = phi i64 [ %676, %559 ], [ 0, %493 ], [ %452, %558 ]
  %681 = add nuw nsw i64 %447, 256
  %682 = icmp slt i64 %447, -212
  br i1 %682, label %443, label %683

683:                                              ; preds = %677
  %684 = getelementptr inbounds nuw i8, ptr %0, i64 %681
  store i64 %680, ptr %36, align 8
  %685 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %686 = getelementptr inbounds nuw i8, ptr %448, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %685, ptr noundef nonnull readonly align 1 dereferenceable(64) %686, i64 64, i1 false)
  %687 = sub nsw i64 44, %447
  br label %688

688:                                              ; preds = %428, %432, %683
  %689 = phi i64 [ %687, %683 ], [ %436, %432 ], [ %426, %428 ]
  %690 = phi ptr [ %684, %683 ], [ %438, %432 ], [ %429, %428 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %33, ptr readonly align 1 %690, i64 %689, i1 false)
  %691 = trunc i64 %689 to i32
  %692 = load ptr, ptr %14, align 8
  %693 = freeze ptr %692
  %694 = load i64, ptr %32, align 16
  store i32 %691, ptr %4, align 64
  %695 = icmp eq ptr %693, null
  %696 = select i1 %695, ptr %31, ptr %693
  %697 = icmp ugt i64 %694, 240
  br i1 %697, label %698, label %1019

698:                                              ; preds = %688
  %699 = load <4 x i64>, ptr %3, align 64
  %700 = load <4 x i64>, ptr %9, align 32
  %701 = icmp ugt i32 %691, 63
  br i1 %701, label %702, label %897

702:                                              ; preds = %698
  %703 = add i64 %689, 4294967295
  %704 = lshr i64 %703, 6
  %705 = and i64 %704, 67108863
  %706 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %707 = load i64, ptr %706, align 8
  %708 = load i64, ptr %16, align 8
  %709 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %710 = load i64, ptr %15, align 32
  %711 = sub i64 %708, %707
  %712 = icmp ugt i64 %711, %705
  br i1 %712, label %822, label %713

713:                                              ; preds = %702
  %714 = sub nuw nsw i64 %705, %711
  %715 = shl i64 %707, 3
  %716 = getelementptr inbounds nuw i8, ptr %696, i64 %715
  %717 = icmp eq i64 %708, %707
  br i1 %717, label %755, label %718

718:                                              ; preds = %713, %718
  %719 = phi <4 x i64> [ %752, %718 ], [ %700, %713 ]
  %720 = phi <4 x i64> [ %738, %718 ], [ %699, %713 ]
  %721 = phi i64 [ %753, %718 ], [ 0, %713 ]
  %722 = shl i64 %721, 6
  %723 = getelementptr inbounds nuw i8, ptr %709, i64 %722
  %724 = getelementptr inbounds nuw i8, ptr %723, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %724, i32 0, i32 3, i32 1)
  %725 = shl i64 %721, 3
  %726 = getelementptr inbounds nuw i8, ptr %716, i64 %725
  %727 = load <4 x i64>, ptr %723, align 64
  %728 = load <4 x i64>, ptr %726, align 1
  %729 = xor <4 x i64> %728, %727
  %730 = bitcast <4 x i64> %729 to <8 x i32>
  %731 = shufflevector <8 x i32> %730, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %732 = bitcast <8 x i32> %731 to <4 x i64>
  %733 = and <4 x i64> %729, splat (i64 4294967295)
  %734 = and <4 x i64> %732, splat (i64 4294967295)
  %735 = mul nuw <4 x i64> %734, %733
  %736 = shufflevector <4 x i64> %727, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %737 = add <4 x i64> %720, %736
  %738 = add <4 x i64> %737, %735
  %739 = getelementptr inbounds nuw i8, ptr %723, i64 32
  %740 = load <4 x i64>, ptr %739, align 32
  %741 = getelementptr inbounds nuw i8, ptr %726, i64 32
  %742 = load <4 x i64>, ptr %741, align 1
  %743 = xor <4 x i64> %742, %740
  %744 = bitcast <4 x i64> %743 to <8 x i32>
  %745 = shufflevector <8 x i32> %744, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %746 = bitcast <8 x i32> %745 to <4 x i64>
  %747 = and <4 x i64> %743, splat (i64 4294967295)
  %748 = and <4 x i64> %746, splat (i64 4294967295)
  %749 = mul nuw <4 x i64> %748, %747
  %750 = shufflevector <4 x i64> %740, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %751 = add <4 x i64> %719, %750
  %752 = add <4 x i64> %751, %749
  %753 = add nuw i64 %721, 1
  %754 = icmp eq i64 %753, %711
  br i1 %754, label %755, label %718

755:                                              ; preds = %718, %713
  %756 = phi <4 x i64> [ %700, %713 ], [ %752, %718 ]
  %757 = phi <4 x i64> [ %699, %713 ], [ %738, %718 ]
  %758 = getelementptr inbounds nuw i8, ptr %696, i64 %710
  %759 = lshr <4 x i64> %757, splat (i64 47)
  %760 = load <4 x i64>, ptr %758, align 1
  %761 = xor <4 x i64> %759, %760
  %762 = xor <4 x i64> %761, %757
  %763 = bitcast <4 x i64> %762 to <8 x i32>
  %764 = shufflevector <8 x i32> %763, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %765 = bitcast <8 x i32> %764 to <4 x i64>
  %766 = and <4 x i64> %762, splat (i64 4294967295)
  %767 = mul nuw <4 x i64> %766, splat (i64 2654435761)
  %768 = mul <4 x i64> %765, splat (i64 -7046029290881679360)
  %769 = add <4 x i64> %768, %767
  %770 = lshr <4 x i64> %756, splat (i64 47)
  %771 = getelementptr inbounds nuw i8, ptr %758, i64 32
  %772 = load <4 x i64>, ptr %771, align 1
  %773 = xor <4 x i64> %770, %772
  %774 = xor <4 x i64> %773, %756
  %775 = bitcast <4 x i64> %774 to <8 x i32>
  %776 = shufflevector <8 x i32> %775, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %777 = bitcast <8 x i32> %776 to <4 x i64>
  %778 = and <4 x i64> %774, splat (i64 4294967295)
  %779 = mul nuw <4 x i64> %778, splat (i64 2654435761)
  %780 = mul <4 x i64> %777, splat (i64 -7046029290881679360)
  %781 = add <4 x i64> %780, %779
  %782 = shl nuw nsw i64 %711, 6
  %783 = getelementptr inbounds nuw i8, ptr %709, i64 %782
  %784 = icmp eq i64 %711, %705
  br i1 %784, label %863, label %785

785:                                              ; preds = %755, %785
  %786 = phi <4 x i64> [ %819, %785 ], [ %781, %755 ]
  %787 = phi <4 x i64> [ %805, %785 ], [ %769, %755 ]
  %788 = phi i64 [ %820, %785 ], [ 0, %755 ]
  %789 = shl i64 %788, 6
  %790 = getelementptr inbounds nuw i8, ptr %783, i64 %789
  %791 = getelementptr inbounds nuw i8, ptr %790, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %791, i32 0, i32 3, i32 1)
  %792 = shl i64 %788, 3
  %793 = getelementptr inbounds nuw i8, ptr %696, i64 %792
  %794 = load <4 x i64>, ptr %790, align 64
  %795 = load <4 x i64>, ptr %793, align 1
  %796 = xor <4 x i64> %795, %794
  %797 = bitcast <4 x i64> %796 to <8 x i32>
  %798 = shufflevector <8 x i32> %797, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %799 = bitcast <8 x i32> %798 to <4 x i64>
  %800 = and <4 x i64> %796, splat (i64 4294967295)
  %801 = and <4 x i64> %799, splat (i64 4294967295)
  %802 = mul nuw <4 x i64> %801, %800
  %803 = shufflevector <4 x i64> %794, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %804 = add <4 x i64> %787, %803
  %805 = add <4 x i64> %804, %802
  %806 = getelementptr inbounds nuw i8, ptr %790, i64 32
  %807 = load <4 x i64>, ptr %806, align 32
  %808 = getelementptr inbounds nuw i8, ptr %793, i64 32
  %809 = load <4 x i64>, ptr %808, align 1
  %810 = xor <4 x i64> %809, %807
  %811 = bitcast <4 x i64> %810 to <8 x i32>
  %812 = shufflevector <8 x i32> %811, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %813 = bitcast <8 x i32> %812 to <4 x i64>
  %814 = and <4 x i64> %810, splat (i64 4294967295)
  %815 = and <4 x i64> %813, splat (i64 4294967295)
  %816 = mul nuw <4 x i64> %815, %814
  %817 = shufflevector <4 x i64> %807, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %818 = add <4 x i64> %786, %817
  %819 = add <4 x i64> %818, %816
  %820 = add nuw i64 %788, 1
  %821 = icmp eq i64 %820, %714
  br i1 %821, label %863, label %785

822:                                              ; preds = %702
  %823 = shl i64 %707, 3
  %824 = getelementptr inbounds nuw i8, ptr %696, i64 %823
  %825 = icmp eq i32 %691, 64
  br i1 %825, label %863, label %826

826:                                              ; preds = %822, %826
  %827 = phi <4 x i64> [ %860, %826 ], [ %700, %822 ]
  %828 = phi <4 x i64> [ %846, %826 ], [ %699, %822 ]
  %829 = phi i64 [ %861, %826 ], [ 0, %822 ]
  %830 = shl i64 %829, 6
  %831 = getelementptr inbounds nuw i8, ptr %709, i64 %830
  %832 = getelementptr inbounds nuw i8, ptr %831, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %832, i32 0, i32 3, i32 1)
  %833 = shl i64 %829, 3
  %834 = getelementptr inbounds nuw i8, ptr %824, i64 %833
  %835 = load <4 x i64>, ptr %831, align 64
  %836 = load <4 x i64>, ptr %834, align 1
  %837 = xor <4 x i64> %836, %835
  %838 = bitcast <4 x i64> %837 to <8 x i32>
  %839 = shufflevector <8 x i32> %838, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %840 = bitcast <8 x i32> %839 to <4 x i64>
  %841 = and <4 x i64> %837, splat (i64 4294967295)
  %842 = and <4 x i64> %840, splat (i64 4294967295)
  %843 = mul nuw <4 x i64> %842, %841
  %844 = shufflevector <4 x i64> %835, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %845 = add <4 x i64> %828, %844
  %846 = add <4 x i64> %845, %843
  %847 = getelementptr inbounds nuw i8, ptr %831, i64 32
  %848 = load <4 x i64>, ptr %847, align 32
  %849 = getelementptr inbounds nuw i8, ptr %834, i64 32
  %850 = load <4 x i64>, ptr %849, align 1
  %851 = xor <4 x i64> %850, %848
  %852 = bitcast <4 x i64> %851 to <8 x i32>
  %853 = shufflevector <8 x i32> %852, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %854 = bitcast <8 x i32> %853 to <4 x i64>
  %855 = and <4 x i64> %851, splat (i64 4294967295)
  %856 = and <4 x i64> %854, splat (i64 4294967295)
  %857 = mul nuw <4 x i64> %856, %855
  %858 = shufflevector <4 x i64> %848, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %859 = add <4 x i64> %827, %858
  %860 = add <4 x i64> %859, %857
  %861 = add nuw nsw i64 %829, 1
  %862 = icmp eq i64 %861, %705
  br i1 %862, label %863, label %826

863:                                              ; preds = %785, %826, %822, %755
  %864 = phi <4 x i64> [ %781, %755 ], [ %700, %822 ], [ %860, %826 ], [ %819, %785 ]
  %865 = phi <4 x i64> [ %769, %755 ], [ %699, %822 ], [ %846, %826 ], [ %805, %785 ]
  %866 = and i64 %689, 4294967295
  %867 = getelementptr inbounds nuw i8, ptr %709, i64 %866
  %868 = getelementptr inbounds i8, ptr %867, i64 -64
  %869 = getelementptr inbounds nuw i8, ptr %696, i64 %710
  %870 = getelementptr inbounds i8, ptr %869, i64 -7
  %871 = load <4 x i64>, ptr %868, align 1
  %872 = load <4 x i64>, ptr %870, align 1
  %873 = xor <4 x i64> %872, %871
  %874 = bitcast <4 x i64> %873 to <8 x i32>
  %875 = shufflevector <8 x i32> %874, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %876 = bitcast <8 x i32> %875 to <4 x i64>
  %877 = and <4 x i64> %873, splat (i64 4294967295)
  %878 = and <4 x i64> %876, splat (i64 4294967295)
  %879 = mul nuw <4 x i64> %878, %877
  %880 = shufflevector <4 x i64> %871, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %881 = add <4 x i64> %865, %880
  %882 = add <4 x i64> %881, %879
  %883 = getelementptr inbounds i8, ptr %867, i64 -32
  %884 = load <4 x i64>, ptr %883, align 1
  %885 = getelementptr inbounds nuw i8, ptr %869, i64 25
  %886 = load <4 x i64>, ptr %885, align 1
  %887 = xor <4 x i64> %886, %884
  %888 = bitcast <4 x i64> %887 to <8 x i32>
  %889 = shufflevector <8 x i32> %888, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %890 = bitcast <8 x i32> %889 to <4 x i64>
  %891 = and <4 x i64> %887, splat (i64 4294967295)
  %892 = and <4 x i64> %890, splat (i64 4294967295)
  %893 = mul nuw <4 x i64> %892, %891
  %894 = shufflevector <4 x i64> %884, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %895 = add <4 x i64> %864, %894
  %896 = add <4 x i64> %895, %893
  br label %934

897:                                              ; preds = %698
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  %898 = sub i64 64, %689
  %899 = and i64 %898, 127
  %900 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %901 = sub nsw i64 0, %899
  %902 = getelementptr inbounds i8, ptr %4, i64 %901
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %902, i64 %899, i1 false)
  %903 = getelementptr inbounds nuw i8, ptr %2, i64 %899
  %904 = and i64 %689, 63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %903, ptr nonnull readonly align 64 %900, i64 %904, i1 false)
  %905 = load i64, ptr %15, align 32
  %906 = getelementptr inbounds nuw i8, ptr %696, i64 %905
  %907 = getelementptr inbounds i8, ptr %906, i64 -7
  %908 = load <4 x i64>, ptr %2, align 16
  %909 = load <4 x i64>, ptr %907, align 1
  %910 = xor <4 x i64> %909, %908
  %911 = bitcast <4 x i64> %910 to <8 x i32>
  %912 = shufflevector <8 x i32> %911, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %913 = bitcast <8 x i32> %912 to <4 x i64>
  %914 = and <4 x i64> %910, splat (i64 4294967295)
  %915 = and <4 x i64> %913, splat (i64 4294967295)
  %916 = mul nuw <4 x i64> %915, %914
  %917 = shufflevector <4 x i64> %908, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %918 = add <4 x i64> %699, %917
  %919 = add <4 x i64> %918, %916
  %920 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %921 = load <4 x i64>, ptr %920, align 16
  %922 = getelementptr inbounds nuw i8, ptr %906, i64 25
  %923 = load <4 x i64>, ptr %922, align 1
  %924 = xor <4 x i64> %923, %921
  %925 = bitcast <4 x i64> %924 to <8 x i32>
  %926 = shufflevector <8 x i32> %925, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %927 = bitcast <8 x i32> %926 to <4 x i64>
  %928 = and <4 x i64> %924, splat (i64 4294967295)
  %929 = and <4 x i64> %927, splat (i64 4294967295)
  %930 = mul nuw <4 x i64> %929, %928
  %931 = shufflevector <4 x i64> %921, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %932 = add <4 x i64> %700, %931
  %933 = add <4 x i64> %932, %930
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  br label %934

934:                                              ; preds = %897, %863
  %935 = phi <4 x i64> [ %896, %863 ], [ %933, %897 ]
  %936 = phi <4 x i64> [ %882, %863 ], [ %919, %897 ]
  %937 = getelementptr inbounds nuw i8, ptr %3, i64 75
  %938 = getelementptr inbounds nuw i8, ptr %693, i64 11
  %939 = select i1 %695, ptr %937, ptr %938
  %940 = mul i64 %694, -7046029288634856825
  %941 = extractelement <4 x i64> %936, i64 0
  %942 = extractelement <4 x i64> %936, i64 1
  %943 = load i64, ptr %939, align 1
  %944 = getelementptr inbounds nuw i8, ptr %3, i64 83
  %945 = getelementptr i8, ptr %693, i64 19
  %946 = select i1 %695, ptr %944, ptr %945
  %947 = load i64, ptr %946, align 1
  %948 = xor i64 %943, %941
  %949 = xor i64 %947, %942
  %950 = zext i64 %948 to i128
  %951 = zext i64 %949 to i128
  %952 = mul nuw i128 %951, %950
  %953 = lshr i128 %952, 64
  %954 = xor i128 %953, %952
  %955 = trunc i128 %954 to i64
  %956 = add i64 %940, %955
  %957 = getelementptr inbounds nuw i8, ptr %3, i64 91
  %958 = getelementptr inbounds nuw i8, ptr %693, i64 27
  %959 = select i1 %695, ptr %957, ptr %958
  %960 = extractelement <4 x i64> %936, i64 2
  %961 = extractelement <4 x i64> %936, i64 3
  %962 = load i64, ptr %959, align 1
  %963 = getelementptr inbounds nuw i8, ptr %3, i64 99
  %964 = getelementptr i8, ptr %693, i64 35
  %965 = select i1 %695, ptr %963, ptr %964
  %966 = load i64, ptr %965, align 1
  %967 = xor i64 %962, %960
  %968 = xor i64 %966, %961
  %969 = zext i64 %967 to i128
  %970 = zext i64 %968 to i128
  %971 = mul nuw i128 %970, %969
  %972 = lshr i128 %971, 64
  %973 = xor i128 %972, %971
  %974 = trunc i128 %973 to i64
  %975 = add i64 %956, %974
  %976 = getelementptr inbounds nuw i8, ptr %3, i64 107
  %977 = getelementptr inbounds nuw i8, ptr %693, i64 43
  %978 = select i1 %695, ptr %976, ptr %977
  %979 = extractelement <4 x i64> %935, i64 0
  %980 = extractelement <4 x i64> %935, i64 1
  %981 = load i64, ptr %978, align 1
  %982 = getelementptr inbounds nuw i8, ptr %3, i64 115
  %983 = getelementptr i8, ptr %693, i64 51
  %984 = select i1 %695, ptr %982, ptr %983
  %985 = load i64, ptr %984, align 1
  %986 = xor i64 %981, %979
  %987 = xor i64 %985, %980
  %988 = zext i64 %986 to i128
  %989 = zext i64 %987 to i128
  %990 = mul nuw i128 %989, %988
  %991 = lshr i128 %990, 64
  %992 = xor i128 %991, %990
  %993 = trunc i128 %992 to i64
  %994 = add i64 %975, %993
  %995 = getelementptr inbounds nuw i8, ptr %3, i64 123
  %996 = getelementptr inbounds nuw i8, ptr %693, i64 59
  %997 = select i1 %695, ptr %995, ptr %996
  %998 = extractelement <4 x i64> %935, i64 2
  %999 = extractelement <4 x i64> %935, i64 3
  %1000 = load i64, ptr %997, align 1
  %1001 = getelementptr inbounds nuw i8, ptr %3, i64 131
  %1002 = getelementptr i8, ptr %693, i64 67
  %1003 = select i1 %695, ptr %1001, ptr %1002
  %1004 = load i64, ptr %1003, align 1
  %1005 = xor i64 %1000, %998
  %1006 = xor i64 %1004, %999
  %1007 = zext i64 %1005 to i128
  %1008 = zext i64 %1006 to i128
  %1009 = mul nuw i128 %1008, %1007
  %1010 = lshr i128 %1009, 64
  %1011 = xor i128 %1010, %1009
  %1012 = trunc i128 %1011 to i64
  %1013 = add i64 %994, %1012
  %1014 = lshr i64 %1013, 37
  %1015 = xor i64 %1014, %1013
  %1016 = mul i64 %1015, 1609587791953885689
  %1017 = lshr i64 %1016, 32
  %1018 = xor i64 %1017, %1016
  br label %2110

1019:                                             ; preds = %688
  %1020 = load i64, ptr %13, align 8
  %1021 = icmp eq i64 %1020, 0
  %1022 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1023 = icmp samesign ult i64 %694, 17
  br i1 %1021, label %1499, label %1024

1024:                                             ; preds = %1019
  br i1 %1023, label %1025, label %1119

1025:                                             ; preds = %1024
  %1026 = icmp samesign ugt i64 %694, 8
  br i1 %1026, label %1027, label %1051, !prof !382

1027:                                             ; preds = %1025
  %1028 = add i64 %1020, 7458650908927343033
  %1029 = sub i64 -5812251307325107654, %1020
  %1030 = load i64, ptr %1022, align 64
  %1031 = xor i64 %1030, %1028
  %1032 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1033 = getelementptr inbounds i8, ptr %1032, i64 -8
  %1034 = load i64, ptr %1033, align 1
  %1035 = xor i64 %1034, %1029
  %1036 = tail call noundef i64 @llvm.bswap.i64(i64 %1031)
  %1037 = add i64 %1036, %694
  %1038 = add i64 %1037, %1035
  %1039 = zext i64 %1031 to i128
  %1040 = zext i64 %1035 to i128
  %1041 = mul nuw i128 %1040, %1039
  %1042 = lshr i128 %1041, 64
  %1043 = xor i128 %1042, %1041
  %1044 = trunc i128 %1043 to i64
  %1045 = add i64 %1038, %1044
  %1046 = lshr i64 %1045, 37
  %1047 = xor i64 %1046, %1045
  %1048 = mul i64 %1047, 1609587791953885689
  %1049 = lshr i64 %1048, 32
  %1050 = xor i64 %1049, %1048
  br label %2110

1051:                                             ; preds = %1025
  %1052 = icmp samesign ugt i64 %694, 3
  br i1 %1052, label %1053, label %1080, !prof !382

1053:                                             ; preds = %1051
  %1054 = trunc i64 %1020 to i32
  %1055 = tail call noundef i32 @llvm.bswap.i32(i32 %1054)
  %1056 = zext i32 %1055 to i64
  %1057 = shl nuw i64 %1056, 32
  %1058 = xor i64 %1057, %1020
  %1059 = load i32, ptr %1022, align 64
  %1060 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1061 = getelementptr inbounds i8, ptr %1060, i64 -4
  %1062 = load i32, ptr %1061, align 1
  %1063 = sub i64 -4090762196417718878, %1058
  %1064 = zext i32 %1062 to i64
  %1065 = zext i32 %1059 to i64
  %1066 = shl nuw i64 %1065, 32
  %1067 = or disjoint i64 %1066, %1064
  %1068 = xor i64 %1067, %1063
  %1069 = tail call i64 @llvm.fshl.i64(i64 %1068, i64 %1068, i64 49)
  %1070 = tail call i64 @llvm.fshl.i64(i64 %1068, i64 %1068, i64 24)
  %1071 = xor i64 %1070, %1069
  %1072 = xor i64 %1071, %1068
  %1073 = mul i64 %1072, -6939452855193903323
  %1074 = lshr i64 %1073, 35
  %1075 = add nuw nsw i64 %1074, %694
  %1076 = xor i64 %1075, %1073
  %1077 = mul i64 %1076, -6939452855193903323
  %1078 = lshr i64 %1077, 28
  %1079 = xor i64 %1078, %1077
  br label %2110

1080:                                             ; preds = %1051
  %1081 = icmp eq i64 %694, 0
  br i1 %1081, label %1109, label %1082

1082:                                             ; preds = %1080
  %1083 = load i8, ptr %1022, align 64
  %1084 = lshr i64 %694, 1
  %1085 = getelementptr inbounds nuw i8, ptr %1022, i64 %1084
  %1086 = load i8, ptr %1085, align 1
  %1087 = getelementptr i8, ptr %1022, i64 %694
  %1088 = getelementptr i8, ptr %1087, i64 -1
  %1089 = load i8, ptr %1088, align 1
  %1090 = zext i8 %1083 to i64
  %1091 = shl nuw nsw i64 %1090, 16
  %1092 = zext i8 %1086 to i64
  %1093 = shl nuw nsw i64 %1092, 24
  %1094 = zext i8 %1089 to i64
  %1095 = shl nuw nsw i64 %694, 8
  %1096 = or disjoint i64 %1091, %1095
  %1097 = or disjoint i64 %1096, %1093
  %1098 = or disjoint i64 %1097, %1094
  %1099 = add i64 %1020, 2267503259
  %1100 = xor i64 %1098, %1099
  %1101 = lshr i64 %1100, 33
  %1102 = xor i64 %1101, %1100
  %1103 = mul i64 %1102, -4417276706812531889
  %1104 = lshr i64 %1103, 29
  %1105 = xor i64 %1104, %1103
  %1106 = mul i64 %1105, 1609587929392839161
  %1107 = lshr i64 %1106, 32
  %1108 = xor i64 %1107, %1106
  br label %2110

1109:                                             ; preds = %1080
  %1110 = xor i64 %1020, -8707998980786479652
  %1111 = lshr i64 %1110, 33
  %1112 = xor i64 %1111, %1110
  %1113 = mul i64 %1112, -4417276706812531889
  %1114 = lshr i64 %1113, 29
  %1115 = xor i64 %1114, %1113
  %1116 = mul i64 %1115, 1609587929392839161
  %1117 = lshr i64 %1116, 32
  %1118 = xor i64 %1117, %1116
  br label %2110

1119:                                             ; preds = %1024
  %1120 = icmp samesign ult i64 %694, 129
  %1121 = mul i64 %694, -7046029288634856825
  br i1 %1120, label %1122, label %1263

1122:                                             ; preds = %1119
  %1123 = icmp samesign ugt i64 %694, 32
  br i1 %1123, label %1124, label %1226

1124:                                             ; preds = %1122
  %1125 = icmp samesign ugt i64 %694, 64
  br i1 %1125, label %1126, label %1193

1126:                                             ; preds = %1124
  %1127 = icmp samesign ugt i64 %694, 96
  br i1 %1127, label %1128, label %1160

1128:                                             ; preds = %1126
  %1129 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1130 = load i64, ptr %1129, align 16
  %1131 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1132 = load i64, ptr %1131, align 8
  %1133 = add i64 %1020, 4554437623014685352
  %1134 = xor i64 %1130, %1133
  %1135 = sub i64 2111919702937427193, %1020
  %1136 = xor i64 %1132, %1135
  %1137 = zext i64 %1134 to i128
  %1138 = zext i64 %1136 to i128
  %1139 = mul nuw i128 %1138, %1137
  %1140 = lshr i128 %1139, 64
  %1141 = xor i128 %1140, %1139
  %1142 = trunc i128 %1141 to i64
  %1143 = add i64 %1121, %1142
  %1144 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1145 = getelementptr inbounds i8, ptr %1144, i64 -64
  %1146 = load i64, ptr %1145, align 1
  %1147 = getelementptr i8, ptr %1144, i64 -56
  %1148 = load i64, ptr %1147, align 1
  %1149 = add i64 %1020, 3556072174620004746
  %1150 = xor i64 %1146, %1149
  %1151 = sub i64 7238261902898274248, %1020
  %1152 = xor i64 %1148, %1151
  %1153 = zext i64 %1150 to i128
  %1154 = zext i64 %1152 to i128
  %1155 = mul nuw i128 %1154, %1153
  %1156 = lshr i128 %1155, 64
  %1157 = xor i128 %1156, %1155
  %1158 = trunc i128 %1157 to i64
  %1159 = add i64 %1143, %1158
  br label %1160

1160:                                             ; preds = %1128, %1126
  %1161 = phi i64 [ %1159, %1128 ], [ %1121, %1126 ]
  %1162 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1163 = load i64, ptr %1162, align 32
  %1164 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1165 = load i64, ptr %1164, align 8
  %1166 = add i64 %1020, -3818837453329782724
  %1167 = xor i64 %1163, %1166
  %1168 = sub i64 -6688317018830679928, %1020
  %1169 = xor i64 %1165, %1168
  %1170 = zext i64 %1167 to i128
  %1171 = zext i64 %1169 to i128
  %1172 = mul nuw i128 %1171, %1170
  %1173 = lshr i128 %1172, 64
  %1174 = xor i128 %1173, %1172
  %1175 = trunc i128 %1174 to i64
  %1176 = add i64 %1161, %1175
  %1177 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1178 = getelementptr inbounds i8, ptr %1177, i64 -48
  %1179 = load i64, ptr %1178, align 1
  %1180 = getelementptr i8, ptr %1177, i64 -40
  %1181 = load i64, ptr %1180, align 1
  %1182 = add i64 %1020, 5690594596133299313
  %1183 = xor i64 %1179, %1182
  %1184 = sub i64 -2833645246901970632, %1020
  %1185 = xor i64 %1181, %1184
  %1186 = zext i64 %1183 to i128
  %1187 = zext i64 %1185 to i128
  %1188 = mul nuw i128 %1187, %1186
  %1189 = lshr i128 %1188, 64
  %1190 = xor i128 %1189, %1188
  %1191 = trunc i128 %1190 to i64
  %1192 = add i64 %1176, %1191
  br label %1193

1193:                                             ; preds = %1160, %1124
  %1194 = phi i64 [ %1192, %1160 ], [ %1121, %1124 ]
  %1195 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1196 = load i64, ptr %1195, align 16
  %1197 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1198 = load i64, ptr %1197, align 8
  %1199 = add i64 %1020, 8711581037947681227
  %1200 = xor i64 %1196, %1199
  %1201 = sub i64 2410270004345854594, %1020
  %1202 = xor i64 %1198, %1201
  %1203 = zext i64 %1200 to i128
  %1204 = zext i64 %1202 to i128
  %1205 = mul nuw i128 %1204, %1203
  %1206 = lshr i128 %1205, 64
  %1207 = xor i128 %1206, %1205
  %1208 = trunc i128 %1207 to i64
  %1209 = add i64 %1194, %1208
  %1210 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1211 = getelementptr inbounds i8, ptr %1210, i64 -32
  %1212 = load i64, ptr %1211, align 1
  %1213 = getelementptr i8, ptr %1210, i64 -24
  %1214 = load i64, ptr %1213, align 1
  %1215 = add i64 %1020, -8204357891075471176
  %1216 = xor i64 %1212, %1215
  %1217 = sub i64 5487137525590930912, %1020
  %1218 = xor i64 %1214, %1217
  %1219 = zext i64 %1216 to i128
  %1220 = zext i64 %1218 to i128
  %1221 = mul nuw i128 %1220, %1219
  %1222 = lshr i128 %1221, 64
  %1223 = xor i128 %1222, %1221
  %1224 = trunc i128 %1223 to i64
  %1225 = add i64 %1209, %1224
  br label %1226

1226:                                             ; preds = %1193, %1122
  %1227 = phi i64 [ %1225, %1193 ], [ %1121, %1122 ]
  %1228 = load i64, ptr %1022, align 64
  %1229 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1230 = load i64, ptr %1229, align 8
  %1231 = add i64 %1020, -4734510112055689544
  %1232 = xor i64 %1228, %1231
  %1233 = sub i64 2066345149520216444, %1020
  %1234 = xor i64 %1230, %1233
  %1235 = zext i64 %1232 to i128
  %1236 = zext i64 %1234 to i128
  %1237 = mul nuw i128 %1236, %1235
  %1238 = lshr i128 %1237, 64
  %1239 = xor i128 %1238, %1237
  %1240 = trunc i128 %1239 to i64
  %1241 = add i64 %1227, %1240
  %1242 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1243 = getelementptr inbounds i8, ptr %1242, i64 -16
  %1244 = load i64, ptr %1243, align 1
  %1245 = getelementptr i8, ptr %1242, i64 -8
  %1246 = load i64, ptr %1245, align 1
  %1247 = add i64 %1020, -2623469361688619810
  %1248 = xor i64 %1244, %1247
  %1249 = sub i64 2262974939099578482, %1020
  %1250 = xor i64 %1246, %1249
  %1251 = zext i64 %1248 to i128
  %1252 = zext i64 %1250 to i128
  %1253 = mul nuw i128 %1252, %1251
  %1254 = lshr i128 %1253, 64
  %1255 = xor i128 %1254, %1253
  %1256 = trunc i128 %1255 to i64
  %1257 = add i64 %1241, %1256
  %1258 = lshr i64 %1257, 37
  %1259 = xor i64 %1258, %1257
  %1260 = mul i64 %1259, 1609587791953885689
  %1261 = lshr i64 %1260, 32
  %1262 = xor i64 %1261, %1260
  br label %2110

1263:                                             ; preds = %1119
  %1264 = trunc nuw nsw i64 %694 to i32
  %1265 = load i64, ptr %1022, align 64
  %1266 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1267 = load i64, ptr %1266, align 8
  %1268 = add i64 %1020, -4734510112055689544
  %1269 = xor i64 %1265, %1268
  %1270 = sub i64 2066345149520216444, %1020
  %1271 = xor i64 %1267, %1270
  %1272 = zext i64 %1269 to i128
  %1273 = zext i64 %1271 to i128
  %1274 = mul nuw i128 %1273, %1272
  %1275 = lshr i128 %1274, 64
  %1276 = xor i128 %1275, %1274
  %1277 = trunc i128 %1276 to i64
  %1278 = add i64 %1121, %1277
  %1279 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1280 = load i64, ptr %1279, align 16
  %1281 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1282 = load i64, ptr %1281, align 8
  %1283 = add i64 %1020, -2623469361688619810
  %1284 = xor i64 %1280, %1283
  %1285 = sub i64 2262974939099578482, %1020
  %1286 = xor i64 %1282, %1285
  %1287 = zext i64 %1284 to i128
  %1288 = zext i64 %1286 to i128
  %1289 = mul nuw i128 %1288, %1287
  %1290 = lshr i128 %1289, 64
  %1291 = xor i128 %1290, %1289
  %1292 = trunc i128 %1291 to i64
  %1293 = add i64 %1278, %1292
  %1294 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1295 = load i64, ptr %1294, align 32
  %1296 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1297 = load i64, ptr %1296, align 8
  %1298 = add i64 %1020, 8711581037947681227
  %1299 = xor i64 %1295, %1298
  %1300 = sub i64 2410270004345854594, %1020
  %1301 = xor i64 %1297, %1300
  %1302 = zext i64 %1299 to i128
  %1303 = zext i64 %1301 to i128
  %1304 = mul nuw i128 %1303, %1302
  %1305 = lshr i128 %1304, 64
  %1306 = xor i128 %1305, %1304
  %1307 = trunc i128 %1306 to i64
  %1308 = add i64 %1293, %1307
  %1309 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1310 = load i64, ptr %1309, align 16
  %1311 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1312 = load i64, ptr %1311, align 8
  %1313 = add i64 %1020, -8204357891075471176
  %1314 = xor i64 %1310, %1313
  %1315 = sub i64 5487137525590930912, %1020
  %1316 = xor i64 %1312, %1315
  %1317 = zext i64 %1314 to i128
  %1318 = zext i64 %1316 to i128
  %1319 = mul nuw i128 %1318, %1317
  %1320 = lshr i128 %1319, 64
  %1321 = xor i128 %1320, %1319
  %1322 = trunc i128 %1321 to i64
  %1323 = add i64 %1308, %1322
  %1324 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %1325 = load i64, ptr %1324, align 64
  %1326 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %1327 = load i64, ptr %1326, align 8
  %1328 = add i64 %1020, -3818837453329782724
  %1329 = xor i64 %1325, %1328
  %1330 = sub i64 -6688317018830679928, %1020
  %1331 = xor i64 %1327, %1330
  %1332 = zext i64 %1329 to i128
  %1333 = zext i64 %1331 to i128
  %1334 = mul nuw i128 %1333, %1332
  %1335 = lshr i128 %1334, 64
  %1336 = xor i128 %1335, %1334
  %1337 = trunc i128 %1336 to i64
  %1338 = add i64 %1323, %1337
  %1339 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %1340 = load i64, ptr %1339, align 16
  %1341 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %1342 = load i64, ptr %1341, align 8
  %1343 = add i64 %1020, 5690594596133299313
  %1344 = xor i64 %1340, %1343
  %1345 = sub i64 -2833645246901970632, %1020
  %1346 = xor i64 %1342, %1345
  %1347 = zext i64 %1344 to i128
  %1348 = zext i64 %1346 to i128
  %1349 = mul nuw i128 %1348, %1347
  %1350 = lshr i128 %1349, 64
  %1351 = xor i128 %1350, %1349
  %1352 = trunc i128 %1351 to i64
  %1353 = add i64 %1338, %1352
  %1354 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %1355 = load i64, ptr %1354, align 32
  %1356 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %1357 = load i64, ptr %1356, align 8
  %1358 = add i64 %1020, 4554437623014685352
  %1359 = xor i64 %1355, %1358
  %1360 = sub i64 2111919702937427193, %1020
  %1361 = xor i64 %1357, %1360
  %1362 = zext i64 %1359 to i128
  %1363 = zext i64 %1361 to i128
  %1364 = mul nuw i128 %1363, %1362
  %1365 = lshr i128 %1364, 64
  %1366 = xor i128 %1365, %1364
  %1367 = trunc i128 %1366 to i64
  %1368 = add i64 %1353, %1367
  %1369 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %1370 = load i64, ptr %1369, align 16
  %1371 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %1372 = load i64, ptr %1371, align 8
  %1373 = add i64 %1020, 3556072174620004746
  %1374 = xor i64 %1370, %1373
  %1375 = sub i64 7238261902898274248, %1020
  %1376 = xor i64 %1372, %1375
  %1377 = zext i64 %1374 to i128
  %1378 = zext i64 %1376 to i128
  %1379 = mul nuw i128 %1378, %1377
  %1380 = lshr i128 %1379, 64
  %1381 = xor i128 %1380, %1379
  %1382 = trunc i128 %1381 to i64
  %1383 = add i64 %1368, %1382
  %1384 = lshr i32 %1264, 4
  %1385 = lshr i64 %1383, 37
  %1386 = xor i64 %1385, %1383
  %1387 = mul i64 %1386, 1609587791953885689
  %1388 = lshr i64 %1387, 32
  %1389 = xor i64 %1388, %1387
  %1390 = icmp eq i32 %1384, 8
  br i1 %1390, label %1476, label %1391

1391:                                             ; preds = %1263
  %1392 = zext nneg i32 %1384 to i64
  %1393 = and i64 %1392, 1
  %1394 = icmp eq i32 %1384, 9
  br i1 %1394, label %1450, label %1395

1395:                                             ; preds = %1391
  %1396 = and i64 %1392, 14
  %1397 = add nsw i64 %1396, -10
  br label %1398

1398:                                             ; preds = %1398, %1395
  %1399 = phi i64 [ 8, %1395 ], [ %1445, %1398 ]
  %1400 = phi i64 [ %1389, %1395 ], [ %1444, %1398 ]
  %1401 = phi i64 [ 0, %1395 ], [ %1446, %1398 ]
  %1402 = shl nsw i64 %1399, 4
  %1403 = getelementptr inbounds nuw i8, ptr %1022, i64 %1402
  %1404 = getelementptr i8, ptr @XXH3_kSecret, i64 %1402
  %1405 = getelementptr i8, ptr %1404, i64 -125
  %1406 = load i64, ptr %1403, align 32
  %1407 = getelementptr i8, ptr %1403, i64 8
  %1408 = load i64, ptr %1407, align 8
  %1409 = load i64, ptr %1405, align 1
  %1410 = getelementptr i8, ptr %1404, i64 -117
  %1411 = load i64, ptr %1410, align 1
  %1412 = add i64 %1409, %1020
  %1413 = xor i64 %1412, %1406
  %1414 = sub i64 %1411, %1020
  %1415 = xor i64 %1414, %1408
  %1416 = zext i64 %1413 to i128
  %1417 = zext i64 %1415 to i128
  %1418 = mul nuw i128 %1417, %1416
  %1419 = lshr i128 %1418, 64
  %1420 = xor i128 %1419, %1418
  %1421 = trunc i128 %1420 to i64
  %1422 = add i64 %1400, %1421
  %1423 = shl i64 %1399, 4
  %1424 = or disjoint i64 %1423, 16
  %1425 = getelementptr inbounds nuw i8, ptr %1022, i64 %1424
  %1426 = getelementptr i8, ptr @XXH3_kSecret, i64 %1424
  %1427 = getelementptr i8, ptr %1426, i64 -125
  %1428 = load i64, ptr %1425, align 16
  %1429 = getelementptr i8, ptr %1425, i64 8
  %1430 = load i64, ptr %1429, align 8
  %1431 = load i64, ptr %1427, align 1
  %1432 = getelementptr i8, ptr %1426, i64 -117
  %1433 = load i64, ptr %1432, align 1
  %1434 = add i64 %1431, %1020
  %1435 = xor i64 %1434, %1428
  %1436 = sub i64 %1433, %1020
  %1437 = xor i64 %1436, %1430
  %1438 = zext i64 %1435 to i128
  %1439 = zext i64 %1437 to i128
  %1440 = mul nuw i128 %1439, %1438
  %1441 = lshr i128 %1440, 64
  %1442 = xor i128 %1441, %1440
  %1443 = trunc i128 %1442 to i64
  %1444 = add i64 %1422, %1443
  %1445 = add nuw nsw i64 %1399, 2
  %1446 = add i64 %1401, 2
  %1447 = icmp eq i64 %1401, %1397
  br i1 %1447, label %1448, label %1398

1448:                                             ; preds = %1398
  %1449 = shl nsw i64 %1445, 4
  br label %1450

1450:                                             ; preds = %1448, %1391
  %1451 = phi i64 [ poison, %1391 ], [ %1444, %1448 ]
  %1452 = phi i64 [ 128, %1391 ], [ %1449, %1448 ]
  %1453 = phi i64 [ %1389, %1391 ], [ %1444, %1448 ]
  %1454 = icmp eq i64 %1393, 0
  br i1 %1454, label %1476, label %1455

1455:                                             ; preds = %1450
  %1456 = getelementptr inbounds nuw i8, ptr %1022, i64 %1452
  %1457 = getelementptr i8, ptr @XXH3_kSecret, i64 %1452
  %1458 = getelementptr i8, ptr %1457, i64 -125
  %1459 = load i64, ptr %1456, align 16
  %1460 = getelementptr i8, ptr %1456, i64 8
  %1461 = load i64, ptr %1460, align 8
  %1462 = load i64, ptr %1458, align 1
  %1463 = getelementptr i8, ptr %1457, i64 -117
  %1464 = load i64, ptr %1463, align 1
  %1465 = add i64 %1462, %1020
  %1466 = xor i64 %1465, %1459
  %1467 = sub i64 %1464, %1020
  %1468 = xor i64 %1467, %1461
  %1469 = zext i64 %1466 to i128
  %1470 = zext i64 %1468 to i128
  %1471 = mul nuw i128 %1470, %1469
  %1472 = lshr i128 %1471, 64
  %1473 = xor i128 %1472, %1471
  %1474 = trunc i128 %1473 to i64
  %1475 = add i64 %1453, %1474
  br label %1476

1476:                                             ; preds = %1455, %1450, %1263
  %1477 = phi i64 [ %1389, %1263 ], [ %1451, %1450 ], [ %1475, %1455 ]
  %1478 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1479 = getelementptr inbounds i8, ptr %1478, i64 -16
  %1480 = load i64, ptr %1479, align 1
  %1481 = getelementptr i8, ptr %1478, i64 -8
  %1482 = load i64, ptr %1481, align 1
  %1483 = add i64 %1020, 8320639771003045937
  %1484 = xor i64 %1480, %1483
  %1485 = sub i64 -1453760514566526364, %1020
  %1486 = xor i64 %1482, %1485
  %1487 = zext i64 %1484 to i128
  %1488 = zext i64 %1486 to i128
  %1489 = mul nuw i128 %1488, %1487
  %1490 = lshr i128 %1489, 64
  %1491 = xor i128 %1490, %1489
  %1492 = trunc i128 %1491 to i64
  %1493 = add i64 %1477, %1492
  %1494 = lshr i64 %1493, 37
  %1495 = xor i64 %1494, %1493
  %1496 = mul i64 %1495, 1609587791953885689
  %1497 = lshr i64 %1496, 32
  %1498 = xor i64 %1497, %1496
  br label %2110

1499:                                             ; preds = %1019
  br i1 %1023, label %1500, label %1625

1500:                                             ; preds = %1499
  %1501 = icmp samesign ugt i64 %694, 8
  br i1 %1501, label %1502, label %1542, !prof !382

1502:                                             ; preds = %1500
  %1503 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1504 = getelementptr inbounds nuw i8, ptr %693, i64 24
  %1505 = select i1 %695, ptr %1503, ptr %1504
  %1506 = load i64, ptr %1505, align 1
  %1507 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1508 = getelementptr inbounds nuw i8, ptr %693, i64 32
  %1509 = select i1 %695, ptr %1507, ptr %1508
  %1510 = load i64, ptr %1509, align 1
  %1511 = xor i64 %1510, %1506
  %1512 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1513 = getelementptr inbounds nuw i8, ptr %693, i64 40
  %1514 = select i1 %695, ptr %1512, ptr %1513
  %1515 = load i64, ptr %1514, align 1
  %1516 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1517 = getelementptr inbounds nuw i8, ptr %693, i64 48
  %1518 = select i1 %695, ptr %1516, ptr %1517
  %1519 = load i64, ptr %1518, align 1
  %1520 = xor i64 %1519, %1515
  %1521 = load i64, ptr %1022, align 64
  %1522 = xor i64 %1511, %1521
  %1523 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1524 = getelementptr inbounds i8, ptr %1523, i64 -8
  %1525 = load i64, ptr %1524, align 1
  %1526 = xor i64 %1520, %1525
  %1527 = tail call noundef i64 @llvm.bswap.i64(i64 %1522)
  %1528 = add i64 %1527, %694
  %1529 = add i64 %1528, %1526
  %1530 = zext i64 %1522 to i128
  %1531 = zext i64 %1526 to i128
  %1532 = mul nuw i128 %1531, %1530
  %1533 = lshr i128 %1532, 64
  %1534 = xor i128 %1533, %1532
  %1535 = trunc i128 %1534 to i64
  %1536 = add i64 %1529, %1535
  %1537 = lshr i64 %1536, 37
  %1538 = xor i64 %1537, %1536
  %1539 = mul i64 %1538, 1609587791953885689
  %1540 = lshr i64 %1539, 32
  %1541 = xor i64 %1540, %1539
  br label %2110

1542:                                             ; preds = %1500
  %1543 = icmp samesign ugt i64 %694, 3
  br i1 %1543, label %1544, label %1574, !prof !382

1544:                                             ; preds = %1542
  %1545 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1546 = getelementptr i8, ptr %693, i64 8
  %1547 = select i1 %695, ptr %1545, ptr %1546
  %1548 = load i64, ptr %1547, align 1
  %1549 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1550 = getelementptr i8, ptr %693, i64 16
  %1551 = select i1 %695, ptr %1549, ptr %1550
  %1552 = load i64, ptr %1551, align 1
  %1553 = load i32, ptr %1022, align 64
  %1554 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1555 = getelementptr inbounds i8, ptr %1554, i64 -4
  %1556 = load i32, ptr %1555, align 1
  %1557 = xor i64 %1552, %1548
  %1558 = zext i32 %1556 to i64
  %1559 = zext i32 %1553 to i64
  %1560 = shl nuw i64 %1559, 32
  %1561 = or disjoint i64 %1560, %1558
  %1562 = xor i64 %1557, %1561
  %1563 = tail call i64 @llvm.fshl.i64(i64 %1562, i64 %1562, i64 49)
  %1564 = tail call i64 @llvm.fshl.i64(i64 %1562, i64 %1562, i64 24)
  %1565 = xor i64 %1564, %1563
  %1566 = xor i64 %1565, %1562
  %1567 = mul i64 %1566, -6939452855193903323
  %1568 = lshr i64 %1567, 35
  %1569 = add nuw nsw i64 %1568, %694
  %1570 = xor i64 %1569, %1567
  %1571 = mul i64 %1570, -6939452855193903323
  %1572 = lshr i64 %1571, 28
  %1573 = xor i64 %1572, %1571
  br label %2110

1574:                                             ; preds = %1542
  %1575 = icmp eq i64 %694, 0
  br i1 %1575, label %1607, label %1576

1576:                                             ; preds = %1574
  %1577 = load i32, ptr %696, align 1
  %1578 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %1579 = getelementptr i8, ptr %693, i64 4
  %1580 = select i1 %695, ptr %1578, ptr %1579
  %1581 = load i32, ptr %1580, align 1
  %1582 = load i8, ptr %1022, align 64
  %1583 = lshr i64 %694, 1
  %1584 = getelementptr inbounds nuw i8, ptr %1022, i64 %1583
  %1585 = load i8, ptr %1584, align 1
  %1586 = getelementptr i8, ptr %1022, i64 %694
  %1587 = getelementptr i8, ptr %1586, i64 -1
  %1588 = load i8, ptr %1587, align 1
  %1589 = zext i8 %1582 to i64
  %1590 = shl nuw nsw i64 %1589, 16
  %1591 = zext i8 %1585 to i64
  %1592 = shl nuw nsw i64 %1591, 24
  %1593 = zext i8 %1588 to i64
  %1594 = shl nuw nsw i64 %694, 8
  %1595 = or disjoint i64 %1590, %1594
  %1596 = or disjoint i64 %1595, %1592
  %1597 = or disjoint i64 %1596, %1593
  %1598 = xor i32 %1581, %1577
  %1599 = zext i32 %1598 to i64
  %1600 = xor i64 %1597, %1599
  %1601 = mul i64 %1600, -4417276706812531889
  %1602 = lshr i64 %1601, 29
  %1603 = xor i64 %1602, %1601
  %1604 = mul i64 %1603, 1609587929392839161
  %1605 = lshr i64 %1604, 32
  %1606 = xor i64 %1605, %1604
  br label %2110

1607:                                             ; preds = %1574
  %1608 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1609 = getelementptr inbounds nuw i8, ptr %693, i64 56
  %1610 = select i1 %695, ptr %1608, ptr %1609
  %1611 = load i64, ptr %1610, align 1
  %1612 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1613 = getelementptr inbounds nuw i8, ptr %693, i64 64
  %1614 = select i1 %695, ptr %1612, ptr %1613
  %1615 = load i64, ptr %1614, align 1
  %1616 = xor i64 %1615, %1611
  %1617 = lshr i64 %1616, 33
  %1618 = xor i64 %1617, %1616
  %1619 = mul i64 %1618, -4417276706812531889
  %1620 = lshr i64 %1619, 29
  %1621 = xor i64 %1620, %1619
  %1622 = mul i64 %1621, 1609587929392839161
  %1623 = lshr i64 %1622, 32
  %1624 = xor i64 %1623, %1622
  br label %2110

1625:                                             ; preds = %1499
  %1626 = icmp samesign ult i64 %694, 129
  %1627 = mul i64 %694, -7046029288634856825
  br i1 %1626, label %1628, label %1814

1628:                                             ; preds = %1625
  %1629 = icmp samesign ugt i64 %694, 32
  br i1 %1629, label %1630, label %1768

1630:                                             ; preds = %1628
  %1631 = icmp samesign ugt i64 %694, 64
  br i1 %1631, label %1632, label %1723

1632:                                             ; preds = %1630
  %1633 = icmp samesign ugt i64 %694, 96
  br i1 %1633, label %1634, label %1678

1634:                                             ; preds = %1632
  %1635 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1636 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1637 = getelementptr inbounds nuw i8, ptr %693, i64 96
  %1638 = select i1 %695, ptr %1636, ptr %1637
  %1639 = load i64, ptr %1635, align 16
  %1640 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1641 = load i64, ptr %1640, align 8
  %1642 = load i64, ptr %1638, align 1
  %1643 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1644 = getelementptr i8, ptr %693, i64 104
  %1645 = select i1 %695, ptr %1643, ptr %1644
  %1646 = load i64, ptr %1645, align 1
  %1647 = xor i64 %1642, %1639
  %1648 = xor i64 %1646, %1641
  %1649 = zext i64 %1647 to i128
  %1650 = zext i64 %1648 to i128
  %1651 = mul nuw i128 %1650, %1649
  %1652 = lshr i128 %1651, 64
  %1653 = xor i128 %1652, %1651
  %1654 = trunc i128 %1653 to i64
  %1655 = add i64 %1627, %1654
  %1656 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1657 = getelementptr inbounds i8, ptr %1656, i64 -64
  %1658 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1659 = getelementptr inbounds nuw i8, ptr %693, i64 112
  %1660 = select i1 %695, ptr %1658, ptr %1659
  %1661 = load i64, ptr %1657, align 1
  %1662 = getelementptr i8, ptr %1656, i64 -56
  %1663 = load i64, ptr %1662, align 1
  %1664 = load i64, ptr %1660, align 1
  %1665 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1666 = getelementptr i8, ptr %693, i64 120
  %1667 = select i1 %695, ptr %1665, ptr %1666
  %1668 = load i64, ptr %1667, align 1
  %1669 = xor i64 %1664, %1661
  %1670 = xor i64 %1668, %1663
  %1671 = zext i64 %1669 to i128
  %1672 = zext i64 %1670 to i128
  %1673 = mul nuw i128 %1672, %1671
  %1674 = lshr i128 %1673, 64
  %1675 = xor i128 %1674, %1673
  %1676 = trunc i128 %1675 to i64
  %1677 = add i64 %1655, %1676
  br label %1678

1678:                                             ; preds = %1634, %1632
  %1679 = phi i64 [ %1677, %1634 ], [ %1627, %1632 ]
  %1680 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1681 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1682 = getelementptr inbounds nuw i8, ptr %693, i64 64
  %1683 = select i1 %695, ptr %1681, ptr %1682
  %1684 = load i64, ptr %1680, align 32
  %1685 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1686 = load i64, ptr %1685, align 8
  %1687 = load i64, ptr %1683, align 1
  %1688 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1689 = getelementptr i8, ptr %693, i64 72
  %1690 = select i1 %695, ptr %1688, ptr %1689
  %1691 = load i64, ptr %1690, align 1
  %1692 = xor i64 %1687, %1684
  %1693 = xor i64 %1691, %1686
  %1694 = zext i64 %1692 to i128
  %1695 = zext i64 %1693 to i128
  %1696 = mul nuw i128 %1695, %1694
  %1697 = lshr i128 %1696, 64
  %1698 = xor i128 %1697, %1696
  %1699 = trunc i128 %1698 to i64
  %1700 = add i64 %1679, %1699
  %1701 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1702 = getelementptr inbounds i8, ptr %1701, i64 -48
  %1703 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1704 = getelementptr inbounds nuw i8, ptr %693, i64 80
  %1705 = select i1 %695, ptr %1703, ptr %1704
  %1706 = load i64, ptr %1702, align 1
  %1707 = getelementptr i8, ptr %1701, i64 -40
  %1708 = load i64, ptr %1707, align 1
  %1709 = load i64, ptr %1705, align 1
  %1710 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1711 = getelementptr i8, ptr %693, i64 88
  %1712 = select i1 %695, ptr %1710, ptr %1711
  %1713 = load i64, ptr %1712, align 1
  %1714 = xor i64 %1709, %1706
  %1715 = xor i64 %1713, %1708
  %1716 = zext i64 %1714 to i128
  %1717 = zext i64 %1715 to i128
  %1718 = mul nuw i128 %1717, %1716
  %1719 = lshr i128 %1718, 64
  %1720 = xor i128 %1719, %1718
  %1721 = trunc i128 %1720 to i64
  %1722 = add i64 %1700, %1721
  br label %1723

1723:                                             ; preds = %1678, %1630
  %1724 = phi i64 [ %1722, %1678 ], [ %1627, %1630 ]
  %1725 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1726 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1727 = getelementptr inbounds nuw i8, ptr %693, i64 32
  %1728 = select i1 %695, ptr %1726, ptr %1727
  %1729 = load i64, ptr %1725, align 16
  %1730 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1731 = load i64, ptr %1730, align 8
  %1732 = load i64, ptr %1728, align 1
  %1733 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1734 = getelementptr i8, ptr %693, i64 40
  %1735 = select i1 %695, ptr %1733, ptr %1734
  %1736 = load i64, ptr %1735, align 1
  %1737 = xor i64 %1732, %1729
  %1738 = xor i64 %1736, %1731
  %1739 = zext i64 %1737 to i128
  %1740 = zext i64 %1738 to i128
  %1741 = mul nuw i128 %1740, %1739
  %1742 = lshr i128 %1741, 64
  %1743 = xor i128 %1742, %1741
  %1744 = trunc i128 %1743 to i64
  %1745 = add i64 %1724, %1744
  %1746 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1747 = getelementptr inbounds i8, ptr %1746, i64 -32
  %1748 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1749 = getelementptr inbounds nuw i8, ptr %693, i64 48
  %1750 = select i1 %695, ptr %1748, ptr %1749
  %1751 = load i64, ptr %1747, align 1
  %1752 = getelementptr i8, ptr %1746, i64 -24
  %1753 = load i64, ptr %1752, align 1
  %1754 = load i64, ptr %1750, align 1
  %1755 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1756 = getelementptr i8, ptr %693, i64 56
  %1757 = select i1 %695, ptr %1755, ptr %1756
  %1758 = load i64, ptr %1757, align 1
  %1759 = xor i64 %1754, %1751
  %1760 = xor i64 %1758, %1753
  %1761 = zext i64 %1759 to i128
  %1762 = zext i64 %1760 to i128
  %1763 = mul nuw i128 %1762, %1761
  %1764 = lshr i128 %1763, 64
  %1765 = xor i128 %1764, %1763
  %1766 = trunc i128 %1765 to i64
  %1767 = add i64 %1745, %1766
  br label %1768

1768:                                             ; preds = %1723, %1628
  %1769 = phi i64 [ %1767, %1723 ], [ %1627, %1628 ]
  %1770 = load i64, ptr %1022, align 64
  %1771 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1772 = load i64, ptr %1771, align 8
  %1773 = load i64, ptr %696, align 1
  %1774 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1775 = getelementptr i8, ptr %693, i64 8
  %1776 = select i1 %695, ptr %1774, ptr %1775
  %1777 = load i64, ptr %1776, align 1
  %1778 = xor i64 %1773, %1770
  %1779 = xor i64 %1777, %1772
  %1780 = zext i64 %1778 to i128
  %1781 = zext i64 %1779 to i128
  %1782 = mul nuw i128 %1781, %1780
  %1783 = lshr i128 %1782, 64
  %1784 = xor i128 %1783, %1782
  %1785 = trunc i128 %1784 to i64
  %1786 = add i64 %1769, %1785
  %1787 = getelementptr inbounds nuw i8, ptr %1022, i64 %694
  %1788 = getelementptr inbounds i8, ptr %1787, i64 -16
  %1789 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1790 = getelementptr inbounds nuw i8, ptr %693, i64 16
  %1791 = select i1 %695, ptr %1789, ptr %1790
  %1792 = load i64, ptr %1788, align 1
  %1793 = getelementptr i8, ptr %1787, i64 -8
  %1794 = load i64, ptr %1793, align 1
  %1795 = load i64, ptr %1791, align 1
  %1796 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1797 = getelementptr i8, ptr %693, i64 24
  %1798 = select i1 %695, ptr %1796, ptr %1797
  %1799 = load i64, ptr %1798, align 1
  %1800 = xor i64 %1795, %1792
  %1801 = xor i64 %1799, %1794
  %1802 = zext i64 %1800 to i128
  %1803 = zext i64 %1801 to i128
  %1804 = mul nuw i128 %1803, %1802
  %1805 = lshr i128 %1804, 64
  %1806 = xor i128 %1805, %1804
  %1807 = trunc i128 %1806 to i64
  %1808 = add i64 %1786, %1807
  %1809 = lshr i64 %1808, 37
  %1810 = xor i64 %1809, %1808
  %1811 = mul i64 %1810, 1609587791953885689
  %1812 = lshr i64 %1811, 32
  %1813 = xor i64 %1812, %1811
  br label %2110

1814:                                             ; preds = %1625
  %1815 = trunc nuw nsw i64 %694 to i32
  %1816 = load i64, ptr %1022, align 64
  %1817 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1818 = load i64, ptr %1817, align 8
  %1819 = load i64, ptr %696, align 1
  %1820 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1821 = getelementptr i8, ptr %693, i64 8
  %1822 = select i1 %695, ptr %1820, ptr %1821
  %1823 = lshr i32 %1815, 4
  br label %1824

1824:                                             ; preds = %1814, %18
  %1825 = phi i64 [ -4734510112055689544, %18 ], [ %1819, %1814 ]
  %1826 = phi i64 [ %27, %18 ], [ %1818, %1814 ]
  %1827 = phi i64 [ %25, %18 ], [ %1816, %1814 ]
  %1828 = phi i32 [ 12, %18 ], [ %1823, %1814 ]
  %1829 = phi ptr [ @XXH3_kSecret, %18 ], [ %696, %1814 ]
  %1830 = phi i1 [ false, %18 ], [ %695, %1814 ]
  %1831 = phi ptr [ @XXH3_kSecret, %18 ], [ %693, %1814 ]
  %1832 = phi i64 [ 200, %18 ], [ %694, %1814 ]
  %1833 = phi i64 [ -7253308125045442184, %18 ], [ %1627, %1814 ]
  %1834 = phi ptr [ getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), %18 ], [ %1822, %1814 ]
  %1835 = load i64, ptr %1834, align 1
  %1836 = xor i64 %1825, %1827
  %1837 = xor i64 %1835, %1826
  %1838 = zext i64 %1836 to i128
  %1839 = zext i64 %1837 to i128
  %1840 = mul nuw i128 %1839, %1838
  %1841 = lshr i128 %1840, 64
  %1842 = xor i128 %1841, %1840
  %1843 = trunc i128 %1842 to i64
  %1844 = add i64 %1833, %1843
  %1845 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1846 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1847 = getelementptr inbounds nuw i8, ptr %1831, i64 16
  %1848 = select i1 %1830, ptr %1846, ptr %1847
  %1849 = load i64, ptr %1845, align 16
  %1850 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1851 = load i64, ptr %1850, align 8
  %1852 = load i64, ptr %1848, align 1
  %1853 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1854 = getelementptr i8, ptr %1831, i64 24
  %1855 = select i1 %1830, ptr %1853, ptr %1854
  %1856 = load i64, ptr %1855, align 1
  %1857 = xor i64 %1852, %1849
  %1858 = xor i64 %1856, %1851
  %1859 = zext i64 %1857 to i128
  %1860 = zext i64 %1858 to i128
  %1861 = mul nuw i128 %1860, %1859
  %1862 = lshr i128 %1861, 64
  %1863 = xor i128 %1862, %1861
  %1864 = trunc i128 %1863 to i64
  %1865 = add i64 %1844, %1864
  %1866 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1867 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1868 = getelementptr inbounds nuw i8, ptr %1831, i64 32
  %1869 = select i1 %1830, ptr %1867, ptr %1868
  %1870 = load i64, ptr %1866, align 32
  %1871 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1872 = load i64, ptr %1871, align 8
  %1873 = load i64, ptr %1869, align 1
  %1874 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1875 = getelementptr i8, ptr %1831, i64 40
  %1876 = select i1 %1830, ptr %1874, ptr %1875
  %1877 = load i64, ptr %1876, align 1
  %1878 = xor i64 %1873, %1870
  %1879 = xor i64 %1877, %1872
  %1880 = zext i64 %1878 to i128
  %1881 = zext i64 %1879 to i128
  %1882 = mul nuw i128 %1881, %1880
  %1883 = lshr i128 %1882, 64
  %1884 = xor i128 %1883, %1882
  %1885 = trunc i128 %1884 to i64
  %1886 = add i64 %1865, %1885
  %1887 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1888 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1889 = getelementptr inbounds nuw i8, ptr %1831, i64 48
  %1890 = select i1 %1830, ptr %1888, ptr %1889
  %1891 = load i64, ptr %1887, align 16
  %1892 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1893 = load i64, ptr %1892, align 8
  %1894 = load i64, ptr %1890, align 1
  %1895 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1896 = getelementptr i8, ptr %1831, i64 56
  %1897 = select i1 %1830, ptr %1895, ptr %1896
  %1898 = load i64, ptr %1897, align 1
  %1899 = xor i64 %1894, %1891
  %1900 = xor i64 %1898, %1893
  %1901 = zext i64 %1899 to i128
  %1902 = zext i64 %1900 to i128
  %1903 = mul nuw i128 %1902, %1901
  %1904 = lshr i128 %1903, 64
  %1905 = xor i128 %1904, %1903
  %1906 = trunc i128 %1905 to i64
  %1907 = add i64 %1886, %1906
  %1908 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %1909 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1910 = getelementptr inbounds nuw i8, ptr %1831, i64 64
  %1911 = select i1 %1830, ptr %1909, ptr %1910
  %1912 = load i64, ptr %1908, align 64
  %1913 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %1914 = load i64, ptr %1913, align 8
  %1915 = load i64, ptr %1911, align 1
  %1916 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1917 = getelementptr i8, ptr %1831, i64 72
  %1918 = select i1 %1830, ptr %1916, ptr %1917
  %1919 = load i64, ptr %1918, align 1
  %1920 = xor i64 %1915, %1912
  %1921 = xor i64 %1919, %1914
  %1922 = zext i64 %1920 to i128
  %1923 = zext i64 %1921 to i128
  %1924 = mul nuw i128 %1923, %1922
  %1925 = lshr i128 %1924, 64
  %1926 = xor i128 %1925, %1924
  %1927 = trunc i128 %1926 to i64
  %1928 = add i64 %1907, %1927
  %1929 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %1930 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1931 = getelementptr inbounds nuw i8, ptr %1831, i64 80
  %1932 = select i1 %1830, ptr %1930, ptr %1931
  %1933 = load i64, ptr %1929, align 16
  %1934 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %1935 = load i64, ptr %1934, align 8
  %1936 = load i64, ptr %1932, align 1
  %1937 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1938 = getelementptr i8, ptr %1831, i64 88
  %1939 = select i1 %1830, ptr %1937, ptr %1938
  %1940 = load i64, ptr %1939, align 1
  %1941 = xor i64 %1936, %1933
  %1942 = xor i64 %1940, %1935
  %1943 = zext i64 %1941 to i128
  %1944 = zext i64 %1942 to i128
  %1945 = mul nuw i128 %1944, %1943
  %1946 = lshr i128 %1945, 64
  %1947 = xor i128 %1946, %1945
  %1948 = trunc i128 %1947 to i64
  %1949 = add i64 %1928, %1948
  %1950 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %1951 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1952 = getelementptr inbounds nuw i8, ptr %1831, i64 96
  %1953 = select i1 %1830, ptr %1951, ptr %1952
  %1954 = load i64, ptr %1950, align 32
  %1955 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %1956 = load i64, ptr %1955, align 8
  %1957 = load i64, ptr %1953, align 1
  %1958 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1959 = getelementptr i8, ptr %1831, i64 104
  %1960 = select i1 %1830, ptr %1958, ptr %1959
  %1961 = load i64, ptr %1960, align 1
  %1962 = xor i64 %1957, %1954
  %1963 = xor i64 %1961, %1956
  %1964 = zext i64 %1962 to i128
  %1965 = zext i64 %1963 to i128
  %1966 = mul nuw i128 %1965, %1964
  %1967 = lshr i128 %1966, 64
  %1968 = xor i128 %1967, %1966
  %1969 = trunc i128 %1968 to i64
  %1970 = add i64 %1949, %1969
  %1971 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %1972 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1973 = getelementptr inbounds nuw i8, ptr %1831, i64 112
  %1974 = select i1 %1830, ptr %1972, ptr %1973
  %1975 = load i64, ptr %1971, align 16
  %1976 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %1977 = load i64, ptr %1976, align 8
  %1978 = load i64, ptr %1974, align 1
  %1979 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1980 = getelementptr i8, ptr %1831, i64 120
  %1981 = select i1 %1830, ptr %1979, ptr %1980
  %1982 = load i64, ptr %1981, align 1
  %1983 = xor i64 %1978, %1975
  %1984 = xor i64 %1982, %1977
  %1985 = zext i64 %1983 to i128
  %1986 = zext i64 %1984 to i128
  %1987 = mul nuw i128 %1986, %1985
  %1988 = lshr i128 %1987, 64
  %1989 = xor i128 %1988, %1987
  %1990 = trunc i128 %1989 to i64
  %1991 = add i64 %1970, %1990
  %1992 = lshr i64 %1991, 37
  %1993 = xor i64 %1992, %1991
  %1994 = mul i64 %1993, 1609587791953885689
  %1995 = lshr i64 %1994, 32
  %1996 = xor i64 %1995, %1994
  %1997 = icmp eq i32 %1828, 8
  br i1 %1997, label %2080, label %1998

1998:                                             ; preds = %1824
  %1999 = zext nneg i32 %1828 to i64
  %2000 = and i64 %1999, 1
  %2001 = icmp eq i32 %1828, 9
  br i1 %2001, label %2055, label %2002

2002:                                             ; preds = %1998
  %2003 = and i64 %1999, 268435454
  %2004 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %2005 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %2006 = add nsw i64 %2003, -10
  br label %2007

2007:                                             ; preds = %2007, %2002
  %2008 = phi i64 [ 8, %2002 ], [ %2050, %2007 ]
  %2009 = phi i64 [ %1996, %2002 ], [ %2049, %2007 ]
  %2010 = phi i64 [ 0, %2002 ], [ %2051, %2007 ]
  %2011 = shl nsw i64 %2008, 4
  %2012 = getelementptr inbounds nuw i8, ptr %2004, i64 %2011
  %2013 = getelementptr i8, ptr %1829, i64 %2011
  %2014 = getelementptr i8, ptr %2013, i64 -125
  %2015 = load i64, ptr %2012, align 32
  %2016 = getelementptr i8, ptr %2012, i64 8
  %2017 = load i64, ptr %2016, align 8
  %2018 = load i64, ptr %2014, align 1
  %2019 = getelementptr i8, ptr %2013, i64 -117
  %2020 = load i64, ptr %2019, align 1
  %2021 = xor i64 %2018, %2015
  %2022 = xor i64 %2020, %2017
  %2023 = zext i64 %2021 to i128
  %2024 = zext i64 %2022 to i128
  %2025 = mul nuw i128 %2024, %2023
  %2026 = lshr i128 %2025, 64
  %2027 = xor i128 %2026, %2025
  %2028 = trunc i128 %2027 to i64
  %2029 = add i64 %2009, %2028
  %2030 = shl i64 %2008, 4
  %2031 = or disjoint i64 %2030, 16
  %2032 = getelementptr inbounds nuw i8, ptr %2005, i64 %2031
  %2033 = getelementptr i8, ptr %1829, i64 %2031
  %2034 = getelementptr i8, ptr %2033, i64 -125
  %2035 = load i64, ptr %2032, align 16
  %2036 = getelementptr i8, ptr %2032, i64 8
  %2037 = load i64, ptr %2036, align 8
  %2038 = load i64, ptr %2034, align 1
  %2039 = getelementptr i8, ptr %2033, i64 -117
  %2040 = load i64, ptr %2039, align 1
  %2041 = xor i64 %2038, %2035
  %2042 = xor i64 %2040, %2037
  %2043 = zext i64 %2041 to i128
  %2044 = zext i64 %2042 to i128
  %2045 = mul nuw i128 %2044, %2043
  %2046 = lshr i128 %2045, 64
  %2047 = xor i128 %2046, %2045
  %2048 = trunc i128 %2047 to i64
  %2049 = add i64 %2029, %2048
  %2050 = add nuw nsw i64 %2008, 2
  %2051 = add i64 %2010, 2
  %2052 = icmp eq i64 %2010, %2006
  br i1 %2052, label %2053, label %2007

2053:                                             ; preds = %2007
  %2054 = shl nsw i64 %2050, 4
  br label %2055

2055:                                             ; preds = %2053, %1998
  %2056 = phi i64 [ poison, %1998 ], [ %2049, %2053 ]
  %2057 = phi i64 [ 128, %1998 ], [ %2054, %2053 ]
  %2058 = phi i64 [ %1996, %1998 ], [ %2049, %2053 ]
  %2059 = icmp eq i64 %2000, 0
  br i1 %2059, label %2080, label %2060

2060:                                             ; preds = %2055
  %2061 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %2062 = getelementptr inbounds nuw i8, ptr %2061, i64 %2057
  %2063 = getelementptr i8, ptr %1829, i64 %2057
  %2064 = getelementptr i8, ptr %2063, i64 -125
  %2065 = load i64, ptr %2062, align 16
  %2066 = getelementptr i8, ptr %2062, i64 8
  %2067 = load i64, ptr %2066, align 8
  %2068 = load i64, ptr %2064, align 1
  %2069 = getelementptr i8, ptr %2063, i64 -117
  %2070 = load i64, ptr %2069, align 1
  %2071 = xor i64 %2068, %2065
  %2072 = xor i64 %2070, %2067
  %2073 = zext i64 %2071 to i128
  %2074 = zext i64 %2072 to i128
  %2075 = mul nuw i128 %2074, %2073
  %2076 = lshr i128 %2075, 64
  %2077 = xor i128 %2076, %2075
  %2078 = trunc i128 %2077 to i64
  %2079 = add i64 %2058, %2078
  br label %2080

2080:                                             ; preds = %2060, %2055, %1824
  %2081 = phi i64 [ %1996, %1824 ], [ %2056, %2055 ], [ %2079, %2060 ]
  %2082 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %2083 = getelementptr inbounds nuw i8, ptr %2082, i64 %1832
  %2084 = getelementptr inbounds i8, ptr %2083, i64 -16
  %2085 = getelementptr inbounds nuw i8, ptr %3, i64 183
  %2086 = getelementptr inbounds nuw i8, ptr %1831, i64 119
  %2087 = select i1 %1830, ptr %2085, ptr %2086
  %2088 = load i64, ptr %2084, align 1
  %2089 = getelementptr i8, ptr %2083, i64 -8
  %2090 = load i64, ptr %2089, align 1
  %2091 = load i64, ptr %2087, align 1
  %2092 = getelementptr inbounds nuw i8, ptr %3, i64 191
  %2093 = getelementptr i8, ptr %1831, i64 127
  %2094 = select i1 %1830, ptr %2092, ptr %2093
  %2095 = load i64, ptr %2094, align 1
  %2096 = xor i64 %2091, %2088
  %2097 = xor i64 %2095, %2090
  %2098 = zext i64 %2096 to i128
  %2099 = zext i64 %2097 to i128
  %2100 = mul nuw i128 %2099, %2098
  %2101 = lshr i128 %2100, 64
  %2102 = xor i128 %2101, %2100
  %2103 = trunc i128 %2102 to i64
  %2104 = add i64 %2081, %2103
  %2105 = lshr i64 %2104, 37
  %2106 = xor i64 %2105, %2104
  %2107 = mul i64 %2106, 1609587791953885689
  %2108 = lshr i64 %2107, 32
  %2109 = xor i64 %2108, %2107
  br label %2110

2110:                                             ; preds = %934, %1027, %1053, %1082, %1109, %1226, %1476, %1502, %1544, %1576, %1607, %1768, %2080
  %2111 = phi i64 [ %1018, %934 ], [ %1262, %1226 ], [ %1498, %1476 ], [ %1050, %1027 ], [ %1079, %1053 ], [ %1108, %1082 ], [ %1118, %1109 ], [ %1813, %1768 ], [ %2109, %2080 ], [ %1541, %1502 ], [ %1573, %1544 ], [ %1606, %1576 ], [ %1624, %1607 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #8
  ret i64 %2111
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
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_update: argument 1"}
!7 = distinct !{!7, !"XXH3_update"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_update: argument 0:thread"}
!10 = distinct !{!10, !"XXH3_update"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"XXH3_update: argument 1:thread"}
!13 = !{!14, !15}
!14 = distinct !{!14, !10, !"XXH3_update: argument 0"}
!15 = distinct !{!15, !10, !"XXH3_update: argument 1"}
!16 = !{!14}
!17 = !{!15}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"XXH3_len_129to240_64b: argument 0:thread"}
!20 = distinct !{!20, !"XXH3_len_129to240_64b"}
!21 = distinct !{!21, !22, !"XXH3_64bits_internal: argument 0"}
!22 = distinct !{!22, !"XXH3_64bits_internal"}
!23 = !{!24, !25}
!24 = distinct !{!24, !20, !"XXH3_len_129to240_64b: argument 1:thread"}
!25 = distinct !{!25, !22, !"XXH3_64bits_internal: argument 1"}
!26 = !{!27, !6}
!27 = distinct !{!27, !7, !"XXH3_update: argument 0"}
!28 = !{!27}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_consumeStripes: argument 0"}
!31 = distinct !{!31, !"XXH3_consumeStripes"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_consumeStripes: argument 1"}
!34 = !{!35}
!35 = distinct !{!35, !31, !"XXH3_consumeStripes: argument 2"}
!36 = !{!37}
!37 = distinct !{!37, !31, !"XXH3_consumeStripes: argument 3"}
!38 = !{!33, !14}
!39 = !{!30, !35, !37, !15}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_accumulate: argument 1"}
!42 = distinct !{!42, !"XXH3_accumulate"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"XXH3_accumulate: argument 2"}
!45 = !{!46, !30, !14}
!46 = distinct !{!46, !47, !"XXH3_scrambleAcc_avx2: argument 0"}
!47 = distinct !{!47, !"XXH3_scrambleAcc_avx2"}
!48 = !{!49, !33, !35, !37, !15}
!49 = distinct !{!49, !47, !"XXH3_scrambleAcc_avx2: argument 1"}
!50 = !{!30, !14}
!51 = !{!33, !35, !37, !15}
!52 = !{!53, !44, !30, !33, !37}
!53 = distinct !{!53, !42, !"XXH3_accumulate: argument 0"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate_512_avx2: argument 1"}
!56 = distinct !{!56, !"XXH3_accumulate_512_avx2"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_accumulate_512_avx2: argument 2"}
!59 = !{!55, !41, !35, !14}
!60 = !{!61, !58, !53, !44, !30, !33, !37, !15}
!61 = distinct !{!61, !56, !"XXH3_accumulate_512_avx2: argument 0"}
!62 = !{!58, !44, !37}
!63 = !{!61, !55, !53, !41, !30, !33, !35}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!46}
!67 = !{!49}
!68 = !{!49, !37}
!69 = !{!46, !30, !33, !35}
!70 = !{!71}
!71 = distinct !{!71, !72, !"XXH3_accumulate: argument 0"}
!72 = distinct !{!72, !"XXH3_accumulate"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"XXH3_accumulate: argument 1"}
!75 = !{!76}
!76 = distinct !{!76, !72, !"XXH3_accumulate: argument 2"}
!77 = !{!71, !76, !30, !33, !37}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_accumulate_512_avx2: argument 0"}
!80 = distinct !{!80, !"XXH3_accumulate_512_avx2"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"XXH3_accumulate_512_avx2: argument 1"}
!83 = !{!84}
!84 = distinct !{!84, !80, !"XXH3_accumulate_512_avx2: argument 2"}
!85 = !{!82, !74, !35, !14}
!86 = !{!79, !84, !71, !76, !30, !33, !37, !15}
!87 = !{!84, !76, !37}
!88 = !{!79, !82, !71, !74, !30, !33, !35}
!89 = !{!79, !71, !30, !14}
!90 = !{!82, !84, !74, !76, !33, !35, !37, !15}
!91 = !{!92}
!92 = distinct !{!92, !93, !"XXH3_accumulate: argument 0"}
!93 = distinct !{!93, !"XXH3_accumulate"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"XXH3_accumulate: argument 1"}
!96 = !{!97}
!97 = distinct !{!97, !93, !"XXH3_accumulate: argument 2"}
!98 = !{!99, !92, !30, !14}
!99 = distinct !{!99, !100, !"XXH3_accumulate_512_avx2: argument 0"}
!100 = distinct !{!100, !"XXH3_accumulate_512_avx2"}
!101 = !{!102, !103, !95, !97, !33, !35, !37, !15}
!102 = distinct !{!102, !100, !"XXH3_accumulate_512_avx2: argument 1"}
!103 = distinct !{!103, !100, !"XXH3_accumulate_512_avx2: argument 2"}
!104 = !{!92, !97, !30, !33, !37}
!105 = !{!99}
!106 = !{!102}
!107 = !{!103}
!108 = !{!102, !95, !35, !14}
!109 = !{!99, !103, !92, !97, !30, !33, !37, !15}
!110 = !{!103, !97, !37}
!111 = !{!99, !102, !92, !95, !30, !33, !35}
!112 = !{!113}
!113 = distinct !{!113, !100, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!114 = !{!115}
!115 = distinct !{!115, !100, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!116 = !{!113, !95, !35, !14}
!117 = !{!118, !115, !92, !97, !30, !33, !37, !15}
!118 = distinct !{!118, !100, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!119 = !{!115, !97, !37}
!120 = !{!118, !113, !92, !95, !30, !33, !35}
!121 = !{!122}
!122 = distinct !{!122, !100, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!123 = !{!124}
!124 = distinct !{!124, !100, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!125 = !{!122, !95, !35, !14}
!126 = !{!127, !124, !92, !97, !30, !33, !37, !15}
!127 = distinct !{!127, !100, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!128 = !{!124, !97, !37}
!129 = !{!127, !122, !92, !95, !30, !33, !35}
!130 = !{!131}
!131 = distinct !{!131, !100, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!132 = !{!133}
!133 = distinct !{!133, !100, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!134 = !{!131, !95, !35, !14}
!135 = !{!136, !133, !92, !97, !30, !33, !37, !15}
!136 = distinct !{!136, !100, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!137 = !{!133, !97, !37}
!138 = !{!136, !131, !92, !95, !30, !33, !35}
!139 = !{!140}
!140 = distinct !{!140, !141, !"XXH3_accumulate: argument 1"}
!141 = distinct !{!141, !"XXH3_accumulate"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"XXH3_accumulate: argument 2"}
!144 = !{!145, !143}
!145 = distinct !{!145, !141, !"XXH3_accumulate: argument 0"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"XXH3_accumulate_512_avx2: argument 1"}
!148 = distinct !{!148, !"XXH3_accumulate_512_avx2"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"XXH3_accumulate_512_avx2: argument 2"}
!151 = !{!147, !140, !15}
!152 = !{!153, !150, !145, !143, !14}
!153 = distinct !{!153, !148, !"XXH3_accumulate_512_avx2: argument 0"}
!154 = !{!150, !143}
!155 = !{!153, !147, !145, !140}
!156 = !{!157}
!157 = distinct !{!157, !158, !"XXH3_scrambleAcc_avx2: argument 0"}
!158 = distinct !{!158, !"XXH3_scrambleAcc_avx2"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"XXH3_scrambleAcc_avx2: argument 1"}
!161 = !{!157, !14}
!162 = !{!160, !15}
!163 = !{!164}
!164 = distinct !{!164, !165, !"XXH3_accumulate: argument 1"}
!165 = distinct !{!165, !"XXH3_accumulate"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"XXH3_accumulate: argument 2"}
!168 = !{!169, !167}
!169 = distinct !{!169, !165, !"XXH3_accumulate: argument 0"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"XXH3_accumulate_512_avx2: argument 1"}
!172 = distinct !{!172, !"XXH3_accumulate_512_avx2"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"XXH3_accumulate_512_avx2: argument 2"}
!175 = !{!171, !164, !15}
!176 = !{!177, !174, !169, !167, !14}
!177 = distinct !{!177, !172, !"XXH3_accumulate_512_avx2: argument 0"}
!178 = !{!174, !167}
!179 = !{!177, !171, !169, !164}
!180 = distinct !{!180, !65}
!181 = !{!182, !14}
!182 = distinct !{!182, !183, !"XXH3_scrambleAcc_avx2: argument 0"}
!183 = distinct !{!183, !"XXH3_scrambleAcc_avx2"}
!184 = !{!185, !15}
!185 = distinct !{!185, !183, !"XXH3_scrambleAcc_avx2: argument 1"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"XXH3_consumeStripes: argument 0"}
!188 = distinct !{!188, !"XXH3_consumeStripes"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"XXH3_consumeStripes: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !188, !"XXH3_consumeStripes: argument 2"}
!193 = !{!194}
!194 = distinct !{!194, !188, !"XXH3_consumeStripes: argument 3"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"XXH3_accumulate: argument 1"}
!197 = distinct !{!197, !"XXH3_accumulate"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"XXH3_accumulate: argument 2"}
!200 = !{!201, !199, !187, !190, !194}
!201 = distinct !{!201, !197, !"XXH3_accumulate: argument 0"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"XXH3_accumulate_512_avx2: argument 1"}
!204 = distinct !{!204, !"XXH3_accumulate_512_avx2"}
!205 = !{!206}
!206 = distinct !{!206, !204, !"XXH3_accumulate_512_avx2: argument 2"}
!207 = !{!203, !196, !192, !15}
!208 = !{!209, !206, !201, !199, !187, !190, !194, !14}
!209 = distinct !{!209, !204, !"XXH3_accumulate_512_avx2: argument 0"}
!210 = !{!206, !199, !194}
!211 = !{!209, !203, !201, !196, !187, !190, !192}
!212 = !{!213}
!213 = distinct !{!213, !214, !"XXH3_scrambleAcc_avx2: argument 0"}
!214 = distinct !{!214, !"XXH3_scrambleAcc_avx2"}
!215 = !{!216}
!216 = distinct !{!216, !214, !"XXH3_scrambleAcc_avx2: argument 1"}
!217 = !{!216, !194}
!218 = !{!213, !187, !190, !192}
!219 = !{!213, !187, !14}
!220 = !{!216, !190, !192, !194, !15}
!221 = !{!222}
!222 = distinct !{!222, !223, !"XXH3_accumulate: argument 0"}
!223 = distinct !{!223, !"XXH3_accumulate"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"XXH3_accumulate: argument 1"}
!226 = !{!227}
!227 = distinct !{!227, !223, !"XXH3_accumulate: argument 2"}
!228 = !{!222, !227, !187, !190, !194}
!229 = !{!230}
!230 = distinct !{!230, !231, !"XXH3_accumulate_512_avx2: argument 0"}
!231 = distinct !{!231, !"XXH3_accumulate_512_avx2"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"XXH3_accumulate_512_avx2: argument 1"}
!234 = !{!235}
!235 = distinct !{!235, !231, !"XXH3_accumulate_512_avx2: argument 2"}
!236 = !{!233, !225, !192, !15}
!237 = !{!230, !235, !222, !227, !187, !190, !194, !14}
!238 = !{!235, !227, !194}
!239 = !{!230, !233, !222, !225, !187, !190, !192}
!240 = !{!230, !222, !187, !14}
!241 = !{!233, !235, !225, !227, !190, !192, !194, !15}
!242 = !{!243}
!243 = distinct !{!243, !244, !"XXH3_accumulate: argument 0"}
!244 = distinct !{!244, !"XXH3_accumulate"}
!245 = !{!246}
!246 = distinct !{!246, !244, !"XXH3_accumulate: argument 1"}
!247 = !{!248}
!248 = distinct !{!248, !244, !"XXH3_accumulate: argument 2"}
!249 = !{!243, !248, !187, !190, !194}
!250 = !{!251}
!251 = distinct !{!251, !252, !"XXH3_accumulate_512_avx2: argument 0"}
!252 = distinct !{!252, !"XXH3_accumulate_512_avx2"}
!253 = !{!254}
!254 = distinct !{!254, !252, !"XXH3_accumulate_512_avx2: argument 1"}
!255 = !{!256}
!256 = distinct !{!256, !252, !"XXH3_accumulate_512_avx2: argument 2"}
!257 = !{!254, !246, !192, !15}
!258 = !{!251, !256, !243, !248, !187, !190, !194, !14}
!259 = !{!256, !248, !194}
!260 = !{!251, !254, !243, !246, !187, !190, !192}
!261 = !{!262}
!262 = distinct !{!262, !252, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!263 = !{!264}
!264 = distinct !{!264, !252, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!265 = !{!262, !246, !192, !15}
!266 = !{!267, !264, !243, !248, !187, !190, !194, !14}
!267 = distinct !{!267, !252, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!268 = !{!264, !248, !194}
!269 = !{!267, !262, !243, !246, !187, !190, !192}
!270 = !{!271}
!271 = distinct !{!271, !252, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!272 = !{!273}
!273 = distinct !{!273, !252, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!274 = !{!271, !246, !192, !15}
!275 = !{!276, !273, !243, !248, !187, !190, !194, !14}
!276 = distinct !{!276, !252, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!277 = !{!273, !248, !194}
!278 = !{!276, !271, !243, !246, !187, !190, !192}
!279 = !{!280}
!280 = distinct !{!280, !252, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!281 = !{!282}
!282 = distinct !{!282, !252, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!283 = !{!280, !246, !192, !15}
!284 = !{!285, !282, !243, !248, !187, !190, !194, !14}
!285 = distinct !{!285, !252, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!286 = !{!282, !248, !194}
!287 = !{!285, !280, !243, !246, !187, !190, !192}
!288 = !{!251, !243, !187, !14}
!289 = !{!254, !256, !246, !248, !190, !192, !194, !15}
!290 = distinct !{!290, !65}
!291 = !{!190, !14}
!292 = !{!187, !192, !194, !15}
!293 = !{!294}
!294 = distinct !{!294, !295, !"XXH3_consumeStripes: argument 2"}
!295 = distinct !{!295, !"XXH3_consumeStripes"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"XXH3_consumeStripes: argument 3"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"XXH3_accumulate: argument 1"}
!300 = distinct !{!300, !"XXH3_accumulate"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"XXH3_accumulate: argument 2"}
!303 = !{!304, !302, !305, !306, !297}
!304 = distinct !{!304, !300, !"XXH3_accumulate: argument 0"}
!305 = distinct !{!305, !295, !"XXH3_consumeStripes: argument 0"}
!306 = distinct !{!306, !295, !"XXH3_consumeStripes: argument 1"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"XXH3_accumulate_512_avx2: argument 1"}
!309 = distinct !{!309, !"XXH3_accumulate_512_avx2"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"XXH3_accumulate_512_avx2: argument 2"}
!312 = !{!308, !299, !294}
!313 = !{!314, !311, !304, !302, !305, !306, !297}
!314 = distinct !{!314, !309, !"XXH3_accumulate_512_avx2: argument 0"}
!315 = !{!311, !302, !297}
!316 = !{!314, !308, !304, !299, !305, !306, !294}
!317 = !{!318, !297}
!318 = distinct !{!318, !319, !"XXH3_scrambleAcc_avx2: argument 1"}
!319 = distinct !{!319, !"XXH3_scrambleAcc_avx2"}
!320 = !{!321, !305, !306, !294}
!321 = distinct !{!321, !319, !"XXH3_scrambleAcc_avx2: argument 0"}
!322 = !{!323}
!323 = distinct !{!323, !324, !"XXH3_accumulate: argument 1"}
!324 = distinct !{!324, !"XXH3_accumulate"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"XXH3_accumulate: argument 2"}
!327 = !{!328, !326, !305, !306, !297}
!328 = distinct !{!328, !324, !"XXH3_accumulate: argument 0"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"XXH3_accumulate_512_avx2: argument 1"}
!331 = distinct !{!331, !"XXH3_accumulate_512_avx2"}
!332 = !{!333}
!333 = distinct !{!333, !331, !"XXH3_accumulate_512_avx2: argument 2"}
!334 = !{!330, !323, !294}
!335 = !{!336, !333, !328, !326, !305, !306, !297}
!336 = distinct !{!336, !331, !"XXH3_accumulate_512_avx2: argument 0"}
!337 = !{!333, !326, !297}
!338 = !{!336, !330, !328, !323, !305, !306, !294}
!339 = !{!340}
!340 = distinct !{!340, !341, !"XXH3_accumulate: argument 1"}
!341 = distinct !{!341, !"XXH3_accumulate"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"XXH3_accumulate: argument 2"}
!344 = !{!345, !343, !305, !306, !297}
!345 = distinct !{!345, !341, !"XXH3_accumulate: argument 0"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"XXH3_accumulate_512_avx2: argument 1"}
!348 = distinct !{!348, !"XXH3_accumulate_512_avx2"}
!349 = !{!350}
!350 = distinct !{!350, !348, !"XXH3_accumulate_512_avx2: argument 2"}
!351 = !{!347, !340, !294}
!352 = !{!353, !350, !345, !343, !305, !306, !297}
!353 = distinct !{!353, !348, !"XXH3_accumulate_512_avx2: argument 0"}
!354 = !{!350, !343, !297}
!355 = !{!353, !347, !345, !340, !305, !306, !294}
!356 = !{!357}
!357 = distinct !{!357, !358, !"XXH3_accumulate_512_avx2: argument 1"}
!358 = distinct !{!358, !"XXH3_accumulate_512_avx2"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"XXH3_accumulate_512_avx2: argument 2"}
!361 = !{!362, !360}
!362 = distinct !{!362, !358, !"XXH3_accumulate_512_avx2: argument 0"}
!363 = !{!362, !357}
!364 = !{!365}
!365 = distinct !{!365, !366, !"XXH3_accumulate_512_avx2: argument 1"}
!366 = distinct !{!366, !"XXH3_accumulate_512_avx2"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"XXH3_accumulate_512_avx2: argument 2"}
!369 = !{!370, !368}
!370 = distinct !{!370, !366, !"XXH3_accumulate_512_avx2: argument 0"}
!371 = !{!370, !365}
!372 = !{!373}
!373 = distinct !{!373, !374, !"XXH3_mergeAccs: argument 1"}
!374 = distinct !{!374, !"XXH3_mergeAccs"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"XXH3_mergeAccs: argument 0"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"XXH3_64bits_internal: argument 0"}
!379 = distinct !{!379, !"XXH3_64bits_internal"}
!380 = !{!381}
!381 = distinct !{!381, !379, !"XXH3_64bits_internal: argument 1"}
!382 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!383 = !{!384, !378}
!384 = distinct !{!384, !385, !"XXH3_len_17to128_64b: argument 0"}
!385 = distinct !{!385, !"XXH3_len_17to128_64b"}
!386 = !{!387, !381}
!387 = distinct !{!387, !385, !"XXH3_len_17to128_64b: argument 1"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"XXH3_len_129to240_64b: argument 0"}
!390 = distinct !{!390, !"XXH3_len_129to240_64b"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"XXH3_len_129to240_64b: argument 1"}
!393 = !{!389, !378}
!394 = !{!392, !381}
!395 = distinct !{!395, !65}
!396 = !{!21}
!397 = !{!25}
!398 = !{!399}
!399 = distinct !{!399, !400, !"XXH3_len_17to128_64b: argument 0"}
!400 = distinct !{!400, !"XXH3_len_17to128_64b"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"XXH3_len_17to128_64b: argument 1"}
!403 = !{!399, !21}
!404 = !{!402, !25}
!405 = !{!406}
!406 = distinct !{!406, !20, !"XXH3_len_129to240_64b: argument 0"}
!407 = !{!408}
!408 = distinct !{!408, !20, !"XXH3_len_129to240_64b: argument 1"}
!409 = !{!406, !21}
!410 = !{!408, !25}
