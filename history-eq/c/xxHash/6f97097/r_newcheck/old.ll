; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6f97097/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6f97097/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i64 @target_64seed_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef 256, i64 noundef %1) #7
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @target_128seed_len256(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %1, i64 noundef 256, i64 noundef %2)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @target_64_len256(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %0, i64 noundef 256) #7
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
  %4 = alloca [192 x i8], align 32
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %200

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %77, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %54
  %12 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %9 ], [ %74, %54 ]
  %13 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %64, %54 ]
  %14 = phi i64 [ 0, %9 ], [ %75, %54 ]
  %15 = shl nuw i64 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  br label %17

17:                                               ; preds = %11, %17
  %18 = phi <4 x i64> [ %12, %11 ], [ %51, %17 ]
  %19 = phi <4 x i64> [ %13, %11 ], [ %37, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %52, %17 ]
  %21 = shl nuw nsw i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1)
  %24 = shl nuw nsw i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1
  %27 = load <4 x i64>, ptr %25, align 8
  %28 = xor <4 x i64> %27, %26
  %29 = bitcast <4 x i64> %28 to <8 x i32>
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %31 = bitcast <8 x i32> %30 to <4 x i64>
  %32 = and <4 x i64> %28, splat (i64 4294967295)
  %33 = and <4 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <4 x i64> %33, %32
  %35 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %36 = add <4 x i64> %19, %35
  %37 = add <4 x i64> %36, %34
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %41 = load <4 x i64>, ptr %40, align 8
  %42 = xor <4 x i64> %41, %39
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %50 = add <4 x i64> %18, %49
  %51 = add <4 x i64> %50, %48
  %52 = add nuw nsw i64 %20, 1
  %53 = icmp eq i64 %52, 16
  br i1 %53, label %54, label %17

54:                                               ; preds = %17
  %55 = lshr <4 x i64> %37, splat (i64 47)
  %56 = xor <4 x i64> %55, %37
  %57 = xor <4 x i64> %56, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %63, %62
  %65 = lshr <4 x i64> %51, splat (i64 47)
  %66 = xor <4 x i64> %65, %51
  %67 = xor <4 x i64> %66, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, splat (i64 2654435761)
  %73 = mul <4 x i64> %70, splat (i64 -7046029290881679360)
  %74 = add <4 x i64> %73, %72
  %75 = add nuw nsw i64 %14, 1
  %76 = icmp eq i64 %75, %10
  br i1 %76, label %77, label %11

77:                                               ; preds = %54, %6
  %78 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %74, %54 ]
  %79 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %64, %54 ]
  %80 = and i64 %7, -1024
  %81 = lshr i64 %7, 6
  %82 = and i64 %81, 15
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %77, %85
  %86 = phi <4 x i64> [ %119, %85 ], [ %78, %77 ]
  %87 = phi <4 x i64> [ %105, %85 ], [ %79, %77 ]
  %88 = phi i64 [ %120, %85 ], [ 0, %77 ]
  %89 = shl nuw i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1)
  %92 = shl nuw nsw i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1
  %95 = load <4 x i64>, ptr %93, align 8
  %96 = xor <4 x i64> %95, %94
  %97 = bitcast <4 x i64> %96 to <8 x i32>
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %99 = bitcast <8 x i32> %98 to <4 x i64>
  %100 = and <4 x i64> %96, splat (i64 4294967295)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %104 = add <4 x i64> %87, %103
  %105 = add <4 x i64> %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %109 = load <4 x i64>, ptr %108, align 8
  %110 = xor <4 x i64> %109, %107
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %86, %117
  %119 = add <4 x i64> %118, %116
  %120 = add nuw nsw i64 %88, 1
  %121 = icmp eq i64 %120, %82
  br i1 %121, label %122, label %85

122:                                              ; preds = %85, %77
  %123 = phi <4 x i64> [ %78, %77 ], [ %119, %85 ]
  %124 = phi <4 x i64> [ %79, %77 ], [ %105, %85 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %126 = getelementptr inbounds i8, ptr %125, i64 -64
  %127 = load <4 x i64>, ptr %126, align 1
  %128 = xor <4 x i64> %127, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %124, %135
  %137 = add <4 x i64> %136, %134
  %138 = getelementptr inbounds i8, ptr %125, i64 -32
  %139 = load <4 x i64>, ptr %138, align 1
  %140 = xor <4 x i64> %139, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %141 = bitcast <4 x i64> %140 to <8 x i32>
  %142 = shufflevector <8 x i32> %141, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %143 = bitcast <8 x i32> %142 to <4 x i64>
  %144 = and <4 x i64> %140, splat (i64 4294967295)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %123, %147
  %149 = add <4 x i64> %148, %146
  %150 = mul i64 %1, -7046029288634856825
  %151 = extractelement <4 x i64> %137, i64 0
  %152 = xor i64 %151, 7914194659941938988
  %153 = extractelement <4 x i64> %137, i64 1
  %154 = xor i64 %153, -6611157965513653271
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = extractelement <4 x i64> %137, i64 2
  %163 = xor i64 %162, -1839215637059881052
  %164 = extractelement <4 x i64> %137, i64 3
  %165 = xor i64 %164, -3433288310154277810
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %161, %171
  %173 = extractelement <4 x i64> %149, i64 0
  %174 = xor i64 %173, 5046485836271438973
  %175 = extractelement <4 x i64> %149, i64 1
  %176 = xor i64 %175, -8055285457383852172
  %177 = zext i64 %174 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %172, %182
  %184 = extractelement <4 x i64> %149, i64 2
  %185 = xor i64 %184, 5920048007935066598
  %186 = extractelement <4 x i64> %149, i64 3
  %187 = xor i64 %186, 7336514198459093435
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %183, %193
  %195 = lshr i64 %194, 37
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, 1609587791953885689
  %198 = lshr i64 %197, 32
  %199 = xor i64 %198, %197
  br label %435

200:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #7
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %201 = sub i64 0, %2
  %202 = insertelement <4 x i64> poison, i64 %2, i64 0
  %203 = insertelement <4 x i64> %202, i64 %201, i64 1
  %204 = insertelement <4 x i64> %203, i64 %2, i64 2
  %205 = insertelement <4 x i64> %204, i64 %201, i64 3
  %206 = freeze ptr %4
  %207 = add <4 x i64> %205, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %207, ptr %206, align 32
  %208 = add <4 x i64> %205, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %209 = getelementptr inbounds nuw i8, ptr %206, i64 32
  store <4 x i64> %208, ptr %209, align 32
  %210 = add <4 x i64> %205, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %211 = getelementptr inbounds nuw i8, ptr %206, i64 64
  store <4 x i64> %210, ptr %211, align 32
  %212 = add <4 x i64> %205, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %213 = getelementptr inbounds nuw i8, ptr %206, i64 96
  store <4 x i64> %212, ptr %213, align 32
  %214 = add <4 x i64> %205, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %215 = getelementptr inbounds nuw i8, ptr %206, i64 128
  store <4 x i64> %214, ptr %215, align 32
  %216 = add <4 x i64> %205, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %217 = getelementptr inbounds nuw i8, ptr %206, i64 160
  store <4 x i64> %216, ptr %217, align 32
  %218 = add i64 %1, -1
  %219 = icmp ult i64 %218, 1024
  br i1 %219, label %292, label %220

220:                                              ; preds = %200
  %221 = lshr i64 %218, 10
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %223 = load <4 x i64>, ptr %222, align 32
  %224 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %225 = load <4 x i64>, ptr %224, align 32
  br label %226

226:                                              ; preds = %220, %269
  %227 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %220 ], [ %289, %269 ]
  %228 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %220 ], [ %279, %269 ]
  %229 = phi i64 [ 0, %220 ], [ %290, %269 ]
  %230 = shl nuw i64 %229, 10
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 %230
  br label %232

