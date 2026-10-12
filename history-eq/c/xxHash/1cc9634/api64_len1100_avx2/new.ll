; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api64_len1100_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api64_len1100_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #3
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
  br label %191

53:                                               ; preds = %2, %53
  %54 = phi <4 x i64> [ %85, %53 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %55 = phi <4 x i64> [ %72, %53 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %56 = phi i64 [ %86, %53 ], [ 0, %2 ]
  %57 = shl nuw nsw i64 %56, 6
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %59, i32 0, i32 3, i32 1)
  %60 = shl nuw nsw i64 %56, 3
  %61 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %60
  %62 = load <4 x i64>, ptr %58, align 1
  %63 = load <4 x i64>, ptr %61, align 8
  %64 = xor <4 x i64> %63, %62
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = add <4 x i64> %62, %55
  %72 = add <4 x i64> %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %74 = load <4 x i64>, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %76 = load <4 x i64>, ptr %75, align 8
  %77 = xor <4 x i64> %76, %74
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = bitcast <8 x i32> %79 to <4 x i64>
  %81 = and <4 x i64> %77, splat (i64 4294967295)
  %82 = and <4 x i64> %80, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, %81
  %84 = add <4 x i64> %74, %54
  %85 = add <4 x i64> %84, %83
  %86 = add nuw nsw i64 %56, 1
  %87 = icmp eq i64 %86, 16
  br i1 %87, label %88, label %53

88:                                               ; preds = %53
  %89 = lshr <4 x i64> %72, splat (i64 47)
  %90 = xor <4 x i64> %72, %89
  %91 = xor <4 x i64> %90, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %92 = bitcast <4 x i64> %91 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = and <4 x i64> %91, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, splat (i64 2654435761)
  %97 = mul <4 x i64> %94, splat (i64 -7046029290881679360)
  %98 = add <4 x i64> %97, %96
  %99 = lshr <4 x i64> %85, splat (i64 47)
  %100 = xor <4 x i64> %85, %99
  %101 = xor <4 x i64> %100, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %102 = bitcast <4 x i64> %101 to <8 x i32>
  %103 = shufflevector <8 x i32> %102, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %104 = bitcast <8 x i32> %103 to <4 x i64>
  %105 = and <4 x i64> %101, splat (i64 4294967295)
  %106 = mul nuw <4 x i64> %105, splat (i64 2654435761)
  %107 = mul <4 x i64> %104, splat (i64 -7046029290881679360)
  %108 = add <4 x i64> %107, %106
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %110, i32 0, i32 3, i32 1)
  %111 = load <4 x i64>, ptr %109, align 1
  %112 = xor <4 x i64> %111, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %113 = bitcast <4 x i64> %112 to <8 x i32>
  %114 = shufflevector <8 x i32> %113, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %115 = bitcast <8 x i32> %114 to <4 x i64>
  %116 = and <4 x i64> %112, splat (i64 4294967295)
  %117 = and <4 x i64> %115, splat (i64 4294967295)
  %118 = mul nuw <4 x i64> %117, %116
  %119 = add <4 x i64> %98, %111
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = xor <4 x i64> %121, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %123 = bitcast <4 x i64> %122 to <8 x i32>
  %124 = shufflevector <8 x i32> %123, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %125 = bitcast <8 x i32> %124 to <4 x i64>
  %126 = and <4 x i64> %122, splat (i64 4294967295)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = add <4 x i64> %108, %121
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %131 = load <4 x i64>, ptr %130, align 1
  %132 = xor <4 x i64> %131, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %133 = bitcast <4 x i64> %132 to <8 x i32>
  %134 = shufflevector <8 x i32> %133, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %135 = bitcast <8 x i32> %134 to <4 x i64>
  %136 = and <4 x i64> %132, splat (i64 4294967295)
  %137 = and <4 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <4 x i64> %137, %136
  %139 = add <4 x i64> %119, %131
  %140 = add <4 x i64> %139, %118
  %141 = add <4 x i64> %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = add <4 x i64> %129, %143
  %152 = add <4 x i64> %151, %128
  %153 = add <4 x i64> %152, %150
  %154 = extractelement <4 x i64> %141, i64 0
  %155 = xor i64 %154, 7914194659941938988
  %156 = extractelement <4 x i64> %141, i64 1
  %157 = xor i64 %156, -6611157965513653271
  %158 = zext i64 %155 to i128
  %159 = zext i64 %157 to i128
  %160 = mul nuw i128 %159, %158
  %161 = lshr i128 %160, 64
  %162 = xor i128 %161, %160
  %163 = trunc i128 %162 to i64
  %164 = add i64 %163, -2999706540330828780
  %165 = extractelement <4 x i64> %141, i64 2
  %166 = xor i64 %165, -1839215637059881052
  %167 = extractelement <4 x i64> %141, i64 3
  %168 = xor i64 %167, -3433288310154277810
  %169 = zext i64 %166 to i128
  %170 = zext i64 %168 to i128
  %171 = mul nuw i128 %170, %169
  %172 = lshr i128 %171, 64
  %173 = xor i128 %172, %171
  %174 = trunc i128 %173 to i64
  %175 = add i64 %164, %174
  %176 = extractelement <4 x i64> %153, i64 0
  %177 = xor i64 %176, 5046485836271438973
  %178 = extractelement <4 x i64> %153, i64 1
  %179 = xor i64 %178, -8055285457383852172
  %180 = zext i64 %177 to i128
  %181 = zext i64 %179 to i128
  %182 = mul nuw i128 %181, %180
  %183 = lshr i128 %182, 64
  %184 = xor i128 %183, %182
  %185 = trunc i128 %184 to i64
  %186 = add i64 %175, %185
  %187 = extractelement <4 x i64> %153, i64 2
  %188 = xor i64 %187, 5920048007935066598
  %189 = extractelement <4 x i64> %153, i64 3
  %190 = xor i64 %189, 7336514198459093435
  br label %355

