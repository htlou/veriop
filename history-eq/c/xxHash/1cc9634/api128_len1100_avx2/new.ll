; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len1100_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len1100_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #3
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
  br label %239

54:                                               ; preds = %3, %54
  %55 = phi <4 x i64> [ %88, %54 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %3 ]
  %56 = phi <4 x i64> [ %74, %54 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %3 ]
  %57 = phi i64 [ %89, %54 ], [ 0, %3 ]
  %58 = shl nuw nsw i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %60, i32 0, i32 3, i32 1)
  %61 = shl nuw nsw i64 %57, 3
  %62 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %61
  %63 = load <4 x i64>, ptr %59, align 1
  %64 = load <4 x i64>, ptr %62, align 8
  %65 = xor <4 x i64> %64, %63
  %66 = bitcast <4 x i64> %65 to <8 x i32>
  %67 = shufflevector <8 x i32> %66, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %68 = bitcast <8 x i32> %67 to <4 x i64>
  %69 = and <4 x i64> %65, splat (i64 4294967295)
  %70 = and <4 x i64> %68, splat (i64 4294967295)
  %71 = mul nuw <4 x i64> %70, %69
  %72 = shufflevector <4 x i64> %63, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %73 = add <4 x i64> %56, %72
  %74 = add <4 x i64> %73, %71
  %75 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %76 = load <4 x i64>, ptr %75, align 1
  %77 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %78 = load <4 x i64>, ptr %77, align 8
  %79 = xor <4 x i64> %78, %76
  %80 = bitcast <4 x i64> %79 to <8 x i32>
  %81 = shufflevector <8 x i32> %80, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %82 = bitcast <8 x i32> %81 to <4 x i64>
  %83 = and <4 x i64> %79, splat (i64 4294967295)
  %84 = and <4 x i64> %82, splat (i64 4294967295)
  %85 = mul nuw <4 x i64> %84, %83
  %86 = shufflevector <4 x i64> %76, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %87 = add <4 x i64> %55, %86
  %88 = add <4 x i64> %87, %85
  %89 = add nuw nsw i64 %57, 1
  %90 = icmp eq i64 %89, 16
  br i1 %90, label %91, label %54