232:                                              ; preds = %226, %232
  %233 = phi <4 x i64> [ %227, %226 ], [ %266, %232 ]
  %234 = phi <4 x i64> [ %228, %226 ], [ %252, %232 ]
  %235 = phi i64 [ 0, %226 ], [ %267, %232 ]
  %236 = shl nuw nsw i64 %235, 6
  %237 = getelementptr inbounds nuw i8, ptr %231, i64 %236
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %238, i32 0, i32 3, i32 1)
  %239 = shl nuw nsw i64 %235, 3
  %240 = getelementptr inbounds nuw i8, ptr %4, i64 %239
  %241 = load <4 x i64>, ptr %237, align 1
  %242 = load <4 x i64>, ptr %240, align 8
  %243 = xor <4 x i64> %242, %241
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = shufflevector <4 x i64> %241, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %251 = add <4 x i64> %234, %250
  %252 = add <4 x i64> %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %237, i64 32
  %254 = load <4 x i64>, ptr %253, align 1
  %255 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %256 = load <4 x i64>, ptr %255, align 8
  %257 = xor <4 x i64> %256, %254
  %258 = bitcast <4 x i64> %257 to <8 x i32>
  %259 = shufflevector <8 x i32> %258, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %260 = bitcast <8 x i32> %259 to <4 x i64>
  %261 = and <4 x i64> %257, splat (i64 4294967295)
  %262 = and <4 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <4 x i64> %262, %261
  %264 = shufflevector <4 x i64> %254, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %265 = add <4 x i64> %233, %264
  %266 = add <4 x i64> %265, %263
  %267 = add nuw nsw i64 %235, 1
  %268 = icmp eq i64 %267, 16
  br i1 %268, label %269, label %232

269:                                              ; preds = %232
  %270 = lshr <4 x i64> %252, splat (i64 47)
  %271 = xor <4 x i64> %223, %270
  %272 = xor <4 x i64> %271, %252
  %273 = bitcast <4 x i64> %272 to <8 x i32>
  %274 = shufflevector <8 x i32> %273, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %275 = bitcast <8 x i32> %274 to <4 x i64>
  %276 = and <4 x i64> %272, splat (i64 4294967295)
  %277 = mul nuw <4 x i64> %276, splat (i64 2654435761)
  %278 = mul <4 x i64> %275, splat (i64 -7046029290881679360)
  %279 = add <4 x i64> %278, %277
  %280 = lshr <4 x i64> %266, splat (i64 47)
  %281 = xor <4 x i64> %225, %280
  %282 = xor <4 x i64> %281, %266
  %283 = bitcast <4 x i64> %282 to <8 x i32>
  %284 = shufflevector <8 x i32> %283, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %285 = bitcast <8 x i32> %284 to <4 x i64>
  %286 = and <4 x i64> %282, splat (i64 4294967295)
  %287 = mul nuw <4 x i64> %286, splat (i64 2654435761)
  %288 = mul <4 x i64> %285, splat (i64 -7046029290881679360)
  %289 = add <4 x i64> %288, %287
  %290 = add nuw nsw i64 %229, 1
  %291 = icmp eq i64 %290, %221
  br i1 %291, label %292, label %226

292:                                              ; preds = %269, %200
  %293 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %200 ], [ %289, %269 ]
  %294 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %200 ], [ %279, %269 ]
  %295 = and i64 %218, -1024
  %296 = lshr i64 %218, 6
  %297 = and i64 %296, 15
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 %295
  %299 = icmp eq i64 %297, 0
  br i1 %299, label %337, label %300

300:                                              ; preds = %292, %300
  %301 = phi <4 x i64> [ %334, %300 ], [ %293, %292 ]
  %302 = phi <4 x i64> [ %320, %300 ], [ %294, %292 ]
  %303 = phi i64 [ %335, %300 ], [ 0, %292 ]
  %304 = shl nuw i64 %303, 6
  %305 = getelementptr inbounds nuw i8, ptr %298, i64 %304
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %306, i32 0, i32 3, i32 1)
  %307 = shl nuw nsw i64 %303, 3
  %308 = getelementptr inbounds nuw i8, ptr %4, i64 %307
  %309 = load <4 x i64>, ptr %305, align 1
  %310 = load <4 x i64>, ptr %308, align 8
  %311 = xor <4 x i64> %310, %309
  %312 = bitcast <4 x i64> %311 to <8 x i32>
  %313 = shufflevector <8 x i32> %312, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %314 = bitcast <8 x i32> %313 to <4 x i64>
  %315 = and <4 x i64> %311, splat (i64 4294967295)
  %316 = and <4 x i64> %314, splat (i64 4294967295)
  %317 = mul nuw <4 x i64> %316, %315
  %318 = shufflevector <4 x i64> %309, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %319 = add <4 x i64> %302, %318
  %320 = add <4 x i64> %319, %317
  %321 = getelementptr inbounds nuw i8, ptr %305, i64 32
  %322 = load <4 x i64>, ptr %321, align 1
  %323 = getelementptr inbounds nuw i8, ptr %308, i64 32
  %324 = load <4 x i64>, ptr %323, align 8
  %325 = xor <4 x i64> %324, %322
  %326 = bitcast <4 x i64> %325 to <8 x i32>
  %327 = shufflevector <8 x i32> %326, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %328 = bitcast <8 x i32> %327 to <4 x i64>
  %329 = and <4 x i64> %325, splat (i64 4294967295)
  %330 = and <4 x i64> %328, splat (i64 4294967295)
  %331 = mul nuw <4 x i64> %330, %329
  %332 = shufflevector <4 x i64> %322, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %333 = add <4 x i64> %301, %332
  %334 = add <4 x i64> %333, %331
  %335 = add nuw nsw i64 %303, 1
  %336 = icmp eq i64 %335, %297
  br i1 %336, label %337, label %300

