; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/665424e/wrap_newapi.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/665424e/wrap_newapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i64 @target_x_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 64, 257) 256, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_x_len200(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef range(i64 64, 257) 200, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_x_len64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i64, ptr %3, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i64, ptr %5, align 1
  %7 = add i64 %1, 8711581037947681227
  %8 = xor i64 %4, %7
  %9 = sub i64 2410270004345854594, %1
  %10 = xor i64 %6, %9
  %11 = zext i64 %8 to i128
  %12 = zext i64 %10 to i128
  %13 = mul nuw i128 %12, %11
  %14 = lshr i128 %13, 64
  %15 = xor i128 %14, %13
  %16 = trunc i128 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i64, ptr %19, align 1
  %21 = add i64 %1, -8204357891075471176
  %22 = xor i64 %18, %21
  %23 = sub i64 5487137525590930912, %1
  %24 = xor i64 %20, %23
  %25 = zext i64 %22 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %16, -8224016703601598016
  %32 = add i64 %31, %30
  %33 = load i64, ptr %0, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i64, ptr %34, align 1
  %36 = add i64 %1, -4734510112055689544
  %37 = xor i64 %33, %36
  %38 = sub i64 2066345149520216444, %1
  %39 = xor i64 %35, %38
  %40 = zext i64 %37 to i128
  %41 = zext i64 %39 to i128
  %42 = mul nuw i128 %41, %40
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %32, %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %1, -2623469361688619810
  %52 = xor i64 %48, %51
  %53 = sub i64 2262974939099578482, %1
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = lshr i64 %61, 37
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, 1609587791953885689
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  ret i64 %66
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

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef readonly %0, i64 noundef range(i64 129, 241) %1, i64 noundef %2) unnamed_addr #4 {
  %4 = mul i64 %1, -7046029288634856825
  %5 = trunc nuw nsw i64 %1 to i32
  %6 = load i64, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %9, %6
  %11 = sub i64 2066345149520216444, %2
  %12 = xor i64 %11, %8
  %13 = zext i64 %10 to i128
  %14 = zext i64 %12 to i128
  %15 = mul nuw i128 %14, %13
  %16 = lshr i128 %15, 64
  %17 = xor i128 %16, %15
  %18 = trunc i128 %17 to i64
  %19 = add i64 %4, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i64, ptr %22, align 1
  %24 = add i64 %2, -2623469361688619810
  %25 = xor i64 %24, %21
  %26 = sub i64 2262974939099578482, %2
  %27 = xor i64 %26, %23
  %28 = zext i64 %25 to i128
  %29 = zext i64 %27 to i128
  %30 = mul nuw i128 %29, %28
  %31 = lshr i128 %30, 64
  %32 = xor i128 %31, %30
  %33 = trunc i128 %32 to i64
  %34 = add i64 %19, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %36 = load i64, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %38 = load i64, ptr %37, align 1
  %39 = add i64 %2, 8711581037947681227
  %40 = xor i64 %39, %36
  %41 = sub i64 2410270004345854594, %2
  %42 = xor i64 %41, %38
  %43 = zext i64 %40 to i128
  %44 = zext i64 %42 to i128
  %45 = mul nuw i128 %44, %43
  %46 = lshr i128 %45, 64
  %47 = xor i128 %46, %45
  %48 = trunc i128 %47 to i64
  %49 = add i64 %34, %48
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %53 = load i64, ptr %52, align 1
  %54 = add i64 %2, -8204357891075471176
  %55 = xor i64 %54, %51
  %56 = sub i64 5487137525590930912, %2
  %57 = xor i64 %56, %53
  %58 = zext i64 %55 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %49, %63
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %66 = load i64, ptr %65, align 1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %68 = load i64, ptr %67, align 1
  %69 = add i64 %2, -3818837453329782724
  %70 = xor i64 %69, %66
  %71 = sub i64 -6688317018830679928, %2
  %72 = xor i64 %71, %68
  %73 = zext i64 %70 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %64, %78
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %2, 5690594596133299313
  %85 = xor i64 %84, %81
  %86 = sub i64 -2833645246901970632, %2
  %87 = xor i64 %86, %83
  %88 = zext i64 %85 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %79, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %98 = load i64, ptr %97, align 1
  %99 = add i64 %2, 4554437623014685352
  %100 = xor i64 %99, %96
  %101 = sub i64 2111919702937427193, %2
  %102 = xor i64 %101, %98
  %103 = zext i64 %100 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = lshr i128 %105, 64
  %107 = xor i128 %106, %105
  %108 = trunc i128 %107 to i64
  %109 = add i64 %94, %108
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %111 = load i64, ptr %110, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %113 = load i64, ptr %112, align 1
  %114 = add i64 %2, 3556072174620004746
  %115 = xor i64 %114, %111
  %116 = sub i64 7238261902898274248, %2
  %117 = xor i64 %116, %113
  %118 = zext i64 %115 to i128
  %119 = zext i64 %117 to i128
  %120 = mul nuw i128 %119, %118
  %121 = lshr i128 %120, 64
  %122 = xor i128 %121, %120
  %123 = trunc i128 %122 to i64
  %124 = add i64 %109, %123
  %125 = lshr i32 %5, 4
  %126 = lshr i64 %124, 37
  %127 = xor i64 %126, %124
  %128 = mul i64 %127, 1609587791953885689
  %129 = lshr i64 %128, 32
  %130 = xor i64 %129, %128
  %131 = icmp eq i32 %125, 8
  br i1 %131, label %250, label %132

