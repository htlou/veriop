; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len1100_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len1100_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %3
  %7 = add i64 %1, -4734510112055689544
  store i64 %7, ptr %4, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = sub i64 2066345149520216444, %1
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = add i64 %1, -2623469361688619810
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %13 = sub i64 2262974939099578482, %1
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %15 = add i64 %1, 8711581037947681227
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %17 = sub i64 2410270004345854594, %1
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %19 = add i64 %1, -8204357891075471176
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %21 = sub i64 5487137525590930912, %1
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %23 = add i64 %1, -3818837453329782724
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %25 = sub i64 -6688317018830679928, %1
  store i64 %25, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %27 = add i64 %1, 5690594596133299313
  store i64 %27, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %29 = sub i64 -2833645246901970632, %1
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %31 = add i64 %1, 4554437623014685352
  store i64 %31, ptr %30, align 8
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %33 = sub i64 2111919702937427193, %1
  store i64 %33, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %35 = add i64 %1, 3556072174620004746
  store i64 %35, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %37 = sub i64 7238261902898274248, %1
  store i64 %37, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %39 = add i64 %1, -4329134394285701654
  store i64 %39, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %41 = sub i64 -1485321483350670907, %1
  store i64 %41, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %43 = add i64 %1, 5321830579834785047
  store i64 %43, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %45 = sub i64 -7032137544937171245, %1
  store i64 %45, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %47 = add i64 %1, -242834301215959509
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %49 = sub i64 -3588858202114426737, %1
  store i64 %49, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %51 = add i64 %1, 2883454493032893253
  store i64 %51, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %53 = sub i64 9097354517224871855, %1
  store i64 %53, ptr %52, align 8
  br label %237

54:                                               ; preds = %3, %54
  %55 = phi <4 x i64> [ %87, %54 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %3 ]
  %56 = phi <4 x i64> [ %73, %54 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %3 ]
  %57 = phi i64 [ %88, %54 ], [ 0, %3 ]
  %58 = shl nuw nsw i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  %60 = shl nuw nsw i64 %57, 3
  %61 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %60
  %62 = load <4 x i64>, ptr %59, align 1
  %63 = load <4 x i64>, ptr %61, align 8
  %64 = xor <4 x i64> %63, %62
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = shufflevector <4 x i64> %62, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %72 = add <4 x i64> %56, %71
  %73 = add <4 x i64> %72, %70
  %74 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %75 = load <4 x i64>, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %77 = load <4 x i64>, ptr %76, align 8
  %78 = xor <4 x i64> %77, %75
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %86 = add <4 x i64> %55, %85
  %87 = add <4 x i64> %86, %84
  %88 = add nuw nsw i64 %57, 1
  %89 = icmp eq i64 %88, 16
  br i1 %89, label %90, label %54