337:                                              ; preds = %300, %292
  %338 = phi <4 x i64> [ %293, %292 ], [ %334, %300 ]
  %339 = phi <4 x i64> [ %294, %292 ], [ %320, %300 ]
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %341 = getelementptr inbounds i8, ptr %340, i64 -64
  %342 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %343 = load <4 x i64>, ptr %341, align 1
  %344 = load <4 x i64>, ptr %342, align 1
  %345 = xor <4 x i64> %344, %343
  %346 = bitcast <4 x i64> %345 to <8 x i32>
  %347 = shufflevector <8 x i32> %346, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %348 = bitcast <8 x i32> %347 to <4 x i64>
  %349 = and <4 x i64> %345, splat (i64 4294967295)
  %350 = and <4 x i64> %348, splat (i64 4294967295)
  %351 = mul nuw <4 x i64> %350, %349
  %352 = shufflevector <4 x i64> %343, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %353 = add <4 x i64> %339, %352
  %354 = add <4 x i64> %353, %351
  %355 = getelementptr inbounds i8, ptr %340, i64 -32
  %356 = load <4 x i64>, ptr %355, align 1
  %357 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %358 = load <4 x i64>, ptr %357, align 1
  %359 = xor <4 x i64> %358, %356
  %360 = bitcast <4 x i64> %359 to <8 x i32>
  %361 = shufflevector <8 x i32> %360, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %362 = bitcast <8 x i32> %361 to <4 x i64>
  %363 = and <4 x i64> %359, splat (i64 4294967295)
  %364 = and <4 x i64> %362, splat (i64 4294967295)
  %365 = mul nuw <4 x i64> %364, %363
  %366 = shufflevector <4 x i64> %356, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %367 = add <4 x i64> %338, %366
  %368 = add <4 x i64> %367, %365
  %369 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %370 = mul i64 %1, -7046029288634856825
  %371 = extractelement <4 x i64> %354, i64 0
  %372 = load i64, ptr %369, align 1
  %373 = xor i64 %372, %371
  %374 = extractelement <4 x i64> %354, i64 1
  %375 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %376 = load i64, ptr %375, align 1
  %377 = xor i64 %376, %374
  %378 = zext i64 %373 to i128
  %379 = zext i64 %377 to i128
  %380 = mul nuw i128 %379, %378
  %381 = lshr i128 %380, 64
  %382 = xor i128 %381, %380
  %383 = trunc i128 %382 to i64
  %384 = add i64 %370, %383
  %385 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %386 = extractelement <4 x i64> %354, i64 2
  %387 = load i64, ptr %385, align 1
  %388 = xor i64 %387, %386
  %389 = extractelement <4 x i64> %354, i64 3
  %390 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %391 = load i64, ptr %390, align 1
  %392 = xor i64 %391, %389
  %393 = zext i64 %388 to i128
  %394 = zext i64 %392 to i128
  %395 = mul nuw i128 %394, %393
  %396 = lshr i128 %395, 64
  %397 = xor i128 %396, %395
  %398 = trunc i128 %397 to i64
  %399 = add i64 %384, %398
  %400 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %401 = extractelement <4 x i64> %368, i64 0
  %402 = load i64, ptr %400, align 1
  %403 = xor i64 %402, %401
  %404 = extractelement <4 x i64> %368, i64 1
  %405 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %406 = load i64, ptr %405, align 1
  %407 = xor i64 %406, %404
  %408 = zext i64 %403 to i128
  %409 = zext i64 %407 to i128
  %410 = mul nuw i128 %409, %408
  %411 = lshr i128 %410, 64
  %412 = xor i128 %411, %410
  %413 = trunc i128 %412 to i64
  %414 = add i64 %399, %413
  %415 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %416 = extractelement <4 x i64> %368, i64 2
  %417 = load i64, ptr %415, align 1
  %418 = xor i64 %417, %416
  %419 = extractelement <4 x i64> %368, i64 3
  %420 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %421 = load i64, ptr %420, align 1
  %422 = xor i64 %421, %419
  %423 = zext i64 %418 to i128
  %424 = zext i64 %422 to i128
  %425 = mul nuw i128 %424, %423
  %426 = lshr i128 %425, 64
  %427 = xor i128 %426, %425
  %428 = trunc i128 %427 to i64
  %429 = add i64 %414, %428
  %430 = lshr i64 %429, 37
  %431 = xor i64 %430, %429
  %432 = mul i64 %431, 1609587791953885689
  %433 = lshr i64 %432, 32
  %434 = xor i64 %433, %432
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #7
  br label %435

435:                                              ; preds = %122, %337
  %436 = phi i64 [ %199, %122 ], [ %434, %337 ]
  ret i64 %436
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
  %4 = alloca [192 x i8], align 32
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %243

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %77, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %54
  %12 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %9 ], [ %74, %54 ]
  %13 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %64, %54 ]
  %14 = phi i64 [ 0, %9 ], [ %75, %54 ]
  %15 = shl nuw i64 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  br label %17

17:                                               ; preds = %11, %17
  %18 = phi <4 x i64> [ %12, %11 ], [ %51, %17 ]
  %19 = phi <4 x i64> [ %13, %11 ], [ %37, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %52, %17 ]
  %21 = shl nuw nsw i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1)
  %24 = shl nuw nsw i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1
  %27 = load <4 x i64>, ptr %25, align 8
  %28 = xor <4 x i64> %27, %26
  %29 = bitcast <4 x i64> %28 to <8 x i32>
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %31 = bitcast <8 x i32> %30 to <4 x i64>
  %32 = and <4 x i64> %28, splat (i64 4294967295)
  %33 = and <4 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <4 x i64> %33, %32
  %35 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %36 = add <4 x i64> %19, %35
  %37 = add <4 x i64> %36, %34
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %41 = load <4 x i64>, ptr %40, align 8
  %42 = xor <4 x i64> %41, %39
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %50 = add <4 x i64> %18, %49
  %51 = add <4 x i64> %50, %48
  %52 = add nuw nsw i64 %20, 1
  %53 = icmp eq i64 %52, 16
  br i1 %53, label %54, label %17

