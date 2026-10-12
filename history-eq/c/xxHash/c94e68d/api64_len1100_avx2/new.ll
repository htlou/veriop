; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api64_len1100_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api64_len1100_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #2
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, -4734510112055689544
  store i64 %6, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = sub i64 2066345149520216444, %1
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = add i64 %1, -2623469361688619810
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = sub i64 2262974939099578482, %1
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = add i64 %1, 8711581037947681227
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %16 = sub i64 2410270004345854594, %1
  store i64 %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %18 = add i64 %1, -8204357891075471176
  store i64 %18, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %20 = sub i64 5487137525590930912, %1
  store i64 %20, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %22 = add i64 %1, -3818837453329782724
  store i64 %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %24 = sub i64 -6688317018830679928, %1
  store i64 %24, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %26 = add i64 %1, 5690594596133299313
  store i64 %26, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %28 = sub i64 -2833645246901970632, %1
  store i64 %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %30 = add i64 %1, 4554437623014685352
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %32 = sub i64 2111919702937427193, %1
  store i64 %32, ptr %31, align 8
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %34 = add i64 %1, 3556072174620004746
  store i64 %34, ptr %33, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %36 = sub i64 7238261902898274248, %1
  store i64 %36, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %38 = add i64 %1, -4329134394285701654
  store i64 %38, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %40 = sub i64 -1485321483350670907, %1
  store i64 %40, ptr %39, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %42 = add i64 %1, 5321830579834785047
  store i64 %42, ptr %41, align 8
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %44 = sub i64 -7032137544937171245, %1
  store i64 %44, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %46 = add i64 %1, -242834301215959509
  store i64 %46, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %48 = sub i64 -3588858202114426737, %1
  store i64 %48, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %50 = add i64 %1, 2883454493032893253
  store i64 %50, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %52 = sub i64 9097354517224871855, %1
  store i64 %52, ptr %51, align 8
  br label %189

