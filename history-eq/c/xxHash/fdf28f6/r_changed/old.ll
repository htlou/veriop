; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/fdf28f6/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/fdf28f6/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @target_64_len17(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 1
  %5 = xor i64 %2, -4734510112055689544
  %6 = xor i64 %4, 2066345149520216444
  %7 = zext i64 %5 to i128
  %8 = zext i64 %6 to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = xor i128 %10, %9
  %12 = trunc i128 %11 to i64
  %13 = add i64 %12, -9102033464535256329
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %15, -2623469361688619810
  %19 = xor i64 %17, 2262974939099578482
  %20 = zext i64 %18 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %13, %25
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587791953885689
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  ret i64 %31
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @target_64seed_len33(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef 33, i64 noundef %1, ptr noundef nonnull @XXH3_hashLong_64b_withSeed) #12
  ret i64 %3
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @target_64seed_len80(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef 80, i64 noundef %1, ptr noundef nonnull @XXH3_hashLong_64b_withSeed) #12
  ret i64 %3
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @target_64seed_len128(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef 128, i64 noundef %1, ptr noundef nonnull @XXH3_hashLong_64b_withSeed) #12
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: read) uwtable
define dso_local void @target_128seed_len100(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %6 = tail call fastcc { i64, i64 } @XXH128_mix32B(i64 -3626654062522721092, i64 0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 96), i64 noundef %2) #12
  %7 = extractvalue { i64, i64 } %6, 1
  %8 = extractvalue { i64, i64 } %6, 0
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %11 = tail call fastcc { i64, i64 } @XXH128_mix32B(i64 %8, i64 %7, ptr noundef nonnull readonly %9, ptr noundef nonnull readonly %10, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), i64 noundef %2) #12
  %12 = extractvalue { i64, i64 } %11, 1
  %13 = extractvalue { i64, i64 } %11, 0
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %16 = tail call fastcc { i64, i64 } @XXH128_mix32B(i64 %13, i64 %12, ptr noundef nonnull readonly %14, ptr noundef nonnull readonly %15, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 32), i64 noundef %2) #12
  %17 = extractvalue { i64, i64 } %16, 1
  %18 = extractvalue { i64, i64 } %16, 0
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %20 = tail call fastcc { i64, i64 } @XXH128_mix32B(i64 %18, i64 %17, ptr noundef readonly %1, ptr noundef nonnull readonly %19, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #12
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  %23 = add i64 %21, %22
  %24 = mul i64 %21, -7046029288634856825
  %25 = mul i64 %22, -8796714831421723037
  %26 = sub i64 100, %2
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %25, %27
  %29 = add i64 %28, %24
  %30 = lshr i64 %23, 37
  %31 = xor i64 %30, %23
  %32 = mul i64 %31, 1609587791953885689
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  %35 = lshr i64 %29, 37
  %36 = xor i64 %35, %29
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = sub i64 0, %39
  store i64 %34, ptr %0, align 8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %40, ptr %41, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #3

; Function Attrs: nofree norecurse nosync nounwind optsize uwtable
define dso_local i64 @target_64seed_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef 256, i64 noundef %1, ptr nonnull poison, i64 poison) #13, !callees !19
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind optsize uwtable
define dso_local i64 @target_64_len256(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca [8 x i64], align 32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %2, ptr noundef nonnull align 32 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %2, ptr noundef readonly %0, i64 noundef 256, ptr noundef nonnull @XXH3_kSecret) #12
  %3 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %2, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 noundef 3997421333012711168) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  ret i64 %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef range(i64 17, 257) %1, i64 noundef %2, ptr noundef readonly %3) unnamed_addr #1 {
  %5 = icmp samesign ult i64 %1, 129
  br i1 %5, label %6, label %148

6:                                                ; preds = %4
  %7 = mul i64 %1, -7046029288634856825
  %8 = icmp samesign ugt i64 %1, 32
  br i1 %8, label %9, label %111

