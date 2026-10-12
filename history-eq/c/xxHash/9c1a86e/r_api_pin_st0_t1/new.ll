; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9c1a86e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_100_200(ptr noundef %0) local_unnamed_addr #0 {
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
  br label %1612

28:                                               ; preds = %1
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %29, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 201) 100, i1 false)
  store i32 100, ptr %4, align 64
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 300, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %35, ptr noundef nonnull readonly align 1 dereferenceable(156) %30, i64 156, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %38 = load i64, ptr %16, align 8
  %39 = load i64, ptr %15, align 32
  %40 = load i64, ptr %37, align 8
  %41 = sub i64 %38, %40
  %42 = icmp ugt i64 %41, 4
  br i1 %42, label %155, label %43

43:                                               ; preds = %28
  %44 = sub nuw nsw i64 4, %41
  %45 = shl i64 %40, 3
  %46 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %45
  %47 = icmp eq i64 %38, %40
  %48 = load <4 x i64>, ptr %3, align 64
  %49 = load <4 x i64>, ptr %9, align 32
  br i1 %47, label %87, label %50

50:                                               ; preds = %43, %50
  %51 = phi <4 x i64> [ %84, %50 ], [ %49, %43 ]
  %52 = phi <4 x i64> [ %70, %50 ], [ %48, %43 ]
  %53 = phi i64 [ %85, %50 ], [ 0, %43 ]
  %54 = shl i64 %53, 6
  %55 = getelementptr inbounds nuw i8, ptr %34, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %56, i32 0, i32 3, i32 1)
  %57 = shl i64 %53, 3
  %58 = getelementptr inbounds nuw i8, ptr %46, i64 %57
  %59 = load <4 x i64>, ptr %55, align 64
  %60 = load <4 x i64>, ptr %58, align 8
  %61 = xor <4 x i64> %60, %59
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %59, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %52, %68
  %70 = add <4 x i64> %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %72 = load <4 x i64>, ptr %71, align 32
  %73 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %74 = load <4 x i64>, ptr %73, align 8
  %75 = xor <4 x i64> %74, %72
  %76 = bitcast <4 x i64> %75 to <8 x i32>
  %77 = shufflevector <8 x i32> %76, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %78 = bitcast <8 x i32> %77 to <4 x i64>
  %79 = and <4 x i64> %75, splat (i64 4294967295)
  %80 = and <4 x i64> %78, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, %79
  %82 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %83 = add <4 x i64> %51, %82
  %84 = add <4 x i64> %83, %81
  %85 = add nuw i64 %53, 1
  %86 = icmp eq i64 %85, %41
  br i1 %86, label %87, label %50

87:                                               ; preds = %50, %43
  %88 = phi <4 x i64> [ %49, %43 ], [ %84, %50 ]
  %89 = phi <4 x i64> [ %48, %43 ], [ %70, %50 ]
  %90 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %39
  %91 = lshr <4 x i64> %89, splat (i64 47)
  %92 = load <4 x i64>, ptr %90, align 1
  %93 = xor <4 x i64> %91, %92
  %94 = xor <4 x i64> %93, %89
  %95 = bitcast <4 x i64> %94 to <8 x i32>
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %97 = bitcast <8 x i32> %96 to <4 x i64>
  %98 = and <4 x i64> %94, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, splat (i64 2654435761)
  %100 = mul <4 x i64> %97, splat (i64 -7046029290881679360)
  %101 = add <4 x i64> %100, %99
  store <4 x i64> %101, ptr %3, align 64
  %102 = lshr <4 x i64> %88, splat (i64 47)
  %103 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %104 = load <4 x i64>, ptr %103, align 1
  %105 = xor <4 x i64> %102, %104
  %106 = xor <4 x i64> %105, %88
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, splat (i64 2654435761)
  %112 = mul <4 x i64> %109, splat (i64 -7046029290881679360)
  %113 = add <4 x i64> %112, %111
  store <4 x i64> %113, ptr %9, align 32
  %114 = shl nuw nsw i64 %41, 6
  %115 = getelementptr inbounds nuw i8, ptr %34, i64 %114
  %116 = icmp eq i64 %41, 4
  br i1 %116, label %275, label %117

117:                                              ; preds = %87, %117
  %118 = phi <4 x i64> [ %151, %117 ], [ %113, %87 ]
  %119 = phi <4 x i64> [ %137, %117 ], [ %101, %87 ]
  %120 = phi i64 [ %152, %117 ], [ 0, %87 ]
  %121 = shl i64 %120, 6
  %122 = getelementptr inbounds nuw i8, ptr %115, i64 %121
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %123, i32 0, i32 3, i32 1)
  %124 = shl i64 %120, 3
  %125 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %124
  %126 = load <4 x i64>, ptr %122, align 64
  %127 = load <4 x i64>, ptr %125, align 8
  %128 = xor <4 x i64> %127, %126
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %126, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %119, %135
  %137 = add <4 x i64> %136, %134
  %138 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %139 = load <4 x i64>, ptr %138, align 32
  %140 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %141 = load <4 x i64>, ptr %140, align 8
  %142 = xor <4 x i64> %141, %139
  %143 = bitcast <4 x i64> %142 to <8 x i32>
  %144 = shufflevector <8 x i32> %143, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %145 = bitcast <8 x i32> %144 to <4 x i64>
  %146 = and <4 x i64> %142, splat (i64 4294967295)
  %147 = and <4 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <4 x i64> %147, %146
  %149 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %150 = add <4 x i64> %118, %149
  %151 = add <4 x i64> %150, %148
  %152 = add nuw i64 %120, 1
  %153 = icmp eq i64 %152, %44
  br i1 %153, label %154, label %117

154:                                              ; preds = %117
  store <4 x i64> %137, ptr %3, align 64
  store <4 x i64> %151, ptr %9, align 32
  br label %275

155:                                              ; preds = %28
  %156 = shl i64 %40, 3
  %157 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %156
  %158 = load <4 x i64>, ptr %3, align 64
  %159 = load <4 x i64>, ptr %9, align 32
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %160, i32 0, i32 3, i32 1)
  %161 = load <4 x i64>, ptr %34, align 64
  %162 = load <4 x i64>, ptr %157, align 8
  %163 = xor <4 x i64> %162, %161
  %164 = bitcast <4 x i64> %163 to <8 x i32>
  %165 = shufflevector <8 x i32> %164, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %166 = bitcast <8 x i32> %165 to <4 x i64>
  %167 = and <4 x i64> %163, splat (i64 4294967295)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %161, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = add <4 x i64> %158, %170
  %172 = add <4 x i64> %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %174 = load <4 x i64>, ptr %173, align 32
  %175 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %176 = load <4 x i64>, ptr %175, align 8
  %177 = xor <4 x i64> %176, %174
  %178 = bitcast <4 x i64> %177 to <8 x i32>
  %179 = shufflevector <8 x i32> %178, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %180 = bitcast <8 x i32> %179 to <4 x i64>
  %181 = and <4 x i64> %177, splat (i64 4294967295)
  %182 = and <4 x i64> %180, splat (i64 4294967295)
  %183 = mul nuw <4 x i64> %182, %181
  %184 = shufflevector <4 x i64> %174, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %185 = add <4 x i64> %159, %184
  %186 = add <4 x i64> %185, %183
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %188, i32 0, i32 3, i32 1)
  %189 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %190 = load <4 x i64>, ptr %187, align 64
  %191 = load <4 x i64>, ptr %189, align 8
  %192 = xor <4 x i64> %191, %190
  %193 = bitcast <4 x i64> %192 to <8 x i32>
  %194 = shufflevector <8 x i32> %193, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %195 = bitcast <8 x i32> %194 to <4 x i64>
  %196 = and <4 x i64> %192, splat (i64 4294967295)
  %197 = and <4 x i64> %195, splat (i64 4294967295)
  %198 = mul nuw <4 x i64> %197, %196
  %199 = shufflevector <4 x i64> %190, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %200 = add <4 x i64> %172, %199
  %201 = add <4 x i64> %200, %198
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %203 = load <4 x i64>, ptr %202, align 32
  %204 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %205 = load <4 x i64>, ptr %204, align 8
  %206 = xor <4 x i64> %205, %203
  %207 = bitcast <4 x i64> %206 to <8 x i32>
  %208 = shufflevector <8 x i32> %207, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %209 = bitcast <8 x i32> %208 to <4 x i64>
  %210 = and <4 x i64> %206, splat (i64 4294967295)
  %211 = and <4 x i64> %209, splat (i64 4294967295)
  %212 = mul nuw <4 x i64> %211, %210
  %213 = shufflevector <4 x i64> %203, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %214 = add <4 x i64> %186, %213
  %215 = add <4 x i64> %214, %212
  %216 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %217 = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %217, i32 0, i32 3, i32 1)
  %218 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %219 = load <4 x i64>, ptr %216, align 64
  %220 = load <4 x i64>, ptr %218, align 8
  %221 = xor <4 x i64> %220, %219
  %222 = bitcast <4 x i64> %221 to <8 x i32>
  %223 = shufflevector <8 x i32> %222, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %224 = bitcast <8 x i32> %223 to <4 x i64>
  %225 = and <4 x i64> %221, splat (i64 4294967295)
  %226 = and <4 x i64> %224, splat (i64 4294967295)
  %227 = mul nuw <4 x i64> %226, %225
  %228 = shufflevector <4 x i64> %219, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %229 = add <4 x i64> %201, %228
  %230 = add <4 x i64> %229, %227
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %232 = load <4 x i64>, ptr %231, align 32
  %233 = getelementptr inbounds nuw i8, ptr %157, i64 48
  %234 = load <4 x i64>, ptr %233, align 8
  %235 = xor <4 x i64> %234, %232
  %236 = bitcast <4 x i64> %235 to <8 x i32>
  %237 = shufflevector <8 x i32> %236, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %238 = bitcast <8 x i32> %237 to <4 x i64>
  %239 = and <4 x i64> %235, splat (i64 4294967295)
  %240 = and <4 x i64> %238, splat (i64 4294967295)
  %241 = mul nuw <4 x i64> %240, %239
  %242 = shufflevector <4 x i64> %232, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %243 = add <4 x i64> %215, %242
  %244 = add <4 x i64> %243, %241
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %246, i32 0, i32 3, i32 1)
  %247 = getelementptr inbounds nuw i8, ptr %157, i64 24
  %248 = load <4 x i64>, ptr %245, align 64
  %249 = load <4 x i64>, ptr %247, align 8
  %250 = xor <4 x i64> %249, %248
  %251 = bitcast <4 x i64> %250 to <8 x i32>
  %252 = shufflevector <8 x i32> %251, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %253 = bitcast <8 x i32> %252 to <4 x i64>
  %254 = and <4 x i64> %250, splat (i64 4294967295)
  %255 = and <4 x i64> %253, splat (i64 4294967295)
  %256 = mul nuw <4 x i64> %255, %254
  %257 = shufflevector <4 x i64> %248, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %258 = add <4 x i64> %230, %257
  %259 = add <4 x i64> %258, %256
  %260 = getelementptr inbounds nuw i8, ptr %3, i64 480
  %261 = load <4 x i64>, ptr %260, align 32
  %262 = getelementptr inbounds nuw i8, ptr %157, i64 56
  %263 = load <4 x i64>, ptr %262, align 8
  %264 = xor <4 x i64> %263, %261
  %265 = bitcast <4 x i64> %264 to <8 x i32>
  %266 = shufflevector <8 x i32> %265, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %267 = bitcast <8 x i32> %266 to <4 x i64>
  %268 = and <4 x i64> %264, splat (i64 4294967295)
  %269 = and <4 x i64> %267, splat (i64 4294967295)
  %270 = mul nuw <4 x i64> %269, %268
  %271 = shufflevector <4 x i64> %261, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %272 = add <4 x i64> %244, %271
  %273 = add <4 x i64> %272, %270
  store <4 x i64> %259, ptr %3, align 64
  store <4 x i64> %273, ptr %9, align 32
  %274 = add i64 %40, 4
  br label %275

275:                                              ; preds = %155, %154, %87
  %276 = phi <4 x i64> [ %273, %155 ], [ %113, %87 ], [ %151, %154 ]
  %277 = phi <4 x i64> [ %259, %155 ], [ %101, %87 ], [ %137, %154 ]
  %278 = phi i64 [ %274, %155 ], [ 0, %87 ], [ %44, %154 ]
  store i64 %278, ptr %37, align 8
  store i32 0, ptr %4, align 64
  %279 = ptrtoint ptr %31 to i64
  %280 = shl i64 %38, 6
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %475

282:                                              ; preds = %275
  %283 = sub i64 %38, %278
  %284 = shl i64 %278, 3
  %285 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %284
  %286 = icmp eq i64 %38, %278
  br i1 %286, label %324, label %287

