; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_stream.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_stream64_len300(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca <4 x i64>, align 32
  %3 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #9
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3, align 64
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store ptr @XXH3_kSecret, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 128, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 16, ptr %15, align 8
  %16 = icmp eq ptr %0, null
  br i1 %16, label %253, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 300, ptr %18, align 16
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %20 = load <4 x i64>, ptr %3, align 64
  %21 = load <4 x i64>, ptr %8, align 32
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %22, i32 0, i32 3, i32 1)
  %23 = load <4 x i64>, ptr %0, align 1
  %24 = xor <4 x i64> %23, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %23, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %20, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %35 = load <4 x i64>, ptr %34, align 1
  %36 = xor <4 x i64> %35, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %21, %43
  %45 = add <4 x i64> %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %47, i32 0, i32 3, i32 1)
  %48 = load <4 x i64>, ptr %46, align 1
  %49 = xor <4 x i64> %48, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = and <4 x i64> %49, splat (i64 4294967295)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = add <4 x i64> %33, %56
  %58 = add <4 x i64> %57, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %60 = load <4 x i64>, ptr %59, align 1
  %61 = xor <4 x i64> %60, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %60, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %45, %68
  %70 = add <4 x i64> %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %72, i32 0, i32 3, i32 1)
  %73 = load <4 x i64>, ptr %71, align 1
  %74 = xor <4 x i64> %73, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %75 = bitcast <4 x i64> %74 to <8 x i32>
  %76 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %77 = bitcast <8 x i32> %76 to <4 x i64>
  %78 = and <4 x i64> %74, splat (i64 4294967295)
  %79 = and <4 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, %78
  %81 = shufflevector <4 x i64> %73, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %82 = add <4 x i64> %58, %81
  %83 = add <4 x i64> %82, %80
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %85 = load <4 x i64>, ptr %84, align 1
  %86 = xor <4 x i64> %85, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %87 = bitcast <4 x i64> %86 to <8 x i32>
  %88 = shufflevector <8 x i32> %87, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %89 = bitcast <8 x i32> %88 to <4 x i64>
  %90 = and <4 x i64> %86, splat (i64 4294967295)
  %91 = and <4 x i64> %89, splat (i64 4294967295)
  %92 = mul nuw <4 x i64> %91, %90
  %93 = shufflevector <4 x i64> %85, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %94 = add <4 x i64> %70, %93
  %95 = add <4 x i64> %94, %92
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %97, i32 0, i32 3, i32 1)
  %98 = load <4 x i64>, ptr %96, align 1
  %99 = xor <4 x i64> %98, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %100 = bitcast <4 x i64> %99 to <8 x i32>
  %101 = shufflevector <8 x i32> %100, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %102 = bitcast <8 x i32> %101 to <4 x i64>
  %103 = and <4 x i64> %99, splat (i64 4294967295)
  %104 = and <4 x i64> %102, splat (i64 4294967295)
  %105 = mul nuw <4 x i64> %104, %103
  %106 = shufflevector <4 x i64> %98, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %107 = add <4 x i64> %83, %106
  %108 = add <4 x i64> %107, %105
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %110 = load <4 x i64>, ptr %109, align 1
  %111 = xor <4 x i64> %110, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = shufflevector <4 x i64> %110, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %119 = add <4 x i64> %95, %118
  %120 = add <4 x i64> %119, %117
  store <4 x i64> %108, ptr %3, align 64
  store <4 x i64> %120, ptr %8, align 32
  store i64 4, ptr %19, align 8
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %122 = getelementptr i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %121, ptr noundef nonnull readonly align 1 dereferenceable(64) %122, i64 64, i1 false)
  %123 = getelementptr i8, ptr %0, i64 256
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %124, ptr noundef nonnull readonly align 1 dereferenceable(44) %123, i64 44, i1 false)
  store i32 44, ptr %4, align 64
  %125 = load ptr, ptr %13, align 8
  %126 = freeze ptr %125
  %127 = load i64, ptr %18, align 16
  %128 = icmp eq ptr %126, null
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %130 = select i1 %128, ptr %129, ptr %126
  %131 = icmp ugt i64 %127, 240
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 256
  br i1 %131, label %133, label %249

133:                                              ; preds = %17
  %134 = load <4 x i64>, ptr %3, align 64
  %135 = load <4 x i64>, ptr %8, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %136, i64 20, i1 false)
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %137, ptr noundef nonnull align 64 dereferenceable(12) %132, i64 12, i1 false)
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 268
  %139 = load <4 x i64>, ptr %138, align 4
  %140 = load i64, ptr %14, align 32
  %141 = getelementptr inbounds nuw i8, ptr %130, i64 %140
  %142 = getelementptr inbounds i8, ptr %141, i64 -7
  %143 = load <4 x i64>, ptr %2, align 32
  %144 = load <4 x i64>, ptr %142, align 1
  %145 = xor <4 x i64> %144, %143
  %146 = bitcast <4 x i64> %145 to <8 x i32>
  %147 = shufflevector <8 x i32> %146, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %148 = bitcast <8 x i32> %147 to <4 x i64>
  %149 = and <4 x i64> %145, splat (i64 4294967295)
  %150 = and <4 x i64> %148, splat (i64 4294967295)
  %151 = mul nuw <4 x i64> %150, %149
  %152 = shufflevector <4 x i64> %143, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %153 = add <4 x i64> %134, %152
  %154 = add <4 x i64> %153, %151
  %155 = getelementptr inbounds nuw i8, ptr %141, i64 25
  %156 = load <4 x i64>, ptr %155, align 1
  %157 = xor <4 x i64> %156, %139
  %158 = bitcast <4 x i64> %157 to <8 x i32>
  %159 = shufflevector <8 x i32> %158, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %160 = bitcast <8 x i32> %159 to <4 x i64>
  %161 = and <4 x i64> %157, splat (i64 4294967295)
  %162 = and <4 x i64> %160, splat (i64 4294967295)
  %163 = mul nuw <4 x i64> %162, %161
  %164 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %165 = add <4 x i64> %135, %164
  %166 = add <4 x i64> %165, %163
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  %167 = getelementptr inbounds nuw i8, ptr %3, i64 75
  %168 = getelementptr inbounds nuw i8, ptr %126, i64 11
  %169 = select i1 %128, ptr %167, ptr %168
  %170 = mul i64 %127, -7046029288634856825
  %171 = extractelement <4 x i64> %154, i64 0
  %172 = extractelement <4 x i64> %154, i64 1
  %173 = load i64, ptr %169, align 1
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 83
  %175 = getelementptr i8, ptr %126, i64 19
  %176 = select i1 %128, ptr %174, ptr %175
  %177 = load i64, ptr %176, align 1
  %178 = xor i64 %173, %171
  %179 = xor i64 %177, %172
  %180 = zext i64 %178 to i128
  %181 = zext i64 %179 to i128
  %182 = mul nuw i128 %181, %180
  %183 = lshr i128 %182, 64
  %184 = xor i128 %183, %182
  %185 = trunc i128 %184 to i64
  %186 = add i64 %170, %185
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 91
  %188 = getelementptr inbounds nuw i8, ptr %126, i64 27
  %189 = select i1 %128, ptr %187, ptr %188
  %190 = extractelement <4 x i64> %154, i64 2
  %191 = extractelement <4 x i64> %154, i64 3
  %192 = load i64, ptr %189, align 1
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 99
  %194 = getelementptr i8, ptr %126, i64 35
  %195 = select i1 %128, ptr %193, ptr %194
  %196 = load i64, ptr %195, align 1
  %197 = xor i64 %192, %190
  %198 = xor i64 %196, %191
  %199 = zext i64 %197 to i128
  %200 = zext i64 %198 to i128
  %201 = mul nuw i128 %200, %199
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %186, %204
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 107
  %207 = getelementptr inbounds nuw i8, ptr %126, i64 43
  %208 = select i1 %128, ptr %206, ptr %207
  %209 = extractelement <4 x i64> %166, i64 0
  %210 = extractelement <4 x i64> %166, i64 1
  %211 = load i64, ptr %208, align 1
  %212 = getelementptr inbounds nuw i8, ptr %3, i64 115
  %213 = getelementptr i8, ptr %126, i64 51
  %214 = select i1 %128, ptr %212, ptr %213
  %215 = load i64, ptr %214, align 1
  %216 = xor i64 %211, %209
  %217 = xor i64 %215, %210
  %218 = zext i64 %216 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %205, %223
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 123
  %226 = getelementptr inbounds nuw i8, ptr %126, i64 59
  %227 = select i1 %128, ptr %225, ptr %226
  %228 = extractelement <4 x i64> %166, i64 2
  %229 = extractelement <4 x i64> %166, i64 3
  %230 = load i64, ptr %227, align 1
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 131
  %232 = getelementptr i8, ptr %126, i64 67
  %233 = select i1 %128, ptr %231, ptr %232
  %234 = load i64, ptr %233, align 1
  %235 = xor i64 %230, %228
  %236 = xor i64 %234, %229
  %237 = zext i64 %235 to i128
  %238 = zext i64 %236 to i128
  %239 = mul nuw i128 %238, %237
  %240 = lshr i128 %239, 64
  %241 = xor i128 %240, %239
  %242 = trunc i128 %241 to i64
  %243 = add i64 %224, %242
  %244 = lshr i64 %243, 37
  %245 = xor i64 %244, %243
  %246 = mul i64 %245, 1609587791953885689
  %247 = lshr i64 %246, 32
  %248 = xor i64 %247, %246
  br label %1264