53:                                               ; preds = %2, %53
  %54 = phi <4 x i64> [ %84, %53 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %55 = phi <4 x i64> [ %71, %53 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %56 = phi i64 [ %85, %53 ], [ 0, %2 ]
  %57 = shl nuw nsw i64 %56, 6
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  %59 = shl nuw nsw i64 %56, 3
  %60 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %59
  %61 = load <4 x i64>, ptr %58, align 1
  %62 = load <4 x i64>, ptr %60, align 8
  %63 = xor <4 x i64> %62, %61
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = add <4 x i64> %61, %55
  %71 = add <4 x i64> %70, %69
  %72 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %73 = load <4 x i64>, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %75 = load <4 x i64>, ptr %74, align 8
  %76 = xor <4 x i64> %75, %73
  %77 = bitcast <4 x i64> %76 to <8 x i32>
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = and <4 x i64> %76, splat (i64 4294967295)
  %81 = and <4 x i64> %79, splat (i64 4294967295)
  %82 = mul nuw <4 x i64> %81, %80
  %83 = add <4 x i64> %73, %54
  %84 = add <4 x i64> %83, %82
  %85 = add nuw nsw i64 %56, 1
  %86 = icmp eq i64 %85, 16
  br i1 %86, label %87, label %53

87:                                               ; preds = %53
  %88 = lshr <4 x i64> %71, splat (i64 47)
  %89 = xor <4 x i64> %71, %88
  %90 = xor <4 x i64> %89, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %91 = and <4 x i64> %90, splat (i64 4294967295)
  %92 = mul nuw <4 x i64> %91, splat (i64 2654435761)
  %93 = bitcast <4 x i64> %90 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = mul <4 x i64> %95, splat (i64 -7046029290881679360)
  %97 = add <4 x i64> %96, %92
  %98 = lshr <4 x i64> %84, splat (i64 47)
  %99 = xor <4 x i64> %84, %98
  %100 = xor <4 x i64> %99, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %101 = and <4 x i64> %100, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, splat (i64 2654435761)
  %103 = bitcast <4 x i64> %100 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = mul <4 x i64> %105, splat (i64 -7046029290881679360)
  %107 = add <4 x i64> %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %109 = load <4 x i64>, ptr %108, align 1
  %110 = xor <4 x i64> %109, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = add <4 x i64> %97, %109
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = xor <4 x i64> %119, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %121 = bitcast <4 x i64> %120 to <8 x i32>
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %123 = bitcast <8 x i32> %122 to <4 x i64>
  %124 = and <4 x i64> %120, splat (i64 4294967295)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = add <4 x i64> %107, %119
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %129 = load <4 x i64>, ptr %128, align 1
  %130 = xor <4 x i64> %129, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %131 = bitcast <4 x i64> %130 to <8 x i32>
  %132 = shufflevector <8 x i32> %131, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %133 = bitcast <8 x i32> %132 to <4 x i64>
  %134 = and <4 x i64> %130, splat (i64 4294967295)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = add <4 x i64> %117, %129
  %138 = add <4 x i64> %137, %116
  %139 = add <4 x i64> %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %141 = load <4 x i64>, ptr %140, align 1
  %142 = xor <4 x i64> %141, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %143 = bitcast <4 x i64> %142 to <8 x i32>
  %144 = shufflevector <8 x i32> %143, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %145 = bitcast <8 x i32> %144 to <4 x i64>
  %146 = and <4 x i64> %142, splat (i64 4294967295)
  %147 = and <4 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <4 x i64> %147, %146
  %149 = add <4 x i64> %127, %141
  %150 = add <4 x i64> %149, %126
  %151 = add <4 x i64> %150, %148
  %152 = extractelement <4 x i64> %139, i64 0
  %153 = xor i64 %152, 7914194659941938988
  %154 = extractelement <4 x i64> %139, i64 1
  %155 = xor i64 %154, -6611157965513653271
  %156 = zext i64 %153 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %161, -2999706540330828780
  %163 = extractelement <4 x i64> %139, i64 2
  %164 = xor i64 %163, -1839215637059881052
  %165 = extractelement <4 x i64> %139, i64 3
  %166 = xor i64 %165, -3433288310154277810
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %162, %172
  %174 = extractelement <4 x i64> %151, i64 0
  %175 = xor i64 %174, 5046485836271438973
  %176 = extractelement <4 x i64> %151, i64 1
  %177 = xor i64 %176, -8055285457383852172
  %178 = zext i64 %175 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %173, %183
  %185 = extractelement <4 x i64> %151, i64 2
  %186 = xor i64 %185, 5920048007935066598
  %187 = extractelement <4 x i64> %151, i64 3
  %188 = xor i64 %187, 7336514198459093435
  br label %351

189:                                              ; preds = %189, %5
  %190 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %220, %189 ]
  %191 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %207, %189 ]
  %192 = phi i64 [ 0, %5 ], [ %221, %189 ]
  %193 = shl nuw nsw i64 %192, 6
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 %193
  %195 = shl nuw nsw i64 %192, 3
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 %195
  %197 = load <4 x i64>, ptr %194, align 1
  %198 = load <4 x i64>, ptr %196, align 8
  %199 = xor <4 x i64> %198, %197
  %200 = bitcast <4 x i64> %199 to <8 x i32>
  %201 = shufflevector <8 x i32> %200, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %202 = bitcast <8 x i32> %201 to <4 x i64>
  %203 = and <4 x i64> %199, splat (i64 4294967295)
  %204 = and <4 x i64> %202, splat (i64 4294967295)
  %205 = mul nuw <4 x i64> %204, %203
  %206 = add <4 x i64> %197, %191
  %207 = add <4 x i64> %206, %205
  %208 = getelementptr inbounds nuw i8, ptr %194, i64 32
  %209 = load <4 x i64>, ptr %208, align 1
  %210 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %211 = load <4 x i64>, ptr %210, align 8
  %212 = xor <4 x i64> %211, %209
  %213 = bitcast <4 x i64> %212 to <8 x i32>
  %214 = shufflevector <8 x i32> %213, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %215 = bitcast <8 x i32> %214 to <4 x i64>
  %216 = and <4 x i64> %212, splat (i64 4294967295)
  %217 = and <4 x i64> %215, splat (i64 4294967295)
  %218 = mul nuw <4 x i64> %217, %216
  %219 = add <4 x i64> %209, %190
  %220 = add <4 x i64> %219, %218
  %221 = add nuw nsw i64 %192, 1
  %222 = icmp eq i64 %221, 16
  br i1 %222, label %223, label %189