54:                                               ; preds = %17
  %55 = lshr <4 x i64> %37, splat (i64 47)
  %56 = xor <4 x i64> %55, %37
  %57 = xor <4 x i64> %56, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %63, %62
  %65 = lshr <4 x i64> %51, splat (i64 47)
  %66 = xor <4 x i64> %65, %51
  %67 = xor <4 x i64> %66, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, splat (i64 2654435761)
  %73 = mul <4 x i64> %70, splat (i64 -7046029290881679360)
  %74 = add <4 x i64> %73, %72
  %75 = add nuw nsw i64 %14, 1
  %76 = icmp eq i64 %75, %10
  br i1 %76, label %77, label %11

77:                                               ; preds = %54, %6
  %78 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %74, %54 ]
  %79 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %64, %54 ]
  %80 = and i64 %7, -1024
  %81 = lshr i64 %7, 6
  %82 = and i64 %81, 15
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %77, %85
  %86 = phi <4 x i64> [ %119, %85 ], [ %78, %77 ]
  %87 = phi <4 x i64> [ %105, %85 ], [ %79, %77 ]
  %88 = phi i64 [ %120, %85 ], [ 0, %77 ]
  %89 = shl nuw i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1)
  %92 = shl nuw nsw i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1
  %95 = load <4 x i64>, ptr %93, align 8
  %96 = xor <4 x i64> %95, %94
  %97 = bitcast <4 x i64> %96 to <8 x i32>
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %99 = bitcast <8 x i32> %98 to <4 x i64>
  %100 = and <4 x i64> %96, splat (i64 4294967295)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %104 = add <4 x i64> %87, %103
  %105 = add <4 x i64> %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %109 = load <4 x i64>, ptr %108, align 8
  %110 = xor <4 x i64> %109, %107
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %86, %117
  %119 = add <4 x i64> %118, %116
  %120 = add nuw nsw i64 %88, 1
  %121 = icmp eq i64 %120, %82
  br i1 %121, label %122, label %85

122:                                              ; preds = %85, %77
  %123 = phi <4 x i64> [ %78, %77 ], [ %119, %85 ]
  %124 = phi <4 x i64> [ %79, %77 ], [ %105, %85 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %126 = getelementptr inbounds i8, ptr %125, i64 -64
  %127 = load <4 x i64>, ptr %126, align 1
  %128 = xor <4 x i64> %127, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %124, %135
  %137 = add <4 x i64> %136, %134
  %138 = getelementptr inbounds i8, ptr %125, i64 -32
  %139 = load <4 x i64>, ptr %138, align 1
  %140 = xor <4 x i64> %139, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %141 = bitcast <4 x i64> %140 to <8 x i32>
  %142 = shufflevector <8 x i32> %141, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %143 = bitcast <8 x i32> %142 to <4 x i64>
  %144 = and <4 x i64> %140, splat (i64 4294967295)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %123, %147
  %149 = add <4 x i64> %148, %146
  %150 = mul i64 %1, -7046029288634856825
  %151 = extractelement <4 x i64> %137, i64 0
  %152 = xor i64 %151, 7914194659941938988
  %153 = extractelement <4 x i64> %137, i64 1
  %154 = xor i64 %153, -6611157965513653271
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = extractelement <4 x i64> %137, i64 2
  %163 = xor i64 %162, -1839215637059881052
  %164 = extractelement <4 x i64> %137, i64 3
  %165 = xor i64 %164, -3433288310154277810
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %161, %171
  %173 = extractelement <4 x i64> %149, i64 0
  %174 = xor i64 %173, 5046485836271438973
  %175 = extractelement <4 x i64> %149, i64 1
  %176 = xor i64 %175, -8055285457383852172
  %177 = zext i64 %174 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %172, %182
  %184 = extractelement <4 x i64> %149, i64 2
  %185 = xor i64 %184, 5920048007935066598
  %186 = extractelement <4 x i64> %149, i64 3
  %187 = xor i64 %186, 7336514198459093435
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %183, %193
  %195 = lshr i64 %194, 37
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, 1609587791953885689
  %198 = lshr i64 %197, 32
  %199 = xor i64 %198, %197
  %200 = mul i64 %1, -4417276706812531889
  %201 = xor i64 %200, -1
  %202 = xor i64 %151, -2753530472436770380
  %203 = xor i64 %153, 3784058077962335096
  %204 = zext i64 %202 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %209, %201
  %211 = xor i64 %162, -360392965937173549
  %212 = xor i64 %164, -5237161843349560557
  %213 = zext i64 %211 to i128
  %214 = zext i64 %212 to i128
  %215 = mul nuw i128 %214, %213
  %216 = lshr i128 %215, 64
  %217 = xor i128 %216, %215
  %218 = trunc i128 %217 to i64
  %219 = add i64 %210, %218
  %220 = xor i64 %173, 2965150961192524528
  %221 = xor i64 %175, 9032178055121889492
  %222 = zext i64 %220 to i128
  %223 = zext i64 %221 to i128
  %224 = mul nuw i128 %223, %222
  %225 = lshr i128 %224, 64
  %226 = xor i128 %225, %224
  %227 = trunc i128 %226 to i64
  %228 = add i64 %219, %227
  %229 = xor i64 %184, 8850058120466833735
  %230 = xor i64 %186, -7669846995664752176
  %231 = zext i64 %229 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %228, %236
  %238 = lshr i64 %237, 37
  %239 = xor i64 %238, %237
  %240 = mul i64 %239, 1609587791953885689
  %241 = lshr i64 %240, 32
  %242 = xor i64 %241, %240
  br label %537

243:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #7
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %244 = sub i64 0, %2
  %245 = insertelement <4 x i64> poison, i64 %2, i64 0
  %246 = insertelement <4 x i64> %245, i64 %244, i64 1
  %247 = insertelement <4 x i64> %246, i64 %2, i64 2
  %248 = insertelement <4 x i64> %247, i64 %244, i64 3
  %249 = freeze ptr %4
  %250 = add <4 x i64> %248, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %250, ptr %249, align 32
  %251 = add <4 x i64> %248, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 32
  store <4 x i64> %251, ptr %252, align 32
  %253 = add <4 x i64> %248, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %254 = getelementptr inbounds nuw i8, ptr %249, i64 64
  store <4 x i64> %253, ptr %254, align 32
  %255 = add <4 x i64> %248, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %256 = getelementptr inbounds nuw i8, ptr %249, i64 96
  store <4 x i64> %255, ptr %256, align 32
  %257 = add <4 x i64> %248, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %258 = getelementptr inbounds nuw i8, ptr %249, i64 128
  store <4 x i64> %257, ptr %258, align 32
  %259 = add <4 x i64> %248, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %260 = getelementptr inbounds nuw i8, ptr %249, i64 160
  store <4 x i64> %259, ptr %260, align 32
  %261 = add i64 %1, -1
  %262 = icmp ult i64 %261, 1024
  br i1 %262, label %335, label %263

263:                                              ; preds = %243
  %264 = lshr i64 %261, 10
  %265 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %266 = load <4 x i64>, ptr %265, align 32
  %267 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %268 = load <4 x i64>, ptr %267, align 32
  br label %269

269:                                              ; preds = %263, %312
  %270 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %263 ], [ %332, %312 ]
  %271 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %263 ], [ %322, %312 ]
  %272 = phi i64 [ 0, %263 ], [ %333, %312 ]
  %273 = shl nuw i64 %272, 10
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 %273
  br label %275