249:                                              ; preds = %17
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 516
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %687, label %259

253:                                              ; preds = %1
  %254 = getelementptr inbounds nuw i8, ptr %3, i64 516
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %781, label %257

257:                                              ; preds = %253
  %258 = load i64, ptr %12, align 8
  br label %296

259:                                              ; preds = %249
  %260 = load i64, ptr %12, align 8
  %261 = icmp samesign ult i64 %127, 17
  br i1 %261, label %262, label %307

262:                                              ; preds = %259
  %263 = icmp samesign ugt i64 %127, 8
  br i1 %263, label %264, label %288, !prof !71

264:                                              ; preds = %262
  %265 = add i64 %260, 7458650908927343033
  %266 = sub i64 -5812251307325107654, %260
  %267 = load i64, ptr %132, align 64
  %268 = xor i64 %267, %265
  %269 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %270 = getelementptr inbounds i8, ptr %269, i64 -8
  %271 = load i64, ptr %270, align 1
  %272 = xor i64 %271, %266
  %273 = tail call noundef i64 @llvm.bswap.i64(i64 %268)
  %274 = add i64 %273, %127
  %275 = add i64 %274, %272
  %276 = zext i64 %268 to i128
  %277 = zext i64 %272 to i128
  %278 = mul nuw i128 %277, %276
  %279 = lshr i128 %278, 64
  %280 = xor i128 %279, %278
  %281 = trunc i128 %280 to i64
  %282 = add i64 %275, %281
  %283 = lshr i64 %282, 37
  %284 = xor i64 %283, %282
  %285 = mul i64 %284, 1609587791953885689
  %286 = lshr i64 %285, 32
  %287 = xor i64 %286, %285
  br label %1264

288:                                              ; preds = %262
  %289 = icmp samesign ugt i64 %127, 3
  br i1 %289, label %290, label %292, !prof !71

290:                                              ; preds = %288
  %291 = call fastcc i64 @XXH3_len_4to8_64b(ptr noundef nonnull readonly %132, i64 noundef range(i64 0, 17) %127, i64 2066345149520216444, i64 -2623469361688619810, i64 noundef %260) #10
  br label %1264

292:                                              ; preds = %288
  %293 = icmp eq i64 %127, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %292
  %295 = call fastcc i64 @XXH3_len_1to3_64b(ptr noundef nonnull readonly %132, i64 noundef range(i64 0, 17) %127, i32 963444408, i32 -1102339037, i64 noundef %260) #10
  br label %1264

296:                                              ; preds = %257, %292
  %297 = phi i64 [ %258, %257 ], [ %260, %292 ]
  %298 = xor i64 %297, -8707998980786479652
  %299 = lshr i64 %298, 33
  %300 = xor i64 %299, %298
  %301 = mul i64 %300, -4417276706812531889
  %302 = lshr i64 %301, 29
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587929392839161
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %1264

307:                                              ; preds = %259
  %308 = icmp samesign ult i64 %127, 129
  %309 = mul i64 %127, -7046029288634856825
  br i1 %308, label %310, label %451

310:                                              ; preds = %307
  %311 = icmp samesign ugt i64 %127, 32
  br i1 %311, label %312, label %414

312:                                              ; preds = %310
  %313 = icmp samesign ugt i64 %127, 64
  br i1 %313, label %314, label %381

314:                                              ; preds = %312
  %315 = icmp samesign ugt i64 %127, 96
  br i1 %315, label %316, label %348

316:                                              ; preds = %314
  %317 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %318 = load i64, ptr %317, align 16
  %319 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %320 = load i64, ptr %319, align 8
  %321 = add i64 %260, 4554437623014685352
  %322 = xor i64 %318, %321
  %323 = sub i64 2111919702937427193, %260
  %324 = xor i64 %320, %323
  %325 = zext i64 %322 to i128
  %326 = zext i64 %324 to i128
  %327 = mul nuw i128 %326, %325
  %328 = lshr i128 %327, 64
  %329 = xor i128 %328, %327
  %330 = trunc i128 %329 to i64
  %331 = add i64 %309, %330
  %332 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %333 = getelementptr inbounds i8, ptr %332, i64 -64
  %334 = load i64, ptr %333, align 1
  %335 = getelementptr i8, ptr %332, i64 -56
  %336 = load i64, ptr %335, align 1
  %337 = add i64 %260, 3556072174620004746
  %338 = xor i64 %334, %337
  %339 = sub i64 7238261902898274248, %260
  %340 = xor i64 %336, %339
  %341 = zext i64 %338 to i128
  %342 = zext i64 %340 to i128
  %343 = mul nuw i128 %342, %341
  %344 = lshr i128 %343, 64
  %345 = xor i128 %344, %343
  %346 = trunc i128 %345 to i64
  %347 = add i64 %331, %346
  br label %348

348:                                              ; preds = %316, %314
  %349 = phi i64 [ %347, %316 ], [ %309, %314 ]
  %350 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %351 = load i64, ptr %350, align 32
  %352 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %353 = load i64, ptr %352, align 8
  %354 = add i64 %260, -3818837453329782724
  %355 = xor i64 %351, %354
  %356 = sub i64 -6688317018830679928, %260
  %357 = xor i64 %353, %356
  %358 = zext i64 %355 to i128
  %359 = zext i64 %357 to i128
  %360 = mul nuw i128 %359, %358
  %361 = lshr i128 %360, 64
  %362 = xor i128 %361, %360
  %363 = trunc i128 %362 to i64
  %364 = add i64 %349, %363
  %365 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %366 = getelementptr inbounds i8, ptr %365, i64 -48
  %367 = load i64, ptr %366, align 1
  %368 = getelementptr i8, ptr %365, i64 -40
  %369 = load i64, ptr %368, align 1
  %370 = add i64 %260, 5690594596133299313
  %371 = xor i64 %367, %370
  %372 = sub i64 -2833645246901970632, %260
  %373 = xor i64 %369, %372
  %374 = zext i64 %371 to i128
  %375 = zext i64 %373 to i128
  %376 = mul nuw i128 %375, %374
  %377 = lshr i128 %376, 64
  %378 = xor i128 %377, %376
  %379 = trunc i128 %378 to i64
  %380 = add i64 %364, %379
  br label %381