287:                                              ; preds = %282, %287
  %288 = phi <4 x i64> [ %321, %287 ], [ %276, %282 ]
  %289 = phi <4 x i64> [ %307, %287 ], [ %277, %282 ]
  %290 = phi i64 [ %322, %287 ], [ 0, %282 ]
  %291 = shl i64 %290, 6
  %292 = getelementptr inbounds nuw i8, ptr %36, i64 %291
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %293, i32 0, i32 3, i32 1)
  %294 = shl i64 %290, 3
  %295 = getelementptr inbounds nuw i8, ptr %285, i64 %294
  %296 = load <4 x i64>, ptr %292, align 1
  %297 = load <4 x i64>, ptr %295, align 8
  %298 = xor <4 x i64> %297, %296
  %299 = bitcast <4 x i64> %298 to <8 x i32>
  %300 = shufflevector <8 x i32> %299, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %301 = bitcast <8 x i32> %300 to <4 x i64>
  %302 = and <4 x i64> %298, splat (i64 4294967295)
  %303 = and <4 x i64> %301, splat (i64 4294967295)
  %304 = mul nuw <4 x i64> %303, %302
  %305 = shufflevector <4 x i64> %296, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %306 = add <4 x i64> %289, %305
  %307 = add <4 x i64> %306, %304
  %308 = getelementptr inbounds nuw i8, ptr %292, i64 32
  %309 = load <4 x i64>, ptr %308, align 1
  %310 = getelementptr inbounds nuw i8, ptr %295, i64 32
  %311 = load <4 x i64>, ptr %310, align 8
  %312 = xor <4 x i64> %311, %309
  %313 = bitcast <4 x i64> %312 to <8 x i32>
  %314 = shufflevector <8 x i32> %313, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %315 = bitcast <8 x i32> %314 to <4 x i64>
  %316 = and <4 x i64> %312, splat (i64 4294967295)
  %317 = and <4 x i64> %315, splat (i64 4294967295)
  %318 = mul nuw <4 x i64> %317, %316
  %319 = shufflevector <4 x i64> %309, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %320 = add <4 x i64> %288, %319
  %321 = add <4 x i64> %320, %318
  %322 = add nuw i64 %290, 1
  %323 = icmp eq i64 %322, %283
  br i1 %323, label %324, label %287

324:                                              ; preds = %287, %282
  %325 = phi <4 x i64> [ %276, %282 ], [ %321, %287 ]
  %326 = phi <4 x i64> [ %277, %282 ], [ %307, %287 ]
  %327 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %39
  %328 = lshr <4 x i64> %326, splat (i64 47)
  %329 = load <4 x i64>, ptr %327, align 1
  %330 = xor <4 x i64> %328, %329
  %331 = xor <4 x i64> %330, %326
  %332 = bitcast <4 x i64> %331 to <8 x i32>
  %333 = shufflevector <8 x i32> %332, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %334 = bitcast <8 x i32> %333 to <4 x i64>
  %335 = and <4 x i64> %331, splat (i64 4294967295)
  %336 = mul nuw <4 x i64> %335, splat (i64 2654435761)
  %337 = mul <4 x i64> %334, splat (i64 -7046029290881679360)
  %338 = add <4 x i64> %337, %336
  store <4 x i64> %338, ptr %3, align 64
  %339 = lshr <4 x i64> %325, splat (i64 47)
  %340 = getelementptr inbounds nuw i8, ptr %327, i64 32
  %341 = load <4 x i64>, ptr %340, align 1
  %342 = xor <4 x i64> %339, %341
  %343 = xor <4 x i64> %342, %325
  %344 = bitcast <4 x i64> %343 to <8 x i32>
  %345 = shufflevector <8 x i32> %344, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %346 = bitcast <8 x i32> %345 to <4 x i64>
  %347 = and <4 x i64> %343, splat (i64 4294967295)
  %348 = mul nuw <4 x i64> %347, splat (i64 2654435761)
  %349 = mul <4 x i64> %346, splat (i64 -7046029290881679360)
  %350 = add <4 x i64> %349, %348
  store <4 x i64> %350, ptr %9, align 32
  %351 = shl i64 %283, 6
  %352 = getelementptr inbounds nuw i8, ptr %36, i64 %351
  %353 = sub i64 0, %283
  %354 = icmp ugt i64 %38, %353
  br i1 %354, label %426, label %355

355:                                              ; preds = %324
  %356 = icmp eq i64 %38, 0
  br label %357

357:                                              ; preds = %399, %355
  %358 = phi <4 x i64> [ %350, %355 ], [ %421, %399 ]
  %359 = phi <4 x i64> [ %338, %355 ], [ %411, %399 ]
  %360 = phi ptr [ %352, %355 ], [ %422, %399 ]
  %361 = phi i64 [ %353, %355 ], [ %423, %399 ]
  br i1 %356, label %399, label %362

362:                                              ; preds = %357, %362
  %363 = phi <4 x i64> [ %396, %362 ], [ %358, %357 ]
  %364 = phi <4 x i64> [ %382, %362 ], [ %359, %357 ]
  %365 = phi i64 [ %397, %362 ], [ 0, %357 ]
  %366 = shl i64 %365, 6
  %367 = getelementptr inbounds nuw i8, ptr %360, i64 %366
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %368, i32 0, i32 3, i32 1)
  %369 = shl i64 %365, 3
  %370 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %369
  %371 = load <4 x i64>, ptr %367, align 1
  %372 = load <4 x i64>, ptr %370, align 8
  %373 = xor <4 x i64> %372, %371
  %374 = bitcast <4 x i64> %373 to <8 x i32>
  %375 = shufflevector <8 x i32> %374, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %376 = bitcast <8 x i32> %375 to <4 x i64>
  %377 = and <4 x i64> %373, splat (i64 4294967295)
  %378 = and <4 x i64> %376, splat (i64 4294967295)
  %379 = mul nuw <4 x i64> %378, %377
  %380 = shufflevector <4 x i64> %371, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %381 = add <4 x i64> %364, %380
  %382 = add <4 x i64> %381, %379
  %383 = getelementptr inbounds nuw i8, ptr %367, i64 32
  %384 = load <4 x i64>, ptr %383, align 1
  %385 = getelementptr inbounds nuw i8, ptr %370, i64 32
  %386 = load <4 x i64>, ptr %385, align 8
  %387 = xor <4 x i64> %386, %384
  %388 = bitcast <4 x i64> %387 to <8 x i32>
  %389 = shufflevector <8 x i32> %388, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %390 = bitcast <8 x i32> %389 to <4 x i64>
  %391 = and <4 x i64> %387, splat (i64 4294967295)
  %392 = and <4 x i64> %390, splat (i64 4294967295)
  %393 = mul nuw <4 x i64> %392, %391
  %394 = shufflevector <4 x i64> %384, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %395 = add <4 x i64> %363, %394
  %396 = add <4 x i64> %395, %393
  %397 = add nuw i64 %365, 1
  %398 = icmp eq i64 %397, %38
  br i1 %398, label %399, label %362

399:                                              ; preds = %362, %357
  %400 = phi <4 x i64> [ %358, %357 ], [ %396, %362 ]
  %401 = phi <4 x i64> [ %359, %357 ], [ %382, %362 ]
  %402 = lshr <4 x i64> %401, splat (i64 47)
  %403 = xor <4 x i64> %402, %329
  %404 = xor <4 x i64> %403, %401
  %405 = bitcast <4 x i64> %404 to <8 x i32>
  %406 = shufflevector <8 x i32> %405, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %407 = bitcast <8 x i32> %406 to <4 x i64>
  %408 = and <4 x i64> %404, splat (i64 4294967295)
  %409 = mul nuw <4 x i64> %408, splat (i64 2654435761)
  %410 = mul <4 x i64> %407, splat (i64 -7046029290881679360)
  %411 = add <4 x i64> %410, %409
  %412 = lshr <4 x i64> %400, splat (i64 47)
  %413 = xor <4 x i64> %412, %341
  %414 = xor <4 x i64> %413, %400
  %415 = bitcast <4 x i64> %414 to <8 x i32>
  %416 = shufflevector <8 x i32> %415, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %417 = bitcast <8 x i32> %416 to <4 x i64>
  %418 = and <4 x i64> %414, splat (i64 4294967295)
  %419 = mul nuw <4 x i64> %418, splat (i64 2654435761)
  %420 = mul <4 x i64> %417, splat (i64 -7046029290881679360)
  %421 = add <4 x i64> %420, %419
  %422 = getelementptr inbounds nuw i8, ptr %360, i64 %280
  %423 = sub i64 %361, %38
  %424 = icmp ult i64 %423, %38
  br i1 %424, label %425, label %357

425:                                              ; preds = %399
  store <4 x i64> %411, ptr %3, align 64
  store <4 x i64> %421, ptr %9, align 32
  br label %426

426:                                              ; preds = %425, %324
  %427 = phi <4 x i64> [ %350, %324 ], [ %421, %425 ]
  %428 = phi <4 x i64> [ %338, %324 ], [ %411, %425 ]
  %429 = phi i64 [ %353, %324 ], [ %423, %425 ]
  %430 = phi ptr [ %352, %324 ], [ %422, %425 ]
  %431 = icmp eq i64 %429, 0
  br i1 %431, label %470, label %432

432:                                              ; preds = %426, %432
  %433 = phi <4 x i64> [ %466, %432 ], [ %427, %426 ]
  %434 = phi <4 x i64> [ %452, %432 ], [ %428, %426 ]
  %435 = phi i64 [ %467, %432 ], [ 0, %426 ]
  %436 = shl i64 %435, 6
  %437 = getelementptr inbounds nuw i8, ptr %430, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %438, i32 0, i32 3, i32 1)
  %439 = shl i64 %435, 3
  %440 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %439
  %441 = load <4 x i64>, ptr %437, align 1
  %442 = load <4 x i64>, ptr %440, align 8
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
  %456 = load <4 x i64>, ptr %455, align 8
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
  %468 = icmp eq i64 %467, %429
  br i1 %468, label %469, label %432

469:                                              ; preds = %432
  store <4 x i64> %452, ptr %3, align 64
  store <4 x i64> %466, ptr %9, align 32
  br label %470

470:                                              ; preds = %469, %426
  %471 = shl i64 %429, 6
  %472 = getelementptr inbounds nuw i8, ptr %430, i64 %471
  store i64 %429, ptr %37, align 8
  %473 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %474 = getelementptr inbounds i8, ptr %472, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %473, ptr noundef nonnull readonly align 1 dereferenceable(64) %474, i64 64, i1 false)
  br label %475

475:                                              ; preds = %470, %275
  %476 = phi ptr [ %472, %470 ], [ %36, %275 ]
  %477 = ptrtoint ptr %476 to i64
  %478 = sub i64 %279, %477
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %34, ptr readonly align 1 %476, i64 %478, i1 false)
  %479 = trunc i64 %478 to i32
  %480 = load ptr, ptr %14, align 8
  %481 = freeze ptr %480
  %482 = load i64, ptr %33, align 16
  store i32 %479, ptr %4, align 64
  %483 = icmp eq ptr %481, null
  %484 = select i1 %483, ptr %32, ptr %481
  %485 = icmp ugt i64 %482, 240
  br i1 %485, label %486, label %807

486:                                              ; preds = %475
  %487 = load <4 x i64>, ptr %3, align 64
  %488 = load <4 x i64>, ptr %9, align 32
  %489 = icmp ugt i32 %479, 63
  br i1 %489, label %490, label %685

490:                                              ; preds = %486
  %491 = add i64 %478, 4294967295
  %492 = lshr i64 %491, 6
  %493 = and i64 %492, 67108863
  %494 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %495 = load i64, ptr %494, align 8
  %496 = load i64, ptr %16, align 8
  %497 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %498 = load i64, ptr %15, align 32
  %499 = sub i64 %496, %495
  %500 = icmp ugt i64 %499, %493
  br i1 %500, label %610, label %501

501:                                              ; preds = %490
  %502 = sub nuw nsw i64 %493, %499
  %503 = shl i64 %495, 3
  %504 = getelementptr inbounds nuw i8, ptr %484, i64 %503
  %505 = icmp eq i64 %496, %495
  br i1 %505, label %543, label %506

506:                                              ; preds = %501, %506
  %507 = phi <4 x i64> [ %540, %506 ], [ %488, %501 ]
  %508 = phi <4 x i64> [ %526, %506 ], [ %487, %501 ]
  %509 = phi i64 [ %541, %506 ], [ 0, %501 ]
  %510 = shl i64 %509, 6
  %511 = getelementptr inbounds nuw i8, ptr %497, i64 %510
  %512 = getelementptr inbounds nuw i8, ptr %511, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %512, i32 0, i32 3, i32 1)
  %513 = shl i64 %509, 3
  %514 = getelementptr inbounds nuw i8, ptr %504, i64 %513
  %515 = load <4 x i64>, ptr %511, align 64
  %516 = load <4 x i64>, ptr %514, align 1
  %517 = xor <4 x i64> %516, %515
  %518 = bitcast <4 x i64> %517 to <8 x i32>
  %519 = shufflevector <8 x i32> %518, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %520 = bitcast <8 x i32> %519 to <4 x i64>
  %521 = and <4 x i64> %517, splat (i64 4294967295)
  %522 = and <4 x i64> %520, splat (i64 4294967295)
  %523 = mul nuw <4 x i64> %522, %521
  %524 = shufflevector <4 x i64> %515, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %525 = add <4 x i64> %508, %524
  %526 = add <4 x i64> %525, %523
  %527 = getelementptr inbounds nuw i8, ptr %511, i64 32
  %528 = load <4 x i64>, ptr %527, align 32
  %529 = getelementptr inbounds nuw i8, ptr %514, i64 32
  %530 = load <4 x i64>, ptr %529, align 1
  %531 = xor <4 x i64> %530, %528
  %532 = bitcast <4 x i64> %531 to <8 x i32>
  %533 = shufflevector <8 x i32> %532, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %534 = bitcast <8 x i32> %533 to <4 x i64>
  %535 = and <4 x i64> %531, splat (i64 4294967295)
  %536 = and <4 x i64> %534, splat (i64 4294967295)
  %537 = mul nuw <4 x i64> %536, %535
  %538 = shufflevector <4 x i64> %528, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %539 = add <4 x i64> %507, %538
  %540 = add <4 x i64> %539, %537
  %541 = add nuw i64 %509, 1
  %542 = icmp eq i64 %541, %499
  br i1 %542, label %543, label %506