132:                                              ; preds = %3
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %134 = load i64, ptr %133, align 1
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %136 = load i64, ptr %135, align 1
  %137 = add i64 %2, -9150895811085458631
  %138 = xor i64 %137, %134
  %139 = sub i64 7914194659941938988, %2
  %140 = xor i64 %139, %136
  %141 = zext i64 %138 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %130, %146
  %148 = icmp eq i32 %125, 9
  br i1 %148, label %250, label %149

149:                                              ; preds = %132
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %151 = load i64, ptr %150, align 1
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %153 = load i64, ptr %152, align 1
  %154 = add i64 %2, -6611157965513653271
  %155 = xor i64 %154, %151
  %156 = sub i64 -1839215637059881052, %2
  %157 = xor i64 %156, %153
  %158 = zext i64 %155 to i128
  %159 = zext i64 %157 to i128
  %160 = mul nuw i128 %159, %158
  %161 = lshr i128 %160, 64
  %162 = xor i128 %161, %160
  %163 = trunc i128 %162 to i64
  %164 = add i64 %147, %163
  %165 = icmp eq i32 %125, 10
  br i1 %165, label %250, label %166

166:                                              ; preds = %149
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %168 = load i64, ptr %167, align 1
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %170 = load i64, ptr %169, align 1
  %171 = add i64 %2, -3433288310154277810
  %172 = xor i64 %171, %168
  %173 = sub i64 5046485836271438973, %2
  %174 = xor i64 %173, %170
  %175 = zext i64 %172 to i128
  %176 = zext i64 %174 to i128
  %177 = mul nuw i128 %176, %175
  %178 = lshr i128 %177, 64
  %179 = xor i128 %178, %177
  %180 = trunc i128 %179 to i64
  %181 = add i64 %164, %180
  %182 = icmp eq i32 %125, 11
  br i1 %182, label %250, label %183

183:                                              ; preds = %166
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %185 = load i64, ptr %184, align 1
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %187 = load i64, ptr %186, align 1
  %188 = add i64 %2, -8055285457383852172
  %189 = xor i64 %188, %185
  %190 = sub i64 5920048007935066598, %2
  %191 = xor i64 %190, %187
  %192 = zext i64 %189 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %181, %197
  %199 = icmp eq i32 %125, 12
  br i1 %199, label %250, label %200

200:                                              ; preds = %183
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %202 = load i64, ptr %201, align 1
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %204 = load i64, ptr %203, align 1
  %205 = add i64 %2, 7336514198459093435
  %206 = xor i64 %205, %202
  %207 = sub i64 5216419214072683403, %2
  %208 = xor i64 %207, %204
  %209 = zext i64 %206 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %198, %214
  %216 = icmp eq i32 %125, 13
  br i1 %216, label %250, label %217

217:                                              ; preds = %200
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %219 = load i64, ptr %218, align 1
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %221 = load i64, ptr %220, align 1
  %222 = add i64 %2, -1217880312389983593
  %223 = xor i64 %222, %219
  %224 = sub i64 8573350489219836230, %2
  %225 = xor i64 %224, %221
  %226 = zext i64 %223 to i128
  %227 = zext i64 %225 to i128
  %228 = mul nuw i128 %227, %226
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %215, %231
  %233 = icmp eq i32 %125, 14
  br i1 %233, label %250, label %234

234:                                              ; preds = %217
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %236 = load i64, ptr %235, align 1
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %238 = load i64, ptr %237, align 1
  %239 = add i64 %2, -4909775443879730369
  %240 = xor i64 %239, %236
  %241 = sub i64 -2282891677615274041, %2
  %242 = xor i64 %241, %238
  %243 = zext i64 %240 to i128
  %244 = zext i64 %242 to i128
  %245 = mul nuw i128 %244, %243
  %246 = lshr i128 %245, 64
  %247 = xor i128 %246, %245
  %248 = trunc i128 %247 to i64
  %249 = add i64 %232, %248
  br label %250

250:                                              ; preds = %132, %149, %166, %183, %200, %217, %234, %3
  %251 = phi i64 [ %130, %3 ], [ %147, %132 ], [ %164, %149 ], [ %181, %166 ], [ %198, %183 ], [ %215, %200 ], [ %232, %217 ], [ %249, %234 ]
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %253 = getelementptr inbounds i8, ptr %252, i64 -16
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds i8, ptr %252, i64 -8
  %256 = load i64, ptr %255, align 1
  %257 = add i64 %2, 8320639771003045937
  %258 = xor i64 %254, %257
  %259 = sub i64 -1453760514566526364, %2
  %260 = xor i64 %256, %259
  %261 = zext i64 %258 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %251, %266
  %268 = lshr i64 %267, 37
  %269 = xor i64 %268, %267
  %270 = mul i64 %269, 1609587791953885689
  %271 = lshr i64 %270, 32
  %272 = xor i64 %271, %270
  ret i64 %272
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { noinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
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
!23 = !{i64 2152062922}
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
!47 = distinct !{!47, !12}
