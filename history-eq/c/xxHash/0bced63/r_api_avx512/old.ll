; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64seed_len300(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 8
  %4 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %71

6:                                                ; preds = %2
  %7 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %8, i32 0, i32 3, i32 1)
  %9 = load <8 x i64>, ptr %0, align 1
  %10 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %11 = add <8 x i64> %9, %7
  %12 = xor <8 x i64> %10, %9
  %13 = and <8 x i64> %12, splat (i64 4294967295)
  %14 = bitcast <8 x i64> %12 to <16 x i32>
  %15 = shufflevector <16 x i32> %14, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %16 = bitcast <16 x i32> %15 to <8 x i64>
  %17 = and <8 x i64> %16, splat (i64 4294967295)
  %18 = mul nuw <8 x i64> %17, %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = load <8 x i64>, ptr %19, align 1
  %22 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), align 8
  %23 = xor <8 x i64> %22, %21
  %24 = and <8 x i64> %23, splat (i64 4294967295)
  %25 = bitcast <8 x i64> %23 to <16 x i32>
  %26 = shufflevector <16 x i32> %25, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %27 = bitcast <16 x i32> %26 to <8 x i64>
  %28 = and <8 x i64> %27, splat (i64 4294967295)
  %29 = mul nuw <8 x i64> %28, %24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %31, i32 0, i32 3, i32 1)
  %32 = load <8 x i64>, ptr %30, align 1
  %33 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), align 16
  %34 = xor <8 x i64> %33, %32
  %35 = and <8 x i64> %34, splat (i64 4294967295)
  %36 = bitcast <8 x i64> %34 to <16 x i32>
  %37 = shufflevector <16 x i32> %36, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %38 = bitcast <16 x i32> %37 to <8 x i64>
  %39 = and <8 x i64> %38, splat (i64 4294967295)
  %40 = mul nuw <8 x i64> %39, %35
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %42, i32 0, i32 3, i32 1)
  %43 = load <8 x i64>, ptr %41, align 1
  %44 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), align 8
  %45 = xor <8 x i64> %44, %43
  %46 = and <8 x i64> %45, splat (i64 4294967295)
  %47 = bitcast <8 x i64> %45 to <16 x i32>
  %48 = shufflevector <16 x i32> %47, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %49 = bitcast <16 x i32> %48 to <8 x i64>
  %50 = and <8 x i64> %49, splat (i64 4294967295)
  %51 = mul nuw <8 x i64> %50, %46
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %53 = load <8 x i64>, ptr %52, align 1
  %54 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), align 1
  %55 = xor <8 x i64> %54, %53
  %56 = and <8 x i64> %55, splat (i64 4294967295)
  %57 = bitcast <8 x i64> %55 to <16 x i32>
  %58 = shufflevector <16 x i32> %57, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %59 = bitcast <16 x i32> %58 to <8 x i64>
  %60 = and <8 x i64> %59, splat (i64 4294967295)
  %61 = mul nuw <8 x i64> %60, %56
  %62 = add <8 x i64> %11, %21
  %63 = add <8 x i64> %62, %32
  %64 = add <8 x i64> %63, %18
  %65 = add <8 x i64> %64, %43
  %66 = add <8 x i64> %65, %29
  %67 = add <8 x i64> %66, %53
  %68 = add <8 x i64> %67, %40
  %69 = add <8 x i64> %68, %51
  %70 = add <8 x i64> %69, %61
  br label %178