543:                                              ; preds = %506, %501
  %544 = phi <4 x i64> [ %488, %501 ], [ %540, %506 ]
  %545 = phi <4 x i64> [ %487, %501 ], [ %526, %506 ]
  %546 = getelementptr inbounds nuw i8, ptr %484, i64 %498
  %547 = lshr <4 x i64> %545, splat (i64 47)
  %548 = load <4 x i64>, ptr %546, align 1
  %549 = xor <4 x i64> %547, %548
  %550 = xor <4 x i64> %549, %545
  %551 = bitcast <4 x i64> %550 to <8 x i32>
  %552 = shufflevector <8 x i32> %551, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %553 = bitcast <8 x i32> %552 to <4 x i64>
  %554 = and <4 x i64> %550, splat (i64 4294967295)
  %555 = mul nuw <4 x i64> %554, splat (i64 2654435761)
  %556 = mul <4 x i64> %553, splat (i64 -7046029290881679360)
  %557 = add <4 x i64> %556, %555
  %558 = lshr <4 x i64> %544, splat (i64 47)
  %559 = getelementptr inbounds nuw i8, ptr %546, i64 32
  %560 = load <4 x i64>, ptr %559, align 1
  %561 = xor <4 x i64> %558, %560
  %562 = xor <4 x i64> %561, %544
  %563 = bitcast <4 x i64> %562 to <8 x i32>
  %564 = shufflevector <8 x i32> %563, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %565 = bitcast <8 x i32> %564 to <4 x i64>
  %566 = and <4 x i64> %562, splat (i64 4294967295)
  %567 = mul nuw <4 x i64> %566, splat (i64 2654435761)
  %568 = mul <4 x i64> %565, splat (i64 -7046029290881679360)
  %569 = add <4 x i64> %568, %567
  %570 = shl nuw nsw i64 %499, 6
  %571 = getelementptr inbounds nuw i8, ptr %497, i64 %570
  %572 = icmp eq i64 %499, %493
  br i1 %572, label %651, label %573

573:                                              ; preds = %543, %573
  %574 = phi <4 x i64> [ %607, %573 ], [ %569, %543 ]
  %575 = phi <4 x i64> [ %593, %573 ], [ %557, %543 ]
  %576 = phi i64 [ %608, %573 ], [ 0, %543 ]
  %577 = shl i64 %576, 6
  %578 = getelementptr inbounds nuw i8, ptr %571, i64 %577
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %579, i32 0, i32 3, i32 1)
  %580 = shl i64 %576, 3
  %581 = getelementptr inbounds nuw i8, ptr %484, i64 %580
  %582 = load <4 x i64>, ptr %578, align 64
  %583 = load <4 x i64>, ptr %581, align 1
  %584 = xor <4 x i64> %583, %582
  %585 = bitcast <4 x i64> %584 to <8 x i32>
  %586 = shufflevector <8 x i32> %585, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %587 = bitcast <8 x i32> %586 to <4 x i64>
  %588 = and <4 x i64> %584, splat (i64 4294967295)
  %589 = and <4 x i64> %587, splat (i64 4294967295)
  %590 = mul nuw <4 x i64> %589, %588
  %591 = shufflevector <4 x i64> %582, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %592 = add <4 x i64> %575, %591
  %593 = add <4 x i64> %592, %590
  %594 = getelementptr inbounds nuw i8, ptr %578, i64 32
  %595 = load <4 x i64>, ptr %594, align 32
  %596 = getelementptr inbounds nuw i8, ptr %581, i64 32
  %597 = load <4 x i64>, ptr %596, align 1
  %598 = xor <4 x i64> %597, %595
  %599 = bitcast <4 x i64> %598 to <8 x i32>
  %600 = shufflevector <8 x i32> %599, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %601 = bitcast <8 x i32> %600 to <4 x i64>
  %602 = and <4 x i64> %598, splat (i64 4294967295)
  %603 = and <4 x i64> %601, splat (i64 4294967295)
  %604 = mul nuw <4 x i64> %603, %602
  %605 = shufflevector <4 x i64> %595, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %606 = add <4 x i64> %574, %605
  %607 = add <4 x i64> %606, %604
  %608 = add nuw i64 %576, 1
  %609 = icmp eq i64 %608, %502
  br i1 %609, label %651, label %573

610:                                              ; preds = %490
  %611 = shl i64 %495, 3
  %612 = getelementptr inbounds nuw i8, ptr %484, i64 %611
  %613 = icmp eq i32 %479, 64
  br i1 %613, label %651, label %614

614:                                              ; preds = %610, %614
  %615 = phi <4 x i64> [ %648, %614 ], [ %488, %610 ]
  %616 = phi <4 x i64> [ %634, %614 ], [ %487, %610 ]
  %617 = phi i64 [ %649, %614 ], [ 0, %610 ]
  %618 = shl i64 %617, 6
  %619 = getelementptr inbounds nuw i8, ptr %497, i64 %618
  %620 = getelementptr inbounds nuw i8, ptr %619, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %620, i32 0, i32 3, i32 1)
  %621 = shl i64 %617, 3
  %622 = getelementptr inbounds nuw i8, ptr %612, i64 %621
  %623 = load <4 x i64>, ptr %619, align 64
  %624 = load <4 x i64>, ptr %622, align 1
  %625 = xor <4 x i64> %624, %623
  %626 = bitcast <4 x i64> %625 to <8 x i32>
  %627 = shufflevector <8 x i32> %626, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %628 = bitcast <8 x i32> %627 to <4 x i64>
  %629 = and <4 x i64> %625, splat (i64 4294967295)
  %630 = and <4 x i64> %628, splat (i64 4294967295)
  %631 = mul nuw <4 x i64> %630, %629
  %632 = shufflevector <4 x i64> %623, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %633 = add <4 x i64> %616, %632
  %634 = add <4 x i64> %633, %631
  %635 = getelementptr inbounds nuw i8, ptr %619, i64 32
  %636 = load <4 x i64>, ptr %635, align 32
  %637 = getelementptr inbounds nuw i8, ptr %622, i64 32
  %638 = load <4 x i64>, ptr %637, align 1
  %639 = xor <4 x i64> %638, %636
  %640 = bitcast <4 x i64> %639 to <8 x i32>
  %641 = shufflevector <8 x i32> %640, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %642 = bitcast <8 x i32> %641 to <4 x i64>
  %643 = and <4 x i64> %639, splat (i64 4294967295)
  %644 = and <4 x i64> %642, splat (i64 4294967295)
  %645 = mul nuw <4 x i64> %644, %643
  %646 = shufflevector <4 x i64> %636, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %647 = add <4 x i64> %615, %646
  %648 = add <4 x i64> %647, %645
  %649 = add nuw nsw i64 %617, 1
  %650 = icmp eq i64 %649, %493
  br i1 %650, label %651, label %614

651:                                              ; preds = %573, %614, %610, %543
  %652 = phi <4 x i64> [ %569, %543 ], [ %488, %610 ], [ %648, %614 ], [ %607, %573 ]
  %653 = phi <4 x i64> [ %557, %543 ], [ %487, %610 ], [ %634, %614 ], [ %593, %573 ]
  %654 = and i64 %478, 4294967295
  %655 = getelementptr inbounds nuw i8, ptr %497, i64 %654
  %656 = getelementptr inbounds i8, ptr %655, i64 -64
  %657 = getelementptr inbounds nuw i8, ptr %484, i64 %498
  %658 = getelementptr inbounds i8, ptr %657, i64 -7
  %659 = load <4 x i64>, ptr %656, align 1
  %660 = load <4 x i64>, ptr %658, align 1
  %661 = xor <4 x i64> %660, %659
  %662 = bitcast <4 x i64> %661 to <8 x i32>
  %663 = shufflevector <8 x i32> %662, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %664 = bitcast <8 x i32> %663 to <4 x i64>
  %665 = and <4 x i64> %661, splat (i64 4294967295)
  %666 = and <4 x i64> %664, splat (i64 4294967295)
  %667 = mul nuw <4 x i64> %666, %665
  %668 = shufflevector <4 x i64> %659, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %669 = add <4 x i64> %653, %668
  %670 = add <4 x i64> %669, %667
  %671 = getelementptr inbounds i8, ptr %655, i64 -32
  %672 = load <4 x i64>, ptr %671, align 1
  %673 = getelementptr inbounds nuw i8, ptr %657, i64 25
  %674 = load <4 x i64>, ptr %673, align 1
  %675 = xor <4 x i64> %674, %672
  %676 = bitcast <4 x i64> %675 to <8 x i32>
  %677 = shufflevector <8 x i32> %676, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %678 = bitcast <8 x i32> %677 to <4 x i64>
  %679 = and <4 x i64> %675, splat (i64 4294967295)
  %680 = and <4 x i64> %678, splat (i64 4294967295)
  %681 = mul nuw <4 x i64> %680, %679
  %682 = shufflevector <4 x i64> %672, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %683 = add <4 x i64> %652, %682
  %684 = add <4 x i64> %683, %681
  br label %722

685:                                              ; preds = %486
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  %686 = sub i64 64, %478
  %687 = and i64 %686, 127
  %688 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %689 = sub nsw i64 0, %687
  %690 = getelementptr inbounds i8, ptr %4, i64 %689
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %690, i64 %687, i1 false)
  %691 = getelementptr inbounds nuw i8, ptr %2, i64 %687
  %692 = and i64 %478, 63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %691, ptr nonnull readonly align 64 %688, i64 %692, i1 false)
  %693 = load i64, ptr %15, align 32
  %694 = getelementptr inbounds nuw i8, ptr %484, i64 %693
  %695 = getelementptr inbounds i8, ptr %694, i64 -7
  %696 = load <4 x i64>, ptr %2, align 16
  %697 = load <4 x i64>, ptr %695, align 1
  %698 = xor <4 x i64> %697, %696
  %699 = bitcast <4 x i64> %698 to <8 x i32>
  %700 = shufflevector <8 x i32> %699, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %701 = bitcast <8 x i32> %700 to <4 x i64>
  %702 = and <4 x i64> %698, splat (i64 4294967295)
  %703 = and <4 x i64> %701, splat (i64 4294967295)
  %704 = mul nuw <4 x i64> %703, %702
  %705 = shufflevector <4 x i64> %696, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %706 = add <4 x i64> %487, %705
  %707 = add <4 x i64> %706, %704
  %708 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %709 = load <4 x i64>, ptr %708, align 16
  %710 = getelementptr inbounds nuw i8, ptr %694, i64 25
  %711 = load <4 x i64>, ptr %710, align 1
  %712 = xor <4 x i64> %711, %709
  %713 = bitcast <4 x i64> %712 to <8 x i32>
  %714 = shufflevector <8 x i32> %713, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %715 = bitcast <8 x i32> %714 to <4 x i64>
  %716 = and <4 x i64> %712, splat (i64 4294967295)
  %717 = and <4 x i64> %715, splat (i64 4294967295)
  %718 = mul nuw <4 x i64> %717, %716
  %719 = shufflevector <4 x i64> %709, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %720 = add <4 x i64> %488, %719
  %721 = add <4 x i64> %720, %718
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  br label %722