90:                                               ; preds = %54
  %91 = lshr <4 x i64> %73, splat (i64 47)
  %92 = xor <4 x i64> %73, %91
  %93 = xor <4 x i64> %92, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %94 = bitcast <4 x i64> %93 to <8 x i32>
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %97 = and <4 x i64> %93, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, splat (i64 2654435761)
  %99 = mul <4 x i64> %96, splat (i64 -7046029290881679360)
  %100 = add <4 x i64> %99, %98
  %101 = lshr <4 x i64> %87, splat (i64 47)
  %102 = xor <4 x i64> %87, %101
  %103 = xor <4 x i64> %102, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %104 = bitcast <4 x i64> %103 to <8 x i32>
  %105 = shufflevector <8 x i32> %104, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %106 = bitcast <8 x i32> %105 to <4 x i64>
  %107 = and <4 x i64> %103, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, splat (i64 2654435761)
  %109 = mul <4 x i64> %106, splat (i64 -7046029290881679360)
  %110 = add <4 x i64> %109, %108
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %112 = load <4 x i64>, ptr %111, align 1
  %113 = xor <4 x i64> %112, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %114 = bitcast <4 x i64> %113 to <8 x i32>
  %115 = shufflevector <8 x i32> %114, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %116 = bitcast <8 x i32> %115 to <4 x i64>
  %117 = and <4 x i64> %113, splat (i64 4294967295)
  %118 = and <4 x i64> %116, splat (i64 4294967295)
  %119 = mul nuw <4 x i64> %118, %117
  %120 = shufflevector <4 x i64> %112, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %121 = add <4 x i64> %100, %120
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %123 = load <4 x i64>, ptr %122, align 1
  %124 = xor <4 x i64> %123, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %132 = add <4 x i64> %110, %131
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %134 = load <4 x i64>, ptr %133, align 1
  %135 = xor <4 x i64> %134, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %136 = bitcast <4 x i64> %135 to <8 x i32>
  %137 = shufflevector <8 x i32> %136, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %138 = bitcast <8 x i32> %137 to <4 x i64>
  %139 = and <4 x i64> %135, splat (i64 4294967295)
  %140 = and <4 x i64> %138, splat (i64 4294967295)
  %141 = mul nuw <4 x i64> %140, %139
  %142 = shufflevector <4 x i64> %134, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %143 = add <4 x i64> %121, %142
  %144 = add <4 x i64> %143, %119
  %145 = add <4 x i64> %144, %141
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %147 = load <4 x i64>, ptr %146, align 1
  %148 = xor <4 x i64> %147, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %149 = bitcast <4 x i64> %148 to <8 x i32>
  %150 = shufflevector <8 x i32> %149, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %151 = bitcast <8 x i32> %150 to <4 x i64>
  %152 = and <4 x i64> %148, splat (i64 4294967295)
  %153 = and <4 x i64> %151, splat (i64 4294967295)
  %154 = mul nuw <4 x i64> %153, %152
  %155 = shufflevector <4 x i64> %147, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %156 = add <4 x i64> %132, %155
  %157 = add <4 x i64> %156, %130
  %158 = add <4 x i64> %157, %154
  %159 = extractelement <4 x i64> %145, i64 0
  %160 = xor i64 %159, 7914194659941938988
  %161 = extractelement <4 x i64> %145, i64 1
  %162 = xor i64 %161, -6611157965513653271
  %163 = zext i64 %160 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = add i64 %168, -2999706540330828780
  %170 = extractelement <4 x i64> %145, i64 2
  %171 = xor i64 %170, -1839215637059881052
  %172 = extractelement <4 x i64> %145, i64 3
  %173 = xor i64 %172, -3433288310154277810
  %174 = zext i64 %171 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %169, %179
  %181 = extractelement <4 x i64> %158, i64 0
  %182 = xor i64 %181, 5046485836271438973
  %183 = extractelement <4 x i64> %158, i64 1
  %184 = xor i64 %183, -8055285457383852172
  %185 = zext i64 %182 to i128
  %186 = zext i64 %184 to i128
  %187 = mul nuw i128 %186, %185
  %188 = lshr i128 %187, 64
  %189 = xor i128 %188, %187
  %190 = trunc i128 %189 to i64
  %191 = add i64 %180, %190
  %192 = extractelement <4 x i64> %158, i64 2
  %193 = xor i64 %192, 5920048007935066598
  %194 = extractelement <4 x i64> %158, i64 3
  %195 = xor i64 %194, 7336514198459093435
  %196 = zext i64 %193 to i128
  %197 = zext i64 %195 to i128
  %198 = mul nuw i128 %197, %196
  %199 = lshr i128 %198, 64
  %200 = xor i128 %199, %198
  %201 = trunc i128 %200 to i64
  %202 = add i64 %191, %201
  %203 = lshr i64 %202, 37
  %204 = xor i64 %203, %202
  %205 = mul i64 %204, 1609587929392839161
  %206 = lshr i64 %205, 32
  %207 = xor i64 %206, %205
  %208 = xor i64 %159, -2753530472436770380
  %209 = xor i64 %161, 3784058077962335096
  %210 = zext i64 %208 to i128
  %211 = zext i64 %209 to i128
  %212 = mul nuw i128 %211, %210
  %213 = lshr i128 %212, 64
  %214 = xor i128 %213, %212
  %215 = trunc i128 %214 to i64
  %216 = add i64 %215, 7510686108173002891
  %217 = xor i64 %170, -360392965937173549
  %218 = xor i64 %172, -5237161843349560557
  %219 = zext i64 %217 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %216, %224
  %226 = xor i64 %181, 2965150961192524528
  %227 = xor i64 %183, 9032178055121889492
  %228 = zext i64 %226 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %225, %233
  %235 = xor i64 %192, 8850058120466833735
  %236 = xor i64 %194, -7669846995664752176
  br label %462

