; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/665424e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/665424e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64_len256(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %0, i64 noundef 256) #10
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_64seed_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 200, 257) 256, i64 noundef %1) #10
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_64seed_len200(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef range(i64 200, 257) 200, ptr noundef nonnull @XXH3_kSecret, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64sec192_len256(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef 256, ptr noundef readonly %1, i64 noundef 192) #10
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @target_128seed_len256(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %1, i64 noundef 256, i64 noundef %2)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias noundef readonly %0, i64 noundef %1) unnamed_addr #4 {
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
  %11 = shl i64 %10, 10
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
  %85 = shl i64 %84, 6
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %87, i32 0, i32 3, i32 1)
  %88 = shl nuw i64 %84, 3
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

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef readonly %0, i64 noundef range(i64 200, 241) %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #5 {
  %5 = lshr i64 %1, 4
  %6 = mul i64 %1, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = sub i64 %8, %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %9, %11
  %13 = zext i64 %12 to i128
  %14 = load i64, ptr %2, align 1
  %15 = add i64 %14, %3
  %16 = load i64, ptr %0, align 1
  %17 = xor i64 %15, %16
  %18 = zext i64 %17 to i128
  %19 = mul nuw i128 %13, %18
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %6, %22
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %25 = load i64, ptr %24, align 1
  %26 = sub i64 %25, %3
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = xor i64 %26, %28
  %30 = zext i64 %29 to i128
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = add i64 %32, %3
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %33, %35
  %37 = zext i64 %36 to i128
  %38 = mul nuw i128 %30, %37
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %44 = load i64, ptr %43, align 1
  %45 = sub i64 %44, %3
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = xor i64 %45, %47
  %49 = zext i64 %48 to i128
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %51 = load i64, ptr %50, align 1
  %52 = add i64 %51, %3
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load i64, ptr %53, align 1
  %55 = xor i64 %52, %54
  %56 = zext i64 %55 to i128
  %57 = mul nuw i128 %49, %56
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %63 = load i64, ptr %62, align 1
  %64 = sub i64 %63, %3
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = xor i64 %64, %66
  %68 = zext i64 %67 to i128
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %70, %3
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %71, %73
  %75 = zext i64 %74 to i128
  %76 = mul nuw i128 %68, %75
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %82 = load i64, ptr %81, align 1
  %83 = sub i64 %82, %3
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = xor i64 %83, %85
  %87 = zext i64 %86 to i128
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %89 = load i64, ptr %88, align 1
  %90 = add i64 %89, %3
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %92 = load i64, ptr %91, align 1
  %93 = xor i64 %90, %92
  %94 = zext i64 %93 to i128
  %95 = mul nuw i128 %87, %94
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %101 = load i64, ptr %100, align 1
  %102 = sub i64 %101, %3
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %102, %104
  %106 = zext i64 %105 to i128
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %108 = load i64, ptr %107, align 1
  %109 = add i64 %108, %3
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %111 = load i64, ptr %110, align 1
  %112 = xor i64 %109, %111
  %113 = zext i64 %112 to i128
  %114 = mul nuw i128 %106, %113
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %120 = load i64, ptr %119, align 1
  %121 = sub i64 %120, %3
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = xor i64 %121, %123
  %125 = zext i64 %124 to i128
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %127 = load i64, ptr %126, align 1
  %128 = add i64 %127, %3
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = zext i64 %131 to i128
  %133 = mul nuw i128 %125, %132
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %139 = load i64, ptr %138, align 1
  %140 = sub i64 %139, %3
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %140, %142
  %144 = zext i64 %143 to i128
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %146 = load i64, ptr %145, align 1
  %147 = add i64 %146, %3
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = zext i64 %150 to i128
  %152 = mul nuw i128 %144, %151
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i64 %156, 37
  %158 = xor i64 %157, %156
  %159 = mul i64 %158, 1609587791953885689
  %160 = lshr i64 %159, 32
  %161 = xor i64 %160, %159
  %162 = getelementptr i8, ptr %2, i64 11
  %163 = load i64, ptr %162, align 1
  %164 = sub i64 %163, %3
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %166 = load i64, ptr %165, align 1
  %167 = xor i64 %164, %166
  %168 = zext i64 %167 to i128
  %169 = getelementptr i8, ptr %2, i64 3
  %170 = load i64, ptr %169, align 1
  %171 = add i64 %170, %3
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %173 = load i64, ptr %172, align 1
  %174 = xor i64 %171, %173
  %175 = zext i64 %174 to i128
  %176 = mul nuw i128 %168, %175
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %161, %179
  %181 = getelementptr i8, ptr %2, i64 27
  %182 = load i64, ptr %181, align 1
  %183 = sub i64 %182, %3
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %185 = load i64, ptr %184, align 1
  %186 = xor i64 %183, %185
  %187 = zext i64 %186 to i128
  %188 = getelementptr i8, ptr %2, i64 19
  %189 = load i64, ptr %188, align 1
  %190 = add i64 %189, %3
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %192 = load i64, ptr %191, align 1
  %193 = xor i64 %190, %192
  %194 = zext i64 %193 to i128
  %195 = mul nuw i128 %187, %194
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %180, %198
  %200 = getelementptr i8, ptr %2, i64 43
  %201 = load i64, ptr %200, align 1
  %202 = sub i64 %201, %3
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %204 = load i64, ptr %203, align 1
  %205 = xor i64 %202, %204
  %206 = zext i64 %205 to i128
  %207 = getelementptr i8, ptr %2, i64 35
  %208 = load i64, ptr %207, align 1
  %209 = add i64 %208, %3
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %211 = load i64, ptr %210, align 1
  %212 = xor i64 %209, %211
  %213 = zext i64 %212 to i128
  %214 = mul nuw i128 %206, %213
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %199, %217
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %220 = getelementptr i8, ptr %2, i64 51
  %221 = load i64, ptr %219, align 1
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %223 = load i64, ptr %222, align 1
  %224 = load i64, ptr %220, align 1
  %225 = add i64 %224, %3
  %226 = xor i64 %225, %221
  %227 = getelementptr i8, ptr %2, i64 59
  %228 = load i64, ptr %227, align 1
  %229 = sub i64 %228, %3
  %230 = xor i64 %229, %223
  %231 = zext i64 %226 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %218, %236
  %238 = icmp eq i64 %5, 12
  br i1 %238, label %301, label %239