9:                                                ; preds = %6
  %10 = icmp samesign ugt i64 %1, 64
  br i1 %10, label %11, label %78

11:                                               ; preds = %9
  %12 = icmp samesign ugt i64 %1, 96
  br i1 %12, label %13, label %45

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i64, ptr %16, align 1
  %18 = add i64 %2, 4554437623014685352
  %19 = xor i64 %15, %18
  %20 = sub i64 2111919702937427193, %2
  %21 = xor i64 %17, %20
  %22 = zext i64 %19 to i128
  %23 = zext i64 %21 to i128
  %24 = mul nuw i128 %23, %22
  %25 = lshr i128 %24, 64
  %26 = xor i128 %25, %24
  %27 = trunc i128 %26 to i64
  %28 = add i64 %7, %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %30 = getelementptr inbounds i8, ptr %29, i64 -64
  %31 = load i64, ptr %30, align 1
  %32 = getelementptr inbounds i8, ptr %29, i64 -56
  %33 = load i64, ptr %32, align 1
  %34 = add i64 %2, 3556072174620004746
  %35 = xor i64 %31, %34
  %36 = sub i64 7238261902898274248, %2
  %37 = xor i64 %33, %36
  %38 = zext i64 %35 to i128
  %39 = zext i64 %37 to i128
  %40 = mul nuw i128 %39, %38
  %41 = lshr i128 %40, 64
  %42 = xor i128 %41, %40
  %43 = trunc i128 %42 to i64
  %44 = add i64 %28, %43
  br label %45

