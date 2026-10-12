; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local void @target_128_100_200(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca <4 x i64>, align 32
  %5 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %5, i8 0, i64 576, i1 false)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %5, align 64
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %12, align 32
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 552
  store i64 0, ptr %16, align 8
  br label %49

17:                                               ; preds = %3
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 552
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1)
  %20 = sub i64 0, %1
  %21 = insertelement <4 x i64> poison, i64 %1, i64 0
  %22 = insertelement <4 x i64> %21, i64 %20, i64 1
  %23 = insertelement <4 x i64> %22, i64 %1, i64 2
  %24 = insertelement <4 x i64> %23, i64 %20, i64 3
  %25 = freeze ptr %19
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 31
  %28 = icmp eq i64 %27, 0
  call void @llvm.assume(i1 %28)
  %29 = add <4 x i64> %24, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %29, ptr %25, align 32
  %30 = add <4 x i64> %24, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 32
  store <4 x i64> %30, ptr %31, align 32
  %32 = add <4 x i64> %24, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 64
  store <4 x i64> %32, ptr %33, align 32
  %34 = add <4 x i64> %24, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 96
  store <4 x i64> %34, ptr %35, align 32
  %36 = add <4 x i64> %24, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 128
  store <4 x i64> %36, ptr %37, align 32
  %38 = add <4 x i64> %24, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %39 = getelementptr inbounds nuw i8, ptr %25, i64 160
  store <4 x i64> %38, ptr %39, align 32
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %5, align 64
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %42, align 16
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %44, align 32
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %47, align 8
  store i64 %1, ptr %18, align 8
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 516
  store i32 1, ptr %48, align 4
  br label %49