239:                                              ; preds = %4
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %241 = getelementptr i8, ptr %2, i64 67
  %242 = load i64, ptr %240, align 1
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %244 = load i64, ptr %243, align 1
  %245 = load i64, ptr %241, align 1
  %246 = add i64 %245, %3
  %247 = xor i64 %246, %242
  %248 = getelementptr i8, ptr %2, i64 75
  %249 = load i64, ptr %248, align 1
  %250 = sub i64 %249, %3
  %251 = xor i64 %250, %244
  %252 = zext i64 %247 to i128
  %253 = zext i64 %251 to i128
  %254 = mul nuw i128 %253, %252
  %255 = lshr i128 %254, 64
  %256 = xor i128 %255, %254
  %257 = trunc i128 %256 to i64
  %258 = add i64 %237, %257
  %259 = icmp eq i64 %5, 13
  br i1 %259, label %301, label %260

260:                                              ; preds = %239
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %262 = getelementptr i8, ptr %2, i64 83
  %263 = load i64, ptr %261, align 1
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %265 = load i64, ptr %264, align 1
  %266 = load i64, ptr %262, align 1
  %267 = add i64 %266, %3
  %268 = xor i64 %267, %263
  %269 = getelementptr i8, ptr %2, i64 91
  %270 = load i64, ptr %269, align 1
  %271 = sub i64 %270, %3
  %272 = xor i64 %271, %265
  %273 = zext i64 %268 to i128
  %274 = zext i64 %272 to i128
  %275 = mul nuw i128 %274, %273
  %276 = lshr i128 %275, 64
  %277 = xor i128 %276, %275
  %278 = trunc i128 %277 to i64
  %279 = add i64 %258, %278
  %280 = icmp eq i64 %5, 14
  br i1 %280, label %301, label %281