237:                                              ; preds = %237, %6
  %238 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %270, %237 ]
  %239 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %256, %237 ]
  %240 = phi i64 [ 0, %6 ], [ %271, %237 ]
  %241 = shl nuw nsw i64 %240, 6
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 %241
  %243 = shl nuw nsw i64 %240, 3
  %244 = getelementptr inbounds nuw i8, ptr %4, i64 %243
  %245 = load <4 x i64>, ptr %242, align 1
  %246 = load <4 x i64>, ptr %244, align 8
  %247 = xor <4 x i64> %246, %245
  %248 = bitcast <4 x i64> %247 to <8 x i32>
  %249 = shufflevector <8 x i32> %248, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %250 = bitcast <8 x i32> %249 to <4 x i64>
  %251 = and <4 x i64> %247, splat (i64 4294967295)
  %252 = and <4 x i64> %250, splat (i64 4294967295)
  %253 = mul nuw <4 x i64> %252, %251
  %254 = shufflevector <4 x i64> %245, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %255 = add <4 x i64> %239, %254
  %256 = add <4 x i64> %255, %253
  %257 = getelementptr inbounds nuw i8, ptr %242, i64 32
  %258 = load <4 x i64>, ptr %257, align 1
  %259 = getelementptr inbounds nuw i8, ptr %244, i64 32
  %260 = load <4 x i64>, ptr %259, align 8
  %261 = xor <4 x i64> %260, %258
  %262 = bitcast <4 x i64> %261 to <8 x i32>
  %263 = shufflevector <8 x i32> %262, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %264 = bitcast <8 x i32> %263 to <4 x i64>
  %265 = and <4 x i64> %261, splat (i64 4294967295)
  %266 = and <4 x i64> %264, splat (i64 4294967295)
  %267 = mul nuw <4 x i64> %266, %265
  %268 = shufflevector <4 x i64> %258, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %269 = add <4 x i64> %238, %268
  %270 = add <4 x i64> %269, %267
  %271 = add nuw nsw i64 %240, 1
  %272 = icmp eq i64 %271, 16
  br i1 %272, label %273, label %237