45:                                               ; preds = %13, %11
  %46 = phi i64 [ %44, %13 ], [ %7, %11 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %2, -3818837453329782724
  %52 = xor i64 %48, %51
  %53 = sub i64 -6688317018830679928, %2
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %63 = getelementptr inbounds i8, ptr %62, i64 -48
  %64 = load i64, ptr %63, align 1
  %65 = getelementptr inbounds i8, ptr %62, i64 -40
  %66 = load i64, ptr %65, align 1
  %67 = add i64 %2, 5690594596133299313
  %68 = xor i64 %64, %67
  %69 = sub i64 -2833645246901970632, %2
  %70 = xor i64 %66, %69
  %71 = zext i64 %68 to i128
  %72 = zext i64 %70 to i128
  %73 = mul nuw i128 %72, %71
  %74 = lshr i128 %73, 64
  %75 = xor i128 %74, %73
  %76 = trunc i128 %75 to i64
  %77 = add i64 %61, %76
  br label %78

78:                                               ; preds = %45, %9
  %79 = phi i64 [ %77, %45 ], [ %7, %9 ]
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %2, 8711581037947681227
  %85 = xor i64 %81, %84
  %86 = sub i64 2410270004345854594, %2
  %87 = xor i64 %83, %86
  %88 = zext i64 %85 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %79, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %96 = getelementptr inbounds i8, ptr %95, i64 -32
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds i8, ptr %95, i64 -24
  %99 = load i64, ptr %98, align 1
  %100 = add i64 %2, -8204357891075471176
  %101 = xor i64 %97, %100
  %102 = sub i64 5487137525590930912, %2
  %103 = xor i64 %99, %102
  %104 = zext i64 %101 to i128
  %105 = zext i64 %103 to i128
  %106 = mul nuw i128 %105, %104
  %107 = lshr i128 %106, 64
  %108 = xor i128 %107, %106
  %109 = trunc i128 %108 to i64
  %110 = add i64 %94, %109
  br label %111

111:                                              ; preds = %6, %78
  %112 = phi i64 [ %110, %78 ], [ %7, %6 ]
  %113 = load i64, ptr %0, align 1
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = add i64 %2, -4734510112055689544
  %117 = xor i64 %113, %116
  %118 = sub i64 2066345149520216444, %2
  %119 = xor i64 %115, %118
  %120 = zext i64 %117 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %112, %125
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %128 = getelementptr inbounds i8, ptr %127, i64 -16
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds i8, ptr %127, i64 -8
  %131 = load i64, ptr %130, align 1
  %132 = add i64 %2, -2623469361688619810
  %133 = xor i64 %129, %132
  %134 = sub i64 2262974939099578482, %2
  %135 = xor i64 %131, %134
  %136 = zext i64 %133 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %126, %141
  %143 = lshr i64 %142, 37
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587791953885689
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  br label %243

148:                                              ; preds = %4
  %149 = icmp samesign ult i64 %1, 241
  br i1 %149, label %150, label %241

150:                                              ; preds = %148
  %151 = mul i64 %1, -7046029288634856825
  %152 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %151, i64 0
  %153 = insertelement <4 x i64> poison, i64 %2, i64 0
  %154 = shufflevector <4 x i64> %153, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %155

155:                                              ; preds = %155, %150
  %156 = phi i64 [ 0, %150 ], [ %178, %155 ]
  %157 = phi <4 x i64> [ %152, %150 ], [ %177, %155 ]
  %158 = shl nuw nsw i64 %156, 4
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 %158
  %160 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %158
  %161 = load <8 x i64>, ptr %159, align 1
  %162 = shufflevector <8 x i64> %161, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %163 = shufflevector <8 x i64> %161, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %164 = load <8 x i64>, ptr %160, align 64
  %165 = shufflevector <8 x i64> %164, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %166 = shufflevector <8 x i64> %164, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %167 = add <4 x i64> %165, %154
  %168 = xor <4 x i64> %167, %162
  %169 = sub <4 x i64> %166, %154
  %170 = xor <4 x i64> %169, %163
  %171 = zext <4 x i64> %168 to <4 x i128>
  %172 = zext <4 x i64> %170 to <4 x i128>
  %173 = mul nuw <4 x i128> %172, %171
  %174 = lshr <4 x i128> %173, splat (i128 64)
  %175 = xor <4 x i128> %174, %173
  %176 = trunc <4 x i128> %175 to <4 x i64>
  %177 = add <4 x i64> %157, %176
  %178 = add nuw i64 %156, 4
  %179 = icmp eq i64 %178, 8
  br i1 %179, label %180, label %155

180:                                              ; preds = %155
  %181 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %177)
  %182 = trunc nuw nsw i64 %1 to i32
  %183 = lshr i32 %182, 4
  %184 = lshr i64 %181, 37
  %185 = xor i64 %184, %181
  %186 = mul i64 %185, 1609587791953885689
  %187 = lshr i64 %186, 32
  %188 = xor i64 %187, %186
  %189 = icmp eq i32 %183, 8
  br i1 %189, label %218, label %190

190:                                              ; preds = %180
  %191 = zext nneg i32 %183 to i64
  br label %192

192:                                              ; preds = %192, %190
  %193 = phi i64 [ 8, %190 ], [ %216, %192 ]
  %194 = phi i64 [ %188, %190 ], [ %215, %192 ]
  %195 = shl nsw i64 %193, 4
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 %195
  %197 = getelementptr i8, ptr @XXH3_kSecret, i64 %195
  %198 = getelementptr i8, ptr %197, i64 -125
  %199 = load i64, ptr %196, align 1
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %201 = load i64, ptr %200, align 1
  %202 = load i64, ptr %198, align 1
  %203 = add i64 %202, %2
  %204 = xor i64 %203, %199
  %205 = getelementptr i8, ptr %197, i64 -117
  %206 = load i64, ptr %205, align 1
  %207 = sub i64 %206, %2
  %208 = xor i64 %207, %201
  %209 = zext i64 %204 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %194, %214
  %216 = add nuw nsw i64 %193, 1
  %217 = icmp eq i64 %216, %191
  br i1 %217, label %218, label %192