381:                                              ; preds = %348, %312
  %382 = phi i64 [ %380, %348 ], [ %309, %312 ]
  %383 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %384 = load i64, ptr %383, align 16
  %385 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %386 = load i64, ptr %385, align 8
  %387 = add i64 %260, 8711581037947681227
  %388 = xor i64 %384, %387
  %389 = sub i64 2410270004345854594, %260
  %390 = xor i64 %386, %389
  %391 = zext i64 %388 to i128
  %392 = zext i64 %390 to i128
  %393 = mul nuw i128 %392, %391
  %394 = lshr i128 %393, 64
  %395 = xor i128 %394, %393
  %396 = trunc i128 %395 to i64
  %397 = add i64 %382, %396
  %398 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %399 = getelementptr inbounds i8, ptr %398, i64 -32
  %400 = load i64, ptr %399, align 1
  %401 = getelementptr i8, ptr %398, i64 -24
  %402 = load i64, ptr %401, align 1
  %403 = add i64 %260, -8204357891075471176
  %404 = xor i64 %400, %403
  %405 = sub i64 5487137525590930912, %260
  %406 = xor i64 %402, %405
  %407 = zext i64 %404 to i128
  %408 = zext i64 %406 to i128
  %409 = mul nuw i128 %408, %407
  %410 = lshr i128 %409, 64
  %411 = xor i128 %410, %409
  %412 = trunc i128 %411 to i64
  %413 = add i64 %397, %412
  br label %414

414:                                              ; preds = %381, %310
  %415 = phi i64 [ %413, %381 ], [ %309, %310 ]
  %416 = load i64, ptr %132, align 64
  %417 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %418 = load i64, ptr %417, align 8
  %419 = add i64 %260, -4734510112055689544
  %420 = xor i64 %416, %419
  %421 = sub i64 2066345149520216444, %260
  %422 = xor i64 %418, %421
  %423 = zext i64 %420 to i128
  %424 = zext i64 %422 to i128
  %425 = mul nuw i128 %424, %423
  %426 = lshr i128 %425, 64
  %427 = xor i128 %426, %425
  %428 = trunc i128 %427 to i64
  %429 = add i64 %415, %428
  %430 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %431 = getelementptr inbounds i8, ptr %430, i64 -16
  %432 = load i64, ptr %431, align 1
  %433 = getelementptr i8, ptr %430, i64 -8
  %434 = load i64, ptr %433, align 1
  %435 = add i64 %260, -2623469361688619810
  %436 = xor i64 %432, %435
  %437 = sub i64 2262974939099578482, %260
  %438 = xor i64 %434, %437
  %439 = zext i64 %436 to i128
  %440 = zext i64 %438 to i128
  %441 = mul nuw i128 %440, %439
  %442 = lshr i128 %441, 64
  %443 = xor i128 %442, %441
  %444 = trunc i128 %443 to i64
  %445 = add i64 %429, %444
  %446 = lshr i64 %445, 37
  %447 = xor i64 %446, %445
  %448 = mul i64 %447, 1609587791953885689
  %449 = lshr i64 %448, 32
  %450 = xor i64 %449, %448
  br label %1264

451:                                              ; preds = %307
  %452 = trunc nuw nsw i64 %127 to i32
  %453 = load i64, ptr %132, align 64
  %454 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %455 = load i64, ptr %454, align 8
  %456 = add i64 %260, -4734510112055689544
  %457 = xor i64 %453, %456
  %458 = sub i64 2066345149520216444, %260
  %459 = xor i64 %455, %458
  %460 = zext i64 %457 to i128
  %461 = zext i64 %459 to i128
  %462 = mul nuw i128 %461, %460
  %463 = lshr i128 %462, 64
  %464 = xor i128 %463, %462
  %465 = trunc i128 %464 to i64
  %466 = add i64 %309, %465
  %467 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %468 = load i64, ptr %467, align 16
  %469 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %470 = load i64, ptr %469, align 8
  %471 = add i64 %260, -2623469361688619810
  %472 = xor i64 %468, %471
  %473 = sub i64 2262974939099578482, %260
  %474 = xor i64 %470, %473
  %475 = zext i64 %472 to i128
  %476 = zext i64 %474 to i128
  %477 = mul nuw i128 %476, %475
  %478 = lshr i128 %477, 64
  %479 = xor i128 %478, %477
  %480 = trunc i128 %479 to i64
  %481 = add i64 %466, %480
  %482 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %483 = load i64, ptr %482, align 32
  %484 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %485 = load i64, ptr %484, align 8
  %486 = add i64 %260, 8711581037947681227
  %487 = xor i64 %483, %486
  %488 = sub i64 2410270004345854594, %260
  %489 = xor i64 %485, %488
  %490 = zext i64 %487 to i128
  %491 = zext i64 %489 to i128
  %492 = mul nuw i128 %491, %490
  %493 = lshr i128 %492, 64
  %494 = xor i128 %493, %492
  %495 = trunc i128 %494 to i64
  %496 = add i64 %481, %495
  %497 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %498 = load i64, ptr %497, align 16
  %499 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %500 = load i64, ptr %499, align 8
  %501 = add i64 %260, -8204357891075471176
  %502 = xor i64 %498, %501
  %503 = sub i64 5487137525590930912, %260
  %504 = xor i64 %500, %503
  %505 = zext i64 %502 to i128
  %506 = zext i64 %504 to i128
  %507 = mul nuw i128 %506, %505
  %508 = lshr i128 %507, 64
  %509 = xor i128 %508, %507
  %510 = trunc i128 %509 to i64
  %511 = add i64 %496, %510
  %512 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %513 = load i64, ptr %512, align 64
  %514 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %515 = load i64, ptr %514, align 8
  %516 = add i64 %260, -3818837453329782724
  %517 = xor i64 %513, %516
  %518 = sub i64 -6688317018830679928, %260
  %519 = xor i64 %515, %518
  %520 = zext i64 %517 to i128
  %521 = zext i64 %519 to i128
  %522 = mul nuw i128 %521, %520
  %523 = lshr i128 %522, 64
  %524 = xor i128 %523, %522
  %525 = trunc i128 %524 to i64
  %526 = add i64 %511, %525
  %527 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %528 = load i64, ptr %527, align 16
  %529 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %530 = load i64, ptr %529, align 8
  %531 = add i64 %260, 5690594596133299313
  %532 = xor i64 %528, %531
  %533 = sub i64 -2833645246901970632, %260
  %534 = xor i64 %530, %533
  %535 = zext i64 %532 to i128
  %536 = zext i64 %534 to i128
  %537 = mul nuw i128 %536, %535
  %538 = lshr i128 %537, 64
  %539 = xor i128 %538, %537
  %540 = trunc i128 %539 to i64
  %541 = add i64 %526, %540
  %542 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %543 = load i64, ptr %542, align 32
  %544 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %545 = load i64, ptr %544, align 8
  %546 = add i64 %260, 4554437623014685352
  %547 = xor i64 %543, %546
  %548 = sub i64 2111919702937427193, %260
  %549 = xor i64 %545, %548
  %550 = zext i64 %547 to i128
  %551 = zext i64 %549 to i128
  %552 = mul nuw i128 %551, %550
  %553 = lshr i128 %552, 64
  %554 = xor i128 %553, %552
  %555 = trunc i128 %554 to i64
  %556 = add i64 %541, %555
  %557 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %558 = load i64, ptr %557, align 16
  %559 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %560 = load i64, ptr %559, align 8
  %561 = add i64 %260, 3556072174620004746
  %562 = xor i64 %558, %561
  %563 = sub i64 7238261902898274248, %260
  %564 = xor i64 %560, %563
  %565 = zext i64 %562 to i128
  %566 = zext i64 %564 to i128
  %567 = mul nuw i128 %566, %565
  %568 = lshr i128 %567, 64
  %569 = xor i128 %568, %567
  %570 = trunc i128 %569 to i64
  %571 = add i64 %556, %570
  %572 = lshr i32 %452, 4
  %573 = lshr i64 %571, 37
  %574 = xor i64 %573, %571
  %575 = mul i64 %574, 1609587791953885689
  %576 = lshr i64 %575, 32
  %577 = xor i64 %576, %575
  %578 = icmp eq i32 %572, 8
  br i1 %578, label %664, label %579

579:                                              ; preds = %451
  %580 = zext nneg i32 %572 to i64
  %581 = and i64 %580, 1
  %582 = icmp eq i32 %572, 9
  br i1 %582, label %638, label %583