191:                                              ; preds = %191, %5
  %192 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %223, %191 ]
  %193 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %210, %191 ]
  %194 = phi i64 [ 0, %5 ], [ %224, %191 ]
  %195 = shl nuw nsw i64 %194, 6
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 %195
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %197, i32 0, i32 3, i32 1)
  %198 = shl nuw nsw i64 %194, 3
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 %198
  %200 = load <4 x i64>, ptr %196, align 1
  %201 = load <4 x i64>, ptr %199, align 8
  %202 = xor <4 x i64> %201, %200
  %203 = bitcast <4 x i64> %202 to <8 x i32>
  %204 = shufflevector <8 x i32> %203, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %205 = bitcast <8 x i32> %204 to <4 x i64>
  %206 = and <4 x i64> %202, splat (i64 4294967295)
  %207 = and <4 x i64> %205, splat (i64 4294967295)
  %208 = mul nuw <4 x i64> %207, %206
  %209 = add <4 x i64> %200, %193
  %210 = add <4 x i64> %209, %208
  %211 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %212 = load <4 x i64>, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %199, i64 32
  %214 = load <4 x i64>, ptr %213, align 8
  %215 = xor <4 x i64> %214, %212
  %216 = bitcast <4 x i64> %215 to <8 x i32>
  %217 = shufflevector <8 x i32> %216, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %218 = bitcast <8 x i32> %217 to <4 x i64>
  %219 = and <4 x i64> %215, splat (i64 4294967295)
  %220 = and <4 x i64> %218, splat (i64 4294967295)
  %221 = mul nuw <4 x i64> %220, %219
  %222 = add <4 x i64> %212, %192
  %223 = add <4 x i64> %222, %221
  %224 = add nuw nsw i64 %194, 1
  %225 = icmp eq i64 %224, 16
  br i1 %225, label %226, label %191