218:                                              ; preds = %192, %180
  %219 = phi i64 [ %188, %180 ], [ %215, %192 ]
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %221 = getelementptr inbounds i8, ptr %220, i64 -16
  %222 = load i64, ptr %221, align 1
  %223 = getelementptr inbounds i8, ptr %220, i64 -8
  %224 = load i64, ptr %223, align 1
  %225 = add i64 %2, 8320639771003045937
  %226 = xor i64 %222, %225
  %227 = sub i64 -1453760514566526364, %2
  %228 = xor i64 %224, %227
  %229 = zext i64 %226 to i128
  %230 = zext i64 %228 to i128
  %231 = mul nuw i128 %230, %229
  %232 = lshr i128 %231, 64
  %233 = xor i128 %232, %231
  %234 = trunc i128 %233 to i64
  %235 = add i64 %219, %234
  %236 = lshr i64 %235, 37
  %237 = xor i64 %236, %235
  %238 = mul i64 %237, 1609587791953885689
  %239 = lshr i64 %238, 32
  %240 = xor i64 %239, %238
  br label %243

241:                                              ; preds = %148
  %242 = tail call i64 %3(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192) #13, !callees !19
  br label %243

243:                                              ; preds = %241, %218, %111
  %244 = phi i64 [ %147, %111 ], [ %240, %218 ], [ %242, %241 ]
  ret i64 %244
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias noundef nonnull %0, ptr noalias noundef readonly %1, i64 noundef %2, ptr noalias noundef readonly %3) unnamed_addr #6 {
  %5 = add i64 %2, -1
  %6 = icmp ult i64 %5, 1024
  br i1 %6, label %64, label %7

7:                                                ; preds = %4
  %8 = lshr i64 %5, 10
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 128
  br label %10

10:                                               ; preds = %7, %61
  %11 = phi i64 [ 0, %7 ], [ %62, %61 ]
  %12 = shl nuw i64 %11, 10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  br label %14

14:                                               ; preds = %40, %10
  %15 = phi i64 [ %41, %40 ], [ 0, %10 ]
  %16 = shl nuw i64 %15, 6
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %18, i32 0, i32 3, i32 1)
  %19 = shl nuw nsw i64 %15, 3
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 %19
  br label %21

21:                                               ; preds = %21, %14
  %22 = phi i1 [ true, %14 ], [ false, %21 ]
  %23 = phi i64 [ 0, %14 ], [ 1, %21 ]
  %24 = getelementptr inbounds nuw <4 x i64>, ptr %17, i64 %23
  %25 = load <4 x i64>, ptr %24, align 1
  %26 = getelementptr inbounds nuw <4 x i64>, ptr %20, i64 %23
  %27 = load <4 x i64>, ptr %26, align 1
  %28 = xor <4 x i64> %27, %25
  %29 = bitcast <4 x i64> %28 to <8 x i32>
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %31 = bitcast <8 x i32> %30 to <4 x i64>
  %32 = and <4 x i64> %28, splat (i64 4294967295)
  %33 = and <4 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <4 x i64> %33, %32
  %35 = shufflevector <4 x i64> %25, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %36 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %23
  %37 = load <4 x i64>, ptr %36, align 32
  %38 = add <4 x i64> %37, %35
  %39 = add <4 x i64> %38, %34
  store <4 x i64> %39, ptr %36, align 32
  br i1 %22, label %21, label %40

40:                                               ; preds = %21
  %41 = add nuw nsw i64 %15, 1
  %42 = icmp eq i64 %41, 16
  br i1 %42, label %43, label %14

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %44, %43
  %45 = phi i1 [ true, %43 ], [ false, %44 ]
  %46 = phi i64 [ 0, %43 ], [ 1, %44 ]
  %47 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %46
  %48 = load <4 x i64>, ptr %47, align 32
  %49 = lshr <4 x i64> %48, splat (i64 47)
  %50 = getelementptr inbounds nuw <4 x i64>, ptr %9, i64 %46
  %51 = load <4 x i64>, ptr %50, align 1
  %52 = xor <4 x i64> %49, %51
  %53 = xor <4 x i64> %52, %48
  %54 = bitcast <4 x i64> %53 to <8 x i32>
  %55 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %56 = bitcast <8 x i32> %55 to <4 x i64>
  %57 = and <4 x i64> %53, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, splat (i64 2654435761)
  %59 = mul <4 x i64> %56, splat (i64 -7046029290881679360)
  %60 = add <4 x i64> %59, %58
  store <4 x i64> %60, ptr %47, align 32
  br i1 %45, label %44, label %61