583:                                              ; preds = %579
  %584 = and i64 %580, 14
  %585 = add nsw i64 %584, -10
  br label %586

586:                                              ; preds = %586, %583
  %587 = phi i64 [ 8, %583 ], [ %633, %586 ]
  %588 = phi i64 [ %577, %583 ], [ %632, %586 ]
  %589 = phi i64 [ 0, %583 ], [ %634, %586 ]
  %590 = shl nsw i64 %587, 4
  %591 = getelementptr inbounds nuw i8, ptr %132, i64 %590
  %592 = getelementptr i8, ptr @XXH3_kSecret, i64 %590
  %593 = getelementptr i8, ptr %592, i64 -125
  %594 = load i64, ptr %591, align 32
  %595 = getelementptr i8, ptr %591, i64 8
  %596 = load i64, ptr %595, align 8
  %597 = load i64, ptr %593, align 1
  %598 = getelementptr i8, ptr %592, i64 -117
  %599 = load i64, ptr %598, align 1
  %600 = add i64 %597, %260
  %601 = xor i64 %600, %594
  %602 = sub i64 %599, %260
  %603 = xor i64 %602, %596
  %604 = zext i64 %601 to i128
  %605 = zext i64 %603 to i128
  %606 = mul nuw i128 %605, %604
  %607 = lshr i128 %606, 64
  %608 = xor i128 %607, %606
  %609 = trunc i128 %608 to i64
  %610 = add i64 %588, %609
  %611 = shl i64 %587, 4
  %612 = or disjoint i64 %611, 16
  %613 = getelementptr inbounds nuw i8, ptr %132, i64 %612
  %614 = getelementptr i8, ptr @XXH3_kSecret, i64 %612
  %615 = getelementptr i8, ptr %614, i64 -125
  %616 = load i64, ptr %613, align 16
  %617 = getelementptr i8, ptr %613, i64 8
  %618 = load i64, ptr %617, align 8
  %619 = load i64, ptr %615, align 1
  %620 = getelementptr i8, ptr %614, i64 -117
  %621 = load i64, ptr %620, align 1
  %622 = add i64 %619, %260
  %623 = xor i64 %622, %616
  %624 = sub i64 %621, %260
  %625 = xor i64 %624, %618
  %626 = zext i64 %623 to i128
  %627 = zext i64 %625 to i128
  %628 = mul nuw i128 %627, %626
  %629 = lshr i128 %628, 64
  %630 = xor i128 %629, %628
  %631 = trunc i128 %630 to i64
  %632 = add i64 %610, %631
  %633 = add nuw nsw i64 %587, 2
  %634 = add i64 %589, 2
  %635 = icmp eq i64 %589, %585
  br i1 %635, label %636, label %586

636:                                              ; preds = %586
  %637 = shl nsw i64 %633, 4
  br label %638

638:                                              ; preds = %636, %579
  %639 = phi i64 [ poison, %579 ], [ %632, %636 ]
  %640 = phi i64 [ 128, %579 ], [ %637, %636 ]
  %641 = phi i64 [ %577, %579 ], [ %632, %636 ]
  %642 = icmp eq i64 %581, 0
  br i1 %642, label %664, label %643

643:                                              ; preds = %638
  %644 = getelementptr inbounds nuw i8, ptr %132, i64 %640
  %645 = getelementptr i8, ptr @XXH3_kSecret, i64 %640
  %646 = getelementptr i8, ptr %645, i64 -125
  %647 = load i64, ptr %644, align 16
  %648 = getelementptr i8, ptr %644, i64 8
  %649 = load i64, ptr %648, align 8
  %650 = load i64, ptr %646, align 1
  %651 = getelementptr i8, ptr %645, i64 -117
  %652 = load i64, ptr %651, align 1
  %653 = add i64 %650, %260
  %654 = xor i64 %653, %647
  %655 = sub i64 %652, %260
  %656 = xor i64 %655, %649
  %657 = zext i64 %654 to i128
  %658 = zext i64 %656 to i128
  %659 = mul nuw i128 %658, %657
  %660 = lshr i128 %659, 64
  %661 = xor i128 %660, %659
  %662 = trunc i128 %661 to i64
  %663 = add i64 %641, %662
  br label %664

664:                                              ; preds = %643, %638, %451
  %665 = phi i64 [ %577, %451 ], [ %639, %638 ], [ %663, %643 ]
  %666 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %667 = getelementptr inbounds i8, ptr %666, i64 -16
  %668 = load i64, ptr %667, align 1
  %669 = getelementptr i8, ptr %666, i64 -8
  %670 = load i64, ptr %669, align 1
  %671 = add i64 %260, 8320639771003045937
  %672 = xor i64 %668, %671
  %673 = sub i64 -1453760514566526364, %260
  %674 = xor i64 %670, %673
  %675 = zext i64 %672 to i128
  %676 = zext i64 %674 to i128
  %677 = mul nuw i128 %676, %675
  %678 = lshr i128 %677, 64
  %679 = xor i128 %678, %677
  %680 = trunc i128 %679 to i64
  %681 = add i64 %665, %680
  %682 = lshr i64 %681, 37
  %683 = xor i64 %682, %681
  %684 = mul i64 %683, 1609587791953885689
  %685 = lshr i64 %684, 32
  %686 = xor i64 %685, %684
  br label %1264

687:                                              ; preds = %249
  %688 = icmp samesign ult i64 %127, 17
  br i1 %688, label %689, label %794

689:                                              ; preds = %687
  %690 = icmp samesign ugt i64 %127, 8
  br i1 %690, label %691, label %731, !prof !71

691:                                              ; preds = %689
  %692 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %693 = getelementptr inbounds nuw i8, ptr %126, i64 24
  %694 = select i1 %128, ptr %692, ptr %693
  %695 = load i64, ptr %694, align 1
  %696 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %697 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %698 = select i1 %128, ptr %696, ptr %697
  %699 = load i64, ptr %698, align 1
  %700 = xor i64 %699, %695
  %701 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %702 = getelementptr inbounds nuw i8, ptr %126, i64 40
  %703 = select i1 %128, ptr %701, ptr %702
  %704 = load i64, ptr %703, align 1
  %705 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %706 = getelementptr inbounds nuw i8, ptr %126, i64 48
  %707 = select i1 %128, ptr %705, ptr %706
  %708 = load i64, ptr %707, align 1
  %709 = xor i64 %708, %704
  %710 = load i64, ptr %132, align 64
  %711 = xor i64 %700, %710
  %712 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %713 = getelementptr inbounds i8, ptr %712, i64 -8
  %714 = load i64, ptr %713, align 1
  %715 = xor i64 %709, %714
  %716 = tail call noundef i64 @llvm.bswap.i64(i64 %711)
  %717 = add i64 %716, %127
  %718 = add i64 %717, %715
  %719 = zext i64 %711 to i128
  %720 = zext i64 %715 to i128
  %721 = mul nuw i128 %720, %719
  %722 = lshr i128 %721, 64
  %723 = xor i128 %722, %721
  %724 = trunc i128 %723 to i64
  %725 = add i64 %718, %724
  %726 = lshr i64 %725, 37
  %727 = xor i64 %726, %725
  %728 = mul i64 %727, 1609587791953885689
  %729 = lshr i64 %728, 32
  %730 = xor i64 %729, %728
  br label %1264

731:                                              ; preds = %689
  %732 = icmp samesign ugt i64 %127, 3
  br i1 %732, label %733, label %763, !prof !71