49:                                               ; preds = %7, %17
  %50 = phi ptr [ null, %17 ], [ @XXH3_kSecret, %7 ]
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 568
  store ptr %50, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 544
  store i64 128, ptr %52, align 32
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 536
  store i64 16, ptr %53, align 8
  %54 = icmp ne ptr %0, null
  call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 528
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %57, ptr noundef nonnull align 1 dereferenceable(100) %0, i64 range(i64 100, 201) 100, i1 false)
  store i32 100, ptr %56, align 64
  store i64 300, ptr %55, align 16
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %59 = load <4 x i64>, ptr %5, align 64
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %61 = load <4 x i64>, ptr %60, align 32
  %62 = getelementptr inbounds nuw i8, ptr %5, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %62, ptr noundef nonnull align 1 dereferenceable(156) %58, i64 156, i1 false)
  %63 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %65 = select i1 %6, ptr %50, ptr %64
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %66, i32 0, i32 3, i32 1)
  %67 = load <4 x i64>, ptr %63, align 64
  %68 = load <4 x i64>, ptr %65, align 64
  %69 = xor <4 x i64> %68, %67
  %70 = lshr <4 x i64> %69, splat (i64 32)
  %71 = and <4 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, %70
  %73 = shufflevector <4 x i64> %67, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %74 = add <4 x i64> %59, %73
  %75 = add <4 x i64> %74, %72
  %76 = getelementptr inbounds nuw i8, ptr %5, i64 288
  %77 = load <4 x i64>, ptr %76, align 32
  %78 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %79 = getelementptr inbounds nuw i8, ptr %5, i64 96
  %80 = select i1 %6, ptr %78, ptr %79
  %81 = load <4 x i64>, ptr %80, align 32
  %82 = xor <4 x i64> %81, %77
  %83 = lshr <4 x i64> %82, splat (i64 32)
  %84 = and <4 x i64> %82, splat (i64 4294967295)
  %85 = mul nuw <4 x i64> %84, %83
  %86 = shufflevector <4 x i64> %77, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %87 = add <4 x i64> %61, %86
  %88 = add <4 x i64> %87, %85
  %89 = getelementptr inbounds nuw i8, ptr %5, i64 320
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %90, i32 0, i32 3, i32 1)
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %92 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %93 = select i1 %6, ptr %91, ptr %92
  %94 = load <4 x i64>, ptr %89, align 64
  %95 = load <4 x i64>, ptr %93, align 8
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %75, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %5, i64 352
  %104 = load <4 x i64>, ptr %103, align 32
  %105 = getelementptr inbounds nuw i8, ptr %50, i64 40
  %106 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %107 = select i1 %6, ptr %105, ptr %106
  %108 = load <4 x i64>, ptr %107, align 8
  %109 = xor <4 x i64> %108, %104
  %110 = lshr <4 x i64> %109, splat (i64 32)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %88, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %5, i64 384
  %117 = getelementptr inbounds nuw i8, ptr %5, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %117, i32 0, i32 3, i32 1)
  %118 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %119 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %120 = select i1 %6, ptr %118, ptr %119
  %121 = load <4 x i64>, ptr %116, align 64
  %122 = load <4 x i64>, ptr %120, align 16
  %123 = xor <4 x i64> %122, %121
  %124 = lshr <4 x i64> %123, splat (i64 32)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %121, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %102, %127
  %129 = add <4 x i64> %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %5, i64 416
  %131 = load <4 x i64>, ptr %130, align 32
  %132 = getelementptr inbounds nuw i8, ptr %50, i64 48
  %133 = getelementptr inbounds nuw i8, ptr %5, i64 112
  %134 = select i1 %6, ptr %132, ptr %133
  %135 = load <4 x i64>, ptr %134, align 16
  %136 = xor <4 x i64> %135, %131
  %137 = lshr <4 x i64> %136, splat (i64 32)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = add <4 x i64> %115, %140
  %142 = add <4 x i64> %141, %139
  %143 = getelementptr inbounds nuw i8, ptr %5, i64 448
  %144 = getelementptr inbounds nuw i8, ptr %5, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %144, i32 0, i32 3, i32 1)
  %145 = getelementptr inbounds nuw i8, ptr %50, i64 24
  %146 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %147 = select i1 %6, ptr %145, ptr %146
  %148 = load <4 x i64>, ptr %143, align 64
  %149 = load <4 x i64>, ptr %147, align 8
  %150 = xor <4 x i64> %149, %148
  %151 = lshr <4 x i64> %150, splat (i64 32)
  %152 = and <4 x i64> %150, splat (i64 4294967295)
  %153 = mul nuw <4 x i64> %152, %151
  %154 = shufflevector <4 x i64> %148, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %155 = add <4 x i64> %129, %154
  %156 = add <4 x i64> %155, %153
  %157 = getelementptr inbounds nuw i8, ptr %5, i64 480
  %158 = load <4 x i64>, ptr %157, align 32
  %159 = getelementptr inbounds nuw i8, ptr %50, i64 56
  %160 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %161 = select i1 %6, ptr %159, ptr %160
  %162 = load <4 x i64>, ptr %161, align 8
  %163 = xor <4 x i64> %162, %158
  %164 = lshr <4 x i64> %163, splat (i64 32)
  %165 = and <4 x i64> %163, splat (i64 4294967295)
  %166 = mul nuw <4 x i64> %165, %164
  %167 = shufflevector <4 x i64> %158, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %168 = add <4 x i64> %142, %167
  %169 = add <4 x i64> %168, %166
  %170 = getelementptr inbounds nuw i8, ptr %5, i64 520
  store i64 4, ptr %170, align 8
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %63, ptr noundef nonnull align 1 dereferenceable(44) %171, i64 44, i1 false)
  store i32 44, ptr %56, align 64
  store <4 x i64> %156, ptr %5, align 64
  store <4 x i64> %169, ptr %60, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) %172, i64 20, i1 false)
  %173 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %173, ptr noundef nonnull align 1 dereferenceable(12) %171, i64 12, i1 false)
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %175 = load <4 x i64>, ptr %174, align 1
  %176 = load <4 x i64>, ptr %4, align 32
  %177 = getelementptr i8, ptr %50, i64 121
  %178 = getelementptr inbounds nuw i8, ptr %5, i64 185
  %179 = select i1 %6, ptr %177, ptr %178
  %180 = load <4 x i64>, ptr %179, align 1
  %181 = getelementptr i8, ptr %50, i64 153
  %182 = getelementptr inbounds nuw i8, ptr %5, i64 217
  %183 = select i1 %6, ptr %181, ptr %182
  %184 = load <4 x i64>, ptr %183, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  %185 = shufflevector <4 x i64> %176, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %186 = add <4 x i64> %156, %185
  %187 = xor <4 x i64> %180, %176
  %188 = and <4 x i64> %187, splat (i64 4294967295)
  %189 = lshr <4 x i64> %187, splat (i64 32)
  %190 = mul nuw <4 x i64> %188, %189
  %191 = add <4 x i64> %186, %190
  %192 = extractelement <4 x i64> %191, i64 3
  %193 = bitcast <4 x i64> %180 to i256
  %194 = lshr i256 %193, 160
  %195 = trunc i256 %194 to i64
  %196 = xor i64 %192, %195
  %197 = zext i64 %196 to i128
  %198 = extractelement <4 x i64> %191, i64 2
  %199 = lshr i256 %193, 96
  %200 = trunc i256 %199 to i64
  %201 = xor i64 %198, %200
  %202 = zext i64 %201 to i128
  %203 = mul nuw i128 %197, %202
  %204 = lshr i128 %203, 64
  %205 = xor i128 %204, %203
  %206 = trunc i128 %205 to i64
  %207 = add i64 %206, -2982561263328149653
  %208 = shufflevector <4 x i64> %175, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %209 = add <4 x i64> %169, %208
  %210 = xor <4 x i64> %184, %175
  %211 = and <4 x i64> %210, splat (i64 4294967295)
  %212 = lshr <4 x i64> %210, splat (i64 32)
  %213 = mul nuw <4 x i64> %211, %212
  %214 = add <4 x i64> %209, %213
  %215 = extractelement <4 x i64> %214, i64 3
  %216 = bitcast <4 x i64> %184 to i256
  %217 = lshr i256 %216, 160
  %218 = trunc i256 %217 to i64
  %219 = xor i64 %215, %218
  %220 = zext i64 %219 to i128
  %221 = extractelement <4 x i64> %214, i64 2
  %222 = lshr i256 %216, 96
  %223 = trunc i256 %222 to i64
  %224 = xor i64 %221, %223
  %225 = zext i64 %224 to i128
  %226 = mul nuw i128 %220, %225
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %207, %229
  %231 = getelementptr i8, ptr %50, i64 117
  %232 = getelementptr inbounds nuw i8, ptr %5, i64 181
  %233 = select i1 %6, ptr %231, ptr %232
  %234 = load i64, ptr %233, align 1
  %235 = extractelement <4 x i64> %191, i64 0
  %236 = xor i64 %234, %235
  %237 = zext i64 %236 to i128
  %238 = extractelement <4 x i64> %191, i64 1
  %239 = lshr i256 %193, 32
  %240 = trunc i256 %239 to i64
  %241 = xor i64 %238, %240
  %242 = zext i64 %241 to i128
  %243 = mul nuw i128 %237, %242
  %244 = lshr i128 %243, 64
  %245 = xor i128 %244, %243
  %246 = trunc i128 %245 to i64
  %247 = add i64 %230, %246
  %248 = getelementptr i8, ptr %50, i64 149
  %249 = getelementptr inbounds nuw i8, ptr %5, i64 213
  %250 = select i1 %6, ptr %248, ptr %249
  %251 = load i64, ptr %250, align 1
  %252 = extractelement <4 x i64> %214, i64 0
  %253 = xor i64 %251, %252
  %254 = zext i64 %253 to i128
  %255 = extractelement <4 x i64> %214, i64 1
  %256 = lshr i256 %216, 32
  %257 = trunc i256 %256 to i64
  %258 = xor i64 %255, %257
  %259 = zext i64 %258 to i128
  %260 = mul nuw i128 %254, %259
  %261 = lshr i128 %260, 64
  %262 = xor i128 %261, %260
  %263 = trunc i128 %262 to i64
  %264 = add i64 %247, %263
  %265 = lshr i64 %264, 37
  %266 = xor i64 %265, %264
  %267 = mul i64 %266, 1609587791953885689
  %268 = lshr i64 %267, 32
  %269 = xor i64 %268, %267
  %270 = getelementptr i8, ptr %50, i64 19
  %271 = getelementptr inbounds nuw i8, ptr %5, i64 83
  %272 = select i1 %6, ptr %270, ptr %271
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %273, %238
  %275 = zext i64 %274 to i128
  %276 = getelementptr inbounds nuw i8, ptr %50, i64 11
  %277 = getelementptr inbounds nuw i8, ptr %5, i64 75
  %278 = select i1 %6, ptr %276, ptr %277
  %279 = load i64, ptr %278, align 1
  %280 = xor i64 %235, %279
  %281 = zext i64 %280 to i128
  %282 = mul nuw i128 %275, %281
  %283 = lshr i128 %282, 64
  %284 = xor i128 %283, %282
  %285 = trunc i128 %284 to i64
  %286 = add i64 %285, 7566781886141388340
  %287 = getelementptr i8, ptr %50, i64 35
  %288 = getelementptr inbounds nuw i8, ptr %5, i64 99
  %289 = select i1 %6, ptr %287, ptr %288
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %192
  %292 = zext i64 %291 to i128
  %293 = getelementptr inbounds nuw i8, ptr %50, i64 27
  %294 = getelementptr inbounds nuw i8, ptr %5, i64 91
  %295 = select i1 %6, ptr %293, ptr %294
  %296 = load i64, ptr %295, align 1
  %297 = xor i64 %296, %198
  %298 = zext i64 %297 to i128
  %299 = mul nuw i128 %292, %298
  %300 = lshr i128 %299, 64
  %301 = xor i128 %300, %299
  %302 = trunc i128 %301 to i64
  %303 = add i64 %286, %302
  %304 = getelementptr i8, ptr %50, i64 51
  %305 = getelementptr inbounds nuw i8, ptr %5, i64 115
  %306 = select i1 %6, ptr %304, ptr %305
  %307 = load i64, ptr %306, align 1
  %308 = xor i64 %307, %255
  %309 = zext i64 %308 to i128
  %310 = getelementptr inbounds nuw i8, ptr %50, i64 43
  %311 = getelementptr inbounds nuw i8, ptr %5, i64 107
  %312 = select i1 %6, ptr %310, ptr %311
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %252
  %315 = zext i64 %314 to i128
  %316 = mul nuw i128 %309, %315
  %317 = lshr i128 %316, 64
  %318 = xor i128 %317, %316
  %319 = trunc i128 %318 to i64
  %320 = add i64 %303, %319
  %321 = getelementptr i8, ptr %50, i64 67
  %322 = getelementptr inbounds nuw i8, ptr %5, i64 131
  %323 = select i1 %6, ptr %321, ptr %322
  %324 = load i64, ptr %323, align 1
  %325 = xor i64 %324, %215
  %326 = zext i64 %325 to i128
  %327 = getelementptr inbounds nuw i8, ptr %50, i64 59
  %328 = getelementptr inbounds nuw i8, ptr %5, i64 123
  %329 = select i1 %6, ptr %327, ptr %328
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, %221
  %332 = zext i64 %331 to i128
  %333 = mul nuw i128 %326, %332
  %334 = lshr i128 %333, 64
  %335 = xor i128 %334, %333
  %336 = trunc i128 %335 to i64
  %337 = add i64 %320, %336
  %338 = lshr i64 %337, 37
  %339 = xor i64 %338, %337
  %340 = mul i64 %339, 1609587791953885689
  %341 = lshr i64 %340, 32
  %342 = xor i64 %341, %340
  store i64 %342, ptr %2, align 8
  %343 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %269, ptr %343, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2152149657}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_update: argument 1"}