275:                                              ; preds = %269, %275
  %276 = phi <4 x i64> [ %270, %269 ], [ %309, %275 ]
  %277 = phi <4 x i64> [ %271, %269 ], [ %295, %275 ]
  %278 = phi i64 [ 0, %269 ], [ %310, %275 ]
  %279 = shl nuw nsw i64 %278, 6
  %280 = getelementptr inbounds nuw i8, ptr %274, i64 %279
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %281, i32 0, i32 3, i32 1)
  %282 = shl nuw nsw i64 %278, 3
  %283 = getelementptr inbounds nuw i8, ptr %4, i64 %282
  %284 = load <4 x i64>, ptr %280, align 1
  %285 = load <4 x i64>, ptr %283, align 8
  %286 = xor <4 x i64> %285, %284
  %287 = bitcast <4 x i64> %286 to <8 x i32>
  %288 = shufflevector <8 x i32> %287, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %289 = bitcast <8 x i32> %288 to <4 x i64>
  %290 = and <4 x i64> %286, splat (i64 4294967295)
  %291 = and <4 x i64> %289, splat (i64 4294967295)
  %292 = mul nuw <4 x i64> %291, %290
  %293 = shufflevector <4 x i64> %284, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %294 = add <4 x i64> %277, %293
  %295 = add <4 x i64> %294, %292
  %296 = getelementptr inbounds nuw i8, ptr %280, i64 32
  %297 = load <4 x i64>, ptr %296, align 1
  %298 = getelementptr inbounds nuw i8, ptr %283, i64 32
  %299 = load <4 x i64>, ptr %298, align 8
  %300 = xor <4 x i64> %299, %297
  %301 = bitcast <4 x i64> %300 to <8 x i32>
  %302 = shufflevector <8 x i32> %301, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %303 = bitcast <8 x i32> %302 to <4 x i64>
  %304 = and <4 x i64> %300, splat (i64 4294967295)
  %305 = and <4 x i64> %303, splat (i64 4294967295)
  %306 = mul nuw <4 x i64> %305, %304
  %307 = shufflevector <4 x i64> %297, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %308 = add <4 x i64> %276, %307
  %309 = add <4 x i64> %308, %306
  %310 = add nuw nsw i64 %278, 1
  %311 = icmp eq i64 %310, 16
  br i1 %311, label %312, label %275

312:                                              ; preds = %275
  %313 = lshr <4 x i64> %295, splat (i64 47)
  %314 = xor <4 x i64> %266, %313
  %315 = xor <4 x i64> %314, %295
  %316 = bitcast <4 x i64> %315 to <8 x i32>
  %317 = shufflevector <8 x i32> %316, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %318 = bitcast <8 x i32> %317 to <4 x i64>
  %319 = and <4 x i64> %315, splat (i64 4294967295)
  %320 = mul nuw <4 x i64> %319, splat (i64 2654435761)
  %321 = mul <4 x i64> %318, splat (i64 -7046029290881679360)
  %322 = add <4 x i64> %321, %320
  %323 = lshr <4 x i64> %309, splat (i64 47)
  %324 = xor <4 x i64> %268, %323
  %325 = xor <4 x i64> %324, %309
  %326 = bitcast <4 x i64> %325 to <8 x i32>
  %327 = shufflevector <8 x i32> %326, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %328 = bitcast <8 x i32> %327 to <4 x i64>
  %329 = and <4 x i64> %325, splat (i64 4294967295)
  %330 = mul nuw <4 x i64> %329, splat (i64 2654435761)
  %331 = mul <4 x i64> %328, splat (i64 -7046029290881679360)
  %332 = add <4 x i64> %331, %330
  %333 = add nuw nsw i64 %272, 1
  %334 = icmp eq i64 %333, %264
  br i1 %334, label %335, label %269

335:                                              ; preds = %312, %243
  %336 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %243 ], [ %332, %312 ]
  %337 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %243 ], [ %322, %312 ]
  %338 = and i64 %261, -1024
  %339 = lshr i64 %261, 6
  %340 = and i64 %339, 15
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 %338
  %342 = icmp eq i64 %340, 0
  br i1 %342, label %380, label %343

343:                                              ; preds = %335, %343
  %344 = phi <4 x i64> [ %377, %343 ], [ %336, %335 ]
  %345 = phi <4 x i64> [ %363, %343 ], [ %337, %335 ]
  %346 = phi i64 [ %378, %343 ], [ 0, %335 ]
  %347 = shl nuw i64 %346, 6
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 %347
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %349, i32 0, i32 3, i32 1)
  %350 = shl nuw nsw i64 %346, 3
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 %350
  %352 = load <4 x i64>, ptr %348, align 1
  %353 = load <4 x i64>, ptr %351, align 8
  %354 = xor <4 x i64> %353, %352
  %355 = bitcast <4 x i64> %354 to <8 x i32>
  %356 = shufflevector <8 x i32> %355, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %357 = bitcast <8 x i32> %356 to <4 x i64>
  %358 = and <4 x i64> %354, splat (i64 4294967295)
  %359 = and <4 x i64> %357, splat (i64 4294967295)
  %360 = mul nuw <4 x i64> %359, %358
  %361 = shufflevector <4 x i64> %352, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %362 = add <4 x i64> %345, %361
  %363 = add <4 x i64> %362, %360
  %364 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %365 = load <4 x i64>, ptr %364, align 1
  %366 = getelementptr inbounds nuw i8, ptr %351, i64 32
  %367 = load <4 x i64>, ptr %366, align 8
  %368 = xor <4 x i64> %367, %365
  %369 = bitcast <4 x i64> %368 to <8 x i32>
  %370 = shufflevector <8 x i32> %369, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %371 = bitcast <8 x i32> %370 to <4 x i64>
  %372 = and <4 x i64> %368, splat (i64 4294967295)
  %373 = and <4 x i64> %371, splat (i64 4294967295)
  %374 = mul nuw <4 x i64> %373, %372
  %375 = shufflevector <4 x i64> %365, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %376 = add <4 x i64> %344, %375
  %377 = add <4 x i64> %376, %374
  %378 = add nuw nsw i64 %346, 1
  %379 = icmp eq i64 %378, %340
  br i1 %379, label %380, label %343