733:                                              ; preds = %731
  %734 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %735 = getelementptr i8, ptr %126, i64 8
  %736 = select i1 %128, ptr %734, ptr %735
  %737 = load i64, ptr %736, align 1
  %738 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %739 = getelementptr i8, ptr %126, i64 16
  %740 = select i1 %128, ptr %738, ptr %739
  %741 = load i64, ptr %740, align 1
  %742 = load i32, ptr %132, align 64
  %743 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %744 = getelementptr inbounds i8, ptr %743, i64 -4
  %745 = load i32, ptr %744, align 1
  %746 = xor i64 %741, %737
  %747 = zext i32 %745 to i64
  %748 = zext i32 %742 to i64
  %749 = shl nuw i64 %748, 32
  %750 = or disjoint i64 %749, %747
  %751 = xor i64 %746, %750
  %752 = tail call i64 @llvm.fshl.i64(i64 %751, i64 %751, i64 49)
  %753 = tail call i64 @llvm.fshl.i64(i64 %751, i64 %751, i64 24)
  %754 = xor i64 %753, %752
  %755 = xor i64 %754, %751
  %756 = mul i64 %755, -6939452855193903323
  %757 = lshr i64 %756, 35
  %758 = add nuw nsw i64 %757, %127
  %759 = xor i64 %758, %756
  %760 = mul i64 %759, -6939452855193903323
  %761 = lshr i64 %760, 28
  %762 = xor i64 %761, %760
  br label %1264

763:                                              ; preds = %731
  %764 = icmp eq i64 %127, 0
  br i1 %764, label %772, label %765

765:                                              ; preds = %763
  %766 = load i32, ptr %130, align 1
  %767 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %768 = getelementptr i8, ptr %126, i64 4
  %769 = select i1 %128, ptr %767, ptr %768
  %770 = load i32, ptr %769, align 1
  %771 = call fastcc i64 @XXH3_len_1to3_64b(ptr noundef nonnull readonly %132, i64 noundef range(i64 0, 17) %127, i32 %766, i32 %770, i64 noundef 0) #10
  br label %1264

772:                                              ; preds = %763
  br i1 %128, label %773, label %777

773:                                              ; preds = %772
  %774 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %775 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %776 = load i64, ptr %775, align 8
  br label %781

777:                                              ; preds = %772
  %778 = getelementptr inbounds nuw i8, ptr %126, i64 56
  %779 = load i64, ptr %778, align 1
  %780 = getelementptr inbounds nuw i8, ptr %126, i64 64
  br label %781

781:                                              ; preds = %253, %777, %773
  %782 = phi i64 [ %776, %773 ], [ %779, %777 ], [ 5487137525590930912, %253 ]
  %783 = phi ptr [ %774, %773 ], [ %780, %777 ], [ getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), %253 ]
  %784 = load i64, ptr %783, align 1
  %785 = xor i64 %784, %782
  %786 = lshr i64 %785, 33
  %787 = xor i64 %786, %785
  %788 = mul i64 %787, -4417276706812531889
  %789 = lshr i64 %788, 29
  %790 = xor i64 %789, %788
  %791 = mul i64 %790, 1609587929392839161
  %792 = lshr i64 %791, 32
  %793 = xor i64 %792, %791
  br label %1264

794:                                              ; preds = %687
  %795 = icmp samesign ult i64 %127, 129
  %796 = mul i64 %127, -7046029288634856825
  br i1 %795, label %797, label %983

797:                                              ; preds = %794
  %798 = icmp samesign ugt i64 %127, 32
  br i1 %798, label %799, label %937

799:                                              ; preds = %797
  %800 = icmp samesign ugt i64 %127, 64
  br i1 %800, label %801, label %892

801:                                              ; preds = %799
  %802 = icmp samesign ugt i64 %127, 96
  br i1 %802, label %803, label %847

803:                                              ; preds = %801
  %804 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %805 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %806 = getelementptr inbounds nuw i8, ptr %126, i64 96
  %807 = select i1 %128, ptr %805, ptr %806
  %808 = load i64, ptr %804, align 16
  %809 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %810 = load i64, ptr %809, align 8
  %811 = load i64, ptr %807, align 1
  %812 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %813 = getelementptr i8, ptr %126, i64 104
  %814 = select i1 %128, ptr %812, ptr %813
  %815 = load i64, ptr %814, align 1
  %816 = xor i64 %811, %808
  %817 = xor i64 %815, %810
  %818 = zext i64 %816 to i128
  %819 = zext i64 %817 to i128
  %820 = mul nuw i128 %819, %818
  %821 = lshr i128 %820, 64
  %822 = xor i128 %821, %820
  %823 = trunc i128 %822 to i64
  %824 = add i64 %796, %823
  %825 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %826 = getelementptr inbounds i8, ptr %825, i64 -64
  %827 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %828 = getelementptr inbounds nuw i8, ptr %126, i64 112
  %829 = select i1 %128, ptr %827, ptr %828
  %830 = load i64, ptr %826, align 1
  %831 = getelementptr i8, ptr %825, i64 -56
  %832 = load i64, ptr %831, align 1
  %833 = load i64, ptr %829, align 1
  %834 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %835 = getelementptr i8, ptr %126, i64 120
  %836 = select i1 %128, ptr %834, ptr %835
  %837 = load i64, ptr %836, align 1
  %838 = xor i64 %833, %830
  %839 = xor i64 %837, %832
  %840 = zext i64 %838 to i128
  %841 = zext i64 %839 to i128
  %842 = mul nuw i128 %841, %840
  %843 = lshr i128 %842, 64
  %844 = xor i128 %843, %842
  %845 = trunc i128 %844 to i64
  %846 = add i64 %824, %845
  br label %847

847:                                              ; preds = %803, %801
  %848 = phi i64 [ %846, %803 ], [ %796, %801 ]
  %849 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %850 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %851 = getelementptr inbounds nuw i8, ptr %126, i64 64
  %852 = select i1 %128, ptr %850, ptr %851
  %853 = load i64, ptr %849, align 32
  %854 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %855 = load i64, ptr %854, align 8
  %856 = load i64, ptr %852, align 1
  %857 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %858 = getelementptr i8, ptr %126, i64 72
  %859 = select i1 %128, ptr %857, ptr %858
  %860 = load i64, ptr %859, align 1
  %861 = xor i64 %856, %853
  %862 = xor i64 %860, %855
  %863 = zext i64 %861 to i128
  %864 = zext i64 %862 to i128
  %865 = mul nuw i128 %864, %863
  %866 = lshr i128 %865, 64
  %867 = xor i128 %866, %865
  %868 = trunc i128 %867 to i64
  %869 = add i64 %848, %868
  %870 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %871 = getelementptr inbounds i8, ptr %870, i64 -48
  %872 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %873 = getelementptr inbounds nuw i8, ptr %126, i64 80
  %874 = select i1 %128, ptr %872, ptr %873
  %875 = load i64, ptr %871, align 1
  %876 = getelementptr i8, ptr %870, i64 -40
  %877 = load i64, ptr %876, align 1
  %878 = load i64, ptr %874, align 1
  %879 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %880 = getelementptr i8, ptr %126, i64 88
  %881 = select i1 %128, ptr %879, ptr %880
  %882 = load i64, ptr %881, align 1
  %883 = xor i64 %878, %875
  %884 = xor i64 %882, %877
  %885 = zext i64 %883 to i128
  %886 = zext i64 %884 to i128
  %887 = mul nuw i128 %886, %885
  %888 = lshr i128 %887, 64
  %889 = xor i128 %888, %887
  %890 = trunc i128 %889 to i64
  %891 = add i64 %869, %890
  br label %892