722:                                              ; preds = %685, %651
  %723 = phi <4 x i64> [ %684, %651 ], [ %721, %685 ]
  %724 = phi <4 x i64> [ %670, %651 ], [ %707, %685 ]
  %725 = getelementptr inbounds nuw i8, ptr %3, i64 75
  %726 = getelementptr inbounds nuw i8, ptr %481, i64 11
  %727 = select i1 %483, ptr %725, ptr %726
  %728 = mul i64 %482, -7046029288634856825
  %729 = extractelement <4 x i64> %724, i64 0
  %730 = extractelement <4 x i64> %724, i64 1
  %731 = load i64, ptr %727, align 1
  %732 = getelementptr inbounds nuw i8, ptr %3, i64 83
  %733 = getelementptr i8, ptr %481, i64 19
  %734 = select i1 %483, ptr %732, ptr %733
  %735 = load i64, ptr %734, align 1
  %736 = xor i64 %731, %729
  %737 = xor i64 %735, %730
  %738 = zext i64 %736 to i128
  %739 = zext i64 %737 to i128
  %740 = mul nuw i128 %739, %738
  %741 = lshr i128 %740, 64
  %742 = xor i128 %741, %740
  %743 = trunc i128 %742 to i64
  %744 = add i64 %728, %743
  %745 = getelementptr inbounds nuw i8, ptr %3, i64 91
  %746 = getelementptr inbounds nuw i8, ptr %481, i64 27
  %747 = select i1 %483, ptr %745, ptr %746
  %748 = extractelement <4 x i64> %724, i64 2
  %749 = extractelement <4 x i64> %724, i64 3
  %750 = load i64, ptr %747, align 1
  %751 = getelementptr inbounds nuw i8, ptr %3, i64 99
  %752 = getelementptr i8, ptr %481, i64 35
  %753 = select i1 %483, ptr %751, ptr %752
  %754 = load i64, ptr %753, align 1
  %755 = xor i64 %750, %748
  %756 = xor i64 %754, %749
  %757 = zext i64 %755 to i128
  %758 = zext i64 %756 to i128
  %759 = mul nuw i128 %758, %757
  %760 = lshr i128 %759, 64
  %761 = xor i128 %760, %759
  %762 = trunc i128 %761 to i64
  %763 = add i64 %744, %762
  %764 = getelementptr inbounds nuw i8, ptr %3, i64 107
  %765 = getelementptr inbounds nuw i8, ptr %481, i64 43
  %766 = select i1 %483, ptr %764, ptr %765
  %767 = extractelement <4 x i64> %723, i64 0
  %768 = extractelement <4 x i64> %723, i64 1
  %769 = load i64, ptr %766, align 1
  %770 = getelementptr inbounds nuw i8, ptr %3, i64 115
  %771 = getelementptr i8, ptr %481, i64 51
  %772 = select i1 %483, ptr %770, ptr %771
  %773 = load i64, ptr %772, align 1
  %774 = xor i64 %769, %767
  %775 = xor i64 %773, %768
  %776 = zext i64 %774 to i128
  %777 = zext i64 %775 to i128
  %778 = mul nuw i128 %777, %776
  %779 = lshr i128 %778, 64
  %780 = xor i128 %779, %778
  %781 = trunc i128 %780 to i64
  %782 = add i64 %763, %781
  %783 = getelementptr inbounds nuw i8, ptr %3, i64 123
  %784 = getelementptr inbounds nuw i8, ptr %481, i64 59
  %785 = select i1 %483, ptr %783, ptr %784
  %786 = extractelement <4 x i64> %723, i64 2
  %787 = extractelement <4 x i64> %723, i64 3
  %788 = load i64, ptr %785, align 1
  %789 = getelementptr inbounds nuw i8, ptr %3, i64 131
  %790 = getelementptr i8, ptr %481, i64 67
  %791 = select i1 %483, ptr %789, ptr %790
  %792 = load i64, ptr %791, align 1
  %793 = xor i64 %788, %786
  %794 = xor i64 %792, %787
  %795 = zext i64 %793 to i128
  %796 = zext i64 %794 to i128
  %797 = mul nuw i128 %796, %795
  %798 = lshr i128 %797, 64
  %799 = xor i128 %798, %797
  %800 = trunc i128 %799 to i64
  %801 = add i64 %782, %800
  %802 = lshr i64 %801, 37
  %803 = xor i64 %802, %801
  %804 = mul i64 %803, 1609587791953885689
  %805 = lshr i64 %804, 32
  %806 = xor i64 %805, %804
  br label %1898

807:                                              ; preds = %475
  %808 = load i64, ptr %13, align 8
  %809 = icmp eq i64 %808, 0
  %810 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %811 = icmp samesign ult i64 %482, 17
  br i1 %809, label %1287, label %812

812:                                              ; preds = %807
  br i1 %811, label %813, label %907

813:                                              ; preds = %812
  %814 = icmp samesign ugt i64 %482, 8
  br i1 %814, label %815, label %839, !prof !296

815:                                              ; preds = %813
  %816 = add i64 %808, 7458650908927343033
  %817 = sub i64 -5812251307325107654, %808
  %818 = load i64, ptr %810, align 64
  %819 = xor i64 %818, %816
  %820 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %821 = getelementptr inbounds i8, ptr %820, i64 -8
  %822 = load i64, ptr %821, align 1
  %823 = xor i64 %822, %817
  %824 = tail call noundef i64 @llvm.bswap.i64(i64 %819)
  %825 = add i64 %824, %482
  %826 = add i64 %825, %823
  %827 = zext i64 %819 to i128
  %828 = zext i64 %823 to i128
  %829 = mul nuw i128 %828, %827
  %830 = lshr i128 %829, 64
  %831 = xor i128 %830, %829
  %832 = trunc i128 %831 to i64
  %833 = add i64 %826, %832
  %834 = lshr i64 %833, 37
  %835 = xor i64 %834, %833
  %836 = mul i64 %835, 1609587791953885689
  %837 = lshr i64 %836, 32
  %838 = xor i64 %837, %836
  br label %1898

839:                                              ; preds = %813
  %840 = icmp samesign ugt i64 %482, 3
  br i1 %840, label %841, label %868, !prof !296

841:                                              ; preds = %839
  %842 = trunc i64 %808 to i32
  %843 = tail call noundef i32 @llvm.bswap.i32(i32 %842)
  %844 = zext i32 %843 to i64
  %845 = shl nuw i64 %844, 32
  %846 = xor i64 %845, %808
  %847 = load i32, ptr %810, align 64
  %848 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %849 = getelementptr inbounds i8, ptr %848, i64 -4
  %850 = load i32, ptr %849, align 1
  %851 = sub i64 -4090762196417718878, %846
  %852 = zext i32 %850 to i64
  %853 = zext i32 %847 to i64
  %854 = shl nuw i64 %853, 32
  %855 = or disjoint i64 %854, %852
  %856 = xor i64 %855, %851
  %857 = tail call i64 @llvm.fshl.i64(i64 %856, i64 %856, i64 49)
  %858 = tail call i64 @llvm.fshl.i64(i64 %856, i64 %856, i64 24)
  %859 = xor i64 %858, %857
  %860 = xor i64 %859, %856
  %861 = mul i64 %860, -6939452855193903323
  %862 = lshr i64 %861, 35
  %863 = add nuw nsw i64 %862, %482
  %864 = xor i64 %863, %861
  %865 = mul i64 %864, -6939452855193903323
  %866 = lshr i64 %865, 28
  %867 = xor i64 %866, %865
  br label %1898

868:                                              ; preds = %839
  %869 = icmp eq i64 %482, 0
  br i1 %869, label %897, label %870

870:                                              ; preds = %868
  %871 = load i8, ptr %810, align 64
  %872 = lshr i64 %482, 1
  %873 = getelementptr inbounds nuw i8, ptr %810, i64 %872
  %874 = load i8, ptr %873, align 1
  %875 = getelementptr i8, ptr %810, i64 %482
  %876 = getelementptr i8, ptr %875, i64 -1
  %877 = load i8, ptr %876, align 1
  %878 = zext i8 %871 to i64
  %879 = shl nuw nsw i64 %878, 16
  %880 = zext i8 %874 to i64
  %881 = shl nuw nsw i64 %880, 24
  %882 = zext i8 %877 to i64
  %883 = shl nuw nsw i64 %482, 8
  %884 = or disjoint i64 %879, %883
  %885 = or disjoint i64 %884, %881
  %886 = or disjoint i64 %885, %882
  %887 = add i64 %808, 2267503259
  %888 = xor i64 %886, %887
  %889 = lshr i64 %888, 33
  %890 = xor i64 %889, %888
  %891 = mul i64 %890, -4417276706812531889
  %892 = lshr i64 %891, 29
  %893 = xor i64 %892, %891
  %894 = mul i64 %893, 1609587929392839161
  %895 = lshr i64 %894, 32
  %896 = xor i64 %895, %894
  br label %1898

897:                                              ; preds = %868
  %898 = xor i64 %808, -8707998980786479652
  %899 = lshr i64 %898, 33
  %900 = xor i64 %899, %898
  %901 = mul i64 %900, -4417276706812531889
  %902 = lshr i64 %901, 29
  %903 = xor i64 %902, %901
  %904 = mul i64 %903, 1609587929392839161
  %905 = lshr i64 %904, 32
  %906 = xor i64 %905, %904
  br label %1898

907:                                              ; preds = %812
  %908 = icmp samesign ult i64 %482, 129
  %909 = mul i64 %482, -7046029288634856825
  br i1 %908, label %910, label %1051

910:                                              ; preds = %907
  %911 = icmp samesign ugt i64 %482, 32
  br i1 %911, label %912, label %1014

912:                                              ; preds = %910
  %913 = icmp samesign ugt i64 %482, 64
  br i1 %913, label %914, label %981

914:                                              ; preds = %912
  %915 = icmp samesign ugt i64 %482, 96
  br i1 %915, label %916, label %948

916:                                              ; preds = %914
  %917 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %918 = load i64, ptr %917, align 16
  %919 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %920 = load i64, ptr %919, align 8
  %921 = add i64 %808, 4554437623014685352
  %922 = xor i64 %918, %921
  %923 = sub i64 2111919702937427193, %808
  %924 = xor i64 %920, %923
  %925 = zext i64 %922 to i128
  %926 = zext i64 %924 to i128
  %927 = mul nuw i128 %926, %925
  %928 = lshr i128 %927, 64
  %929 = xor i128 %928, %927
  %930 = trunc i128 %929 to i64
  %931 = add i64 %909, %930
  %932 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %933 = getelementptr inbounds i8, ptr %932, i64 -64
  %934 = load i64, ptr %933, align 1
  %935 = getelementptr i8, ptr %932, i64 -56
  %936 = load i64, ptr %935, align 1
  %937 = add i64 %808, 3556072174620004746
  %938 = xor i64 %934, %937
  %939 = sub i64 7238261902898274248, %808
  %940 = xor i64 %936, %939
  %941 = zext i64 %938 to i128
  %942 = zext i64 %940 to i128
  %943 = mul nuw i128 %942, %941
  %944 = lshr i128 %943, 64
  %945 = xor i128 %944, %943
  %946 = trunc i128 %945 to i64
  %947 = add i64 %931, %946
  br label %948

948:                                              ; preds = %916, %914
  %949 = phi i64 [ %947, %916 ], [ %909, %914 ]
  %950 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %951 = load i64, ptr %950, align 32
  %952 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %953 = load i64, ptr %952, align 8
  %954 = add i64 %808, -3818837453329782724
  %955 = xor i64 %951, %954
  %956 = sub i64 -6688317018830679928, %808
  %957 = xor i64 %953, %956
  %958 = zext i64 %955 to i128
  %959 = zext i64 %957 to i128
  %960 = mul nuw i128 %959, %958
  %961 = lshr i128 %960, 64
  %962 = xor i128 %961, %960
  %963 = trunc i128 %962 to i64
  %964 = add i64 %949, %963
  %965 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %966 = getelementptr inbounds i8, ptr %965, i64 -48
  %967 = load i64, ptr %966, align 1
  %968 = getelementptr i8, ptr %965, i64 -40
  %969 = load i64, ptr %968, align 1
  %970 = add i64 %808, 5690594596133299313
  %971 = xor i64 %967, %970
  %972 = sub i64 -2833645246901970632, %808
  %973 = xor i64 %969, %972
  %974 = zext i64 %971 to i128
  %975 = zext i64 %973 to i128
  %976 = mul nuw i128 %975, %974
  %977 = lshr i128 %976, 64
  %978 = xor i128 %977, %976
  %979 = trunc i128 %978 to i64
  %980 = add i64 %964, %979
  br label %981

981:                                              ; preds = %948, %912
  %982 = phi i64 [ %980, %948 ], [ %909, %912 ]
  %983 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %984 = load i64, ptr %983, align 16
  %985 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %986 = load i64, ptr %985, align 8
  %987 = add i64 %808, 8711581037947681227
  %988 = xor i64 %984, %987
  %989 = sub i64 2410270004345854594, %808
  %990 = xor i64 %986, %989
  %991 = zext i64 %988 to i128
  %992 = zext i64 %990 to i128
  %993 = mul nuw i128 %992, %991
  %994 = lshr i128 %993, 64
  %995 = xor i128 %994, %993
  %996 = trunc i128 %995 to i64
  %997 = add i64 %982, %996
  %998 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %999 = getelementptr inbounds i8, ptr %998, i64 -32
  %1000 = load i64, ptr %999, align 1
  %1001 = getelementptr i8, ptr %998, i64 -24
  %1002 = load i64, ptr %1001, align 1
  %1003 = add i64 %808, -8204357891075471176
  %1004 = xor i64 %1000, %1003
  %1005 = sub i64 5487137525590930912, %808
  %1006 = xor i64 %1002, %1005
  %1007 = zext i64 %1004 to i128
  %1008 = zext i64 %1006 to i128
  %1009 = mul nuw i128 %1008, %1007
  %1010 = lshr i128 %1009, 64
  %1011 = xor i128 %1010, %1009
  %1012 = trunc i128 %1011 to i64
  %1013 = add i64 %997, %1012
  br label %1014