71:                                               ; preds = %2
  %72 = add i64 %1, -4734510112055689544
  %73 = sub i64 2066345149520216444, %1
  store i64 %72, ptr %3, align 8
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %73, ptr %74, align 8
  %75 = add i64 %1, -2623469361688619810
  %76 = sub i64 2262974939099578482, %1
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %75, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %76, ptr %78, align 8
  %79 = add i64 %1, 8711581037947681227
  %80 = sub i64 2410270004345854594, %1
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %79, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %80, ptr %82, align 8
  %83 = add i64 %1, -8204357891075471176
  %84 = sub i64 5487137525590930912, %1
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %83, ptr %85, align 8
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %84, ptr %86, align 8
  %87 = add i64 %1, -3818837453329782724
  %88 = sub i64 -6688317018830679928, %1
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %87, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %88, ptr %90, align 8
  %91 = add i64 %1, 5690594596133299313
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %91, ptr %92, align 8
  %93 = sub i64 7238261902898274248, %1
  store i64 %93, ptr %4, align 8
  %94 = add i64 %1, -4329134394285701654
  %95 = sub i64 -1485321483350670907, %1
  %96 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %94, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %95, ptr %97, align 8
  %98 = add i64 %1, 5321830579834785047
  %99 = sub i64 -7032137544937171245, %1
  %100 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %98, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %99, ptr %101, align 8
  %102 = add i64 %1, -242834301215959509
  %103 = sub i64 -3588858202114426737, %1
  %104 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %102, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %103, ptr %105, align 8
  %106 = add i64 %1, 2883454493032893253
  %107 = sub i64 9097354517224871855, %1
  %108 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %106, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %107, ptr %109, align 8
  %110 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %111, i32 0, i32 3, i32 1)
  %112 = load <8 x i64>, ptr %0, align 1
  %113 = load <8 x i64>, ptr %3, align 8
  %114 = add <8 x i64> %112, %110
  %115 = xor <8 x i64> %113, %112
  %116 = and <8 x i64> %115, splat (i64 4294967295)
  %117 = bitcast <8 x i64> %115 to <16 x i32>
  %118 = shufflevector <16 x i32> %117, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %119 = bitcast <16 x i32> %118 to <8 x i64>
  %120 = and <8 x i64> %119, splat (i64 4294967295)
  %121 = mul nuw <8 x i64> %120, %116
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %123, i32 0, i32 3, i32 1)
  %124 = load <8 x i64>, ptr %122, align 1
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %126 = load <8 x i64>, ptr %125, align 8
  %127 = xor <8 x i64> %126, %124
  %128 = and <8 x i64> %127, splat (i64 4294967295)
  %129 = bitcast <8 x i64> %127 to <16 x i32>
  %130 = shufflevector <16 x i32> %129, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %131 = bitcast <16 x i32> %130 to <8 x i64>
  %132 = and <8 x i64> %131, splat (i64 4294967295)
  %133 = mul nuw <8 x i64> %132, %128
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %135, i32 0, i32 3, i32 1)
  %136 = load <8 x i64>, ptr %134, align 1
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %138 = load <8 x i64>, ptr %137, align 8
  %139 = xor <8 x i64> %138, %136
  %140 = and <8 x i64> %139, splat (i64 4294967295)
  %141 = bitcast <8 x i64> %139 to <16 x i32>
  %142 = shufflevector <16 x i32> %141, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %143 = bitcast <16 x i32> %142 to <8 x i64>
  %144 = and <8 x i64> %143, splat (i64 4294967295)
  %145 = mul nuw <8 x i64> %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %147, i32 0, i32 3, i32 1)
  %148 = load <8 x i64>, ptr %146, align 1
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %150 = load <8 x i64>, ptr %149, align 8
  %151 = xor <8 x i64> %150, %148
  %152 = and <8 x i64> %151, splat (i64 4294967295)
  %153 = bitcast <8 x i64> %151 to <16 x i32>
  %154 = shufflevector <16 x i32> %153, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %155 = bitcast <16 x i32> %154 to <8 x i64>
  %156 = and <8 x i64> %155, splat (i64 4294967295)
  %157 = mul nuw <8 x i64> %156, %152
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %159 = load <8 x i64>, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %161 = load <8 x i64>, ptr %160, align 1
  %162 = xor <8 x i64> %161, %159
  %163 = and <8 x i64> %162, splat (i64 4294967295)
  %164 = bitcast <8 x i64> %162 to <16 x i32>
  %165 = shufflevector <16 x i32> %164, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %166 = bitcast <16 x i32> %165 to <8 x i64>
  %167 = and <8 x i64> %166, splat (i64 4294967295)
  %168 = mul nuw <8 x i64> %167, %163
  %169 = add <8 x i64> %114, %124
  %170 = add <8 x i64> %169, %136
  %171 = add <8 x i64> %170, %121
  %172 = add <8 x i64> %171, %148
  %173 = add <8 x i64> %172, %133
  %174 = add <8 x i64> %173, %159
  %175 = add <8 x i64> %174, %145
  %176 = add <8 x i64> %175, %157
  %177 = add <8 x i64> %176, %168
  br label %178