281:                                              ; preds = %260
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %283 = getelementptr i8, ptr %2, i64 99
  %284 = load i64, ptr %282, align 1
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %286 = load i64, ptr %285, align 1
  %287 = load i64, ptr %283, align 1
  %288 = add i64 %287, %3
  %289 = xor i64 %288, %284
  %290 = getelementptr i8, ptr %2, i64 107
  %291 = load i64, ptr %290, align 1
  %292 = sub i64 %291, %3
  %293 = xor i64 %292, %286
  %294 = zext i64 %289 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %279, %299
  br label %301

301:                                              ; preds = %281, %260, %239, %4
  %302 = phi i64 [ %237, %4 ], [ %258, %239 ], [ %279, %260 ], [ %300, %281 ]
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %304 = getelementptr inbounds i8, ptr %303, i64 -16
  %305 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %306 = load i64, ptr %304, align 1
  %307 = getelementptr inbounds i8, ptr %303, i64 -8
  %308 = load i64, ptr %307, align 1
  %309 = load i64, ptr %305, align 1
  %310 = add i64 %309, %3
  %311 = xor i64 %310, %306
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %313 = load i64, ptr %312, align 1
  %314 = sub i64 %313, %3
  %315 = xor i64 %314, %308
  %316 = zext i64 %311 to i128
  %317 = zext i64 %315 to i128
  %318 = mul nuw i128 %317, %316
  %319 = lshr i128 %318, 64
  %320 = xor i128 %319, %318
  %321 = trunc i128 %320 to i64
  %322 = add i64 %302, %321
  %323 = lshr i64 %322, 37
  %324 = xor i64 %323, %322
  %325 = mul i64 %324, 1609587791953885689
  %326 = lshr i64 %325, 32
  %327 = xor i64 %326, %325
  ret i64 %327
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #7 {
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
  %15 = shl i64 %14, 10
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
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1)
  %92 = shl nuw i64 %88, 3
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
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #10
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
  %230 = shl i64 %229, 10
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
  %304 = shl i64 %303, 6
  %305 = getelementptr inbounds nuw i8, ptr %298, i64 %304
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %306, i32 0, i32 3, i32 1)
  %307 = shl nuw i64 %303, 3
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
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #10
  br label %435

435:                                              ; preds = %122, %337
  %436 = phi i64 [ %199, %122 ], [ %434, %337 ]
  ret i64 %436
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias noundef readonly %0, i64 noundef %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #4 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %7, %8
  br i1 %11, label %88, label %12

12:                                               ; preds = %4
  %13 = icmp ult i64 %5, 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %17 = load <4 x i64>, ptr %15, align 1
  %18 = getelementptr inbounds i8, ptr %14, i64 -32
  %19 = load <4 x i64>, ptr %18, align 1
  br label %20

20:                                               ; preds = %12, %63
  %21 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %12 ], [ %85, %63 ]
  %22 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %12 ], [ %75, %63 ]
  %23 = phi i64 [ 0, %12 ], [ %86, %63 ]
  %24 = mul i64 %23, %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  br i1 %13, label %63, label %26

26:                                               ; preds = %20, %26
  %27 = phi <4 x i64> [ %60, %26 ], [ %21, %20 ]
  %28 = phi <4 x i64> [ %46, %26 ], [ %22, %20 ]
  %29 = phi i64 [ %61, %26 ], [ 0, %20 ]
  %30 = shl i64 %29, 6
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %32, i32 0, i32 3, i32 1)
  %33 = shl nuw i64 %29, 3
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load <4 x i64>, ptr %31, align 1
  %36 = load <4 x i64>, ptr %34, align 1
  %37 = xor <4 x i64> %36, %35
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %28, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %48 = load <4 x i64>, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %50 = load <4 x i64>, ptr %49, align 1
  %51 = xor <4 x i64> %50, %48
  %52 = bitcast <4 x i64> %51 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %51, splat (i64 4294967295)
  %56 = and <4 x i64> %54, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %59 = add <4 x i64> %27, %58
  %60 = add <4 x i64> %59, %57
  %61 = add nuw nsw i64 %29, 1
  %62 = icmp eq i64 %61, %16
  br i1 %62, label %63, label %26