223:                                              ; preds = %189
  %224 = lshr <4 x i64> %207, splat (i64 47)
  %225 = load <4 x i64>, ptr %37, align 8
  %226 = xor <4 x i64> %224, %225
  %227 = xor <4 x i64> %226, %207
  %228 = and <4 x i64> %227, splat (i64 4294967295)
  %229 = mul nuw <4 x i64> %228, splat (i64 2654435761)
  %230 = bitcast <4 x i64> %227 to <8 x i32>
  %231 = shufflevector <8 x i32> %230, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %232 = bitcast <8 x i32> %231 to <4 x i64>
  %233 = mul <4 x i64> %232, splat (i64 -7046029290881679360)
  %234 = lshr <4 x i64> %220, splat (i64 47)
  %235 = load <4 x i64>, ptr %45, align 8
  %236 = xor <4 x i64> %234, %235
  %237 = xor <4 x i64> %236, %220
  %238 = and <4 x i64> %237, splat (i64 4294967295)
  %239 = mul nuw <4 x i64> %238, splat (i64 2654435761)
  %240 = bitcast <4 x i64> %237 to <8 x i32>
  %241 = shufflevector <8 x i32> %240, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %242 = bitcast <8 x i32> %241 to <4 x i64>
  %243 = mul <4 x i64> %242, splat (i64 -7046029290881679360)
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %245 = load <4 x i64>, ptr %244, align 1
  %246 = load <4 x i64>, ptr %3, align 8
  %247 = xor <4 x i64> %246, %245
  %248 = bitcast <4 x i64> %247 to <8 x i32>
  %249 = shufflevector <8 x i32> %248, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %250 = bitcast <8 x i32> %249 to <4 x i64>
  %251 = and <4 x i64> %247, splat (i64 4294967295)
  %252 = and <4 x i64> %250, splat (i64 4294967295)
  %253 = mul nuw <4 x i64> %252, %251
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %255 = load <4 x i64>, ptr %254, align 1
  %256 = load <4 x i64>, ptr %13, align 8
  %257 = xor <4 x i64> %256, %255
  %258 = bitcast <4 x i64> %257 to <8 x i32>
  %259 = shufflevector <8 x i32> %258, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %260 = bitcast <8 x i32> %259 to <4 x i64>
  %261 = and <4 x i64> %257, splat (i64 4294967295)
  %262 = and <4 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <4 x i64> %262, %261
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %265 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %266 = load <4 x i64>, ptr %264, align 1
  %267 = load <4 x i64>, ptr %265, align 1
  %268 = xor <4 x i64> %267, %266
  %269 = bitcast <4 x i64> %268 to <8 x i32>
  %270 = shufflevector <8 x i32> %269, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %271 = bitcast <8 x i32> %270 to <4 x i64>
  %272 = and <4 x i64> %268, splat (i64 4294967295)
  %273 = and <4 x i64> %271, splat (i64 4294967295)
  %274 = mul nuw <4 x i64> %273, %272
  %275 = add <4 x i64> %229, %245
  %276 = add <4 x i64> %275, %233
  %277 = add <4 x i64> %276, %266
  %278 = add <4 x i64> %277, %253
  %279 = add <4 x i64> %278, %274
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %281 = load <4 x i64>, ptr %280, align 1
  %282 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %283 = load <4 x i64>, ptr %282, align 1
  %284 = xor <4 x i64> %283, %281
  %285 = bitcast <4 x i64> %284 to <8 x i32>
  %286 = shufflevector <8 x i32> %285, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %287 = bitcast <8 x i32> %286 to <4 x i64>
  %288 = and <4 x i64> %284, splat (i64 4294967295)
  %289 = and <4 x i64> %287, splat (i64 4294967295)
  %290 = mul nuw <4 x i64> %289, %288
  %291 = add <4 x i64> %239, %255
  %292 = add <4 x i64> %291, %243
  %293 = add <4 x i64> %292, %281
  %294 = add <4 x i64> %293, %263
  %295 = add <4 x i64> %294, %290
  %296 = extractelement <4 x i64> %279, i64 0
  %297 = bitcast <4 x i64> %246 to i256
  %298 = lshr i256 %297, 88
  %299 = trunc i256 %298 to i64
  %300 = xor i64 %296, %299
  %301 = extractelement <4 x i64> %279, i64 1
  %302 = lshr i256 %297, 152
  %303 = trunc i256 %302 to i64
  %304 = xor i64 %301, %303
  %305 = zext i64 %300 to i128
  %306 = zext i64 %304 to i128
  %307 = mul nuw i128 %306, %305
  %308 = lshr i128 %307, 64
  %309 = xor i128 %308, %307
  %310 = trunc i128 %309 to i64
  %311 = add i64 %310, -2999706540330828780
  %312 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %313 = extractelement <4 x i64> %279, i64 2
  %314 = load i64, ptr %312, align 1
  %315 = xor i64 %313, %314
  %316 = extractelement <4 x i64> %279, i64 3
  %317 = bitcast <4 x i64> %256 to i256
  %318 = lshr i256 %317, 24
  %319 = trunc i256 %318 to i64
  %320 = xor i64 %316, %319
  %321 = zext i64 %315 to i128
  %322 = zext i64 %320 to i128
  %323 = mul nuw i128 %322, %321
  %324 = lshr i128 %323, 64
  %325 = xor i128 %324, %323
  %326 = trunc i128 %325 to i64
  %327 = add i64 %311, %326
  %328 = extractelement <4 x i64> %295, i64 0
  %329 = lshr i256 %317, 88
  %330 = trunc i256 %329 to i64
  %331 = xor i64 %328, %330
  %332 = extractelement <4 x i64> %295, i64 1
  %333 = lshr i256 %317, 152
  %334 = trunc i256 %333 to i64
  %335 = xor i64 %332, %334
  %336 = zext i64 %331 to i128
  %337 = zext i64 %335 to i128
  %338 = mul nuw i128 %337, %336
  %339 = lshr i128 %338, 64
  %340 = xor i128 %339, %338
  %341 = trunc i128 %340 to i64
  %342 = add i64 %327, %341
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %344 = extractelement <4 x i64> %295, i64 2
  %345 = load i64, ptr %343, align 1
  %346 = xor i64 %344, %345
  %347 = extractelement <4 x i64> %295, i64 3
  %348 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %349 = load i64, ptr %348, align 1
  %350 = xor i64 %347, %349
  br label %351

351:                                              ; preds = %87, %223
  %352 = phi i64 [ %346, %223 ], [ %186, %87 ]
  %353 = phi i64 [ %350, %223 ], [ %188, %87 ]
  %354 = phi i64 [ %342, %223 ], [ %184, %87 ]
  %355 = zext i64 %352 to i128
  %356 = zext i64 %353 to i128
  %357 = mul nuw i128 %356, %355
  %358 = lshr i128 %357, 64
  %359 = xor i128 %358, %357
  %360 = trunc i128 %359 to i64
  %361 = add i64 %354, %360
  %362 = lshr i64 %361, 37
  %363 = xor i64 %362, %361
  %364 = mul i64 %363, 1609587929392839161
  %365 = lshr i64 %364, 32
  %366 = xor i64 %365, %364
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #2
  ret i64 %366
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