226:                                              ; preds = %191
  %227 = lshr <4 x i64> %210, splat (i64 47)
  %228 = load <4 x i64>, ptr %37, align 8
  %229 = xor <4 x i64> %227, %228
  %230 = xor <4 x i64> %229, %210
  %231 = bitcast <4 x i64> %230 to <8 x i32>
  %232 = shufflevector <8 x i32> %231, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %233 = bitcast <8 x i32> %232 to <4 x i64>
  %234 = and <4 x i64> %230, splat (i64 4294967295)
  %235 = mul nuw <4 x i64> %234, splat (i64 2654435761)
  %236 = mul <4 x i64> %233, splat (i64 -7046029290881679360)
  %237 = lshr <4 x i64> %223, splat (i64 47)
  %238 = load <4 x i64>, ptr %45, align 8
  %239 = xor <4 x i64> %237, %238
  %240 = xor <4 x i64> %239, %223
  %241 = bitcast <4 x i64> %240 to <8 x i32>
  %242 = shufflevector <8 x i32> %241, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %243 = bitcast <8 x i32> %242 to <4 x i64>
  %244 = and <4 x i64> %240, splat (i64 4294967295)
  %245 = mul nuw <4 x i64> %244, splat (i64 2654435761)
  %246 = mul <4 x i64> %243, splat (i64 -7046029290881679360)
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %248, i32 0, i32 3, i32 1)
  %249 = load <4 x i64>, ptr %247, align 1
  %250 = load <4 x i64>, ptr %3, align 8
  %251 = xor <4 x i64> %250, %249
  %252 = bitcast <4 x i64> %251 to <8 x i32>
  %253 = shufflevector <8 x i32> %252, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %254 = bitcast <8 x i32> %253 to <4 x i64>
  %255 = and <4 x i64> %251, splat (i64 4294967295)
  %256 = and <4 x i64> %254, splat (i64 4294967295)
  %257 = mul nuw <4 x i64> %256, %255
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %259 = load <4 x i64>, ptr %258, align 1
  %260 = load <4 x i64>, ptr %13, align 8
  %261 = xor <4 x i64> %260, %259
  %262 = bitcast <4 x i64> %261 to <8 x i32>
  %263 = shufflevector <8 x i32> %262, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %264 = bitcast <8 x i32> %263 to <4 x i64>
  %265 = and <4 x i64> %261, splat (i64 4294967295)
  %266 = and <4 x i64> %264, splat (i64 4294967295)
  %267 = mul nuw <4 x i64> %266, %265
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %269 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %270 = load <4 x i64>, ptr %268, align 1
  %271 = load <4 x i64>, ptr %269, align 1
  %272 = xor <4 x i64> %271, %270
  %273 = bitcast <4 x i64> %272 to <8 x i32>
  %274 = shufflevector <8 x i32> %273, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %275 = bitcast <8 x i32> %274 to <4 x i64>
  %276 = and <4 x i64> %272, splat (i64 4294967295)
  %277 = and <4 x i64> %275, splat (i64 4294967295)
  %278 = mul nuw <4 x i64> %277, %276
  %279 = add <4 x i64> %235, %249
  %280 = add <4 x i64> %279, %236
  %281 = add <4 x i64> %280, %270
  %282 = add <4 x i64> %281, %257
  %283 = add <4 x i64> %282, %278
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %285 = load <4 x i64>, ptr %284, align 1
  %286 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %287 = load <4 x i64>, ptr %286, align 1
  %288 = xor <4 x i64> %287, %285
  %289 = bitcast <4 x i64> %288 to <8 x i32>
  %290 = shufflevector <8 x i32> %289, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %291 = bitcast <8 x i32> %290 to <4 x i64>
  %292 = and <4 x i64> %288, splat (i64 4294967295)
  %293 = and <4 x i64> %291, splat (i64 4294967295)
  %294 = mul nuw <4 x i64> %293, %292
  %295 = add <4 x i64> %259, %245
  %296 = add <4 x i64> %295, %246
  %297 = add <4 x i64> %296, %285
  %298 = add <4 x i64> %297, %267
  %299 = add <4 x i64> %298, %294
  %300 = extractelement <4 x i64> %283, i64 0
  %301 = bitcast <4 x i64> %250 to i256
  %302 = lshr i256 %301, 88
  %303 = trunc i256 %302 to i64
  %304 = xor i64 %300, %303
  %305 = extractelement <4 x i64> %283, i64 1
  %306 = lshr i256 %301, 152
  %307 = trunc i256 %306 to i64
  %308 = xor i64 %305, %307
  %309 = zext i64 %304 to i128
  %310 = zext i64 %308 to i128
  %311 = mul nuw i128 %310, %309
  %312 = lshr i128 %311, 64
  %313 = xor i128 %312, %311
  %314 = trunc i128 %313 to i64
  %315 = add i64 %314, -2999706540330828780
  %316 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %317 = extractelement <4 x i64> %283, i64 2
  %318 = load i64, ptr %316, align 1
  %319 = xor i64 %317, %318
  %320 = extractelement <4 x i64> %283, i64 3
  %321 = bitcast <4 x i64> %260 to i256
  %322 = lshr i256 %321, 24
  %323 = trunc i256 %322 to i64
  %324 = xor i64 %320, %323
  %325 = zext i64 %319 to i128
  %326 = zext i64 %324 to i128
  %327 = mul nuw i128 %326, %325
  %328 = lshr i128 %327, 64
  %329 = xor i128 %328, %327
  %330 = trunc i128 %329 to i64
  %331 = add i64 %315, %330
  %332 = extractelement <4 x i64> %299, i64 0
  %333 = lshr i256 %321, 88
  %334 = trunc i256 %333 to i64
  %335 = xor i64 %332, %334
  %336 = extractelement <4 x i64> %299, i64 1
  %337 = lshr i256 %321, 152
  %338 = trunc i256 %337 to i64
  %339 = xor i64 %336, %338
  %340 = zext i64 %335 to i128
  %341 = zext i64 %339 to i128
  %342 = mul nuw i128 %341, %340
  %343 = lshr i128 %342, 64
  %344 = xor i128 %343, %342
  %345 = trunc i128 %344 to i64
  %346 = add i64 %331, %345
  %347 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %348 = extractelement <4 x i64> %299, i64 2
  %349 = load i64, ptr %347, align 1
  %350 = xor i64 %348, %349
  %351 = extractelement <4 x i64> %299, i64 3
  %352 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %353 = load i64, ptr %352, align 1
  %354 = xor i64 %351, %353
  br label %355

355:                                              ; preds = %88, %226
  %356 = phi i64 [ %350, %226 ], [ %188, %88 ]
  %357 = phi i64 [ %354, %226 ], [ %190, %88 ]
  %358 = phi i64 [ %346, %226 ], [ %186, %88 ]
  %359 = zext i64 %356 to i128
  %360 = zext i64 %357 to i128
  %361 = mul nuw i128 %360, %359
  %362 = lshr i128 %361, 64
  %363 = xor i128 %362, %361
  %364 = trunc i128 %363 to i64
  %365 = add i64 %358, %364
  %366 = lshr i64 %365, 37
  %367 = xor i64 %366, %365
  %368 = mul i64 %367, 1609587929392839161
  %369 = lshr i64 %368, 32
  %370 = xor i64 %369, %368
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #3
  ret i64 %370
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