178:                                              ; preds = %6, %71
  %179 = phi <8 x i64> [ %177, %71 ], [ %70, %6 ]
  %180 = phi <8 x i64> [ %126, %71 ], [ %22, %6 ]
  %181 = phi <8 x i64> [ %138, %71 ], [ %33, %6 ]
  %182 = phi <8 x i64> [ %150, %71 ], [ %44, %6 ]
  %183 = extractelement <8 x i64> %179, i64 0
  %184 = extractelement <8 x i64> %179, i64 1
  %185 = bitcast <8 x i64> %180 to i512
  %186 = lshr i512 %185, 24
  %187 = trunc i512 %186 to i64
  %188 = bitcast <8 x i64> %181 to i512
  %189 = lshr i512 %188, 24
  %190 = trunc i512 %189 to i64
  %191 = xor i64 %183, %187
  %192 = xor i64 %184, %190
  %193 = zext i64 %191 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %198, 7566781886141388340
  %200 = extractelement <8 x i64> %179, i64 2
  %201 = extractelement <8 x i64> %179, i64 3
  %202 = bitcast <8 x i64> %182 to i512
  %203 = lshr i512 %202, 24
  %204 = trunc i512 %203 to i64
  %205 = lshr i512 %202, 88
  %206 = trunc i512 %205 to i64
  %207 = xor i64 %200, %204
  %208 = xor i64 %201, %206
  %209 = zext i64 %207 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %199, %214
  %216 = extractelement <8 x i64> %179, i64 4
  %217 = extractelement <8 x i64> %179, i64 5
  %218 = lshr i512 %202, 152
  %219 = trunc i512 %218 to i64
  %220 = lshr i512 %202, 216
  %221 = trunc i512 %220 to i64
  %222 = xor i64 %216, %219
  %223 = xor i64 %217, %221
  %224 = zext i64 %222 to i128
  %225 = zext i64 %223 to i128
  %226 = mul nuw i128 %225, %224
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %215, %229
  %231 = extractelement <8 x i64> %179, i64 6
  %232 = extractelement <8 x i64> %179, i64 7
  %233 = lshr i512 %202, 280
  %234 = trunc i512 %233 to i64
  %235 = lshr i512 %202, 344
  %236 = trunc i512 %235 to i64
  %237 = xor i64 %231, %234
  %238 = xor i64 %232, %236
  %239 = zext i64 %237 to i128
  %240 = zext i64 %238 to i128
  %241 = mul nuw i128 %240, %239
  %242 = lshr i128 %241, 64
  %243 = xor i128 %242, %241
  %244 = trunc i128 %243 to i64
  %245 = add i64 %230, %244
  %246 = lshr i64 %245, 37
  %247 = xor i64 %246, %245
  %248 = mul i64 %247, 1609587791953885689
  %249 = lshr i64 %248, 32
  %250 = xor i64 %249, %248
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4)
  ret i64 %250
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128seed_len300(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [88 x i8], align 8
  %5 = alloca [80 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5)
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %7, label %174

7:                                                ; preds = %3
  %8 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %9, i32 0, i32 3, i32 1)
  %10 = load <8 x i64>, ptr %1, align 1
  %11 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %12 = shufflevector <8 x i64> %10, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %13 = add <8 x i64> %8, %12
  %14 = xor <8 x i64> %11, %10
  %15 = and <8 x i64> %14, splat (i64 4294967295)
  %16 = bitcast <8 x i64> %14 to <16 x i32>
  %17 = shufflevector <16 x i32> %16, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %18 = bitcast <16 x i32> %17 to <8 x i64>
  %19 = and <8 x i64> %18, splat (i64 4294967295)
  %20 = mul nuw <8 x i64> %19, %15
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %22, i32 0, i32 3, i32 1)
  %23 = load <8 x i64>, ptr %21, align 1
  %24 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), align 8
  %25 = shufflevector <8 x i64> %23, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %26 = xor <8 x i64> %24, %23
  %27 = and <8 x i64> %26, splat (i64 4294967295)
  %28 = bitcast <8 x i64> %26 to <16 x i32>
  %29 = shufflevector <16 x i32> %28, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %30 = bitcast <16 x i32> %29 to <8 x i64>
  %31 = and <8 x i64> %30, splat (i64 4294967295)
  %32 = mul nuw <8 x i64> %31, %27
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %34, i32 0, i32 3, i32 1)
  %35 = load <8 x i64>, ptr %33, align 1
  %36 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), align 16
  %37 = shufflevector <8 x i64> %35, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %38 = xor <8 x i64> %36, %35
  %39 = and <8 x i64> %38, splat (i64 4294967295)
  %40 = bitcast <8 x i64> %38 to <16 x i32>
  %41 = shufflevector <16 x i32> %40, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %42 = bitcast <16 x i32> %41 to <8 x i64>
  %43 = and <8 x i64> %42, splat (i64 4294967295)
  %44 = mul nuw <8 x i64> %43, %39
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %46, i32 0, i32 3, i32 1)
  %47 = load <8 x i64>, ptr %45, align 1
  %48 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), align 8
  %49 = shufflevector <8 x i64> %47, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %50 = xor <8 x i64> %48, %47
  %51 = and <8 x i64> %50, splat (i64 4294967295)
  %52 = bitcast <8 x i64> %50 to <16 x i32>
  %53 = shufflevector <16 x i32> %52, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %54 = bitcast <16 x i32> %53 to <8 x i64>
  %55 = and <8 x i64> %54, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, %51
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 236
  %58 = load <8 x i64>, ptr %57, align 1
  %59 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), align 1
  %60 = shufflevector <8 x i64> %58, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %61 = xor <8 x i64> %59, %58
  %62 = and <8 x i64> %61, splat (i64 4294967295)
  %63 = bitcast <8 x i64> %61 to <16 x i32>
  %64 = shufflevector <16 x i32> %63, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %65 = bitcast <16 x i32> %64 to <8 x i64>
  %66 = and <8 x i64> %65, splat (i64 4294967295)
  %67 = mul nuw <8 x i64> %66, %62
  %68 = add <8 x i64> %13, %25
  %69 = add <8 x i64> %68, %20
  %70 = add <8 x i64> %69, %37
  %71 = add <8 x i64> %70, %32
  %72 = add <8 x i64> %71, %49
  %73 = add <8 x i64> %72, %44
  %74 = add <8 x i64> %73, %60
  %75 = add <8 x i64> %74, %56
  %76 = add <8 x i64> %75, %67
  %77 = extractelement <8 x i64> %76, i64 0
  %78 = extractelement <8 x i64> %76, i64 1
  %79 = bitcast <8 x i64> %24 to i512
  %80 = lshr i512 %79, 24
  %81 = trunc i512 %80 to i64
  %82 = bitcast <8 x i64> %36 to i512
  %83 = lshr i512 %82, 24
  %84 = trunc i512 %83 to i64
  %85 = xor i64 %77, %81
  %86 = xor i64 %78, %84
  %87 = zext i64 %85 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, 7566781886141388340
  %94 = extractelement <8 x i64> %76, i64 2
  %95 = extractelement <8 x i64> %76, i64 3
  %96 = bitcast <8 x i64> %48 to i512
  %97 = lshr i512 %96, 24
  %98 = trunc i512 %97 to i64
  %99 = lshr i512 %96, 88
  %100 = trunc i512 %99 to i64
  %101 = xor i64 %94, %98
  %102 = xor i64 %95, %100
  %103 = zext i64 %101 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = lshr i128 %105, 64
  %107 = xor i128 %106, %105
  %108 = trunc i128 %107 to i64
  %109 = add i64 %93, %108
  %110 = extractelement <8 x i64> %76, i64 4
  %111 = extractelement <8 x i64> %76, i64 5
  %112 = lshr i512 %96, 152
  %113 = trunc i512 %112 to i64
  %114 = lshr i512 %96, 216
  %115 = trunc i512 %114 to i64
  %116 = xor i64 %110, %113
  %117 = xor i64 %111, %115
  %118 = zext i64 %116 to i128
  %119 = zext i64 %117 to i128
  %120 = mul nuw i128 %119, %118
  %121 = lshr i128 %120, 64
  %122 = xor i128 %121, %120
  %123 = trunc i128 %122 to i64
  %124 = add i64 %109, %123
  %125 = extractelement <8 x i64> %76, i64 6
  %126 = extractelement <8 x i64> %76, i64 7
  %127 = lshr i512 %96, 280
  %128 = trunc i512 %127 to i64
  %129 = lshr i512 %96, 344
  %130 = trunc i512 %129 to i64
  %131 = xor i64 %125, %128
  %132 = xor i64 %126, %130
  %133 = zext i64 %131 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %124, %138
  %140 = lshr i64 %139, 37
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587791953885689
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  %145 = xor i64 %77, -2753530472436770380
  %146 = xor i64 %78, 3784058077962335096
  %147 = zext i64 %145 to i128
  %148 = zext i64 %146 to i128
  %149 = mul nuw i128 %148, %147
  %150 = lshr i128 %149, 64
  %151 = xor i128 %150, %149
  %152 = trunc i128 %151 to i64
  %153 = add i64 %152, -2982561263328149653
  %154 = xor i64 %94, -360392965937173549
  %155 = xor i64 %95, -5237161843349560557
  %156 = zext i64 %154 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %153, %161
  %163 = xor i64 %110, 2965150961192524528
  %164 = xor i64 %111, 9032178055121889492
  %165 = zext i64 %163 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %162, %170
  %172 = xor i64 %125, 8850058120466833735
  %173 = xor i64 %126, -7669846995664752176
  br label %402