380:                                              ; preds = %343, %335
  %381 = phi <4 x i64> [ %336, %335 ], [ %377, %343 ]
  %382 = phi <4 x i64> [ %337, %335 ], [ %363, %343 ]
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %384 = getelementptr inbounds i8, ptr %383, i64 -64
  %385 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %386 = load <4 x i64>, ptr %384, align 1
  %387 = load <4 x i64>, ptr %385, align 1
  %388 = xor <4 x i64> %387, %386
  %389 = bitcast <4 x i64> %388 to <8 x i32>
  %390 = shufflevector <8 x i32> %389, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %391 = bitcast <8 x i32> %390 to <4 x i64>
  %392 = and <4 x i64> %388, splat (i64 4294967295)
  %393 = and <4 x i64> %391, splat (i64 4294967295)
  %394 = mul nuw <4 x i64> %393, %392
  %395 = shufflevector <4 x i64> %386, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %396 = add <4 x i64> %382, %395
  %397 = add <4 x i64> %396, %394
  %398 = getelementptr inbounds i8, ptr %383, i64 -32
  %399 = load <4 x i64>, ptr %398, align 1
  %400 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %401 = load <4 x i64>, ptr %400, align 1
  %402 = xor <4 x i64> %401, %399
  %403 = bitcast <4 x i64> %402 to <8 x i32>
  %404 = shufflevector <8 x i32> %403, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %405 = bitcast <8 x i32> %404 to <4 x i64>
  %406 = and <4 x i64> %402, splat (i64 4294967295)
  %407 = and <4 x i64> %405, splat (i64 4294967295)
  %408 = mul nuw <4 x i64> %407, %406
  %409 = shufflevector <4 x i64> %399, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %410 = add <4 x i64> %381, %409
  %411 = add <4 x i64> %410, %408
  %412 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %413 = mul i64 %1, -7046029288634856825
  %414 = extractelement <4 x i64> %397, i64 0
  %415 = load i64, ptr %412, align 1
  %416 = xor i64 %415, %414
  %417 = extractelement <4 x i64> %397, i64 1
  %418 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %419 = load i64, ptr %418, align 1
  %420 = xor i64 %419, %417
  %421 = zext i64 %416 to i128
  %422 = zext i64 %420 to i128
  %423 = mul nuw i128 %422, %421
  %424 = lshr i128 %423, 64
  %425 = xor i128 %424, %423
  %426 = trunc i128 %425 to i64
  %427 = add i64 %413, %426
  %428 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %429 = extractelement <4 x i64> %397, i64 2
  %430 = load i64, ptr %428, align 1
  %431 = xor i64 %430, %429
  %432 = extractelement <4 x i64> %397, i64 3
  %433 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %434 = load i64, ptr %433, align 1
  %435 = xor i64 %434, %432
  %436 = zext i64 %431 to i128
  %437 = zext i64 %435 to i128
  %438 = mul nuw i128 %437, %436
  %439 = lshr i128 %438, 64
  %440 = xor i128 %439, %438
  %441 = trunc i128 %440 to i64
  %442 = add i64 %427, %441
  %443 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %444 = extractelement <4 x i64> %411, i64 0
  %445 = load i64, ptr %443, align 1
  %446 = xor i64 %445, %444
  %447 = extractelement <4 x i64> %411, i64 1
  %448 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %449 = load i64, ptr %448, align 1
  %450 = xor i64 %449, %447
  %451 = zext i64 %446 to i128
  %452 = zext i64 %450 to i128
  %453 = mul nuw i128 %452, %451
  %454 = lshr i128 %453, 64
  %455 = xor i128 %454, %453
  %456 = trunc i128 %455 to i64
  %457 = add i64 %442, %456
  %458 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %459 = extractelement <4 x i64> %411, i64 2
  %460 = load i64, ptr %458, align 1
  %461 = xor i64 %460, %459
  %462 = extractelement <4 x i64> %411, i64 3
  %463 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %464 = load i64, ptr %463, align 1
  %465 = xor i64 %464, %462
  %466 = zext i64 %461 to i128
  %467 = zext i64 %465 to i128
  %468 = mul nuw i128 %467, %466
  %469 = lshr i128 %468, 64
  %470 = xor i128 %469, %468
  %471 = trunc i128 %470 to i64
  %472 = add i64 %457, %471
  %473 = lshr i64 %472, 37
  %474 = xor i64 %473, %472
  %475 = mul i64 %474, 1609587791953885689
  %476 = lshr i64 %475, 32
  %477 = xor i64 %476, %475
  %478 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %479 = mul i64 %1, -4417276706812531889
  %480 = xor i64 %479, -1
  %481 = load i64, ptr %478, align 1
  %482 = xor i64 %481, %414
  %483 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %484 = load i64, ptr %483, align 1
  %485 = xor i64 %484, %417
  %486 = zext i64 %482 to i128
  %487 = zext i64 %485 to i128
  %488 = mul nuw i128 %487, %486
  %489 = lshr i128 %488, 64
  %490 = xor i128 %489, %488
  %491 = trunc i128 %490 to i64
  %492 = add i64 %491, %480
  %493 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %494 = load i64, ptr %493, align 1
  %495 = xor i64 %494, %429
  %496 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %497 = load i64, ptr %496, align 1
  %498 = xor i64 %497, %432
  %499 = zext i64 %495 to i128
  %500 = zext i64 %498 to i128
  %501 = mul nuw i128 %500, %499
  %502 = lshr i128 %501, 64
  %503 = xor i128 %502, %501
  %504 = trunc i128 %503 to i64
  %505 = add i64 %492, %504
  %506 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %507 = load i64, ptr %506, align 1
  %508 = xor i64 %507, %444
  %509 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %510 = load i64, ptr %509, align 1
  %511 = xor i64 %510, %447
  %512 = zext i64 %508 to i128
  %513 = zext i64 %511 to i128
  %514 = mul nuw i128 %513, %512
  %515 = lshr i128 %514, 64
  %516 = xor i128 %515, %514
  %517 = trunc i128 %516 to i64
  %518 = add i64 %505, %517
  %519 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %520 = load i64, ptr %519, align 1
  %521 = xor i64 %520, %459
  %522 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %523 = load i64, ptr %522, align 1
  %524 = xor i64 %523, %462
  %525 = zext i64 %521 to i128
  %526 = zext i64 %524 to i128
  %527 = mul nuw i128 %526, %525
  %528 = lshr i128 %527, 64
  %529 = xor i128 %528, %527
  %530 = trunc i128 %529 to i64
  %531 = add i64 %518, %530
  %532 = lshr i64 %531, 37
  %533 = xor i64 %532, %531
  %534 = mul i64 %533, 1609587791953885689
  %535 = lshr i64 %534, 32
  %536 = xor i64 %535, %534
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #7
  br label %537