892:                                              ; preds = %847, %799
  %893 = phi i64 [ %891, %847 ], [ %796, %799 ]
  %894 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %895 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %896 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %897 = select i1 %128, ptr %895, ptr %896
  %898 = load i64, ptr %894, align 16
  %899 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %900 = load i64, ptr %899, align 8
  %901 = load i64, ptr %897, align 1
  %902 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %903 = getelementptr i8, ptr %126, i64 40
  %904 = select i1 %128, ptr %902, ptr %903
  %905 = load i64, ptr %904, align 1
  %906 = xor i64 %901, %898
  %907 = xor i64 %905, %900
  %908 = zext i64 %906 to i128
  %909 = zext i64 %907 to i128
  %910 = mul nuw i128 %909, %908
  %911 = lshr i128 %910, 64
  %912 = xor i128 %911, %910
  %913 = trunc i128 %912 to i64
  %914 = add i64 %893, %913
  %915 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %916 = getelementptr inbounds i8, ptr %915, i64 -32
  %917 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %918 = getelementptr inbounds nuw i8, ptr %126, i64 48
  %919 = select i1 %128, ptr %917, ptr %918
  %920 = load i64, ptr %916, align 1
  %921 = getelementptr i8, ptr %915, i64 -24
  %922 = load i64, ptr %921, align 1
  %923 = load i64, ptr %919, align 1
  %924 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %925 = getelementptr i8, ptr %126, i64 56
  %926 = select i1 %128, ptr %924, ptr %925
  %927 = load i64, ptr %926, align 1
  %928 = xor i64 %923, %920
  %929 = xor i64 %927, %922
  %930 = zext i64 %928 to i128
  %931 = zext i64 %929 to i128
  %932 = mul nuw i128 %931, %930
  %933 = lshr i128 %932, 64
  %934 = xor i128 %933, %932
  %935 = trunc i128 %934 to i64
  %936 = add i64 %914, %935
  br label %937

937:                                              ; preds = %892, %797
  %938 = phi i64 [ %936, %892 ], [ %796, %797 ]
  %939 = load i64, ptr %132, align 64
  %940 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %941 = load i64, ptr %940, align 8
  %942 = load i64, ptr %130, align 1
  %943 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %944 = getelementptr i8, ptr %126, i64 8
  %945 = select i1 %128, ptr %943, ptr %944
  %946 = load i64, ptr %945, align 1
  %947 = xor i64 %942, %939
  %948 = xor i64 %946, %941
  %949 = zext i64 %947 to i128
  %950 = zext i64 %948 to i128
  %951 = mul nuw i128 %950, %949
  %952 = lshr i128 %951, 64
  %953 = xor i128 %952, %951
  %954 = trunc i128 %953 to i64
  %955 = add i64 %938, %954
  %956 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %957 = getelementptr inbounds i8, ptr %956, i64 -16
  %958 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %959 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %960 = select i1 %128, ptr %958, ptr %959
  %961 = load i64, ptr %957, align 1
  %962 = getelementptr i8, ptr %956, i64 -8
  %963 = load i64, ptr %962, align 1
  %964 = load i64, ptr %960, align 1
  %965 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %966 = getelementptr i8, ptr %126, i64 24
  %967 = select i1 %128, ptr %965, ptr %966
  %968 = load i64, ptr %967, align 1
  %969 = xor i64 %964, %961
  %970 = xor i64 %968, %963
  %971 = zext i64 %969 to i128
  %972 = zext i64 %970 to i128
  %973 = mul nuw i128 %972, %971
  %974 = lshr i128 %973, 64
  %975 = xor i128 %974, %973
  %976 = trunc i128 %975 to i64
  %977 = add i64 %955, %976
  %978 = lshr i64 %977, 37
  %979 = xor i64 %978, %977
  %980 = mul i64 %979, 1609587791953885689
  %981 = lshr i64 %980, 32
  %982 = xor i64 %981, %980
  br label %1264

983:                                              ; preds = %794
  %984 = trunc nuw nsw i64 %127 to i32
  %985 = load i64, ptr %132, align 64
  %986 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %987 = load i64, ptr %986, align 8
  %988 = load i64, ptr %130, align 1
  %989 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %990 = getelementptr i8, ptr %126, i64 8
  %991 = select i1 %128, ptr %989, ptr %990
  %992 = load i64, ptr %991, align 1
  %993 = xor i64 %988, %985
  %994 = xor i64 %992, %987
  %995 = zext i64 %993 to i128
  %996 = zext i64 %994 to i128
  %997 = mul nuw i128 %996, %995
  %998 = lshr i128 %997, 64
  %999 = xor i128 %998, %997
  %1000 = trunc i128 %999 to i64
  %1001 = add i64 %796, %1000
  %1002 = getelementptr inbounds nuw i8, ptr %3, i64 272
  %1003 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %1004 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %1005 = select i1 %128, ptr %1003, ptr %1004
  %1006 = load i64, ptr %1002, align 16
  %1007 = getelementptr inbounds nuw i8, ptr %3, i64 280
  %1008 = load i64, ptr %1007, align 8
  %1009 = load i64, ptr %1005, align 1
  %1010 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %1011 = getelementptr i8, ptr %126, i64 24
  %1012 = select i1 %128, ptr %1010, ptr %1011
  %1013 = load i64, ptr %1012, align 1
  %1014 = xor i64 %1009, %1006
  %1015 = xor i64 %1013, %1008
  %1016 = zext i64 %1014 to i128
  %1017 = zext i64 %1015 to i128
  %1018 = mul nuw i128 %1017, %1016
  %1019 = lshr i128 %1018, 64
  %1020 = xor i128 %1019, %1018
  %1021 = trunc i128 %1020 to i64
  %1022 = add i64 %1001, %1021
  %1023 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %1024 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %1025 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %1026 = select i1 %128, ptr %1024, ptr %1025
  %1027 = load i64, ptr %1023, align 32
  %1028 = getelementptr inbounds nuw i8, ptr %3, i64 296
  %1029 = load i64, ptr %1028, align 8
  %1030 = load i64, ptr %1026, align 1
  %1031 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %1032 = getelementptr i8, ptr %126, i64 40
  %1033 = select i1 %128, ptr %1031, ptr %1032
  %1034 = load i64, ptr %1033, align 1
  %1035 = xor i64 %1030, %1027
  %1036 = xor i64 %1034, %1029
  %1037 = zext i64 %1035 to i128
  %1038 = zext i64 %1036 to i128
  %1039 = mul nuw i128 %1038, %1037
  %1040 = lshr i128 %1039, 64
  %1041 = xor i128 %1040, %1039
  %1042 = trunc i128 %1041 to i64
  %1043 = add i64 %1022, %1042
  %1044 = getelementptr inbounds nuw i8, ptr %3, i64 304
  %1045 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %1046 = getelementptr inbounds nuw i8, ptr %126, i64 48
  %1047 = select i1 %128, ptr %1045, ptr %1046
  %1048 = load i64, ptr %1044, align 16
  %1049 = getelementptr inbounds nuw i8, ptr %3, i64 312
  %1050 = load i64, ptr %1049, align 8
  %1051 = load i64, ptr %1047, align 1
  %1052 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %1053 = getelementptr i8, ptr %126, i64 56
  %1054 = select i1 %128, ptr %1052, ptr %1053
  %1055 = load i64, ptr %1054, align 1
  %1056 = xor i64 %1051, %1048
  %1057 = xor i64 %1055, %1050
  %1058 = zext i64 %1056 to i128
  %1059 = zext i64 %1057 to i128
  %1060 = mul nuw i128 %1059, %1058
  %1061 = lshr i128 %1060, 64
  %1062 = xor i128 %1061, %1060
  %1063 = trunc i128 %1062 to i64
  %1064 = add i64 %1043, %1063
  %1065 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %1066 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %1067 = getelementptr inbounds nuw i8, ptr %126, i64 64
  %1068 = select i1 %128, ptr %1066, ptr %1067
  %1069 = load i64, ptr %1065, align 64
  %1070 = getelementptr inbounds nuw i8, ptr %3, i64 328
  %1071 = load i64, ptr %1070, align 8
  %1072 = load i64, ptr %1068, align 1
  %1073 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %1074 = getelementptr i8, ptr %126, i64 72
  %1075 = select i1 %128, ptr %1073, ptr %1074
  %1076 = load i64, ptr %1075, align 1
  %1077 = xor i64 %1072, %1069
  %1078 = xor i64 %1076, %1071
  %1079 = zext i64 %1077 to i128
  %1080 = zext i64 %1078 to i128
  %1081 = mul nuw i128 %1080, %1079
  %1082 = lshr i128 %1081, 64
  %1083 = xor i128 %1082, %1081
  %1084 = trunc i128 %1083 to i64
  %1085 = add i64 %1064, %1084
  %1086 = getelementptr inbounds nuw i8, ptr %3, i64 336
  %1087 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %1088 = getelementptr inbounds nuw i8, ptr %126, i64 80
  %1089 = select i1 %128, ptr %1087, ptr %1088
  %1090 = load i64, ptr %1086, align 16
  %1091 = getelementptr inbounds nuw i8, ptr %3, i64 344
  %1092 = load i64, ptr %1091, align 8
  %1093 = load i64, ptr %1089, align 1
  %1094 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %1095 = getelementptr i8, ptr %126, i64 88
  %1096 = select i1 %128, ptr %1094, ptr %1095
  %1097 = load i64, ptr %1096, align 1
  %1098 = xor i64 %1093, %1090
  %1099 = xor i64 %1097, %1092
  %1100 = zext i64 %1098 to i128
  %1101 = zext i64 %1099 to i128
  %1102 = mul nuw i128 %1101, %1100
  %1103 = lshr i128 %1102, 64
  %1104 = xor i128 %1103, %1102
  %1105 = trunc i128 %1104 to i64
  %1106 = add i64 %1085, %1105
  %1107 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %1108 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %1109 = getelementptr inbounds nuw i8, ptr %126, i64 96
  %1110 = select i1 %128, ptr %1108, ptr %1109
  %1111 = load i64, ptr %1107, align 32
  %1112 = getelementptr inbounds nuw i8, ptr %3, i64 360
  %1113 = load i64, ptr %1112, align 8
  %1114 = load i64, ptr %1110, align 1
  %1115 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %1116 = getelementptr i8, ptr %126, i64 104
  %1117 = select i1 %128, ptr %1115, ptr %1116
  %1118 = load i64, ptr %1117, align 1
  %1119 = xor i64 %1114, %1111
  %1120 = xor i64 %1118, %1113
  %1121 = zext i64 %1119 to i128
  %1122 = zext i64 %1120 to i128
  %1123 = mul nuw i128 %1122, %1121
  %1124 = lshr i128 %1123, 64
  %1125 = xor i128 %1124, %1123
  %1126 = trunc i128 %1125 to i64
  %1127 = add i64 %1106, %1126
  %1128 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %1129 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %1130 = getelementptr inbounds nuw i8, ptr %126, i64 112
  %1131 = select i1 %128, ptr %1129, ptr %1130
  %1132 = load i64, ptr %1128, align 16
  %1133 = getelementptr inbounds nuw i8, ptr %3, i64 376
  %1134 = load i64, ptr %1133, align 8
  %1135 = load i64, ptr %1131, align 1
  %1136 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %1137 = getelementptr i8, ptr %126, i64 120
  %1138 = select i1 %128, ptr %1136, ptr %1137
  %1139 = load i64, ptr %1138, align 1
  %1140 = xor i64 %1135, %1132
  %1141 = xor i64 %1139, %1134
  %1142 = zext i64 %1140 to i128
  %1143 = zext i64 %1141 to i128
  %1144 = mul nuw i128 %1143, %1142
  %1145 = lshr i128 %1144, 64
  %1146 = xor i128 %1145, %1144
  %1147 = trunc i128 %1146 to i64
  %1148 = add i64 %1127, %1147
  %1149 = lshr i32 %984, 4
  %1150 = lshr i64 %1148, 37
  %1151 = xor i64 %1150, %1148
  %1152 = mul i64 %1151, 1609587791953885689
  %1153 = lshr i64 %1152, 32
  %1154 = xor i64 %1153, %1152
  %1155 = icmp eq i32 %1149, 8
  br i1 %1155, label %1235, label %1156