1014:                                             ; preds = %981, %910
  %1015 = phi i64 [ %1013, %981 ], [ %909, %910 ]
  %1016 = load i64, ptr %810, align 64
  %1017 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1018 = load i64, ptr %1017, align 8
  %1019 = add i64 %808, -4734510112055689544
  %1020 = xor i64 %1016, %1019
  %1021 = sub i64 2066345149520216444, %808
  %1022 = xor i64 %1018, %1021
  %1023 = zext i64 %1020 to i128
  %1024 = zext i64 %1022 to i128
  %1025 = mul nuw i128 %1024, %1023
  %1026 = lshr i128 %1025, 64
  %1027 = xor i128 %1026, %1025
  %1028 = trunc i128 %1027 to i64
  %1029 = add i64 %1015, %1028
  %1030 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1031 = getelementptr inbounds i8, ptr %1030, i64 -16
  %1032 = load i64, ptr %1031, align 1
  %1033 = getelementptr i8, ptr %1030, i64 -8
  %1034 = load i64, ptr %1033, align 1
  %1035 = add i64 %808, -2623469361688619810
  %1036 = xor i64 %1032, %1035
  %1037 = sub i64 2262974939099578482, %808
  %1038 = xor i64 %1034, %1037
  %1039 = zext i64 %1036 to i128
  %1040 = zext i64 %1038 to i128
  %1041 = mul nuw i128 %1040, %1039
  %1042 = lshr i128 %1041, 64
  %1043 = xor i128 %1042, %1041
  %1044 = trunc i128 %1043 to i64
  %1045 = add i64 %1029, %1044
  %1046 = lshr i64 %1045, 37
  %1047 = xor i64 %1046, %1045
  %1048 = mul i64 %1047, 1609587791953885689
  %1049 = lshr i64 %1048, 32
  %1050 = xor i64 %1049, %1048
  br label %1898

1051:                                             ; preds = %907
  %1052 = trunc nuw nsw i64 %482 to i32
  %1053 = load i64, ptr %810, align 64
  %1054 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1055 = load i64, ptr %1054, align 8
  %1056 = add i64 %808, -4734510112055689544
  %1057 = xor i64 %1053, %1056
  %1058 = sub i64 2066345149520216444, %808
  %1059 = xor i64 %1055, %1058
  %1060 = zext i64 %1057 to i128
  %1061 = zext i64 %1059 to i128
  %1062 = mul nuw i128 %1061, %1060
  %1063 = lshr i128 %1062, 64
  %1064 = xor i128 %1063, %1062
  %1065 = trunc i128 %1064 to i64
  %1066 = add i64 %909, %1065
  %1067 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1068 = load i64, ptr %1067, align 16
  %1069 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1070 = load i64, ptr %1069, align 8
  %1071 = add i64 %808, -2623469361688619810
  %1072 = xor i64 %1068, %1071
  %1073 = sub i64 2262974939099578482, %808
  %1074 = xor i64 %1070, %1073
  %1075 = zext i64 %1072 to i128
  %1076 = zext i64 %1074 to i128
  %1077 = mul nuw i128 %1076, %1075
  %1078 = lshr i128 %1077, 64
  %1079 = xor i128 %1078, %1077
  %1080 = trunc i128 %1079 to i64
  %1081 = add i64 %1066, %1080
  %1082 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1083 = load i64, ptr %1082, align 32
  %1084 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1085 = load i64, ptr %1084, align 8
  %1086 = add i64 %808, 8711581037947681227
  %1087 = xor i64 %1083, %1086
  %1088 = sub i64 2410270004345854594, %808
  %1089 = xor i64 %1085, %1088
  %1090 = zext i64 %1087 to i128
  %1091 = zext i64 %1089 to i128
  %1092 = mul nuw i128 %1091, %1090
  %1093 = lshr i128 %1092, 64
  %1094 = xor i128 %1093, %1092
  %1095 = trunc i128 %1094 to i64
  %1096 = add i64 %1081, %1095
  %1097 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1098 = load i64, ptr %1097, align 16
  %1099 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1100 = load i64, ptr %1099, align 8
  %1101 = add i64 %808, -8204357891075471176
  %1102 = xor i64 %1098, %1101
  %1103 = sub i64 5487137525590930912, %808
  %1104 = xor i64 %1100, %1103
  %1105 = zext i64 %1102 to i128
  %1106 = zext i64 %1104 to i128
  %1107 = mul nuw i128 %1106, %1105
  %1108 = lshr i128 %1107, 64
  %1109 = xor i128 %1108, %1107
  %1110 = trunc i128 %1109 to i64
  %1111 = add i64 %1096, %1110
  %1112 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %1113 = load i64, ptr %1112, align 64
  %1114 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %1115 = load i64, ptr %1114, align 8
  %1116 = add i64 %808, -3818837453329782724
  %1117 = xor i64 %1113, %1116
  %1118 = sub i64 -6688317018830679928, %808
  %1119 = xor i64 %1115, %1118
  %1120 = zext i64 %1117 to i128
  %1121 = zext i64 %1119 to i128
  %1122 = mul nuw i128 %1121, %1120
  %1123 = lshr i128 %1122, 64
  %1124 = xor i128 %1123, %1122
  %1125 = trunc i128 %1124 to i64
  %1126 = add i64 %1111, %1125
  %1127 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %1128 = load i64, ptr %1127, align 16
  %1129 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %1130 = load i64, ptr %1129, align 8
  %1131 = add i64 %808, 5690594596133299313
  %1132 = xor i64 %1128, %1131
  %1133 = sub i64 -2833645246901970632, %808
  %1134 = xor i64 %1130, %1133
  %1135 = zext i64 %1132 to i128
  %1136 = zext i64 %1134 to i128
  %1137 = mul nuw i128 %1136, %1135
  %1138 = lshr i128 %1137, 64
  %1139 = xor i128 %1138, %1137
  %1140 = trunc i128 %1139 to i64
  %1141 = add i64 %1126, %1140
  %1142 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %1143 = load i64, ptr %1142, align 32
  %1144 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %1145 = load i64, ptr %1144, align 8
  %1146 = add i64 %808, 4554437623014685352
  %1147 = xor i64 %1143, %1146
  %1148 = sub i64 2111919702937427193, %808
  %1149 = xor i64 %1145, %1148
  %1150 = zext i64 %1147 to i128
  %1151 = zext i64 %1149 to i128
  %1152 = mul nuw i128 %1151, %1150
  %1153 = lshr i128 %1152, 64
  %1154 = xor i128 %1153, %1152
  %1155 = trunc i128 %1154 to i64
  %1156 = add i64 %1141, %1155
  %1157 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %1158 = load i64, ptr %1157, align 16
  %1159 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %1160 = load i64, ptr %1159, align 8
  %1161 = add i64 %808, 3556072174620004746
  %1162 = xor i64 %1158, %1161
  %1163 = sub i64 7238261902898274248, %808
  %1164 = xor i64 %1160, %1163
  %1165 = zext i64 %1162 to i128
  %1166 = zext i64 %1164 to i128
  %1167 = mul nuw i128 %1166, %1165
  %1168 = lshr i128 %1167, 64
  %1169 = xor i128 %1168, %1167
  %1170 = trunc i128 %1169 to i64
  %1171 = add i64 %1156, %1170
  %1172 = lshr i32 %1052, 4
  %1173 = lshr i64 %1171, 37
  %1174 = xor i64 %1173, %1171
  %1175 = mul i64 %1174, 1609587791953885689
  %1176 = lshr i64 %1175, 32
  %1177 = xor i64 %1176, %1175
  %1178 = icmp eq i32 %1172, 8
  br i1 %1178, label %1264, label %1179

1179:                                             ; preds = %1051
  %1180 = zext nneg i32 %1172 to i64
  %1181 = and i64 %1180, 1
  %1182 = icmp eq i32 %1172, 9
  br i1 %1182, label %1238, label %1183

1183:                                             ; preds = %1179
  %1184 = and i64 %1180, 14
  %1185 = add nsw i64 %1184, -10
  br label %1186

1186:                                             ; preds = %1186, %1183
  %1187 = phi i64 [ 8, %1183 ], [ %1233, %1186 ]
  %1188 = phi i64 [ %1177, %1183 ], [ %1232, %1186 ]
  %1189 = phi i64 [ 0, %1183 ], [ %1234, %1186 ]
  %1190 = shl nsw i64 %1187, 4
  %1191 = getelementptr inbounds nuw i8, ptr %810, i64 %1190
  %1192 = getelementptr i8, ptr @XXH3_kSecret, i64 %1190
  %1193 = getelementptr i8, ptr %1192, i64 -125
  %1194 = load i64, ptr %1191, align 32
  %1195 = getelementptr i8, ptr %1191, i64 8
  %1196 = load i64, ptr %1195, align 8
  %1197 = load i64, ptr %1193, align 1
  %1198 = getelementptr i8, ptr %1192, i64 -117
  %1199 = load i64, ptr %1198, align 1
  %1200 = add i64 %1197, %808
  %1201 = xor i64 %1200, %1194
  %1202 = sub i64 %1199, %808
  %1203 = xor i64 %1202, %1196
  %1204 = zext i64 %1201 to i128
  %1205 = zext i64 %1203 to i128
  %1206 = mul nuw i128 %1205, %1204
  %1207 = lshr i128 %1206, 64
  %1208 = xor i128 %1207, %1206
  %1209 = trunc i128 %1208 to i64
  %1210 = add i64 %1188, %1209
  %1211 = shl i64 %1187, 4
  %1212 = or disjoint i64 %1211, 16
  %1213 = getelementptr inbounds nuw i8, ptr %810, i64 %1212
  %1214 = getelementptr i8, ptr @XXH3_kSecret, i64 %1212
  %1215 = getelementptr i8, ptr %1214, i64 -125
  %1216 = load i64, ptr %1213, align 16
  %1217 = getelementptr i8, ptr %1213, i64 8
  %1218 = load i64, ptr %1217, align 8
  %1219 = load i64, ptr %1215, align 1
  %1220 = getelementptr i8, ptr %1214, i64 -117
  %1221 = load i64, ptr %1220, align 1
  %1222 = add i64 %1219, %808
  %1223 = xor i64 %1222, %1216
  %1224 = sub i64 %1221, %808
  %1225 = xor i64 %1224, %1218
  %1226 = zext i64 %1223 to i128
  %1227 = zext i64 %1225 to i128
  %1228 = mul nuw i128 %1227, %1226
  %1229 = lshr i128 %1228, 64
  %1230 = xor i128 %1229, %1228
  %1231 = trunc i128 %1230 to i64
  %1232 = add i64 %1210, %1231
  %1233 = add nuw nsw i64 %1187, 2
  %1234 = add i64 %1189, 2
  %1235 = icmp eq i64 %1189, %1185
  br i1 %1235, label %1236, label %1186

1236:                                             ; preds = %1186
  %1237 = shl nsw i64 %1233, 4
  br label %1238

1238:                                             ; preds = %1236, %1179
  %1239 = phi i64 [ poison, %1179 ], [ %1232, %1236 ]
  %1240 = phi i64 [ 128, %1179 ], [ %1237, %1236 ]
  %1241 = phi i64 [ %1177, %1179 ], [ %1232, %1236 ]
  %1242 = icmp eq i64 %1181, 0
  br i1 %1242, label %1264, label %1243

1243:                                             ; preds = %1238
  %1244 = getelementptr inbounds nuw i8, ptr %810, i64 %1240
  %1245 = getelementptr i8, ptr @XXH3_kSecret, i64 %1240
  %1246 = getelementptr i8, ptr %1245, i64 -125
  %1247 = load i64, ptr %1244, align 16
  %1248 = getelementptr i8, ptr %1244, i64 8
  %1249 = load i64, ptr %1248, align 8
  %1250 = load i64, ptr %1246, align 1
  %1251 = getelementptr i8, ptr %1245, i64 -117
  %1252 = load i64, ptr %1251, align 1
  %1253 = add i64 %1250, %808
  %1254 = xor i64 %1253, %1247
  %1255 = sub i64 %1252, %808
  %1256 = xor i64 %1255, %1249
  %1257 = zext i64 %1254 to i128
  %1258 = zext i64 %1256 to i128
  %1259 = mul nuw i128 %1258, %1257
  %1260 = lshr i128 %1259, 64
  %1261 = xor i128 %1260, %1259
  %1262 = trunc i128 %1261 to i64
  %1263 = add i64 %1241, %1262
  br label %1264