61:                                               ; preds = %44
  %62 = add nuw nsw i64 %11, 1
  %63 = icmp eq i64 %62, %8
  br i1 %63, label %64, label %10

64:                                               ; preds = %61, %4
  %65 = and i64 %5, -1024
  %66 = lshr i64 %5, 6
  %67 = and i64 %66, 15
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 %65
  %69 = icmp eq i64 %67, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %64, %96
  %71 = phi i64 [ %97, %96 ], [ 0, %64 ]
  %72 = shl nuw i64 %71, 6
  %73 = getelementptr inbounds nuw i8, ptr %68, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %74, i32 0, i32 3, i32 1)
  %75 = shl nuw nsw i64 %71, 3
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 %75
  br label %77

77:                                               ; preds = %77, %70
  %78 = phi i1 [ true, %70 ], [ false, %77 ]
  %79 = phi i64 [ 0, %70 ], [ 1, %77 ]
  %80 = getelementptr inbounds nuw <4 x i64>, ptr %73, i64 %79
  %81 = load <4 x i64>, ptr %80, align 1
  %82 = getelementptr inbounds nuw <4 x i64>, ptr %76, i64 %79
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = xor <4 x i64> %83, %81
  %85 = bitcast <4 x i64> %84 to <8 x i32>
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %87 = bitcast <8 x i32> %86 to <4 x i64>
  %88 = and <4 x i64> %84, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %79
  %93 = load <4 x i64>, ptr %92, align 32
  %94 = add <4 x i64> %93, %91
  %95 = add <4 x i64> %94, %90
  store <4 x i64> %95, ptr %92, align 32
  br i1 %78, label %77, label %96

96:                                               ; preds = %77
  %97 = add nuw nsw i64 %71, 1
  %98 = icmp eq i64 %97, %67
  br i1 %98, label %99, label %70

99:                                               ; preds = %96, %64
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %101 = getelementptr inbounds i8, ptr %100, i64 -64
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 121
  br label %103

103:                                              ; preds = %103, %99
  %104 = phi i1 [ true, %99 ], [ false, %103 ]
  %105 = phi i64 [ 0, %99 ], [ 1, %103 ]
  %106 = getelementptr inbounds nuw <4 x i64>, ptr %101, i64 %105
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = getelementptr inbounds nuw <4 x i64>, ptr %102, i64 %105
  %109 = load <4 x i64>, ptr %108, align 1
  %110 = xor <4 x i64> %109, %107
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %105
  %119 = load <4 x i64>, ptr %118, align 32
  %120 = add <4 x i64> %119, %117
  %121 = add <4 x i64> %120, %116
  store <4 x i64> %121, ptr %118, align 32
  br i1 %104, label %103, label %122