537:                                              ; preds = %122, %380
  %538 = phi i64 [ %199, %122 ], [ %477, %380 ]
  %539 = phi i64 [ %242, %122 ], [ %536, %380 ]
  %540 = insertvalue { i64, i64 } poison, i64 %538, 0
  %541 = insertvalue { i64, i64 } %540, i64 %539, 1
  ret { i64, i64 } %541
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias noundef readonly %0, i64 noundef %1) unnamed_addr #5 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %50
  %8 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %70, %50 ]
  %9 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %60, %50 ]
  %10 = phi i64 [ 0, %5 ], [ %71, %50 ]
  %11 = shl nuw i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi <4 x i64> [ %8, %7 ], [ %47, %13 ]
  %15 = phi <4 x i64> [ %9, %7 ], [ %33, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %48, %13 ]
  %17 = shl nuw nsw i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1)
  %20 = shl nuw nsw i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <4 x i64>, ptr %18, align 1
  %23 = load <4 x i64>, ptr %21, align 8
  %24 = xor <4 x i64> %23, %22
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %15, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %35 = load <4 x i64>, ptr %34, align 1
  %36 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %37 = load <4 x i64>, ptr %36, align 8
  %38 = xor <4 x i64> %37, %35
  %39 = bitcast <4 x i64> %38 to <8 x i32>
  %40 = shufflevector <8 x i32> %39, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %41 = bitcast <8 x i32> %40 to <4 x i64>
  %42 = and <4 x i64> %38, splat (i64 4294967295)
  %43 = and <4 x i64> %41, splat (i64 4294967295)
  %44 = mul nuw <4 x i64> %43, %42
  %45 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %46 = add <4 x i64> %14, %45
  %47 = add <4 x i64> %46, %44
  %48 = add nuw nsw i64 %16, 1
  %49 = icmp eq i64 %48, 16
  br i1 %49, label %50, label %13

50:                                               ; preds = %13
  %51 = lshr <4 x i64> %33, splat (i64 47)
  %52 = xor <4 x i64> %51, %33
  %53 = xor <4 x i64> %52, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %54 = bitcast <4 x i64> %53 to <8 x i32>
  %55 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %56 = bitcast <8 x i32> %55 to <4 x i64>
  %57 = and <4 x i64> %53, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, splat (i64 2654435761)
  %59 = mul <4 x i64> %56, splat (i64 -7046029290881679360)
  %60 = add <4 x i64> %59, %58
  %61 = lshr <4 x i64> %47, splat (i64 47)
  %62 = xor <4 x i64> %61, %47
  %63 = xor <4 x i64> %62, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, splat (i64 2654435761)
  %69 = mul <4 x i64> %66, splat (i64 -7046029290881679360)
  %70 = add <4 x i64> %69, %68
  %71 = add nuw nsw i64 %10, 1
  %72 = icmp eq i64 %71, %6
  br i1 %72, label %73, label %7

73:                                               ; preds = %50, %2
  %74 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %70, %50 ]
  %75 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %60, %50 ]
  %76 = and i64 %3, -1024
  %77 = lshr i64 %3, 6
  %78 = and i64 %77, 15
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %80 = icmp eq i64 %78, 0
  br i1 %80, label %118, label %81

81:                                               ; preds = %73, %81
  %82 = phi <4 x i64> [ %115, %81 ], [ %74, %73 ]
  %83 = phi <4 x i64> [ %101, %81 ], [ %75, %73 ]
  %84 = phi i64 [ %116, %81 ], [ 0, %73 ]
  %85 = shl nuw i64 %84, 6
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %87, i32 0, i32 3, i32 1)
  %88 = shl nuw nsw i64 %84, 3
  %89 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %88
  %90 = load <4 x i64>, ptr %86, align 1
  %91 = load <4 x i64>, ptr %89, align 8
  %92 = xor <4 x i64> %91, %90
  %93 = bitcast <4 x i64> %92 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %92, splat (i64 4294967295)
  %97 = and <4 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, %96
  %99 = shufflevector <4 x i64> %90, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %100 = add <4 x i64> %83, %99
  %101 = add <4 x i64> %100, %98
  %102 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %103 = load <4 x i64>, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %105 = load <4 x i64>, ptr %104, align 8
  %106 = xor <4 x i64> %105, %103
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %82, %113
  %115 = add <4 x i64> %114, %112
  %116 = add nuw nsw i64 %84, 1
  %117 = icmp eq i64 %116, %78
  br i1 %117, label %118, label %81