174:                                              ; preds = %3
  %175 = add i64 %2, -4734510112055689544
  %176 = sub i64 2066345149520216444, %2
  store i64 %175, ptr %4, align 8
  %177 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %176, ptr %177, align 8
  %178 = add i64 %2, -2623469361688619810
  %179 = sub i64 2262974939099578482, %2
  %180 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %178, ptr %180, align 8
  %181 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %179, ptr %181, align 8
  %182 = add i64 %2, 8711581037947681227
  %183 = sub i64 2410270004345854594, %2
  %184 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %182, ptr %184, align 8
  %185 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %183, ptr %185, align 8
  %186 = add i64 %2, -8204357891075471176
  %187 = sub i64 5487137525590930912, %2
  %188 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %186, ptr %188, align 8
  %189 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %187, ptr %189, align 8
  %190 = add i64 %2, -3818837453329782724
  %191 = sub i64 -6688317018830679928, %2
  %192 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %190, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %191, ptr %193, align 8
  %194 = add i64 %2, 5690594596133299313
  %195 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %194, ptr %195, align 8
  %196 = add i64 %2, 3556072174620004746
  %197 = sub i64 7238261902898274248, %2
  store i64 %196, ptr %5, align 8
  %198 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %197, ptr %198, align 8
  %199 = add i64 %2, -4329134394285701654
  %200 = sub i64 -1485321483350670907, %2
  %201 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %199, ptr %201, align 8
  %202 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %200, ptr %202, align 8
  %203 = add i64 %2, 5321830579834785047
  %204 = sub i64 -7032137544937171245, %2
  %205 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %203, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %204, ptr %206, align 8
  %207 = add i64 %2, -242834301215959509
  %208 = sub i64 -3588858202114426737, %2
  %209 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %207, ptr %209, align 8
  %210 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %208, ptr %210, align 8
  %211 = add i64 %2, 2883454493032893253
  %212 = sub i64 9097354517224871855, %2
  %213 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %211, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %212, ptr %214, align 8
  %215 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %216 = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %216, i32 0, i32 3, i32 1)
  %217 = load <8 x i64>, ptr %1, align 1
  %218 = load <8 x i64>, ptr %4, align 8
  %219 = shufflevector <8 x i64> %217, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %220 = add <8 x i64> %215, %219
  %221 = xor <8 x i64> %218, %217
  %222 = and <8 x i64> %221, splat (i64 4294967295)
  %223 = bitcast <8 x i64> %221 to <16 x i32>
  %224 = shufflevector <16 x i32> %223, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %225 = bitcast <16 x i32> %224 to <8 x i64>
  %226 = and <8 x i64> %225, splat (i64 4294967295)
  %227 = mul nuw <8 x i64> %226, %222
  %228 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %229 = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %229, i32 0, i32 3, i32 1)
  %230 = load <8 x i64>, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %232 = load <8 x i64>, ptr %231, align 8
  %233 = shufflevector <8 x i64> %230, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %234 = xor <8 x i64> %232, %230
  %235 = and <8 x i64> %234, splat (i64 4294967295)
  %236 = bitcast <8 x i64> %234 to <16 x i32>
  %237 = shufflevector <16 x i32> %236, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %238 = bitcast <16 x i32> %237 to <8 x i64>
  %239 = and <8 x i64> %238, splat (i64 4294967295)
  %240 = mul nuw <8 x i64> %239, %235
  %241 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %242 = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %242, i32 0, i32 3, i32 1)
  %243 = load <8 x i64>, ptr %241, align 1
  %244 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %245 = load <8 x i64>, ptr %244, align 8
  %246 = shufflevector <8 x i64> %243, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %247 = xor <8 x i64> %245, %243
  %248 = and <8 x i64> %247, splat (i64 4294967295)
  %249 = bitcast <8 x i64> %247 to <16 x i32>
  %250 = shufflevector <16 x i32> %249, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %251 = bitcast <16 x i32> %250 to <8 x i64>
  %252 = and <8 x i64> %251, splat (i64 4294967295)
  %253 = mul nuw <8 x i64> %252, %248
  %254 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %255 = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %255, i32 0, i32 3, i32 1)
  %256 = load <8 x i64>, ptr %254, align 1
  %257 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %258 = load <8 x i64>, ptr %257, align 8
  %259 = shufflevector <8 x i64> %256, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %260 = xor <8 x i64> %258, %256
  %261 = and <8 x i64> %260, splat (i64 4294967295)
  %262 = bitcast <8 x i64> %260 to <16 x i32>
  %263 = shufflevector <16 x i32> %262, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %264 = bitcast <16 x i32> %263 to <8 x i64>
  %265 = and <8 x i64> %264, splat (i64 4294967295)
  %266 = mul nuw <8 x i64> %265, %261
  %267 = getelementptr inbounds nuw i8, ptr %1, i64 236
  %268 = load <8 x i64>, ptr %267, align 1
  %269 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %270 = load <8 x i64>, ptr %269, align 1
  %271 = shufflevector <8 x i64> %268, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %272 = xor <8 x i64> %270, %268
  %273 = and <8 x i64> %272, splat (i64 4294967295)
  %274 = bitcast <8 x i64> %272 to <16 x i32>
  %275 = shufflevector <16 x i32> %274, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %276 = bitcast <16 x i32> %275 to <8 x i64>
  %277 = and <8 x i64> %276, splat (i64 4294967295)
  %278 = mul nuw <8 x i64> %277, %273
  %279 = add <8 x i64> %220, %233
  %280 = add <8 x i64> %279, %227
  %281 = add <8 x i64> %280, %246
  %282 = add <8 x i64> %281, %240
  %283 = add <8 x i64> %282, %259
  %284 = add <8 x i64> %283, %253
  %285 = add <8 x i64> %284, %271
  %286 = add <8 x i64> %285, %266
  %287 = add <8 x i64> %286, %278
  %288 = extractelement <8 x i64> %287, i64 0
  %289 = extractelement <8 x i64> %287, i64 1
  %290 = bitcast <8 x i64> %232 to i512
  %291 = lshr i512 %290, 24
  %292 = trunc i512 %291 to i64
  %293 = bitcast <8 x i64> %245 to i512
  %294 = lshr i512 %293, 24
  %295 = trunc i512 %294 to i64
  %296 = xor i64 %288, %292
  %297 = xor i64 %289, %295
  %298 = zext i64 %296 to i128
  %299 = zext i64 %297 to i128
  %300 = mul nuw i128 %299, %298
  %301 = lshr i128 %300, 64
  %302 = xor i128 %301, %300
  %303 = trunc i128 %302 to i64
  %304 = add i64 %303, 7566781886141388340
  %305 = extractelement <8 x i64> %287, i64 2
  %306 = extractelement <8 x i64> %287, i64 3
  %307 = bitcast <8 x i64> %258 to i512
  %308 = lshr i512 %307, 24
  %309 = trunc i512 %308 to i64
  %310 = lshr i512 %307, 88
  %311 = trunc i512 %310 to i64
  %312 = xor i64 %305, %309
  %313 = xor i64 %306, %311
  %314 = zext i64 %312 to i128
  %315 = zext i64 %313 to i128
  %316 = mul nuw i128 %315, %314
  %317 = lshr i128 %316, 64
  %318 = xor i128 %317, %316
  %319 = trunc i128 %318 to i64
  %320 = add i64 %304, %319
  %321 = extractelement <8 x i64> %287, i64 4
  %322 = extractelement <8 x i64> %287, i64 5
  %323 = lshr i512 %307, 152
  %324 = trunc i512 %323 to i64
  %325 = lshr i512 %307, 216
  %326 = trunc i512 %325 to i64
  %327 = xor i64 %321, %324
  %328 = xor i64 %322, %326
  %329 = zext i64 %327 to i128
  %330 = zext i64 %328 to i128
  %331 = mul nuw i128 %330, %329
  %332 = lshr i128 %331, 64
  %333 = xor i128 %332, %331
  %334 = trunc i128 %333 to i64
  %335 = add i64 %320, %334
  %336 = extractelement <8 x i64> %287, i64 6
  %337 = extractelement <8 x i64> %287, i64 7
  %338 = lshr i512 %307, 280
  %339 = trunc i512 %338 to i64
  %340 = lshr i512 %307, 344
  %341 = trunc i512 %340 to i64
  %342 = xor i64 %336, %339
  %343 = xor i64 %337, %341
  %344 = zext i64 %342 to i128
  %345 = zext i64 %343 to i128
  %346 = mul nuw i128 %345, %344
  %347 = lshr i128 %346, 64
  %348 = xor i128 %347, %346
  %349 = trunc i128 %348 to i64
  %350 = add i64 %335, %349
  %351 = lshr i64 %350, 37
  %352 = xor i64 %351, %350
  %353 = mul i64 %352, 1609587791953885689
  %354 = lshr i64 %353, 32
  %355 = xor i64 %354, %353
  %356 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %357 = load i64, ptr %356, align 1
  %358 = bitcast <8 x i64> %270 to i512
  %359 = lshr i512 %358, 32
  %360 = trunc i512 %359 to i64
  %361 = xor i64 %288, %357
  %362 = xor i64 %289, %360
  %363 = zext i64 %361 to i128
  %364 = zext i64 %362 to i128
  %365 = mul nuw i128 %364, %363
  %366 = lshr i128 %365, 64
  %367 = xor i128 %366, %365
  %368 = trunc i128 %367 to i64
  %369 = add i64 %368, -2982561263328149653
  %370 = getelementptr inbounds nuw i8, ptr %5, i64 21
  %371 = load i64, ptr %370, align 1
  %372 = getelementptr inbounds nuw i8, ptr %5, i64 29
  %373 = load i64, ptr %372, align 1
  %374 = xor i64 %305, %371
  %375 = xor i64 %306, %373
  %376 = zext i64 %374 to i128
  %377 = zext i64 %375 to i128
  %378 = mul nuw i128 %377, %376
  %379 = lshr i128 %378, 64
  %380 = xor i128 %379, %378
  %381 = trunc i128 %380 to i64
  %382 = add i64 %369, %381
  %383 = getelementptr inbounds nuw i8, ptr %5, i64 37
  %384 = load i64, ptr %383, align 1
  %385 = getelementptr inbounds nuw i8, ptr %5, i64 45
  %386 = load i64, ptr %385, align 1
  %387 = xor i64 %321, %384
  %388 = xor i64 %322, %386
  %389 = zext i64 %387 to i128
  %390 = zext i64 %388 to i128
  %391 = mul nuw i128 %390, %389
  %392 = lshr i128 %391, 64
  %393 = xor i128 %392, %391
  %394 = trunc i128 %393 to i64
  %395 = add i64 %382, %394
  %396 = getelementptr inbounds nuw i8, ptr %5, i64 53
  %397 = load i64, ptr %396, align 1
  %398 = getelementptr inbounds nuw i8, ptr %5, i64 61
  %399 = load i64, ptr %398, align 1
  %400 = xor i64 %336, %397
  %401 = xor i64 %337, %399
  br label %402