1156:                                             ; preds = %983
  %1157 = zext nneg i32 %1149 to i64
  %1158 = and i64 %1157, 1
  %1159 = icmp eq i32 %1149, 9
  br i1 %1159, label %1211, label %1160

1160:                                             ; preds = %1156
  %1161 = and i64 %1157, 14
  %1162 = add nsw i64 %1161, -10
  br label %1163

1163:                                             ; preds = %1163, %1160
  %1164 = phi i64 [ 8, %1160 ], [ %1206, %1163 ]
  %1165 = phi i64 [ %1154, %1160 ], [ %1205, %1163 ]
  %1166 = phi i64 [ 0, %1160 ], [ %1207, %1163 ]
  %1167 = shl nsw i64 %1164, 4
  %1168 = getelementptr inbounds nuw i8, ptr %132, i64 %1167
  %1169 = getelementptr i8, ptr %130, i64 %1167
  %1170 = getelementptr i8, ptr %1169, i64 -125
  %1171 = load i64, ptr %1168, align 32
  %1172 = getelementptr i8, ptr %1168, i64 8
  %1173 = load i64, ptr %1172, align 8
  %1174 = load i64, ptr %1170, align 1
  %1175 = getelementptr i8, ptr %1169, i64 -117
  %1176 = load i64, ptr %1175, align 1
  %1177 = xor i64 %1174, %1171
  %1178 = xor i64 %1176, %1173
  %1179 = zext i64 %1177 to i128
  %1180 = zext i64 %1178 to i128
  %1181 = mul nuw i128 %1180, %1179
  %1182 = lshr i128 %1181, 64
  %1183 = xor i128 %1182, %1181
  %1184 = trunc i128 %1183 to i64
  %1185 = add i64 %1165, %1184
  %1186 = shl i64 %1164, 4
  %1187 = or disjoint i64 %1186, 16
  %1188 = getelementptr inbounds nuw i8, ptr %132, i64 %1187
  %1189 = getelementptr i8, ptr %130, i64 %1187
  %1190 = getelementptr i8, ptr %1189, i64 -125
  %1191 = load i64, ptr %1188, align 16
  %1192 = getelementptr i8, ptr %1188, i64 8
  %1193 = load i64, ptr %1192, align 8
  %1194 = load i64, ptr %1190, align 1
  %1195 = getelementptr i8, ptr %1189, i64 -117
  %1196 = load i64, ptr %1195, align 1
  %1197 = xor i64 %1194, %1191
  %1198 = xor i64 %1196, %1193
  %1199 = zext i64 %1197 to i128
  %1200 = zext i64 %1198 to i128
  %1201 = mul nuw i128 %1200, %1199
  %1202 = lshr i128 %1201, 64
  %1203 = xor i128 %1202, %1201
  %1204 = trunc i128 %1203 to i64
  %1205 = add i64 %1185, %1204
  %1206 = add nuw nsw i64 %1164, 2
  %1207 = add i64 %1166, 2
  %1208 = icmp eq i64 %1166, %1162
  br i1 %1208, label %1209, label %1163

1209:                                             ; preds = %1163
  %1210 = shl nsw i64 %1206, 4
  br label %1211

1211:                                             ; preds = %1209, %1156
  %1212 = phi i64 [ poison, %1156 ], [ %1205, %1209 ]
  %1213 = phi i64 [ 128, %1156 ], [ %1210, %1209 ]
  %1214 = phi i64 [ %1154, %1156 ], [ %1205, %1209 ]
  %1215 = icmp eq i64 %1158, 0
  br i1 %1215, label %1235, label %1216

1216:                                             ; preds = %1211
  %1217 = getelementptr inbounds nuw i8, ptr %132, i64 %1213
  %1218 = getelementptr i8, ptr %130, i64 %1213
  %1219 = getelementptr i8, ptr %1218, i64 -125
  %1220 = load i64, ptr %1217, align 16
  %1221 = getelementptr i8, ptr %1217, i64 8
  %1222 = load i64, ptr %1221, align 8
  %1223 = load i64, ptr %1219, align 1
  %1224 = getelementptr i8, ptr %1218, i64 -117
  %1225 = load i64, ptr %1224, align 1
  %1226 = xor i64 %1223, %1220
  %1227 = xor i64 %1225, %1222
  %1228 = zext i64 %1226 to i128
  %1229 = zext i64 %1227 to i128
  %1230 = mul nuw i128 %1229, %1228
  %1231 = lshr i128 %1230, 64
  %1232 = xor i128 %1231, %1230
  %1233 = trunc i128 %1232 to i64
  %1234 = add i64 %1214, %1233
  br label %1235