1264:                                             ; preds = %1243, %1238, %1051
  %1265 = phi i64 [ %1177, %1051 ], [ %1239, %1238 ], [ %1263, %1243 ]
  %1266 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1267 = getelementptr inbounds i8, ptr %1266, i64 -16
  %1268 = load i64, ptr %1267, align 1
  %1269 = getelementptr i8, ptr %1266, i64 -8
  %1270 = load i64, ptr %1269, align 1
  %1271 = add i64 %808, 8320639771003045937
  %1272 = xor i64 %1268, %1271
  %1273 = sub i64 -1453760514566526364, %808
  %1274 = xor i64 %1270, %1273
  %1275 = zext i64 %1272 to i128
  %1276 = zext i64 %1274 to i128
  %1277 = mul nuw i128 %1276, %1275
  %1278 = lshr i128 %1277, 64
  %1279 = xor i128 %1278, %1277
  %1280 = trunc i128 %1279 to i64
  %1281 = add i64 %1265, %1280
  %1282 = lshr i64 %1281, 37
  %1283 = xor i64 %1282, %1281
  %1284 = mul i64 %1283, 1609587791953885689
  %1285 = lshr i64 %1284, 32
  %1286 = xor i64 %1285, %1284
  br label %1898

1287:                                             ; preds = %807
  br i1 %811, label %1288, label %1413

1288:                                             ; preds = %1287
  %1289 = icmp samesign ugt i64 %482, 8
  br i1 %1289, label %1290, label %1330, !prof !296

1290:                                             ; preds = %1288
  %1291 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1292 = getelementptr inbounds nuw i8, ptr %481, i64 24
  %1293 = select i1 %483, ptr %1291, ptr %1292
  %1294 = load i64, ptr %1293, align 1
  %1295 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1296 = getelementptr inbounds nuw i8, ptr %481, i64 32
  %1297 = select i1 %483, ptr %1295, ptr %1296
  %1298 = load i64, ptr %1297, align 1
  %1299 = xor i64 %1298, %1294
  %1300 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1301 = getelementptr inbounds nuw i8, ptr %481, i64 40
  %1302 = select i1 %483, ptr %1300, ptr %1301
  %1303 = load i64, ptr %1302, align 1
  %1304 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1305 = getelementptr inbounds nuw i8, ptr %481, i64 48
  %1306 = select i1 %483, ptr %1304, ptr %1305
  %1307 = load i64, ptr %1306, align 1
  %1308 = xor i64 %1307, %1303
  %1309 = load i64, ptr %810, align 64
  %1310 = xor i64 %1299, %1309
  %1311 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1312 = getelementptr inbounds i8, ptr %1311, i64 -8
  %1313 = load i64, ptr %1312, align 1
  %1314 = xor i64 %1308, %1313
  %1315 = tail call noundef i64 @llvm.bswap.i64(i64 %1310)
  %1316 = add i64 %1315, %482
  %1317 = add i64 %1316, %1314
  %1318 = zext i64 %1310 to i128
  %1319 = zext i64 %1314 to i128
  %1320 = mul nuw i128 %1319, %1318
  %1321 = lshr i128 %1320, 64
  %1322 = xor i128 %1321, %1320
  %1323 = trunc i128 %1322 to i64
  %1324 = add i64 %1317, %1323
  %1325 = lshr i64 %1324, 37
  %1326 = xor i64 %1325, %1324
  %1327 = mul i64 %1326, 1609587791953885689
  %1328 = lshr i64 %1327, 32
  %1329 = xor i64 %1328, %1327
  br label %1898

1330:                                             ; preds = %1288
  %1331 = icmp samesign ugt i64 %482, 3
  br i1 %1331, label %1332, label %1362, !prof !296

1332:                                             ; preds = %1330
  %1333 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1334 = getelementptr i8, ptr %481, i64 8
  %1335 = select i1 %483, ptr %1333, ptr %1334
  %1336 = load i64, ptr %1335, align 1
  %1337 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1338 = getelementptr i8, ptr %481, i64 16
  %1339 = select i1 %483, ptr %1337, ptr %1338
  %1340 = load i64, ptr %1339, align 1
  %1341 = load i32, ptr %810, align 64
  %1342 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1343 = getelementptr inbounds i8, ptr %1342, i64 -4
  %1344 = load i32, ptr %1343, align 1
  %1345 = xor i64 %1340, %1336
  %1346 = zext i32 %1344 to i64
  %1347 = zext i32 %1341 to i64
  %1348 = shl nuw i64 %1347, 32
  %1349 = or disjoint i64 %1348, %1346
  %1350 = xor i64 %1345, %1349
  %1351 = tail call i64 @llvm.fshl.i64(i64 %1350, i64 %1350, i64 49)
  %1352 = tail call i64 @llvm.fshl.i64(i64 %1350, i64 %1350, i64 24)
  %1353 = xor i64 %1352, %1351
  %1354 = xor i64 %1353, %1350
  %1355 = mul i64 %1354, -6939452855193903323
  %1356 = lshr i64 %1355, 35
  %1357 = add nuw nsw i64 %1356, %482
  %1358 = xor i64 %1357, %1355
  %1359 = mul i64 %1358, -6939452855193903323
  %1360 = lshr i64 %1359, 28
  %1361 = xor i64 %1360, %1359
  br label %1898

1362:                                             ; preds = %1330
  %1363 = icmp eq i64 %482, 0
  br i1 %1363, label %1395, label %1364

1364:                                             ; preds = %1362
  %1365 = load i32, ptr %484, align 1
  %1366 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %1367 = getelementptr i8, ptr %481, i64 4
  %1368 = select i1 %483, ptr %1366, ptr %1367
  %1369 = load i32, ptr %1368, align 1
  %1370 = load i8, ptr %810, align 64
  %1371 = lshr i64 %482, 1
  %1372 = getelementptr inbounds nuw i8, ptr %810, i64 %1371
  %1373 = load i8, ptr %1372, align 1
  %1374 = getelementptr i8, ptr %810, i64 %482
  %1375 = getelementptr i8, ptr %1374, i64 -1
  %1376 = load i8, ptr %1375, align 1
  %1377 = zext i8 %1370 to i64
  %1378 = shl nuw nsw i64 %1377, 16
  %1379 = zext i8 %1373 to i64
  %1380 = shl nuw nsw i64 %1379, 24
  %1381 = zext i8 %1376 to i64
  %1382 = shl nuw nsw i64 %482, 8
  %1383 = or disjoint i64 %1378, %1382
  %1384 = or disjoint i64 %1383, %1380
  %1385 = or disjoint i64 %1384, %1381
  %1386 = xor i32 %1369, %1365
  %1387 = zext i32 %1386 to i64
  %1388 = xor i64 %1385, %1387
  %1389 = mul i64 %1388, -4417276706812531889
  %1390 = lshr i64 %1389, 29
  %1391 = xor i64 %1390, %1389
  %1392 = mul i64 %1391, 1609587929392839161
  %1393 = lshr i64 %1392, 32
  %1394 = xor i64 %1393, %1392
  br label %1898

1395:                                             ; preds = %1362
  %1396 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1397 = getelementptr inbounds nuw i8, ptr %481, i64 56
  %1398 = select i1 %483, ptr %1396, ptr %1397
  %1399 = load i64, ptr %1398, align 1
  %1400 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1401 = getelementptr inbounds nuw i8, ptr %481, i64 64
  %1402 = select i1 %483, ptr %1400, ptr %1401
  %1403 = load i64, ptr %1402, align 1
  %1404 = xor i64 %1403, %1399
  %1405 = lshr i64 %1404, 33
  %1406 = xor i64 %1405, %1404
  %1407 = mul i64 %1406, -4417276706812531889
  %1408 = lshr i64 %1407, 29
  %1409 = xor i64 %1408, %1407
  %1410 = mul i64 %1409, 1609587929392839161
  %1411 = lshr i64 %1410, 32
  %1412 = xor i64 %1411, %1410
  br label %1898

1413:                                             ; preds = %1287
  %1414 = icmp samesign ult i64 %482, 129
  %1415 = mul i64 %482, -7046029288634856825
  br i1 %1414, label %1416, label %1602

1416:                                             ; preds = %1413
  %1417 = icmp samesign ugt i64 %482, 32
  br i1 %1417, label %1418, label %1556

1418:                                             ; preds = %1416
  %1419 = icmp samesign ugt i64 %482, 64
  br i1 %1419, label %1420, label %1511

1420:                                             ; preds = %1418
  %1421 = icmp samesign ugt i64 %482, 96
  br i1 %1421, label %1422, label %1466

1422:                                             ; preds = %1420
  %1423 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1424 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1425 = getelementptr inbounds nuw i8, ptr %481, i64 96
  %1426 = select i1 %483, ptr %1424, ptr %1425
  %1427 = load i64, ptr %1423, align 16
  %1428 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1429 = load i64, ptr %1428, align 8
  %1430 = load i64, ptr %1426, align 1
  %1431 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1432 = getelementptr i8, ptr %481, i64 104
  %1433 = select i1 %483, ptr %1431, ptr %1432
  %1434 = load i64, ptr %1433, align 1
  %1435 = xor i64 %1430, %1427
  %1436 = xor i64 %1434, %1429
  %1437 = zext i64 %1435 to i128
  %1438 = zext i64 %1436 to i128
  %1439 = mul nuw i128 %1438, %1437
  %1440 = lshr i128 %1439, 64
  %1441 = xor i128 %1440, %1439
  %1442 = trunc i128 %1441 to i64
  %1443 = add i64 %1415, %1442
  %1444 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1445 = getelementptr inbounds i8, ptr %1444, i64 -64
  %1446 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1447 = getelementptr inbounds nuw i8, ptr %481, i64 112
  %1448 = select i1 %483, ptr %1446, ptr %1447
  %1449 = load i64, ptr %1445, align 1
  %1450 = getelementptr i8, ptr %1444, i64 -56
  %1451 = load i64, ptr %1450, align 1
  %1452 = load i64, ptr %1448, align 1
  %1453 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1454 = getelementptr i8, ptr %481, i64 120
  %1455 = select i1 %483, ptr %1453, ptr %1454
  %1456 = load i64, ptr %1455, align 1
  %1457 = xor i64 %1452, %1449
  %1458 = xor i64 %1456, %1451
  %1459 = zext i64 %1457 to i128
  %1460 = zext i64 %1458 to i128
  %1461 = mul nuw i128 %1460, %1459
  %1462 = lshr i128 %1461, 64
  %1463 = xor i128 %1462, %1461
  %1464 = trunc i128 %1463 to i64
  %1465 = add i64 %1443, %1464
  br label %1466

1466:                                             ; preds = %1422, %1420
  %1467 = phi i64 [ %1465, %1422 ], [ %1415, %1420 ]
  %1468 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1469 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1470 = getelementptr inbounds nuw i8, ptr %481, i64 64
  %1471 = select i1 %483, ptr %1469, ptr %1470
  %1472 = load i64, ptr %1468, align 32
  %1473 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1474 = load i64, ptr %1473, align 8
  %1475 = load i64, ptr %1471, align 1
  %1476 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1477 = getelementptr i8, ptr %481, i64 72
  %1478 = select i1 %483, ptr %1476, ptr %1477
  %1479 = load i64, ptr %1478, align 1
  %1480 = xor i64 %1475, %1472
  %1481 = xor i64 %1479, %1474
  %1482 = zext i64 %1480 to i128
  %1483 = zext i64 %1481 to i128
  %1484 = mul nuw i128 %1483, %1482
  %1485 = lshr i128 %1484, 64
  %1486 = xor i128 %1485, %1484
  %1487 = trunc i128 %1486 to i64
  %1488 = add i64 %1467, %1487
  %1489 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1490 = getelementptr inbounds i8, ptr %1489, i64 -48
  %1491 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1492 = getelementptr inbounds nuw i8, ptr %481, i64 80
  %1493 = select i1 %483, ptr %1491, ptr %1492
  %1494 = load i64, ptr %1490, align 1
  %1495 = getelementptr i8, ptr %1489, i64 -40
  %1496 = load i64, ptr %1495, align 1
  %1497 = load i64, ptr %1493, align 1
  %1498 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1499 = getelementptr i8, ptr %481, i64 88
  %1500 = select i1 %483, ptr %1498, ptr %1499
  %1501 = load i64, ptr %1500, align 1
  %1502 = xor i64 %1497, %1494
  %1503 = xor i64 %1501, %1496
  %1504 = zext i64 %1502 to i128
  %1505 = zext i64 %1503 to i128
  %1506 = mul nuw i128 %1505, %1504
  %1507 = lshr i128 %1506, 64
  %1508 = xor i128 %1507, %1506
  %1509 = trunc i128 %1508 to i64
  %1510 = add i64 %1488, %1509
  br label %1511