63:                                               ; preds = %26, %20
  %64 = phi <4 x i64> [ %21, %20 ], [ %60, %26 ]
  %65 = phi <4 x i64> [ %22, %20 ], [ %46, %26 ]
  %66 = lshr <4 x i64> %65, splat (i64 47)
  %67 = xor <4 x i64> %17, %66
  %68 = xor <4 x i64> %67, %65
  %69 = bitcast <4 x i64> %68 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = and <4 x i64> %68, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, splat (i64 2654435761)
  %74 = mul <4 x i64> %71, splat (i64 -7046029290881679360)
  %75 = add <4 x i64> %74, %73
  %76 = lshr <4 x i64> %64, splat (i64 47)
  %77 = xor <4 x i64> %19, %76
  %78 = xor <4 x i64> %77, %64
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, splat (i64 2654435761)
  %84 = mul <4 x i64> %81, splat (i64 -7046029290881679360)
  %85 = add <4 x i64> %84, %83
  %86 = add nuw i64 %23, 1
  %87 = icmp ult i64 %86, %9
  br i1 %87, label %20, label %88

88:                                               ; preds = %63, %4
  %89 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %85, %63 ]
  %90 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %75, %63 ]
  %91 = mul i64 %9, %7
  %92 = lshr i64 %10, 6
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %94 = icmp ult i64 %10, 64
  br i1 %94, label %132, label %95

95:                                               ; preds = %88, %95
  %96 = phi <4 x i64> [ %129, %95 ], [ %89, %88 ]
  %97 = phi <4 x i64> [ %115, %95 ], [ %90, %88 ]
  %98 = phi i64 [ %130, %95 ], [ 0, %88 ]
  %99 = shl i64 %98, 6
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %101, i32 0, i32 3, i32 1)
  %102 = shl nuw i64 %98, 3
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %104 = load <4 x i64>, ptr %100, align 1
  %105 = load <4 x i64>, ptr %103, align 1
  %106 = xor <4 x i64> %105, %104
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %97, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %117 = load <4 x i64>, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = xor <4 x i64> %119, %117
  %121 = bitcast <4 x i64> %120 to <8 x i32>
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %123 = bitcast <8 x i32> %122 to <4 x i64>
  %124 = and <4 x i64> %120, splat (i64 4294967295)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %96, %127
  %129 = add <4 x i64> %128, %126
  %130 = add nuw nsw i64 %98, 1
  %131 = icmp samesign ult i64 %130, %92
  br i1 %131, label %95, label %132

132:                                              ; preds = %95, %88
  %133 = phi <4 x i64> [ %89, %88 ], [ %129, %95 ]
  %134 = phi <4 x i64> [ %90, %88 ], [ %115, %95 ]
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %136 = getelementptr inbounds i8, ptr %135, i64 -64
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %138 = getelementptr inbounds i8, ptr %137, i64 -71
  %139 = load <4 x i64>, ptr %136, align 1
  %140 = load <4 x i64>, ptr %138, align 1
  %141 = xor <4 x i64> %140, %139
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %134, %148
  %150 = add <4 x i64> %149, %147
  %151 = getelementptr inbounds i8, ptr %135, i64 -32
  %152 = load <4 x i64>, ptr %151, align 1
  %153 = getelementptr inbounds i8, ptr %137, i64 -39
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = xor <4 x i64> %154, %152
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = shufflevector <4 x i64> %152, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %163 = add <4 x i64> %133, %162
  %164 = add <4 x i64> %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %166 = mul i64 %1, -7046029288634856825
  %167 = extractelement <4 x i64> %150, i64 0
  %168 = load i64, ptr %165, align 1
  %169 = xor i64 %168, %167
  %170 = extractelement <4 x i64> %150, i64 1
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %172 = load i64, ptr %171, align 1
  %173 = xor i64 %172, %170
  %174 = zext i64 %169 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %166, %179
  %181 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %182 = extractelement <4 x i64> %150, i64 2
  %183 = load i64, ptr %181, align 1
  %184 = xor i64 %183, %182
  %185 = extractelement <4 x i64> %150, i64 3
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %187 = load i64, ptr %186, align 1
  %188 = xor i64 %187, %185
  %189 = zext i64 %184 to i128
  %190 = zext i64 %188 to i128
  %191 = mul nuw i128 %190, %189
  %192 = lshr i128 %191, 64
  %193 = xor i128 %192, %191
  %194 = trunc i128 %193 to i64
  %195 = add i64 %180, %194
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %197 = extractelement <4 x i64> %164, i64 0
  %198 = load i64, ptr %196, align 1
  %199 = xor i64 %198, %197
  %200 = extractelement <4 x i64> %164, i64 1
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %202 = load i64, ptr %201, align 1
  %203 = xor i64 %202, %200
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %195, %209
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %212 = extractelement <4 x i64> %164, i64 2
  %213 = load i64, ptr %211, align 1
  %214 = xor i64 %213, %212
  %215 = extractelement <4 x i64> %164, i64 3
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %217 = load i64, ptr %216, align 1
  %218 = xor i64 %217, %215
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %210, %224
  %226 = lshr i64 %225, 37
  %227 = xor i64 %226, %225
  %228 = mul i64 %227, 1609587791953885689
  %229 = lshr i64 %228, 32
  %230 = xor i64 %229, %228
  ret i64 %230
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #7 {
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
  %15 = shl i64 %14, 10
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
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1)
  %92 = shl nuw i64 %88, 3
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
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #10
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
  %273 = shl i64 %272, 10
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
  %347 = shl i64 %346, 6
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 %347
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %349, i32 0, i32 3, i32 1)
  %350 = shl nuw i64 %346, 3
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
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #10
  br label %537