91:                                               ; preds = %54
  %92 = lshr <4 x i64> %74, splat (i64 47)
  %93 = xor <4 x i64> %74, %92
  %94 = xor <4 x i64> %93, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %95 = bitcast <4 x i64> %94 to <8 x i32>
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %97 = bitcast <8 x i32> %96 to <4 x i64>
  %98 = and <4 x i64> %94, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, splat (i64 2654435761)
  %100 = mul <4 x i64> %97, splat (i64 -7046029290881679360)
  %101 = add <4 x i64> %100, %99
  %102 = lshr <4 x i64> %88, splat (i64 47)
  %103 = xor <4 x i64> %88, %102
  %104 = xor <4 x i64> %103, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %105 = bitcast <4 x i64> %104 to <8 x i32>
  %106 = shufflevector <8 x i32> %105, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %107 = bitcast <8 x i32> %106 to <4 x i64>
  %108 = and <4 x i64> %104, splat (i64 4294967295)
  %109 = mul nuw <4 x i64> %108, splat (i64 2654435761)
  %110 = mul <4 x i64> %107, splat (i64 -7046029290881679360)
  %111 = add <4 x i64> %110, %109
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %113, i32 0, i32 3, i32 1)
  %114 = load <4 x i64>, ptr %112, align 1
  %115 = xor <4 x i64> %114, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %116 = bitcast <4 x i64> %115 to <8 x i32>
  %117 = shufflevector <8 x i32> %116, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %118 = bitcast <8 x i32> %117 to <4 x i64>
  %119 = and <4 x i64> %115, splat (i64 4294967295)
  %120 = and <4 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <4 x i64> %120, %119
  %122 = shufflevector <4 x i64> %114, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %123 = add <4 x i64> %101, %122
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %125 = load <4 x i64>, ptr %124, align 1
  %126 = xor <4 x i64> %125, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %134 = add <4 x i64> %111, %133
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %136 = load <4 x i64>, ptr %135, align 1
  %137 = xor <4 x i64> %136, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %138 = bitcast <4 x i64> %137 to <8 x i32>
  %139 = shufflevector <8 x i32> %138, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %140 = bitcast <8 x i32> %139 to <4 x i64>
  %141 = and <4 x i64> %137, splat (i64 4294967295)
  %142 = and <4 x i64> %140, splat (i64 4294967295)
  %143 = mul nuw <4 x i64> %142, %141
  %144 = shufflevector <4 x i64> %136, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %145 = add <4 x i64> %123, %144
  %146 = add <4 x i64> %145, %121
  %147 = add <4 x i64> %146, %143
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %149 = load <4 x i64>, ptr %148, align 1
  %150 = xor <4 x i64> %149, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %151 = bitcast <4 x i64> %150 to <8 x i32>
  %152 = shufflevector <8 x i32> %151, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %153 = bitcast <8 x i32> %152 to <4 x i64>
  %154 = and <4 x i64> %150, splat (i64 4294967295)
  %155 = and <4 x i64> %153, splat (i64 4294967295)
  %156 = mul nuw <4 x i64> %155, %154
  %157 = shufflevector <4 x i64> %149, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %158 = add <4 x i64> %134, %157
  %159 = add <4 x i64> %158, %132
  %160 = add <4 x i64> %159, %156
  %161 = extractelement <4 x i64> %147, i64 0
  %162 = xor i64 %161, 7914194659941938988
  %163 = extractelement <4 x i64> %147, i64 1
  %164 = xor i64 %163, -6611157965513653271
  %165 = zext i64 %162 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %170, -2999706540330828780
  %172 = extractelement <4 x i64> %147, i64 2
  %173 = xor i64 %172, -1839215637059881052
  %174 = extractelement <4 x i64> %147, i64 3
  %175 = xor i64 %174, -3433288310154277810
  %176 = zext i64 %173 to i128
  %177 = zext i64 %175 to i128
  %178 = mul nuw i128 %177, %176
  %179 = lshr i128 %178, 64
  %180 = xor i128 %179, %178
  %181 = trunc i128 %180 to i64
  %182 = add i64 %171, %181
  %183 = extractelement <4 x i64> %160, i64 0
  %184 = xor i64 %183, 5046485836271438973
  %185 = extractelement <4 x i64> %160, i64 1
  %186 = xor i64 %185, -8055285457383852172
  %187 = zext i64 %184 to i128
  %188 = zext i64 %186 to i128
  %189 = mul nuw i128 %188, %187
  %190 = lshr i128 %189, 64
  %191 = xor i128 %190, %189
  %192 = trunc i128 %191 to i64
  %193 = add i64 %182, %192
  %194 = extractelement <4 x i64> %160, i64 2
  %195 = xor i64 %194, 5920048007935066598
  %196 = extractelement <4 x i64> %160, i64 3
  %197 = xor i64 %196, 7336514198459093435
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %193, %203
  %205 = lshr i64 %204, 37
  %206 = xor i64 %205, %204
  %207 = mul i64 %206, 1609587929392839161
  %208 = lshr i64 %207, 32
  %209 = xor i64 %208, %207
  %210 = xor i64 %161, -2753530472436770380
  %211 = xor i64 %163, 3784058077962335096
  %212 = zext i64 %210 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %217, 7510686108173002891
  %219 = xor i64 %172, -360392965937173549
  %220 = xor i64 %174, -5237161843349560557
  %221 = zext i64 %219 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %218, %226
  %228 = xor i64 %183, 2965150961192524528
  %229 = xor i64 %185, 9032178055121889492
  %230 = zext i64 %228 to i128
  %231 = zext i64 %229 to i128
  %232 = mul nuw i128 %231, %230
  %233 = lshr i128 %232, 64
  %234 = xor i128 %233, %232
  %235 = trunc i128 %234 to i64
  %236 = add i64 %227, %235
  %237 = xor i64 %194, 8850058120466833735
  %238 = xor i64 %196, -7669846995664752176
  br label %466