1511:                                             ; preds = %1466, %1418
  %1512 = phi i64 [ %1510, %1466 ], [ %1415, %1418 ]
  %1513 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1514 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1515 = getelementptr inbounds nuw i8, ptr %481, i64 32
  %1516 = select i1 %483, ptr %1514, ptr %1515
  %1517 = load i64, ptr %1513, align 16
  %1518 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1519 = load i64, ptr %1518, align 8
  %1520 = load i64, ptr %1516, align 1
  %1521 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1522 = getelementptr i8, ptr %481, i64 40
  %1523 = select i1 %483, ptr %1521, ptr %1522
  %1524 = load i64, ptr %1523, align 1
  %1525 = xor i64 %1520, %1517
  %1526 = xor i64 %1524, %1519
  %1527 = zext i64 %1525 to i128
  %1528 = zext i64 %1526 to i128
  %1529 = mul nuw i128 %1528, %1527
  %1530 = lshr i128 %1529, 64
  %1531 = xor i128 %1530, %1529
  %1532 = trunc i128 %1531 to i64
  %1533 = add i64 %1512, %1532
  %1534 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1535 = getelementptr inbounds i8, ptr %1534, i64 -32
  %1536 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1537 = getelementptr inbounds nuw i8, ptr %481, i64 48
  %1538 = select i1 %483, ptr %1536, ptr %1537
  %1539 = load i64, ptr %1535, align 1
  %1540 = getelementptr i8, ptr %1534, i64 -24
  %1541 = load i64, ptr %1540, align 1
  %1542 = load i64, ptr %1538, align 1
  %1543 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1544 = getelementptr i8, ptr %481, i64 56
  %1545 = select i1 %483, ptr %1543, ptr %1544
  %1546 = load i64, ptr %1545, align 1
  %1547 = xor i64 %1542, %1539
  %1548 = xor i64 %1546, %1541
  %1549 = zext i64 %1547 to i128
  %1550 = zext i64 %1548 to i128
  %1551 = mul nuw i128 %1550, %1549
  %1552 = lshr i128 %1551, 64
  %1553 = xor i128 %1552, %1551
  %1554 = trunc i128 %1553 to i64
  %1555 = add i64 %1533, %1554
  br label %1556

1556:                                             ; preds = %1511, %1416
  %1557 = phi i64 [ %1555, %1511 ], [ %1415, %1416 ]
  %1558 = load i64, ptr %810, align 64
  %1559 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1560 = load i64, ptr %1559, align 8
  %1561 = load i64, ptr %484, align 1
  %1562 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1563 = getelementptr i8, ptr %481, i64 8
  %1564 = select i1 %483, ptr %1562, ptr %1563
  %1565 = load i64, ptr %1564, align 1
  %1566 = xor i64 %1561, %1558
  %1567 = xor i64 %1565, %1560
  %1568 = zext i64 %1566 to i128
  %1569 = zext i64 %1567 to i128
  %1570 = mul nuw i128 %1569, %1568
  %1571 = lshr i128 %1570, 64
  %1572 = xor i128 %1571, %1570
  %1573 = trunc i128 %1572 to i64
  %1574 = add i64 %1557, %1573
  %1575 = getelementptr inbounds nuw i8, ptr %810, i64 %482
  %1576 = getelementptr inbounds i8, ptr %1575, i64 -16
  %1577 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1578 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %1579 = select i1 %483, ptr %1577, ptr %1578
  %1580 = load i64, ptr %1576, align 1
  %1581 = getelementptr i8, ptr %1575, i64 -8
  %1582 = load i64, ptr %1581, align 1
  %1583 = load i64, ptr %1579, align 1
  %1584 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1585 = getelementptr i8, ptr %481, i64 24
  %1586 = select i1 %483, ptr %1584, ptr %1585
  %1587 = load i64, ptr %1586, align 1
  %1588 = xor i64 %1583, %1580
  %1589 = xor i64 %1587, %1582
  %1590 = zext i64 %1588 to i128
  %1591 = zext i64 %1589 to i128
  %1592 = mul nuw i128 %1591, %1590
  %1593 = lshr i128 %1592, 64
  %1594 = xor i128 %1593, %1592
  %1595 = trunc i128 %1594 to i64
  %1596 = add i64 %1574, %1595
  %1597 = lshr i64 %1596, 37
  %1598 = xor i64 %1597, %1596
  %1599 = mul i64 %1598, 1609587791953885689
  %1600 = lshr i64 %1599, 32
  %1601 = xor i64 %1600, %1599
  br label %1898

1602:                                             ; preds = %1413
  %1603 = trunc nuw nsw i64 %482 to i32
  %1604 = load i64, ptr %810, align 64
  %1605 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %1606 = load i64, ptr %1605, align 8
  %1607 = load i64, ptr %484, align 1
  %1608 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %1609 = getelementptr i8, ptr %481, i64 8
  %1610 = select i1 %483, ptr %1608, ptr %1609
  %1611 = lshr i32 %1603, 4
  br label %1612

1612:                                             ; preds = %1602, %18
  %1613 = phi i64 [ -4734510112055689544, %18 ], [ %1607, %1602 ]
  %1614 = phi i64 [ %27, %18 ], [ %1606, %1602 ]
  %1615 = phi i64 [ %25, %18 ], [ %1604, %1602 ]
  %1616 = phi i32 [ 12, %18 ], [ %1611, %1602 ]
  %1617 = phi ptr [ @XXH3_kSecret, %18 ], [ %484, %1602 ]
  %1618 = phi i1 [ false, %18 ], [ %483, %1602 ]
  %1619 = phi ptr [ @XXH3_kSecret, %18 ], [ %481, %1602 ]
  %1620 = phi i64 [ 200, %18 ], [ %482, %1602 ]
  %1621 = phi i64 [ -7253308125045442184, %18 ], [ %1415, %1602 ]
  %1622 = phi ptr [ getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), %18 ], [ %1610, %1602 ]
  %1623 = load i64, ptr %1622, align 1
  %1624 = xor i64 %1613, %1615
  %1625 = xor i64 %1623, %1614
  %1626 = zext i64 %1624 to i128
  %1627 = zext i64 %1625 to i128
  %1628 = mul nuw i128 %1627, %1626
  %1629 = lshr i128 %1628, 64
  %1630 = xor i128 %1629, %1628
  %1631 = trunc i128 %1630 to i64
  %1632 = add i64 %1621, %1631
  %1633 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1634 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1635 = getelementptr inbounds nuw i8, ptr %1619, i64 16
  %1636 = select i1 %1618, ptr %1634, ptr %1635
  %1637 = load i64, ptr %1633, align 16
  %1638 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1639 = load i64, ptr %1638, align 8
  %1640 = load i64, ptr %1636, align 1
  %1641 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1642 = getelementptr i8, ptr %1619, i64 24
  %1643 = select i1 %1618, ptr %1641, ptr %1642
  %1644 = load i64, ptr %1643, align 1
  %1645 = xor i64 %1640, %1637
  %1646 = xor i64 %1644, %1639
  %1647 = zext i64 %1645 to i128
  %1648 = zext i64 %1646 to i128
  %1649 = mul nuw i128 %1648, %1647
  %1650 = lshr i128 %1649, 64
  %1651 = xor i128 %1650, %1649
  %1652 = trunc i128 %1651 to i64
  %1653 = add i64 %1632, %1652
  %1654 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1655 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1656 = getelementptr inbounds nuw i8, ptr %1619, i64 32
  %1657 = select i1 %1618, ptr %1655, ptr %1656
  %1658 = load i64, ptr %1654, align 32
  %1659 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1660 = load i64, ptr %1659, align 8
  %1661 = load i64, ptr %1657, align 1
  %1662 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1663 = getelementptr i8, ptr %1619, i64 40
  %1664 = select i1 %1618, ptr %1662, ptr %1663
  %1665 = load i64, ptr %1664, align 1
  %1666 = xor i64 %1661, %1658
  %1667 = xor i64 %1665, %1660
  %1668 = zext i64 %1666 to i128
  %1669 = zext i64 %1667 to i128
  %1670 = mul nuw i128 %1669, %1668
  %1671 = lshr i128 %1670, 64
  %1672 = xor i128 %1671, %1670
  %1673 = trunc i128 %1672 to i64
  %1674 = add i64 %1653, %1673
  %1675 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1676 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1677 = getelementptr inbounds nuw i8, ptr %1619, i64 48
  %1678 = select i1 %1618, ptr %1676, ptr %1677
  %1679 = load i64, ptr %1675, align 16
  %1680 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1681 = load i64, ptr %1680, align 8
  %1682 = load i64, ptr %1678, align 1
  %1683 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1684 = getelementptr i8, ptr %1619, i64 56
  %1685 = select i1 %1618, ptr %1683, ptr %1684
  %1686 = load i64, ptr %1685, align 1
  %1687 = xor i64 %1682, %1679
  %1688 = xor i64 %1686, %1681
  %1689 = zext i64 %1687 to i128
  %1690 = zext i64 %1688 to i128
  %1691 = mul nuw i128 %1690, %1689
  %1692 = lshr i128 %1691, 64
  %1693 = xor i128 %1692, %1691
  %1694 = trunc i128 %1693 to i64
  %1695 = add i64 %1674, %1694
  %1696 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %1697 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1698 = getelementptr inbounds nuw i8, ptr %1619, i64 64
  %1699 = select i1 %1618, ptr %1697, ptr %1698
  %1700 = load i64, ptr %1696, align 64
  %1701 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %1702 = load i64, ptr %1701, align 8
  %1703 = load i64, ptr %1699, align 1
  %1704 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1705 = getelementptr i8, ptr %1619, i64 72
  %1706 = select i1 %1618, ptr %1704, ptr %1705
  %1707 = load i64, ptr %1706, align 1
  %1708 = xor i64 %1703, %1700
  %1709 = xor i64 %1707, %1702
  %1710 = zext i64 %1708 to i128
  %1711 = zext i64 %1709 to i128
  %1712 = mul nuw i128 %1711, %1710
  %1713 = lshr i128 %1712, 64
  %1714 = xor i128 %1713, %1712
  %1715 = trunc i128 %1714 to i64
  %1716 = add i64 %1695, %1715
  %1717 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %1718 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1719 = getelementptr inbounds nuw i8, ptr %1619, i64 80
  %1720 = select i1 %1618, ptr %1718, ptr %1719
  %1721 = load i64, ptr %1717, align 16
  %1722 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %1723 = load i64, ptr %1722, align 8
  %1724 = load i64, ptr %1720, align 1
  %1725 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1726 = getelementptr i8, ptr %1619, i64 88
  %1727 = select i1 %1618, ptr %1725, ptr %1726
  %1728 = load i64, ptr %1727, align 1
  %1729 = xor i64 %1724, %1721
  %1730 = xor i64 %1728, %1723
  %1731 = zext i64 %1729 to i128
  %1732 = zext i64 %1730 to i128
  %1733 = mul nuw i128 %1732, %1731
  %1734 = lshr i128 %1733, 64
  %1735 = xor i128 %1734, %1733
  %1736 = trunc i128 %1735 to i64
  %1737 = add i64 %1716, %1736
  %1738 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %1739 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1740 = getelementptr inbounds nuw i8, ptr %1619, i64 96
  %1741 = select i1 %1618, ptr %1739, ptr %1740
  %1742 = load i64, ptr %1738, align 32
  %1743 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %1744 = load i64, ptr %1743, align 8
  %1745 = load i64, ptr %1741, align 1
  %1746 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1747 = getelementptr i8, ptr %1619, i64 104
  %1748 = select i1 %1618, ptr %1746, ptr %1747
  %1749 = load i64, ptr %1748, align 1
  %1750 = xor i64 %1745, %1742
  %1751 = xor i64 %1749, %1744
  %1752 = zext i64 %1750 to i128
  %1753 = zext i64 %1751 to i128
  %1754 = mul nuw i128 %1753, %1752
  %1755 = lshr i128 %1754, 64
  %1756 = xor i128 %1755, %1754
  %1757 = trunc i128 %1756 to i64
  %1758 = add i64 %1737, %1757
  %1759 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %1760 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1761 = getelementptr inbounds nuw i8, ptr %1619, i64 112
  %1762 = select i1 %1618, ptr %1760, ptr %1761
  %1763 = load i64, ptr %1759, align 16
  %1764 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %1765 = load i64, ptr %1764, align 8
  %1766 = load i64, ptr %1762, align 1
  %1767 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1768 = getelementptr i8, ptr %1619, i64 120
  %1769 = select i1 %1618, ptr %1767, ptr %1768
  %1770 = load i64, ptr %1769, align 1
  %1771 = xor i64 %1766, %1763
  %1772 = xor i64 %1770, %1765
  %1773 = zext i64 %1771 to i128
  %1774 = zext i64 %1772 to i128
  %1775 = mul nuw i128 %1774, %1773
  %1776 = lshr i128 %1775, 64
  %1777 = xor i128 %1776, %1775
  %1778 = trunc i128 %1777 to i64
  %1779 = add i64 %1758, %1778
  %1780 = lshr i64 %1779, 37
  %1781 = xor i64 %1780, %1779
  %1782 = mul i64 %1781, 1609587791953885689
  %1783 = lshr i64 %1782, 32
  %1784 = xor i64 %1783, %1782
  %1785 = icmp eq i32 %1616, 8
  br i1 %1785, label %1868, label %1786

1786:                                             ; preds = %1612
  %1787 = zext nneg i32 %1616 to i64
  %1788 = and i64 %1787, 1
  %1789 = icmp eq i32 %1616, 9
  br i1 %1789, label %1843, label %1790

1790:                                             ; preds = %1786
  %1791 = and i64 %1787, 268435454
  %1792 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1793 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1794 = add nsw i64 %1791, -10
  br label %1795