122:                                              ; preds = %103
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_mergeAccs(ptr noalias noundef nonnull readonly %0, ptr noalias noundef readonly %1, i64 noundef %2) unnamed_addr #7 {
  %4 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %2, i64 0
  %5 = load <8 x i64>, ptr %1, align 1
  %6 = load <8 x i64>, ptr %0, align 8
  %7 = xor <8 x i64> %5, %6
  %8 = shufflevector <8 x i64> %7, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %9 = zext <4 x i64> %8 to <4 x i128>
  %10 = xor <8 x i64> %5, %6
  %11 = shufflevector <8 x i64> %10, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %12 = zext <4 x i64> %11 to <4 x i128>
  %13 = mul nuw <4 x i128> %9, %12
  %14 = lshr <4 x i128> %13, splat (i128 64)
  %15 = xor <4 x i128> %14, %13
  %16 = trunc <4 x i128> %15 to <4 x i64>
  %17 = add <4 x i64> %4, %16
  %18 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %17)
  %19 = lshr i64 %18, 37
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, 1609587791953885689
  %22 = lshr i64 %21, 32
  %23 = xor i64 %22, %21
  ret i64 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind optsize uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr readnone %3, i64 %4) #4 {
  %6 = alloca [8 x i64], align 32
  %7 = alloca [8 x i64], align 32
  %8 = alloca [192 x i8], align 32
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %7, ptr noundef nonnull align 32 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret) #12
  %11 = mul i64 %1, -7046029288634856825
  %12 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %7, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 noundef %11) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  br label %33

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #14
  %14 = insertelement <4 x i64> poison, i64 %2, i64 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %27, %16 ]
  %18 = shl nuw nsw i64 %17, 4
  %19 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %18
  %20 = load <8 x i64>, ptr %19, align 64
  %21 = shufflevector <8 x i64> %20, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %22 = shufflevector <8 x i64> %20, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %23 = add <4 x i64> %21, %15
  %24 = sub <4 x i64> %22, %15
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 %18
  %26 = shufflevector <4 x i64> %23, <4 x i64> %24, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %26, ptr %25, align 32
  %27 = add nuw i64 %17, 4
  %28 = icmp eq i64 %27, 12
  br i1 %28, label %29, label %16

29:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %6, ptr noundef nonnull align 32 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull readonly %8) #12
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %31 = mul i64 %1, -7046029288634856825
  %32 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %30, i64 noundef %31) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #14
  br label %33

33:                                               ; preds = %10, %29
  %34 = phi i64 [ %12, %10 ], [ %32, %29 ]
  ret i64 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH128_mix32B(i64 %0, i64 %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, i64 noundef %5) unnamed_addr #9 {
  %7 = load i64, ptr %2, align 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %4, align 1
  %11 = add i64 %10, %5
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %5
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %0, %22
  %24 = load i64, ptr %3, align 1
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %26 = load i64, ptr %25, align 1
  %27 = add i64 %26, %24
  %28 = xor i64 %23, %27
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = add i64 %30, %5
  %32 = xor i64 %31, %24
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %34 = load i64, ptr %33, align 1
  %35 = sub i64 %34, %5
  %36 = xor i64 %35, %26
  %37 = zext i64 %32 to i128
  %38 = zext i64 %36 to i128
  %39 = mul nuw i128 %38, %37
  %40 = lshr i128 %39, 64
  %41 = xor i128 %40, %39
  %42 = trunc i128 %41 to i64
  %43 = add i64 %1, %42
  %44 = add i64 %9, %7
  %45 = xor i64 %43, %44
  %46 = insertvalue { i64, i64 } poison, i64 %28, 0
  %47 = insertvalue { i64, i64 } %46, i64 %45, 1
  ret { i64, i64 } %47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8, !10}