239:                                              ; preds = %239, %6
  %240 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %273, %239 ]
  %241 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %259, %239 ]
  %242 = phi i64 [ 0, %6 ], [ %274, %239 ]
  %243 = shl nuw nsw i64 %242, 6
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 %243
  %245 = getelementptr inbounds nuw i8, ptr %244, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %245, i32 0, i32 3, i32 1)
  %246 = shl nuw nsw i64 %242, 3
  %247 = getelementptr inbounds nuw i8, ptr %4, i64 %246
  %248 = load <4 x i64>, ptr %244, align 1
  %249 = load <4 x i64>, ptr %247, align 8
  %250 = xor <4 x i64> %249, %248
  %251 = bitcast <4 x i64> %250 to <8 x i32>
  %252 = shufflevector <8 x i32> %251, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %253 = bitcast <8 x i32> %252 to <4 x i64>
  %254 = and <4 x i64> %250, splat (i64 4294967295)
  %255 = and <4 x i64> %253, splat (i64 4294967295)
  %256 = mul nuw <4 x i64> %255, %254
  %257 = shufflevector <4 x i64> %248, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %258 = add <4 x i64> %241, %257
  %259 = add <4 x i64> %258, %256
  %260 = getelementptr inbounds nuw i8, ptr %244, i64 32
  %261 = load <4 x i64>, ptr %260, align 1
  %262 = getelementptr inbounds nuw i8, ptr %247, i64 32
  %263 = load <4 x i64>, ptr %262, align 8
  %264 = xor <4 x i64> %263, %261
  %265 = bitcast <4 x i64> %264 to <8 x i32>
  %266 = shufflevector <8 x i32> %265, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %267 = bitcast <8 x i32> %266 to <4 x i64>
  %268 = and <4 x i64> %264, splat (i64 4294967295)
  %269 = and <4 x i64> %267, splat (i64 4294967295)
  %270 = mul nuw <4 x i64> %269, %268
  %271 = shufflevector <4 x i64> %261, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %272 = add <4 x i64> %240, %271
  %273 = add <4 x i64> %272, %270
  %274 = add nuw nsw i64 %242, 1
  %275 = icmp eq i64 %274, 16
  br i1 %275, label %276, label %239