402:                                              ; preds = %7, %174
  %403 = phi i64 [ %400, %174 ], [ %172, %7 ]
  %404 = phi i64 [ %401, %174 ], [ %173, %7 ]
  %405 = phi i64 [ %395, %174 ], [ %171, %7 ]
  %406 = phi i64 [ %355, %174 ], [ %144, %7 ]
  %407 = zext i64 %403 to i128
  %408 = zext i64 %404 to i128
  %409 = mul nuw i128 %408, %407
  %410 = lshr i128 %409, 64
  %411 = xor i128 %410, %409
  %412 = trunc i128 %411 to i64
  %413 = add i64 %405, %412
  %414 = lshr i64 %413, 37
  %415 = xor i64 %414, %413
  %416 = mul i64 %415, 1609587791953885689
  %417 = lshr i64 %416, 32
  %418 = xor i64 %417, %416
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5)
  store i64 %406, ptr %0, align 8
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %418, ptr %419, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_64b_defaultSecret"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_hashLong_64b_internal: argument 0"}
!10 = distinct !{!10, !"XXH3_hashLong_64b_internal"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"XXH3_hashLong_64b_internal: argument 1"}
!13 = !{!9, !12, !6}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_hashLong_internal_loop: argument 1"}
!16 = distinct !{!16, !"XXH3_hashLong_internal_loop"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"XXH3_hashLong_internal_loop: argument 2"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_accumulate: argument 1"}
!21 = distinct !{!21, !"XXH3_accumulate"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"XXH3_accumulate: argument 2"}
!24 = !{!25, !23, !26, !18, !12}
!25 = distinct !{!25, !21, !"XXH3_accumulate: argument 0"}
!26 = distinct !{!26, !16, !"XXH3_hashLong_internal_loop: argument 0"}
!27 = !{!20, !15, !9, !6}
!28 = !{!23, !18, !12}
!29 = !{!25, !20, !26, !15, !9, !6}
!30 = !{!9, !6}
!31 = !{!15, !9, !6}
!32 = !{!26, !18, !12}
!33 = !{!18, !12}
!34 = !{!26, !15, !9, !6}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_initCustomSecret: argument 0"}
!37 = distinct !{!37, !"XXH3_initCustomSecret"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_hashLong_64b_internal: argument 0"}
!40 = distinct !{!40, !"XXH3_hashLong_64b_internal"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"XXH3_hashLong_64b_internal: argument 1"}
!43 = !{!39, !42}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_hashLong_internal_loop: argument 1"}
!46 = distinct !{!46, !"XXH3_hashLong_internal_loop"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"XXH3_hashLong_internal_loop: argument 2"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"XXH3_accumulate: argument 1"}
!51 = distinct !{!51, !"XXH3_accumulate"}
!52 = !{!53}
!53 = distinct !{!53, !51, !"XXH3_accumulate: argument 2"}
!54 = !{!55, !53, !56, !48, !42}
!55 = distinct !{!55, !51, !"XXH3_accumulate: argument 0"}
!56 = distinct !{!56, !46, !"XXH3_hashLong_internal_loop: argument 0"}
!57 = !{!50, !45, !39}
!58 = !{!53, !48, !42}
!59 = !{!55, !50, !56, !45, !39}
!60 = !{!45, !39}
!61 = !{!56, !48, !42}
!62 = !{!48, !42}
!63 = !{!56, !45, !39}
!64 = !{!65}
!65 = distinct !{!65, !66, !"XXH3_hashLong_128b_internal: argument 0"}
!66 = distinct !{!66, !"XXH3_hashLong_128b_internal"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"XXH3_hashLong_128b_internal: argument 1"}
!69 = !{!65, !68}
!70 = !{!71}
!71 = distinct !{!71, !72, !"XXH3_hashLong_internal_loop: argument 1"}
!72 = distinct !{!72, !"XXH3_hashLong_internal_loop"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"XXH3_hashLong_internal_loop: argument 2"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"XXH3_accumulate: argument 1"}
!77 = distinct !{!77, !"XXH3_accumulate"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"XXH3_accumulate: argument 2"}
!80 = !{!81, !79, !82, !74, !68}
!81 = distinct !{!81, !77, !"XXH3_accumulate: argument 0"}
!82 = distinct !{!82, !72, !"XXH3_hashLong_internal_loop: argument 0"}
!83 = !{!76, !71, !65}
!84 = !{!79, !74, !68}
!85 = !{!81, !76, !82, !71, !65}
!86 = !{!71, !65}
!87 = !{!82, !74, !68}
!88 = !{!74, !68}
!89 = !{!82, !71, !65}
!90 = !{!91}
!91 = distinct !{!91, !92, !"XXH3_initCustomSecret: argument 0"}
!92 = distinct !{!92, !"XXH3_initCustomSecret"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_hashLong_128b_internal: argument 0"}
!95 = distinct !{!95, !"XXH3_hashLong_128b_internal"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_hashLong_128b_internal: argument 1"}
!98 = !{!94, !97}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_hashLong_internal_loop: argument 1"}
!101 = distinct !{!101, !"XXH3_hashLong_internal_loop"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"XXH3_hashLong_internal_loop: argument 2"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"XXH3_accumulate: argument 1"}
!106 = distinct !{!106, !"XXH3_accumulate"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"XXH3_accumulate: argument 2"}
!109 = !{!110, !108, !111, !103, !97}
!110 = distinct !{!110, !106, !"XXH3_accumulate: argument 0"}
!111 = distinct !{!111, !101, !"XXH3_hashLong_internal_loop: argument 0"}
!112 = !{!105, !100, !94}
!113 = !{!108, !103, !97}
!114 = !{!110, !105, !111, !100, !94}
!115 = !{!100, !94}
!116 = !{!111, !103, !97}
!117 = !{!118, !97}
!118 = distinct !{!118, !119, !"XXH3_mergeAccs: argument 1"}
!119 = distinct !{!119, !"XXH3_mergeAccs"}
!120 = !{!121, !94}
!121 = distinct !{!121, !119, !"XXH3_mergeAccs: argument 0"}