1795:                                             ; preds = %1795, %1790
  %1796 = phi i64 [ 8, %1790 ], [ %1838, %1795 ]
  %1797 = phi i64 [ %1784, %1790 ], [ %1837, %1795 ]
  %1798 = phi i64 [ 0, %1790 ], [ %1839, %1795 ]
  %1799 = shl nsw i64 %1796, 4
  %1800 = getelementptr inbounds nuw i8, ptr %1792, i64 %1799
  %1801 = getelementptr i8, ptr %1617, i64 %1799
  %1802 = getelementptr i8, ptr %1801, i64 -125
  %1803 = load i64, ptr %1800, align 32
  %1804 = getelementptr i8, ptr %1800, i64 8
  %1805 = load i64, ptr %1804, align 8
  %1806 = load i64, ptr %1802, align 1
  %1807 = getelementptr i8, ptr %1801, i64 -117
  %1808 = load i64, ptr %1807, align 1
  %1809 = xor i64 %1806, %1803
  %1810 = xor i64 %1808, %1805
  %1811 = zext i64 %1809 to i128
  %1812 = zext i64 %1810 to i128
  %1813 = mul nuw i128 %1812, %1811
  %1814 = lshr i128 %1813, 64
  %1815 = xor i128 %1814, %1813
  %1816 = trunc i128 %1815 to i64
  %1817 = add i64 %1797, %1816
  %1818 = shl i64 %1796, 4
  %1819 = or disjoint i64 %1818, 16
  %1820 = getelementptr inbounds nuw i8, ptr %1793, i64 %1819
  %1821 = getelementptr i8, ptr %1617, i64 %1819
  %1822 = getelementptr i8, ptr %1821, i64 -125
  %1823 = load i64, ptr %1820, align 16
  %1824 = getelementptr i8, ptr %1820, i64 8
  %1825 = load i64, ptr %1824, align 8
  %1826 = load i64, ptr %1822, align 1
  %1827 = getelementptr i8, ptr %1821, i64 -117
  %1828 = load i64, ptr %1827, align 1
  %1829 = xor i64 %1826, %1823
  %1830 = xor i64 %1828, %1825
  %1831 = zext i64 %1829 to i128
  %1832 = zext i64 %1830 to i128
  %1833 = mul nuw i128 %1832, %1831
  %1834 = lshr i128 %1833, 64
  %1835 = xor i128 %1834, %1833
  %1836 = trunc i128 %1835 to i64
  %1837 = add i64 %1817, %1836
  %1838 = add nuw nsw i64 %1796, 2
  %1839 = add i64 %1798, 2
  %1840 = icmp eq i64 %1798, %1794
  br i1 %1840, label %1841, label %1795

1841:                                             ; preds = %1795
  %1842 = shl nsw i64 %1838, 4
  br label %1843

1843:                                             ; preds = %1841, %1786
  %1844 = phi i64 [ poison, %1786 ], [ %1837, %1841 ]
  %1845 = phi i64 [ 128, %1786 ], [ %1842, %1841 ]
  %1846 = phi i64 [ %1784, %1786 ], [ %1837, %1841 ]
  %1847 = icmp eq i64 %1788, 0
  br i1 %1847, label %1868, label %1848

1848:                                             ; preds = %1843
  %1849 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1850 = getelementptr inbounds nuw i8, ptr %1849, i64 %1845
  %1851 = getelementptr i8, ptr %1617, i64 %1845
  %1852 = getelementptr i8, ptr %1851, i64 -125
  %1853 = load i64, ptr %1850, align 16
  %1854 = getelementptr i8, ptr %1850, i64 8
  %1855 = load i64, ptr %1854, align 8
  %1856 = load i64, ptr %1852, align 1
  %1857 = getelementptr i8, ptr %1851, i64 -117
  %1858 = load i64, ptr %1857, align 1
  %1859 = xor i64 %1856, %1853
  %1860 = xor i64 %1858, %1855
  %1861 = zext i64 %1859 to i128
  %1862 = zext i64 %1860 to i128
  %1863 = mul nuw i128 %1862, %1861
  %1864 = lshr i128 %1863, 64
  %1865 = xor i128 %1864, %1863
  %1866 = trunc i128 %1865 to i64
  %1867 = add i64 %1846, %1866
  br label %1868

1868:                                             ; preds = %1848, %1843, %1612
  %1869 = phi i64 [ %1784, %1612 ], [ %1844, %1843 ], [ %1867, %1848 ]
  %1870 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %1871 = getelementptr inbounds nuw i8, ptr %1870, i64 %1620
  %1872 = getelementptr inbounds i8, ptr %1871, i64 -16
  %1873 = getelementptr inbounds nuw i8, ptr %3, i64 183
  %1874 = getelementptr inbounds nuw i8, ptr %1619, i64 119
  %1875 = select i1 %1618, ptr %1873, ptr %1874
  %1876 = load i64, ptr %1872, align 1
  %1877 = getelementptr i8, ptr %1871, i64 -8
  %1878 = load i64, ptr %1877, align 1
  %1879 = load i64, ptr %1875, align 1
  %1880 = getelementptr inbounds nuw i8, ptr %3, i64 191
  %1881 = getelementptr i8, ptr %1619, i64 127
  %1882 = select i1 %1618, ptr %1880, ptr %1881
  %1883 = load i64, ptr %1882, align 1
  %1884 = xor i64 %1879, %1876
  %1885 = xor i64 %1883, %1878
  %1886 = zext i64 %1884 to i128
  %1887 = zext i64 %1885 to i128
  %1888 = mul nuw i128 %1887, %1886
  %1889 = lshr i128 %1888, 64
  %1890 = xor i128 %1889, %1888
  %1891 = trunc i128 %1890 to i64
  %1892 = add i64 %1869, %1891
  %1893 = lshr i64 %1892, 37
  %1894 = xor i64 %1893, %1892
  %1895 = mul i64 %1894, 1609587791953885689
  %1896 = lshr i64 %1895, 32
  %1897 = xor i64 %1896, %1895
  br label %1898

1898:                                             ; preds = %722, %815, %841, %870, %897, %1014, %1264, %1290, %1332, %1364, %1395, %1556, %1868
  %1899 = phi i64 [ %806, %722 ], [ %1050, %1014 ], [ %1286, %1264 ], [ %838, %815 ], [ %867, %841 ], [ %896, %870 ], [ %906, %897 ], [ %1601, %1556 ], [ %1897, %1868 ], [ %1329, %1290 ], [ %1361, %1332 ], [ %1394, %1364 ], [ %1412, %1395 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #8
  ret i64 %1899
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
!187 = distinct !{!187, !188, !"XXH3_accumulate: argument 0"}
!188 = distinct !{!188, !"XXH3_accumulate"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"XXH3_accumulate: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !188, !"XXH3_accumulate: argument 2"}
!193 = !{!187, !192}
!194 = !{!195}
!195 = distinct !{!195, !196, !"XXH3_accumulate_512_avx2: argument 0"}
!196 = distinct !{!196, !"XXH3_accumulate_512_avx2"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"XXH3_accumulate_512_avx2: argument 1"}
!199 = !{!200}
!200 = distinct !{!200, !196, !"XXH3_accumulate_512_avx2: argument 2"}
!201 = !{!198, !190, !15}
!202 = !{!195, !200, !187, !192, !14}
!203 = !{!200, !192}
!204 = !{!195, !198, !187, !190}
!205 = !{!195, !187, !14}
!206 = !{!198, !200, !190, !192, !15}
!207 = !{!208}
!208 = distinct !{!208, !209, !"XXH3_consumeStripes: argument 2"}
!209 = distinct !{!209, !"XXH3_consumeStripes"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"XXH3_consumeStripes: argument 3"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"XXH3_accumulate: argument 1"}
!214 = distinct !{!214, !"XXH3_accumulate"}
!215 = !{!216}
!216 = distinct !{!216, !214, !"XXH3_accumulate: argument 2"}
!217 = !{!218, !216, !219, !220, !211}
!218 = distinct !{!218, !214, !"XXH3_accumulate: argument 0"}
!219 = distinct !{!219, !209, !"XXH3_consumeStripes: argument 0"}
!220 = distinct !{!220, !209, !"XXH3_consumeStripes: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"XXH3_accumulate_512_avx2: argument 1"}
!223 = distinct !{!223, !"XXH3_accumulate_512_avx2"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"XXH3_accumulate_512_avx2: argument 2"}
!226 = !{!222, !213, !208}
!227 = !{!228, !225, !218, !216, !219, !220, !211}
!228 = distinct !{!228, !223, !"XXH3_accumulate_512_avx2: argument 0"}
!229 = !{!225, !216, !211}
!230 = !{!228, !222, !218, !213, !219, !220, !208}
!231 = !{!232, !211}
!232 = distinct !{!232, !233, !"XXH3_scrambleAcc_avx2: argument 1"}
!233 = distinct !{!233, !"XXH3_scrambleAcc_avx2"}
!234 = !{!235, !219, !220, !208}
!235 = distinct !{!235, !233, !"XXH3_scrambleAcc_avx2: argument 0"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"XXH3_accumulate: argument 1"}
!238 = distinct !{!238, !"XXH3_accumulate"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"XXH3_accumulate: argument 2"}
!241 = !{!242, !240, !219, !220, !211}
!242 = distinct !{!242, !238, !"XXH3_accumulate: argument 0"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"XXH3_accumulate_512_avx2: argument 1"}
!245 = distinct !{!245, !"XXH3_accumulate_512_avx2"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"XXH3_accumulate_512_avx2: argument 2"}
!248 = !{!244, !237, !208}
!249 = !{!250, !247, !242, !240, !219, !220, !211}
!250 = distinct !{!250, !245, !"XXH3_accumulate_512_avx2: argument 0"}
!251 = !{!247, !240, !211}
!252 = !{!250, !244, !242, !237, !219, !220, !208}
!253 = !{!254}
!254 = distinct !{!254, !255, !"XXH3_accumulate: argument 1"}
!255 = distinct !{!255, !"XXH3_accumulate"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"XXH3_accumulate: argument 2"}
!258 = !{!259, !257, !219, !220, !211}
!259 = distinct !{!259, !255, !"XXH3_accumulate: argument 0"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"XXH3_accumulate_512_avx2: argument 1"}
!262 = distinct !{!262, !"XXH3_accumulate_512_avx2"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"XXH3_accumulate_512_avx2: argument 2"}
!265 = !{!261, !254, !208}
!266 = !{!267, !264, !259, !257, !219, !220, !211}
!267 = distinct !{!267, !262, !"XXH3_accumulate_512_avx2: argument 0"}
!268 = !{!264, !257, !211}
!269 = !{!267, !261, !259, !254, !219, !220, !208}
!270 = !{!271}
!271 = distinct !{!271, !272, !"XXH3_accumulate_512_avx2: argument 1"}
!272 = distinct !{!272, !"XXH3_accumulate_512_avx2"}
!273 = !{!274}
!274 = distinct !{!274, !272, !"XXH3_accumulate_512_avx2: argument 2"}
!275 = !{!276, !274}
!276 = distinct !{!276, !272, !"XXH3_accumulate_512_avx2: argument 0"}
!277 = !{!276, !271}
!278 = !{!279}
!279 = distinct !{!279, !280, !"XXH3_accumulate_512_avx2: argument 1"}
!280 = distinct !{!280, !"XXH3_accumulate_512_avx2"}
!281 = !{!282}
!282 = distinct !{!282, !280, !"XXH3_accumulate_512_avx2: argument 2"}
!283 = !{!284, !282}
!284 = distinct !{!284, !280, !"XXH3_accumulate_512_avx2: argument 0"}
!285 = !{!284, !279}
!286 = !{!287}
!287 = distinct !{!287, !288, !"XXH3_mergeAccs: argument 1"}
!288 = distinct !{!288, !"XXH3_mergeAccs"}
!289 = !{!290}
!290 = distinct !{!290, !288, !"XXH3_mergeAccs: argument 0"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"XXH3_64bits_internal: argument 0"}
!293 = distinct !{!293, !"XXH3_64bits_internal"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"XXH3_64bits_internal: argument 1"}
!296 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!297 = !{!298, !292}
!298 = distinct !{!298, !299, !"XXH3_len_17to128_64b: argument 0"}
!299 = distinct !{!299, !"XXH3_len_17to128_64b"}
!300 = !{!301, !295}
!301 = distinct !{!301, !299, !"XXH3_len_17to128_64b: argument 1"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"XXH3_len_129to240_64b: argument 0"}
!304 = distinct !{!304, !"XXH3_len_129to240_64b"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"XXH3_len_129to240_64b: argument 1"}
!307 = !{!303, !292}
!308 = !{!306, !295}
!309 = distinct !{!309, !65}
!310 = !{!21}
!311 = !{!25}
!312 = !{!313}
!313 = distinct !{!313, !314, !"XXH3_len_17to128_64b: argument 0"}
!314 = distinct !{!314, !"XXH3_len_17to128_64b"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"XXH3_len_17to128_64b: argument 1"}
!317 = !{!313, !21}
!318 = !{!316, !25}
!319 = !{!320}
!320 = distinct !{!320, !20, !"XXH3_len_129to240_64b: argument 0"}
!321 = !{!322}
!322 = distinct !{!322, !20, !"XXH3_len_129to240_64b: argument 1"}
!323 = !{!320, !21}
!324 = !{!322, !25}