118:                                              ; preds = %81, %73
  %119 = phi <4 x i64> [ %74, %73 ], [ %115, %81 ]
  %120 = phi <4 x i64> [ %75, %73 ], [ %101, %81 ]
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %122 = getelementptr inbounds i8, ptr %121, i64 -64
  %123 = load <4 x i64>, ptr %122, align 1
  %124 = xor <4 x i64> %123, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %132 = add <4 x i64> %120, %131
  %133 = add <4 x i64> %132, %130
  %134 = getelementptr inbounds i8, ptr %121, i64 -32
  %135 = load <4 x i64>, ptr %134, align 1
  %136 = xor <4 x i64> %135, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %137 = bitcast <4 x i64> %136 to <8 x i32>
  %138 = shufflevector <8 x i32> %137, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %139 = bitcast <8 x i32> %138 to <4 x i64>
  %140 = and <4 x i64> %136, splat (i64 4294967295)
  %141 = and <4 x i64> %139, splat (i64 4294967295)
  %142 = mul nuw <4 x i64> %141, %140
  %143 = shufflevector <4 x i64> %135, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %144 = add <4 x i64> %119, %143
  %145 = add <4 x i64> %144, %142
  %146 = mul i64 %1, -7046029288634856825
  %147 = extractelement <4 x i64> %133, i64 0
  %148 = xor i64 %147, 7914194659941938988
  %149 = extractelement <4 x i64> %133, i64 1
  %150 = xor i64 %149, -6611157965513653271
  %151 = zext i64 %148 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %146, %156
  %158 = extractelement <4 x i64> %133, i64 2
  %159 = xor i64 %158, -1839215637059881052
  %160 = extractelement <4 x i64> %133, i64 3
  %161 = xor i64 %160, -3433288310154277810
  %162 = zext i64 %159 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %157, %167
  %169 = extractelement <4 x i64> %145, i64 0
  %170 = xor i64 %169, 5046485836271438973
  %171 = extractelement <4 x i64> %145, i64 1
  %172 = xor i64 %171, -8055285457383852172
  %173 = zext i64 %170 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %168, %178
  %180 = extractelement <4 x i64> %145, i64 2
  %181 = xor i64 %180, 5920048007935066598
  %182 = extractelement <4 x i64> %145, i64 3
  %183 = xor i64 %182, 7336514198459093435
  %184 = zext i64 %181 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %179, %189
  %191 = lshr i64 %190, 37
  %192 = xor i64 %191, %190
  %193 = mul i64 %192, 1609587791953885689
  %194 = lshr i64 %193, 32
  %195 = xor i64 %194, %193
  ret i64 %195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { noinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_accumulate: argument 0"}
!7 = distinct !{!7, !"XXH3_accumulate"}
!8 = !{!9, !6}
!9 = distinct !{!9, !10, !"XXH3_accumulate_512_avx2: argument 0"}
!10 = distinct !{!10, !"XXH3_accumulate_512_avx2"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_accumulate: argument 0"}
!16 = distinct !{!16, !"XXH3_accumulate"}
!17 = !{!18, !15}
!18 = distinct !{!18, !19, !"XXH3_accumulate_512_avx2: argument 0"}
!19 = distinct !{!19, !"XXH3_accumulate_512_avx2"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_accumulate_512_avx2: argument 0"}
!22 = distinct !{!22, !"XXH3_accumulate_512_avx2"}
!23 = !{i64 2152094305}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_scrambleAcc_avx2: argument 0"}
!26 = distinct !{!26, !"XXH3_scrambleAcc_avx2"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH3_accumulate: argument 0"}
!29 = distinct !{!29, !"XXH3_accumulate"}
!30 = !{!31, !28}
!31 = distinct !{!31, !32, !"XXH3_accumulate_512_avx2: argument 0"}
!32 = distinct !{!32, !"XXH3_accumulate_512_avx2"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_accumulate: argument 0"}
!35 = distinct !{!35, !"XXH3_accumulate"}
!36 = !{!37, !34}
!37 = distinct !{!37, !38, !"XXH3_accumulate_512_avx2: argument 0"}
!38 = distinct !{!38, !"XXH3_accumulate_512_avx2"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_accumulate_512_avx2: argument 0"}
!41 = distinct !{!41, !"XXH3_accumulate_512_avx2"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"XXH3_mergeAccs: argument 1"}
!44 = distinct !{!44, !"XXH3_mergeAccs"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"XXH3_mergeAccs: argument 0"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_hashLong_128b_internal: argument 0"}
!49 = distinct !{!49, !"XXH3_hashLong_128b_internal"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"XXH3_hashLong_128b_internal: argument 1"}
!52 = !{!53, !51}
!53 = distinct !{!53, !54, !"XXH3_accumulate: argument 0"}
!54 = distinct !{!54, !"XXH3_accumulate"}
!55 = !{!56, !53, !51}
!56 = distinct !{!56, !57, !"XXH3_accumulate_512_avx2: argument 0"}
!57 = distinct !{!57, !"XXH3_accumulate_512_avx2"}
!58 = !{!56, !53, !48}
!59 = !{!60, !51}
!60 = distinct !{!60, !61, !"XXH3_accumulate: argument 0"}
!61 = distinct !{!61, !"XXH3_accumulate"}
!62 = !{!63, !60, !51}
!63 = distinct !{!63, !64, !"XXH3_accumulate_512_avx2: argument 0"}
!64 = distinct !{!64, !"XXH3_accumulate_512_avx2"}
!65 = !{!63, !60, !48}
!66 = !{!67, !51}
!67 = distinct !{!67, !68, !"XXH3_accumulate_512_avx2: argument 0"}
!68 = distinct !{!68, !"XXH3_accumulate_512_avx2"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!71 = distinct !{!71, !"XXH3_hashLong_128b_withSeed_internal"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"XXH3_hashLong_128b_internal: argument 0"}
!74 = distinct !{!74, !"XXH3_hashLong_128b_internal"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"XXH3_hashLong_128b_internal: argument 1"}
!77 = !{!78, !73}
!78 = distinct !{!78, !79, !"XXH3_scrambleAcc_avx2: argument 0"}
!79 = distinct !{!79, !"XXH3_scrambleAcc_avx2"}
!80 = !{!81, !76}
!81 = distinct !{!81, !82, !"XXH3_accumulate: argument 0"}
!82 = distinct !{!82, !"XXH3_accumulate"}
!83 = !{!84, !81, !76}
!84 = distinct !{!84, !85, !"XXH3_accumulate_512_avx2: argument 0"}
!85 = distinct !{!85, !"XXH3_accumulate_512_avx2"}
!86 = !{!84, !81, !73}
!87 = !{!88, !76}
!88 = distinct !{!88, !89, !"XXH3_accumulate: argument 0"}
!89 = distinct !{!89, !"XXH3_accumulate"}
!90 = !{!91, !88, !76}
!91 = distinct !{!91, !92, !"XXH3_accumulate_512_avx2: argument 0"}
!92 = distinct !{!92, !"XXH3_accumulate_512_avx2"}
!93 = !{!91, !88, !73}
!94 = !{!95, !76}
!95 = distinct !{!95, !96, !"XXH3_accumulate_512_avx2: argument 0"}
!96 = distinct !{!96, !"XXH3_accumulate_512_avx2"}
!97 = !{!95, !73}
!98 = !{!99}
!99 = distinct !{!99, !100, !"XXH3_mergeAccs: argument 1"}
!100 = distinct !{!100, !"XXH3_mergeAccs"}
!101 = !{!102, !73}
!102 = distinct !{!102, !100, !"XXH3_mergeAccs: argument 0"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_mergeAccs: argument 1"}
!105 = distinct !{!105, !"XXH3_mergeAccs"}
!106 = !{!107, !73}
!107 = distinct !{!107, !105, !"XXH3_mergeAccs: argument 0"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"XXH3_accumulate: argument 0"}
!110 = distinct !{!110, !"XXH3_accumulate"}
!111 = !{!112, !109}
!112 = distinct !{!112, !113, !"XXH3_accumulate_512_avx2: argument 0"}
!113 = distinct !{!113, !"XXH3_accumulate_512_avx2"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_accumulate: argument 0"}
!116 = distinct !{!116, !"XXH3_accumulate"}
!117 = !{!118, !115}
!118 = distinct !{!118, !119, !"XXH3_accumulate_512_avx2: argument 0"}
!119 = distinct !{!119, !"XXH3_accumulate_512_avx2"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"XXH3_accumulate_512_avx2: argument 0"}
!122 = distinct !{!122, !"XXH3_accumulate_512_avx2"}