276:                                              ; preds = %239
  %277 = lshr <4 x i64> %259, splat (i64 47)
  %278 = load <4 x i64>, ptr %38, align 8
  %279 = xor <4 x i64> %277, %278
  %280 = xor <4 x i64> %279, %259
  %281 = bitcast <4 x i64> %280 to <8 x i32>
  %282 = shufflevector <8 x i32> %281, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %283 = bitcast <8 x i32> %282 to <4 x i64>
  %284 = and <4 x i64> %280, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, splat (i64 2654435761)
  %286 = mul <4 x i64> %283, splat (i64 -7046029290881679360)
  %287 = add <4 x i64> %286, %285
  %288 = lshr <4 x i64> %273, splat (i64 47)
  %289 = load <4 x i64>, ptr %46, align 8
  %290 = xor <4 x i64> %288, %289
  %291 = xor <4 x i64> %290, %273
  %292 = bitcast <4 x i64> %291 to <8 x i32>
  %293 = shufflevector <8 x i32> %292, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %294 = bitcast <8 x i32> %293 to <4 x i64>
  %295 = and <4 x i64> %291, splat (i64 4294967295)
  %296 = mul nuw <4 x i64> %295, splat (i64 2654435761)
  %297 = mul <4 x i64> %294, splat (i64 -7046029290881679360)
  %298 = add <4 x i64> %297, %296
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %300, i32 0, i32 3, i32 1)
  %301 = load <4 x i64>, ptr %299, align 1
  %302 = load <4 x i64>, ptr %4, align 8
  %303 = xor <4 x i64> %302, %301
  %304 = bitcast <4 x i64> %303 to <8 x i32>
  %305 = shufflevector <8 x i32> %304, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %306 = bitcast <8 x i32> %305 to <4 x i64>
  %307 = and <4 x i64> %303, splat (i64 4294967295)
  %308 = and <4 x i64> %306, splat (i64 4294967295)
  %309 = mul nuw <4 x i64> %308, %307
  %310 = shufflevector <4 x i64> %301, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %311 = add <4 x i64> %287, %310
  %312 = add <4 x i64> %311, %309
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %314 = load <4 x i64>, ptr %313, align 1
  %315 = load <4 x i64>, ptr %14, align 8
  %316 = xor <4 x i64> %315, %314
  %317 = bitcast <4 x i64> %316 to <8 x i32>
  %318 = shufflevector <8 x i32> %317, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %319 = bitcast <8 x i32> %318 to <4 x i64>
  %320 = and <4 x i64> %316, splat (i64 4294967295)
  %321 = and <4 x i64> %319, splat (i64 4294967295)
  %322 = mul nuw <4 x i64> %321, %320
  %323 = shufflevector <4 x i64> %314, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %324 = add <4 x i64> %298, %323
  %325 = add <4 x i64> %324, %322
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %327 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %328 = load <4 x i64>, ptr %326, align 1
  %329 = load <4 x i64>, ptr %327, align 1
  %330 = xor <4 x i64> %329, %328
  %331 = bitcast <4 x i64> %330 to <8 x i32>
  %332 = shufflevector <8 x i32> %331, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %333 = bitcast <8 x i32> %332 to <4 x i64>
  %334 = and <4 x i64> %330, splat (i64 4294967295)
  %335 = and <4 x i64> %333, splat (i64 4294967295)
  %336 = mul nuw <4 x i64> %335, %334
  %337 = shufflevector <4 x i64> %328, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %338 = add <4 x i64> %312, %337
  %339 = add <4 x i64> %338, %336
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %341 = load <4 x i64>, ptr %340, align 1
  %342 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %343 = load <4 x i64>, ptr %342, align 1
  %344 = xor <4 x i64> %343, %341
  %345 = bitcast <4 x i64> %344 to <8 x i32>
  %346 = shufflevector <8 x i32> %345, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %347 = bitcast <8 x i32> %346 to <4 x i64>
  %348 = and <4 x i64> %344, splat (i64 4294967295)
  %349 = and <4 x i64> %347, splat (i64 4294967295)
  %350 = mul nuw <4 x i64> %349, %348
  %351 = shufflevector <4 x i64> %341, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %352 = add <4 x i64> %325, %351
  %353 = add <4 x i64> %352, %350
  %354 = extractelement <4 x i64> %339, i64 0
  %355 = bitcast <4 x i64> %302 to i256
  %356 = lshr i256 %355, 88
  %357 = trunc i256 %356 to i64
  %358 = xor i64 %354, %357
  %359 = extractelement <4 x i64> %339, i64 1
  %360 = lshr i256 %355, 152
  %361 = trunc i256 %360 to i64
  %362 = xor i64 %359, %361
  %363 = zext i64 %358 to i128
  %364 = zext i64 %362 to i128
  %365 = mul nuw i128 %364, %363
  %366 = lshr i128 %365, 64
  %367 = xor i128 %366, %365
  %368 = trunc i128 %367 to i64
  %369 = add i64 %368, -2999706540330828780
  %370 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %371 = extractelement <4 x i64> %339, i64 2
  %372 = load i64, ptr %370, align 1
  %373 = xor i64 %371, %372
  %374 = extractelement <4 x i64> %339, i64 3
  %375 = bitcast <4 x i64> %315 to i256
  %376 = lshr i256 %375, 24
  %377 = trunc i256 %376 to i64
  %378 = xor i64 %374, %377
  %379 = zext i64 %373 to i128
  %380 = zext i64 %378 to i128
  %381 = mul nuw i128 %380, %379
  %382 = lshr i128 %381, 64
  %383 = xor i128 %382, %381
  %384 = trunc i128 %383 to i64
  %385 = add i64 %369, %384
  %386 = extractelement <4 x i64> %353, i64 0
  %387 = lshr i256 %375, 88
  %388 = trunc i256 %387 to i64
  %389 = xor i64 %386, %388
  %390 = extractelement <4 x i64> %353, i64 1
  %391 = lshr i256 %375, 152
  %392 = trunc i256 %391 to i64
  %393 = xor i64 %390, %392
  %394 = zext i64 %389 to i128
  %395 = zext i64 %393 to i128
  %396 = mul nuw i128 %395, %394
  %397 = lshr i128 %396, 64
  %398 = xor i128 %397, %396
  %399 = trunc i128 %398 to i64
  %400 = add i64 %385, %399
  %401 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %402 = extractelement <4 x i64> %353, i64 2
  %403 = load i64, ptr %401, align 1
  %404 = xor i64 %402, %403
  %405 = extractelement <4 x i64> %353, i64 3
  %406 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %407 = load i64, ptr %406, align 1
  %408 = xor i64 %405, %407
  %409 = zext i64 %404 to i128
  %410 = zext i64 %408 to i128
  %411 = mul nuw i128 %410, %409
  %412 = lshr i128 %411, 64
  %413 = xor i128 %412, %411
  %414 = trunc i128 %413 to i64
  %415 = add i64 %400, %414
  %416 = lshr i64 %415, 37
  %417 = xor i64 %416, %415
  %418 = mul i64 %417, 1609587929392839161
  %419 = lshr i64 %418, 32
  %420 = xor i64 %419, %418
  %421 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %422 = load i64, ptr %421, align 1
  %423 = xor i64 %354, %422
  %424 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %425 = load i64, ptr %424, align 1
  %426 = xor i64 %359, %425
  %427 = zext i64 %423 to i128
  %428 = zext i64 %426 to i128
  %429 = mul nuw i128 %428, %427
  %430 = lshr i128 %429, 64
  %431 = xor i128 %430, %429
  %432 = trunc i128 %431 to i64
  %433 = add i64 %432, 7510686108173002891
  %434 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %435 = load i64, ptr %434, align 1
  %436 = xor i64 %435, %371
  %437 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %438 = load i64, ptr %437, align 1
  %439 = xor i64 %438, %374
  %440 = zext i64 %436 to i128
  %441 = zext i64 %439 to i128
  %442 = mul nuw i128 %441, %440
  %443 = lshr i128 %442, 64
  %444 = xor i128 %443, %442
  %445 = trunc i128 %444 to i64
  %446 = add i64 %433, %445
  %447 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %448 = load i64, ptr %447, align 1
  %449 = xor i64 %448, %386
  %450 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %451 = load i64, ptr %450, align 1
  %452 = xor i64 %451, %390
  %453 = zext i64 %449 to i128
  %454 = zext i64 %452 to i128
  %455 = mul nuw i128 %454, %453
  %456 = lshr i128 %455, 64
  %457 = xor i128 %456, %455
  %458 = trunc i128 %457 to i64
  %459 = add i64 %446, %458
  %460 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %461 = load i64, ptr %460, align 1
  %462 = xor i64 %461, %402
  %463 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %464 = load i64, ptr %463, align 1
  %465 = xor i64 %464, %405
  br label %466

466:                                              ; preds = %91, %276
  %467 = phi i64 [ %462, %276 ], [ %237, %91 ]
  %468 = phi i64 [ %465, %276 ], [ %238, %91 ]
  %469 = phi i64 [ %459, %276 ], [ %236, %91 ]
  %470 = phi i64 [ %420, %276 ], [ %209, %91 ]
  %471 = zext i64 %467 to i128
  %472 = zext i64 %468 to i128
  %473 = mul nuw i128 %472, %471
  %474 = lshr i128 %473, 64
  %475 = xor i128 %474, %473
  %476 = trunc i128 %475 to i64
  %477 = add i64 %469, %476
  %478 = lshr i64 %477, 37
  %479 = xor i64 %478, %477
  %480 = mul i64 %479, 1609587929392839161
  %481 = lshr i64 %480, 32
  %482 = xor i64 %481, %480
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #3
  store i64 %470, ptr %2, align 8
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %482, ptr %483, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