273:                                              ; preds = %237
  %274 = lshr <4 x i64> %256, splat (i64 47)
  %275 = load <4 x i64>, ptr %38, align 8
  %276 = xor <4 x i64> %274, %275
  %277 = xor <4 x i64> %276, %256
  %278 = bitcast <4 x i64> %277 to <8 x i32>
  %279 = shufflevector <8 x i32> %278, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %280 = bitcast <8 x i32> %279 to <4 x i64>
  %281 = and <4 x i64> %277, splat (i64 4294967295)
  %282 = mul nuw <4 x i64> %281, splat (i64 2654435761)
  %283 = mul <4 x i64> %280, splat (i64 -7046029290881679360)
  %284 = lshr <4 x i64> %270, splat (i64 47)
  %285 = load <4 x i64>, ptr %46, align 8
  %286 = xor <4 x i64> %284, %285
  %287 = xor <4 x i64> %286, %270
  %288 = bitcast <4 x i64> %287 to <8 x i32>
  %289 = shufflevector <8 x i32> %288, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %290 = bitcast <8 x i32> %289 to <4 x i64>
  %291 = and <4 x i64> %287, splat (i64 4294967295)
  %292 = mul nuw <4 x i64> %291, splat (i64 2654435761)
  %293 = mul <4 x i64> %290, splat (i64 -7046029290881679360)
  %294 = add <4 x i64> %293, %292
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %296 = load <4 x i64>, ptr %295, align 1
  %297 = load <4 x i64>, ptr %4, align 8
  %298 = xor <4 x i64> %297, %296
  %299 = bitcast <4 x i64> %298 to <8 x i32>
  %300 = shufflevector <8 x i32> %299, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %301 = bitcast <8 x i32> %300 to <4 x i64>
  %302 = and <4 x i64> %298, splat (i64 4294967295)
  %303 = and <4 x i64> %301, splat (i64 4294967295)
  %304 = mul nuw <4 x i64> %303, %302
  %305 = shufflevector <4 x i64> %296, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %307 = load <4 x i64>, ptr %306, align 1
  %308 = load <4 x i64>, ptr %14, align 8
  %309 = xor <4 x i64> %308, %307
  %310 = bitcast <4 x i64> %309 to <8 x i32>
  %311 = shufflevector <8 x i32> %310, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %312 = bitcast <8 x i32> %311 to <4 x i64>
  %313 = and <4 x i64> %309, splat (i64 4294967295)
  %314 = and <4 x i64> %312, splat (i64 4294967295)
  %315 = mul nuw <4 x i64> %314, %313
  %316 = shufflevector <4 x i64> %307, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %317 = add <4 x i64> %294, %316
  %318 = add <4 x i64> %317, %315
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %320 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %321 = load <4 x i64>, ptr %319, align 1
  %322 = load <4 x i64>, ptr %320, align 1
  %323 = xor <4 x i64> %322, %321
  %324 = bitcast <4 x i64> %323 to <8 x i32>
  %325 = shufflevector <8 x i32> %324, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %326 = bitcast <8 x i32> %325 to <4 x i64>
  %327 = and <4 x i64> %323, splat (i64 4294967295)
  %328 = and <4 x i64> %326, splat (i64 4294967295)
  %329 = mul nuw <4 x i64> %328, %327
  %330 = shufflevector <4 x i64> %321, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %331 = add <4 x i64> %282, %305
  %332 = add <4 x i64> %331, %283
  %333 = add <4 x i64> %332, %304
  %334 = add <4 x i64> %333, %330
  %335 = add <4 x i64> %334, %329
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %337 = load <4 x i64>, ptr %336, align 1
  %338 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %339 = load <4 x i64>, ptr %338, align 1
  %340 = xor <4 x i64> %339, %337
  %341 = bitcast <4 x i64> %340 to <8 x i32>
  %342 = shufflevector <8 x i32> %341, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %343 = bitcast <8 x i32> %342 to <4 x i64>
  %344 = and <4 x i64> %340, splat (i64 4294967295)
  %345 = and <4 x i64> %343, splat (i64 4294967295)
  %346 = mul nuw <4 x i64> %345, %344
  %347 = shufflevector <4 x i64> %337, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %348 = add <4 x i64> %318, %347
  %349 = add <4 x i64> %348, %346
  %350 = extractelement <4 x i64> %335, i64 0
  %351 = bitcast <4 x i64> %297 to i256
  %352 = lshr i256 %351, 88
  %353 = trunc i256 %352 to i64
  %354 = xor i64 %350, %353
  %355 = extractelement <4 x i64> %335, i64 1
  %356 = lshr i256 %351, 152
  %357 = trunc i256 %356 to i64
  %358 = xor i64 %355, %357
  %359 = zext i64 %354 to i128
  %360 = zext i64 %358 to i128
  %361 = mul nuw i128 %360, %359
  %362 = lshr i128 %361, 64
  %363 = xor i128 %362, %361
  %364 = trunc i128 %363 to i64
  %365 = add i64 %364, -2999706540330828780
  %366 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %367 = extractelement <4 x i64> %335, i64 2
  %368 = load i64, ptr %366, align 1
  %369 = xor i64 %367, %368
  %370 = extractelement <4 x i64> %335, i64 3
  %371 = bitcast <4 x i64> %308 to i256
  %372 = lshr i256 %371, 24
  %373 = trunc i256 %372 to i64
  %374 = xor i64 %370, %373
  %375 = zext i64 %369 to i128
  %376 = zext i64 %374 to i128
  %377 = mul nuw i128 %376, %375
  %378 = lshr i128 %377, 64
  %379 = xor i128 %378, %377
  %380 = trunc i128 %379 to i64
  %381 = add i64 %365, %380
  %382 = extractelement <4 x i64> %349, i64 0
  %383 = lshr i256 %371, 88
  %384 = trunc i256 %383 to i64
  %385 = xor i64 %382, %384
  %386 = extractelement <4 x i64> %349, i64 1
  %387 = lshr i256 %371, 152
  %388 = trunc i256 %387 to i64
  %389 = xor i64 %386, %388
  %390 = zext i64 %385 to i128
  %391 = zext i64 %389 to i128
  %392 = mul nuw i128 %391, %390
  %393 = lshr i128 %392, 64
  %394 = xor i128 %393, %392
  %395 = trunc i128 %394 to i64
  %396 = add i64 %381, %395
  %397 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %398 = extractelement <4 x i64> %349, i64 2
  %399 = load i64, ptr %397, align 1
  %400 = xor i64 %398, %399
  %401 = extractelement <4 x i64> %349, i64 3
  %402 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %403 = load i64, ptr %402, align 1
  %404 = xor i64 %401, %403
  %405 = zext i64 %400 to i128
  %406 = zext i64 %404 to i128
  %407 = mul nuw i128 %406, %405
  %408 = lshr i128 %407, 64
  %409 = xor i128 %408, %407
  %410 = trunc i128 %409 to i64
  %411 = add i64 %396, %410
  %412 = lshr i64 %411, 37
  %413 = xor i64 %412, %411
  %414 = mul i64 %413, 1609587929392839161
  %415 = lshr i64 %414, 32
  %416 = xor i64 %415, %414
  %417 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %350, %418
  %420 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %421 = load i64, ptr %420, align 1
  %422 = xor i64 %355, %421
  %423 = zext i64 %419 to i128
  %424 = zext i64 %422 to i128
  %425 = mul nuw i128 %424, %423
  %426 = lshr i128 %425, 64
  %427 = xor i128 %426, %425
  %428 = trunc i128 %427 to i64
  %429 = add i64 %428, 7510686108173002891
  %430 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %431 = load i64, ptr %430, align 1
  %432 = xor i64 %431, %367
  %433 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %434 = load i64, ptr %433, align 1
  %435 = xor i64 %434, %370
  %436 = zext i64 %432 to i128
  %437 = zext i64 %435 to i128
  %438 = mul nuw i128 %437, %436
  %439 = lshr i128 %438, 64
  %440 = xor i128 %439, %438
  %441 = trunc i128 %440 to i64
  %442 = add i64 %429, %441
  %443 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %444 = load i64, ptr %443, align 1
  %445 = xor i64 %444, %382
  %446 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %447 = load i64, ptr %446, align 1
  %448 = xor i64 %447, %386
  %449 = zext i64 %445 to i128
  %450 = zext i64 %448 to i128
  %451 = mul nuw i128 %450, %449
  %452 = lshr i128 %451, 64
  %453 = xor i128 %452, %451
  %454 = trunc i128 %453 to i64
  %455 = add i64 %442, %454
  %456 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %457 = load i64, ptr %456, align 1
  %458 = xor i64 %457, %398
  %459 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %460 = load i64, ptr %459, align 1
  %461 = xor i64 %460, %401
  br label %462

462:                                              ; preds = %90, %273
  %463 = phi i64 [ %458, %273 ], [ %235, %90 ]
  %464 = phi i64 [ %461, %273 ], [ %236, %90 ]
  %465 = phi i64 [ %455, %273 ], [ %234, %90 ]
  %466 = phi i64 [ %416, %273 ], [ %207, %90 ]
  %467 = zext i64 %463 to i128
  %468 = zext i64 %464 to i128
  %469 = mul nuw i128 %468, %467
  %470 = lshr i128 %469, 64
  %471 = xor i128 %470, %469
  %472 = trunc i128 %471 to i64
  %473 = add i64 %465, %472
  %474 = lshr i64 %473, 37
  %475 = xor i64 %474, %473
  %476 = mul i64 %475, 1609587929392839161
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #2
  store i64 %466, ptr %2, align 8
  %479 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %478, ptr %479, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