!8 = distinct !{!8, !"XXH3_update"}
!9 = !{!10, !7}
!10 = distinct !{!10, !8, !"XXH3_update: argument 0"}
!11 = !{!10}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_update: argument 1"}
!14 = distinct !{!14, !"XXH3_update"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_update: argument 0"}
!17 = !{!16, !13}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_consumeStripes: argument 1"}
!20 = distinct !{!20, !"XXH3_consumeStripes"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"XXH3_consumeStripes: argument 2"}
!23 = !{!24}
!24 = distinct !{!24, !20, !"XXH3_consumeStripes: argument 3"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_accumulate_avx2: argument 1"}
!27 = distinct !{!27, !"XXH3_accumulate_avx2"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"XXH3_accumulate_avx2: argument 2"}
!30 = !{!29, !19, !24}
!31 = !{!32}
!32 = distinct !{!32, !33, !"XXH3_accumulate_512_avx2: argument 1"}
!33 = distinct !{!33, !"XXH3_accumulate_512_avx2"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"XXH3_accumulate_512_avx2: argument 2"}
!36 = !{!32, !26, !22, !16}
!37 = !{!38, !35, !39, !29, !40, !19, !24, !13}
!38 = distinct !{!38, !33, !"XXH3_accumulate_512_avx2: argument 0"}
!39 = distinct !{!39, !27, !"XXH3_accumulate_avx2: argument 0"}
!40 = distinct !{!40, !20, !"XXH3_consumeStripes: argument 0"}
!41 = !{!35, !29, !24}
!42 = !{!38, !32, !39, !26, !40, !19, !22}
!43 = !{!44}
!44 = distinct !{!44, !33, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!45 = !{!46}
!46 = distinct !{!46, !33, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!47 = !{!44, !26, !22, !16}
!48 = !{!38, !46, !39, !29, !40, !19, !24, !13}
!49 = !{!46, !29, !24}
!50 = !{!38, !44, !39, !26, !40, !19, !22}
!51 = !{!52}
!52 = distinct !{!52, !33, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!53 = !{!54}
!54 = distinct !{!54, !33, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!55 = !{!52, !26, !22, !16}
!56 = !{!38, !54, !39, !29, !40, !19, !24, !13}
!57 = !{!54, !29, !24}
!58 = !{!38, !52, !39, !26, !40, !19, !22}
!59 = !{!60}
!60 = distinct !{!60, !33, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!61 = !{!62}
!62 = distinct !{!62, !33, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!63 = !{!60, !26, !22, !16}
!64 = !{!38, !62, !39, !29, !40, !19, !24, !13}
!65 = !{!62, !29, !24}
!66 = !{!38, !60, !39, !26, !40, !19, !22}
!67 = !{!19, !16}
!68 = !{!40, !22, !24, !13}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_accumulate_512_avx2: argument 1"}
!71 = distinct !{!71, !"XXH3_accumulate_512_avx2"}
!72 = !{!73, !74}
!73 = distinct !{!73, !71, !"XXH3_accumulate_512_avx2: argument 0"}
!74 = distinct !{!74, !71, !"XXH3_accumulate_512_avx2: argument 2"}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"XXH3_mergeAccs: argument 1"}
!77 = distinct !{!77, !"XXH3_mergeAccs"}
!78 = distinct !{!78, !79, !"XXH3_finalizeLong_128b: argument 1"}
!79 = distinct !{!79, !"XXH3_finalizeLong_128b"}
!80 = !{!81, !82}
!81 = distinct !{!81, !77, !"XXH3_mergeAccs: argument 0"}
!82 = distinct !{!82, !79, !"XXH3_finalizeLong_128b: argument 0"}
!83 = !{!84, !86, !78}
!84 = distinct !{!84, !85, !"XXH3_mergeAccs: argument 1"}
!85 = distinct !{!85, !"XXH3_mergeAccs"}
!86 = distinct !{!86, !87, !"XXH3_finalizeLong_64b: argument 1"}
!87 = distinct !{!87, !"XXH3_finalizeLong_64b"}
!88 = !{!89, !90, !82}
!89 = distinct !{!89, !85, !"XXH3_mergeAccs: argument 0"}
!90 = distinct !{!90, !87, !"XXH3_finalizeLong_64b: argument 0"}