!6 = distinct !{!6, !7, !"XXH3_mix16B: argument 0"}
!7 = distinct !{!7, !"XXH3_mix16B"}
!8 = distinct !{!8, !9, !"XXH3_len_17to128_64b: argument 0"}
!9 = distinct !{!9, !"XXH3_len_17to128_64b"}
!10 = distinct !{!10, !11, !"XXH3_64bits_internal: argument 0"}
!11 = distinct !{!11, !"XXH3_64bits_internal"}
!12 = !{!13}
!13 = distinct !{!13, !7, !"XXH3_mix16B: argument 1"}
!14 = !{!15, !8, !10}
!15 = distinct !{!15, !16, !"XXH3_mix16B: argument 0"}
!16 = distinct !{!16, !"XXH3_mix16B"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"XXH3_mix16B: argument 1"}
!19 = distinct !{null, ptr @XXH3_hashLong_64b_withSeed}
!20 = !{!21, !23, !24}
!21 = distinct !{!21, !22, !"XXH3_hashLong_64b_internal: argument 0"}
!22 = distinct !{!22, !"XXH3_hashLong_64b_internal"}
!23 = distinct !{!23, !22, !"XXH3_hashLong_64b_internal: argument 1"}
!24 = distinct !{!24, !25, !"XXH3_hashLong_64b_default: argument 0"}
!25 = distinct !{!25, !"XXH3_hashLong_64b_default"}
!26 = !{!21, !24}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"XXH3_mix16B: argument 0"}
!29 = distinct !{!29, !"XXH3_mix16B"}
!30 = distinct !{!30, !31, !"XXH3_len_17to128_64b: argument 0"}
!31 = distinct !{!31, !"XXH3_len_17to128_64b"}
!32 = !{!33}
!33 = distinct !{!33, !29, !"XXH3_mix16B: argument 1"}
!34 = !{!35, !30}
!35 = distinct !{!35, !36, !"XXH3_mix16B: argument 0"}
!36 = distinct !{!36, !"XXH3_mix16B"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"XXH3_mix16B: argument 1"}
!39 = !{!40, !30}
!40 = distinct !{!40, !41, !"XXH3_mix16B: argument 0"}
!41 = distinct !{!41, !"XXH3_mix16B"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"XXH3_mix16B: argument 1"}
!44 = !{!45, !30}
!45 = distinct !{!45, !46, !"XXH3_mix16B: argument 0"}
!46 = distinct !{!46, !"XXH3_mix16B"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"XXH3_mix16B: argument 1"}
!49 = !{!50, !30}
!50 = distinct !{!50, !51, !"XXH3_mix16B: argument 0"}
!51 = distinct !{!51, !"XXH3_mix16B"}
!52 = !{!53}
!53 = distinct !{!53, !51, !"XXH3_mix16B: argument 1"}
!54 = !{!55, !30}
!55 = distinct !{!55, !56, !"XXH3_mix16B: argument 0"}
!56 = distinct !{!56, !"XXH3_mix16B"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_mix16B: argument 1"}
!59 = !{!60, !30}
!60 = distinct !{!60, !61, !"XXH3_mix16B: argument 0"}
!61 = distinct !{!61, !"XXH3_mix16B"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"XXH3_mix16B: argument 1"}
!64 = !{!65, !30}
!65 = distinct !{!65, !66, !"XXH3_mix16B: argument 0"}
!66 = distinct !{!66, !"XXH3_mix16B"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"XXH3_mix16B: argument 1"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_len_129to240_64b: argument 0"}
!71 = distinct !{!71, !"XXH3_len_129to240_64b"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"XXH3_mix16B: argument 0"}
!74 = distinct !{!74, !"XXH3_mix16B"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"XXH3_mix16B: argument 1"}
!77 = !{!73, !70}
!78 = distinct !{!78, !79, !80, !81}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"XXH3_mix16B: argument 0"}
!84 = distinct !{!84, !"XXH3_mix16B"}
!85 = !{!86}
!86 = distinct !{!86, !84, !"XXH3_mix16B: argument 1"}
!87 = !{!83, !70}
!88 = distinct !{!88, !79}
!89 = !{!90, !70}
!90 = distinct !{!90, !91, !"XXH3_mix16B: argument 0"}
!91 = distinct !{!91, !"XXH3_mix16B"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"XXH3_mix16B: argument 1"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"XXH3_accumulate: argument 0"}
!96 = distinct !{!96, !"XXH3_accumulate"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"XXH3_accumulate: argument 1"}
!99 = !{!100}
!100 = distinct !{!100, !96, !"XXH3_accumulate: argument 2"}
!101 = !{!95, !100}
!102 = !{!103}
!103 = distinct !{!103, !104, !"XXH3_accumulate_512_avx2: argument 0"}
!104 = distinct !{!104, !"XXH3_accumulate_512_avx2"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"XXH3_accumulate_512_avx2: argument 1"}
!107 = !{!108}
!108 = distinct !{!108, !104, !"XXH3_accumulate_512_avx2: argument 2"}
!109 = !{!106, !98}
!110 = !{!103, !108, !95, !100}
!111 = !{!108, !100}
!112 = !{!103, !106, !95, !98}
!113 = !{!103, !95}
!114 = !{!106, !108, !98, !100}
!115 = distinct !{!115, !79}
!116 = distinct !{!116, !79}
!117 = !{!118}
!118 = distinct !{!118, !119, !"XXH3_scrambleAcc_avx2: argument 0"}
!119 = distinct !{!119, !"XXH3_scrambleAcc_avx2"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"XXH3_scrambleAcc_avx2: argument 1"}
!122 = distinct !{!122, !79}
!123 = distinct !{!123, !79}
!124 = !{!125}
!125 = distinct !{!125, !126, !"XXH3_accumulate: argument 0"}
!126 = distinct !{!126, !"XXH3_accumulate"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"XXH3_accumulate: argument 1"}
!129 = !{!130}
!130 = distinct !{!130, !126, !"XXH3_accumulate: argument 2"}
!131 = !{!125, !130}
!132 = !{!133}
!133 = distinct !{!133, !134, !"XXH3_accumulate_512_avx2: argument 0"}
!134 = distinct !{!134, !"XXH3_accumulate_512_avx2"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"XXH3_accumulate_512_avx2: argument 1"}
!137 = !{!138}
!138 = distinct !{!138, !134, !"XXH3_accumulate_512_avx2: argument 2"}
!139 = !{!136, !128}
!140 = !{!133, !138, !125, !130}
!141 = !{!138, !130}
!142 = !{!133, !136, !125, !128}
!143 = !{!133, !125}
!144 = !{!136, !138, !128, !130}
!145 = !{!146}
!146 = distinct !{!146, !147, !"XXH3_accumulate_512_avx2: argument 0"}
!147 = distinct !{!147, !"XXH3_accumulate_512_avx2"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"XXH3_accumulate_512_avx2: argument 1"}
!150 = !{!151}
!151 = distinct !{!151, !147, !"XXH3_accumulate_512_avx2: argument 2"}
!152 = !{!146, !151}
!153 = !{!146, !149}
!154 = !{!149, !151}
!155 = !{!156}
!156 = distinct !{!156, !157, !"XXH3_mix2Accs: argument 0"}
!157 = distinct !{!157, !"XXH3_mix2Accs"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"XXH3_mix2Accs: argument 1"}
!160 = !{!161, !163}
!161 = distinct !{!161, !162, !"XXH3_hashLong_64b_internal: argument 0"}
!162 = distinct !{!162, !"XXH3_hashLong_64b_internal"}
!163 = distinct !{!163, !162, !"XXH3_hashLong_64b_internal: argument 1"}
!164 = !{!161}
!165 = !{!166}
!166 = distinct !{!166, !167, !"XXH3_initCustomSecret_scalar: argument 0"}
!167 = distinct !{!167, !"XXH3_initCustomSecret_scalar"}
!168 = distinct !{!168, !79, !80, !81}
!169 = !{!170, !172}
!170 = distinct !{!170, !171, !"XXH3_hashLong_64b_internal: argument 0"}
!171 = distinct !{!171, !"XXH3_hashLong_64b_internal"}
!172 = distinct !{!172, !171, !"XXH3_hashLong_64b_internal: argument 1"}
!173 = !{!170}
!174 = !{!175}
!175 = distinct !{!175, !176, !"XXH3_mix16B: argument 0"}
!176 = distinct !{!176, !"XXH3_mix16B"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"XXH3_mix16B: argument 1"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"XXH3_mix16B: argument 1"}
!181 = distinct !{!181, !"XXH3_mix16B"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"XXH3_mix16B: argument 0"}