1235:                                             ; preds = %1216, %1211, %983
  %1236 = phi i64 [ %1154, %983 ], [ %1212, %1211 ], [ %1234, %1216 ]
  %1237 = getelementptr inbounds nuw i8, ptr %132, i64 %127
  %1238 = getelementptr inbounds i8, ptr %1237, i64 -16
  %1239 = getelementptr inbounds nuw i8, ptr %3, i64 183
  %1240 = getelementptr inbounds nuw i8, ptr %126, i64 119
  %1241 = select i1 %128, ptr %1239, ptr %1240
  %1242 = load i64, ptr %1238, align 1
  %1243 = getelementptr i8, ptr %1237, i64 -8
  %1244 = load i64, ptr %1243, align 1
  %1245 = load i64, ptr %1241, align 1
  %1246 = getelementptr inbounds nuw i8, ptr %3, i64 191
  %1247 = getelementptr i8, ptr %126, i64 127
  %1248 = select i1 %128, ptr %1246, ptr %1247
  %1249 = load i64, ptr %1248, align 1
  %1250 = xor i64 %1245, %1242
  %1251 = xor i64 %1249, %1244
  %1252 = zext i64 %1250 to i128
  %1253 = zext i64 %1251 to i128
  %1254 = mul nuw i128 %1253, %1252
  %1255 = lshr i128 %1254, 64
  %1256 = xor i128 %1255, %1254
  %1257 = trunc i128 %1256 to i64
  %1258 = add i64 %1236, %1257
  %1259 = lshr i64 %1258, 37
  %1260 = xor i64 %1259, %1258
  %1261 = mul i64 %1260, 1609587791953885689
  %1262 = lshr i64 %1261, 32
  %1263 = xor i64 %1262, %1261
  br label %1264

1264:                                             ; preds = %133, %264, %290, %294, %296, %414, %664, %691, %733, %765, %781, %937, %1235
  %1265 = phi i64 [ %248, %133 ], [ %450, %414 ], [ %686, %664 ], [ %287, %264 ], [ %291, %290 ], [ %295, %294 ], [ %306, %296 ], [ %982, %937 ], [ %1263, %1235 ], [ %730, %691 ], [ %762, %733 ], [ %771, %765 ], [ %793, %781 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #9
  ret i64 %1265
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 4, 9) %1, i64 %2, i64 %3, i64 noundef %4) unnamed_addr #5 {
  %6 = trunc i64 %4 to i32
  %7 = tail call noundef i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = xor i64 %9, %4
  %11 = load i32, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = xor i64 %3, %2
  %16 = sub i64 %15, %10
  %17 = zext i32 %14 to i64
  %18 = zext i32 %11 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or disjoint i64 %19, %17
  %21 = xor i64 %20, %16
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 49)
  %23 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 24)
  %24 = xor i64 %22, %23
  %25 = xor i64 %24, %21
  %26 = mul i64 %25, -6939452855193903323
  %27 = lshr i64 %26, 35
  %28 = add nuw nsw i64 %27, %1
  %29 = xor i64 %28, %26
  %30 = mul i64 %29, -6939452855193903323
  %31 = lshr i64 %30, 28
  %32 = xor i64 %31, %30
  ret i64 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_1to3_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 1, 4) %1, i32 %2, i32 %3, i64 noundef %4) unnamed_addr #5 {
  %6 = load i8, ptr %0, align 1
  %7 = lshr i64 %1, 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i64 %1
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %6 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = zext i8 %9 to i64
  %16 = shl nuw nsw i64 %15, 24
  %17 = or disjoint i64 %16, %14
  %18 = zext i8 %12 to i64
  %19 = or disjoint i64 %17, %18
  %20 = shl nuw nsw i64 %1, 8
  %21 = or disjoint i64 %19, %20
  %22 = xor i32 %3, %2
  %23 = zext i32 %22 to i64
  %24 = add i64 %4, %23
  %25 = xor i64 %21, %24
  %26 = lshr i64 %25, 33
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, -4417276706812531889
  %29 = lshr i64 %28, 29
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, 1609587929392839161
  %32 = lshr i64 %31, 32
  %33 = xor i64 %32, %31
  ret i64 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!18 = distinct !{!18, !19, !"XXH3_accumulate: argument 0"}
!19 = distinct !{!19, !"XXH3_accumulate"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"XXH3_accumulate: argument 1"}
!22 = !{!23, !18, !11, !6}
!23 = distinct !{!23, !24, !"XXH3_accumulate_512_avx2: argument 0"}
!24 = distinct !{!24, !"XXH3_accumulate_512_avx2"}
!25 = !{!26, !27, !21, !28, !14, !16, !29, !9}
!26 = distinct !{!26, !24, !"XXH3_accumulate_512_avx2: argument 1"}
!27 = distinct !{!27, !24, !"XXH3_accumulate_512_avx2: argument 2"}
!28 = distinct !{!28, !19, !"XXH3_accumulate: argument 2"}
!29 = distinct !{!29, !12, !"XXH3_consumeStripes: argument 3"}
!30 = !{!18, !28, !11, !14, !29}
!31 = !{!23}
!32 = !{!26}
!33 = !{!26, !21, !16, !9}
!34 = !{!23, !27, !18, !28, !11, !14, !29, !6}
!35 = !{!36, !21, !16, !9}
!36 = distinct !{!36, !24, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!37 = !{!38, !39, !18, !28, !11, !14, !29, !6}
!38 = distinct !{!38, !24, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!39 = distinct !{!39, !24, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!40 = !{!41, !21, !16, !9}
!41 = distinct !{!41, !24, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!42 = !{!43, !44, !18, !28, !11, !14, !29, !6}
!43 = distinct !{!43, !24, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!44 = distinct !{!44, !24, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!45 = !{!46, !21, !16, !9}
!46 = distinct !{!46, !24, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!47 = !{!48, !49, !18, !28, !11, !14, !29, !6}
!48 = distinct !{!48, !24, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!49 = distinct !{!49, !24, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!50 = !{!14, !6}
!51 = !{!11, !16, !29, !9}
!52 = !{!6, !9}
!53 = !{!54}
!54 = distinct !{!54, !55, !"XXH3_accumulate_512_avx2: argument 1"}
!55 = distinct !{!55, !"XXH3_accumulate_512_avx2"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"XXH3_accumulate_512_avx2: argument 2"}
!58 = !{!59, !57}
!59 = distinct !{!59, !55, !"XXH3_accumulate_512_avx2: argument 0"}
!60 = !{!59, !54}
!61 = !{!62}
!62 = distinct !{!62, !63, !"XXH3_mergeAccs: argument 1"}
!63 = distinct !{!63, !"XXH3_mergeAccs"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"XXH3_mergeAccs: argument 0"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_64bits_internal: argument 0"}
!68 = distinct !{!68, !"XXH3_64bits_internal"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"XXH3_64bits_internal: argument 1"}
!71 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!72 = !{!73, !67}
!73 = distinct !{!73, !74, !"XXH3_len_17to128_64b: argument 0"}
!74 = distinct !{!74, !"XXH3_len_17to128_64b"}
!75 = !{!76, !70}
!76 = distinct !{!76, !74, !"XXH3_len_17to128_64b: argument 1"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"XXH3_len_129to240_64b: argument 0"}
!79 = distinct !{!79, !"XXH3_len_129to240_64b"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"XXH3_len_129to240_64b: argument 1"}
!82 = !{!78, !67}
!83 = !{!81, !70}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_64bits_internal: argument 0"}
!88 = distinct !{!88, !"XXH3_64bits_internal"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"XXH3_64bits_internal: argument 1"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"XXH3_len_17to128_64b: argument 0"}
!93 = distinct !{!93, !"XXH3_len_17to128_64b"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"XXH3_len_17to128_64b: argument 1"}
!96 = !{!92, !87}
!97 = !{!95, !90}
!98 = !{!99}
!99 = distinct !{!99, !100, !"XXH3_len_129to240_64b: argument 0"}
!100 = distinct !{!100, !"XXH3_len_129to240_64b"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"XXH3_len_129to240_64b: argument 1"}
!103 = !{!99, !87}
!104 = !{!102, !90}