537:                                              ; preds = %122, %380
  %538 = phi i64 [ %199, %122 ], [ %477, %380 ]
  %539 = phi i64 [ %242, %122 ], [ %536, %380 ]
  %540 = insertvalue { i64, i64 } poison, i64 %538, 0
  %541 = insertvalue { i64, i64 } %540, i64 %539, 1
  ret { i64, i64 } %541
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { noinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!23 = distinct !{!23, !12}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_accumulate: argument 0"}
!26 = distinct !{!26, !"XXH3_accumulate"}
!27 = !{!28, !25}
!28 = distinct !{!28, !29, !"XXH3_accumulate_512_avx2: argument 0"}
!29 = distinct !{!29, !"XXH3_accumulate_512_avx2"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_accumulate: argument 0"}
!32 = distinct !{!32, !"XXH3_accumulate"}
!33 = !{!34, !31}
!34 = distinct !{!34, !35, !"XXH3_accumulate_512_avx2: argument 0"}
!35 = distinct !{!35, !"XXH3_accumulate_512_avx2"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_accumulate_512_avx2: argument 0"}
!38 = distinct !{!38, !"XXH3_accumulate_512_avx2"}
!39 = !{i64 2152062581}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_scrambleAcc_avx2: argument 0"}
!42 = distinct !{!42, !"XXH3_scrambleAcc_avx2"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_accumulate: argument 0"}
!45 = distinct !{!45, !"XXH3_accumulate"}
!46 = !{!47, !44}
!47 = distinct !{!47, !48, !"XXH3_accumulate_512_avx2: argument 0"}
!48 = distinct !{!48, !"XXH3_accumulate_512_avx2"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"XXH3_accumulate: argument 0"}
!51 = distinct !{!51, !"XXH3_accumulate"}
!52 = !{!53, !50}
!53 = distinct !{!53, !54, !"XXH3_accumulate_512_avx2: argument 0"}
!54 = distinct !{!54, !"XXH3_accumulate_512_avx2"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"XXH3_accumulate_512_avx2: argument 0"}
!57 = distinct !{!57, !"XXH3_accumulate_512_avx2"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_mergeAccs: argument 1"}
!60 = distinct !{!60, !"XXH3_mergeAccs"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"XXH3_mergeAccs: argument 0"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_scrambleAcc_avx2: argument 0"}
!65 = distinct !{!65, !"XXH3_scrambleAcc_avx2"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_accumulate: argument 0"}
!68 = distinct !{!68, !"XXH3_accumulate"}
!69 = !{!70, !67}
!70 = distinct !{!70, !71, !"XXH3_accumulate_512_avx2: argument 0"}
!71 = distinct !{!71, !"XXH3_accumulate_512_avx2"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"XXH3_accumulate: argument 0"}
!74 = distinct !{!74, !"XXH3_accumulate"}
!75 = !{!76, !73}
!76 = distinct !{!76, !77, !"XXH3_accumulate_512_avx2: argument 0"}
!77 = distinct !{!77, !"XXH3_accumulate_512_avx2"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_accumulate_512_avx2: argument 0"}
!80 = distinct !{!80, !"XXH3_accumulate_512_avx2"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_mergeAccs: argument 1"}
!83 = distinct !{!83, !"XXH3_mergeAccs"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"XXH3_mergeAccs: argument 0"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_hashLong_128b_internal: argument 0"}
!88 = distinct !{!88, !"XXH3_hashLong_128b_internal"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"XXH3_hashLong_128b_internal: argument 1"}
!91 = !{!92, !90}
!92 = distinct !{!92, !93, !"XXH3_accumulate: argument 0"}
!93 = distinct !{!93, !"XXH3_accumulate"}
!94 = !{!95, !92, !90}
!95 = distinct !{!95, !96, !"XXH3_accumulate_512_avx2: argument 0"}
!96 = distinct !{!96, !"XXH3_accumulate_512_avx2"}
!97 = !{!95, !92, !87}
!98 = !{!99, !90}
!99 = distinct !{!99, !100, !"XXH3_accumulate: argument 0"}
!100 = distinct !{!100, !"XXH3_accumulate"}
!101 = !{!102, !99, !90}
!102 = distinct !{!102, !103, !"XXH3_accumulate_512_avx2: argument 0"}
!103 = distinct !{!103, !"XXH3_accumulate_512_avx2"}
!104 = !{!102, !99, !87}
!105 = !{!106, !90}
!106 = distinct !{!106, !107, !"XXH3_accumulate_512_avx2: argument 0"}
!107 = distinct !{!107, !"XXH3_accumulate_512_avx2"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!110 = distinct !{!110, !"XXH3_hashLong_128b_withSeed_internal"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"XXH3_hashLong_128b_internal: argument 0"}
!113 = distinct !{!113, !"XXH3_hashLong_128b_internal"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"XXH3_hashLong_128b_internal: argument 1"}
!116 = !{!117, !112}
!117 = distinct !{!117, !118, !"XXH3_scrambleAcc_avx2: argument 0"}
!118 = distinct !{!118, !"XXH3_scrambleAcc_avx2"}
!119 = !{!120, !115}
!120 = distinct !{!120, !121, !"XXH3_accumulate: argument 0"}
!121 = distinct !{!121, !"XXH3_accumulate"}
!122 = !{!123, !120, !115}
!123 = distinct !{!123, !124, !"XXH3_accumulate_512_avx2: argument 0"}
!124 = distinct !{!124, !"XXH3_accumulate_512_avx2"}
!125 = !{!123, !120, !112}
!126 = !{!127, !115}
!127 = distinct !{!127, !128, !"XXH3_accumulate: argument 0"}
!128 = distinct !{!128, !"XXH3_accumulate"}
!129 = !{!130, !127, !115}
!130 = distinct !{!130, !131, !"XXH3_accumulate_512_avx2: argument 0"}
!131 = distinct !{!131, !"XXH3_accumulate_512_avx2"}
!132 = !{!130, !127, !112}
!133 = !{!134, !115}
!134 = distinct !{!134, !135, !"XXH3_accumulate_512_avx2: argument 0"}
!135 = distinct !{!135, !"XXH3_accumulate_512_avx2"}
!136 = !{!134, !112}
!137 = !{!138}
!138 = distinct !{!138, !139, !"XXH3_mergeAccs: argument 1"}
!139 = distinct !{!139, !"XXH3_mergeAccs"}
!140 = !{!141, !112}
!141 = distinct !{!141, !139, !"XXH3_mergeAccs: argument 0"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"XXH3_mergeAccs: argument 1"}
!144 = distinct !{!144, !"XXH3_mergeAccs"}
!145 = !{!146, !112}
!146 = distinct !{!146, !144, !"XXH3_mergeAccs: argument 0"}
