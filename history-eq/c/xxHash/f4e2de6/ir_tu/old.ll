; ModuleID = 'f4e2de6/old/xxh_x86dispatch.c'
source_filename = "f4e2de6/old/xxh_x86dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_dispatchFunctions_s = type { ptr, ptr, ptr, ptr }
%struct.XXH_dispatch128Functions_s = type { ptr, ptr, ptr, ptr }

@XXH_g_dispatch = internal unnamed_addr global %struct.XXH_dispatchFunctions_s zeroinitializer, align 8
@XXH_kDispatch = internal unnamed_addr constant [4 x %struct.XXH_dispatchFunctions_s] [%struct.XXH_dispatchFunctions_s zeroinitializer, %struct.XXH_dispatchFunctions_s { ptr @XXHL64_default_sse2, ptr @XXHL64_seed_sse2, ptr @XXHL64_secret_sse2, ptr @XXH3_update_sse2 }, %struct.XXH_dispatchFunctions_s { ptr @XXHL64_default_avx2, ptr @XXHL64_seed_avx2, ptr @XXHL64_secret_avx2, ptr @XXH3_update_avx2 }, %struct.XXH_dispatchFunctions_s { ptr @XXHL64_default_avx512, ptr @XXHL64_seed_avx512, ptr @XXHL64_secret_avx512, ptr @XXH3_update_avx512 }], align 16
@XXH_g_dispatch128 = internal unnamed_addr global %struct.XXH_dispatch128Functions_s zeroinitializer, align 8
@XXH_kDispatch128 = internal unnamed_addr constant [4 x %struct.XXH_dispatch128Functions_s] [%struct.XXH_dispatch128Functions_s zeroinitializer, %struct.XXH_dispatch128Functions_s { ptr @XXHL128_default_sse2, ptr @XXHL128_seed_sse2, ptr @XXHL128_secret_sse2, ptr @XXH3_update_sse2 }, %struct.XXH_dispatch128Functions_s { ptr @XXHL128_default_avx2, ptr @XXHL128_seed_avx2, ptr @XXHL128_secret_avx2, ptr @XXH3_update_avx2 }, %struct.XXH_dispatch128Functions_s { ptr @XXHL128_default_avx512, ptr @XXHL128_seed_avx512, ptr @XXHL128_secret_avx512, ptr @XXH3_update_avx512 }], align 16
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @XXH_setDispatch, ptr null }]

; Function Attrs: nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @XXH_setDispatch() #0 {
  %1 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #18, !srcloc !5
  %2 = extractvalue { i32, i32, i32, i32 } %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4, !prof !6

4:                                                ; preds = %0
  %5 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #18, !srcloc !5
  %6 = extractvalue { i32, i32, i32, i32 } %5, 3
  %7 = and i32 %6, 67108864
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9, !prof !6

9:                                                ; preds = %4
  %10 = extractvalue { i32, i32, i32, i32 } %5, 2
  %11 = icmp ugt i32 %2, 6
  %12 = and i32 %10, 201326592
  %13 = icmp eq i32 %12, 201326592
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %33, !prof !7

15:                                               ; preds = %9
  %16 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !5
  %17 = extractvalue { i32, i32, i32, i32 } %16, 0
  %18 = tail call { i32, i32 } asm "# Call XGETBV\0A\09#\0A\09# Older assemblers (e.g. macOS's ancient GAS version) don't support\0A\09# the XGETBV opcode, so we encode it by hand instead.\0A\09# See <https://github.com/asmjit/asmjit/issues/78> for details.\0A\09.byte   0x0f, 0x01, 0xd0\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !8
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = zext i32 %19 to i64
  %21 = and i32 %17, 32
  %22 = icmp ne i32 %21, 0
  %23 = and i64 %20, 6
  %24 = icmp eq i64 %23, 6
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = and i32 %17, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = and i64 %20, 230
  %31 = icmp eq i64 %30, 230
  %32 = select i1 %31, i64 3, i64 2
  br label %33

33:                                               ; preds = %0, %4, %9, %15, %26, %29
  %34 = phi i64 [ 0, %0 ], [ 0, %4 ], [ 1, %9 ], [ 1, %15 ], [ 2, %26 ], [ %32, %29 ]
  %35 = getelementptr inbounds nuw [4 x %struct.XXH_dispatchFunctions_s], ptr @XXH_kDispatch, i64 0, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @XXH_g_dispatch, ptr noundef nonnull align 16 dereferenceable(32) %35, i64 32, i1 false)
  %36 = getelementptr inbounds nuw [4 x %struct.XXH_dispatch128Functions_s], ptr @XXH_kDispatch128, i64 0, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @XXH_g_dispatch128, ptr noundef nonnull align 16 dereferenceable(32) %36, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @XXH3_64bits_dispatch(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %80

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %29, !prof !9

6:                                                ; preds = %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = load i64, ptr %0, align 1
  %9 = xor i64 %8, 7458650908927343033
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, -5812251307325107654
  %14 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  %15 = add i64 %14, %1
  %16 = add i64 %15, %13
  %17 = zext i64 %9 to i128
  %18 = zext i64 %13 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %16, %22
  %24 = lshr i64 %23, 37
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587791953885689
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  br label %209

29:                                               ; preds = %4
  %30 = icmp samesign ugt i64 %1, 3
  br i1 %30, label %31, label %53, !prof !9

31:                                               ; preds = %29
  %32 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %32)
  %33 = load i32, ptr %0, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %35 = getelementptr inbounds i8, ptr %34, i64 -4
  %36 = load i32, ptr %35, align 1
  %37 = zext i32 %36 to i64
  %38 = zext i32 %33 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or disjoint i64 %39, %37
  %41 = xor i64 %40, -4090762196417718878
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 49)
  %43 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 24)
  %44 = xor i64 %42, %43
  %45 = xor i64 %44, %41
  %46 = mul i64 %45, -6939452855193903323
  %47 = lshr i64 %46, 35
  %48 = add nuw nsw i64 %47, %1
  %49 = xor i64 %48, %46
  %50 = mul i64 %49, -6939452855193903323
  %51 = lshr i64 %50, 28
  %52 = xor i64 %51, %50
  br label %209

53:                                               ; preds = %29
  %54 = icmp eq i64 %1, 0
  br i1 %54, label %209, label %55

55:                                               ; preds = %53
  %56 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %56)
  %57 = load i8, ptr %0, align 1
  %58 = lshr i64 %1, 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr i8, ptr %0, i64 %1
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %57 to i64
  %65 = shl nuw nsw i64 %64, 16
  %66 = zext i8 %60 to i64
  %67 = shl nuw nsw i64 %66, 24
  %68 = or disjoint i64 %67, %65
  %69 = zext i8 %63 to i64
  %70 = or disjoint i64 %68, %69
  %71 = shl nuw nsw i64 %1, 8
  %72 = or disjoint i64 %70, %71
  %73 = xor i64 %72, 2267503259
  %74 = mul i64 %73, -4417276706812531889
  %75 = lshr i64 %74, 29
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  br label %209

80:                                               ; preds = %2
  %81 = icmp ult i64 %1, 129
  br i1 %81, label %82, label %202

82:                                               ; preds = %80
  %83 = mul i64 %1, -7046029288634856825
  %84 = load i64, ptr %0, align 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %84, -4734510112055689544
  %88 = xor i64 %86, 2066345149520216444
  %89 = zext i64 %87 to i128
  %90 = zext i64 %88 to i128
  %91 = mul nuw i128 %90, %89
  %92 = lshr i128 %91, 64
  %93 = xor i128 %92, %91
  %94 = trunc i128 %93 to i64
  %95 = add i64 %83, %94
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %97 = getelementptr inbounds i8, ptr %96, i64 -16
  %98 = load i64, ptr %97, align 1
  %99 = getelementptr inbounds i8, ptr %96, i64 -8
  %100 = load i64, ptr %99, align 1
  %101 = xor i64 %98, -2623469361688619810
  %102 = xor i64 %100, 2262974939099578482
  %103 = zext i64 %101 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = lshr i128 %105, 64
  %107 = xor i128 %106, %105
  %108 = trunc i128 %107 to i64
  %109 = icmp samesign ugt i64 %1, 32
  br i1 %109, label %110, label %193

110:                                              ; preds = %82
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %112 = load i64, ptr %111, align 1
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %114 = load i64, ptr %113, align 1
  %115 = xor i64 %112, 8711581037947681227
  %116 = xor i64 %114, 2410270004345854594
  %117 = zext i64 %115 to i128
  %118 = zext i64 %116 to i128
  %119 = mul nuw i128 %118, %117
  %120 = lshr i128 %119, 64
  %121 = xor i128 %120, %119
  %122 = trunc i128 %121 to i64
  %123 = add i64 %95, %122
  %124 = getelementptr inbounds i8, ptr %96, i64 -32
  %125 = load i64, ptr %124, align 1
  %126 = getelementptr inbounds i8, ptr %96, i64 -24
  %127 = load i64, ptr %126, align 1
  %128 = xor i64 %125, -8204357891075471176
  %129 = xor i64 %127, 5487137525590930912
  %130 = zext i64 %128 to i128
  %131 = zext i64 %129 to i128
  %132 = mul nuw i128 %131, %130
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = add i64 %135, %108
  %137 = icmp samesign ugt i64 %1, 64
  br i1 %137, label %138, label %193

138:                                              ; preds = %110
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %140, -3818837453329782724
  %144 = xor i64 %142, -6688317018830679928
  %145 = zext i64 %143 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %123, %150
  %152 = getelementptr inbounds i8, ptr %96, i64 -48
  %153 = load i64, ptr %152, align 1
  %154 = getelementptr inbounds i8, ptr %96, i64 -40
  %155 = load i64, ptr %154, align 1
  %156 = xor i64 %153, 5690594596133299313
  %157 = xor i64 %155, -2833645246901970632
  %158 = zext i64 %156 to i128
  %159 = zext i64 %157 to i128
  %160 = mul nuw i128 %159, %158
  %161 = lshr i128 %160, 64
  %162 = xor i128 %161, %160
  %163 = trunc i128 %162 to i64
  %164 = add i64 %136, %163
  %165 = icmp samesign ugt i64 %1, 96
  br i1 %165, label %166, label %193

166:                                              ; preds = %138
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %168 = load i64, ptr %167, align 1
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %170 = load i64, ptr %169, align 1
  %171 = xor i64 %168, 4554437623014685352
  %172 = xor i64 %170, 2111919702937427193
  %173 = zext i64 %171 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %151, %178
  %180 = getelementptr inbounds i8, ptr %96, i64 -64
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds i8, ptr %96, i64 -56
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %181, 3556072174620004746
  %185 = xor i64 %183, 7238261902898274248
  %186 = zext i64 %184 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %164, %191
  br label %193

193:                                              ; preds = %82, %110, %138, %166
  %194 = phi i64 [ %179, %166 ], [ %151, %138 ], [ %123, %110 ], [ %95, %82 ]
  %195 = phi i64 [ %192, %166 ], [ %164, %138 ], [ %136, %110 ], [ %108, %82 ]
  %196 = add i64 %195, %194
  %197 = lshr i64 %196, 37
  %198 = xor i64 %197, %196
  %199 = mul i64 %198, 1609587791953885689
  %200 = lshr i64 %199, 32
  %201 = xor i64 %200, %199
  br label %209

202:                                              ; preds = %80
  %203 = icmp ult i64 %1, 241
  br i1 %203, label %204, label %206

204:                                              ; preds = %202
  %205 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #19
  br label %209

206:                                              ; preds = %202
  %207 = load ptr, ptr @XXH_g_dispatch, align 8
  %208 = tail call i64 %207(ptr noundef %0, i64 noundef %1) #20
  br label %209

209:                                              ; preds = %55, %31, %6, %53, %193, %204, %206
  %210 = phi i64 [ %201, %193 ], [ %205, %204 ], [ %208, %206 ], [ %28, %6 ], [ %52, %31 ], [ %79, %55 ], [ 3244421341483603138, %53 ]
  ret i64 %210
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XXH3_64bits_withSeed_dispatch(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %102

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %32, !prof !9

7:                                                ; preds = %5
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, 7458650908927343033
  %10 = sub i64 -5812251307325107654, %2
  %11 = load i64, ptr %0, align 1
  %12 = xor i64 %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = xor i64 %15, %10
  %17 = tail call noundef i64 @llvm.bswap.i64(i64 %12)
  %18 = add i64 %17, %1
  %19 = add i64 %18, %16
  %20 = zext i64 %12 to i128
  %21 = zext i64 %16 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %19, %25
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587791953885689
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  br label %247

32:                                               ; preds = %5
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %62, !prof !9

34:                                               ; preds = %32
  %35 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %35)
  %36 = trunc i64 %2 to i32
  %37 = tail call noundef i32 @llvm.bswap.i32(i32 %36)
  %38 = zext i32 %37 to i64
  %39 = shl nuw i64 %38, 32
  %40 = xor i64 %39, %2
  %41 = load i32, ptr %0, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %43 = getelementptr inbounds i8, ptr %42, i64 -4
  %44 = load i32, ptr %43, align 1
  %45 = sub i64 -4090762196417718878, %40
  %46 = zext i32 %44 to i64
  %47 = zext i32 %41 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or disjoint i64 %48, %46
  %50 = xor i64 %49, %45
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 49)
  %52 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 24)
  %53 = xor i64 %51, %52
  %54 = xor i64 %53, %50
  %55 = mul i64 %54, -6939452855193903323
  %56 = lshr i64 %55, 35
  %57 = add nuw nsw i64 %56, %1
  %58 = xor i64 %57, %55
  %59 = mul i64 %58, -6939452855193903323
  %60 = lshr i64 %59, 28
  %61 = xor i64 %60, %59
  br label %247

62:                                               ; preds = %32
  %63 = icmp eq i64 %1, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %62
  %65 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %65)
  %66 = load i8, ptr %0, align 1
  %67 = lshr i64 %1, 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr i8, ptr %0, i64 %1
  %71 = getelementptr i8, ptr %70, i64 -1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %66 to i64
  %74 = shl nuw nsw i64 %73, 16
  %75 = zext i8 %69 to i64
  %76 = shl nuw nsw i64 %75, 24
  %77 = or disjoint i64 %76, %74
  %78 = zext i8 %72 to i64
  %79 = or disjoint i64 %77, %78
  %80 = shl nuw nsw i64 %1, 8
  %81 = or disjoint i64 %79, %80
  %82 = add i64 %2, 2267503259
  %83 = xor i64 %81, %82
  %84 = lshr i64 %83, 33
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, -4417276706812531889
  %87 = lshr i64 %86, 29
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, 1609587929392839161
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  br label %247

92:                                               ; preds = %62
  %93 = xor i64 %2, -8707998980786479652
  %94 = lshr i64 %93, 33
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, -4417276706812531889
  %97 = lshr i64 %96, 29
  %98 = xor i64 %97, %96
  %99 = mul i64 %98, 1609587929392839161
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  br label %247

102:                                              ; preds = %3
  %103 = icmp ult i64 %1, 129
  br i1 %103, label %104, label %240

104:                                              ; preds = %102
  %105 = mul i64 %1, -7046029288634856825
  %106 = load i64, ptr %0, align 1
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %108 = load i64, ptr %107, align 1
  %109 = add i64 %2, -4734510112055689544
  %110 = xor i64 %106, %109
  %111 = sub i64 2066345149520216444, %2
  %112 = xor i64 %108, %111
  %113 = zext i64 %110 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %105, %118
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %121 = getelementptr inbounds i8, ptr %120, i64 -16
  %122 = load i64, ptr %121, align 1
  %123 = getelementptr inbounds i8, ptr %120, i64 -8
  %124 = load i64, ptr %123, align 1
  %125 = add i64 %2, -2623469361688619810
  %126 = xor i64 %122, %125
  %127 = sub i64 2262974939099578482, %2
  %128 = xor i64 %124, %127
  %129 = zext i64 %126 to i128
  %130 = zext i64 %128 to i128
  %131 = mul nuw i128 %130, %129
  %132 = lshr i128 %131, 64
  %133 = xor i128 %132, %131
  %134 = trunc i128 %133 to i64
  %135 = icmp samesign ugt i64 %1, 32
  br i1 %135, label %136, label %231

136:                                              ; preds = %104
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %138 = load i64, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %140 = load i64, ptr %139, align 1
  %141 = add i64 %2, 8711581037947681227
  %142 = xor i64 %138, %141
  %143 = sub i64 2410270004345854594, %2
  %144 = xor i64 %140, %143
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %119, %150
  %152 = getelementptr inbounds i8, ptr %120, i64 -32
  %153 = load i64, ptr %152, align 1
  %154 = getelementptr inbounds i8, ptr %120, i64 -24
  %155 = load i64, ptr %154, align 1
  %156 = add i64 %2, -8204357891075471176
  %157 = xor i64 %153, %156
  %158 = sub i64 5487137525590930912, %2
  %159 = xor i64 %155, %158
  %160 = zext i64 %157 to i128
  %161 = zext i64 %159 to i128
  %162 = mul nuw i128 %161, %160
  %163 = lshr i128 %162, 64
  %164 = xor i128 %163, %162
  %165 = trunc i128 %164 to i64
  %166 = add i64 %165, %134
  %167 = icmp samesign ugt i64 %1, 64
  br i1 %167, label %168, label %231

168:                                              ; preds = %136
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %170 = load i64, ptr %169, align 1
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %172 = load i64, ptr %171, align 1
  %173 = add i64 %2, -3818837453329782724
  %174 = xor i64 %170, %173
  %175 = sub i64 -6688317018830679928, %2
  %176 = xor i64 %172, %175
  %177 = zext i64 %174 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %151, %182
  %184 = getelementptr inbounds i8, ptr %120, i64 -48
  %185 = load i64, ptr %184, align 1
  %186 = getelementptr inbounds i8, ptr %120, i64 -40
  %187 = load i64, ptr %186, align 1
  %188 = add i64 %2, 5690594596133299313
  %189 = xor i64 %185, %188
  %190 = sub i64 -2833645246901970632, %2
  %191 = xor i64 %187, %190
  %192 = zext i64 %189 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %166, %197
  %199 = icmp samesign ugt i64 %1, 96
  br i1 %199, label %200, label %231

200:                                              ; preds = %168
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %202 = load i64, ptr %201, align 1
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %204 = load i64, ptr %203, align 1
  %205 = add i64 %2, 4554437623014685352
  %206 = xor i64 %202, %205
  %207 = sub i64 2111919702937427193, %2
  %208 = xor i64 %204, %207
  %209 = zext i64 %206 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %183, %214
  %216 = getelementptr inbounds i8, ptr %120, i64 -64
  %217 = load i64, ptr %216, align 1
  %218 = getelementptr inbounds i8, ptr %120, i64 -56
  %219 = load i64, ptr %218, align 1
  %220 = add i64 %2, 3556072174620004746
  %221 = xor i64 %217, %220
  %222 = sub i64 7238261902898274248, %2
  %223 = xor i64 %219, %222
  %224 = zext i64 %221 to i128
  %225 = zext i64 %223 to i128
  %226 = mul nuw i128 %225, %224
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %198, %229
  br label %231

231:                                              ; preds = %104, %136, %168, %200
  %232 = phi i64 [ %215, %200 ], [ %183, %168 ], [ %151, %136 ], [ %119, %104 ]
  %233 = phi i64 [ %230, %200 ], [ %198, %168 ], [ %166, %136 ], [ %134, %104 ]
  %234 = add i64 %233, %232
  %235 = lshr i64 %234, 37
  %236 = xor i64 %235, %234
  %237 = mul i64 %236, 1609587791953885689
  %238 = lshr i64 %237, 32
  %239 = xor i64 %238, %237
  br label %247

240:                                              ; preds = %102
  %241 = icmp ult i64 %1, 241
  br i1 %241, label %242, label %244

242:                                              ; preds = %240
  %243 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #19
  br label %247

244:                                              ; preds = %240
  %245 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XXH_g_dispatch, i64 8), align 8
  %246 = tail call i64 %245(ptr noundef %0, i64 noundef %1, i64 noundef %2) #20
  br label %247

247:                                              ; preds = %92, %64, %34, %7, %231, %242, %244
  %248 = phi i64 [ %239, %231 ], [ %243, %242 ], [ %246, %244 ], [ %31, %7 ], [ %61, %34 ], [ %91, %64 ], [ %101, %92 ]
  ret i64 %248
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XXH3_64bits_withSecret_dispatch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 17
  br i1 %6, label %7, label %120

7:                                                ; preds = %4
  %8 = icmp samesign ugt i64 %1, 8
  br i1 %8, label %9, label %43, !prof !9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = load i64, ptr %14, align 1
  %16 = xor i64 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %20, %18
  %22 = load i64, ptr %0, align 1
  %23 = xor i64 %16, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %21, %26
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, %1
  %30 = add i64 %29, %27
  %31 = zext i64 %23 to i128
  %32 = zext i64 %27 to i128
  %33 = mul nuw i128 %32, %31
  %34 = lshr i128 %33, 64
  %35 = xor i128 %34, %33
  %36 = trunc i128 %35 to i64
  %37 = add i64 %30, %36
  %38 = lshr i64 %37, 37
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587791953885689
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %280

43:                                               ; preds = %7
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %73, !prof !9

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %50 = getelementptr inbounds i8, ptr %49, i64 -4
  %51 = load i32, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %55 = load i64, ptr %54, align 1
  %56 = xor i64 %55, %53
  %57 = zext i32 %51 to i64
  %58 = zext i32 %48 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %57
  %61 = xor i64 %56, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, %1
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %280

73:                                               ; preds = %43
  %74 = icmp eq i64 %1, 0
  br i1 %74, label %106, label %75

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = load i8, ptr %0, align 1
  %79 = lshr i64 %1, 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr i8, ptr %0, i64 %1
  %83 = getelementptr i8, ptr %82, i64 -1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %78 to i64
  %86 = shl nuw nsw i64 %85, 16
  %87 = zext i8 %81 to i64
  %88 = shl nuw nsw i64 %87, 24
  %89 = or disjoint i64 %88, %86
  %90 = zext i8 %84 to i64
  %91 = or disjoint i64 %89, %90
  %92 = shl nuw nsw i64 %1, 8
  %93 = or disjoint i64 %91, %92
  %94 = load i32, ptr %2, align 1
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %96 = load i32, ptr %95, align 1
  %97 = xor i32 %96, %94
  %98 = zext i32 %97 to i64
  %99 = xor i64 %93, %98
  %100 = mul i64 %99, -4417276706812531889
  %101 = lshr i64 %100, 29
  %102 = xor i64 %101, %100
  %103 = mul i64 %102, 1609587929392839161
  %104 = lshr i64 %103, 32
  %105 = xor i64 %104, %103
  br label %280

106:                                              ; preds = %73
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %108 = load i64, ptr %107, align 1
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %110 = load i64, ptr %109, align 1
  %111 = xor i64 %110, %108
  %112 = lshr i64 %111, 33
  %113 = xor i64 %112, %111
  %114 = mul i64 %113, -4417276706812531889
  %115 = lshr i64 %114, 29
  %116 = xor i64 %115, %114
  %117 = mul i64 %116, 1609587929392839161
  %118 = lshr i64 %117, 32
  %119 = xor i64 %118, %117
  br label %280

120:                                              ; preds = %4
  %121 = icmp ult i64 %1, 129
  br i1 %121, label %122, label %273

122:                                              ; preds = %120
  %123 = mul i64 %1, -7046029288634856825
  %124 = load i64, ptr %0, align 1
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %126 = load i64, ptr %125, align 1
  %127 = load i64, ptr %2, align 1
  %128 = xor i64 %127, %124
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %130, %126
  %132 = zext i64 %128 to i128
  %133 = zext i64 %131 to i128
  %134 = mul nuw i128 %133, %132
  %135 = lshr i128 %134, 64
  %136 = xor i128 %135, %134
  %137 = trunc i128 %136 to i64
  %138 = add i64 %123, %137
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %140 = getelementptr inbounds i8, ptr %139, i64 -16
  %141 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %142 = load i64, ptr %140, align 1
  %143 = getelementptr inbounds i8, ptr %139, i64 -8
  %144 = load i64, ptr %143, align 1
  %145 = load i64, ptr %141, align 1
  %146 = xor i64 %145, %142
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %148 = load i64, ptr %147, align 1
  %149 = xor i64 %148, %144
  %150 = zext i64 %146 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = icmp samesign ugt i64 %1, 32
  br i1 %156, label %157, label %264

157:                                              ; preds = %122
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %160 = load i64, ptr %158, align 1
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %162 = load i64, ptr %161, align 1
  %163 = load i64, ptr %159, align 1
  %164 = xor i64 %163, %160
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %166 = load i64, ptr %165, align 1
  %167 = xor i64 %166, %162
  %168 = zext i64 %164 to i128
  %169 = zext i64 %167 to i128
  %170 = mul nuw i128 %169, %168
  %171 = lshr i128 %170, 64
  %172 = xor i128 %171, %170
  %173 = trunc i128 %172 to i64
  %174 = add i64 %138, %173
  %175 = getelementptr inbounds i8, ptr %139, i64 -32
  %176 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %177 = load i64, ptr %175, align 1
  %178 = getelementptr inbounds i8, ptr %139, i64 -24
  %179 = load i64, ptr %178, align 1
  %180 = load i64, ptr %176, align 1
  %181 = xor i64 %180, %177
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %179
  %185 = zext i64 %181 to i128
  %186 = zext i64 %184 to i128
  %187 = mul nuw i128 %186, %185
  %188 = lshr i128 %187, 64
  %189 = xor i128 %188, %187
  %190 = trunc i128 %189 to i64
  %191 = add i64 %190, %155
  %192 = icmp samesign ugt i64 %1, 64
  br i1 %192, label %193, label %264

193:                                              ; preds = %157
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %195 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %196 = load i64, ptr %194, align 1
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %198 = load i64, ptr %197, align 1
  %199 = load i64, ptr %195, align 1
  %200 = xor i64 %199, %196
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %202 = load i64, ptr %201, align 1
  %203 = xor i64 %202, %198
  %204 = zext i64 %200 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %174, %209
  %211 = getelementptr inbounds i8, ptr %139, i64 -48
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %213 = load i64, ptr %211, align 1
  %214 = getelementptr inbounds i8, ptr %139, i64 -40
  %215 = load i64, ptr %214, align 1
  %216 = load i64, ptr %212, align 1
  %217 = xor i64 %216, %213
  %218 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %219 = load i64, ptr %218, align 1
  %220 = xor i64 %219, %215
  %221 = zext i64 %217 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %191, %226
  %228 = icmp samesign ugt i64 %1, 96
  br i1 %228, label %229, label %264

229:                                              ; preds = %193
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %231 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %232 = load i64, ptr %230, align 1
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %234 = load i64, ptr %233, align 1
  %235 = load i64, ptr %231, align 1
  %236 = xor i64 %235, %232
  %237 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %238 = load i64, ptr %237, align 1
  %239 = xor i64 %238, %234
  %240 = zext i64 %236 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %210, %245
  %247 = getelementptr inbounds i8, ptr %139, i64 -64
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %249 = load i64, ptr %247, align 1
  %250 = getelementptr inbounds i8, ptr %139, i64 -56
  %251 = load i64, ptr %250, align 1
  %252 = load i64, ptr %248, align 1
  %253 = xor i64 %252, %249
  %254 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = zext i64 %253 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %227, %262
  br label %264

264:                                              ; preds = %122, %157, %193, %229
  %265 = phi i64 [ %246, %229 ], [ %210, %193 ], [ %174, %157 ], [ %138, %122 ]
  %266 = phi i64 [ %263, %229 ], [ %227, %193 ], [ %191, %157 ], [ %155, %122 ]
  %267 = add i64 %266, %265
  %268 = lshr i64 %267, 37
  %269 = xor i64 %268, %267
  %270 = mul i64 %269, 1609587791953885689
  %271 = lshr i64 %270, 32
  %272 = xor i64 %271, %270
  br label %280

273:                                              ; preds = %120
  %274 = icmp ult i64 %1, 241
  br i1 %274, label %275, label %277

275:                                              ; preds = %273
  %276 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0) #19
  br label %280

277:                                              ; preds = %273
  %278 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XXH_g_dispatch, i64 16), align 8
  %279 = tail call i64 %278(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #20
  br label %280

280:                                              ; preds = %106, %75, %45, %9, %264, %275, %277
  %281 = phi i64 [ %272, %264 ], [ %276, %275 ], [ %279, %277 ], [ %42, %9 ], [ %72, %45 ], [ %105, %75 ], [ %119, %106 ]
  ret i64 %281
}

; Function Attrs: nounwind uwtable
define dso_local i32 @XXH3_64bits_update_dispatch(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XXH_g_dispatch, i64 24), align 8
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %1, i64 noundef %2) #20
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @XXH3_128bits_dispatch(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %126

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %48

6:                                                ; preds = %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = load i64, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %8, %11
  %13 = xor i64 %12, 6455697860950631241
  %14 = zext i64 %13 to i128
  %15 = mul nuw i128 %14, 11400714785074694791
  %16 = trunc i128 %15 to i64
  %17 = lshr i128 %15, 64
  %18 = trunc nuw i128 %17 to i64
  %19 = shl nuw nsw i64 %1, 54
  %20 = add nsw i64 %19, -18014398509481984
  %21 = add i64 %20, %16
  %22 = xor i64 %11, -4466874330221494952
  %23 = and i64 %22, 4294967295
  %24 = mul nuw i64 %23, 2246822518
  %25 = add i64 %24, %22
  %26 = add i64 %25, %18
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  %28 = xor i64 %27, %21
  %29 = zext i64 %28 to i128
  %30 = mul nuw i128 %29, 14029467366897019727
  %31 = trunc i128 %30 to i64
  %32 = lshr i128 %30, 64
  %33 = trunc nuw i128 %32 to i64
  %34 = mul i64 %26, -4417276706812531889
  %35 = add i64 %34, %33
  %36 = lshr i64 %31, 37
  %37 = xor i64 %36, %31
  %38 = mul i64 %37, 1609587791953885689
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  %41 = lshr i64 %35, 37
  %42 = xor i64 %41, %35
  %43 = mul i64 %42, 1609587791953885689
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  %46 = insertvalue { i64, i64 } poison, i64 %40, 0
  %47 = insertvalue { i64, i64 } %46, i64 %45, 1
  br label %293

48:                                               ; preds = %4
  %49 = icmp samesign ugt i64 %1, 3
  br i1 %49, label %50, label %85

50:                                               ; preds = %48
  %51 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %51)
  %52 = load i32, ptr %0, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %52 to i64
  %57 = zext i32 %55 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or disjoint i64 %58, %56
  %60 = xor i64 %59, -4255862940314790740
  %61 = shl nuw nsw i64 %1, 2
  %62 = add nuw nsw i64 %61, -7046029288634856825
  %63 = zext i64 %60 to i128
  %64 = zext i64 %62 to i128
  %65 = mul nuw i128 %63, %64
  %66 = trunc i128 %65 to i64
  %67 = lshr i128 %65, 64
  %68 = trunc nuw i128 %67 to i64
  %69 = shl i64 %66, 1
  %70 = add i64 %69, %68
  %71 = lshr i64 %70, 3
  %72 = xor i64 %71, %66
  %73 = lshr i64 %72, 35
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, -6939452855193903323
  %76 = lshr i64 %75, 28
  %77 = xor i64 %76, %75
  %78 = lshr i64 %70, 37
  %79 = xor i64 %78, %70
  %80 = mul i64 %79, 1609587791953885689
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  %83 = insertvalue { i64, i64 } poison, i64 %77, 0
  %84 = insertvalue { i64, i64 } %83, i64 %82, 1
  br label %293

85:                                               ; preds = %48
  %86 = icmp eq i64 %1, 0
  br i1 %86, label %293, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = load i8, ptr %0, align 1
  %90 = lshr i64 %1, 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr i8, ptr %0, i64 %1
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %89 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = zext i8 %92 to i32
  %99 = shl nuw i32 %98, 24
  %100 = or disjoint i32 %99, %97
  %101 = zext i8 %95 to i32
  %102 = or disjoint i32 %100, %101
  %103 = trunc nuw nsw i64 %1 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = or disjoint i32 %102, %104
  %106 = tail call noundef i32 @llvm.bswap.i32(i32 %105)
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = xor i32 %105, -2027464037
  %109 = zext i32 %108 to i64
  %110 = xor i32 %107, 808198283
  %111 = zext i32 %110 to i64
  %112 = mul i64 %109, -4417276706812531889
  %113 = lshr i64 %112, 29
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, 1609587929392839161
  %116 = lshr i64 %115, 32
  %117 = xor i64 %116, %115
  %118 = mul i64 %111, -4417276706812531889
  %119 = lshr i64 %118, 29
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  %124 = insertvalue { i64, i64 } poison, i64 %117, 0
  %125 = insertvalue { i64, i64 } %124, i64 %123, 1
  br label %293

126:                                              ; preds = %2
  %127 = icmp ult i64 %1, 129
  br i1 %127, label %128, label %286

128:                                              ; preds = %126
  %129 = mul i64 %1, -7046029288634856825
  %130 = icmp samesign ugt i64 %1, 32
  br i1 %130, label %131, label %234

131:                                              ; preds = %128
  %132 = icmp samesign ugt i64 %1, 64
  br i1 %132, label %133, label %200

133:                                              ; preds = %131
  %134 = icmp samesign ugt i64 %1, 96
  br i1 %134, label %135, label %166

135:                                              ; preds = %133
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %138 = getelementptr inbounds i8, ptr %137, i64 -64
  %139 = load i64, ptr %136, align 1
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %141 = load i64, ptr %140, align 1
  %142 = xor i64 %139, 4554437623014685352
  %143 = xor i64 %141, 2111919702937427193
  %144 = zext i64 %142 to i128
  %145 = zext i64 %143 to i128
  %146 = mul nuw i128 %145, %144
  %147 = lshr i128 %146, 64
  %148 = xor i128 %147, %146
  %149 = trunc i128 %148 to i64
  %150 = add i64 %129, %149
  %151 = load i64, ptr %138, align 1
  %152 = getelementptr inbounds i8, ptr %137, i64 -56
  %153 = load i64, ptr %152, align 1
  %154 = add i64 %153, %151
  %155 = xor i64 %150, %154
  %156 = xor i64 %151, 3556072174620004746
  %157 = xor i64 %153, 7238261902898274248
  %158 = zext i64 %156 to i128
  %159 = zext i64 %157 to i128
  %160 = mul nuw i128 %159, %158
  %161 = lshr i128 %160, 64
  %162 = xor i128 %161, %160
  %163 = trunc i128 %162 to i64
  %164 = add i64 %141, %139
  %165 = xor i64 %164, %163
  br label %166

166:                                              ; preds = %135, %133
  %167 = phi i64 [ %155, %135 ], [ %129, %133 ]
  %168 = phi i64 [ %165, %135 ], [ 0, %133 ]
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %171 = getelementptr inbounds i8, ptr %170, i64 -48
  %172 = load i64, ptr %169, align 1
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %174 = load i64, ptr %173, align 1
  %175 = xor i64 %172, -3818837453329782724
  %176 = xor i64 %174, -6688317018830679928
  %177 = zext i64 %175 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %167, %182
  %184 = load i64, ptr %171, align 1
  %185 = getelementptr inbounds i8, ptr %170, i64 -40
  %186 = load i64, ptr %185, align 1
  %187 = add i64 %186, %184
  %188 = xor i64 %183, %187
  %189 = xor i64 %184, 5690594596133299313
  %190 = xor i64 %186, -2833645246901970632
  %191 = zext i64 %189 to i128
  %192 = zext i64 %190 to i128
  %193 = mul nuw i128 %192, %191
  %194 = lshr i128 %193, 64
  %195 = xor i128 %194, %193
  %196 = trunc i128 %195 to i64
  %197 = add i64 %168, %196
  %198 = add i64 %174, %172
  %199 = xor i64 %197, %198
  br label %200

200:                                              ; preds = %166, %131
  %201 = phi i64 [ %188, %166 ], [ %129, %131 ]
  %202 = phi i64 [ %199, %166 ], [ 0, %131 ]
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %205 = getelementptr inbounds i8, ptr %204, i64 -32
  %206 = load i64, ptr %203, align 1
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %206, 8711581037947681227
  %210 = xor i64 %208, 2410270004345854594
  %211 = zext i64 %209 to i128
  %212 = zext i64 %210 to i128
  %213 = mul nuw i128 %212, %211
  %214 = lshr i128 %213, 64
  %215 = xor i128 %214, %213
  %216 = trunc i128 %215 to i64
  %217 = add i64 %201, %216
  %218 = load i64, ptr %205, align 1
  %219 = getelementptr inbounds i8, ptr %204, i64 -24
  %220 = load i64, ptr %219, align 1
  %221 = add i64 %220, %218
  %222 = xor i64 %217, %221
  %223 = xor i64 %218, -8204357891075471176
  %224 = xor i64 %220, 5487137525590930912
  %225 = zext i64 %223 to i128
  %226 = zext i64 %224 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %202, %230
  %232 = add i64 %208, %206
  %233 = xor i64 %231, %232
  br label %234

234:                                              ; preds = %128, %200
  %235 = phi i64 [ %222, %200 ], [ %129, %128 ]
  %236 = phi i64 [ %233, %200 ], [ 0, %128 ]
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %238 = getelementptr inbounds i8, ptr %237, i64 -16
  %239 = load i64, ptr %0, align 1
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %241 = load i64, ptr %240, align 1
  %242 = xor i64 %239, -4734510112055689544
  %243 = xor i64 %241, 2066345149520216444
  %244 = zext i64 %242 to i128
  %245 = zext i64 %243 to i128
  %246 = mul nuw i128 %245, %244
  %247 = lshr i128 %246, 64
  %248 = xor i128 %247, %246
  %249 = trunc i128 %248 to i64
  %250 = add i64 %235, %249
  %251 = load i64, ptr %238, align 1
  %252 = getelementptr inbounds i8, ptr %237, i64 -8
  %253 = load i64, ptr %252, align 1
  %254 = add i64 %253, %251
  %255 = xor i64 %250, %254
  %256 = xor i64 %251, -2623469361688619810
  %257 = xor i64 %253, 2262974939099578482
  %258 = zext i64 %256 to i128
  %259 = zext i64 %257 to i128
  %260 = mul nuw i128 %259, %258
  %261 = lshr i128 %260, 64
  %262 = xor i128 %261, %260
  %263 = trunc i128 %262 to i64
  %264 = add i64 %236, %263
  %265 = add i64 %241, %239
  %266 = xor i64 %264, %265
  %267 = add i64 %266, %255
  %268 = mul i64 %255, -7046029288634856825
  %269 = mul i64 %266, -8796714831421723037
  %270 = mul i64 %1, -4417276706812531889
  %271 = add i64 %268, %270
  %272 = add i64 %271, %269
  %273 = lshr i64 %267, 37
  %274 = xor i64 %273, %267
  %275 = mul i64 %274, 1609587791953885689
  %276 = lshr i64 %275, 32
  %277 = xor i64 %276, %275
  %278 = lshr i64 %272, 37
  %279 = xor i64 %278, %272
  %280 = mul i64 %279, 1609587791953885689
  %281 = lshr i64 %280, 32
  %282 = xor i64 %281, %280
  %283 = sub i64 0, %282
  %284 = insertvalue { i64, i64 } poison, i64 %277, 0
  %285 = insertvalue { i64, i64 } %284, i64 %283, 1
  br label %293

286:                                              ; preds = %126
  %287 = icmp ult i64 %1, 241
  br i1 %287, label %288, label %290

288:                                              ; preds = %286
  %289 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #19
  br label %293

290:                                              ; preds = %286
  %291 = load ptr, ptr @XXH_g_dispatch128, align 8
  %292 = tail call { i64, i64 } %291(ptr noundef %0, i64 noundef %1) #20
  br label %293

293:                                              ; preds = %87, %50, %6, %85, %234, %288, %290
  %294 = phi { i64, i64 } [ %285, %234 ], [ %289, %288 ], [ %292, %290 ], [ %47, %6 ], [ %84, %50 ], [ %125, %87 ], [ { i64 6918025063187695999, i64 -7374073936536430376 }, %85 ]
  ret { i64, i64 } %294
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed_dispatch(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %162

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %51

7:                                                ; preds = %5
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = sub i64 6455697860950631241, %2
  %10 = add i64 %2, -4466874330221494952
  %11 = load i64, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %11, %9
  %16 = xor i64 %15, %14
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = shl nuw nsw i64 %1, 54
  %23 = add nsw i64 %22, -18014398509481984
  %24 = add i64 %23, %19
  %25 = xor i64 %14, %10
  %26 = and i64 %25, 4294967295
  %27 = mul nuw i64 %26, 2246822518
  %28 = add i64 %27, %25
  %29 = add i64 %28, %21
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %29)
  %31 = xor i64 %30, %24
  %32 = zext i64 %31 to i128
  %33 = mul nuw i128 %32, 14029467366897019727
  %34 = trunc i128 %33 to i64
  %35 = lshr i128 %33, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = mul i64 %29, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = lshr i64 %34, 37
  %40 = xor i64 %39, %34
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587791953885689
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  %49 = insertvalue { i64, i64 } poison, i64 %43, 0
  %50 = insertvalue { i64, i64 } %49, i64 %48, 1
  br label %346

51:                                               ; preds = %5
  %52 = icmp samesign ugt i64 %1, 3
  br i1 %52, label %53, label %94

53:                                               ; preds = %51
  %54 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %54)
  %55 = trunc i64 %2 to i32
  %56 = tail call noundef i32 @llvm.bswap.i32(i32 %55)
  %57 = zext i32 %56 to i64
  %58 = shl nuw i64 %57, 32
  %59 = xor i64 %58, %2
  %60 = load i32, ptr %0, align 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %62 = getelementptr inbounds i8, ptr %61, i64 -4
  %63 = load i32, ptr %62, align 1
  %64 = zext i32 %60 to i64
  %65 = zext i32 %63 to i64
  %66 = shl nuw i64 %65, 32
  %67 = or disjoint i64 %66, %64
  %68 = add i64 %59, -4255862940314790740
  %69 = xor i64 %67, %68
  %70 = shl nuw nsw i64 %1, 2
  %71 = add nuw nsw i64 %70, -7046029288634856825
  %72 = zext i64 %69 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %72, %73
  %75 = trunc i128 %74 to i64
  %76 = lshr i128 %74, 64
  %77 = trunc nuw i128 %76 to i64
  %78 = shl i64 %75, 1
  %79 = add i64 %78, %77
  %80 = lshr i64 %79, 3
  %81 = xor i64 %80, %75
  %82 = lshr i64 %81, 35
  %83 = xor i64 %82, %81
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 28
  %86 = xor i64 %85, %84
  %87 = lshr i64 %79, 37
  %88 = xor i64 %87, %79
  %89 = mul i64 %88, 1609587791953885689
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  %92 = insertvalue { i64, i64 } poison, i64 %86, 0
  %93 = insertvalue { i64, i64 } %92, i64 %91, 1
  br label %346

94:                                               ; preds = %51
  %95 = icmp eq i64 %1, 0
  br i1 %95, label %141, label %96

96:                                               ; preds = %94
  %97 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %97)
  %98 = load i8, ptr %0, align 1
  %99 = lshr i64 %1, 1
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr i8, ptr %0, i64 %1
  %103 = getelementptr i8, ptr %102, i64 -1
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %98 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = zext i8 %101 to i32
  %108 = shl nuw i32 %107, 24
  %109 = or disjoint i32 %108, %106
  %110 = zext i8 %104 to i32
  %111 = or disjoint i32 %109, %110
  %112 = trunc nuw nsw i64 %1 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = or disjoint i32 %111, %113
  %115 = tail call noundef i32 @llvm.bswap.i32(i32 %114)
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = add i64 %2, 2267503259
  %118 = sub i64 808198283, %2
  %119 = zext i32 %114 to i64
  %120 = zext nneg i32 %116 to i64
  %121 = lshr i64 %117, 33
  %122 = xor i64 %121, %119
  %123 = xor i64 %122, %117
  %124 = mul i64 %123, -4417276706812531889
  %125 = lshr i64 %124, 29
  %126 = xor i64 %125, %124
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  %130 = lshr i64 %118, 33
  %131 = xor i64 %130, %120
  %132 = xor i64 %131, %118
  %133 = mul i64 %132, -4417276706812531889
  %134 = lshr i64 %133, 29
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, 1609587929392839161
  %137 = lshr i64 %136, 32
  %138 = xor i64 %137, %136
  %139 = insertvalue { i64, i64 } poison, i64 %129, 0
  %140 = insertvalue { i64, i64 } %139, i64 %138, 1
  br label %346

141:                                              ; preds = %94
  %142 = xor i64 %2, 7507096552062056628
  %143 = lshr i64 %142, 33
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, -4417276706812531889
  %146 = lshr i64 %145, 29
  %147 = xor i64 %146, %145
  %148 = mul i64 %147, 1609587929392839161
  %149 = lshr i64 %148, 32
  %150 = xor i64 %149, %148
  %151 = xor i64 %2, -7613947547284439735
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  %160 = insertvalue { i64, i64 } poison, i64 %150, 0
  %161 = insertvalue { i64, i64 } %160, i64 %159, 1
  br label %346

162:                                              ; preds = %3
  %163 = icmp ult i64 %1, 129
  br i1 %163, label %164, label %339

164:                                              ; preds = %162
  %165 = mul i64 %1, -7046029288634856825
  %166 = icmp samesign ugt i64 %1, 32
  br i1 %166, label %167, label %282

167:                                              ; preds = %164
  %168 = icmp samesign ugt i64 %1, 64
  br i1 %168, label %169, label %244

169:                                              ; preds = %167
  %170 = icmp samesign ugt i64 %1, 96
  br i1 %170, label %171, label %206

171:                                              ; preds = %169
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -64
  %175 = load i64, ptr %172, align 1
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %177 = load i64, ptr %176, align 1
  %178 = add i64 %2, 4554437623014685352
  %179 = xor i64 %175, %178
  %180 = sub i64 2111919702937427193, %2
  %181 = xor i64 %177, %180
  %182 = zext i64 %179 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %165, %187
  %189 = load i64, ptr %174, align 1
  %190 = getelementptr inbounds i8, ptr %173, i64 -56
  %191 = load i64, ptr %190, align 1
  %192 = add i64 %191, %189
  %193 = xor i64 %188, %192
  %194 = add i64 %2, 3556072174620004746
  %195 = xor i64 %189, %194
  %196 = sub i64 7238261902898274248, %2
  %197 = xor i64 %191, %196
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %177, %175
  %205 = xor i64 %204, %203
  br label %206

206:                                              ; preds = %171, %169
  %207 = phi i64 [ %193, %171 ], [ %165, %169 ]
  %208 = phi i64 [ %205, %171 ], [ 0, %169 ]
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %211 = getelementptr inbounds i8, ptr %210, i64 -48
  %212 = load i64, ptr %209, align 1
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %214 = load i64, ptr %213, align 1
  %215 = add i64 %2, -3818837453329782724
  %216 = xor i64 %212, %215
  %217 = sub i64 -6688317018830679928, %2
  %218 = xor i64 %214, %217
  %219 = zext i64 %216 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %207, %224
  %226 = load i64, ptr %211, align 1
  %227 = getelementptr inbounds i8, ptr %210, i64 -40
  %228 = load i64, ptr %227, align 1
  %229 = add i64 %228, %226
  %230 = xor i64 %225, %229
  %231 = add i64 %2, 5690594596133299313
  %232 = xor i64 %226, %231
  %233 = sub i64 -2833645246901970632, %2
  %234 = xor i64 %228, %233
  %235 = zext i64 %232 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %208, %240
  %242 = add i64 %214, %212
  %243 = xor i64 %241, %242
  br label %244

244:                                              ; preds = %206, %167
  %245 = phi i64 [ %230, %206 ], [ %165, %167 ]
  %246 = phi i64 [ %243, %206 ], [ 0, %167 ]
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %249 = getelementptr inbounds i8, ptr %248, i64 -32
  %250 = load i64, ptr %247, align 1
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %252 = load i64, ptr %251, align 1
  %253 = add i64 %2, 8711581037947681227
  %254 = xor i64 %250, %253
  %255 = sub i64 2410270004345854594, %2
  %256 = xor i64 %252, %255
  %257 = zext i64 %254 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %245, %262
  %264 = load i64, ptr %249, align 1
  %265 = getelementptr inbounds i8, ptr %248, i64 -24
  %266 = load i64, ptr %265, align 1
  %267 = add i64 %266, %264
  %268 = xor i64 %263, %267
  %269 = add i64 %2, -8204357891075471176
  %270 = xor i64 %264, %269
  %271 = sub i64 5487137525590930912, %2
  %272 = xor i64 %266, %271
  %273 = zext i64 %270 to i128
  %274 = zext i64 %272 to i128
  %275 = mul nuw i128 %274, %273
  %276 = lshr i128 %275, 64
  %277 = xor i128 %276, %275
  %278 = trunc i128 %277 to i64
  %279 = add i64 %246, %278
  %280 = add i64 %252, %250
  %281 = xor i64 %279, %280
  br label %282

282:                                              ; preds = %164, %244
  %283 = phi i64 [ %268, %244 ], [ %165, %164 ]
  %284 = phi i64 [ %281, %244 ], [ 0, %164 ]
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %286 = getelementptr inbounds i8, ptr %285, i64 -16
  %287 = load i64, ptr %0, align 1
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %289 = load i64, ptr %288, align 1
  %290 = add i64 %2, -4734510112055689544
  %291 = xor i64 %287, %290
  %292 = sub i64 2066345149520216444, %2
  %293 = xor i64 %289, %292
  %294 = zext i64 %291 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %283, %299
  %301 = load i64, ptr %286, align 1
  %302 = getelementptr inbounds i8, ptr %285, i64 -8
  %303 = load i64, ptr %302, align 1
  %304 = add i64 %303, %301
  %305 = xor i64 %300, %304
  %306 = add i64 %2, -2623469361688619810
  %307 = xor i64 %301, %306
  %308 = sub i64 2262974939099578482, %2
  %309 = xor i64 %303, %308
  %310 = zext i64 %307 to i128
  %311 = zext i64 %309 to i128
  %312 = mul nuw i128 %311, %310
  %313 = lshr i128 %312, 64
  %314 = xor i128 %313, %312
  %315 = trunc i128 %314 to i64
  %316 = add i64 %284, %315
  %317 = add i64 %289, %287
  %318 = xor i64 %316, %317
  %319 = add i64 %318, %305
  %320 = mul i64 %305, -7046029288634856825
  %321 = mul i64 %318, -8796714831421723037
  %322 = sub i64 %1, %2
  %323 = mul i64 %322, -4417276706812531889
  %324 = add i64 %320, %323
  %325 = add i64 %324, %321
  %326 = lshr i64 %319, 37
  %327 = xor i64 %326, %319
  %328 = mul i64 %327, 1609587791953885689
  %329 = lshr i64 %328, 32
  %330 = xor i64 %329, %328
  %331 = lshr i64 %325, 37
  %332 = xor i64 %331, %325
  %333 = mul i64 %332, 1609587791953885689
  %334 = lshr i64 %333, 32
  %335 = xor i64 %334, %333
  %336 = sub i64 0, %335
  %337 = insertvalue { i64, i64 } poison, i64 %330, 0
  %338 = insertvalue { i64, i64 } %337, i64 %336, 1
  br label %346

339:                                              ; preds = %162
  %340 = icmp ult i64 %1, 241
  br i1 %340, label %341, label %343

341:                                              ; preds = %339
  %342 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #19
  br label %346

343:                                              ; preds = %339
  %344 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XXH_g_dispatch128, i64 8), align 8
  %345 = tail call { i64, i64 } %344(ptr noundef %0, i64 noundef %1, i64 noundef %2) #20
  br label %346

346:                                              ; preds = %141, %96, %53, %7, %282, %341, %343
  %347 = phi { i64, i64 } [ %338, %282 ], [ %342, %341 ], [ %345, %343 ], [ %50, %7 ], [ %93, %53 ], [ %140, %96 ], [ %161, %141 ]
  ret { i64, i64 } %347
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret_dispatch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 17
  br i1 %6, label %7, label %185

7:                                                ; preds = %4
  %8 = icmp samesign ugt i64 %1, 8
  br i1 %8, label %9, label %62

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %15 = load i64, ptr %14, align 1
  %16 = xor i64 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %20, %18
  %22 = load i64, ptr %0, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %24 = getelementptr inbounds i8, ptr %23, i64 -8
  %25 = load i64, ptr %24, align 1
  %26 = xor i64 %16, %22
  %27 = xor i64 %26, %25
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 11400714785074694791
  %30 = trunc i128 %29 to i64
  %31 = lshr i128 %29, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = shl nuw nsw i64 %1, 54
  %34 = add nsw i64 %33, -18014398509481984
  %35 = add i64 %34, %30
  %36 = xor i64 %21, %25
  %37 = and i64 %36, 4294967295
  %38 = mul nuw i64 %37, 2246822518
  %39 = add i64 %38, %36
  %40 = add i64 %39, %32
  %41 = tail call noundef i64 @llvm.bswap.i64(i64 %40)
  %42 = xor i64 %41, %35
  %43 = zext i64 %42 to i128
  %44 = mul nuw i128 %43, 14029467366897019727
  %45 = trunc i128 %44 to i64
  %46 = lshr i128 %44, 64
  %47 = trunc nuw i128 %46 to i64
  %48 = mul i64 %40, -4417276706812531889
  %49 = add i64 %48, %47
  %50 = lshr i64 %45, 37
  %51 = xor i64 %50, %45
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  %55 = lshr i64 %49, 37
  %56 = xor i64 %55, %49
  %57 = mul i64 %56, 1609587791953885689
  %58 = lshr i64 %57, 32
  %59 = xor i64 %58, %57
  %60 = insertvalue { i64, i64 } poison, i64 %54, 0
  %61 = insertvalue { i64, i64 } %60, i64 %59, 1
  br label %383

62:                                               ; preds = %7
  %63 = icmp samesign ugt i64 %1, 3
  br i1 %63, label %64, label %105

64:                                               ; preds = %62
  %65 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %65)
  %66 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %66)
  %67 = load i32, ptr %0, align 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %69 = getelementptr inbounds i8, ptr %68, i64 -4
  %70 = load i32, ptr %69, align 1
  %71 = zext i32 %67 to i64
  %72 = zext i32 %70 to i64
  %73 = shl nuw i64 %72, 32
  %74 = or disjoint i64 %73, %71
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %78 = load i64, ptr %77, align 1
  %79 = xor i64 %78, %76
  %80 = xor i64 %79, %74
  %81 = shl nuw nsw i64 %1, 2
  %82 = add nuw nsw i64 %81, -7046029288634856825
  %83 = zext i64 %80 to i128
  %84 = zext i64 %82 to i128
  %85 = mul nuw i128 %83, %84
  %86 = trunc i128 %85 to i64
  %87 = lshr i128 %85, 64
  %88 = trunc nuw i128 %87 to i64
  %89 = shl i64 %86, 1
  %90 = add i64 %89, %88
  %91 = lshr i64 %90, 3
  %92 = xor i64 %91, %86
  %93 = lshr i64 %92, 35
  %94 = xor i64 %93, %92
  %95 = mul i64 %94, -6939452855193903323
  %96 = lshr i64 %95, 28
  %97 = xor i64 %96, %95
  %98 = lshr i64 %90, 37
  %99 = xor i64 %98, %90
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  %103 = insertvalue { i64, i64 } poison, i64 %97, 0
  %104 = insertvalue { i64, i64 } %103, i64 %102, 1
  br label %383

105:                                              ; preds = %62
  %106 = icmp eq i64 %1, 0
  br i1 %106, label %156, label %107

107:                                              ; preds = %105
  %108 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %108)
  %109 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %109)
  %110 = load i8, ptr %0, align 1
  %111 = lshr i64 %1, 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = getelementptr i8, ptr %0, i64 %1
  %115 = getelementptr i8, ptr %114, i64 -1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %110 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = zext i8 %113 to i32
  %120 = shl nuw i32 %119, 24
  %121 = or disjoint i32 %120, %118
  %122 = zext i8 %116 to i32
  %123 = or disjoint i32 %121, %122
  %124 = trunc nuw nsw i64 %1 to i32
  %125 = shl nuw nsw i32 %124, 8
  %126 = or disjoint i32 %123, %125
  %127 = tail call noundef i32 @llvm.bswap.i32(i32 %126)
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 13)
  %129 = load i32, ptr %2, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %131 = load i32, ptr %130, align 1
  %132 = xor i32 %131, %129
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %134 = load i32, ptr %133, align 1
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %136 = load i32, ptr %135, align 1
  %137 = xor i32 %136, %134
  %138 = xor i32 %132, %126
  %139 = zext i32 %138 to i64
  %140 = xor i32 %137, %128
  %141 = zext i32 %140 to i64
  %142 = mul i64 %139, -4417276706812531889
  %143 = lshr i64 %142, 29
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  %148 = mul i64 %141, -4417276706812531889
  %149 = lshr i64 %148, 29
  %150 = xor i64 %149, %148
  %151 = mul i64 %150, 1609587929392839161
  %152 = lshr i64 %151, 32
  %153 = xor i64 %152, %151
  %154 = insertvalue { i64, i64 } poison, i64 %147, 0
  %155 = insertvalue { i64, i64 } %154, i64 %153, 1
  br label %383

156:                                              ; preds = %105
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %158 = load i64, ptr %157, align 1
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %160 = load i64, ptr %159, align 1
  %161 = xor i64 %160, %158
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %165 = load i64, ptr %164, align 1
  %166 = xor i64 %165, %163
  %167 = lshr i64 %161, 33
  %168 = xor i64 %167, %161
  %169 = mul i64 %168, -4417276706812531889
  %170 = lshr i64 %169, 29
  %171 = xor i64 %170, %169
  %172 = mul i64 %171, 1609587929392839161
  %173 = lshr i64 %172, 32
  %174 = xor i64 %173, %172
  %175 = lshr i64 %166, 33
  %176 = xor i64 %175, %166
  %177 = mul i64 %176, -4417276706812531889
  %178 = lshr i64 %177, 29
  %179 = xor i64 %178, %177
  %180 = mul i64 %179, 1609587929392839161
  %181 = lshr i64 %180, 32
  %182 = xor i64 %181, %180
  %183 = insertvalue { i64, i64 } poison, i64 %174, 0
  %184 = insertvalue { i64, i64 } %183, i64 %182, 1
  br label %383

185:                                              ; preds = %4
  %186 = icmp ult i64 %1, 129
  br i1 %186, label %187, label %376

187:                                              ; preds = %185
  %188 = mul i64 %1, -7046029288634856825
  %189 = icmp samesign ugt i64 %1, 32
  br i1 %189, label %190, label %317

190:                                              ; preds = %187
  %191 = icmp samesign ugt i64 %1, 64
  br i1 %191, label %192, label %275

192:                                              ; preds = %190
  %193 = icmp samesign ugt i64 %1, 96
  br i1 %193, label %194, label %233

194:                                              ; preds = %192
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %197 = getelementptr inbounds i8, ptr %196, i64 -64
  %198 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %199 = load i64, ptr %195, align 1
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %201 = load i64, ptr %200, align 1
  %202 = load i64, ptr %198, align 1
  %203 = xor i64 %202, %199
  %204 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %205 = load i64, ptr %204, align 1
  %206 = xor i64 %205, %201
  %207 = zext i64 %203 to i128
  %208 = zext i64 %206 to i128
  %209 = mul nuw i128 %208, %207
  %210 = lshr i128 %209, 64
  %211 = xor i128 %210, %209
  %212 = trunc i128 %211 to i64
  %213 = add i64 %188, %212
  %214 = load i64, ptr %197, align 1
  %215 = getelementptr inbounds i8, ptr %196, i64 -56
  %216 = load i64, ptr %215, align 1
  %217 = add i64 %216, %214
  %218 = xor i64 %213, %217
  %219 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %214
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %223 = load i64, ptr %222, align 1
  %224 = xor i64 %223, %216
  %225 = zext i64 %221 to i128
  %226 = zext i64 %224 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %201, %199
  %232 = xor i64 %231, %230
  br label %233

233:                                              ; preds = %194, %192
  %234 = phi i64 [ %218, %194 ], [ %188, %192 ]
  %235 = phi i64 [ %232, %194 ], [ 0, %192 ]
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %238 = getelementptr inbounds i8, ptr %237, i64 -48
  %239 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %240 = load i64, ptr %236, align 1
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %242 = load i64, ptr %241, align 1
  %243 = load i64, ptr %239, align 1
  %244 = xor i64 %243, %240
  %245 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %246 = load i64, ptr %245, align 1
  %247 = xor i64 %246, %242
  %248 = zext i64 %244 to i128
  %249 = zext i64 %247 to i128
  %250 = mul nuw i128 %249, %248
  %251 = lshr i128 %250, 64
  %252 = xor i128 %251, %250
  %253 = trunc i128 %252 to i64
  %254 = add i64 %234, %253
  %255 = load i64, ptr %238, align 1
  %256 = getelementptr inbounds i8, ptr %237, i64 -40
  %257 = load i64, ptr %256, align 1
  %258 = add i64 %257, %255
  %259 = xor i64 %254, %258
  %260 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %261 = load i64, ptr %260, align 1
  %262 = xor i64 %261, %255
  %263 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %264 = load i64, ptr %263, align 1
  %265 = xor i64 %264, %257
  %266 = zext i64 %262 to i128
  %267 = zext i64 %265 to i128
  %268 = mul nuw i128 %267, %266
  %269 = lshr i128 %268, 64
  %270 = xor i128 %269, %268
  %271 = trunc i128 %270 to i64
  %272 = add i64 %235, %271
  %273 = add i64 %242, %240
  %274 = xor i64 %272, %273
  br label %275

275:                                              ; preds = %233, %190
  %276 = phi i64 [ %259, %233 ], [ %188, %190 ]
  %277 = phi i64 [ %274, %233 ], [ 0, %190 ]
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %280 = getelementptr inbounds i8, ptr %279, i64 -32
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %282 = load i64, ptr %278, align 1
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %284 = load i64, ptr %283, align 1
  %285 = load i64, ptr %281, align 1
  %286 = xor i64 %285, %282
  %287 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %288, %284
  %290 = zext i64 %286 to i128
  %291 = zext i64 %289 to i128
  %292 = mul nuw i128 %291, %290
  %293 = lshr i128 %292, 64
  %294 = xor i128 %293, %292
  %295 = trunc i128 %294 to i64
  %296 = add i64 %276, %295
  %297 = load i64, ptr %280, align 1
  %298 = getelementptr inbounds i8, ptr %279, i64 -24
  %299 = load i64, ptr %298, align 1
  %300 = add i64 %299, %297
  %301 = xor i64 %296, %300
  %302 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %303 = load i64, ptr %302, align 1
  %304 = xor i64 %303, %297
  %305 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %306 = load i64, ptr %305, align 1
  %307 = xor i64 %306, %299
  %308 = zext i64 %304 to i128
  %309 = zext i64 %307 to i128
  %310 = mul nuw i128 %309, %308
  %311 = lshr i128 %310, 64
  %312 = xor i128 %311, %310
  %313 = trunc i128 %312 to i64
  %314 = add i64 %277, %313
  %315 = add i64 %284, %282
  %316 = xor i64 %314, %315
  br label %317

317:                                              ; preds = %187, %275
  %318 = phi i64 [ %301, %275 ], [ %188, %187 ]
  %319 = phi i64 [ %316, %275 ], [ 0, %187 ]
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %321 = getelementptr inbounds i8, ptr %320, i64 -16
  %322 = load i64, ptr %0, align 1
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %324 = load i64, ptr %323, align 1
  %325 = load i64, ptr %2, align 1
  %326 = xor i64 %325, %322
  %327 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %328 = load i64, ptr %327, align 1
  %329 = xor i64 %328, %324
  %330 = zext i64 %326 to i128
  %331 = zext i64 %329 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %318, %335
  %337 = load i64, ptr %321, align 1
  %338 = getelementptr inbounds i8, ptr %320, i64 -8
  %339 = load i64, ptr %338, align 1
  %340 = add i64 %339, %337
  %341 = xor i64 %336, %340
  %342 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %343 = load i64, ptr %342, align 1
  %344 = xor i64 %343, %337
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = xor i64 %346, %339
  %348 = zext i64 %344 to i128
  %349 = zext i64 %347 to i128
  %350 = mul nuw i128 %349, %348
  %351 = lshr i128 %350, 64
  %352 = xor i128 %351, %350
  %353 = trunc i128 %352 to i64
  %354 = add i64 %319, %353
  %355 = add i64 %324, %322
  %356 = xor i64 %354, %355
  %357 = add i64 %356, %341
  %358 = mul i64 %341, -7046029288634856825
  %359 = mul i64 %356, -8796714831421723037
  %360 = mul i64 %1, -4417276706812531889
  %361 = add i64 %358, %360
  %362 = add i64 %361, %359
  %363 = lshr i64 %357, 37
  %364 = xor i64 %363, %357
  %365 = mul i64 %364, 1609587791953885689
  %366 = lshr i64 %365, 32
  %367 = xor i64 %366, %365
  %368 = lshr i64 %362, 37
  %369 = xor i64 %368, %362
  %370 = mul i64 %369, 1609587791953885689
  %371 = lshr i64 %370, 32
  %372 = xor i64 %371, %370
  %373 = sub i64 0, %372
  %374 = insertvalue { i64, i64 } poison, i64 %367, 0
  %375 = insertvalue { i64, i64 } %374, i64 %373, 1
  br label %383

376:                                              ; preds = %185
  %377 = icmp ult i64 %1, 241
  br i1 %377, label %378, label %380

378:                                              ; preds = %376
  %379 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0) #19
  br label %383

380:                                              ; preds = %376
  %381 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XXH_g_dispatch128, i64 16), align 8
  %382 = tail call { i64, i64 } %381(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #20
  br label %383

383:                                              ; preds = %156, %107, %64, %9, %317, %378, %380
  %384 = phi { i64, i64 } [ %375, %317 ], [ %379, %378 ], [ %382, %380 ], [ %61, %9 ], [ %104, %64 ], [ %155, %107 ], [ %184, %156 ]
  ret { i64, i64 } %384
}

; Function Attrs: nounwind uwtable
define dso_local i32 @XXH3_128bits_update_dispatch(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XXH_g_dispatch128, i64 24), align 8
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %1, i64 noundef %2) #20
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXHL64_default_sse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #4 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %130, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %82
  %8 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %5 ], [ %122, %82 ]
  %9 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %5 ], [ %112, %82 ]
  %10 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %102, %82 ]
  %11 = phi i64 [ 0, %5 ], [ %123, %82 ]
  %12 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %5 ], [ %92, %82 ]
  %13 = shl i64 %11, 10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  br label %15

15:                                               ; preds = %15, %7
  %16 = phi <2 x i64> [ %8, %7 ], [ %79, %15 ]
  %17 = phi <2 x i64> [ %9, %7 ], [ %65, %15 ]
  %18 = phi <2 x i64> [ %10, %7 ], [ %51, %15 ]
  %19 = phi <2 x i64> [ %12, %7 ], [ %37, %15 ]
  %20 = phi i64 [ 0, %7 ], [ %80, %15 ]
  %21 = shl i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1), !noalias !13
  %24 = shl i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <2 x i64>, ptr %22, align 1, !alias.scope !10, !noalias !15
  %27 = load <2 x i64>, ptr %25, align 8, !alias.scope !13, !noalias !17
  %28 = xor <2 x i64> %27, %26
  %29 = bitcast <2 x i64> %28 to <4 x i32>
  %30 = shufflevector <4 x i32> %29, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %31 = bitcast <4 x i32> %30 to <2 x i64>
  %32 = and <2 x i64> %28, splat (i64 4294967295)
  %33 = and <2 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <2 x i64> %33, %32
  %35 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %36 = add <2 x i64> %19, %35
  %37 = add <2 x i64> %36, %34
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %39 = load <2 x i64>, ptr %38, align 1, !alias.scope !10, !noalias !15
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %41 = load <2 x i64>, ptr %40, align 8, !alias.scope !13, !noalias !17
  %42 = xor <2 x i64> %41, %39
  %43 = bitcast <2 x i64> %42 to <4 x i32>
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %45 = bitcast <4 x i32> %44 to <2 x i64>
  %46 = and <2 x i64> %42, splat (i64 4294967295)
  %47 = and <2 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <2 x i64> %47, %46
  %49 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %50 = add <2 x i64> %18, %49
  %51 = add <2 x i64> %50, %48
  %52 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %53 = load <2 x i64>, ptr %52, align 1, !alias.scope !10, !noalias !15
  %54 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %55 = load <2 x i64>, ptr %54, align 8, !alias.scope !13, !noalias !17
  %56 = xor <2 x i64> %55, %53
  %57 = bitcast <2 x i64> %56 to <4 x i32>
  %58 = shufflevector <4 x i32> %57, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %59 = bitcast <4 x i32> %58 to <2 x i64>
  %60 = and <2 x i64> %56, splat (i64 4294967295)
  %61 = and <2 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <2 x i64> %61, %60
  %63 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %64 = add <2 x i64> %17, %63
  %65 = add <2 x i64> %64, %62
  %66 = getelementptr inbounds nuw i8, ptr %22, i64 48
  %67 = load <2 x i64>, ptr %66, align 1, !alias.scope !10, !noalias !15
  %68 = getelementptr inbounds nuw i8, ptr %25, i64 48
  %69 = load <2 x i64>, ptr %68, align 8, !alias.scope !13, !noalias !17
  %70 = xor <2 x i64> %69, %67
  %71 = bitcast <2 x i64> %70 to <4 x i32>
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %73 = bitcast <4 x i32> %72 to <2 x i64>
  %74 = and <2 x i64> %70, splat (i64 4294967295)
  %75 = and <2 x i64> %73, splat (i64 4294967295)
  %76 = mul nuw <2 x i64> %75, %74
  %77 = shufflevector <2 x i64> %67, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %78 = add <2 x i64> %16, %77
  %79 = add <2 x i64> %78, %76
  %80 = add nuw nsw i64 %20, 1
  %81 = icmp eq i64 %80, 16
  br i1 %81, label %82, label %15, !llvm.loop !18

82:                                               ; preds = %15
  %83 = lshr <2 x i64> %37, splat (i64 47)
  %84 = xor <2 x i64> %37, %83
  %85 = xor <2 x i64> %84, <i64 -4329134394285701654, i64 -1485321483350670907>
  %86 = bitcast <2 x i64> %85 to <4 x i32>
  %87 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %88 = bitcast <4 x i32> %87 to <2 x i64>
  %89 = and <2 x i64> %85, splat (i64 4294967295)
  %90 = mul nuw <2 x i64> %89, splat (i64 2654435761)
  %91 = mul <2 x i64> %88, splat (i64 -7046029290881679360)
  %92 = add <2 x i64> %91, %90
  %93 = lshr <2 x i64> %51, splat (i64 47)
  %94 = xor <2 x i64> %51, %93
  %95 = xor <2 x i64> %94, <i64 5321830579834785047, i64 -7032137544937171245>
  %96 = bitcast <2 x i64> %95 to <4 x i32>
  %97 = shufflevector <4 x i32> %96, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %98 = bitcast <4 x i32> %97 to <2 x i64>
  %99 = and <2 x i64> %95, splat (i64 4294967295)
  %100 = mul nuw <2 x i64> %99, splat (i64 2654435761)
  %101 = mul <2 x i64> %98, splat (i64 -7046029290881679360)
  %102 = add <2 x i64> %101, %100
  %103 = lshr <2 x i64> %65, splat (i64 47)
  %104 = xor <2 x i64> %65, %103
  %105 = xor <2 x i64> %104, <i64 -242834301215959509, i64 -3588858202114426737>
  %106 = bitcast <2 x i64> %105 to <4 x i32>
  %107 = shufflevector <4 x i32> %106, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %108 = bitcast <4 x i32> %107 to <2 x i64>
  %109 = and <2 x i64> %105, splat (i64 4294967295)
  %110 = mul nuw <2 x i64> %109, splat (i64 2654435761)
  %111 = mul <2 x i64> %108, splat (i64 -7046029290881679360)
  %112 = add <2 x i64> %111, %110
  %113 = lshr <2 x i64> %79, splat (i64 47)
  %114 = xor <2 x i64> %79, %113
  %115 = xor <2 x i64> %114, <i64 2883454493032893253, i64 9097354517224871855>
  %116 = bitcast <2 x i64> %115 to <4 x i32>
  %117 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %118 = bitcast <4 x i32> %117 to <2 x i64>
  %119 = and <2 x i64> %115, splat (i64 4294967295)
  %120 = mul nuw <2 x i64> %119, splat (i64 2654435761)
  %121 = mul <2 x i64> %118, splat (i64 -7046029290881679360)
  %122 = add <2 x i64> %121, %120
  %123 = add nuw nsw i64 %11, 1
  %124 = icmp eq i64 %123, %6
  br i1 %124, label %125, label %7, !llvm.loop !20

125:                                              ; preds = %82
  %126 = shufflevector <2 x i64> %102, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %127 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %126, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %128 = shufflevector <2 x i64> %112, <2 x i64> %122, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %129 = shufflevector <2 x i64> %92, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %130

130:                                              ; preds = %125, %2
  %131 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %2 ], [ %112, %125 ]
  %132 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %2 ], [ %122, %125 ]
  %133 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %128, %125 ]
  %134 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %102, %125 ]
  %135 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %127, %125 ]
  %136 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %2 ], [ %92, %125 ]
  %137 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %2 ], [ %129, %125 ]
  %138 = shufflevector <4 x i64> %137, <4 x i64> %135, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %139 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %139)
  %140 = and i64 %3, -1024
  %141 = lshr i64 %3, 6
  %142 = and i64 %141, 15
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 %140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %144 = icmp eq i64 %142, 0
  br i1 %144, label %215, label %145

145:                                              ; preds = %130, %145
  %146 = phi <2 x i64> [ %209, %145 ], [ %132, %130 ]
  %147 = phi <2 x i64> [ %195, %145 ], [ %131, %130 ]
  %148 = phi <2 x i64> [ %181, %145 ], [ %134, %130 ]
  %149 = phi <2 x i64> [ %167, %145 ], [ %136, %130 ]
  %150 = phi i64 [ %210, %145 ], [ 0, %130 ]
  %151 = shl i64 %150, 6
  %152 = getelementptr inbounds nuw i8, ptr %143, i64 %151
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %153, i32 0, i32 3, i32 1), !noalias !24
  %154 = shl i64 %150, 3
  %155 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %154
  %156 = load <2 x i64>, ptr %152, align 1, !alias.scope !21, !noalias !26
  %157 = load <2 x i64>, ptr %155, align 8, !alias.scope !24, !noalias !28
  %158 = xor <2 x i64> %157, %156
  %159 = bitcast <2 x i64> %158 to <4 x i32>
  %160 = shufflevector <4 x i32> %159, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %161 = bitcast <4 x i32> %160 to <2 x i64>
  %162 = and <2 x i64> %158, splat (i64 4294967295)
  %163 = and <2 x i64> %161, splat (i64 4294967295)
  %164 = mul nuw <2 x i64> %163, %162
  %165 = shufflevector <2 x i64> %156, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %166 = add <2 x i64> %149, %165
  %167 = add <2 x i64> %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %152, i64 16
  %169 = load <2 x i64>, ptr %168, align 1, !alias.scope !21, !noalias !26
  %170 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %171 = load <2 x i64>, ptr %170, align 8, !alias.scope !24, !noalias !28
  %172 = xor <2 x i64> %171, %169
  %173 = bitcast <2 x i64> %172 to <4 x i32>
  %174 = shufflevector <4 x i32> %173, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %175 = bitcast <4 x i32> %174 to <2 x i64>
  %176 = and <2 x i64> %172, splat (i64 4294967295)
  %177 = and <2 x i64> %175, splat (i64 4294967295)
  %178 = mul nuw <2 x i64> %177, %176
  %179 = shufflevector <2 x i64> %169, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %180 = add <2 x i64> %148, %179
  %181 = add <2 x i64> %180, %178
  %182 = getelementptr inbounds nuw i8, ptr %152, i64 32
  %183 = load <2 x i64>, ptr %182, align 1, !alias.scope !21, !noalias !26
  %184 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %185 = load <2 x i64>, ptr %184, align 8, !alias.scope !24, !noalias !28
  %186 = xor <2 x i64> %185, %183
  %187 = bitcast <2 x i64> %186 to <4 x i32>
  %188 = shufflevector <4 x i32> %187, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %189 = bitcast <4 x i32> %188 to <2 x i64>
  %190 = and <2 x i64> %186, splat (i64 4294967295)
  %191 = and <2 x i64> %189, splat (i64 4294967295)
  %192 = mul nuw <2 x i64> %191, %190
  %193 = shufflevector <2 x i64> %183, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %194 = add <2 x i64> %147, %193
  %195 = add <2 x i64> %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %152, i64 48
  %197 = load <2 x i64>, ptr %196, align 1, !alias.scope !21, !noalias !26
  %198 = getelementptr inbounds nuw i8, ptr %155, i64 48
  %199 = load <2 x i64>, ptr %198, align 8, !alias.scope !24, !noalias !28
  %200 = xor <2 x i64> %199, %197
  %201 = bitcast <2 x i64> %200 to <4 x i32>
  %202 = shufflevector <4 x i32> %201, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %203 = bitcast <4 x i32> %202 to <2 x i64>
  %204 = and <2 x i64> %200, splat (i64 4294967295)
  %205 = and <2 x i64> %203, splat (i64 4294967295)
  %206 = mul nuw <2 x i64> %205, %204
  %207 = shufflevector <2 x i64> %197, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %208 = add <2 x i64> %146, %207
  %209 = add <2 x i64> %208, %206
  %210 = add nuw nsw i64 %150, 1
  %211 = icmp eq i64 %210, %142
  br i1 %211, label %212, label %145, !llvm.loop !18

212:                                              ; preds = %145
  %213 = shufflevector <2 x i64> %167, <2 x i64> %181, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %214 = shufflevector <2 x i64> %195, <2 x i64> %209, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %215

215:                                              ; preds = %130, %212
  %216 = phi <4 x i64> [ %133, %130 ], [ %214, %212 ]
  %217 = phi <4 x i64> [ %138, %130 ], [ %213, %212 ]
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %219 = getelementptr inbounds i8, ptr %218, i64 -64
  %220 = load <4 x i64>, ptr %219, align 1
  %221 = xor <4 x i64> %220, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %222 = lshr <4 x i64> %221, splat (i64 32)
  %223 = and <4 x i64> %221, splat (i64 4294967295)
  %224 = mul nuw <4 x i64> %223, %222
  %225 = shufflevector <4 x i64> %220, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %226 = add <4 x i64> %217, %225
  %227 = add <4 x i64> %226, %224
  %228 = getelementptr inbounds i8, ptr %218, i64 -32
  %229 = load <4 x i64>, ptr %228, align 1
  %230 = xor <4 x i64> %229, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %231 = lshr <4 x i64> %230, splat (i64 32)
  %232 = and <4 x i64> %230, splat (i64 4294967295)
  %233 = mul nuw <4 x i64> %232, %231
  %234 = shufflevector <4 x i64> %229, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %235 = add <4 x i64> %216, %234
  %236 = add <4 x i64> %235, %233
  %237 = mul i64 %1, -7046029288634856825
  %238 = extractelement <4 x i64> %227, i64 0
  %239 = xor i64 %238, 7914194659941938988
  %240 = extractelement <4 x i64> %227, i64 1
  %241 = xor i64 %240, -6611157965513653271
  %242 = zext i64 %239 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %237, %247
  %249 = extractelement <4 x i64> %227, i64 2
  %250 = xor i64 %249, -1839215637059881052
  %251 = extractelement <4 x i64> %227, i64 3
  %252 = xor i64 %251, -3433288310154277810
  %253 = zext i64 %250 to i128
  %254 = zext i64 %252 to i128
  %255 = mul nuw i128 %254, %253
  %256 = lshr i128 %255, 64
  %257 = xor i128 %256, %255
  %258 = trunc i128 %257 to i64
  %259 = add i64 %248, %258
  %260 = extractelement <4 x i64> %236, i64 0
  %261 = xor i64 %260, 5046485836271438973
  %262 = extractelement <4 x i64> %236, i64 1
  %263 = xor i64 %262, -8055285457383852172
  %264 = zext i64 %261 to i128
  %265 = zext i64 %263 to i128
  %266 = mul nuw i128 %265, %264
  %267 = lshr i128 %266, 64
  %268 = xor i128 %267, %266
  %269 = trunc i128 %268 to i64
  %270 = add i64 %259, %269
  %271 = extractelement <4 x i64> %236, i64 2
  %272 = xor i64 %271, 5920048007935066598
  %273 = extractelement <4 x i64> %236, i64 3
  %274 = xor i64 %273, 7336514198459093435
  %275 = zext i64 %272 to i128
  %276 = zext i64 %274 to i128
  %277 = mul nuw i128 %276, %275
  %278 = lshr i128 %277, 64
  %279 = xor i128 %278, %277
  %280 = trunc i128 %279 to i64
  %281 = add i64 %270, %280
  %282 = lshr i64 %281, 37
  %283 = xor i64 %282, %281
  %284 = mul i64 %283, 1609587791953885689
  %285 = lshr i64 %284, 32
  %286 = xor i64 %285, %284
  ret i64 %286
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXHL64_seed_sse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #5 {
  %4 = alloca [192 x i8], align 64
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %291

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %134, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %86
  %12 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %9 ], [ %126, %86 ]
  %13 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %9 ], [ %116, %86 ]
  %14 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %106, %86 ]
  %15 = phi i64 [ 0, %9 ], [ %127, %86 ]
  %16 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %9 ], [ %96, %86 ]
  %17 = shl i64 %15, 10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  br label %19

19:                                               ; preds = %19, %11
  %20 = phi <2 x i64> [ %12, %11 ], [ %83, %19 ]
  %21 = phi <2 x i64> [ %13, %11 ], [ %69, %19 ]
  %22 = phi <2 x i64> [ %14, %11 ], [ %55, %19 ]
  %23 = phi <2 x i64> [ %16, %11 ], [ %41, %19 ]
  %24 = phi i64 [ 0, %11 ], [ %84, %19 ]
  %25 = shl i64 %24, 6
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1), !noalias !32
  %28 = shl i64 %24, 3
  %29 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %28
  %30 = load <2 x i64>, ptr %26, align 1, !alias.scope !29, !noalias !34
  %31 = load <2 x i64>, ptr %29, align 8, !alias.scope !32, !noalias !36
  %32 = xor <2 x i64> %31, %30
  %33 = bitcast <2 x i64> %32 to <4 x i32>
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %35 = bitcast <4 x i32> %34 to <2 x i64>
  %36 = and <2 x i64> %32, splat (i64 4294967295)
  %37 = and <2 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <2 x i64> %37, %36
  %39 = shufflevector <2 x i64> %30, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %40 = add <2 x i64> %23, %39
  %41 = add <2 x i64> %40, %38
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %43 = load <2 x i64>, ptr %42, align 1, !alias.scope !29, !noalias !34
  %44 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %45 = load <2 x i64>, ptr %44, align 8, !alias.scope !32, !noalias !36
  %46 = xor <2 x i64> %45, %43
  %47 = bitcast <2 x i64> %46 to <4 x i32>
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %49 = bitcast <4 x i32> %48 to <2 x i64>
  %50 = and <2 x i64> %46, splat (i64 4294967295)
  %51 = and <2 x i64> %49, splat (i64 4294967295)
  %52 = mul nuw <2 x i64> %51, %50
  %53 = shufflevector <2 x i64> %43, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %54 = add <2 x i64> %22, %53
  %55 = add <2 x i64> %54, %52
  %56 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %57 = load <2 x i64>, ptr %56, align 1, !alias.scope !29, !noalias !34
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %59 = load <2 x i64>, ptr %58, align 8, !alias.scope !32, !noalias !36
  %60 = xor <2 x i64> %59, %57
  %61 = bitcast <2 x i64> %60 to <4 x i32>
  %62 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %63 = bitcast <4 x i32> %62 to <2 x i64>
  %64 = and <2 x i64> %60, splat (i64 4294967295)
  %65 = and <2 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <2 x i64> %65, %64
  %67 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %68 = add <2 x i64> %21, %67
  %69 = add <2 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %71 = load <2 x i64>, ptr %70, align 1, !alias.scope !29, !noalias !34
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %73 = load <2 x i64>, ptr %72, align 8, !alias.scope !32, !noalias !36
  %74 = xor <2 x i64> %73, %71
  %75 = bitcast <2 x i64> %74 to <4 x i32>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %74, splat (i64 4294967295)
  %79 = and <2 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <2 x i64> %79, %78
  %81 = shufflevector <2 x i64> %71, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %82 = add <2 x i64> %20, %81
  %83 = add <2 x i64> %82, %80
  %84 = add nuw nsw i64 %24, 1
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %86, label %19, !llvm.loop !18

86:                                               ; preds = %19
  %87 = lshr <2 x i64> %41, splat (i64 47)
  %88 = xor <2 x i64> %41, %87
  %89 = xor <2 x i64> %88, <i64 -4329134394285701654, i64 -1485321483350670907>
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = and <2 x i64> %89, splat (i64 4294967295)
  %94 = mul nuw <2 x i64> %93, splat (i64 2654435761)
  %95 = mul <2 x i64> %92, splat (i64 -7046029290881679360)
  %96 = add <2 x i64> %95, %94
  %97 = lshr <2 x i64> %55, splat (i64 47)
  %98 = xor <2 x i64> %55, %97
  %99 = xor <2 x i64> %98, <i64 5321830579834785047, i64 -7032137544937171245>
  %100 = bitcast <2 x i64> %99 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = and <2 x i64> %99, splat (i64 4294967295)
  %104 = mul nuw <2 x i64> %103, splat (i64 2654435761)
  %105 = mul <2 x i64> %102, splat (i64 -7046029290881679360)
  %106 = add <2 x i64> %105, %104
  %107 = lshr <2 x i64> %69, splat (i64 47)
  %108 = xor <2 x i64> %69, %107
  %109 = xor <2 x i64> %108, <i64 -242834301215959509, i64 -3588858202114426737>
  %110 = bitcast <2 x i64> %109 to <4 x i32>
  %111 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  %113 = and <2 x i64> %109, splat (i64 4294967295)
  %114 = mul nuw <2 x i64> %113, splat (i64 2654435761)
  %115 = mul <2 x i64> %112, splat (i64 -7046029290881679360)
  %116 = add <2 x i64> %115, %114
  %117 = lshr <2 x i64> %83, splat (i64 47)
  %118 = xor <2 x i64> %83, %117
  %119 = xor <2 x i64> %118, <i64 2883454493032893253, i64 9097354517224871855>
  %120 = bitcast <2 x i64> %119 to <4 x i32>
  %121 = shufflevector <4 x i32> %120, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %122 = bitcast <4 x i32> %121 to <2 x i64>
  %123 = and <2 x i64> %119, splat (i64 4294967295)
  %124 = mul nuw <2 x i64> %123, splat (i64 2654435761)
  %125 = mul <2 x i64> %122, splat (i64 -7046029290881679360)
  %126 = add <2 x i64> %125, %124
  %127 = add nuw nsw i64 %15, 1
  %128 = icmp eq i64 %127, %10
  br i1 %128, label %129, label %11, !llvm.loop !20

129:                                              ; preds = %86
  %130 = shufflevector <2 x i64> %106, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %131 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %130, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %132 = shufflevector <2 x i64> %116, <2 x i64> %126, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %133 = shufflevector <2 x i64> %96, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %134

134:                                              ; preds = %129, %6
  %135 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %6 ], [ %116, %129 ]
  %136 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %6 ], [ %126, %129 ]
  %137 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %132, %129 ]
  %138 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %106, %129 ]
  %139 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %131, %129 ]
  %140 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %6 ], [ %96, %129 ]
  %141 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %6 ], [ %133, %129 ]
  %142 = shufflevector <4 x i64> %141, <4 x i64> %139, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %143 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %143)
  %144 = and i64 %7, -1024
  %145 = lshr i64 %7, 6
  %146 = and i64 %145, 15
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 %144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %148 = icmp eq i64 %146, 0
  br i1 %148, label %219, label %149

149:                                              ; preds = %134, %149
  %150 = phi <2 x i64> [ %213, %149 ], [ %136, %134 ]
  %151 = phi <2 x i64> [ %199, %149 ], [ %135, %134 ]
  %152 = phi <2 x i64> [ %185, %149 ], [ %138, %134 ]
  %153 = phi <2 x i64> [ %171, %149 ], [ %140, %134 ]
  %154 = phi i64 [ %214, %149 ], [ 0, %134 ]
  %155 = shl i64 %154, 6
  %156 = getelementptr inbounds nuw i8, ptr %147, i64 %155
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %157, i32 0, i32 3, i32 1), !noalias !40
  %158 = shl i64 %154, 3
  %159 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %158
  %160 = load <2 x i64>, ptr %156, align 1, !alias.scope !37, !noalias !42
  %161 = load <2 x i64>, ptr %159, align 8, !alias.scope !40, !noalias !44
  %162 = xor <2 x i64> %161, %160
  %163 = bitcast <2 x i64> %162 to <4 x i32>
  %164 = shufflevector <4 x i32> %163, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %165 = bitcast <4 x i32> %164 to <2 x i64>
  %166 = and <2 x i64> %162, splat (i64 4294967295)
  %167 = and <2 x i64> %165, splat (i64 4294967295)
  %168 = mul nuw <2 x i64> %167, %166
  %169 = shufflevector <2 x i64> %160, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %170 = add <2 x i64> %153, %169
  %171 = add <2 x i64> %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %173 = load <2 x i64>, ptr %172, align 1, !alias.scope !37, !noalias !42
  %174 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %175 = load <2 x i64>, ptr %174, align 8, !alias.scope !40, !noalias !44
  %176 = xor <2 x i64> %175, %173
  %177 = bitcast <2 x i64> %176 to <4 x i32>
  %178 = shufflevector <4 x i32> %177, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %179 = bitcast <4 x i32> %178 to <2 x i64>
  %180 = and <2 x i64> %176, splat (i64 4294967295)
  %181 = and <2 x i64> %179, splat (i64 4294967295)
  %182 = mul nuw <2 x i64> %181, %180
  %183 = shufflevector <2 x i64> %173, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %184 = add <2 x i64> %152, %183
  %185 = add <2 x i64> %184, %182
  %186 = getelementptr inbounds nuw i8, ptr %156, i64 32
  %187 = load <2 x i64>, ptr %186, align 1, !alias.scope !37, !noalias !42
  %188 = getelementptr inbounds nuw i8, ptr %159, i64 32
  %189 = load <2 x i64>, ptr %188, align 8, !alias.scope !40, !noalias !44
  %190 = xor <2 x i64> %189, %187
  %191 = bitcast <2 x i64> %190 to <4 x i32>
  %192 = shufflevector <4 x i32> %191, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %193 = bitcast <4 x i32> %192 to <2 x i64>
  %194 = and <2 x i64> %190, splat (i64 4294967295)
  %195 = and <2 x i64> %193, splat (i64 4294967295)
  %196 = mul nuw <2 x i64> %195, %194
  %197 = shufflevector <2 x i64> %187, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %198 = add <2 x i64> %151, %197
  %199 = add <2 x i64> %198, %196
  %200 = getelementptr inbounds nuw i8, ptr %156, i64 48
  %201 = load <2 x i64>, ptr %200, align 1, !alias.scope !37, !noalias !42
  %202 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %203 = load <2 x i64>, ptr %202, align 8, !alias.scope !40, !noalias !44
  %204 = xor <2 x i64> %203, %201
  %205 = bitcast <2 x i64> %204 to <4 x i32>
  %206 = shufflevector <4 x i32> %205, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %207 = bitcast <4 x i32> %206 to <2 x i64>
  %208 = and <2 x i64> %204, splat (i64 4294967295)
  %209 = and <2 x i64> %207, splat (i64 4294967295)
  %210 = mul nuw <2 x i64> %209, %208
  %211 = shufflevector <2 x i64> %201, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %212 = add <2 x i64> %150, %211
  %213 = add <2 x i64> %212, %210
  %214 = add nuw nsw i64 %154, 1
  %215 = icmp eq i64 %214, %146
  br i1 %215, label %216, label %149, !llvm.loop !18

216:                                              ; preds = %149
  %217 = shufflevector <2 x i64> %171, <2 x i64> %185, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %218 = shufflevector <2 x i64> %199, <2 x i64> %213, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %219

219:                                              ; preds = %134, %216
  %220 = phi <4 x i64> [ %137, %134 ], [ %218, %216 ]
  %221 = phi <4 x i64> [ %142, %134 ], [ %217, %216 ]
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %223 = getelementptr inbounds i8, ptr %222, i64 -64
  %224 = load <4 x i64>, ptr %223, align 1
  %225 = xor <4 x i64> %224, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %226 = lshr <4 x i64> %225, splat (i64 32)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %224, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %221, %229
  %231 = add <4 x i64> %230, %228
  %232 = getelementptr inbounds i8, ptr %222, i64 -32
  %233 = load <4 x i64>, ptr %232, align 1
  %234 = xor <4 x i64> %233, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %235 = lshr <4 x i64> %234, splat (i64 32)
  %236 = and <4 x i64> %234, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, %235
  %238 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %239 = add <4 x i64> %220, %238
  %240 = add <4 x i64> %239, %237
  %241 = mul i64 %1, -7046029288634856825
  %242 = extractelement <4 x i64> %231, i64 0
  %243 = xor i64 %242, 7914194659941938988
  %244 = extractelement <4 x i64> %231, i64 1
  %245 = xor i64 %244, -6611157965513653271
  %246 = zext i64 %243 to i128
  %247 = zext i64 %245 to i128
  %248 = mul nuw i128 %247, %246
  %249 = lshr i128 %248, 64
  %250 = xor i128 %249, %248
  %251 = trunc i128 %250 to i64
  %252 = add i64 %241, %251
  %253 = extractelement <4 x i64> %231, i64 2
  %254 = xor i64 %253, -1839215637059881052
  %255 = extractelement <4 x i64> %231, i64 3
  %256 = xor i64 %255, -3433288310154277810
  %257 = zext i64 %254 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %252, %262
  %264 = extractelement <4 x i64> %240, i64 0
  %265 = xor i64 %264, 5046485836271438973
  %266 = extractelement <4 x i64> %240, i64 1
  %267 = xor i64 %266, -8055285457383852172
  %268 = zext i64 %265 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %263, %273
  %275 = extractelement <4 x i64> %240, i64 2
  %276 = xor i64 %275, 5920048007935066598
  %277 = extractelement <4 x i64> %240, i64 3
  %278 = xor i64 %277, 7336514198459093435
  %279 = zext i64 %276 to i128
  %280 = zext i64 %278 to i128
  %281 = mul nuw i128 %280, %279
  %282 = lshr i128 %281, 64
  %283 = xor i128 %282, %281
  %284 = trunc i128 %283 to i64
  %285 = add i64 %274, %284
  %286 = lshr i64 %285, 37
  %287 = xor i64 %286, %285
  %288 = mul i64 %287, 1609587791953885689
  %289 = lshr i64 %288, 32
  %290 = xor i64 %289, %288
  br label %634

291:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20
  %292 = sub i64 0, %2
  %293 = insertelement <2 x i64> poison, i64 %2, i64 0
  %294 = insertelement <2 x i64> %293, i64 %292, i64 1
  %295 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #20, !srcloc !45
  %296 = ptrtoint ptr %295 to i64
  %297 = and i64 %296, 15
  %298 = icmp eq i64 %297, 0
  call void @llvm.assume(i1 %298)
  %299 = add <2 x i64> %294, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %299, ptr %295, align 16
  %300 = add <2 x i64> %294, <i64 -2623469361688619810, i64 2262974939099578482>
  %301 = getelementptr inbounds nuw i8, ptr %295, i64 16
  store <2 x i64> %300, ptr %301, align 16
  %302 = add <2 x i64> %294, <i64 8711581037947681227, i64 2410270004345854594>
  %303 = getelementptr inbounds nuw i8, ptr %295, i64 32
  store <2 x i64> %302, ptr %303, align 16
  %304 = add <2 x i64> %294, <i64 -8204357891075471176, i64 5487137525590930912>
  %305 = getelementptr inbounds nuw i8, ptr %295, i64 48
  store <2 x i64> %304, ptr %305, align 16
  %306 = add <2 x i64> %294, <i64 -3818837453329782724, i64 -6688317018830679928>
  %307 = getelementptr inbounds nuw i8, ptr %295, i64 64
  store <2 x i64> %306, ptr %307, align 16
  %308 = add <2 x i64> %294, <i64 5690594596133299313, i64 -2833645246901970632>
  %309 = getelementptr inbounds nuw i8, ptr %295, i64 80
  store <2 x i64> %308, ptr %309, align 16
  %310 = add <2 x i64> %294, <i64 4554437623014685352, i64 2111919702937427193>
  %311 = getelementptr inbounds nuw i8, ptr %295, i64 96
  store <2 x i64> %310, ptr %311, align 16
  %312 = add <2 x i64> %294, <i64 3556072174620004746, i64 7238261902898274248>
  %313 = getelementptr inbounds nuw i8, ptr %295, i64 112
  store <2 x i64> %312, ptr %313, align 16
  %314 = add <2 x i64> %294, <i64 -4329134394285701654, i64 -1485321483350670907>
  %315 = getelementptr inbounds nuw i8, ptr %295, i64 128
  store <2 x i64> %314, ptr %315, align 16
  %316 = add <2 x i64> %294, <i64 5321830579834785047, i64 -7032137544937171245>
  %317 = getelementptr inbounds nuw i8, ptr %295, i64 144
  store <2 x i64> %316, ptr %317, align 16
  %318 = add <2 x i64> %294, <i64 -242834301215959509, i64 -3588858202114426737>
  %319 = getelementptr inbounds nuw i8, ptr %295, i64 160
  store <2 x i64> %318, ptr %319, align 16
  %320 = add <2 x i64> %294, <i64 2883454493032893253, i64 9097354517224871855>
  %321 = getelementptr inbounds nuw i8, ptr %295, i64 176
  store <2 x i64> %320, ptr %321, align 16
  %322 = add i64 %1, -1
  %323 = icmp ult i64 %322, 1024
  br i1 %323, label %457, label %324

324:                                              ; preds = %291
  %325 = lshr i64 %322, 10
  %326 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %327 = load <2 x i64>, ptr %326, align 64, !alias.scope !46, !noalias !49
  %328 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %329 = load <2 x i64>, ptr %328, align 16, !alias.scope !46, !noalias !49
  %330 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %331 = load <2 x i64>, ptr %330, align 32, !alias.scope !46, !noalias !49
  %332 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %333 = load <2 x i64>, ptr %332, align 16, !alias.scope !46, !noalias !49
  br label %334

334:                                              ; preds = %324, %409
  %335 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %324 ], [ %449, %409 ]
  %336 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %324 ], [ %439, %409 ]
  %337 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %324 ], [ %429, %409 ]
  %338 = phi i64 [ 0, %324 ], [ %450, %409 ]
  %339 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %324 ], [ %419, %409 ]
  %340 = shl i64 %338, 10
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 %340
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  br label %342

342:                                              ; preds = %342, %334
  %343 = phi <2 x i64> [ %335, %334 ], [ %406, %342 ]
  %344 = phi <2 x i64> [ %336, %334 ], [ %392, %342 ]
  %345 = phi <2 x i64> [ %337, %334 ], [ %378, %342 ]
  %346 = phi <2 x i64> [ %339, %334 ], [ %364, %342 ]
  %347 = phi i64 [ 0, %334 ], [ %407, %342 ]
  %348 = shl i64 %347, 6
  %349 = getelementptr inbounds nuw i8, ptr %341, i64 %348
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %350, i32 0, i32 3, i32 1), !noalias !54
  %351 = shl i64 %347, 3
  %352 = getelementptr inbounds nuw i8, ptr %4, i64 %351
  %353 = load <2 x i64>, ptr %349, align 1, !alias.scope !51, !noalias !56
  %354 = load <2 x i64>, ptr %352, align 8, !alias.scope !54, !noalias !58
  %355 = xor <2 x i64> %354, %353
  %356 = bitcast <2 x i64> %355 to <4 x i32>
  %357 = shufflevector <4 x i32> %356, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %358 = bitcast <4 x i32> %357 to <2 x i64>
  %359 = and <2 x i64> %355, splat (i64 4294967295)
  %360 = and <2 x i64> %358, splat (i64 4294967295)
  %361 = mul nuw <2 x i64> %360, %359
  %362 = shufflevector <2 x i64> %353, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %363 = add <2 x i64> %346, %362
  %364 = add <2 x i64> %363, %361
  %365 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %366 = load <2 x i64>, ptr %365, align 1, !alias.scope !51, !noalias !56
  %367 = getelementptr inbounds nuw i8, ptr %352, i64 16
  %368 = load <2 x i64>, ptr %367, align 8, !alias.scope !54, !noalias !58
  %369 = xor <2 x i64> %368, %366
  %370 = bitcast <2 x i64> %369 to <4 x i32>
  %371 = shufflevector <4 x i32> %370, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %372 = bitcast <4 x i32> %371 to <2 x i64>
  %373 = and <2 x i64> %369, splat (i64 4294967295)
  %374 = and <2 x i64> %372, splat (i64 4294967295)
  %375 = mul nuw <2 x i64> %374, %373
  %376 = shufflevector <2 x i64> %366, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %377 = add <2 x i64> %345, %376
  %378 = add <2 x i64> %377, %375
  %379 = getelementptr inbounds nuw i8, ptr %349, i64 32
  %380 = load <2 x i64>, ptr %379, align 1, !alias.scope !51, !noalias !56
  %381 = getelementptr inbounds nuw i8, ptr %352, i64 32
  %382 = load <2 x i64>, ptr %381, align 8, !alias.scope !54, !noalias !58
  %383 = xor <2 x i64> %382, %380
  %384 = bitcast <2 x i64> %383 to <4 x i32>
  %385 = shufflevector <4 x i32> %384, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %386 = bitcast <4 x i32> %385 to <2 x i64>
  %387 = and <2 x i64> %383, splat (i64 4294967295)
  %388 = and <2 x i64> %386, splat (i64 4294967295)
  %389 = mul nuw <2 x i64> %388, %387
  %390 = shufflevector <2 x i64> %380, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %391 = add <2 x i64> %344, %390
  %392 = add <2 x i64> %391, %389
  %393 = getelementptr inbounds nuw i8, ptr %349, i64 48
  %394 = load <2 x i64>, ptr %393, align 1, !alias.scope !51, !noalias !56
  %395 = getelementptr inbounds nuw i8, ptr %352, i64 48
  %396 = load <2 x i64>, ptr %395, align 8, !alias.scope !54, !noalias !58
  %397 = xor <2 x i64> %396, %394
  %398 = bitcast <2 x i64> %397 to <4 x i32>
  %399 = shufflevector <4 x i32> %398, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %400 = bitcast <4 x i32> %399 to <2 x i64>
  %401 = and <2 x i64> %397, splat (i64 4294967295)
  %402 = and <2 x i64> %400, splat (i64 4294967295)
  %403 = mul nuw <2 x i64> %402, %401
  %404 = shufflevector <2 x i64> %394, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %405 = add <2 x i64> %343, %404
  %406 = add <2 x i64> %405, %403
  %407 = add nuw nsw i64 %347, 1
  %408 = icmp eq i64 %407, 16
  br i1 %408, label %409, label %342, !llvm.loop !18

409:                                              ; preds = %342
  %410 = lshr <2 x i64> %364, splat (i64 47)
  %411 = xor <2 x i64> %410, %327
  %412 = xor <2 x i64> %411, %364
  %413 = bitcast <2 x i64> %412 to <4 x i32>
  %414 = shufflevector <4 x i32> %413, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %415 = bitcast <4 x i32> %414 to <2 x i64>
  %416 = and <2 x i64> %412, splat (i64 4294967295)
  %417 = mul nuw <2 x i64> %416, splat (i64 2654435761)
  %418 = mul <2 x i64> %415, splat (i64 -7046029290881679360)
  %419 = add <2 x i64> %418, %417
  %420 = lshr <2 x i64> %378, splat (i64 47)
  %421 = xor <2 x i64> %420, %329
  %422 = xor <2 x i64> %421, %378
  %423 = bitcast <2 x i64> %422 to <4 x i32>
  %424 = shufflevector <4 x i32> %423, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %425 = bitcast <4 x i32> %424 to <2 x i64>
  %426 = and <2 x i64> %422, splat (i64 4294967295)
  %427 = mul nuw <2 x i64> %426, splat (i64 2654435761)
  %428 = mul <2 x i64> %425, splat (i64 -7046029290881679360)
  %429 = add <2 x i64> %428, %427
  %430 = lshr <2 x i64> %392, splat (i64 47)
  %431 = xor <2 x i64> %430, %331
  %432 = xor <2 x i64> %431, %392
  %433 = bitcast <2 x i64> %432 to <4 x i32>
  %434 = shufflevector <4 x i32> %433, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %435 = bitcast <4 x i32> %434 to <2 x i64>
  %436 = and <2 x i64> %432, splat (i64 4294967295)
  %437 = mul nuw <2 x i64> %436, splat (i64 2654435761)
  %438 = mul <2 x i64> %435, splat (i64 -7046029290881679360)
  %439 = add <2 x i64> %438, %437
  %440 = lshr <2 x i64> %406, splat (i64 47)
  %441 = xor <2 x i64> %440, %333
  %442 = xor <2 x i64> %441, %406
  %443 = bitcast <2 x i64> %442 to <4 x i32>
  %444 = shufflevector <4 x i32> %443, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %445 = bitcast <4 x i32> %444 to <2 x i64>
  %446 = and <2 x i64> %442, splat (i64 4294967295)
  %447 = mul nuw <2 x i64> %446, splat (i64 2654435761)
  %448 = mul <2 x i64> %445, splat (i64 -7046029290881679360)
  %449 = add <2 x i64> %448, %447
  %450 = add nuw nsw i64 %338, 1
  %451 = icmp eq i64 %450, %325
  br i1 %451, label %452, label %334, !llvm.loop !20

452:                                              ; preds = %409
  %453 = shufflevector <2 x i64> %429, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %454 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %453, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %455 = shufflevector <2 x i64> %439, <2 x i64> %449, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %456 = shufflevector <2 x i64> %419, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %457

457:                                              ; preds = %452, %291
  %458 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %291 ], [ %439, %452 ]
  %459 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %291 ], [ %449, %452 ]
  %460 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %291 ], [ %455, %452 ]
  %461 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %291 ], [ %429, %452 ]
  %462 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %291 ], [ %454, %452 ]
  %463 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %291 ], [ %419, %452 ]
  %464 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %291 ], [ %456, %452 ]
  %465 = shufflevector <4 x i64> %464, <4 x i64> %462, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %466 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %466)
  %467 = and i64 %322, -1024
  %468 = lshr i64 %322, 6
  %469 = and i64 %468, 15
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 %467
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %471 = icmp eq i64 %469, 0
  br i1 %471, label %542, label %472

472:                                              ; preds = %457, %472
  %473 = phi <2 x i64> [ %536, %472 ], [ %459, %457 ]
  %474 = phi <2 x i64> [ %522, %472 ], [ %458, %457 ]
  %475 = phi <2 x i64> [ %508, %472 ], [ %461, %457 ]
  %476 = phi <2 x i64> [ %494, %472 ], [ %463, %457 ]
  %477 = phi i64 [ %537, %472 ], [ 0, %457 ]
  %478 = shl i64 %477, 6
  %479 = getelementptr inbounds nuw i8, ptr %470, i64 %478
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %480, i32 0, i32 3, i32 1), !noalias !62
  %481 = shl i64 %477, 3
  %482 = getelementptr inbounds nuw i8, ptr %4, i64 %481
  %483 = load <2 x i64>, ptr %479, align 1, !alias.scope !59, !noalias !64
  %484 = load <2 x i64>, ptr %482, align 8, !alias.scope !62, !noalias !66
  %485 = xor <2 x i64> %484, %483
  %486 = bitcast <2 x i64> %485 to <4 x i32>
  %487 = shufflevector <4 x i32> %486, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %488 = bitcast <4 x i32> %487 to <2 x i64>
  %489 = and <2 x i64> %485, splat (i64 4294967295)
  %490 = and <2 x i64> %488, splat (i64 4294967295)
  %491 = mul nuw <2 x i64> %490, %489
  %492 = shufflevector <2 x i64> %483, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %493 = add <2 x i64> %476, %492
  %494 = add <2 x i64> %493, %491
  %495 = getelementptr inbounds nuw i8, ptr %479, i64 16
  %496 = load <2 x i64>, ptr %495, align 1, !alias.scope !59, !noalias !64
  %497 = getelementptr inbounds nuw i8, ptr %482, i64 16
  %498 = load <2 x i64>, ptr %497, align 8, !alias.scope !62, !noalias !66
  %499 = xor <2 x i64> %498, %496
  %500 = bitcast <2 x i64> %499 to <4 x i32>
  %501 = shufflevector <4 x i32> %500, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %502 = bitcast <4 x i32> %501 to <2 x i64>
  %503 = and <2 x i64> %499, splat (i64 4294967295)
  %504 = and <2 x i64> %502, splat (i64 4294967295)
  %505 = mul nuw <2 x i64> %504, %503
  %506 = shufflevector <2 x i64> %496, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %507 = add <2 x i64> %475, %506
  %508 = add <2 x i64> %507, %505
  %509 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %510 = load <2 x i64>, ptr %509, align 1, !alias.scope !59, !noalias !64
  %511 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %512 = load <2 x i64>, ptr %511, align 8, !alias.scope !62, !noalias !66
  %513 = xor <2 x i64> %512, %510
  %514 = bitcast <2 x i64> %513 to <4 x i32>
  %515 = shufflevector <4 x i32> %514, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %516 = bitcast <4 x i32> %515 to <2 x i64>
  %517 = and <2 x i64> %513, splat (i64 4294967295)
  %518 = and <2 x i64> %516, splat (i64 4294967295)
  %519 = mul nuw <2 x i64> %518, %517
  %520 = shufflevector <2 x i64> %510, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %521 = add <2 x i64> %474, %520
  %522 = add <2 x i64> %521, %519
  %523 = getelementptr inbounds nuw i8, ptr %479, i64 48
  %524 = load <2 x i64>, ptr %523, align 1, !alias.scope !59, !noalias !64
  %525 = getelementptr inbounds nuw i8, ptr %482, i64 48
  %526 = load <2 x i64>, ptr %525, align 8, !alias.scope !62, !noalias !66
  %527 = xor <2 x i64> %526, %524
  %528 = bitcast <2 x i64> %527 to <4 x i32>
  %529 = shufflevector <4 x i32> %528, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %530 = bitcast <4 x i32> %529 to <2 x i64>
  %531 = and <2 x i64> %527, splat (i64 4294967295)
  %532 = and <2 x i64> %530, splat (i64 4294967295)
  %533 = mul nuw <2 x i64> %532, %531
  %534 = shufflevector <2 x i64> %524, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %535 = add <2 x i64> %473, %534
  %536 = add <2 x i64> %535, %533
  %537 = add nuw nsw i64 %477, 1
  %538 = icmp eq i64 %537, %469
  br i1 %538, label %539, label %472, !llvm.loop !18

539:                                              ; preds = %472
  %540 = shufflevector <2 x i64> %494, <2 x i64> %508, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %541 = shufflevector <2 x i64> %522, <2 x i64> %536, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %542

542:                                              ; preds = %457, %539
  %543 = phi <4 x i64> [ %460, %457 ], [ %541, %539 ]
  %544 = phi <4 x i64> [ %465, %457 ], [ %540, %539 ]
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %546 = getelementptr inbounds i8, ptr %545, i64 -64
  %547 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %548 = load <4 x i64>, ptr %546, align 1
  %549 = load <4 x i64>, ptr %547, align 1
  %550 = xor <4 x i64> %549, %548
  %551 = lshr <4 x i64> %550, splat (i64 32)
  %552 = and <4 x i64> %550, splat (i64 4294967295)
  %553 = mul nuw <4 x i64> %552, %551
  %554 = shufflevector <4 x i64> %548, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %555 = add <4 x i64> %544, %554
  %556 = add <4 x i64> %555, %553
  %557 = getelementptr inbounds i8, ptr %545, i64 -32
  %558 = load <4 x i64>, ptr %557, align 1
  %559 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %560 = load <4 x i64>, ptr %559, align 1
  %561 = xor <4 x i64> %560, %558
  %562 = lshr <4 x i64> %561, splat (i64 32)
  %563 = and <4 x i64> %561, splat (i64 4294967295)
  %564 = mul nuw <4 x i64> %563, %562
  %565 = shufflevector <4 x i64> %558, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %566 = add <4 x i64> %543, %565
  %567 = add <4 x i64> %566, %564
  %568 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %569 = mul i64 %1, -7046029288634856825
  %570 = extractelement <4 x i64> %556, i64 0
  %571 = load i64, ptr %568, align 1, !alias.scope !67, !noalias !70
  %572 = xor i64 %571, %570
  %573 = extractelement <4 x i64> %556, i64 1
  %574 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %575 = load i64, ptr %574, align 1, !alias.scope !67, !noalias !70
  %576 = xor i64 %575, %573
  %577 = zext i64 %572 to i128
  %578 = zext i64 %576 to i128
  %579 = mul nuw i128 %578, %577
  %580 = lshr i128 %579, 64
  %581 = xor i128 %580, %579
  %582 = trunc i128 %581 to i64
  %583 = add i64 %569, %582
  %584 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %585 = extractelement <4 x i64> %556, i64 2
  %586 = load i64, ptr %584, align 1, !alias.scope !67, !noalias !70
  %587 = xor i64 %586, %585
  %588 = extractelement <4 x i64> %556, i64 3
  %589 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %590 = load i64, ptr %589, align 1, !alias.scope !67, !noalias !70
  %591 = xor i64 %590, %588
  %592 = zext i64 %587 to i128
  %593 = zext i64 %591 to i128
  %594 = mul nuw i128 %593, %592
  %595 = lshr i128 %594, 64
  %596 = xor i128 %595, %594
  %597 = trunc i128 %596 to i64
  %598 = add i64 %583, %597
  %599 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %600 = extractelement <4 x i64> %567, i64 0
  %601 = load i64, ptr %599, align 1, !alias.scope !67, !noalias !70
  %602 = xor i64 %601, %600
  %603 = extractelement <4 x i64> %567, i64 1
  %604 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %605 = load i64, ptr %604, align 1, !alias.scope !67, !noalias !70
  %606 = xor i64 %605, %603
  %607 = zext i64 %602 to i128
  %608 = zext i64 %606 to i128
  %609 = mul nuw i128 %608, %607
  %610 = lshr i128 %609, 64
  %611 = xor i128 %610, %609
  %612 = trunc i128 %611 to i64
  %613 = add i64 %598, %612
  %614 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %615 = extractelement <4 x i64> %567, i64 2
  %616 = load i64, ptr %614, align 1, !alias.scope !67, !noalias !70
  %617 = xor i64 %616, %615
  %618 = extractelement <4 x i64> %567, i64 3
  %619 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %620 = load i64, ptr %619, align 1, !alias.scope !67, !noalias !70
  %621 = xor i64 %620, %618
  %622 = zext i64 %617 to i128
  %623 = zext i64 %621 to i128
  %624 = mul nuw i128 %623, %622
  %625 = lshr i128 %624, 64
  %626 = xor i128 %625, %624
  %627 = trunc i128 %626 to i64
  %628 = add i64 %613, %627
  %629 = lshr i64 %628, 37
  %630 = xor i64 %629, %628
  %631 = mul i64 %630, 1609587791953885689
  %632 = lshr i64 %631, 32
  %633 = xor i64 %632, %631
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20
  br label %634

634:                                              ; preds = %219, %542
  %635 = phi i64 [ %290, %219 ], [ %633, %542 ]
  ret i64 %635
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXHL64_secret_sse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) #4 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ugt i64 %7, %8
  br i1 %12, label %146, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = load <2 x i64>, ptr %15, align 1, !alias.scope !72, !noalias !75
  %17 = getelementptr inbounds i8, ptr %14, i64 -48
  %18 = load <2 x i64>, ptr %17, align 1, !alias.scope !72, !noalias !75
  %19 = getelementptr inbounds i8, ptr %14, i64 -32
  %20 = load <2 x i64>, ptr %19, align 1, !alias.scope !72, !noalias !75
  %21 = getelementptr inbounds i8, ptr %14, i64 -16
  %22 = load <2 x i64>, ptr %21, align 1, !alias.scope !72, !noalias !75
  br label %23

23:                                               ; preds = %13, %98
  %24 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %13 ], [ %138, %98 ]
  %25 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %13 ], [ %128, %98 ]
  %26 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %13 ], [ %118, %98 ]
  %27 = phi i64 [ 0, %13 ], [ %139, %98 ]
  %28 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %13 ], [ %108, %98 ]
  %29 = mul i64 %27, %7
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  br label %31

31:                                               ; preds = %31, %23
  %32 = phi <2 x i64> [ %24, %23 ], [ %95, %31 ]
  %33 = phi <2 x i64> [ %25, %23 ], [ %81, %31 ]
  %34 = phi <2 x i64> [ %26, %23 ], [ %67, %31 ]
  %35 = phi <2 x i64> [ %28, %23 ], [ %53, %31 ]
  %36 = phi i64 [ 0, %23 ], [ %96, %31 ]
  %37 = shl i64 %36, 6
  %38 = getelementptr inbounds nuw i8, ptr %30, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %39, i32 0, i32 3, i32 1), !noalias !80
  %40 = shl i64 %36, 3
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load <2 x i64>, ptr %38, align 1, !alias.scope !77, !noalias !82
  %43 = load <2 x i64>, ptr %41, align 1, !alias.scope !80, !noalias !84
  %44 = xor <2 x i64> %43, %42
  %45 = bitcast <2 x i64> %44 to <4 x i32>
  %46 = shufflevector <4 x i32> %45, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %47 = bitcast <4 x i32> %46 to <2 x i64>
  %48 = and <2 x i64> %44, splat (i64 4294967295)
  %49 = and <2 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <2 x i64> %49, %48
  %51 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %52 = add <2 x i64> %35, %51
  %53 = add <2 x i64> %52, %50
  %54 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %55 = load <2 x i64>, ptr %54, align 1, !alias.scope !77, !noalias !82
  %56 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %57 = load <2 x i64>, ptr %56, align 1, !alias.scope !80, !noalias !84
  %58 = xor <2 x i64> %57, %55
  %59 = bitcast <2 x i64> %58 to <4 x i32>
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %61 = bitcast <4 x i32> %60 to <2 x i64>
  %62 = and <2 x i64> %58, splat (i64 4294967295)
  %63 = and <2 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <2 x i64> %63, %62
  %65 = shufflevector <2 x i64> %55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %66 = add <2 x i64> %34, %65
  %67 = add <2 x i64> %66, %64
  %68 = getelementptr inbounds nuw i8, ptr %38, i64 32
  %69 = load <2 x i64>, ptr %68, align 1, !alias.scope !77, !noalias !82
  %70 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %71 = load <2 x i64>, ptr %70, align 1, !alias.scope !80, !noalias !84
  %72 = xor <2 x i64> %71, %69
  %73 = bitcast <2 x i64> %72 to <4 x i32>
  %74 = shufflevector <4 x i32> %73, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %75 = bitcast <4 x i32> %74 to <2 x i64>
  %76 = and <2 x i64> %72, splat (i64 4294967295)
  %77 = and <2 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <2 x i64> %77, %76
  %79 = shufflevector <2 x i64> %69, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %80 = add <2 x i64> %33, %79
  %81 = add <2 x i64> %80, %78
  %82 = getelementptr inbounds nuw i8, ptr %38, i64 48
  %83 = load <2 x i64>, ptr %82, align 1, !alias.scope !77, !noalias !82
  %84 = getelementptr inbounds nuw i8, ptr %41, i64 48
  %85 = load <2 x i64>, ptr %84, align 1, !alias.scope !80, !noalias !84
  %86 = xor <2 x i64> %85, %83
  %87 = bitcast <2 x i64> %86 to <4 x i32>
  %88 = shufflevector <4 x i32> %87, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %89 = bitcast <4 x i32> %88 to <2 x i64>
  %90 = and <2 x i64> %86, splat (i64 4294967295)
  %91 = and <2 x i64> %89, splat (i64 4294967295)
  %92 = mul nuw <2 x i64> %91, %90
  %93 = shufflevector <2 x i64> %83, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %94 = add <2 x i64> %32, %93
  %95 = add <2 x i64> %94, %92
  %96 = add nuw nsw i64 %36, 1
  %97 = icmp eq i64 %96, %6
  br i1 %97, label %98, label %31, !llvm.loop !18

98:                                               ; preds = %31
  %99 = lshr <2 x i64> %53, splat (i64 47)
  %100 = xor <2 x i64> %99, %16
  %101 = xor <2 x i64> %100, %53
  %102 = bitcast <2 x i64> %101 to <4 x i32>
  %103 = shufflevector <4 x i32> %102, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %104 = bitcast <4 x i32> %103 to <2 x i64>
  %105 = and <2 x i64> %101, splat (i64 4294967295)
  %106 = mul nuw <2 x i64> %105, splat (i64 2654435761)
  %107 = mul <2 x i64> %104, splat (i64 -7046029290881679360)
  %108 = add <2 x i64> %107, %106
  %109 = lshr <2 x i64> %67, splat (i64 47)
  %110 = xor <2 x i64> %109, %18
  %111 = xor <2 x i64> %110, %67
  %112 = bitcast <2 x i64> %111 to <4 x i32>
  %113 = shufflevector <4 x i32> %112, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %114 = bitcast <4 x i32> %113 to <2 x i64>
  %115 = and <2 x i64> %111, splat (i64 4294967295)
  %116 = mul nuw <2 x i64> %115, splat (i64 2654435761)
  %117 = mul <2 x i64> %114, splat (i64 -7046029290881679360)
  %118 = add <2 x i64> %117, %116
  %119 = lshr <2 x i64> %81, splat (i64 47)
  %120 = xor <2 x i64> %119, %20
  %121 = xor <2 x i64> %120, %81
  %122 = bitcast <2 x i64> %121 to <4 x i32>
  %123 = shufflevector <4 x i32> %122, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %124 = bitcast <4 x i32> %123 to <2 x i64>
  %125 = and <2 x i64> %121, splat (i64 4294967295)
  %126 = mul nuw <2 x i64> %125, splat (i64 2654435761)
  %127 = mul <2 x i64> %124, splat (i64 -7046029290881679360)
  %128 = add <2 x i64> %127, %126
  %129 = lshr <2 x i64> %95, splat (i64 47)
  %130 = xor <2 x i64> %129, %22
  %131 = xor <2 x i64> %130, %95
  %132 = bitcast <2 x i64> %131 to <4 x i32>
  %133 = shufflevector <4 x i32> %132, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %134 = bitcast <4 x i32> %133 to <2 x i64>
  %135 = and <2 x i64> %131, splat (i64 4294967295)
  %136 = mul nuw <2 x i64> %135, splat (i64 2654435761)
  %137 = mul <2 x i64> %134, splat (i64 -7046029290881679360)
  %138 = add <2 x i64> %137, %136
  %139 = add nuw i64 %27, 1
  %140 = icmp ult i64 %139, %9
  br i1 %140, label %23, label %141, !llvm.loop !20

141:                                              ; preds = %98
  %142 = shufflevector <2 x i64> %118, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %143 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %142, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %144 = shufflevector <2 x i64> %128, <2 x i64> %138, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %145 = shufflevector <2 x i64> %108, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %146

146:                                              ; preds = %141, %4
  %147 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %4 ], [ %128, %141 ]
  %148 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %4 ], [ %138, %141 ]
  %149 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %144, %141 ]
  %150 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %118, %141 ]
  %151 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %143, %141 ]
  %152 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %4 ], [ %108, %141 ]
  %153 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %4 ], [ %145, %141 ]
  %154 = shufflevector <4 x i64> %153, <4 x i64> %151, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %155 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %155)
  %156 = mul i64 %9, %7
  %157 = lshr i64 %10, 6
  %158 = lshr i64 %3, 3
  %159 = icmp samesign ule i64 %157, %158
  tail call void @llvm.assume(i1 %159)
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 %156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %161 = icmp ult i64 %10, 64
  br i1 %161, label %232, label %162

162:                                              ; preds = %146, %162
  %163 = phi <2 x i64> [ %226, %162 ], [ %148, %146 ]
  %164 = phi <2 x i64> [ %212, %162 ], [ %147, %146 ]
  %165 = phi <2 x i64> [ %198, %162 ], [ %150, %146 ]
  %166 = phi <2 x i64> [ %184, %162 ], [ %152, %146 ]
  %167 = phi i64 [ %227, %162 ], [ 0, %146 ]
  %168 = shl i64 %167, 6
  %169 = getelementptr inbounds nuw i8, ptr %160, i64 %168
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %170, i32 0, i32 3, i32 1), !noalias !88
  %171 = shl i64 %167, 3
  %172 = getelementptr inbounds nuw i8, ptr %2, i64 %171
  %173 = load <2 x i64>, ptr %169, align 1, !alias.scope !85, !noalias !90
  %174 = load <2 x i64>, ptr %172, align 1, !alias.scope !88, !noalias !92
  %175 = xor <2 x i64> %174, %173
  %176 = bitcast <2 x i64> %175 to <4 x i32>
  %177 = shufflevector <4 x i32> %176, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %178 = bitcast <4 x i32> %177 to <2 x i64>
  %179 = and <2 x i64> %175, splat (i64 4294967295)
  %180 = and <2 x i64> %178, splat (i64 4294967295)
  %181 = mul nuw <2 x i64> %180, %179
  %182 = shufflevector <2 x i64> %173, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %183 = add <2 x i64> %166, %182
  %184 = add <2 x i64> %183, %181
  %185 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %186 = load <2 x i64>, ptr %185, align 1, !alias.scope !85, !noalias !90
  %187 = getelementptr inbounds nuw i8, ptr %172, i64 16
  %188 = load <2 x i64>, ptr %187, align 1, !alias.scope !88, !noalias !92
  %189 = xor <2 x i64> %188, %186
  %190 = bitcast <2 x i64> %189 to <4 x i32>
  %191 = shufflevector <4 x i32> %190, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %192 = bitcast <4 x i32> %191 to <2 x i64>
  %193 = and <2 x i64> %189, splat (i64 4294967295)
  %194 = and <2 x i64> %192, splat (i64 4294967295)
  %195 = mul nuw <2 x i64> %194, %193
  %196 = shufflevector <2 x i64> %186, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %197 = add <2 x i64> %165, %196
  %198 = add <2 x i64> %197, %195
  %199 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %200 = load <2 x i64>, ptr %199, align 1, !alias.scope !85, !noalias !90
  %201 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %202 = load <2 x i64>, ptr %201, align 1, !alias.scope !88, !noalias !92
  %203 = xor <2 x i64> %202, %200
  %204 = bitcast <2 x i64> %203 to <4 x i32>
  %205 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %206 = bitcast <4 x i32> %205 to <2 x i64>
  %207 = and <2 x i64> %203, splat (i64 4294967295)
  %208 = and <2 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <2 x i64> %208, %207
  %210 = shufflevector <2 x i64> %200, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %211 = add <2 x i64> %164, %210
  %212 = add <2 x i64> %211, %209
  %213 = getelementptr inbounds nuw i8, ptr %169, i64 48
  %214 = load <2 x i64>, ptr %213, align 1, !alias.scope !85, !noalias !90
  %215 = getelementptr inbounds nuw i8, ptr %172, i64 48
  %216 = load <2 x i64>, ptr %215, align 1, !alias.scope !88, !noalias !92
  %217 = xor <2 x i64> %216, %214
  %218 = bitcast <2 x i64> %217 to <4 x i32>
  %219 = shufflevector <4 x i32> %218, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %220 = bitcast <4 x i32> %219 to <2 x i64>
  %221 = and <2 x i64> %217, splat (i64 4294967295)
  %222 = and <2 x i64> %220, splat (i64 4294967295)
  %223 = mul nuw <2 x i64> %222, %221
  %224 = shufflevector <2 x i64> %214, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %225 = add <2 x i64> %163, %224
  %226 = add <2 x i64> %225, %223
  %227 = add nuw i64 %167, 1
  %228 = icmp eq i64 %227, %157
  br i1 %228, label %229, label %162, !llvm.loop !18

229:                                              ; preds = %162
  %230 = shufflevector <2 x i64> %184, <2 x i64> %198, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %231 = shufflevector <2 x i64> %212, <2 x i64> %226, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %232

232:                                              ; preds = %146, %229
  %233 = phi <4 x i64> [ %149, %146 ], [ %231, %229 ]
  %234 = phi <4 x i64> [ %154, %146 ], [ %230, %229 ]
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %236 = getelementptr inbounds i8, ptr %235, i64 -64
  %237 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %238 = getelementptr inbounds i8, ptr %237, i64 -71
  %239 = load <4 x i64>, ptr %236, align 1
  %240 = load <4 x i64>, ptr %238, align 1
  %241 = xor <4 x i64> %240, %239
  %242 = lshr <4 x i64> %241, splat (i64 32)
  %243 = and <4 x i64> %241, splat (i64 4294967295)
  %244 = mul nuw <4 x i64> %243, %242
  %245 = shufflevector <4 x i64> %239, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %246 = add <4 x i64> %234, %245
  %247 = add <4 x i64> %246, %244
  %248 = getelementptr inbounds i8, ptr %235, i64 -32
  %249 = load <4 x i64>, ptr %248, align 1
  %250 = getelementptr inbounds i8, ptr %237, i64 -39
  %251 = load <4 x i64>, ptr %250, align 1
  %252 = xor <4 x i64> %251, %249
  %253 = lshr <4 x i64> %252, splat (i64 32)
  %254 = and <4 x i64> %252, splat (i64 4294967295)
  %255 = mul nuw <4 x i64> %254, %253
  %256 = shufflevector <4 x i64> %249, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %257 = add <4 x i64> %233, %256
  %258 = add <4 x i64> %257, %255
  %259 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %260 = mul i64 %1, -7046029288634856825
  %261 = extractelement <4 x i64> %247, i64 0
  %262 = load i64, ptr %259, align 1, !alias.scope !93, !noalias !96
  %263 = xor i64 %262, %261
  %264 = extractelement <4 x i64> %247, i64 1
  %265 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %266 = load i64, ptr %265, align 1, !alias.scope !93, !noalias !96
  %267 = xor i64 %266, %264
  %268 = zext i64 %263 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %260, %273
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %276 = extractelement <4 x i64> %247, i64 2
  %277 = load i64, ptr %275, align 1, !alias.scope !93, !noalias !96
  %278 = xor i64 %277, %276
  %279 = extractelement <4 x i64> %247, i64 3
  %280 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %281 = load i64, ptr %280, align 1, !alias.scope !93, !noalias !96
  %282 = xor i64 %281, %279
  %283 = zext i64 %278 to i128
  %284 = zext i64 %282 to i128
  %285 = mul nuw i128 %284, %283
  %286 = lshr i128 %285, 64
  %287 = xor i128 %286, %285
  %288 = trunc i128 %287 to i64
  %289 = add i64 %274, %288
  %290 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %291 = extractelement <4 x i64> %258, i64 0
  %292 = load i64, ptr %290, align 1, !alias.scope !93, !noalias !96
  %293 = xor i64 %292, %291
  %294 = extractelement <4 x i64> %258, i64 1
  %295 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %296 = load i64, ptr %295, align 1, !alias.scope !93, !noalias !96
  %297 = xor i64 %296, %294
  %298 = zext i64 %293 to i128
  %299 = zext i64 %297 to i128
  %300 = mul nuw i128 %299, %298
  %301 = lshr i128 %300, 64
  %302 = xor i128 %301, %300
  %303 = trunc i128 %302 to i64
  %304 = add i64 %289, %303
  %305 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %306 = extractelement <4 x i64> %258, i64 2
  %307 = load i64, ptr %305, align 1, !alias.scope !93, !noalias !96
  %308 = xor i64 %307, %306
  %309 = extractelement <4 x i64> %258, i64 3
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %311 = load i64, ptr %310, align 1, !alias.scope !93, !noalias !96
  %312 = xor i64 %311, %309
  %313 = zext i64 %308 to i128
  %314 = zext i64 %312 to i128
  %315 = mul nuw i128 %314, %313
  %316 = lshr i128 %315, 64
  %317 = xor i128 %316, %315
  %318 = trunc i128 %317 to i64
  %319 = add i64 %304, %318
  %320 = lshr i64 %319, 37
  %321 = xor i64 %320, %319
  %322 = mul i64 %321, 1609587791953885689
  %323 = lshr i64 %322, 32
  %324 = xor i64 %323, %322
  ret i64 %324
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noundef i32 @XXH3_update_sse2(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %1329

7:                                                ; preds = %3
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %11 = load ptr, ptr %10, align 8, !alias.scope !98, !noalias !101
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = select i1 %12, ptr %13, ptr %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %16 = load i64, ptr %15, align 16, !alias.scope !98, !noalias !101
  %17 = add i64 %16, %2
  store i64 %17, ptr %15, align 16, !alias.scope !98, !noalias !101
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %19 = load i32, ptr %18, align 64, !alias.scope !98, !noalias !101
  %20 = icmp ult i32 %19, 257
  tail call void @llvm.assume(i1 %20)
  %21 = zext nneg i32 %19 to i64
  %22 = add i64 %2, %21
  %23 = icmp ult i64 %22, 257
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %27 = trunc i64 %2 to i32
  %28 = load i32, ptr %18, align 64, !alias.scope !98, !noalias !101
  %29 = add i32 %28, %27
  br label %1327

30:                                               ; preds = %7
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %482, label %32

32:                                               ; preds = %30
  %33 = sub nuw nsw i32 256, %19
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr nonnull readonly align 1 %1, i64 %34, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %40 = load i64, ptr %39, align 8, !alias.scope !98, !noalias !101
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %42 = load i64, ptr %41, align 32, !alias.scope !98, !noalias !101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %43 = icmp ugt i64 %40, 3
  tail call void @llvm.assume(i1 %43)
  %44 = load i64, ptr %38, align 8, !alias.scope !103, !noalias !106
  %45 = icmp ult i64 %44, %40
  tail call void @llvm.assume(i1 %45)
  %46 = sub i64 %40, %44
  %47 = icmp ult i64 %46, 5
  %48 = shl i64 %44, 3
  %49 = getelementptr inbounds nuw i8, ptr %14, i64 %48
  %50 = ptrtoint ptr %0 to i64
  %51 = and i64 %50, 15
  %52 = icmp eq i64 %51, 0
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %47, label %56, label %249

56:                                               ; preds = %32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.assume(i1 %52), !noalias !103
  %57 = load <2 x i64>, ptr %0, align 16, !alias.scope !117, !noalias !120
  %58 = load <2 x i64>, ptr %53, align 16, !alias.scope !117, !noalias !120
  %59 = load <2 x i64>, ptr %54, align 16, !alias.scope !117, !noalias !120
  %60 = load <2 x i64>, ptr %55, align 16, !alias.scope !117, !noalias !120
  br label %61

61:                                               ; preds = %61, %56
  %62 = phi <2 x i64> [ %60, %56 ], [ %125, %61 ]
  %63 = phi <2 x i64> [ %59, %56 ], [ %111, %61 ]
  %64 = phi <2 x i64> [ %58, %56 ], [ %97, %61 ]
  %65 = phi <2 x i64> [ %57, %56 ], [ %83, %61 ]
  %66 = phi i64 [ 0, %56 ], [ %126, %61 ]
  %67 = shl i64 %66, 6
  %68 = getelementptr inbounds nuw i8, ptr %35, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %69, i32 0, i32 3, i32 1), !noalias !123
  %70 = shl i64 %66, 3
  %71 = getelementptr inbounds nuw i8, ptr %49, i64 %70
  %72 = load <2 x i64>, ptr %68, align 16, !alias.scope !113, !noalias !124
  %73 = load <2 x i64>, ptr %71, align 1, !alias.scope !115, !noalias !125
  %74 = xor <2 x i64> %73, %72
  %75 = bitcast <2 x i64> %74 to <4 x i32>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %74, splat (i64 4294967295)
  %79 = and <2 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <2 x i64> %79, %78
  %81 = shufflevector <2 x i64> %72, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %82 = add <2 x i64> %65, %81
  %83 = add <2 x i64> %82, %80
  %84 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %85 = load <2 x i64>, ptr %84, align 16, !alias.scope !113, !noalias !124
  %86 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %87 = load <2 x i64>, ptr %86, align 1, !alias.scope !115, !noalias !125
  %88 = xor <2 x i64> %87, %85
  %89 = bitcast <2 x i64> %88 to <4 x i32>
  %90 = shufflevector <4 x i32> %89, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %91 = bitcast <4 x i32> %90 to <2 x i64>
  %92 = and <2 x i64> %88, splat (i64 4294967295)
  %93 = and <2 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <2 x i64> %93, %92
  %95 = shufflevector <2 x i64> %85, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %96 = add <2 x i64> %64, %95
  %97 = add <2 x i64> %96, %94
  %98 = getelementptr inbounds nuw i8, ptr %68, i64 32
  %99 = load <2 x i64>, ptr %98, align 16, !alias.scope !113, !noalias !124
  %100 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %101 = load <2 x i64>, ptr %100, align 1, !alias.scope !115, !noalias !125
  %102 = xor <2 x i64> %101, %99
  %103 = bitcast <2 x i64> %102 to <4 x i32>
  %104 = shufflevector <4 x i32> %103, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %105 = bitcast <4 x i32> %104 to <2 x i64>
  %106 = and <2 x i64> %102, splat (i64 4294967295)
  %107 = and <2 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <2 x i64> %107, %106
  %109 = shufflevector <2 x i64> %99, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %110 = add <2 x i64> %63, %109
  %111 = add <2 x i64> %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %68, i64 48
  %113 = load <2 x i64>, ptr %112, align 16, !alias.scope !113, !noalias !124
  %114 = getelementptr inbounds nuw i8, ptr %71, i64 48
  %115 = load <2 x i64>, ptr %114, align 1, !alias.scope !115, !noalias !125
  %116 = xor <2 x i64> %115, %113
  %117 = bitcast <2 x i64> %116 to <4 x i32>
  %118 = shufflevector <4 x i32> %117, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %119 = bitcast <4 x i32> %118 to <2 x i64>
  %120 = and <2 x i64> %116, splat (i64 4294967295)
  %121 = and <2 x i64> %119, splat (i64 4294967295)
  %122 = mul nuw <2 x i64> %121, %120
  %123 = shufflevector <2 x i64> %113, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %124 = add <2 x i64> %62, %123
  %125 = add <2 x i64> %124, %122
  %126 = add nuw i64 %66, 1
  %127 = icmp eq i64 %126, %46
  br i1 %127, label %128, label %61, !llvm.loop !18

128:                                              ; preds = %61
  %129 = sub nuw nsw i64 4, %46
  store <2 x i64> %83, ptr %0, align 16, !alias.scope !117, !noalias !120
  store <2 x i64> %97, ptr %53, align 16, !alias.scope !117, !noalias !120
  store <2 x i64> %111, ptr %54, align 16, !alias.scope !117, !noalias !120
  store <2 x i64> %125, ptr %55, align 16, !alias.scope !117, !noalias !120
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 %42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %131 = lshr <2 x i64> %83, splat (i64 47)
  %132 = load <2 x i64>, ptr %130, align 1, !alias.scope !129, !noalias !131
  %133 = xor <2 x i64> %131, %132
  %134 = xor <2 x i64> %133, %83
  %135 = bitcast <2 x i64> %134 to <4 x i32>
  %136 = shufflevector <4 x i32> %135, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %137 = bitcast <4 x i32> %136 to <2 x i64>
  %138 = and <2 x i64> %134, splat (i64 4294967295)
  %139 = mul nuw <2 x i64> %138, splat (i64 2654435761)
  %140 = mul <2 x i64> %137, splat (i64 -7046029290881679360)
  %141 = add <2 x i64> %140, %139
  store <2 x i64> %141, ptr %0, align 16, !alias.scope !126, !noalias !132
  %142 = lshr <2 x i64> %97, splat (i64 47)
  %143 = getelementptr inbounds nuw i8, ptr %130, i64 16
  %144 = load <2 x i64>, ptr %143, align 1, !alias.scope !129, !noalias !131
  %145 = xor <2 x i64> %142, %144
  %146 = xor <2 x i64> %145, %97
  %147 = bitcast <2 x i64> %146 to <4 x i32>
  %148 = shufflevector <4 x i32> %147, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %149 = bitcast <4 x i32> %148 to <2 x i64>
  %150 = and <2 x i64> %146, splat (i64 4294967295)
  %151 = mul nuw <2 x i64> %150, splat (i64 2654435761)
  %152 = mul <2 x i64> %149, splat (i64 -7046029290881679360)
  %153 = add <2 x i64> %152, %151
  store <2 x i64> %153, ptr %53, align 16, !alias.scope !126, !noalias !132
  %154 = lshr <2 x i64> %111, splat (i64 47)
  %155 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %156 = load <2 x i64>, ptr %155, align 1, !alias.scope !129, !noalias !131
  %157 = xor <2 x i64> %154, %156
  %158 = xor <2 x i64> %157, %111
  %159 = bitcast <2 x i64> %158 to <4 x i32>
  %160 = shufflevector <4 x i32> %159, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %161 = bitcast <4 x i32> %160 to <2 x i64>
  %162 = and <2 x i64> %158, splat (i64 4294967295)
  %163 = mul nuw <2 x i64> %162, splat (i64 2654435761)
  %164 = mul <2 x i64> %161, splat (i64 -7046029290881679360)
  %165 = add <2 x i64> %164, %163
  store <2 x i64> %165, ptr %54, align 16, !alias.scope !126, !noalias !132
  %166 = lshr <2 x i64> %125, splat (i64 47)
  %167 = getelementptr inbounds nuw i8, ptr %130, i64 48
  %168 = load <2 x i64>, ptr %167, align 1, !alias.scope !129, !noalias !131
  %169 = xor <2 x i64> %166, %168
  %170 = xor <2 x i64> %169, %125
  %171 = bitcast <2 x i64> %170 to <4 x i32>
  %172 = shufflevector <4 x i32> %171, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %173 = bitcast <4 x i32> %172 to <2 x i64>
  %174 = and <2 x i64> %170, splat (i64 4294967295)
  %175 = mul nuw <2 x i64> %174, splat (i64 2654435761)
  %176 = mul <2 x i64> %173, splat (i64 -7046029290881679360)
  %177 = add <2 x i64> %176, %175
  store <2 x i64> %177, ptr %55, align 16, !alias.scope !126, !noalias !132
  %178 = shl nuw nsw i64 %46, 6
  %179 = getelementptr inbounds nuw i8, ptr %35, i64 %178
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %180 = icmp eq i64 %46, 4
  br i1 %180, label %480, label %181

181:                                              ; preds = %128, %181
  %182 = phi <2 x i64> [ %245, %181 ], [ %177, %128 ]
  %183 = phi <2 x i64> [ %231, %181 ], [ %165, %128 ]
  %184 = phi <2 x i64> [ %217, %181 ], [ %153, %128 ]
  %185 = phi <2 x i64> [ %203, %181 ], [ %141, %128 ]
  %186 = phi i64 [ %246, %181 ], [ 0, %128 ]
  %187 = shl i64 %186, 6
  %188 = getelementptr inbounds nuw i8, ptr %179, i64 %187
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %189, i32 0, i32 3, i32 1), !noalias !140
  %190 = shl i64 %186, 3
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 %190
  %192 = load <2 x i64>, ptr %188, align 16, !alias.scope !136, !noalias !141
  %193 = load <2 x i64>, ptr %191, align 1, !alias.scope !138, !noalias !142
  %194 = xor <2 x i64> %193, %192
  %195 = bitcast <2 x i64> %194 to <4 x i32>
  %196 = shufflevector <4 x i32> %195, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %197 = bitcast <4 x i32> %196 to <2 x i64>
  %198 = and <2 x i64> %194, splat (i64 4294967295)
  %199 = and <2 x i64> %197, splat (i64 4294967295)
  %200 = mul nuw <2 x i64> %199, %198
  %201 = shufflevector <2 x i64> %192, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %202 = add <2 x i64> %185, %201
  %203 = add <2 x i64> %202, %200
  %204 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %205 = load <2 x i64>, ptr %204, align 16, !alias.scope !136, !noalias !141
  %206 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %207 = load <2 x i64>, ptr %206, align 1, !alias.scope !138, !noalias !142
  %208 = xor <2 x i64> %207, %205
  %209 = bitcast <2 x i64> %208 to <4 x i32>
  %210 = shufflevector <4 x i32> %209, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %211 = bitcast <4 x i32> %210 to <2 x i64>
  %212 = and <2 x i64> %208, splat (i64 4294967295)
  %213 = and <2 x i64> %211, splat (i64 4294967295)
  %214 = mul nuw <2 x i64> %213, %212
  %215 = shufflevector <2 x i64> %205, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %216 = add <2 x i64> %184, %215
  %217 = add <2 x i64> %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %219 = load <2 x i64>, ptr %218, align 16, !alias.scope !136, !noalias !141
  %220 = getelementptr inbounds nuw i8, ptr %191, i64 32
  %221 = load <2 x i64>, ptr %220, align 1, !alias.scope !138, !noalias !142
  %222 = xor <2 x i64> %221, %219
  %223 = bitcast <2 x i64> %222 to <4 x i32>
  %224 = shufflevector <4 x i32> %223, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %225 = bitcast <4 x i32> %224 to <2 x i64>
  %226 = and <2 x i64> %222, splat (i64 4294967295)
  %227 = and <2 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <2 x i64> %227, %226
  %229 = shufflevector <2 x i64> %219, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %230 = add <2 x i64> %183, %229
  %231 = add <2 x i64> %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %188, i64 48
  %233 = load <2 x i64>, ptr %232, align 16, !alias.scope !136, !noalias !141
  %234 = getelementptr inbounds nuw i8, ptr %191, i64 48
  %235 = load <2 x i64>, ptr %234, align 1, !alias.scope !138, !noalias !142
  %236 = xor <2 x i64> %235, %233
  %237 = bitcast <2 x i64> %236 to <4 x i32>
  %238 = shufflevector <4 x i32> %237, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %239 = bitcast <4 x i32> %238 to <2 x i64>
  %240 = and <2 x i64> %236, splat (i64 4294967295)
  %241 = and <2 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <2 x i64> %241, %240
  %243 = shufflevector <2 x i64> %233, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %244 = add <2 x i64> %182, %243
  %245 = add <2 x i64> %244, %242
  %246 = add nuw i64 %186, 1
  %247 = icmp eq i64 %246, %129
  br i1 %247, label %248, label %181, !llvm.loop !18

248:                                              ; preds = %181
  store <2 x i64> %203, ptr %0, align 16, !alias.scope !143, !noalias !146
  store <2 x i64> %217, ptr %53, align 16, !alias.scope !143, !noalias !146
  store <2 x i64> %231, ptr %54, align 16, !alias.scope !143, !noalias !146
  store <2 x i64> %245, ptr %55, align 16, !alias.scope !143, !noalias !146
  br label %480

249:                                              ; preds = %32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.assume(i1 %52), !noalias !103
  %250 = load <2 x i64>, ptr %0, align 16, !alias.scope !156, !noalias !159
  %251 = load <2 x i64>, ptr %53, align 16, !alias.scope !156, !noalias !159
  %252 = load <2 x i64>, ptr %54, align 16, !alias.scope !156, !noalias !159
  %253 = load <2 x i64>, ptr %55, align 16, !alias.scope !156, !noalias !159
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %254, i32 0, i32 3, i32 1), !noalias !162
  %255 = load <2 x i64>, ptr %35, align 16, !alias.scope !152, !noalias !163
  %256 = load <2 x i64>, ptr %49, align 1, !alias.scope !154, !noalias !164
  %257 = xor <2 x i64> %256, %255
  %258 = bitcast <2 x i64> %257 to <4 x i32>
  %259 = shufflevector <4 x i32> %258, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %260 = bitcast <4 x i32> %259 to <2 x i64>
  %261 = and <2 x i64> %257, splat (i64 4294967295)
  %262 = and <2 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <2 x i64> %262, %261
  %264 = shufflevector <2 x i64> %255, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %265 = add <2 x i64> %250, %264
  %266 = add <2 x i64> %265, %263
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %268 = load <2 x i64>, ptr %267, align 16, !alias.scope !152, !noalias !163
  %269 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %270 = load <2 x i64>, ptr %269, align 1, !alias.scope !154, !noalias !164
  %271 = xor <2 x i64> %270, %268
  %272 = bitcast <2 x i64> %271 to <4 x i32>
  %273 = shufflevector <4 x i32> %272, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %274 = bitcast <4 x i32> %273 to <2 x i64>
  %275 = and <2 x i64> %271, splat (i64 4294967295)
  %276 = and <2 x i64> %274, splat (i64 4294967295)
  %277 = mul nuw <2 x i64> %276, %275
  %278 = shufflevector <2 x i64> %268, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %279 = add <2 x i64> %251, %278
  %280 = add <2 x i64> %279, %277
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %282 = load <2 x i64>, ptr %281, align 16, !alias.scope !152, !noalias !163
  %283 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %284 = load <2 x i64>, ptr %283, align 1, !alias.scope !154, !noalias !164
  %285 = xor <2 x i64> %284, %282
  %286 = bitcast <2 x i64> %285 to <4 x i32>
  %287 = shufflevector <4 x i32> %286, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %288 = bitcast <4 x i32> %287 to <2 x i64>
  %289 = and <2 x i64> %285, splat (i64 4294967295)
  %290 = and <2 x i64> %288, splat (i64 4294967295)
  %291 = mul nuw <2 x i64> %290, %289
  %292 = shufflevector <2 x i64> %282, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %293 = add <2 x i64> %252, %292
  %294 = add <2 x i64> %293, %291
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %296 = load <2 x i64>, ptr %295, align 16, !alias.scope !152, !noalias !163
  %297 = getelementptr inbounds nuw i8, ptr %49, i64 48
  %298 = load <2 x i64>, ptr %297, align 1, !alias.scope !154, !noalias !164
  %299 = xor <2 x i64> %298, %296
  %300 = bitcast <2 x i64> %299 to <4 x i32>
  %301 = shufflevector <4 x i32> %300, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %302 = bitcast <4 x i32> %301 to <2 x i64>
  %303 = and <2 x i64> %299, splat (i64 4294967295)
  %304 = and <2 x i64> %302, splat (i64 4294967295)
  %305 = mul nuw <2 x i64> %304, %303
  %306 = shufflevector <2 x i64> %296, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %307 = add <2 x i64> %253, %306
  %308 = add <2 x i64> %307, %305
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %310, i32 0, i32 3, i32 1), !noalias !162
  %311 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %312 = load <2 x i64>, ptr %309, align 16, !alias.scope !152, !noalias !163
  %313 = load <2 x i64>, ptr %311, align 1, !alias.scope !154, !noalias !164
  %314 = xor <2 x i64> %313, %312
  %315 = bitcast <2 x i64> %314 to <4 x i32>
  %316 = shufflevector <4 x i32> %315, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %317 = bitcast <4 x i32> %316 to <2 x i64>
  %318 = and <2 x i64> %314, splat (i64 4294967295)
  %319 = and <2 x i64> %317, splat (i64 4294967295)
  %320 = mul nuw <2 x i64> %319, %318
  %321 = shufflevector <2 x i64> %312, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %322 = add <2 x i64> %266, %321
  %323 = add <2 x i64> %322, %320
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %325 = load <2 x i64>, ptr %324, align 16, !alias.scope !152, !noalias !163
  %326 = getelementptr inbounds nuw i8, ptr %49, i64 24
  %327 = load <2 x i64>, ptr %326, align 1, !alias.scope !154, !noalias !164
  %328 = xor <2 x i64> %327, %325
  %329 = bitcast <2 x i64> %328 to <4 x i32>
  %330 = shufflevector <4 x i32> %329, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %331 = bitcast <4 x i32> %330 to <2 x i64>
  %332 = and <2 x i64> %328, splat (i64 4294967295)
  %333 = and <2 x i64> %331, splat (i64 4294967295)
  %334 = mul nuw <2 x i64> %333, %332
  %335 = shufflevector <2 x i64> %325, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %336 = add <2 x i64> %280, %335
  %337 = add <2 x i64> %336, %334
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %339 = load <2 x i64>, ptr %338, align 16, !alias.scope !152, !noalias !163
  %340 = getelementptr inbounds nuw i8, ptr %49, i64 40
  %341 = load <2 x i64>, ptr %340, align 1, !alias.scope !154, !noalias !164
  %342 = xor <2 x i64> %341, %339
  %343 = bitcast <2 x i64> %342 to <4 x i32>
  %344 = shufflevector <4 x i32> %343, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %345 = bitcast <4 x i32> %344 to <2 x i64>
  %346 = and <2 x i64> %342, splat (i64 4294967295)
  %347 = and <2 x i64> %345, splat (i64 4294967295)
  %348 = mul nuw <2 x i64> %347, %346
  %349 = shufflevector <2 x i64> %339, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %350 = add <2 x i64> %294, %349
  %351 = add <2 x i64> %350, %348
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %353 = load <2 x i64>, ptr %352, align 16, !alias.scope !152, !noalias !163
  %354 = getelementptr inbounds nuw i8, ptr %49, i64 56
  %355 = load <2 x i64>, ptr %354, align 1, !alias.scope !154, !noalias !164
  %356 = xor <2 x i64> %355, %353
  %357 = bitcast <2 x i64> %356 to <4 x i32>
  %358 = shufflevector <4 x i32> %357, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %359 = bitcast <4 x i32> %358 to <2 x i64>
  %360 = and <2 x i64> %356, splat (i64 4294967295)
  %361 = and <2 x i64> %359, splat (i64 4294967295)
  %362 = mul nuw <2 x i64> %361, %360
  %363 = shufflevector <2 x i64> %353, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %364 = add <2 x i64> %308, %363
  %365 = add <2 x i64> %364, %362
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %367, i32 0, i32 3, i32 1), !noalias !162
  %368 = load <2 x i64>, ptr %366, align 16, !alias.scope !152, !noalias !163
  %369 = load <2 x i64>, ptr %269, align 1, !alias.scope !154, !noalias !164
  %370 = xor <2 x i64> %369, %368
  %371 = bitcast <2 x i64> %370 to <4 x i32>
  %372 = shufflevector <4 x i32> %371, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %373 = bitcast <4 x i32> %372 to <2 x i64>
  %374 = and <2 x i64> %370, splat (i64 4294967295)
  %375 = and <2 x i64> %373, splat (i64 4294967295)
  %376 = mul nuw <2 x i64> %375, %374
  %377 = shufflevector <2 x i64> %368, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %378 = add <2 x i64> %323, %377
  %379 = add <2 x i64> %378, %376
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %381 = load <2 x i64>, ptr %380, align 16, !alias.scope !152, !noalias !163
  %382 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %383 = load <2 x i64>, ptr %382, align 1, !alias.scope !154, !noalias !164
  %384 = xor <2 x i64> %383, %381
  %385 = bitcast <2 x i64> %384 to <4 x i32>
  %386 = shufflevector <4 x i32> %385, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %387 = bitcast <4 x i32> %386 to <2 x i64>
  %388 = and <2 x i64> %384, splat (i64 4294967295)
  %389 = and <2 x i64> %387, splat (i64 4294967295)
  %390 = mul nuw <2 x i64> %389, %388
  %391 = shufflevector <2 x i64> %381, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %392 = add <2 x i64> %337, %391
  %393 = add <2 x i64> %392, %390
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %395 = load <2 x i64>, ptr %394, align 16, !alias.scope !152, !noalias !163
  %396 = getelementptr inbounds nuw i8, ptr %49, i64 48
  %397 = load <2 x i64>, ptr %396, align 1, !alias.scope !154, !noalias !164
  %398 = xor <2 x i64> %397, %395
  %399 = bitcast <2 x i64> %398 to <4 x i32>
  %400 = shufflevector <4 x i32> %399, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %401 = bitcast <4 x i32> %400 to <2 x i64>
  %402 = and <2 x i64> %398, splat (i64 4294967295)
  %403 = and <2 x i64> %401, splat (i64 4294967295)
  %404 = mul nuw <2 x i64> %403, %402
  %405 = shufflevector <2 x i64> %395, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %406 = add <2 x i64> %351, %405
  %407 = add <2 x i64> %406, %404
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %409 = load <2 x i64>, ptr %408, align 16, !alias.scope !152, !noalias !163
  %410 = getelementptr inbounds nuw i8, ptr %49, i64 64
  %411 = load <2 x i64>, ptr %410, align 1, !alias.scope !154, !noalias !164
  %412 = xor <2 x i64> %411, %409
  %413 = bitcast <2 x i64> %412 to <4 x i32>
  %414 = shufflevector <4 x i32> %413, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %415 = bitcast <4 x i32> %414 to <2 x i64>
  %416 = and <2 x i64> %412, splat (i64 4294967295)
  %417 = and <2 x i64> %415, splat (i64 4294967295)
  %418 = mul nuw <2 x i64> %417, %416
  %419 = shufflevector <2 x i64> %409, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %420 = add <2 x i64> %365, %419
  %421 = add <2 x i64> %420, %418
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %423, i32 0, i32 3, i32 1), !noalias !162
  %424 = getelementptr inbounds nuw i8, ptr %49, i64 24
  %425 = load <2 x i64>, ptr %422, align 16, !alias.scope !152, !noalias !163
  %426 = load <2 x i64>, ptr %424, align 1, !alias.scope !154, !noalias !164
  %427 = xor <2 x i64> %426, %425
  %428 = bitcast <2 x i64> %427 to <4 x i32>
  %429 = shufflevector <4 x i32> %428, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %430 = bitcast <4 x i32> %429 to <2 x i64>
  %431 = and <2 x i64> %427, splat (i64 4294967295)
  %432 = and <2 x i64> %430, splat (i64 4294967295)
  %433 = mul nuw <2 x i64> %432, %431
  %434 = shufflevector <2 x i64> %425, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %435 = add <2 x i64> %379, %434
  %436 = add <2 x i64> %435, %433
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %438 = load <2 x i64>, ptr %437, align 16, !alias.scope !152, !noalias !163
  %439 = getelementptr inbounds nuw i8, ptr %49, i64 40
  %440 = load <2 x i64>, ptr %439, align 1, !alias.scope !154, !noalias !164
  %441 = xor <2 x i64> %440, %438
  %442 = bitcast <2 x i64> %441 to <4 x i32>
  %443 = shufflevector <4 x i32> %442, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %444 = bitcast <4 x i32> %443 to <2 x i64>
  %445 = and <2 x i64> %441, splat (i64 4294967295)
  %446 = and <2 x i64> %444, splat (i64 4294967295)
  %447 = mul nuw <2 x i64> %446, %445
  %448 = shufflevector <2 x i64> %438, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %449 = add <2 x i64> %393, %448
  %450 = add <2 x i64> %449, %447
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %452 = load <2 x i64>, ptr %451, align 16, !alias.scope !152, !noalias !163
  %453 = getelementptr inbounds nuw i8, ptr %49, i64 56
  %454 = load <2 x i64>, ptr %453, align 1, !alias.scope !154, !noalias !164
  %455 = xor <2 x i64> %454, %452
  %456 = bitcast <2 x i64> %455 to <4 x i32>
  %457 = shufflevector <4 x i32> %456, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %458 = bitcast <4 x i32> %457 to <2 x i64>
  %459 = and <2 x i64> %455, splat (i64 4294967295)
  %460 = and <2 x i64> %458, splat (i64 4294967295)
  %461 = mul nuw <2 x i64> %460, %459
  %462 = shufflevector <2 x i64> %452, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %463 = add <2 x i64> %407, %462
  %464 = add <2 x i64> %463, %461
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %466 = load <2 x i64>, ptr %465, align 16, !alias.scope !152, !noalias !163
  %467 = getelementptr inbounds nuw i8, ptr %49, i64 72
  %468 = load <2 x i64>, ptr %467, align 1, !alias.scope !154, !noalias !164
  %469 = xor <2 x i64> %468, %466
  %470 = bitcast <2 x i64> %469 to <4 x i32>
  %471 = shufflevector <4 x i32> %470, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %472 = bitcast <4 x i32> %471 to <2 x i64>
  %473 = and <2 x i64> %469, splat (i64 4294967295)
  %474 = and <2 x i64> %472, splat (i64 4294967295)
  %475 = mul nuw <2 x i64> %474, %473
  %476 = shufflevector <2 x i64> %466, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %477 = add <2 x i64> %421, %476
  %478 = add <2 x i64> %477, %475
  store <2 x i64> %436, ptr %0, align 16, !alias.scope !156, !noalias !159
  store <2 x i64> %450, ptr %53, align 16, !alias.scope !156, !noalias !159
  store <2 x i64> %464, ptr %54, align 16, !alias.scope !156, !noalias !159
  store <2 x i64> %478, ptr %55, align 16, !alias.scope !156, !noalias !159
  %479 = add i64 %44, 4
  br label %480

480:                                              ; preds = %248, %128, %249
  %481 = phi i64 [ %479, %249 ], [ 0, %128 ], [ %129, %248 ]
  store i64 %481, ptr %38, align 8, !alias.scope !103, !noalias !106
  store i32 0, ptr %18, align 64, !alias.scope !98, !noalias !101
  br label %482

482:                                              ; preds = %480, %30
  %483 = phi ptr [ %37, %480 ], [ %1, %30 ]
  %484 = icmp ult ptr %483, %9
  tail call void @llvm.assume(i1 %484)
  %485 = ptrtoint ptr %9 to i64
  %486 = ptrtoint ptr %483 to i64
  %487 = sub i64 %485, %486
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %489 = load i64, ptr %488, align 8, !alias.scope !98, !noalias !101
  %490 = shl i64 %489, 6
  %491 = icmp ugt i64 %487, %490
  br i1 %491, label %492, label %861

492:                                              ; preds = %482
  %493 = getelementptr inbounds i8, ptr %9, i64 -1
  %494 = ptrtoint ptr %493 to i64
  %495 = sub i64 %494, %486
  %496 = lshr i64 %495, 6
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %498 = load i64, ptr %497, align 8, !alias.scope !98, !noalias !101
  %499 = icmp uge i64 %489, %498
  tail call void @llvm.assume(i1 %499)
  %500 = sub i64 %489, %498
  %501 = icmp ule i64 %500, %496
  tail call void @llvm.assume(i1 %501)
  %502 = shl i64 %498, 3
  %503 = getelementptr inbounds nuw i8, ptr %14, i64 %502
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %504 = icmp eq i64 %489, %498
  %505 = load <2 x i64>, ptr %0, align 16, !alias.scope !172, !noalias !175
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %507 = load <2 x i64>, ptr %506, align 16, !noalias !177
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %509 = load <2 x i64>, ptr %508, align 16, !noalias !177
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %511 = load <2 x i64>, ptr %510, align 16, !noalias !177
  br i1 %504, label %512, label %516

512:                                              ; preds = %492
  %513 = ptrtoint ptr %0 to i64
  %514 = and i64 %513, 15
  %515 = icmp eq i64 %514, 0
  br label %584

516:                                              ; preds = %492, %516
  %517 = phi <2 x i64> [ %580, %516 ], [ %511, %492 ]
  %518 = phi <2 x i64> [ %566, %516 ], [ %509, %492 ]
  %519 = phi <2 x i64> [ %552, %516 ], [ %507, %492 ]
  %520 = phi <2 x i64> [ %538, %516 ], [ %505, %492 ]
  %521 = phi i64 [ %581, %516 ], [ 0, %492 ]
  %522 = shl i64 %521, 6
  %523 = getelementptr inbounds nuw i8, ptr %483, i64 %522
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %524, i32 0, i32 3, i32 1), !noalias !170
  %525 = shl i64 %521, 3
  %526 = getelementptr inbounds nuw i8, ptr %503, i64 %525
  %527 = load <2 x i64>, ptr %523, align 1, !alias.scope !168, !noalias !178
  %528 = load <2 x i64>, ptr %526, align 1, !alias.scope !170, !noalias !179
  %529 = xor <2 x i64> %528, %527
  %530 = bitcast <2 x i64> %529 to <4 x i32>
  %531 = shufflevector <4 x i32> %530, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %532 = bitcast <4 x i32> %531 to <2 x i64>
  %533 = and <2 x i64> %529, splat (i64 4294967295)
  %534 = and <2 x i64> %532, splat (i64 4294967295)
  %535 = mul nuw <2 x i64> %534, %533
  %536 = shufflevector <2 x i64> %527, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %537 = add <2 x i64> %520, %536
  %538 = add <2 x i64> %537, %535
  %539 = getelementptr inbounds nuw i8, ptr %523, i64 16
  %540 = load <2 x i64>, ptr %539, align 1, !alias.scope !168, !noalias !178
  %541 = getelementptr inbounds nuw i8, ptr %526, i64 16
  %542 = load <2 x i64>, ptr %541, align 1, !alias.scope !170, !noalias !179
  %543 = xor <2 x i64> %542, %540
  %544 = bitcast <2 x i64> %543 to <4 x i32>
  %545 = shufflevector <4 x i32> %544, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %546 = bitcast <4 x i32> %545 to <2 x i64>
  %547 = and <2 x i64> %543, splat (i64 4294967295)
  %548 = and <2 x i64> %546, splat (i64 4294967295)
  %549 = mul nuw <2 x i64> %548, %547
  %550 = shufflevector <2 x i64> %540, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %551 = add <2 x i64> %519, %550
  %552 = add <2 x i64> %551, %549
  %553 = getelementptr inbounds nuw i8, ptr %523, i64 32
  %554 = load <2 x i64>, ptr %553, align 1, !alias.scope !168, !noalias !178
  %555 = getelementptr inbounds nuw i8, ptr %526, i64 32
  %556 = load <2 x i64>, ptr %555, align 1, !alias.scope !170, !noalias !179
  %557 = xor <2 x i64> %556, %554
  %558 = bitcast <2 x i64> %557 to <4 x i32>
  %559 = shufflevector <4 x i32> %558, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %560 = bitcast <4 x i32> %559 to <2 x i64>
  %561 = and <2 x i64> %557, splat (i64 4294967295)
  %562 = and <2 x i64> %560, splat (i64 4294967295)
  %563 = mul nuw <2 x i64> %562, %561
  %564 = shufflevector <2 x i64> %554, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %565 = add <2 x i64> %518, %564
  %566 = add <2 x i64> %565, %563
  %567 = getelementptr inbounds nuw i8, ptr %523, i64 48
  %568 = load <2 x i64>, ptr %567, align 1, !alias.scope !168, !noalias !178
  %569 = getelementptr inbounds nuw i8, ptr %526, i64 48
  %570 = load <2 x i64>, ptr %569, align 1, !alias.scope !170, !noalias !179
  %571 = xor <2 x i64> %570, %568
  %572 = bitcast <2 x i64> %571 to <4 x i32>
  %573 = shufflevector <4 x i32> %572, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %574 = bitcast <4 x i32> %573 to <2 x i64>
  %575 = and <2 x i64> %571, splat (i64 4294967295)
  %576 = and <2 x i64> %574, splat (i64 4294967295)
  %577 = mul nuw <2 x i64> %576, %575
  %578 = shufflevector <2 x i64> %568, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %579 = add <2 x i64> %517, %578
  %580 = add <2 x i64> %579, %577
  %581 = add nuw i64 %521, 1
  %582 = icmp eq i64 %581, %500
  br i1 %582, label %583, label %516, !llvm.loop !18

583:                                              ; preds = %516
  store <2 x i64> %538, ptr %0, align 16, !alias.scope !180, !noalias !183
  store <2 x i64> %552, ptr %506, align 16, !alias.scope !180, !noalias !183
  store <2 x i64> %566, ptr %508, align 16, !alias.scope !180, !noalias !183
  store <2 x i64> %580, ptr %510, align 16, !alias.scope !180, !noalias !183
  br label %584

584:                                              ; preds = %512, %583
  %585 = phi i1 [ %515, %512 ], [ true, %583 ]
  %586 = phi <2 x i64> [ %511, %512 ], [ %580, %583 ]
  %587 = phi <2 x i64> [ %509, %512 ], [ %566, %583 ]
  %588 = phi <2 x i64> [ %507, %512 ], [ %552, %583 ]
  %589 = phi <2 x i64> [ %505, %512 ], [ %538, %583 ]
  %590 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %591 = load i64, ptr %590, align 32, !alias.scope !98, !noalias !101
  %592 = getelementptr inbounds nuw i8, ptr %14, i64 %591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.assume(i1 %585)
  %593 = lshr <2 x i64> %589, splat (i64 47)
  %594 = load <2 x i64>, ptr %592, align 1, !alias.scope !175, !noalias !172
  %595 = xor <2 x i64> %593, %594
  %596 = xor <2 x i64> %595, %589
  %597 = bitcast <2 x i64> %596 to <4 x i32>
  %598 = shufflevector <4 x i32> %597, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %599 = bitcast <4 x i32> %598 to <2 x i64>
  %600 = and <2 x i64> %596, splat (i64 4294967295)
  %601 = mul nuw <2 x i64> %600, splat (i64 2654435761)
  %602 = mul <2 x i64> %599, splat (i64 -7046029290881679360)
  %603 = add <2 x i64> %602, %601
  store <2 x i64> %603, ptr %0, align 16, !alias.scope !172, !noalias !175
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %605 = lshr <2 x i64> %588, splat (i64 47)
  %606 = getelementptr inbounds nuw i8, ptr %592, i64 16
  %607 = load <2 x i64>, ptr %606, align 1, !alias.scope !175, !noalias !172
  %608 = xor <2 x i64> %605, %607
  %609 = xor <2 x i64> %608, %588
  %610 = bitcast <2 x i64> %609 to <4 x i32>
  %611 = shufflevector <4 x i32> %610, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %612 = bitcast <4 x i32> %611 to <2 x i64>
  %613 = and <2 x i64> %609, splat (i64 4294967295)
  %614 = mul nuw <2 x i64> %613, splat (i64 2654435761)
  %615 = mul <2 x i64> %612, splat (i64 -7046029290881679360)
  %616 = add <2 x i64> %615, %614
  store <2 x i64> %616, ptr %604, align 16, !alias.scope !172, !noalias !175
  %617 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %618 = lshr <2 x i64> %587, splat (i64 47)
  %619 = getelementptr inbounds nuw i8, ptr %592, i64 32
  %620 = load <2 x i64>, ptr %619, align 1, !alias.scope !175, !noalias !172
  %621 = xor <2 x i64> %618, %620
  %622 = xor <2 x i64> %621, %587
  %623 = bitcast <2 x i64> %622 to <4 x i32>
  %624 = shufflevector <4 x i32> %623, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %625 = bitcast <4 x i32> %624 to <2 x i64>
  %626 = and <2 x i64> %622, splat (i64 4294967295)
  %627 = mul nuw <2 x i64> %626, splat (i64 2654435761)
  %628 = mul <2 x i64> %625, splat (i64 -7046029290881679360)
  %629 = add <2 x i64> %628, %627
  store <2 x i64> %629, ptr %617, align 16, !alias.scope !172, !noalias !175
  %630 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %631 = lshr <2 x i64> %586, splat (i64 47)
  %632 = getelementptr inbounds nuw i8, ptr %592, i64 48
  %633 = load <2 x i64>, ptr %632, align 1, !alias.scope !175, !noalias !172
  %634 = xor <2 x i64> %631, %633
  %635 = xor <2 x i64> %634, %586
  %636 = bitcast <2 x i64> %635 to <4 x i32>
  %637 = shufflevector <4 x i32> %636, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %638 = bitcast <4 x i32> %637 to <2 x i64>
  %639 = and <2 x i64> %635, splat (i64 4294967295)
  %640 = mul nuw <2 x i64> %639, splat (i64 2654435761)
  %641 = mul <2 x i64> %638, splat (i64 -7046029290881679360)
  %642 = add <2 x i64> %641, %640
  store <2 x i64> %642, ptr %630, align 16, !alias.scope !172, !noalias !175
  store i64 0, ptr %497, align 8, !alias.scope !98, !noalias !101
  %643 = shl nuw i64 %500, 6
  %644 = getelementptr inbounds nuw i8, ptr %483, i64 %643
  %645 = sub nsw i64 %496, %500
  %646 = icmp ult i64 %645, %489
  br i1 %646, label %776, label %647

647:                                              ; preds = %584
  %648 = icmp eq i64 %489, 0
  br label %649

649:                                              ; preds = %647, %724
  %650 = phi <2 x i64> [ %642, %647 ], [ %772, %724 ]
  %651 = phi <2 x i64> [ %629, %647 ], [ %761, %724 ]
  %652 = phi <2 x i64> [ %616, %647 ], [ %750, %724 ]
  %653 = phi <2 x i64> [ %603, %647 ], [ %739, %724 ]
  %654 = phi ptr [ %644, %647 ], [ %773, %724 ]
  %655 = phi i64 [ %645, %647 ], [ %774, %724 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  br i1 %648, label %724, label %656

656:                                              ; preds = %649, %656
  %657 = phi <2 x i64> [ %720, %656 ], [ %650, %649 ]
  %658 = phi <2 x i64> [ %706, %656 ], [ %651, %649 ]
  %659 = phi <2 x i64> [ %692, %656 ], [ %652, %649 ]
  %660 = phi <2 x i64> [ %678, %656 ], [ %653, %649 ]
  %661 = phi i64 [ %721, %656 ], [ 0, %649 ]
  %662 = shl i64 %661, 6
  %663 = getelementptr inbounds nuw i8, ptr %654, i64 %662
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %664, i32 0, i32 3, i32 1), !noalias !191
  %665 = shl i64 %661, 3
  %666 = getelementptr inbounds nuw i8, ptr %14, i64 %665
  %667 = load <2 x i64>, ptr %663, align 1, !alias.scope !189, !noalias !193
  %668 = load <2 x i64>, ptr %666, align 1, !alias.scope !191, !noalias !194
  %669 = xor <2 x i64> %668, %667
  %670 = bitcast <2 x i64> %669 to <4 x i32>
  %671 = shufflevector <4 x i32> %670, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %672 = bitcast <4 x i32> %671 to <2 x i64>
  %673 = and <2 x i64> %669, splat (i64 4294967295)
  %674 = and <2 x i64> %672, splat (i64 4294967295)
  %675 = mul nuw <2 x i64> %674, %673
  %676 = shufflevector <2 x i64> %667, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %677 = add <2 x i64> %660, %676
  %678 = add <2 x i64> %677, %675
  %679 = getelementptr inbounds nuw i8, ptr %663, i64 16
  %680 = load <2 x i64>, ptr %679, align 1, !alias.scope !189, !noalias !193
  %681 = getelementptr inbounds nuw i8, ptr %666, i64 16
  %682 = load <2 x i64>, ptr %681, align 1, !alias.scope !191, !noalias !194
  %683 = xor <2 x i64> %682, %680
  %684 = bitcast <2 x i64> %683 to <4 x i32>
  %685 = shufflevector <4 x i32> %684, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %686 = bitcast <4 x i32> %685 to <2 x i64>
  %687 = and <2 x i64> %683, splat (i64 4294967295)
  %688 = and <2 x i64> %686, splat (i64 4294967295)
  %689 = mul nuw <2 x i64> %688, %687
  %690 = shufflevector <2 x i64> %680, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %691 = add <2 x i64> %659, %690
  %692 = add <2 x i64> %691, %689
  %693 = getelementptr inbounds nuw i8, ptr %663, i64 32
  %694 = load <2 x i64>, ptr %693, align 1, !alias.scope !189, !noalias !193
  %695 = getelementptr inbounds nuw i8, ptr %666, i64 32
  %696 = load <2 x i64>, ptr %695, align 1, !alias.scope !191, !noalias !194
  %697 = xor <2 x i64> %696, %694
  %698 = bitcast <2 x i64> %697 to <4 x i32>
  %699 = shufflevector <4 x i32> %698, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %700 = bitcast <4 x i32> %699 to <2 x i64>
  %701 = and <2 x i64> %697, splat (i64 4294967295)
  %702 = and <2 x i64> %700, splat (i64 4294967295)
  %703 = mul nuw <2 x i64> %702, %701
  %704 = shufflevector <2 x i64> %694, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %705 = add <2 x i64> %658, %704
  %706 = add <2 x i64> %705, %703
  %707 = getelementptr inbounds nuw i8, ptr %663, i64 48
  %708 = load <2 x i64>, ptr %707, align 1, !alias.scope !189, !noalias !193
  %709 = getelementptr inbounds nuw i8, ptr %666, i64 48
  %710 = load <2 x i64>, ptr %709, align 1, !alias.scope !191, !noalias !194
  %711 = xor <2 x i64> %710, %708
  %712 = bitcast <2 x i64> %711 to <4 x i32>
  %713 = shufflevector <4 x i32> %712, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %714 = bitcast <4 x i32> %713 to <2 x i64>
  %715 = and <2 x i64> %711, splat (i64 4294967295)
  %716 = and <2 x i64> %714, splat (i64 4294967295)
  %717 = mul nuw <2 x i64> %716, %715
  %718 = shufflevector <2 x i64> %708, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %719 = add <2 x i64> %657, %718
  %720 = add <2 x i64> %719, %717
  %721 = add nuw i64 %661, 1
  %722 = icmp eq i64 %721, %489
  br i1 %722, label %723, label %656, !llvm.loop !18

723:                                              ; preds = %656
  store <2 x i64> %678, ptr %0, align 16, !alias.scope !195, !noalias !198
  store <2 x i64> %692, ptr %604, align 16, !alias.scope !195, !noalias !198
  store <2 x i64> %706, ptr %617, align 16, !alias.scope !195, !noalias !198
  store <2 x i64> %720, ptr %630, align 16, !alias.scope !195, !noalias !198
  br label %724

724:                                              ; preds = %649, %723
  %725 = phi <2 x i64> [ %650, %649 ], [ %720, %723 ]
  %726 = phi <2 x i64> [ %651, %649 ], [ %706, %723 ]
  %727 = phi <2 x i64> [ %652, %649 ], [ %692, %723 ]
  %728 = phi <2 x i64> [ %653, %649 ], [ %678, %723 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %729 = lshr <2 x i64> %728, splat (i64 47)
  %730 = load <2 x i64>, ptr %592, align 1, !alias.scope !204, !noalias !201
  %731 = xor <2 x i64> %729, %730
  %732 = xor <2 x i64> %731, %728
  %733 = bitcast <2 x i64> %732 to <4 x i32>
  %734 = shufflevector <4 x i32> %733, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %735 = bitcast <4 x i32> %734 to <2 x i64>
  %736 = and <2 x i64> %732, splat (i64 4294967295)
  %737 = mul nuw <2 x i64> %736, splat (i64 2654435761)
  %738 = mul <2 x i64> %735, splat (i64 -7046029290881679360)
  %739 = add <2 x i64> %738, %737
  store <2 x i64> %739, ptr %0, align 16, !alias.scope !201, !noalias !204
  %740 = lshr <2 x i64> %727, splat (i64 47)
  %741 = load <2 x i64>, ptr %606, align 1, !alias.scope !204, !noalias !201
  %742 = xor <2 x i64> %740, %741
  %743 = xor <2 x i64> %742, %727
  %744 = bitcast <2 x i64> %743 to <4 x i32>
  %745 = shufflevector <4 x i32> %744, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %746 = bitcast <4 x i32> %745 to <2 x i64>
  %747 = and <2 x i64> %743, splat (i64 4294967295)
  %748 = mul nuw <2 x i64> %747, splat (i64 2654435761)
  %749 = mul <2 x i64> %746, splat (i64 -7046029290881679360)
  %750 = add <2 x i64> %749, %748
  store <2 x i64> %750, ptr %604, align 16, !alias.scope !201, !noalias !204
  %751 = lshr <2 x i64> %726, splat (i64 47)
  %752 = load <2 x i64>, ptr %619, align 1, !alias.scope !204, !noalias !201
  %753 = xor <2 x i64> %751, %752
  %754 = xor <2 x i64> %753, %726
  %755 = bitcast <2 x i64> %754 to <4 x i32>
  %756 = shufflevector <4 x i32> %755, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %757 = bitcast <4 x i32> %756 to <2 x i64>
  %758 = and <2 x i64> %754, splat (i64 4294967295)
  %759 = mul nuw <2 x i64> %758, splat (i64 2654435761)
  %760 = mul <2 x i64> %757, splat (i64 -7046029290881679360)
  %761 = add <2 x i64> %760, %759
  store <2 x i64> %761, ptr %617, align 16, !alias.scope !201, !noalias !204
  %762 = lshr <2 x i64> %725, splat (i64 47)
  %763 = load <2 x i64>, ptr %632, align 1, !alias.scope !204, !noalias !201
  %764 = xor <2 x i64> %762, %763
  %765 = xor <2 x i64> %764, %725
  %766 = bitcast <2 x i64> %765 to <4 x i32>
  %767 = shufflevector <4 x i32> %766, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %768 = bitcast <4 x i32> %767 to <2 x i64>
  %769 = and <2 x i64> %765, splat (i64 4294967295)
  %770 = mul nuw <2 x i64> %769, splat (i64 2654435761)
  %771 = mul <2 x i64> %768, splat (i64 -7046029290881679360)
  %772 = add <2 x i64> %771, %770
  store <2 x i64> %772, ptr %630, align 16, !alias.scope !201, !noalias !204
  %773 = getelementptr inbounds nuw i8, ptr %654, i64 %490
  %774 = sub i64 %655, %489
  %775 = icmp ult i64 %774, %489
  br i1 %775, label %776, label %649, !llvm.loop !206

776:                                              ; preds = %724, %584
  %777 = phi <2 x i64> [ %642, %584 ], [ %772, %724 ]
  %778 = phi <2 x i64> [ %629, %584 ], [ %761, %724 ]
  %779 = phi <2 x i64> [ %616, %584 ], [ %750, %724 ]
  %780 = phi <2 x i64> [ %603, %584 ], [ %739, %724 ]
  %781 = phi i64 [ %645, %584 ], [ %774, %724 ]
  %782 = phi ptr [ %644, %584 ], [ %773, %724 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %783 = icmp eq i64 %781, 0
  br i1 %783, label %852, label %784

784:                                              ; preds = %776, %784
  %785 = phi <2 x i64> [ %848, %784 ], [ %777, %776 ]
  %786 = phi <2 x i64> [ %834, %784 ], [ %778, %776 ]
  %787 = phi <2 x i64> [ %820, %784 ], [ %779, %776 ]
  %788 = phi <2 x i64> [ %806, %784 ], [ %780, %776 ]
  %789 = phi i64 [ %849, %784 ], [ 0, %776 ]
  %790 = shl i64 %789, 6
  %791 = getelementptr inbounds nuw i8, ptr %782, i64 %790
  %792 = getelementptr inbounds nuw i8, ptr %791, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %792, i32 0, i32 3, i32 1), !noalias !212
  %793 = shl i64 %789, 3
  %794 = getelementptr inbounds nuw i8, ptr %14, i64 %793
  %795 = load <2 x i64>, ptr %791, align 1, !alias.scope !210, !noalias !214
  %796 = load <2 x i64>, ptr %794, align 1, !alias.scope !212, !noalias !215
  %797 = xor <2 x i64> %796, %795
  %798 = bitcast <2 x i64> %797 to <4 x i32>
  %799 = shufflevector <4 x i32> %798, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %800 = bitcast <4 x i32> %799 to <2 x i64>
  %801 = and <2 x i64> %797, splat (i64 4294967295)
  %802 = and <2 x i64> %800, splat (i64 4294967295)
  %803 = mul nuw <2 x i64> %802, %801
  %804 = shufflevector <2 x i64> %795, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %805 = add <2 x i64> %788, %804
  %806 = add <2 x i64> %805, %803
  %807 = getelementptr inbounds nuw i8, ptr %791, i64 16
  %808 = load <2 x i64>, ptr %807, align 1, !alias.scope !210, !noalias !214
  %809 = getelementptr inbounds nuw i8, ptr %794, i64 16
  %810 = load <2 x i64>, ptr %809, align 1, !alias.scope !212, !noalias !215
  %811 = xor <2 x i64> %810, %808
  %812 = bitcast <2 x i64> %811 to <4 x i32>
  %813 = shufflevector <4 x i32> %812, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %814 = bitcast <4 x i32> %813 to <2 x i64>
  %815 = and <2 x i64> %811, splat (i64 4294967295)
  %816 = and <2 x i64> %814, splat (i64 4294967295)
  %817 = mul nuw <2 x i64> %816, %815
  %818 = shufflevector <2 x i64> %808, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %819 = add <2 x i64> %787, %818
  %820 = add <2 x i64> %819, %817
  %821 = getelementptr inbounds nuw i8, ptr %791, i64 32
  %822 = load <2 x i64>, ptr %821, align 1, !alias.scope !210, !noalias !214
  %823 = getelementptr inbounds nuw i8, ptr %794, i64 32
  %824 = load <2 x i64>, ptr %823, align 1, !alias.scope !212, !noalias !215
  %825 = xor <2 x i64> %824, %822
  %826 = bitcast <2 x i64> %825 to <4 x i32>
  %827 = shufflevector <4 x i32> %826, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %828 = bitcast <4 x i32> %827 to <2 x i64>
  %829 = and <2 x i64> %825, splat (i64 4294967295)
  %830 = and <2 x i64> %828, splat (i64 4294967295)
  %831 = mul nuw <2 x i64> %830, %829
  %832 = shufflevector <2 x i64> %822, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %833 = add <2 x i64> %786, %832
  %834 = add <2 x i64> %833, %831
  %835 = getelementptr inbounds nuw i8, ptr %791, i64 48
  %836 = load <2 x i64>, ptr %835, align 1, !alias.scope !210, !noalias !214
  %837 = getelementptr inbounds nuw i8, ptr %794, i64 48
  %838 = load <2 x i64>, ptr %837, align 1, !alias.scope !212, !noalias !215
  %839 = xor <2 x i64> %838, %836
  %840 = bitcast <2 x i64> %839 to <4 x i32>
  %841 = shufflevector <4 x i32> %840, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %842 = bitcast <4 x i32> %841 to <2 x i64>
  %843 = and <2 x i64> %839, splat (i64 4294967295)
  %844 = and <2 x i64> %842, splat (i64 4294967295)
  %845 = mul nuw <2 x i64> %844, %843
  %846 = shufflevector <2 x i64> %836, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %847 = add <2 x i64> %785, %846
  %848 = add <2 x i64> %847, %845
  %849 = add nuw i64 %789, 1
  %850 = icmp eq i64 %849, %781
  br i1 %850, label %851, label %784, !llvm.loop !18

851:                                              ; preds = %784
  store <2 x i64> %806, ptr %0, align 16, !alias.scope !216, !noalias !219
  store <2 x i64> %820, ptr %604, align 16, !alias.scope !216, !noalias !219
  store <2 x i64> %834, ptr %617, align 16, !alias.scope !216, !noalias !219
  store <2 x i64> %848, ptr %630, align 16, !alias.scope !216, !noalias !219
  br label %852

852:                                              ; preds = %776, %851
  %853 = shl i64 %781, 6
  %854 = getelementptr inbounds nuw i8, ptr %782, i64 %853
  %855 = icmp ult ptr %854, %9
  tail call void @llvm.assume(i1 %855)
  store i64 %781, ptr %497, align 8, !alias.scope !98, !noalias !101
  %856 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %857 = getelementptr inbounds i8, ptr %854, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %856, ptr noundef nonnull readonly align 1 dereferenceable(64) %857, i64 64, i1 false)
  %858 = ptrtoint ptr %854 to i64
  %859 = sub i64 %485, %858
  %860 = icmp slt i64 %859, 65
  tail call void @llvm.assume(i1 %860)
  br label %1319

861:                                              ; preds = %482
  %862 = icmp sgt i64 %487, 256
  br i1 %862, label %863, label %1319

863:                                              ; preds = %861
  %864 = getelementptr inbounds i8, ptr %9, i64 -256
  %865 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %866 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %867 = load i64, ptr %866, align 32, !alias.scope !98, !noalias !101
  %868 = icmp ugt i64 %489, 3
  tail call void @llvm.assume(i1 %868)
  %869 = load i64, ptr %865, align 8, !alias.scope !222, !noalias !225
  %870 = ptrtoint ptr %0 to i64
  %871 = and i64 %870, 15
  %872 = icmp eq i64 %871, 0
  %873 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %874 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %875 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %876 = getelementptr inbounds nuw i8, ptr %14, i64 %867
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 16
  %878 = getelementptr inbounds nuw i8, ptr %876, i64 32
  %879 = getelementptr inbounds nuw i8, ptr %876, i64 48
  br label %880

880:                                              ; preds = %1308, %863
  %881 = phi i64 [ %869, %863 ], [ %1309, %1308 ]
  %882 = phi ptr [ %483, %863 ], [ %1310, %1308 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %883 = icmp ult i64 %881, %489
  tail call void @llvm.assume(i1 %883)
  %884 = sub i64 %489, %881
  %885 = icmp ult i64 %884, 5
  %886 = shl i64 %881, 3
  %887 = getelementptr inbounds nuw i8, ptr %14, i64 %886
  br i1 %885, label %888, label %1077

888:                                              ; preds = %880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.assume(i1 %872), !noalias !222
  %889 = load <2 x i64>, ptr %0, align 16, !alias.scope !236, !noalias !239
  %890 = load <2 x i64>, ptr %873, align 16, !alias.scope !236, !noalias !239
  %891 = load <2 x i64>, ptr %874, align 16, !alias.scope !236, !noalias !239
  %892 = load <2 x i64>, ptr %875, align 16, !alias.scope !236, !noalias !239
  br label %893

893:                                              ; preds = %893, %888
  %894 = phi <2 x i64> [ %892, %888 ], [ %957, %893 ]
  %895 = phi <2 x i64> [ %891, %888 ], [ %943, %893 ]
  %896 = phi <2 x i64> [ %890, %888 ], [ %929, %893 ]
  %897 = phi <2 x i64> [ %889, %888 ], [ %915, %893 ]
  %898 = phi i64 [ 0, %888 ], [ %958, %893 ]
  %899 = shl i64 %898, 6
  %900 = getelementptr inbounds nuw i8, ptr %882, i64 %899
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %901, i32 0, i32 3, i32 1), !noalias !242
  %902 = shl i64 %898, 3
  %903 = getelementptr inbounds nuw i8, ptr %887, i64 %902
  %904 = load <2 x i64>, ptr %900, align 1, !alias.scope !232, !noalias !243
  %905 = load <2 x i64>, ptr %903, align 1, !alias.scope !234, !noalias !244
  %906 = xor <2 x i64> %905, %904
  %907 = bitcast <2 x i64> %906 to <4 x i32>
  %908 = shufflevector <4 x i32> %907, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %909 = bitcast <4 x i32> %908 to <2 x i64>
  %910 = and <2 x i64> %906, splat (i64 4294967295)
  %911 = and <2 x i64> %909, splat (i64 4294967295)
  %912 = mul nuw <2 x i64> %911, %910
  %913 = shufflevector <2 x i64> %904, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %914 = add <2 x i64> %897, %913
  %915 = add <2 x i64> %914, %912
  %916 = getelementptr inbounds nuw i8, ptr %900, i64 16
  %917 = load <2 x i64>, ptr %916, align 1, !alias.scope !232, !noalias !243
  %918 = getelementptr inbounds nuw i8, ptr %903, i64 16
  %919 = load <2 x i64>, ptr %918, align 1, !alias.scope !234, !noalias !244
  %920 = xor <2 x i64> %919, %917
  %921 = bitcast <2 x i64> %920 to <4 x i32>
  %922 = shufflevector <4 x i32> %921, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %923 = bitcast <4 x i32> %922 to <2 x i64>
  %924 = and <2 x i64> %920, splat (i64 4294967295)
  %925 = and <2 x i64> %923, splat (i64 4294967295)
  %926 = mul nuw <2 x i64> %925, %924
  %927 = shufflevector <2 x i64> %917, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %928 = add <2 x i64> %896, %927
  %929 = add <2 x i64> %928, %926
  %930 = getelementptr inbounds nuw i8, ptr %900, i64 32
  %931 = load <2 x i64>, ptr %930, align 1, !alias.scope !232, !noalias !243
  %932 = getelementptr inbounds nuw i8, ptr %903, i64 32
  %933 = load <2 x i64>, ptr %932, align 1, !alias.scope !234, !noalias !244
  %934 = xor <2 x i64> %933, %931
  %935 = bitcast <2 x i64> %934 to <4 x i32>
  %936 = shufflevector <4 x i32> %935, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %937 = bitcast <4 x i32> %936 to <2 x i64>
  %938 = and <2 x i64> %934, splat (i64 4294967295)
  %939 = and <2 x i64> %937, splat (i64 4294967295)
  %940 = mul nuw <2 x i64> %939, %938
  %941 = shufflevector <2 x i64> %931, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %942 = add <2 x i64> %895, %941
  %943 = add <2 x i64> %942, %940
  %944 = getelementptr inbounds nuw i8, ptr %900, i64 48
  %945 = load <2 x i64>, ptr %944, align 1, !alias.scope !232, !noalias !243
  %946 = getelementptr inbounds nuw i8, ptr %903, i64 48
  %947 = load <2 x i64>, ptr %946, align 1, !alias.scope !234, !noalias !244
  %948 = xor <2 x i64> %947, %945
  %949 = bitcast <2 x i64> %948 to <4 x i32>
  %950 = shufflevector <4 x i32> %949, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %951 = bitcast <4 x i32> %950 to <2 x i64>
  %952 = and <2 x i64> %948, splat (i64 4294967295)
  %953 = and <2 x i64> %951, splat (i64 4294967295)
  %954 = mul nuw <2 x i64> %953, %952
  %955 = shufflevector <2 x i64> %945, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %956 = add <2 x i64> %894, %955
  %957 = add <2 x i64> %956, %954
  %958 = add nuw i64 %898, 1
  %959 = icmp eq i64 %958, %884
  br i1 %959, label %960, label %893, !llvm.loop !18

960:                                              ; preds = %893
  %961 = sub nuw nsw i64 4, %884
  store <2 x i64> %915, ptr %0, align 16, !alias.scope !236, !noalias !239
  store <2 x i64> %929, ptr %873, align 16, !alias.scope !236, !noalias !239
  store <2 x i64> %943, ptr %874, align 16, !alias.scope !236, !noalias !239
  store <2 x i64> %957, ptr %875, align 16, !alias.scope !236, !noalias !239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %962 = lshr <2 x i64> %915, splat (i64 47)
  %963 = load <2 x i64>, ptr %876, align 1, !alias.scope !248, !noalias !250
  %964 = xor <2 x i64> %962, %963
  %965 = xor <2 x i64> %964, %915
  %966 = bitcast <2 x i64> %965 to <4 x i32>
  %967 = shufflevector <4 x i32> %966, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %968 = bitcast <4 x i32> %967 to <2 x i64>
  %969 = and <2 x i64> %965, splat (i64 4294967295)
  %970 = mul nuw <2 x i64> %969, splat (i64 2654435761)
  %971 = mul <2 x i64> %968, splat (i64 -7046029290881679360)
  %972 = add <2 x i64> %971, %970
  store <2 x i64> %972, ptr %0, align 16, !alias.scope !245, !noalias !251
  %973 = lshr <2 x i64> %929, splat (i64 47)
  %974 = load <2 x i64>, ptr %877, align 1, !alias.scope !248, !noalias !250
  %975 = xor <2 x i64> %973, %974
  %976 = xor <2 x i64> %975, %929
  %977 = bitcast <2 x i64> %976 to <4 x i32>
  %978 = shufflevector <4 x i32> %977, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %979 = bitcast <4 x i32> %978 to <2 x i64>
  %980 = and <2 x i64> %976, splat (i64 4294967295)
  %981 = mul nuw <2 x i64> %980, splat (i64 2654435761)
  %982 = mul <2 x i64> %979, splat (i64 -7046029290881679360)
  %983 = add <2 x i64> %982, %981
  store <2 x i64> %983, ptr %873, align 16, !alias.scope !245, !noalias !251
  %984 = lshr <2 x i64> %943, splat (i64 47)
  %985 = load <2 x i64>, ptr %878, align 1, !alias.scope !248, !noalias !250
  %986 = xor <2 x i64> %984, %985
  %987 = xor <2 x i64> %986, %943
  %988 = bitcast <2 x i64> %987 to <4 x i32>
  %989 = shufflevector <4 x i32> %988, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %990 = bitcast <4 x i32> %989 to <2 x i64>
  %991 = and <2 x i64> %987, splat (i64 4294967295)
  %992 = mul nuw <2 x i64> %991, splat (i64 2654435761)
  %993 = mul <2 x i64> %990, splat (i64 -7046029290881679360)
  %994 = add <2 x i64> %993, %992
  store <2 x i64> %994, ptr %874, align 16, !alias.scope !245, !noalias !251
  %995 = lshr <2 x i64> %957, splat (i64 47)
  %996 = load <2 x i64>, ptr %879, align 1, !alias.scope !248, !noalias !250
  %997 = xor <2 x i64> %995, %996
  %998 = xor <2 x i64> %997, %957
  %999 = bitcast <2 x i64> %998 to <4 x i32>
  %1000 = shufflevector <4 x i32> %999, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1001 = bitcast <4 x i32> %1000 to <2 x i64>
  %1002 = and <2 x i64> %998, splat (i64 4294967295)
  %1003 = mul nuw <2 x i64> %1002, splat (i64 2654435761)
  %1004 = mul <2 x i64> %1001, splat (i64 -7046029290881679360)
  %1005 = add <2 x i64> %1004, %1003
  store <2 x i64> %1005, ptr %875, align 16, !alias.scope !245, !noalias !251
  %1006 = shl nuw nsw i64 %884, 6
  %1007 = getelementptr inbounds nuw i8, ptr %882, i64 %1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %1008 = icmp eq i64 %884, 4
  br i1 %1008, label %1308, label %1009

1009:                                             ; preds = %960, %1009
  %1010 = phi <2 x i64> [ %1073, %1009 ], [ %1005, %960 ]
  %1011 = phi <2 x i64> [ %1059, %1009 ], [ %994, %960 ]
  %1012 = phi <2 x i64> [ %1045, %1009 ], [ %983, %960 ]
  %1013 = phi <2 x i64> [ %1031, %1009 ], [ %972, %960 ]
  %1014 = phi i64 [ %1074, %1009 ], [ 0, %960 ]
  %1015 = shl i64 %1014, 6
  %1016 = getelementptr inbounds nuw i8, ptr %1007, i64 %1015
  %1017 = getelementptr inbounds nuw i8, ptr %1016, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %1017, i32 0, i32 3, i32 1), !noalias !259
  %1018 = shl i64 %1014, 3
  %1019 = getelementptr inbounds nuw i8, ptr %14, i64 %1018
  %1020 = load <2 x i64>, ptr %1016, align 1, !alias.scope !255, !noalias !260
  %1021 = load <2 x i64>, ptr %1019, align 1, !alias.scope !257, !noalias !261
  %1022 = xor <2 x i64> %1021, %1020
  %1023 = bitcast <2 x i64> %1022 to <4 x i32>
  %1024 = shufflevector <4 x i32> %1023, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1025 = bitcast <4 x i32> %1024 to <2 x i64>
  %1026 = and <2 x i64> %1022, splat (i64 4294967295)
  %1027 = and <2 x i64> %1025, splat (i64 4294967295)
  %1028 = mul nuw <2 x i64> %1027, %1026
  %1029 = shufflevector <2 x i64> %1020, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1030 = add <2 x i64> %1013, %1029
  %1031 = add <2 x i64> %1030, %1028
  %1032 = getelementptr inbounds nuw i8, ptr %1016, i64 16
  %1033 = load <2 x i64>, ptr %1032, align 1, !alias.scope !255, !noalias !260
  %1034 = getelementptr inbounds nuw i8, ptr %1019, i64 16
  %1035 = load <2 x i64>, ptr %1034, align 1, !alias.scope !257, !noalias !261
  %1036 = xor <2 x i64> %1035, %1033
  %1037 = bitcast <2 x i64> %1036 to <4 x i32>
  %1038 = shufflevector <4 x i32> %1037, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1039 = bitcast <4 x i32> %1038 to <2 x i64>
  %1040 = and <2 x i64> %1036, splat (i64 4294967295)
  %1041 = and <2 x i64> %1039, splat (i64 4294967295)
  %1042 = mul nuw <2 x i64> %1041, %1040
  %1043 = shufflevector <2 x i64> %1033, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1044 = add <2 x i64> %1012, %1043
  %1045 = add <2 x i64> %1044, %1042
  %1046 = getelementptr inbounds nuw i8, ptr %1016, i64 32
  %1047 = load <2 x i64>, ptr %1046, align 1, !alias.scope !255, !noalias !260
  %1048 = getelementptr inbounds nuw i8, ptr %1019, i64 32
  %1049 = load <2 x i64>, ptr %1048, align 1, !alias.scope !257, !noalias !261
  %1050 = xor <2 x i64> %1049, %1047
  %1051 = bitcast <2 x i64> %1050 to <4 x i32>
  %1052 = shufflevector <4 x i32> %1051, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1053 = bitcast <4 x i32> %1052 to <2 x i64>
  %1054 = and <2 x i64> %1050, splat (i64 4294967295)
  %1055 = and <2 x i64> %1053, splat (i64 4294967295)
  %1056 = mul nuw <2 x i64> %1055, %1054
  %1057 = shufflevector <2 x i64> %1047, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1058 = add <2 x i64> %1011, %1057
  %1059 = add <2 x i64> %1058, %1056
  %1060 = getelementptr inbounds nuw i8, ptr %1016, i64 48
  %1061 = load <2 x i64>, ptr %1060, align 1, !alias.scope !255, !noalias !260
  %1062 = getelementptr inbounds nuw i8, ptr %1019, i64 48
  %1063 = load <2 x i64>, ptr %1062, align 1, !alias.scope !257, !noalias !261
  %1064 = xor <2 x i64> %1063, %1061
  %1065 = bitcast <2 x i64> %1064 to <4 x i32>
  %1066 = shufflevector <4 x i32> %1065, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1067 = bitcast <4 x i32> %1066 to <2 x i64>
  %1068 = and <2 x i64> %1064, splat (i64 4294967295)
  %1069 = and <2 x i64> %1067, splat (i64 4294967295)
  %1070 = mul nuw <2 x i64> %1069, %1068
  %1071 = shufflevector <2 x i64> %1061, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1072 = add <2 x i64> %1010, %1071
  %1073 = add <2 x i64> %1072, %1070
  %1074 = add nuw i64 %1014, 1
  %1075 = icmp eq i64 %1074, %961
  br i1 %1075, label %1076, label %1009, !llvm.loop !18

1076:                                             ; preds = %1009
  store <2 x i64> %1031, ptr %0, align 16, !alias.scope !262, !noalias !265
  store <2 x i64> %1045, ptr %873, align 16, !alias.scope !262, !noalias !265
  store <2 x i64> %1059, ptr %874, align 16, !alias.scope !262, !noalias !265
  store <2 x i64> %1073, ptr %875, align 16, !alias.scope !262, !noalias !265
  br label %1308

1077:                                             ; preds = %880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.assume(i1 %872), !noalias !222
  %1078 = load <2 x i64>, ptr %0, align 16, !alias.scope !275, !noalias !278
  %1079 = load <2 x i64>, ptr %873, align 16, !alias.scope !275, !noalias !278
  %1080 = load <2 x i64>, ptr %874, align 16, !alias.scope !275, !noalias !278
  %1081 = load <2 x i64>, ptr %875, align 16, !alias.scope !275, !noalias !278
  %1082 = getelementptr inbounds nuw i8, ptr %882, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %1082, i32 0, i32 3, i32 1), !noalias !281
  %1083 = load <2 x i64>, ptr %882, align 1, !alias.scope !271, !noalias !282
  %1084 = load <2 x i64>, ptr %887, align 1, !alias.scope !273, !noalias !283
  %1085 = xor <2 x i64> %1084, %1083
  %1086 = bitcast <2 x i64> %1085 to <4 x i32>
  %1087 = shufflevector <4 x i32> %1086, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1088 = bitcast <4 x i32> %1087 to <2 x i64>
  %1089 = and <2 x i64> %1085, splat (i64 4294967295)
  %1090 = and <2 x i64> %1088, splat (i64 4294967295)
  %1091 = mul nuw <2 x i64> %1090, %1089
  %1092 = shufflevector <2 x i64> %1083, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1093 = add <2 x i64> %1078, %1092
  %1094 = add <2 x i64> %1093, %1091
  %1095 = getelementptr inbounds nuw i8, ptr %882, i64 16
  %1096 = load <2 x i64>, ptr %1095, align 1, !alias.scope !271, !noalias !282
  %1097 = getelementptr inbounds nuw i8, ptr %887, i64 16
  %1098 = load <2 x i64>, ptr %1097, align 1, !alias.scope !273, !noalias !283
  %1099 = xor <2 x i64> %1098, %1096
  %1100 = bitcast <2 x i64> %1099 to <4 x i32>
  %1101 = shufflevector <4 x i32> %1100, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1102 = bitcast <4 x i32> %1101 to <2 x i64>
  %1103 = and <2 x i64> %1099, splat (i64 4294967295)
  %1104 = and <2 x i64> %1102, splat (i64 4294967295)
  %1105 = mul nuw <2 x i64> %1104, %1103
  %1106 = shufflevector <2 x i64> %1096, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1107 = add <2 x i64> %1079, %1106
  %1108 = add <2 x i64> %1107, %1105
  %1109 = getelementptr inbounds nuw i8, ptr %882, i64 32
  %1110 = load <2 x i64>, ptr %1109, align 1, !alias.scope !271, !noalias !282
  %1111 = getelementptr inbounds nuw i8, ptr %887, i64 32
  %1112 = load <2 x i64>, ptr %1111, align 1, !alias.scope !273, !noalias !283
  %1113 = xor <2 x i64> %1112, %1110
  %1114 = bitcast <2 x i64> %1113 to <4 x i32>
  %1115 = shufflevector <4 x i32> %1114, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1116 = bitcast <4 x i32> %1115 to <2 x i64>
  %1117 = and <2 x i64> %1113, splat (i64 4294967295)
  %1118 = and <2 x i64> %1116, splat (i64 4294967295)
  %1119 = mul nuw <2 x i64> %1118, %1117
  %1120 = shufflevector <2 x i64> %1110, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1121 = add <2 x i64> %1080, %1120
  %1122 = add <2 x i64> %1121, %1119
  %1123 = getelementptr inbounds nuw i8, ptr %882, i64 48
  %1124 = load <2 x i64>, ptr %1123, align 1, !alias.scope !271, !noalias !282
  %1125 = getelementptr inbounds nuw i8, ptr %887, i64 48
  %1126 = load <2 x i64>, ptr %1125, align 1, !alias.scope !273, !noalias !283
  %1127 = xor <2 x i64> %1126, %1124
  %1128 = bitcast <2 x i64> %1127 to <4 x i32>
  %1129 = shufflevector <4 x i32> %1128, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1130 = bitcast <4 x i32> %1129 to <2 x i64>
  %1131 = and <2 x i64> %1127, splat (i64 4294967295)
  %1132 = and <2 x i64> %1130, splat (i64 4294967295)
  %1133 = mul nuw <2 x i64> %1132, %1131
  %1134 = shufflevector <2 x i64> %1124, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1135 = add <2 x i64> %1081, %1134
  %1136 = add <2 x i64> %1135, %1133
  %1137 = getelementptr inbounds nuw i8, ptr %882, i64 64
  %1138 = getelementptr inbounds nuw i8, ptr %882, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %1138, i32 0, i32 3, i32 1), !noalias !281
  %1139 = getelementptr inbounds nuw i8, ptr %887, i64 8
  %1140 = load <2 x i64>, ptr %1137, align 1, !alias.scope !271, !noalias !282
  %1141 = load <2 x i64>, ptr %1139, align 1, !alias.scope !273, !noalias !283
  %1142 = xor <2 x i64> %1141, %1140
  %1143 = bitcast <2 x i64> %1142 to <4 x i32>
  %1144 = shufflevector <4 x i32> %1143, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1145 = bitcast <4 x i32> %1144 to <2 x i64>
  %1146 = and <2 x i64> %1142, splat (i64 4294967295)
  %1147 = and <2 x i64> %1145, splat (i64 4294967295)
  %1148 = mul nuw <2 x i64> %1147, %1146
  %1149 = shufflevector <2 x i64> %1140, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1150 = add <2 x i64> %1094, %1149
  %1151 = add <2 x i64> %1150, %1148
  %1152 = getelementptr inbounds nuw i8, ptr %882, i64 80
  %1153 = load <2 x i64>, ptr %1152, align 1, !alias.scope !271, !noalias !282
  %1154 = getelementptr inbounds nuw i8, ptr %887, i64 24
  %1155 = load <2 x i64>, ptr %1154, align 1, !alias.scope !273, !noalias !283
  %1156 = xor <2 x i64> %1155, %1153
  %1157 = bitcast <2 x i64> %1156 to <4 x i32>
  %1158 = shufflevector <4 x i32> %1157, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1159 = bitcast <4 x i32> %1158 to <2 x i64>
  %1160 = and <2 x i64> %1156, splat (i64 4294967295)
  %1161 = and <2 x i64> %1159, splat (i64 4294967295)
  %1162 = mul nuw <2 x i64> %1161, %1160
  %1163 = shufflevector <2 x i64> %1153, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1164 = add <2 x i64> %1108, %1163
  %1165 = add <2 x i64> %1164, %1162
  %1166 = getelementptr inbounds nuw i8, ptr %882, i64 96
  %1167 = load <2 x i64>, ptr %1166, align 1, !alias.scope !271, !noalias !282
  %1168 = getelementptr inbounds nuw i8, ptr %887, i64 40
  %1169 = load <2 x i64>, ptr %1168, align 1, !alias.scope !273, !noalias !283
  %1170 = xor <2 x i64> %1169, %1167
  %1171 = bitcast <2 x i64> %1170 to <4 x i32>
  %1172 = shufflevector <4 x i32> %1171, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1173 = bitcast <4 x i32> %1172 to <2 x i64>
  %1174 = and <2 x i64> %1170, splat (i64 4294967295)
  %1175 = and <2 x i64> %1173, splat (i64 4294967295)
  %1176 = mul nuw <2 x i64> %1175, %1174
  %1177 = shufflevector <2 x i64> %1167, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1178 = add <2 x i64> %1122, %1177
  %1179 = add <2 x i64> %1178, %1176
  %1180 = getelementptr inbounds nuw i8, ptr %882, i64 112
  %1181 = load <2 x i64>, ptr %1180, align 1, !alias.scope !271, !noalias !282
  %1182 = getelementptr inbounds nuw i8, ptr %887, i64 56
  %1183 = load <2 x i64>, ptr %1182, align 1, !alias.scope !273, !noalias !283
  %1184 = xor <2 x i64> %1183, %1181
  %1185 = bitcast <2 x i64> %1184 to <4 x i32>
  %1186 = shufflevector <4 x i32> %1185, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1187 = bitcast <4 x i32> %1186 to <2 x i64>
  %1188 = and <2 x i64> %1184, splat (i64 4294967295)
  %1189 = and <2 x i64> %1187, splat (i64 4294967295)
  %1190 = mul nuw <2 x i64> %1189, %1188
  %1191 = shufflevector <2 x i64> %1181, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1192 = add <2 x i64> %1136, %1191
  %1193 = add <2 x i64> %1192, %1190
  %1194 = getelementptr inbounds nuw i8, ptr %882, i64 128
  %1195 = getelementptr inbounds nuw i8, ptr %882, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %1195, i32 0, i32 3, i32 1), !noalias !281
  %1196 = load <2 x i64>, ptr %1194, align 1, !alias.scope !271, !noalias !282
  %1197 = load <2 x i64>, ptr %1097, align 1, !alias.scope !273, !noalias !283
  %1198 = xor <2 x i64> %1197, %1196
  %1199 = bitcast <2 x i64> %1198 to <4 x i32>
  %1200 = shufflevector <4 x i32> %1199, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1201 = bitcast <4 x i32> %1200 to <2 x i64>
  %1202 = and <2 x i64> %1198, splat (i64 4294967295)
  %1203 = and <2 x i64> %1201, splat (i64 4294967295)
  %1204 = mul nuw <2 x i64> %1203, %1202
  %1205 = shufflevector <2 x i64> %1196, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1206 = add <2 x i64> %1151, %1205
  %1207 = add <2 x i64> %1206, %1204
  %1208 = getelementptr inbounds nuw i8, ptr %882, i64 144
  %1209 = load <2 x i64>, ptr %1208, align 1, !alias.scope !271, !noalias !282
  %1210 = getelementptr inbounds nuw i8, ptr %887, i64 32
  %1211 = load <2 x i64>, ptr %1210, align 1, !alias.scope !273, !noalias !283
  %1212 = xor <2 x i64> %1211, %1209
  %1213 = bitcast <2 x i64> %1212 to <4 x i32>
  %1214 = shufflevector <4 x i32> %1213, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1215 = bitcast <4 x i32> %1214 to <2 x i64>
  %1216 = and <2 x i64> %1212, splat (i64 4294967295)
  %1217 = and <2 x i64> %1215, splat (i64 4294967295)
  %1218 = mul nuw <2 x i64> %1217, %1216
  %1219 = shufflevector <2 x i64> %1209, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1220 = add <2 x i64> %1165, %1219
  %1221 = add <2 x i64> %1220, %1218
  %1222 = getelementptr inbounds nuw i8, ptr %882, i64 160
  %1223 = load <2 x i64>, ptr %1222, align 1, !alias.scope !271, !noalias !282
  %1224 = getelementptr inbounds nuw i8, ptr %887, i64 48
  %1225 = load <2 x i64>, ptr %1224, align 1, !alias.scope !273, !noalias !283
  %1226 = xor <2 x i64> %1225, %1223
  %1227 = bitcast <2 x i64> %1226 to <4 x i32>
  %1228 = shufflevector <4 x i32> %1227, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1229 = bitcast <4 x i32> %1228 to <2 x i64>
  %1230 = and <2 x i64> %1226, splat (i64 4294967295)
  %1231 = and <2 x i64> %1229, splat (i64 4294967295)
  %1232 = mul nuw <2 x i64> %1231, %1230
  %1233 = shufflevector <2 x i64> %1223, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1234 = add <2 x i64> %1179, %1233
  %1235 = add <2 x i64> %1234, %1232
  %1236 = getelementptr inbounds nuw i8, ptr %882, i64 176
  %1237 = load <2 x i64>, ptr %1236, align 1, !alias.scope !271, !noalias !282
  %1238 = getelementptr inbounds nuw i8, ptr %887, i64 64
  %1239 = load <2 x i64>, ptr %1238, align 1, !alias.scope !273, !noalias !283
  %1240 = xor <2 x i64> %1239, %1237
  %1241 = bitcast <2 x i64> %1240 to <4 x i32>
  %1242 = shufflevector <4 x i32> %1241, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1243 = bitcast <4 x i32> %1242 to <2 x i64>
  %1244 = and <2 x i64> %1240, splat (i64 4294967295)
  %1245 = and <2 x i64> %1243, splat (i64 4294967295)
  %1246 = mul nuw <2 x i64> %1245, %1244
  %1247 = shufflevector <2 x i64> %1237, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1248 = add <2 x i64> %1193, %1247
  %1249 = add <2 x i64> %1248, %1246
  %1250 = getelementptr inbounds nuw i8, ptr %882, i64 192
  %1251 = getelementptr inbounds nuw i8, ptr %882, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %1251, i32 0, i32 3, i32 1), !noalias !281
  %1252 = getelementptr inbounds nuw i8, ptr %887, i64 24
  %1253 = load <2 x i64>, ptr %1250, align 1, !alias.scope !271, !noalias !282
  %1254 = load <2 x i64>, ptr %1252, align 1, !alias.scope !273, !noalias !283
  %1255 = xor <2 x i64> %1254, %1253
  %1256 = bitcast <2 x i64> %1255 to <4 x i32>
  %1257 = shufflevector <4 x i32> %1256, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1258 = bitcast <4 x i32> %1257 to <2 x i64>
  %1259 = and <2 x i64> %1255, splat (i64 4294967295)
  %1260 = and <2 x i64> %1258, splat (i64 4294967295)
  %1261 = mul nuw <2 x i64> %1260, %1259
  %1262 = shufflevector <2 x i64> %1253, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1263 = add <2 x i64> %1207, %1262
  %1264 = add <2 x i64> %1263, %1261
  %1265 = getelementptr inbounds nuw i8, ptr %882, i64 208
  %1266 = load <2 x i64>, ptr %1265, align 1, !alias.scope !271, !noalias !282
  %1267 = getelementptr inbounds nuw i8, ptr %887, i64 40
  %1268 = load <2 x i64>, ptr %1267, align 1, !alias.scope !273, !noalias !283
  %1269 = xor <2 x i64> %1268, %1266
  %1270 = bitcast <2 x i64> %1269 to <4 x i32>
  %1271 = shufflevector <4 x i32> %1270, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1272 = bitcast <4 x i32> %1271 to <2 x i64>
  %1273 = and <2 x i64> %1269, splat (i64 4294967295)
  %1274 = and <2 x i64> %1272, splat (i64 4294967295)
  %1275 = mul nuw <2 x i64> %1274, %1273
  %1276 = shufflevector <2 x i64> %1266, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1277 = add <2 x i64> %1221, %1276
  %1278 = add <2 x i64> %1277, %1275
  %1279 = getelementptr inbounds nuw i8, ptr %882, i64 224
  %1280 = load <2 x i64>, ptr %1279, align 1, !alias.scope !271, !noalias !282
  %1281 = getelementptr inbounds nuw i8, ptr %887, i64 56
  %1282 = load <2 x i64>, ptr %1281, align 1, !alias.scope !273, !noalias !283
  %1283 = xor <2 x i64> %1282, %1280
  %1284 = bitcast <2 x i64> %1283 to <4 x i32>
  %1285 = shufflevector <4 x i32> %1284, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1286 = bitcast <4 x i32> %1285 to <2 x i64>
  %1287 = and <2 x i64> %1283, splat (i64 4294967295)
  %1288 = and <2 x i64> %1286, splat (i64 4294967295)
  %1289 = mul nuw <2 x i64> %1288, %1287
  %1290 = shufflevector <2 x i64> %1280, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1291 = add <2 x i64> %1235, %1290
  %1292 = add <2 x i64> %1291, %1289
  %1293 = getelementptr inbounds nuw i8, ptr %882, i64 240
  %1294 = load <2 x i64>, ptr %1293, align 1, !alias.scope !271, !noalias !282
  %1295 = getelementptr inbounds nuw i8, ptr %887, i64 72
  %1296 = load <2 x i64>, ptr %1295, align 1, !alias.scope !273, !noalias !283
  %1297 = xor <2 x i64> %1296, %1294
  %1298 = bitcast <2 x i64> %1297 to <4 x i32>
  %1299 = shufflevector <4 x i32> %1298, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %1300 = bitcast <4 x i32> %1299 to <2 x i64>
  %1301 = and <2 x i64> %1297, splat (i64 4294967295)
  %1302 = and <2 x i64> %1300, splat (i64 4294967295)
  %1303 = mul nuw <2 x i64> %1302, %1301
  %1304 = shufflevector <2 x i64> %1294, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %1305 = add <2 x i64> %1249, %1304
  %1306 = add <2 x i64> %1305, %1303
  store <2 x i64> %1264, ptr %0, align 16, !alias.scope !275, !noalias !278
  store <2 x i64> %1278, ptr %873, align 16, !alias.scope !275, !noalias !278
  store <2 x i64> %1292, ptr %874, align 16, !alias.scope !275, !noalias !278
  store <2 x i64> %1306, ptr %875, align 16, !alias.scope !275, !noalias !278
  %1307 = add i64 %881, 4
  br label %1308

1308:                                             ; preds = %1076, %960, %1077
  %1309 = phi i64 [ %1307, %1077 ], [ 0, %960 ], [ %961, %1076 ]
  %1310 = getelementptr inbounds nuw i8, ptr %882, i64 256
  %1311 = icmp ult ptr %1310, %864
  br i1 %1311, label %880, label %1312, !llvm.loop !284

1312:                                             ; preds = %1308
  store i64 %1309, ptr %865, align 8, !alias.scope !222, !noalias !225
  %1313 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %1314 = getelementptr inbounds nuw i8, ptr %882, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1313, ptr noundef nonnull readonly align 1 dereferenceable(64) %1314, i64 64, i1 false)
  %1315 = load i32, ptr %18, align 64, !alias.scope !98, !noalias !101
  %1316 = ptrtoint ptr %1310 to i64
  %1317 = sub i64 %485, %1316
  %1318 = icmp eq i32 %1315, 0
  br label %1319

1319:                                             ; preds = %1312, %861, %852
  %1320 = phi i64 [ %1317, %1312 ], [ %487, %861 ], [ %859, %852 ]
  %1321 = phi i1 [ %1318, %1312 ], [ true, %861 ], [ true, %852 ]
  %1322 = phi ptr [ %1310, %1312 ], [ %483, %861 ], [ %854, %852 ]
  %1323 = icmp ult ptr %1322, %9
  tail call void @llvm.assume(i1 %1323)
  %1324 = icmp slt i64 %1320, 257
  tail call void @llvm.assume(i1 %1324)
  tail call void @llvm.assume(i1 %1321)
  %1325 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1325, ptr nonnull readonly align 1 %1322, i64 %1320, i1 false)
  %1326 = trunc i64 %1320 to i32
  br label %1327

1327:                                             ; preds = %1319, %24
  %1328 = phi i32 [ %1326, %1319 ], [ %29, %24 ]
  store i32 %1328, ptr %18, align 64, !alias.scope !98, !noalias !101
  br label %1329

1329:                                             ; preds = %5, %1327
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXHL64_default_avx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #4 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %44
  %8 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %60, %44 ]
  %9 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %52, %44 ]
  %10 = phi i64 [ 0, %5 ], [ %61, %44 ]
  %11 = shl i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi <4 x i64> [ %8, %7 ], [ %41, %13 ]
  %15 = phi <4 x i64> [ %9, %7 ], [ %30, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %42, %13 ]
  %17 = shl nuw nsw i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1), !noalias !288
  %20 = shl nuw nsw i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <4 x i64>, ptr %18, align 1, !alias.scope !285, !noalias !290
  %23 = load <4 x i64>, ptr %21, align 8, !alias.scope !288, !noalias !292
  %24 = xor <4 x i64> %23, %22
  %25 = lshr <4 x i64> %24, splat (i64 32)
  %26 = and <4 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <4 x i64> %26, %25
  %28 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %29 = add <4 x i64> %15, %28
  %30 = add <4 x i64> %29, %27
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %32 = load <4 x i64>, ptr %31, align 1, !alias.scope !285, !noalias !290
  %33 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %34 = load <4 x i64>, ptr %33, align 8, !alias.scope !288, !noalias !292
  %35 = xor <4 x i64> %34, %32
  %36 = lshr <4 x i64> %35, splat (i64 32)
  %37 = and <4 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <4 x i64> %37, %36
  %39 = shufflevector <4 x i64> %32, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %40 = add <4 x i64> %14, %39
  %41 = add <4 x i64> %40, %38
  %42 = add nuw nsw i64 %16, 1
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %13, !llvm.loop !293

44:                                               ; preds = %13
  %45 = lshr <4 x i64> %30, splat (i64 47)
  %46 = xor <4 x i64> %45, %30
  %47 = xor <4 x i64> %46, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, splat (i64 2654435761)
  %51 = mul <4 x i64> %48, splat (i64 -7046029290881679360)
  %52 = add <4 x i64> %50, %51
  %53 = lshr <4 x i64> %41, splat (i64 47)
  %54 = xor <4 x i64> %53, %41
  %55 = xor <4 x i64> %54, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %56 = lshr <4 x i64> %55, splat (i64 32)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, splat (i64 2654435761)
  %59 = mul <4 x i64> %56, splat (i64 -7046029290881679360)
  %60 = add <4 x i64> %58, %59
  %61 = add nuw nsw i64 %10, 1
  %62 = icmp eq i64 %61, %6
  br i1 %62, label %63, label %7, !llvm.loop !20

63:                                               ; preds = %44, %2
  %64 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %60, %44 ]
  %65 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %52, %44 ]
  %66 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %66)
  %67 = and i64 %3, -1024
  %68 = lshr i64 %3, 6
  %69 = and i64 %68, 15
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %63, %72
  %73 = phi <4 x i64> [ %100, %72 ], [ %64, %63 ]
  %74 = phi <4 x i64> [ %89, %72 ], [ %65, %63 ]
  %75 = phi i64 [ %101, %72 ], [ 0, %63 ]
  %76 = shl nuw nsw i64 %75, 6
  %77 = getelementptr inbounds nuw i8, ptr %70, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %78, i32 0, i32 3, i32 1), !noalias !297
  %79 = shl nuw nsw i64 %75, 3
  %80 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %79
  %81 = load <4 x i64>, ptr %77, align 1, !alias.scope !294, !noalias !299
  %82 = load <4 x i64>, ptr %80, align 8, !alias.scope !297, !noalias !301
  %83 = xor <4 x i64> %82, %81
  %84 = lshr <4 x i64> %83, splat (i64 32)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %88 = add <4 x i64> %74, %87
  %89 = add <4 x i64> %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %91 = load <4 x i64>, ptr %90, align 1, !alias.scope !294, !noalias !299
  %92 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %93 = load <4 x i64>, ptr %92, align 8, !alias.scope !297, !noalias !301
  %94 = xor <4 x i64> %93, %91
  %95 = lshr <4 x i64> %94, splat (i64 32)
  %96 = and <4 x i64> %94, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, %95
  %98 = shufflevector <4 x i64> %91, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %99 = add <4 x i64> %73, %98
  %100 = add <4 x i64> %99, %97
  %101 = add nuw nsw i64 %75, 1
  %102 = icmp eq i64 %101, %69
  br i1 %102, label %103, label %72, !llvm.loop !293

103:                                              ; preds = %72, %63
  %104 = phi <4 x i64> [ %64, %63 ], [ %100, %72 ]
  %105 = phi <4 x i64> [ %65, %63 ], [ %89, %72 ]
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %107 = getelementptr inbounds i8, ptr %106, i64 -64
  %108 = load <4 x i64>, ptr %107, align 1
  %109 = xor <4 x i64> %108, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %110 = lshr <4 x i64> %109, splat (i64 32)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %108, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %105, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds i8, ptr %106, i64 -32
  %117 = load <4 x i64>, ptr %116, align 1
  %118 = xor <4 x i64> %117, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %119 = lshr <4 x i64> %118, splat (i64 32)
  %120 = and <4 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <4 x i64> %120, %119
  %122 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %123 = add <4 x i64> %104, %122
  %124 = add <4 x i64> %123, %121
  %125 = mul i64 %1, -7046029288634856825
  %126 = extractelement <4 x i64> %115, i64 0
  %127 = xor i64 %126, 7914194659941938988
  %128 = extractelement <4 x i64> %115, i64 1
  %129 = xor i64 %128, -6611157965513653271
  %130 = zext i64 %127 to i128
  %131 = zext i64 %129 to i128
  %132 = mul nuw i128 %131, %130
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = add i64 %125, %135
  %137 = extractelement <4 x i64> %115, i64 2
  %138 = xor i64 %137, -1839215637059881052
  %139 = extractelement <4 x i64> %115, i64 3
  %140 = xor i64 %139, -3433288310154277810
  %141 = zext i64 %138 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %136, %146
  %148 = extractelement <4 x i64> %124, i64 0
  %149 = xor i64 %148, 5046485836271438973
  %150 = extractelement <4 x i64> %124, i64 1
  %151 = xor i64 %150, -8055285457383852172
  %152 = zext i64 %149 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %147, %157
  %159 = extractelement <4 x i64> %124, i64 2
  %160 = xor i64 %159, 5920048007935066598
  %161 = extractelement <4 x i64> %124, i64 3
  %162 = xor i64 %161, 7336514198459093435
  %163 = zext i64 %160 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = add i64 %158, %168
  %170 = lshr i64 %169, 37
  %171 = xor i64 %170, %169
  %172 = mul i64 %171, 1609587791953885689
  %173 = lshr i64 %172, 32
  %174 = xor i64 %173, %172
  ret i64 %174
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXHL64_seed_avx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #5 {
  %4 = alloca [192 x i8], align 64
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %179

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %67, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %48
  %12 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %9 ], [ %64, %48 ]
  %13 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %56, %48 ]
  %14 = phi i64 [ 0, %9 ], [ %65, %48 ]
  %15 = shl i64 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  br label %17

17:                                               ; preds = %11, %17
  %18 = phi <4 x i64> [ %12, %11 ], [ %45, %17 ]
  %19 = phi <4 x i64> [ %13, %11 ], [ %34, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %46, %17 ]
  %21 = shl nuw nsw i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1), !noalias !305
  %24 = shl nuw nsw i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1, !alias.scope !302, !noalias !307
  %27 = load <4 x i64>, ptr %25, align 8, !alias.scope !305, !noalias !309
  %28 = xor <4 x i64> %27, %26
  %29 = lshr <4 x i64> %28, splat (i64 32)
  %30 = and <4 x i64> %28, splat (i64 4294967295)
  %31 = mul nuw <4 x i64> %30, %29
  %32 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %33 = add <4 x i64> %19, %32
  %34 = add <4 x i64> %33, %31
  %35 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %36 = load <4 x i64>, ptr %35, align 1, !alias.scope !302, !noalias !307
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %38 = load <4 x i64>, ptr %37, align 8, !alias.scope !305, !noalias !309
  %39 = xor <4 x i64> %38, %36
  %40 = lshr <4 x i64> %39, splat (i64 32)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %36, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %18, %43
  %45 = add <4 x i64> %44, %42
  %46 = add nuw nsw i64 %20, 1
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %17, !llvm.loop !293

48:                                               ; preds = %17
  %49 = lshr <4 x i64> %34, splat (i64 47)
  %50 = xor <4 x i64> %49, %34
  %51 = xor <4 x i64> %50, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %52 = lshr <4 x i64> %51, splat (i64 32)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, splat (i64 2654435761)
  %55 = mul <4 x i64> %52, splat (i64 -7046029290881679360)
  %56 = add <4 x i64> %54, %55
  %57 = lshr <4 x i64> %45, splat (i64 47)
  %58 = xor <4 x i64> %57, %45
  %59 = xor <4 x i64> %58, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %62, %63
  %65 = add nuw nsw i64 %14, 1
  %66 = icmp eq i64 %65, %10
  br i1 %66, label %67, label %11, !llvm.loop !20

67:                                               ; preds = %48, %6
  %68 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %64, %48 ]
  %69 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %56, %48 ]
  %70 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %70)
  %71 = and i64 %7, -1024
  %72 = lshr i64 %7, 6
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %67, %76
  %77 = phi <4 x i64> [ %104, %76 ], [ %68, %67 ]
  %78 = phi <4 x i64> [ %93, %76 ], [ %69, %67 ]
  %79 = phi i64 [ %105, %76 ], [ 0, %67 ]
  %80 = shl nuw nsw i64 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %74, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %82, i32 0, i32 3, i32 1), !noalias !313
  %83 = shl nuw nsw i64 %79, 3
  %84 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %83
  %85 = load <4 x i64>, ptr %81, align 1, !alias.scope !310, !noalias !315
  %86 = load <4 x i64>, ptr %84, align 8, !alias.scope !313, !noalias !317
  %87 = xor <4 x i64> %86, %85
  %88 = lshr <4 x i64> %87, splat (i64 32)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %85, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = add <4 x i64> %78, %91
  %93 = add <4 x i64> %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %95 = load <4 x i64>, ptr %94, align 1, !alias.scope !310, !noalias !315
  %96 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %97 = load <4 x i64>, ptr %96, align 8, !alias.scope !313, !noalias !317
  %98 = xor <4 x i64> %97, %95
  %99 = lshr <4 x i64> %98, splat (i64 32)
  %100 = and <4 x i64> %98, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %100, %99
  %102 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %103 = add <4 x i64> %77, %102
  %104 = add <4 x i64> %103, %101
  %105 = add nuw nsw i64 %79, 1
  %106 = icmp eq i64 %105, %73
  br i1 %106, label %107, label %76, !llvm.loop !293

107:                                              ; preds = %76, %67
  %108 = phi <4 x i64> [ %68, %67 ], [ %104, %76 ]
  %109 = phi <4 x i64> [ %69, %67 ], [ %93, %76 ]
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %111 = getelementptr inbounds i8, ptr %110, i64 -64
  %112 = load <4 x i64>, ptr %111, align 1
  %113 = xor <4 x i64> %112, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %114 = lshr <4 x i64> %113, splat (i64 32)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %112, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %109, %117
  %119 = add <4 x i64> %118, %116
  %120 = getelementptr inbounds i8, ptr %110, i64 -32
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = xor <4 x i64> %121, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %123 = lshr <4 x i64> %122, splat (i64 32)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %121, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %108, %126
  %128 = add <4 x i64> %127, %125
  %129 = mul i64 %1, -7046029288634856825
  %130 = extractelement <4 x i64> %119, i64 0
  %131 = xor i64 %130, 7914194659941938988
  %132 = extractelement <4 x i64> %119, i64 1
  %133 = xor i64 %132, -6611157965513653271
  %134 = zext i64 %131 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %129, %139
  %141 = extractelement <4 x i64> %119, i64 2
  %142 = xor i64 %141, -1839215637059881052
  %143 = extractelement <4 x i64> %119, i64 3
  %144 = xor i64 %143, -3433288310154277810
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %140, %150
  %152 = extractelement <4 x i64> %128, i64 0
  %153 = xor i64 %152, 5046485836271438973
  %154 = extractelement <4 x i64> %128, i64 1
  %155 = xor i64 %154, -8055285457383852172
  %156 = zext i64 %153 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %151, %161
  %163 = extractelement <4 x i64> %128, i64 2
  %164 = xor i64 %163, 5920048007935066598
  %165 = extractelement <4 x i64> %128, i64 3
  %166 = xor i64 %165, 7336514198459093435
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %162, %172
  %174 = lshr i64 %173, 37
  %175 = xor i64 %174, %173
  %176 = mul i64 %175, 1609587791953885689
  %177 = lshr i64 %176, 32
  %178 = xor i64 %177, %176
  br label %396

179:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %180 = sub i64 0, %2
  %181 = insertelement <4 x i64> poison, i64 %2, i64 0
  %182 = insertelement <4 x i64> %181, i64 %180, i64 1
  %183 = insertelement <4 x i64> %182, i64 %2, i64 2
  %184 = insertelement <4 x i64> %183, i64 %180, i64 3
  %185 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #20, !srcloc !318
  %186 = ptrtoint ptr %185 to i64
  %187 = and i64 %186, 31
  %188 = icmp eq i64 %187, 0
  call void @llvm.assume(i1 %188)
  %189 = add <4 x i64> %184, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %189, ptr %185, align 32
  %190 = add <4 x i64> %184, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %191 = getelementptr inbounds nuw i8, ptr %185, i64 32
  store <4 x i64> %190, ptr %191, align 32
  %192 = add <4 x i64> %184, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 64
  store <4 x i64> %192, ptr %193, align 32
  %194 = add <4 x i64> %184, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %195 = getelementptr inbounds nuw i8, ptr %185, i64 96
  store <4 x i64> %194, ptr %195, align 32
  %196 = add <4 x i64> %184, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %197 = getelementptr inbounds nuw i8, ptr %185, i64 128
  store <4 x i64> %196, ptr %197, align 32
  %198 = add <4 x i64> %184, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 160
  store <4 x i64> %198, ptr %199, align 32
  %200 = add i64 %1, -1
  %201 = icmp ult i64 %200, 1024
  br i1 %201, label %264, label %202

202:                                              ; preds = %179
  %203 = lshr i64 %200, 10
  %204 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %205 = load <4 x i64>, ptr %204, align 64, !alias.scope !319, !noalias !322
  %206 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %207 = load <4 x i64>, ptr %206, align 32, !alias.scope !319, !noalias !322
  br label %208

208:                                              ; preds = %202, %245
  %209 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %202 ], [ %261, %245 ]
  %210 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %202 ], [ %253, %245 ]
  %211 = phi i64 [ 0, %202 ], [ %262, %245 ]
  %212 = shl i64 %211, 10
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 %212
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  br label %214

214:                                              ; preds = %208, %214
  %215 = phi <4 x i64> [ %209, %208 ], [ %242, %214 ]
  %216 = phi <4 x i64> [ %210, %208 ], [ %231, %214 ]
  %217 = phi i64 [ 0, %208 ], [ %243, %214 ]
  %218 = shl nuw nsw i64 %217, 6
  %219 = getelementptr inbounds nuw i8, ptr %213, i64 %218
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %220, i32 0, i32 3, i32 1), !noalias !327
  %221 = shl nuw nsw i64 %217, 3
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 %221
  %223 = load <4 x i64>, ptr %219, align 1, !alias.scope !324, !noalias !329
  %224 = load <4 x i64>, ptr %222, align 8, !alias.scope !327, !noalias !331
  %225 = xor <4 x i64> %224, %223
  %226 = lshr <4 x i64> %225, splat (i64 32)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %223, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %216, %229
  %231 = add <4 x i64> %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %233 = load <4 x i64>, ptr %232, align 1, !alias.scope !324, !noalias !329
  %234 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %235 = load <4 x i64>, ptr %234, align 8, !alias.scope !327, !noalias !331
  %236 = xor <4 x i64> %235, %233
  %237 = lshr <4 x i64> %236, splat (i64 32)
  %238 = and <4 x i64> %236, splat (i64 4294967295)
  %239 = mul nuw <4 x i64> %238, %237
  %240 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %241 = add <4 x i64> %215, %240
  %242 = add <4 x i64> %241, %239
  %243 = add nuw nsw i64 %217, 1
  %244 = icmp eq i64 %243, 16
  br i1 %244, label %245, label %214, !llvm.loop !293

245:                                              ; preds = %214
  %246 = lshr <4 x i64> %231, splat (i64 47)
  %247 = xor <4 x i64> %205, %246
  %248 = xor <4 x i64> %247, %231
  %249 = lshr <4 x i64> %248, splat (i64 32)
  %250 = and <4 x i64> %248, splat (i64 4294967295)
  %251 = mul nuw <4 x i64> %250, splat (i64 2654435761)
  %252 = mul <4 x i64> %249, splat (i64 -7046029290881679360)
  %253 = add <4 x i64> %251, %252
  %254 = lshr <4 x i64> %242, splat (i64 47)
  %255 = xor <4 x i64> %207, %254
  %256 = xor <4 x i64> %255, %242
  %257 = lshr <4 x i64> %256, splat (i64 32)
  %258 = and <4 x i64> %256, splat (i64 4294967295)
  %259 = mul nuw <4 x i64> %258, splat (i64 2654435761)
  %260 = mul <4 x i64> %257, splat (i64 -7046029290881679360)
  %261 = add <4 x i64> %259, %260
  %262 = add nuw nsw i64 %211, 1
  %263 = icmp eq i64 %262, %203
  br i1 %263, label %264, label %208, !llvm.loop !20

264:                                              ; preds = %245, %179
  %265 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %179 ], [ %261, %245 ]
  %266 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %179 ], [ %253, %245 ]
  %267 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %267)
  %268 = and i64 %200, -1024
  %269 = lshr i64 %200, 6
  %270 = and i64 %269, 15
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 %268
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %272 = icmp eq i64 %270, 0
  br i1 %272, label %304, label %273

273:                                              ; preds = %264, %273
  %274 = phi <4 x i64> [ %301, %273 ], [ %265, %264 ]
  %275 = phi <4 x i64> [ %290, %273 ], [ %266, %264 ]
  %276 = phi i64 [ %302, %273 ], [ 0, %264 ]
  %277 = shl nuw nsw i64 %276, 6
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 %277
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %279, i32 0, i32 3, i32 1), !noalias !335
  %280 = shl nuw nsw i64 %276, 3
  %281 = getelementptr inbounds nuw i8, ptr %4, i64 %280
  %282 = load <4 x i64>, ptr %278, align 1, !alias.scope !332, !noalias !337
  %283 = load <4 x i64>, ptr %281, align 8, !alias.scope !335, !noalias !339
  %284 = xor <4 x i64> %283, %282
  %285 = lshr <4 x i64> %284, splat (i64 32)
  %286 = and <4 x i64> %284, splat (i64 4294967295)
  %287 = mul nuw <4 x i64> %286, %285
  %288 = shufflevector <4 x i64> %282, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %289 = add <4 x i64> %275, %288
  %290 = add <4 x i64> %289, %287
  %291 = getelementptr inbounds nuw i8, ptr %278, i64 32
  %292 = load <4 x i64>, ptr %291, align 1, !alias.scope !332, !noalias !337
  %293 = getelementptr inbounds nuw i8, ptr %281, i64 32
  %294 = load <4 x i64>, ptr %293, align 8, !alias.scope !335, !noalias !339
  %295 = xor <4 x i64> %294, %292
  %296 = lshr <4 x i64> %295, splat (i64 32)
  %297 = and <4 x i64> %295, splat (i64 4294967295)
  %298 = mul nuw <4 x i64> %297, %296
  %299 = shufflevector <4 x i64> %292, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %300 = add <4 x i64> %274, %299
  %301 = add <4 x i64> %300, %298
  %302 = add nuw nsw i64 %276, 1
  %303 = icmp eq i64 %302, %270
  br i1 %303, label %304, label %273, !llvm.loop !293

304:                                              ; preds = %273, %264
  %305 = phi <4 x i64> [ %265, %264 ], [ %301, %273 ]
  %306 = phi <4 x i64> [ %266, %264 ], [ %290, %273 ]
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %308 = getelementptr inbounds i8, ptr %307, i64 -64
  %309 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %310 = load <4 x i64>, ptr %308, align 1
  %311 = load <4 x i64>, ptr %309, align 1
  %312 = xor <4 x i64> %311, %310
  %313 = lshr <4 x i64> %312, splat (i64 32)
  %314 = and <4 x i64> %312, splat (i64 4294967295)
  %315 = mul nuw <4 x i64> %314, %313
  %316 = shufflevector <4 x i64> %310, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %317 = add <4 x i64> %306, %316
  %318 = add <4 x i64> %317, %315
  %319 = getelementptr inbounds i8, ptr %307, i64 -32
  %320 = load <4 x i64>, ptr %319, align 1
  %321 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %322 = load <4 x i64>, ptr %321, align 1
  %323 = xor <4 x i64> %322, %320
  %324 = lshr <4 x i64> %323, splat (i64 32)
  %325 = and <4 x i64> %323, splat (i64 4294967295)
  %326 = mul nuw <4 x i64> %325, %324
  %327 = shufflevector <4 x i64> %320, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %328 = add <4 x i64> %305, %327
  %329 = add <4 x i64> %328, %326
  %330 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %331 = mul i64 %1, -7046029288634856825
  %332 = extractelement <4 x i64> %318, i64 0
  %333 = load i64, ptr %330, align 1, !alias.scope !340, !noalias !343
  %334 = xor i64 %333, %332
  %335 = extractelement <4 x i64> %318, i64 1
  %336 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %337 = load i64, ptr %336, align 1, !alias.scope !340, !noalias !343
  %338 = xor i64 %337, %335
  %339 = zext i64 %334 to i128
  %340 = zext i64 %338 to i128
  %341 = mul nuw i128 %340, %339
  %342 = lshr i128 %341, 64
  %343 = xor i128 %342, %341
  %344 = trunc i128 %343 to i64
  %345 = add i64 %331, %344
  %346 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %347 = extractelement <4 x i64> %318, i64 2
  %348 = load i64, ptr %346, align 1, !alias.scope !340, !noalias !343
  %349 = xor i64 %348, %347
  %350 = extractelement <4 x i64> %318, i64 3
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %352 = load i64, ptr %351, align 1, !alias.scope !340, !noalias !343
  %353 = xor i64 %352, %350
  %354 = zext i64 %349 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %345, %359
  %361 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %362 = extractelement <4 x i64> %329, i64 0
  %363 = load i64, ptr %361, align 1, !alias.scope !340, !noalias !343
  %364 = xor i64 %363, %362
  %365 = extractelement <4 x i64> %329, i64 1
  %366 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %367 = load i64, ptr %366, align 1, !alias.scope !340, !noalias !343
  %368 = xor i64 %367, %365
  %369 = zext i64 %364 to i128
  %370 = zext i64 %368 to i128
  %371 = mul nuw i128 %370, %369
  %372 = lshr i128 %371, 64
  %373 = xor i128 %372, %371
  %374 = trunc i128 %373 to i64
  %375 = add i64 %360, %374
  %376 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %377 = extractelement <4 x i64> %329, i64 2
  %378 = load i64, ptr %376, align 1, !alias.scope !340, !noalias !343
  %379 = xor i64 %378, %377
  %380 = extractelement <4 x i64> %329, i64 3
  %381 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %382 = load i64, ptr %381, align 1, !alias.scope !340, !noalias !343
  %383 = xor i64 %382, %380
  %384 = zext i64 %379 to i128
  %385 = zext i64 %383 to i128
  %386 = mul nuw i128 %385, %384
  %387 = lshr i128 %386, 64
  %388 = xor i128 %387, %386
  %389 = trunc i128 %388 to i64
  %390 = add i64 %375, %389
  %391 = lshr i64 %390, 37
  %392 = xor i64 %391, %390
  %393 = mul i64 %392, 1609587791953885689
  %394 = lshr i64 %393, 32
  %395 = xor i64 %394, %393
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20
  br label %396

396:                                              ; preds = %107, %304
  %397 = phi i64 [ %178, %107 ], [ %395, %304 ]
  ret i64 %397
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXHL64_secret_avx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) #4 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ugt i64 %7, %8
  br i1 %12, label %75, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = load <4 x i64>, ptr %15, align 1, !alias.scope !345, !noalias !348
  %17 = getelementptr inbounds i8, ptr %14, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1, !alias.scope !345, !noalias !348
  br label %19

19:                                               ; preds = %13, %56
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %13 ], [ %72, %56 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %13 ], [ %64, %56 ]
  %22 = phi i64 [ 0, %13 ], [ %73, %56 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %20, %19 ], [ %53, %25 ]
  %27 = phi <4 x i64> [ %21, %19 ], [ %42, %25 ]
  %28 = phi i64 [ 0, %19 ], [ %54, %25 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1), !noalias !353
  %32 = shl i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load <4 x i64>, ptr %30, align 1, !alias.scope !350, !noalias !355
  %35 = load <4 x i64>, ptr %33, align 1, !alias.scope !353, !noalias !357
  %36 = xor <4 x i64> %35, %34
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, %37
  %40 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %41 = add <4 x i64> %27, %40
  %42 = add <4 x i64> %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %44 = load <4 x i64>, ptr %43, align 1, !alias.scope !350, !noalias !355
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %46 = load <4 x i64>, ptr %45, align 1, !alias.scope !353, !noalias !357
  %47 = xor <4 x i64> %46, %44
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %52 = add <4 x i64> %26, %51
  %53 = add <4 x i64> %52, %50
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %25, !llvm.loop !293

56:                                               ; preds = %25
  %57 = lshr <4 x i64> %42, splat (i64 47)
  %58 = xor <4 x i64> %16, %57
  %59 = xor <4 x i64> %58, %42
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %62, %63
  %65 = lshr <4 x i64> %53, splat (i64 47)
  %66 = xor <4 x i64> %18, %65
  %67 = xor <4 x i64> %66, %53
  %68 = lshr <4 x i64> %67, splat (i64 32)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, splat (i64 2654435761)
  %71 = mul <4 x i64> %68, splat (i64 -7046029290881679360)
  %72 = add <4 x i64> %70, %71
  %73 = add nuw i64 %22, 1
  %74 = icmp ult i64 %73, %9
  br i1 %74, label %19, label %75, !llvm.loop !20

75:                                               ; preds = %56, %4
  %76 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %72, %56 ]
  %77 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %64, %56 ]
  %78 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %78)
  %79 = mul i64 %9, %7
  %80 = lshr i64 %10, 6
  %81 = lshr i64 %3, 3
  %82 = icmp samesign ule i64 %80, %81
  tail call void @llvm.assume(i1 %82)
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %84 = icmp ult i64 %10, 64
  br i1 %84, label %116, label %85

85:                                               ; preds = %75, %85
  %86 = phi <4 x i64> [ %113, %85 ], [ %76, %75 ]
  %87 = phi <4 x i64> [ %102, %85 ], [ %77, %75 ]
  %88 = phi i64 [ %114, %85 ], [ 0, %75 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1), !noalias !361
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1, !alias.scope !358, !noalias !363
  %95 = load <4 x i64>, ptr %93, align 1, !alias.scope !361, !noalias !365
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %87, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %104 = load <4 x i64>, ptr %103, align 1, !alias.scope !358, !noalias !363
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %106 = load <4 x i64>, ptr %105, align 1, !alias.scope !361, !noalias !365
  %107 = xor <4 x i64> %106, %104
  %108 = lshr <4 x i64> %107, splat (i64 32)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %86, %111
  %113 = add <4 x i64> %112, %110
  %114 = add nuw nsw i64 %88, 1
  %115 = icmp samesign ult i64 %114, %80
  br i1 %115, label %85, label %116, !llvm.loop !293

116:                                              ; preds = %85, %75
  %117 = phi <4 x i64> [ %76, %75 ], [ %113, %85 ]
  %118 = phi <4 x i64> [ %77, %75 ], [ %102, %85 ]
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %120 = getelementptr inbounds i8, ptr %119, i64 -64
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %122 = getelementptr inbounds i8, ptr %121, i64 -71
  %123 = load <4 x i64>, ptr %120, align 1
  %124 = load <4 x i64>, ptr %122, align 1
  %125 = xor <4 x i64> %124, %123
  %126 = lshr <4 x i64> %125, splat (i64 32)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %130 = add <4 x i64> %118, %129
  %131 = add <4 x i64> %130, %128
  %132 = getelementptr inbounds i8, ptr %119, i64 -32
  %133 = load <4 x i64>, ptr %132, align 1
  %134 = getelementptr inbounds i8, ptr %121, i64 -39
  %135 = load <4 x i64>, ptr %134, align 1
  %136 = xor <4 x i64> %135, %133
  %137 = lshr <4 x i64> %136, splat (i64 32)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %133, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = add <4 x i64> %117, %140
  %142 = add <4 x i64> %141, %139
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %144 = mul i64 %1, -7046029288634856825
  %145 = extractelement <4 x i64> %131, i64 0
  %146 = load i64, ptr %143, align 1, !alias.scope !366, !noalias !369
  %147 = xor i64 %146, %145
  %148 = extractelement <4 x i64> %131, i64 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %150 = load i64, ptr %149, align 1, !alias.scope !366, !noalias !369
  %151 = xor i64 %150, %148
  %152 = zext i64 %147 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %144, %157
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %160 = extractelement <4 x i64> %131, i64 2
  %161 = load i64, ptr %159, align 1, !alias.scope !366, !noalias !369
  %162 = xor i64 %161, %160
  %163 = extractelement <4 x i64> %131, i64 3
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %165 = load i64, ptr %164, align 1, !alias.scope !366, !noalias !369
  %166 = xor i64 %165, %163
  %167 = zext i64 %162 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %158, %172
  %174 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %175 = extractelement <4 x i64> %142, i64 0
  %176 = load i64, ptr %174, align 1, !alias.scope !366, !noalias !369
  %177 = xor i64 %176, %175
  %178 = extractelement <4 x i64> %142, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %180 = load i64, ptr %179, align 1, !alias.scope !366, !noalias !369
  %181 = xor i64 %180, %178
  %182 = zext i64 %177 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %173, %187
  %189 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %190 = extractelement <4 x i64> %142, i64 2
  %191 = load i64, ptr %189, align 1, !alias.scope !366, !noalias !369
  %192 = xor i64 %191, %190
  %193 = extractelement <4 x i64> %142, i64 3
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %195 = load i64, ptr %194, align 1, !alias.scope !366, !noalias !369
  %196 = xor i64 %195, %193
  %197 = zext i64 %192 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %188, %202
  %204 = lshr i64 %203, 37
  %205 = xor i64 %204, %203
  %206 = mul i64 %205, 1609587791953885689
  %207 = lshr i64 %206, 32
  %208 = xor i64 %207, %206
  ret i64 %208
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noundef i32 @XXH3_update_avx2(ptr noundef %0, ptr noundef %1, i64 noundef %2) #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %675

7:                                                ; preds = %3
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %11 = load ptr, ptr %10, align 8, !alias.scope !371, !noalias !374
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = select i1 %12, ptr %13, ptr %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %16 = load i64, ptr %15, align 16, !alias.scope !371, !noalias !374
  %17 = add i64 %16, %2
  store i64 %17, ptr %15, align 16, !alias.scope !371, !noalias !374
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %19 = load i32, ptr %18, align 64, !alias.scope !371, !noalias !374
  %20 = icmp ult i32 %19, 257
  tail call void @llvm.assume(i1 %20)
  %21 = zext nneg i32 %19 to i64
  %22 = add i64 %2, %21
  %23 = icmp ult i64 %22, 257
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %27 = trunc i64 %2 to i32
  %28 = load i32, ptr %18, align 64, !alias.scope !371, !noalias !374
  %29 = add i32 %28, %27
  br label %673

30:                                               ; preds = %7
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %244, label %32

32:                                               ; preds = %30
  %33 = sub nuw nsw i32 256, %19
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr nonnull readonly align 1 %1, i64 %34, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %40 = load i64, ptr %39, align 8, !alias.scope !371, !noalias !374
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %42 = load i64, ptr %41, align 32, !alias.scope !371, !noalias !374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %43 = icmp ugt i64 %40, 3
  tail call void @llvm.assume(i1 %43)
  %44 = load i64, ptr %38, align 8, !alias.scope !376, !noalias !379
  %45 = icmp ult i64 %44, %40
  tail call void @llvm.assume(i1 %45)
  %46 = sub i64 %40, %44
  %47 = icmp ult i64 %46, 5
  br i1 %47, label %48, label %142

48:                                               ; preds = %32
  %49 = sub nuw nsw i64 4, %46
  %50 = shl i64 %44, 3
  %51 = getelementptr inbounds nuw i8, ptr %14, i64 %50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %52 = load <4 x i64>, ptr %0, align 32, !alias.scope !390, !noalias !393
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load <4 x i64>, ptr %53, align 32, !alias.scope !390, !noalias !393
  br label %55

55:                                               ; preds = %48, %55
  %56 = phi <4 x i64> [ %54, %48 ], [ %83, %55 ]
  %57 = phi <4 x i64> [ %52, %48 ], [ %72, %55 ]
  %58 = phi i64 [ 0, %48 ], [ %84, %55 ]
  %59 = shl i64 %58, 6
  %60 = getelementptr inbounds nuw i8, ptr %35, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %61, i32 0, i32 3, i32 1), !noalias !396
  %62 = shl i64 %58, 3
  %63 = getelementptr inbounds nuw i8, ptr %51, i64 %62
  %64 = load <4 x i64>, ptr %60, align 1, !alias.scope !386, !noalias !397
  %65 = load <4 x i64>, ptr %63, align 1, !alias.scope !388, !noalias !398
  %66 = xor <4 x i64> %65, %64
  %67 = lshr <4 x i64> %66, splat (i64 32)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = shufflevector <4 x i64> %64, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %71 = add <4 x i64> %57, %70
  %72 = add <4 x i64> %71, %69
  store <4 x i64> %72, ptr %0, align 32, !alias.scope !390, !noalias !393
  %73 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %74 = load <4 x i64>, ptr %73, align 1, !alias.scope !386, !noalias !397
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %76 = load <4 x i64>, ptr %75, align 1, !alias.scope !388, !noalias !398
  %77 = xor <4 x i64> %76, %74
  %78 = lshr <4 x i64> %77, splat (i64 32)
  %79 = and <4 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, %78
  %81 = shufflevector <4 x i64> %74, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %82 = add <4 x i64> %56, %81
  %83 = add <4 x i64> %82, %80
  store <4 x i64> %83, ptr %53, align 32, !alias.scope !390, !noalias !393
  %84 = add nuw i64 %58, 1
  %85 = icmp eq i64 %84, %46
  br i1 %85, label %86, label %55, !llvm.loop !293

86:                                               ; preds = %55
  %87 = getelementptr inbounds nuw i8, ptr %14, i64 %42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %88 = lshr <4 x i64> %72, splat (i64 47)
  %89 = load <4 x i64>, ptr %87, align 1, !alias.scope !402, !noalias !404
  %90 = xor <4 x i64> %89, %88
  %91 = xor <4 x i64> %90, %72
  %92 = lshr <4 x i64> %91, splat (i64 32)
  %93 = and <4 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, splat (i64 2654435761)
  %95 = mul <4 x i64> %92, splat (i64 -7046029290881679360)
  %96 = add <4 x i64> %94, %95
  store <4 x i64> %96, ptr %0, align 32, !alias.scope !399, !noalias !405
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %98 = lshr <4 x i64> %83, splat (i64 47)
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %100 = load <4 x i64>, ptr %99, align 1, !alias.scope !402, !noalias !404
  %101 = xor <4 x i64> %100, %98
  %102 = xor <4 x i64> %101, %83
  %103 = lshr <4 x i64> %102, splat (i64 32)
  %104 = and <4 x i64> %102, splat (i64 4294967295)
  %105 = mul nuw <4 x i64> %104, splat (i64 2654435761)
  %106 = mul <4 x i64> %103, splat (i64 -7046029290881679360)
  %107 = add <4 x i64> %105, %106
  store <4 x i64> %107, ptr %97, align 32, !alias.scope !399, !noalias !405
  %108 = shl nuw nsw i64 %46, 6
  %109 = getelementptr inbounds nuw i8, ptr %35, i64 %108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %110 = icmp eq i64 %46, 4
  br i1 %110, label %242, label %111

111:                                              ; preds = %86, %111
  %112 = phi <4 x i64> [ %139, %111 ], [ %107, %86 ]
  %113 = phi <4 x i64> [ %128, %111 ], [ %96, %86 ]
  %114 = phi i64 [ %140, %111 ], [ 0, %86 ]
  %115 = shl i64 %114, 6
  %116 = getelementptr inbounds nuw i8, ptr %109, i64 %115
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %117, i32 0, i32 3, i32 1), !noalias !413
  %118 = shl i64 %114, 3
  %119 = getelementptr inbounds nuw i8, ptr %14, i64 %118
  %120 = load <4 x i64>, ptr %116, align 1, !alias.scope !409, !noalias !414
  %121 = load <4 x i64>, ptr %119, align 1, !alias.scope !411, !noalias !415
  %122 = xor <4 x i64> %121, %120
  %123 = lshr <4 x i64> %122, splat (i64 32)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %120, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %113, %126
  %128 = add <4 x i64> %127, %125
  store <4 x i64> %128, ptr %0, align 32, !alias.scope !416, !noalias !419
  %129 = getelementptr inbounds nuw i8, ptr %116, i64 32
  %130 = load <4 x i64>, ptr %129, align 1, !alias.scope !409, !noalias !414
  %131 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %132 = load <4 x i64>, ptr %131, align 1, !alias.scope !411, !noalias !415
  %133 = xor <4 x i64> %132, %130
  %134 = lshr <4 x i64> %133, splat (i64 32)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = shufflevector <4 x i64> %130, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %138 = add <4 x i64> %112, %137
  %139 = add <4 x i64> %138, %136
  store <4 x i64> %139, ptr %97, align 32, !alias.scope !416, !noalias !419
  %140 = add nuw i64 %114, 1
  %141 = icmp eq i64 %140, %49
  br i1 %141, label %242, label %111, !llvm.loop !293

142:                                              ; preds = %32
  %143 = shl i64 %44, 3
  %144 = getelementptr inbounds nuw i8, ptr %14, i64 %143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %145 = ptrtoint ptr %0 to i64
  %146 = and i64 %145, 31
  %147 = icmp eq i64 %146, 0
  tail call void @llvm.assume(i1 %147), !noalias !376
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %148, i32 0, i32 3, i32 1), !noalias !429
  %149 = load <4 x i64>, ptr %35, align 32, !alias.scope !425, !noalias !430
  %150 = load <4 x i64>, ptr %144, align 1, !alias.scope !427, !noalias !431
  %151 = xor <4 x i64> %150, %149
  %152 = lshr <4 x i64> %151, splat (i64 32)
  %153 = and <4 x i64> %151, splat (i64 4294967295)
  %154 = mul nuw <4 x i64> %153, %152
  %155 = shufflevector <4 x i64> %149, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %156 = load <4 x i64>, ptr %0, align 32, !alias.scope !432, !noalias !435
  %157 = add <4 x i64> %156, %155
  %158 = add <4 x i64> %157, %154
  store <4 x i64> %158, ptr %0, align 32, !alias.scope !432, !noalias !435
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %160 = load <4 x i64>, ptr %159, align 32, !alias.scope !425, !noalias !430
  %161 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %162 = load <4 x i64>, ptr %161, align 1, !alias.scope !427, !noalias !431
  %163 = xor <4 x i64> %162, %160
  %164 = lshr <4 x i64> %163, splat (i64 32)
  %165 = and <4 x i64> %163, splat (i64 4294967295)
  %166 = mul nuw <4 x i64> %165, %164
  %167 = shufflevector <4 x i64> %160, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %169 = load <4 x i64>, ptr %168, align 32, !alias.scope !432, !noalias !435
  %170 = add <4 x i64> %169, %167
  %171 = add <4 x i64> %170, %166
  store <4 x i64> %171, ptr %168, align 32, !alias.scope !432, !noalias !435
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %173, i32 0, i32 3, i32 1), !noalias !429
  %174 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %175 = load <4 x i64>, ptr %172, align 32, !alias.scope !425, !noalias !430
  %176 = load <4 x i64>, ptr %174, align 1, !alias.scope !427, !noalias !431
  %177 = xor <4 x i64> %176, %175
  %178 = lshr <4 x i64> %177, splat (i64 32)
  %179 = and <4 x i64> %177, splat (i64 4294967295)
  %180 = mul nuw <4 x i64> %179, %178
  %181 = shufflevector <4 x i64> %175, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %182 = add <4 x i64> %158, %181
  %183 = add <4 x i64> %182, %180
  store <4 x i64> %183, ptr %0, align 32, !alias.scope !432, !noalias !435
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %185 = load <4 x i64>, ptr %184, align 32, !alias.scope !425, !noalias !430
  %186 = getelementptr inbounds nuw i8, ptr %144, i64 40
  %187 = load <4 x i64>, ptr %186, align 1, !alias.scope !427, !noalias !431
  %188 = xor <4 x i64> %187, %185
  %189 = lshr <4 x i64> %188, splat (i64 32)
  %190 = and <4 x i64> %188, splat (i64 4294967295)
  %191 = mul nuw <4 x i64> %190, %189
  %192 = shufflevector <4 x i64> %185, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %193 = add <4 x i64> %171, %192
  %194 = add <4 x i64> %193, %191
  store <4 x i64> %194, ptr %168, align 32, !alias.scope !432, !noalias !435
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %196, i32 0, i32 3, i32 1), !noalias !429
  %197 = getelementptr inbounds nuw i8, ptr %144, i64 16
  %198 = load <4 x i64>, ptr %195, align 32, !alias.scope !425, !noalias !430
  %199 = load <4 x i64>, ptr %197, align 1, !alias.scope !427, !noalias !431
  %200 = xor <4 x i64> %199, %198
  %201 = lshr <4 x i64> %200, splat (i64 32)
  %202 = and <4 x i64> %200, splat (i64 4294967295)
  %203 = mul nuw <4 x i64> %202, %201
  %204 = shufflevector <4 x i64> %198, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %205 = add <4 x i64> %183, %204
  %206 = add <4 x i64> %205, %203
  store <4 x i64> %206, ptr %0, align 32, !alias.scope !432, !noalias !435
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %208 = load <4 x i64>, ptr %207, align 32, !alias.scope !425, !noalias !430
  %209 = getelementptr inbounds nuw i8, ptr %144, i64 48
  %210 = load <4 x i64>, ptr %209, align 1, !alias.scope !427, !noalias !431
  %211 = xor <4 x i64> %210, %208
  %212 = lshr <4 x i64> %211, splat (i64 32)
  %213 = and <4 x i64> %211, splat (i64 4294967295)
  %214 = mul nuw <4 x i64> %213, %212
  %215 = shufflevector <4 x i64> %208, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %216 = add <4 x i64> %194, %215
  %217 = add <4 x i64> %216, %214
  store <4 x i64> %217, ptr %168, align 32, !alias.scope !432, !noalias !435
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %219, i32 0, i32 3, i32 1), !noalias !429
  %220 = getelementptr inbounds nuw i8, ptr %144, i64 24
  %221 = load <4 x i64>, ptr %218, align 32, !alias.scope !425, !noalias !430
  %222 = load <4 x i64>, ptr %220, align 1, !alias.scope !427, !noalias !431
  %223 = xor <4 x i64> %222, %221
  %224 = lshr <4 x i64> %223, splat (i64 32)
  %225 = and <4 x i64> %223, splat (i64 4294967295)
  %226 = mul nuw <4 x i64> %225, %224
  %227 = shufflevector <4 x i64> %221, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %228 = add <4 x i64> %206, %227
  %229 = add <4 x i64> %228, %226
  store <4 x i64> %229, ptr %0, align 32, !alias.scope !432, !noalias !435
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %231 = load <4 x i64>, ptr %230, align 32, !alias.scope !425, !noalias !430
  %232 = getelementptr inbounds nuw i8, ptr %144, i64 56
  %233 = load <4 x i64>, ptr %232, align 1, !alias.scope !427, !noalias !431
  %234 = xor <4 x i64> %233, %231
  %235 = lshr <4 x i64> %234, splat (i64 32)
  %236 = and <4 x i64> %234, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, %235
  %238 = shufflevector <4 x i64> %231, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %239 = add <4 x i64> %217, %238
  %240 = add <4 x i64> %239, %237
  store <4 x i64> %240, ptr %168, align 32, !alias.scope !432, !noalias !435
  %241 = add i64 %44, 4
  br label %242

242:                                              ; preds = %111, %86, %142
  %243 = phi i64 [ %241, %142 ], [ 0, %86 ], [ %49, %111 ]
  store i64 %243, ptr %38, align 8, !alias.scope !376, !noalias !379
  store i32 0, ptr %18, align 64, !alias.scope !371, !noalias !374
  br label %244

244:                                              ; preds = %242, %30
  %245 = phi ptr [ %37, %242 ], [ %1, %30 ]
  %246 = icmp ult ptr %245, %9
  tail call void @llvm.assume(i1 %246)
  %247 = ptrtoint ptr %9 to i64
  %248 = ptrtoint ptr %245 to i64
  %249 = sub i64 %247, %248
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %251 = load i64, ptr %250, align 8, !alias.scope !371, !noalias !374
  %252 = shl i64 %251, 6
  %253 = icmp ugt i64 %249, %252
  br i1 %253, label %254, label %444

254:                                              ; preds = %244
  %255 = getelementptr inbounds i8, ptr %9, i64 -1
  %256 = ptrtoint ptr %255 to i64
  %257 = sub i64 %256, %248
  %258 = lshr i64 %257, 6
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %260 = load i64, ptr %259, align 8, !alias.scope !371, !noalias !374
  %261 = icmp uge i64 %251, %260
  tail call void @llvm.assume(i1 %261)
  %262 = sub i64 %251, %260
  %263 = icmp ule i64 %262, %258
  tail call void @llvm.assume(i1 %263)
  %264 = shl i64 %260, 3
  %265 = getelementptr inbounds nuw i8, ptr %14, i64 %264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %266 = icmp eq i64 %251, %260
  %267 = load <4 x i64>, ptr %0, align 32, !alias.scope !445, !noalias !448
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %269 = load <4 x i64>, ptr %268, align 32, !noalias !177
  br i1 %266, label %270, label %274

270:                                              ; preds = %254
  %271 = ptrtoint ptr %0 to i64
  %272 = and i64 %271, 31
  %273 = icmp eq i64 %272, 0
  br label %305

274:                                              ; preds = %254, %274
  %275 = phi <4 x i64> [ %302, %274 ], [ %269, %254 ]
  %276 = phi <4 x i64> [ %291, %274 ], [ %267, %254 ]
  %277 = phi i64 [ %303, %274 ], [ 0, %254 ]
  %278 = shl i64 %277, 6
  %279 = getelementptr inbounds nuw i8, ptr %245, i64 %278
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %280, i32 0, i32 3, i32 1), !noalias !443
  %281 = shl i64 %277, 3
  %282 = getelementptr inbounds nuw i8, ptr %265, i64 %281
  %283 = load <4 x i64>, ptr %279, align 1, !alias.scope !441, !noalias !450
  %284 = load <4 x i64>, ptr %282, align 1, !alias.scope !443, !noalias !451
  %285 = xor <4 x i64> %284, %283
  %286 = lshr <4 x i64> %285, splat (i64 32)
  %287 = and <4 x i64> %285, splat (i64 4294967295)
  %288 = mul nuw <4 x i64> %287, %286
  %289 = shufflevector <4 x i64> %283, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %290 = add <4 x i64> %276, %289
  %291 = add <4 x i64> %290, %288
  store <4 x i64> %291, ptr %0, align 32, !alias.scope !452, !noalias !455
  %292 = getelementptr inbounds nuw i8, ptr %279, i64 32
  %293 = load <4 x i64>, ptr %292, align 1, !alias.scope !441, !noalias !450
  %294 = getelementptr inbounds nuw i8, ptr %282, i64 32
  %295 = load <4 x i64>, ptr %294, align 1, !alias.scope !443, !noalias !451
  %296 = xor <4 x i64> %295, %293
  %297 = lshr <4 x i64> %296, splat (i64 32)
  %298 = and <4 x i64> %296, splat (i64 4294967295)
  %299 = mul nuw <4 x i64> %298, %297
  %300 = shufflevector <4 x i64> %293, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %301 = add <4 x i64> %275, %300
  %302 = add <4 x i64> %301, %299
  store <4 x i64> %302, ptr %268, align 32, !alias.scope !452, !noalias !455
  %303 = add nuw i64 %277, 1
  %304 = icmp eq i64 %303, %262
  br i1 %304, label %305, label %274, !llvm.loop !293

305:                                              ; preds = %274, %270
  %306 = phi i1 [ %273, %270 ], [ true, %274 ]
  %307 = phi <4 x i64> [ %269, %270 ], [ %302, %274 ]
  %308 = phi <4 x i64> [ %267, %270 ], [ %291, %274 ]
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %310 = load i64, ptr %309, align 32, !alias.scope !371, !noalias !374
  %311 = getelementptr inbounds nuw i8, ptr %14, i64 %310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.assume(i1 %306)
  %312 = lshr <4 x i64> %308, splat (i64 47)
  %313 = load <4 x i64>, ptr %311, align 1, !alias.scope !448, !noalias !445
  %314 = xor <4 x i64> %313, %312
  %315 = xor <4 x i64> %314, %308
  %316 = lshr <4 x i64> %315, splat (i64 32)
  %317 = and <4 x i64> %315, splat (i64 4294967295)
  %318 = mul nuw <4 x i64> %317, splat (i64 2654435761)
  %319 = mul <4 x i64> %316, splat (i64 -7046029290881679360)
  %320 = add <4 x i64> %318, %319
  store <4 x i64> %320, ptr %0, align 32, !alias.scope !445, !noalias !448
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %322 = lshr <4 x i64> %307, splat (i64 47)
  %323 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %324 = load <4 x i64>, ptr %323, align 1, !alias.scope !448, !noalias !445
  %325 = xor <4 x i64> %324, %322
  %326 = xor <4 x i64> %325, %307
  %327 = lshr <4 x i64> %326, splat (i64 32)
  %328 = and <4 x i64> %326, splat (i64 4294967295)
  %329 = mul nuw <4 x i64> %328, splat (i64 2654435761)
  %330 = mul <4 x i64> %327, splat (i64 -7046029290881679360)
  %331 = add <4 x i64> %329, %330
  store <4 x i64> %331, ptr %321, align 32, !alias.scope !445, !noalias !448
  store i64 0, ptr %259, align 8, !alias.scope !371, !noalias !374
  %332 = shl nuw i64 %262, 6
  %333 = getelementptr inbounds nuw i8, ptr %245, i64 %332
  %334 = sub nsw i64 %258, %262
  %335 = icmp ult i64 %334, %251
  br i1 %335, label %398, label %336

336:                                              ; preds = %305
  %337 = icmp eq i64 %251, 0
  br label %338

338:                                              ; preds = %336, %374
  %339 = phi <4 x i64> [ %394, %374 ], [ %331, %336 ]
  %340 = phi <4 x i64> [ %385, %374 ], [ %320, %336 ]
  %341 = phi ptr [ %395, %374 ], [ %333, %336 ]
  %342 = phi i64 [ %396, %374 ], [ %334, %336 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  br i1 %337, label %374, label %343

343:                                              ; preds = %338, %343
  %344 = phi <4 x i64> [ %371, %343 ], [ %339, %338 ]
  %345 = phi <4 x i64> [ %360, %343 ], [ %340, %338 ]
  %346 = phi i64 [ %372, %343 ], [ 0, %338 ]
  %347 = shl i64 %346, 6
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 %347
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %349, i32 0, i32 3, i32 1), !noalias !463
  %350 = shl i64 %346, 3
  %351 = getelementptr inbounds nuw i8, ptr %14, i64 %350
  %352 = load <4 x i64>, ptr %348, align 1, !alias.scope !461, !noalias !465
  %353 = load <4 x i64>, ptr %351, align 1, !alias.scope !463, !noalias !466
  %354 = xor <4 x i64> %353, %352
  %355 = lshr <4 x i64> %354, splat (i64 32)
  %356 = and <4 x i64> %354, splat (i64 4294967295)
  %357 = mul nuw <4 x i64> %356, %355
  %358 = shufflevector <4 x i64> %352, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %359 = add <4 x i64> %345, %358
  %360 = add <4 x i64> %359, %357
  store <4 x i64> %360, ptr %0, align 32, !alias.scope !467, !noalias !470
  %361 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %362 = load <4 x i64>, ptr %361, align 1, !alias.scope !461, !noalias !465
  %363 = getelementptr inbounds nuw i8, ptr %351, i64 32
  %364 = load <4 x i64>, ptr %363, align 1, !alias.scope !463, !noalias !466
  %365 = xor <4 x i64> %364, %362
  %366 = lshr <4 x i64> %365, splat (i64 32)
  %367 = and <4 x i64> %365, splat (i64 4294967295)
  %368 = mul nuw <4 x i64> %367, %366
  %369 = shufflevector <4 x i64> %362, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %370 = add <4 x i64> %344, %369
  %371 = add <4 x i64> %370, %368
  store <4 x i64> %371, ptr %321, align 32, !alias.scope !467, !noalias !470
  %372 = add nuw i64 %346, 1
  %373 = icmp eq i64 %372, %251
  br i1 %373, label %374, label %343, !llvm.loop !293

374:                                              ; preds = %343, %338
  %375 = phi <4 x i64> [ %339, %338 ], [ %371, %343 ]
  %376 = phi <4 x i64> [ %340, %338 ], [ %360, %343 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %377 = lshr <4 x i64> %376, splat (i64 47)
  %378 = load <4 x i64>, ptr %311, align 1, !alias.scope !476, !noalias !473
  %379 = xor <4 x i64> %378, %377
  %380 = xor <4 x i64> %379, %376
  %381 = lshr <4 x i64> %380, splat (i64 32)
  %382 = and <4 x i64> %380, splat (i64 4294967295)
  %383 = mul nuw <4 x i64> %382, splat (i64 2654435761)
  %384 = mul <4 x i64> %381, splat (i64 -7046029290881679360)
  %385 = add <4 x i64> %383, %384
  store <4 x i64> %385, ptr %0, align 32, !alias.scope !473, !noalias !476
  %386 = lshr <4 x i64> %375, splat (i64 47)
  %387 = load <4 x i64>, ptr %323, align 1, !alias.scope !476, !noalias !473
  %388 = xor <4 x i64> %387, %386
  %389 = xor <4 x i64> %388, %375
  %390 = lshr <4 x i64> %389, splat (i64 32)
  %391 = and <4 x i64> %389, splat (i64 4294967295)
  %392 = mul nuw <4 x i64> %391, splat (i64 2654435761)
  %393 = mul <4 x i64> %390, splat (i64 -7046029290881679360)
  %394 = add <4 x i64> %392, %393
  store <4 x i64> %394, ptr %321, align 32, !alias.scope !473, !noalias !476
  %395 = getelementptr inbounds nuw i8, ptr %341, i64 %252
  %396 = sub i64 %342, %251
  %397 = icmp ult i64 %396, %251
  br i1 %397, label %398, label %338, !llvm.loop !206

398:                                              ; preds = %374, %305
  %399 = phi <4 x i64> [ %331, %305 ], [ %394, %374 ]
  %400 = phi <4 x i64> [ %320, %305 ], [ %385, %374 ]
  %401 = phi i64 [ %334, %305 ], [ %396, %374 ]
  %402 = phi ptr [ %333, %305 ], [ %395, %374 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %403 = icmp eq i64 %401, 0
  br i1 %403, label %435, label %404

404:                                              ; preds = %398, %404
  %405 = phi <4 x i64> [ %432, %404 ], [ %399, %398 ]
  %406 = phi <4 x i64> [ %421, %404 ], [ %400, %398 ]
  %407 = phi i64 [ %433, %404 ], [ 0, %398 ]
  %408 = shl i64 %407, 6
  %409 = getelementptr inbounds nuw i8, ptr %402, i64 %408
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %410, i32 0, i32 3, i32 1), !noalias !483
  %411 = shl i64 %407, 3
  %412 = getelementptr inbounds nuw i8, ptr %14, i64 %411
  %413 = load <4 x i64>, ptr %409, align 1, !alias.scope !481, !noalias !485
  %414 = load <4 x i64>, ptr %412, align 1, !alias.scope !483, !noalias !486
  %415 = xor <4 x i64> %414, %413
  %416 = lshr <4 x i64> %415, splat (i64 32)
  %417 = and <4 x i64> %415, splat (i64 4294967295)
  %418 = mul nuw <4 x i64> %417, %416
  %419 = shufflevector <4 x i64> %413, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %420 = add <4 x i64> %406, %419
  %421 = add <4 x i64> %420, %418
  store <4 x i64> %421, ptr %0, align 32, !alias.scope !487, !noalias !490
  %422 = getelementptr inbounds nuw i8, ptr %409, i64 32
  %423 = load <4 x i64>, ptr %422, align 1, !alias.scope !481, !noalias !485
  %424 = getelementptr inbounds nuw i8, ptr %412, i64 32
  %425 = load <4 x i64>, ptr %424, align 1, !alias.scope !483, !noalias !486
  %426 = xor <4 x i64> %425, %423
  %427 = lshr <4 x i64> %426, splat (i64 32)
  %428 = and <4 x i64> %426, splat (i64 4294967295)
  %429 = mul nuw <4 x i64> %428, %427
  %430 = shufflevector <4 x i64> %423, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %431 = add <4 x i64> %405, %430
  %432 = add <4 x i64> %431, %429
  store <4 x i64> %432, ptr %321, align 32, !alias.scope !487, !noalias !490
  %433 = add nuw i64 %407, 1
  %434 = icmp eq i64 %433, %401
  br i1 %434, label %435, label %404, !llvm.loop !293

435:                                              ; preds = %404, %398
  %436 = shl i64 %401, 6
  %437 = getelementptr inbounds nuw i8, ptr %402, i64 %436
  %438 = icmp ult ptr %437, %9
  tail call void @llvm.assume(i1 %438)
  store i64 %401, ptr %259, align 8, !alias.scope !371, !noalias !374
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %440 = getelementptr inbounds i8, ptr %437, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %439, ptr noundef nonnull readonly align 1 dereferenceable(64) %440, i64 64, i1 false)
  %441 = ptrtoint ptr %437 to i64
  %442 = sub i64 %247, %441
  %443 = icmp slt i64 %442, 65
  tail call void @llvm.assume(i1 %443)
  br label %665

444:                                              ; preds = %244
  %445 = icmp sgt i64 %249, 256
  br i1 %445, label %446, label %665

446:                                              ; preds = %444
  %447 = getelementptr inbounds i8, ptr %9, i64 -256
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %450 = load i64, ptr %448, align 8, !alias.scope !493, !noalias !496
  %451 = ptrtoint ptr %0 to i64
  %452 = and i64 %451, 31
  %453 = icmp eq i64 %452, 0
  %454 = load i64, ptr %250, align 8, !alias.scope !371, !noalias !374
  %455 = load i64, ptr %449, align 32, !alias.scope !371, !noalias !374
  %456 = icmp ugt i64 %454, 3
  tail call void @llvm.assume(i1 %456)
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %459 = getelementptr inbounds nuw i8, ptr %14, i64 %455
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %461 = getelementptr inbounds nuw i8, ptr %459, i64 32
  br label %462

462:                                              ; preds = %654, %446
  %463 = phi i64 [ %450, %446 ], [ %655, %654 ]
  %464 = phi ptr [ %245, %446 ], [ %656, %654 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %465 = icmp ult i64 %463, %454
  tail call void @llvm.assume(i1 %465)
  %466 = sub i64 %454, %463
  %467 = icmp ult i64 %466, 5
  br i1 %467, label %468, label %558

468:                                              ; preds = %462
  %469 = sub nuw nsw i64 4, %466
  %470 = shl i64 %463, 3
  %471 = getelementptr inbounds nuw i8, ptr %14, i64 %470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.assume(i1 %453), !noalias !493
  %472 = load <4 x i64>, ptr %0, align 32, !alias.scope !507, !noalias !510
  %473 = load <4 x i64>, ptr %458, align 32, !alias.scope !507, !noalias !510
  br label %474

474:                                              ; preds = %468, %474
  %475 = phi <4 x i64> [ %473, %468 ], [ %502, %474 ]
  %476 = phi <4 x i64> [ %472, %468 ], [ %491, %474 ]
  %477 = phi i64 [ 0, %468 ], [ %503, %474 ]
  %478 = shl i64 %477, 6
  %479 = getelementptr inbounds nuw i8, ptr %464, i64 %478
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %480, i32 0, i32 3, i32 1), !noalias !513
  %481 = shl i64 %477, 3
  %482 = getelementptr inbounds nuw i8, ptr %471, i64 %481
  %483 = load <4 x i64>, ptr %479, align 1, !alias.scope !503, !noalias !514
  %484 = load <4 x i64>, ptr %482, align 1, !alias.scope !505, !noalias !515
  %485 = xor <4 x i64> %484, %483
  %486 = lshr <4 x i64> %485, splat (i64 32)
  %487 = and <4 x i64> %485, splat (i64 4294967295)
  %488 = mul nuw <4 x i64> %487, %486
  %489 = shufflevector <4 x i64> %483, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %490 = add <4 x i64> %476, %489
  %491 = add <4 x i64> %490, %488
  store <4 x i64> %491, ptr %0, align 32, !alias.scope !507, !noalias !510
  %492 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %493 = load <4 x i64>, ptr %492, align 1, !alias.scope !503, !noalias !514
  %494 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %495 = load <4 x i64>, ptr %494, align 1, !alias.scope !505, !noalias !515
  %496 = xor <4 x i64> %495, %493
  %497 = lshr <4 x i64> %496, splat (i64 32)
  %498 = and <4 x i64> %496, splat (i64 4294967295)
  %499 = mul nuw <4 x i64> %498, %497
  %500 = shufflevector <4 x i64> %493, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %501 = add <4 x i64> %475, %500
  %502 = add <4 x i64> %501, %499
  store <4 x i64> %502, ptr %458, align 32, !alias.scope !507, !noalias !510
  %503 = add nuw i64 %477, 1
  %504 = icmp eq i64 %503, %466
  br i1 %504, label %505, label %474, !llvm.loop !293

505:                                              ; preds = %474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %506 = lshr <4 x i64> %491, splat (i64 47)
  %507 = load <4 x i64>, ptr %459, align 1, !alias.scope !519, !noalias !521
  %508 = xor <4 x i64> %507, %506
  %509 = xor <4 x i64> %508, %491
  %510 = lshr <4 x i64> %509, splat (i64 32)
  %511 = and <4 x i64> %509, splat (i64 4294967295)
  %512 = mul nuw <4 x i64> %511, splat (i64 2654435761)
  %513 = mul <4 x i64> %510, splat (i64 -7046029290881679360)
  %514 = add <4 x i64> %512, %513
  store <4 x i64> %514, ptr %0, align 32, !alias.scope !516, !noalias !522
  %515 = lshr <4 x i64> %502, splat (i64 47)
  %516 = load <4 x i64>, ptr %461, align 1, !alias.scope !519, !noalias !521
  %517 = xor <4 x i64> %516, %515
  %518 = xor <4 x i64> %517, %502
  %519 = lshr <4 x i64> %518, splat (i64 32)
  %520 = and <4 x i64> %518, splat (i64 4294967295)
  %521 = mul nuw <4 x i64> %520, splat (i64 2654435761)
  %522 = mul <4 x i64> %519, splat (i64 -7046029290881679360)
  %523 = add <4 x i64> %521, %522
  store <4 x i64> %523, ptr %460, align 32, !alias.scope !516, !noalias !522
  %524 = shl nuw nsw i64 %466, 6
  %525 = getelementptr inbounds nuw i8, ptr %464, i64 %524
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %526 = icmp eq i64 %466, 4
  br i1 %526, label %654, label %527

527:                                              ; preds = %505, %527
  %528 = phi <4 x i64> [ %555, %527 ], [ %523, %505 ]
  %529 = phi <4 x i64> [ %544, %527 ], [ %514, %505 ]
  %530 = phi i64 [ %556, %527 ], [ 0, %505 ]
  %531 = shl i64 %530, 6
  %532 = getelementptr inbounds nuw i8, ptr %525, i64 %531
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %533, i32 0, i32 3, i32 1), !noalias !530
  %534 = shl i64 %530, 3
  %535 = getelementptr inbounds nuw i8, ptr %14, i64 %534
  %536 = load <4 x i64>, ptr %532, align 1, !alias.scope !526, !noalias !531
  %537 = load <4 x i64>, ptr %535, align 1, !alias.scope !528, !noalias !532
  %538 = xor <4 x i64> %537, %536
  %539 = lshr <4 x i64> %538, splat (i64 32)
  %540 = and <4 x i64> %538, splat (i64 4294967295)
  %541 = mul nuw <4 x i64> %540, %539
  %542 = shufflevector <4 x i64> %536, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %543 = add <4 x i64> %529, %542
  %544 = add <4 x i64> %543, %541
  store <4 x i64> %544, ptr %0, align 32, !alias.scope !533, !noalias !536
  %545 = getelementptr inbounds nuw i8, ptr %532, i64 32
  %546 = load <4 x i64>, ptr %545, align 1, !alias.scope !526, !noalias !531
  %547 = getelementptr inbounds nuw i8, ptr %535, i64 32
  %548 = load <4 x i64>, ptr %547, align 1, !alias.scope !528, !noalias !532
  %549 = xor <4 x i64> %548, %546
  %550 = lshr <4 x i64> %549, splat (i64 32)
  %551 = and <4 x i64> %549, splat (i64 4294967295)
  %552 = mul nuw <4 x i64> %551, %550
  %553 = shufflevector <4 x i64> %546, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %554 = add <4 x i64> %528, %553
  %555 = add <4 x i64> %554, %552
  store <4 x i64> %555, ptr %460, align 32, !alias.scope !533, !noalias !536
  %556 = add nuw i64 %530, 1
  %557 = icmp eq i64 %556, %469
  br i1 %557, label %654, label %527, !llvm.loop !293

558:                                              ; preds = %462
  %559 = shl i64 %463, 3
  %560 = getelementptr inbounds nuw i8, ptr %14, i64 %559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.assume(i1 %453), !noalias !493
  %561 = getelementptr inbounds nuw i8, ptr %464, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %561, i32 0, i32 3, i32 1), !noalias !546
  %562 = load <4 x i64>, ptr %464, align 1, !alias.scope !542, !noalias !547
  %563 = load <4 x i64>, ptr %560, align 1, !alias.scope !544, !noalias !548
  %564 = xor <4 x i64> %563, %562
  %565 = lshr <4 x i64> %564, splat (i64 32)
  %566 = and <4 x i64> %564, splat (i64 4294967295)
  %567 = mul nuw <4 x i64> %566, %565
  %568 = shufflevector <4 x i64> %562, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %569 = load <4 x i64>, ptr %0, align 32, !alias.scope !549, !noalias !552
  %570 = add <4 x i64> %569, %568
  %571 = add <4 x i64> %570, %567
  store <4 x i64> %571, ptr %0, align 32, !alias.scope !549, !noalias !552
  %572 = getelementptr inbounds nuw i8, ptr %464, i64 32
  %573 = load <4 x i64>, ptr %572, align 1, !alias.scope !542, !noalias !547
  %574 = getelementptr inbounds nuw i8, ptr %560, i64 32
  %575 = load <4 x i64>, ptr %574, align 1, !alias.scope !544, !noalias !548
  %576 = xor <4 x i64> %575, %573
  %577 = lshr <4 x i64> %576, splat (i64 32)
  %578 = and <4 x i64> %576, splat (i64 4294967295)
  %579 = mul nuw <4 x i64> %578, %577
  %580 = shufflevector <4 x i64> %573, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %581 = load <4 x i64>, ptr %457, align 32, !alias.scope !549, !noalias !552
  %582 = add <4 x i64> %581, %580
  %583 = add <4 x i64> %582, %579
  store <4 x i64> %583, ptr %457, align 32, !alias.scope !549, !noalias !552
  %584 = getelementptr inbounds nuw i8, ptr %464, i64 64
  %585 = getelementptr inbounds nuw i8, ptr %464, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %585, i32 0, i32 3, i32 1), !noalias !546
  %586 = getelementptr inbounds nuw i8, ptr %560, i64 8
  %587 = load <4 x i64>, ptr %584, align 1, !alias.scope !542, !noalias !547
  %588 = load <4 x i64>, ptr %586, align 1, !alias.scope !544, !noalias !548
  %589 = xor <4 x i64> %588, %587
  %590 = lshr <4 x i64> %589, splat (i64 32)
  %591 = and <4 x i64> %589, splat (i64 4294967295)
  %592 = mul nuw <4 x i64> %591, %590
  %593 = shufflevector <4 x i64> %587, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %594 = add <4 x i64> %571, %593
  %595 = add <4 x i64> %594, %592
  store <4 x i64> %595, ptr %0, align 32, !alias.scope !549, !noalias !552
  %596 = getelementptr inbounds nuw i8, ptr %464, i64 96
  %597 = load <4 x i64>, ptr %596, align 1, !alias.scope !542, !noalias !547
  %598 = getelementptr inbounds nuw i8, ptr %560, i64 40
  %599 = load <4 x i64>, ptr %598, align 1, !alias.scope !544, !noalias !548
  %600 = xor <4 x i64> %599, %597
  %601 = lshr <4 x i64> %600, splat (i64 32)
  %602 = and <4 x i64> %600, splat (i64 4294967295)
  %603 = mul nuw <4 x i64> %602, %601
  %604 = shufflevector <4 x i64> %597, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %605 = add <4 x i64> %583, %604
  %606 = add <4 x i64> %605, %603
  store <4 x i64> %606, ptr %457, align 32, !alias.scope !549, !noalias !552
  %607 = getelementptr inbounds nuw i8, ptr %464, i64 128
  %608 = getelementptr inbounds nuw i8, ptr %464, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %608, i32 0, i32 3, i32 1), !noalias !546
  %609 = getelementptr inbounds nuw i8, ptr %560, i64 16
  %610 = load <4 x i64>, ptr %607, align 1, !alias.scope !542, !noalias !547
  %611 = load <4 x i64>, ptr %609, align 1, !alias.scope !544, !noalias !548
  %612 = xor <4 x i64> %611, %610
  %613 = lshr <4 x i64> %612, splat (i64 32)
  %614 = and <4 x i64> %612, splat (i64 4294967295)
  %615 = mul nuw <4 x i64> %614, %613
  %616 = shufflevector <4 x i64> %610, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %617 = add <4 x i64> %595, %616
  %618 = add <4 x i64> %617, %615
  store <4 x i64> %618, ptr %0, align 32, !alias.scope !549, !noalias !552
  %619 = getelementptr inbounds nuw i8, ptr %464, i64 160
  %620 = load <4 x i64>, ptr %619, align 1, !alias.scope !542, !noalias !547
  %621 = getelementptr inbounds nuw i8, ptr %560, i64 48
  %622 = load <4 x i64>, ptr %621, align 1, !alias.scope !544, !noalias !548
  %623 = xor <4 x i64> %622, %620
  %624 = lshr <4 x i64> %623, splat (i64 32)
  %625 = and <4 x i64> %623, splat (i64 4294967295)
  %626 = mul nuw <4 x i64> %625, %624
  %627 = shufflevector <4 x i64> %620, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %628 = add <4 x i64> %606, %627
  %629 = add <4 x i64> %628, %626
  store <4 x i64> %629, ptr %457, align 32, !alias.scope !549, !noalias !552
  %630 = getelementptr inbounds nuw i8, ptr %464, i64 192
  %631 = getelementptr inbounds nuw i8, ptr %464, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %631, i32 0, i32 3, i32 1), !noalias !546
  %632 = getelementptr inbounds nuw i8, ptr %560, i64 24
  %633 = load <4 x i64>, ptr %630, align 1, !alias.scope !542, !noalias !547
  %634 = load <4 x i64>, ptr %632, align 1, !alias.scope !544, !noalias !548
  %635 = xor <4 x i64> %634, %633
  %636 = lshr <4 x i64> %635, splat (i64 32)
  %637 = and <4 x i64> %635, splat (i64 4294967295)
  %638 = mul nuw <4 x i64> %637, %636
  %639 = shufflevector <4 x i64> %633, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %640 = add <4 x i64> %618, %639
  %641 = add <4 x i64> %640, %638
  store <4 x i64> %641, ptr %0, align 32, !alias.scope !549, !noalias !552
  %642 = getelementptr inbounds nuw i8, ptr %464, i64 224
  %643 = load <4 x i64>, ptr %642, align 1, !alias.scope !542, !noalias !547
  %644 = getelementptr inbounds nuw i8, ptr %560, i64 56
  %645 = load <4 x i64>, ptr %644, align 1, !alias.scope !544, !noalias !548
  %646 = xor <4 x i64> %645, %643
  %647 = lshr <4 x i64> %646, splat (i64 32)
  %648 = and <4 x i64> %646, splat (i64 4294967295)
  %649 = mul nuw <4 x i64> %648, %647
  %650 = shufflevector <4 x i64> %643, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %651 = add <4 x i64> %629, %650
  %652 = add <4 x i64> %651, %649
  store <4 x i64> %652, ptr %457, align 32, !alias.scope !549, !noalias !552
  %653 = add i64 %463, 4
  br label %654

654:                                              ; preds = %527, %505, %558
  %655 = phi i64 [ %653, %558 ], [ 0, %505 ], [ %469, %527 ]
  %656 = getelementptr inbounds nuw i8, ptr %464, i64 256
  %657 = icmp ult ptr %656, %447
  br i1 %657, label %462, label %658, !llvm.loop !284

658:                                              ; preds = %654
  store i64 %655, ptr %448, align 8, !alias.scope !493, !noalias !496
  %659 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %660 = getelementptr inbounds nuw i8, ptr %464, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %659, ptr noundef nonnull readonly align 1 dereferenceable(64) %660, i64 64, i1 false)
  %661 = load i32, ptr %18, align 64, !alias.scope !371, !noalias !374
  %662 = ptrtoint ptr %656 to i64
  %663 = sub i64 %247, %662
  %664 = icmp eq i32 %661, 0
  br label %665

665:                                              ; preds = %658, %444, %435
  %666 = phi i64 [ %663, %658 ], [ %249, %444 ], [ %442, %435 ]
  %667 = phi i1 [ %664, %658 ], [ true, %444 ], [ true, %435 ]
  %668 = phi ptr [ %656, %658 ], [ %245, %444 ], [ %437, %435 ]
  %669 = icmp ult ptr %668, %9
  tail call void @llvm.assume(i1 %669)
  %670 = icmp slt i64 %666, 257
  tail call void @llvm.assume(i1 %670)
  tail call void @llvm.assume(i1 %667)
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %671, ptr nonnull readonly align 1 %668, i64 %666, i1 false)
  %672 = trunc i64 %666 to i32
  br label %673

673:                                              ; preds = %665, %24
  %674 = phi i32 [ %672, %665 ], [ %29, %24 ]
  store i32 %674, ptr %18, align 64, !alias.scope !371, !noalias !374
  br label %675

675:                                              ; preds = %5, %673
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXHL64_default_avx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #8 {
  %3 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !555
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = lshr i64 %4, 10
  %8 = load <16 x i32>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64
  br label %9

9:                                                ; preds = %6, %48
  %10 = phi i64 [ 0, %6 ], [ %59, %48 ]
  %11 = phi <8 x i64> [ %3, %6 ], [ %58, %48 ]
  %12 = shl i64 %10, 10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %46, %14 ]
  %16 = phi <8 x i64> [ %11, %9 ], [ %45, %14 ]
  %17 = shl nuw nsw i64 %15, 6
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1)
  %20 = shl nuw nsw i64 %15, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <8 x i64>, ptr %18, align 1, !noalias !559
  %23 = load <8 x i64>, ptr %21, align 16
  %24 = xor <8 x i64> %23, %22
  %25 = lshr <8 x i64> %24, splat (i64 32)
  %26 = and <8 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <8 x i64> %26, %25
  %28 = shufflevector <8 x i64> %22, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %29 = add <8 x i64> %16, %28
  %30 = add <8 x i64> %29, %27
  %31 = or disjoint i64 %15, 1
  %32 = shl nuw nsw i64 %31, 6
  %33 = getelementptr inbounds nuw i8, ptr %13, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %34, i32 0, i32 3, i32 1)
  %35 = shl nuw nsw i64 %31, 3
  %36 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %35
  %37 = load <8 x i64>, ptr %33, align 1, !noalias !559
  %38 = load <8 x i64>, ptr %36, align 8
  %39 = xor <8 x i64> %38, %37
  %40 = lshr <8 x i64> %39, splat (i64 32)
  %41 = and <8 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <8 x i64> %41, %40
  %43 = shufflevector <8 x i64> %37, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %44 = add <8 x i64> %30, %43
  %45 = add <8 x i64> %44, %42
  %46 = add nuw nsw i64 %15, 2
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %14, !llvm.loop !562

48:                                               ; preds = %14
  %49 = lshr <8 x i64> %45, splat (i64 47)
  %50 = bitcast <8 x i64> %45 to <16 x i32>
  %51 = bitcast <8 x i64> %49 to <16 x i32>
  %52 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %8, <16 x i32> %50, <16 x i32> %51, i32 150)
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = lshr <8 x i64> %53, splat (i64 32)
  %55 = and <8 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, splat (i64 2654435761)
  %57 = mul <8 x i64> %54, splat (i64 -7046029290881679360)
  %58 = add <8 x i64> %56, %57
  %59 = add nuw nsw i64 %10, 1
  %60 = icmp eq i64 %59, %7
  br i1 %60, label %61, label %9, !llvm.loop !20

61:                                               ; preds = %48, %2
  %62 = phi <8 x i64> [ %3, %2 ], [ %58, %48 ]
  %63 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %63)
  %64 = and i64 %4, -1024
  %65 = lshr i64 %4, 6
  %66 = and i64 %65, 15
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  switch i64 %66, label %68 [
    i64 0, label %127
    i64 1, label %106
  ]

68:                                               ; preds = %61
  %69 = and i64 %65, 14
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %103, %70 ]
  %72 = phi <8 x i64> [ %62, %68 ], [ %102, %70 ]
  %73 = phi i64 [ 0, %68 ], [ %104, %70 ]
  %74 = shl nuw nsw i64 %71, 6
  %75 = getelementptr inbounds nuw i8, ptr %67, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %76, i32 0, i32 3, i32 1)
  %77 = shl nuw nsw i64 %71, 3
  %78 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %77
  %79 = load <8 x i64>, ptr %75, align 1, !noalias !563
  %80 = load <8 x i64>, ptr %78, align 16
  %81 = xor <8 x i64> %80, %79
  %82 = lshr <8 x i64> %81, splat (i64 32)
  %83 = and <8 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <8 x i64> %83, %82
  %85 = shufflevector <8 x i64> %79, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %86 = add <8 x i64> %72, %85
  %87 = add <8 x i64> %86, %84
  %88 = or disjoint i64 %71, 1
  %89 = shl nuw nsw i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %67, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1)
  %92 = shl nuw nsw i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %92
  %94 = load <8 x i64>, ptr %90, align 1, !noalias !563
  %95 = load <8 x i64>, ptr %93, align 8
  %96 = xor <8 x i64> %95, %94
  %97 = lshr <8 x i64> %96, splat (i64 32)
  %98 = and <8 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <8 x i64> %98, %97
  %100 = shufflevector <8 x i64> %94, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %101 = add <8 x i64> %87, %100
  %102 = add <8 x i64> %101, %99
  %103 = add nuw nsw i64 %71, 2
  %104 = add i64 %73, 2
  %105 = icmp eq i64 %104, %69
  br i1 %105, label %106, label %70, !llvm.loop !562

106:                                              ; preds = %70, %61
  %107 = phi <8 x i64> [ poison, %61 ], [ %102, %70 ]
  %108 = phi i64 [ 0, %61 ], [ %103, %70 ]
  %109 = phi <8 x i64> [ %62, %61 ], [ %102, %70 ]
  %110 = and i64 %4, 64
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %106
  %113 = shl nuw nsw i64 %108, 6
  %114 = getelementptr inbounds nuw i8, ptr %67, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %115, i32 0, i32 3, i32 1)
  %116 = shl nuw nsw i64 %108, 3
  %117 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %116
  %118 = load <8 x i64>, ptr %114, align 1, !noalias !563
  %119 = load <8 x i64>, ptr %117, align 8
  %120 = xor <8 x i64> %119, %118
  %121 = lshr <8 x i64> %120, splat (i64 32)
  %122 = and <8 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <8 x i64> %122, %121
  %124 = shufflevector <8 x i64> %118, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %125 = add <8 x i64> %109, %124
  %126 = add <8 x i64> %125, %123
  br label %127

127:                                              ; preds = %112, %106, %61
  %128 = phi <8 x i64> [ %62, %61 ], [ %107, %106 ], [ %126, %112 ]
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %130 = getelementptr inbounds i8, ptr %129, i64 -64
  %131 = load <4 x i64>, ptr %130, align 1
  %132 = xor <4 x i64> %131, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %133 = lshr <4 x i64> %132, splat (i64 32)
  %134 = and <4 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <4 x i64> %134, %133
  %136 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %137 = shufflevector <8 x i64> %128, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %138 = add <4 x i64> %137, %136
  %139 = add <4 x i64> %138, %135
  %140 = getelementptr inbounds i8, ptr %129, i64 -32
  %141 = load <4 x i64>, ptr %140, align 1
  %142 = xor <4 x i64> %141, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %143 = lshr <4 x i64> %142, splat (i64 32)
  %144 = and <4 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <4 x i64> %144, %143
  %146 = shufflevector <4 x i64> %141, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %147 = shufflevector <8 x i64> %128, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %148 = add <4 x i64> %147, %146
  %149 = add <4 x i64> %148, %145
  %150 = mul i64 %1, -7046029288634856825
  %151 = extractelement <4 x i64> %139, i64 0
  %152 = xor i64 %151, 7914194659941938988
  %153 = extractelement <4 x i64> %139, i64 1
  %154 = xor i64 %153, -6611157965513653271
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = extractelement <4 x i64> %139, i64 2
  %163 = xor i64 %162, -1839215637059881052
  %164 = extractelement <4 x i64> %139, i64 3
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
  ret i64 %199
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXHL64_seed_avx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #8 {
  %4 = alloca [192 x i8], align 64
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %204

6:                                                ; preds = %3
  %7 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !566
  %8 = add i64 %1, -1
  %9 = icmp ult i64 %8, 1024
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = lshr i64 %8, 10
  %12 = load <16 x i32>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64
  br label %13

13:                                               ; preds = %10, %52
  %14 = phi i64 [ 0, %10 ], [ %63, %52 ]
  %15 = phi <8 x i64> [ %7, %10 ], [ %62, %52 ]
  %16 = shl i64 %14, 10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi i64 [ 0, %13 ], [ %50, %18 ]
  %20 = phi <8 x i64> [ %15, %13 ], [ %49, %18 ]
  %21 = shl nuw nsw i64 %19, 6
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1)
  %24 = shl nuw nsw i64 %19, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <8 x i64>, ptr %22, align 1, !noalias !570
  %27 = load <8 x i64>, ptr %25, align 16
  %28 = xor <8 x i64> %27, %26
  %29 = lshr <8 x i64> %28, splat (i64 32)
  %30 = and <8 x i64> %28, splat (i64 4294967295)
  %31 = mul nuw <8 x i64> %30, %29
  %32 = shufflevector <8 x i64> %26, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %33 = add <8 x i64> %20, %32
  %34 = add <8 x i64> %33, %31
  %35 = or disjoint i64 %19, 1
  %36 = shl nuw nsw i64 %35, 6
  %37 = getelementptr inbounds nuw i8, ptr %17, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %38, i32 0, i32 3, i32 1)
  %39 = shl nuw nsw i64 %35, 3
  %40 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %39
  %41 = load <8 x i64>, ptr %37, align 1, !noalias !570
  %42 = load <8 x i64>, ptr %40, align 8
  %43 = xor <8 x i64> %42, %41
  %44 = lshr <8 x i64> %43, splat (i64 32)
  %45 = and <8 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <8 x i64> %45, %44
  %47 = shufflevector <8 x i64> %41, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %48 = add <8 x i64> %34, %47
  %49 = add <8 x i64> %48, %46
  %50 = add nuw nsw i64 %19, 2
  %51 = icmp eq i64 %50, 16
  br i1 %51, label %52, label %18, !llvm.loop !562

52:                                               ; preds = %18
  %53 = lshr <8 x i64> %49, splat (i64 47)
  %54 = bitcast <8 x i64> %49 to <16 x i32>
  %55 = bitcast <8 x i64> %53 to <16 x i32>
  %56 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %12, <16 x i32> %54, <16 x i32> %55, i32 150)
  %57 = bitcast <16 x i32> %56 to <8 x i64>
  %58 = lshr <8 x i64> %57, splat (i64 32)
  %59 = and <8 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <8 x i64> %59, splat (i64 2654435761)
  %61 = mul <8 x i64> %58, splat (i64 -7046029290881679360)
  %62 = add <8 x i64> %60, %61
  %63 = add nuw nsw i64 %14, 1
  %64 = icmp eq i64 %63, %11
  br i1 %64, label %65, label %13, !llvm.loop !20

65:                                               ; preds = %52, %6
  %66 = phi <8 x i64> [ %7, %6 ], [ %62, %52 ]
  %67 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %67)
  %68 = and i64 %8, -1024
  %69 = lshr i64 %8, 6
  %70 = and i64 %69, 15
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 %68
  switch i64 %70, label %72 [
    i64 0, label %131
    i64 1, label %110
  ]

72:                                               ; preds = %65
  %73 = and i64 %69, 14
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %107, %74 ]
  %76 = phi <8 x i64> [ %66, %72 ], [ %106, %74 ]
  %77 = phi i64 [ 0, %72 ], [ %108, %74 ]
  %78 = shl nuw nsw i64 %75, 6
  %79 = getelementptr inbounds nuw i8, ptr %71, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %80, i32 0, i32 3, i32 1)
  %81 = shl nuw nsw i64 %75, 3
  %82 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %81
  %83 = load <8 x i64>, ptr %79, align 1, !noalias !573
  %84 = load <8 x i64>, ptr %82, align 16
  %85 = xor <8 x i64> %84, %83
  %86 = lshr <8 x i64> %85, splat (i64 32)
  %87 = and <8 x i64> %85, splat (i64 4294967295)
  %88 = mul nuw <8 x i64> %87, %86
  %89 = shufflevector <8 x i64> %83, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %90 = add <8 x i64> %76, %89
  %91 = add <8 x i64> %90, %88
  %92 = or disjoint i64 %75, 1
  %93 = shl nuw nsw i64 %92, 6
  %94 = getelementptr inbounds nuw i8, ptr %71, i64 %93
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %95, i32 0, i32 3, i32 1)
  %96 = shl nuw nsw i64 %92, 3
  %97 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %96
  %98 = load <8 x i64>, ptr %94, align 1, !noalias !573
  %99 = load <8 x i64>, ptr %97, align 8
  %100 = xor <8 x i64> %99, %98
  %101 = lshr <8 x i64> %100, splat (i64 32)
  %102 = and <8 x i64> %100, splat (i64 4294967295)
  %103 = mul nuw <8 x i64> %102, %101
  %104 = shufflevector <8 x i64> %98, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %105 = add <8 x i64> %91, %104
  %106 = add <8 x i64> %105, %103
  %107 = add nuw nsw i64 %75, 2
  %108 = add i64 %77, 2
  %109 = icmp eq i64 %108, %73
  br i1 %109, label %110, label %74, !llvm.loop !562

110:                                              ; preds = %74, %65
  %111 = phi <8 x i64> [ poison, %65 ], [ %106, %74 ]
  %112 = phi i64 [ 0, %65 ], [ %107, %74 ]
  %113 = phi <8 x i64> [ %66, %65 ], [ %106, %74 ]
  %114 = and i64 %8, 64
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %110
  %117 = shl nuw nsw i64 %112, 6
  %118 = getelementptr inbounds nuw i8, ptr %71, i64 %117
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %119, i32 0, i32 3, i32 1)
  %120 = shl nuw nsw i64 %112, 3
  %121 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %120
  %122 = load <8 x i64>, ptr %118, align 1, !noalias !573
  %123 = load <8 x i64>, ptr %121, align 8
  %124 = xor <8 x i64> %123, %122
  %125 = lshr <8 x i64> %124, splat (i64 32)
  %126 = and <8 x i64> %124, splat (i64 4294967295)
  %127 = mul nuw <8 x i64> %126, %125
  %128 = shufflevector <8 x i64> %122, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %129 = add <8 x i64> %113, %128
  %130 = add <8 x i64> %129, %127
  br label %131

131:                                              ; preds = %116, %110, %65
  %132 = phi <8 x i64> [ %66, %65 ], [ %111, %110 ], [ %130, %116 ]
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %134 = getelementptr inbounds i8, ptr %133, i64 -64
  %135 = load <4 x i64>, ptr %134, align 1
  %136 = xor <4 x i64> %135, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %137 = lshr <4 x i64> %136, splat (i64 32)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %135, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = shufflevector <8 x i64> %132, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %142 = add <4 x i64> %141, %140
  %143 = add <4 x i64> %142, %139
  %144 = getelementptr inbounds i8, ptr %133, i64 -32
  %145 = load <4 x i64>, ptr %144, align 1
  %146 = xor <4 x i64> %145, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %147 = lshr <4 x i64> %146, splat (i64 32)
  %148 = and <4 x i64> %146, splat (i64 4294967295)
  %149 = mul nuw <4 x i64> %148, %147
  %150 = shufflevector <4 x i64> %145, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %151 = shufflevector <8 x i64> %132, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %152 = add <4 x i64> %151, %150
  %153 = add <4 x i64> %152, %149
  %154 = mul i64 %1, -7046029288634856825
  %155 = extractelement <4 x i64> %143, i64 0
  %156 = xor i64 %155, 7914194659941938988
  %157 = extractelement <4 x i64> %143, i64 1
  %158 = xor i64 %157, -6611157965513653271
  %159 = zext i64 %156 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %154, %164
  %166 = extractelement <4 x i64> %143, i64 2
  %167 = xor i64 %166, -1839215637059881052
  %168 = extractelement <4 x i64> %143, i64 3
  %169 = xor i64 %168, -3433288310154277810
  %170 = zext i64 %167 to i128
  %171 = zext i64 %169 to i128
  %172 = mul nuw i128 %171, %170
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %165, %175
  %177 = extractelement <4 x i64> %153, i64 0
  %178 = xor i64 %177, 5046485836271438973
  %179 = extractelement <4 x i64> %153, i64 1
  %180 = xor i64 %179, -8055285457383852172
  %181 = zext i64 %178 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %176, %186
  %188 = extractelement <4 x i64> %153, i64 2
  %189 = xor i64 %188, 5920048007935066598
  %190 = extractelement <4 x i64> %153, i64 3
  %191 = xor i64 %190, 7336514198459093435
  %192 = zext i64 %189 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %187, %197
  %199 = lshr i64 %198, 37
  %200 = xor i64 %199, %198
  %201 = mul i64 %200, 1609587791953885689
  %202 = lshr i64 %201, 32
  %203 = xor i64 %202, %201
  br label %438

204:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20
  %205 = insertelement <8 x i64> poison, i64 %2, i64 0
  %206 = sub <8 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, %205
  %207 = shufflevector <8 x i64> %206, <8 x i64> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %208 = shufflevector <8 x i64> %205, <8 x i64> %207, <8 x i32> <i32 0, i32 9, i32 0, i32 11, i32 0, i32 13, i32 0, i32 15>
  %209 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %210 = add <8 x i64> %209, %208
  store <8 x i64> %210, ptr %4, align 64, !alias.scope !576
  %211 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), align 64
  %212 = add <8 x i64> %211, %208
  %213 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <8 x i64> %212, ptr %213, align 64, !alias.scope !576
  %214 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64
  %215 = add <8 x i64> %214, %208
  %216 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store <8 x i64> %215, ptr %216, align 64, !alias.scope !576
  %217 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !579
  %218 = add i64 %1, -1
  %219 = icmp ult i64 %218, 1024
  %220 = bitcast <8 x i64> %215 to i512
  %221 = bitcast <8 x i64> %215 to <16 x i32>
  %222 = lshr i512 %220, 200
  %223 = trunc i512 %222 to i256
  %224 = bitcast i256 %223 to <4 x i64>
  %225 = bitcast <8 x i64> %210 to i512
  %226 = lshr i512 %225, 88
  %227 = trunc i512 %226 to i64
  %228 = lshr i512 %225, 152
  %229 = trunc i512 %228 to i64
  %230 = lshr i512 %225, 216
  %231 = trunc i512 %230 to i64
  %232 = lshr i512 %225, 280
  %233 = trunc i512 %232 to i64
  %234 = lshr i512 %225, 344
  %235 = trunc i512 %234 to i64
  %236 = lshr i512 %225, 408
  %237 = trunc i512 %236 to i64
  %238 = bitcast <8 x i64> %212 to i512
  %239 = lshr i512 %238, 24
  %240 = trunc i512 %239 to i64
  br i1 %219, label %295, label %241

241:                                              ; preds = %204
  %242 = lshr i64 %218, 10
  br label %243

243:                                              ; preds = %241, %282
  %244 = phi i64 [ 0, %241 ], [ %293, %282 ]
  %245 = phi <8 x i64> [ %217, %241 ], [ %292, %282 ]
  %246 = shl i64 %244, 10
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 %246
  br label %248

248:                                              ; preds = %248, %243
  %249 = phi i64 [ 0, %243 ], [ %280, %248 ]
  %250 = phi <8 x i64> [ %245, %243 ], [ %279, %248 ]
  %251 = shl nuw nsw i64 %249, 6
  %252 = getelementptr inbounds nuw i8, ptr %247, i64 %251
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %253, i32 0, i32 3, i32 1)
  %254 = shl nuw nsw i64 %249, 3
  %255 = getelementptr inbounds nuw i8, ptr %4, i64 %254
  %256 = load <8 x i64>, ptr %252, align 1, !noalias !583
  %257 = load <8 x i64>, ptr %255, align 16
  %258 = xor <8 x i64> %257, %256
  %259 = lshr <8 x i64> %258, splat (i64 32)
  %260 = and <8 x i64> %258, splat (i64 4294967295)
  %261 = mul nuw <8 x i64> %260, %259
  %262 = shufflevector <8 x i64> %256, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %263 = add <8 x i64> %250, %262
  %264 = add <8 x i64> %263, %261
  %265 = or disjoint i64 %249, 1
  %266 = shl nuw nsw i64 %265, 6
  %267 = getelementptr inbounds nuw i8, ptr %247, i64 %266
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %268, i32 0, i32 3, i32 1)
  %269 = shl nuw nsw i64 %265, 3
  %270 = getelementptr inbounds nuw i8, ptr %4, i64 %269
  %271 = load <8 x i64>, ptr %267, align 1, !noalias !583
  %272 = load <8 x i64>, ptr %270, align 8
  %273 = xor <8 x i64> %272, %271
  %274 = lshr <8 x i64> %273, splat (i64 32)
  %275 = and <8 x i64> %273, splat (i64 4294967295)
  %276 = mul nuw <8 x i64> %275, %274
  %277 = shufflevector <8 x i64> %271, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %278 = add <8 x i64> %264, %277
  %279 = add <8 x i64> %278, %276
  %280 = add nuw nsw i64 %249, 2
  %281 = icmp eq i64 %280, 16
  br i1 %281, label %282, label %248, !llvm.loop !562

282:                                              ; preds = %248
  %283 = lshr <8 x i64> %279, splat (i64 47)
  %284 = bitcast <8 x i64> %279 to <16 x i32>
  %285 = bitcast <8 x i64> %283 to <16 x i32>
  %286 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %221, <16 x i32> %284, <16 x i32> %285, i32 150)
  %287 = bitcast <16 x i32> %286 to <8 x i64>
  %288 = lshr <8 x i64> %287, splat (i64 32)
  %289 = and <8 x i64> %287, splat (i64 4294967295)
  %290 = mul nuw <8 x i64> %289, splat (i64 2654435761)
  %291 = mul <8 x i64> %288, splat (i64 -7046029290881679360)
  %292 = add <8 x i64> %290, %291
  %293 = add nuw nsw i64 %244, 1
  %294 = icmp eq i64 %293, %242
  br i1 %294, label %295, label %243, !llvm.loop !20

295:                                              ; preds = %282, %204
  %296 = phi <8 x i64> [ %217, %204 ], [ %292, %282 ]
  %297 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %297)
  %298 = and i64 %218, -1024
  %299 = lshr i64 %218, 6
  %300 = and i64 %299, 15
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 %298
  switch i64 %300, label %302 [
    i64 0, label %361
    i64 1, label %340
  ]

302:                                              ; preds = %295
  %303 = and i64 %299, 14
  br label %304

304:                                              ; preds = %304, %302
  %305 = phi i64 [ 0, %302 ], [ %337, %304 ]
  %306 = phi <8 x i64> [ %296, %302 ], [ %336, %304 ]
  %307 = phi i64 [ 0, %302 ], [ %338, %304 ]
  %308 = shl nuw nsw i64 %305, 6
  %309 = getelementptr inbounds nuw i8, ptr %301, i64 %308
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %310, i32 0, i32 3, i32 1)
  %311 = shl nuw nsw i64 %305, 3
  %312 = getelementptr inbounds nuw i8, ptr %4, i64 %311
  %313 = load <8 x i64>, ptr %309, align 1, !noalias !586
  %314 = load <8 x i64>, ptr %312, align 16
  %315 = xor <8 x i64> %314, %313
  %316 = lshr <8 x i64> %315, splat (i64 32)
  %317 = and <8 x i64> %315, splat (i64 4294967295)
  %318 = mul nuw <8 x i64> %317, %316
  %319 = shufflevector <8 x i64> %313, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %320 = add <8 x i64> %306, %319
  %321 = add <8 x i64> %320, %318
  %322 = or disjoint i64 %305, 1
  %323 = shl nuw nsw i64 %322, 6
  %324 = getelementptr inbounds nuw i8, ptr %301, i64 %323
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %325, i32 0, i32 3, i32 1)
  %326 = shl nuw nsw i64 %322, 3
  %327 = getelementptr inbounds nuw i8, ptr %4, i64 %326
  %328 = load <8 x i64>, ptr %324, align 1, !noalias !586
  %329 = load <8 x i64>, ptr %327, align 8
  %330 = xor <8 x i64> %329, %328
  %331 = lshr <8 x i64> %330, splat (i64 32)
  %332 = and <8 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <8 x i64> %332, %331
  %334 = shufflevector <8 x i64> %328, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %335 = add <8 x i64> %321, %334
  %336 = add <8 x i64> %335, %333
  %337 = add nuw nsw i64 %305, 2
  %338 = add i64 %307, 2
  %339 = icmp eq i64 %338, %303
  br i1 %339, label %340, label %304, !llvm.loop !562

340:                                              ; preds = %304, %295
  %341 = phi <8 x i64> [ poison, %295 ], [ %336, %304 ]
  %342 = phi i64 [ 0, %295 ], [ %337, %304 ]
  %343 = phi <8 x i64> [ %296, %295 ], [ %336, %304 ]
  %344 = and i64 %218, 64
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %361, label %346

346:                                              ; preds = %340
  %347 = shl nuw nsw i64 %342, 6
  %348 = getelementptr inbounds nuw i8, ptr %301, i64 %347
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %349, i32 0, i32 3, i32 1)
  %350 = shl nuw nsw i64 %342, 3
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 %350
  %352 = load <8 x i64>, ptr %348, align 1, !noalias !586
  %353 = load <8 x i64>, ptr %351, align 8
  %354 = xor <8 x i64> %353, %352
  %355 = lshr <8 x i64> %354, splat (i64 32)
  %356 = and <8 x i64> %354, splat (i64 4294967295)
  %357 = mul nuw <8 x i64> %356, %355
  %358 = shufflevector <8 x i64> %352, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %359 = add <8 x i64> %343, %358
  %360 = add <8 x i64> %359, %357
  br label %361

361:                                              ; preds = %346, %340, %295
  %362 = phi <8 x i64> [ %296, %295 ], [ %341, %340 ], [ %360, %346 ]
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %364 = getelementptr inbounds i8, ptr %363, i64 -64
  %365 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %366 = load <4 x i64>, ptr %364, align 1
  %367 = load <4 x i64>, ptr %365, align 1
  %368 = xor <4 x i64> %367, %366
  %369 = lshr <4 x i64> %368, splat (i64 32)
  %370 = and <4 x i64> %368, splat (i64 4294967295)
  %371 = mul nuw <4 x i64> %370, %369
  %372 = shufflevector <4 x i64> %366, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %373 = shufflevector <8 x i64> %362, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %374 = add <4 x i64> %373, %372
  %375 = add <4 x i64> %374, %371
  %376 = getelementptr inbounds i8, ptr %363, i64 -32
  %377 = load <4 x i64>, ptr %376, align 1
  %378 = xor <4 x i64> %377, %224
  %379 = lshr <4 x i64> %378, splat (i64 32)
  %380 = and <4 x i64> %378, splat (i64 4294967295)
  %381 = mul nuw <4 x i64> %380, %379
  %382 = shufflevector <4 x i64> %377, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %383 = shufflevector <8 x i64> %362, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %384 = add <4 x i64> %383, %382
  %385 = add <4 x i64> %384, %381
  %386 = mul i64 %1, -7046029288634856825
  %387 = extractelement <4 x i64> %375, i64 0
  %388 = xor i64 %387, %227
  %389 = extractelement <4 x i64> %375, i64 1
  %390 = xor i64 %389, %229
  %391 = zext i64 %388 to i128
  %392 = zext i64 %390 to i128
  %393 = mul nuw i128 %392, %391
  %394 = lshr i128 %393, 64
  %395 = xor i128 %394, %393
  %396 = trunc i128 %395 to i64
  %397 = add i64 %386, %396
  %398 = extractelement <4 x i64> %375, i64 2
  %399 = xor i64 %398, %231
  %400 = extractelement <4 x i64> %375, i64 3
  %401 = xor i64 %400, %233
  %402 = zext i64 %399 to i128
  %403 = zext i64 %401 to i128
  %404 = mul nuw i128 %403, %402
  %405 = lshr i128 %404, 64
  %406 = xor i128 %405, %404
  %407 = trunc i128 %406 to i64
  %408 = add i64 %397, %407
  %409 = extractelement <4 x i64> %385, i64 0
  %410 = xor i64 %409, %235
  %411 = extractelement <4 x i64> %385, i64 1
  %412 = xor i64 %411, %237
  %413 = zext i64 %410 to i128
  %414 = zext i64 %412 to i128
  %415 = mul nuw i128 %414, %413
  %416 = lshr i128 %415, 64
  %417 = xor i128 %416, %415
  %418 = trunc i128 %417 to i64
  %419 = add i64 %408, %418
  %420 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %421 = extractelement <4 x i64> %385, i64 2
  %422 = load i64, ptr %420, align 1, !alias.scope !589, !noalias !592
  %423 = xor i64 %422, %421
  %424 = extractelement <4 x i64> %385, i64 3
  %425 = xor i64 %424, %240
  %426 = zext i64 %423 to i128
  %427 = zext i64 %425 to i128
  %428 = mul nuw i128 %427, %426
  %429 = lshr i128 %428, 64
  %430 = xor i128 %429, %428
  %431 = trunc i128 %430 to i64
  %432 = add i64 %419, %431
  %433 = lshr i64 %432, 37
  %434 = xor i64 %433, %432
  %435 = mul i64 %434, 1609587791953885689
  %436 = lshr i64 %435, 32
  %437 = xor i64 %436, %435
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20
  br label %438

438:                                              ; preds = %131, %361
  %439 = phi i64 [ %203, %131 ], [ %437, %361 ]
  ret i64 %439
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXHL64_secret_avx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) #8 {
  %5 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !594
  %6 = add i64 %3, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %1, -1
  %10 = udiv i64 %9, %8
  %11 = urem i64 %9, %8
  %12 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %12)
  %13 = icmp ugt i64 %8, %9
  br i1 %13, label %96, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %16 = getelementptr inbounds i8, ptr %15, i64 -64
  %17 = load <16 x i32>, ptr %16, align 1
  %18 = icmp eq i64 %7, 1
  %19 = and i64 %7, 2305843009213693950
  %20 = and i64 %3, 8
  %21 = icmp eq i64 %20, 0
  br label %22

22:                                               ; preds = %14, %82
  %23 = phi i64 [ %94, %82 ], [ 0, %14 ]
  %24 = phi <8 x i64> [ %93, %82 ], [ %5, %14 ]
  %25 = mul i64 %23, %8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  br i1 %18, label %63, label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ %60, %27 ], [ 0, %22 ]
  %29 = phi <8 x i64> [ %59, %27 ], [ %24, %22 ]
  %30 = phi i64 [ %61, %27 ], [ 0, %22 ]
  %31 = shl i64 %28, 6
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %33, i32 0, i32 3, i32 1)
  %34 = shl i64 %28, 3
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load <8 x i64>, ptr %32, align 1, !noalias !598
  %37 = load <8 x i64>, ptr %35, align 1
  %38 = xor <8 x i64> %37, %36
  %39 = lshr <8 x i64> %38, splat (i64 32)
  %40 = and <8 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <8 x i64> %40, %39
  %42 = shufflevector <8 x i64> %36, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %43 = add <8 x i64> %29, %42
  %44 = add <8 x i64> %43, %41
  %45 = or disjoint i64 %28, 1
  %46 = shl i64 %45, 6
  %47 = getelementptr inbounds nuw i8, ptr %26, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %48, i32 0, i32 3, i32 1)
  %49 = shl i64 %45, 3
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load <8 x i64>, ptr %47, align 1, !noalias !598
  %52 = load <8 x i64>, ptr %50, align 1
  %53 = xor <8 x i64> %52, %51
  %54 = lshr <8 x i64> %53, splat (i64 32)
  %55 = and <8 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, %54
  %57 = shufflevector <8 x i64> %51, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %58 = add <8 x i64> %44, %57
  %59 = add <8 x i64> %58, %56
  %60 = add nuw nsw i64 %28, 2
  %61 = add nuw nsw i64 %30, 2
  %62 = icmp eq i64 %61, %19
  br i1 %62, label %63, label %27, !llvm.loop !562

63:                                               ; preds = %27, %22
  %64 = phi <8 x i64> [ poison, %22 ], [ %59, %27 ]
  %65 = phi i64 [ 0, %22 ], [ %60, %27 ]
  %66 = phi <8 x i64> [ %24, %22 ], [ %59, %27 ]
  br i1 %21, label %82, label %67

67:                                               ; preds = %63
  %68 = shl i64 %65, 6
  %69 = getelementptr inbounds nuw i8, ptr %26, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %70, i32 0, i32 3, i32 1)
  %71 = shl i64 %65, 3
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load <8 x i64>, ptr %69, align 1, !noalias !598
  %74 = load <8 x i64>, ptr %72, align 1
  %75 = xor <8 x i64> %74, %73
  %76 = lshr <8 x i64> %75, splat (i64 32)
  %77 = and <8 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <8 x i64> %77, %76
  %79 = shufflevector <8 x i64> %73, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %80 = add <8 x i64> %66, %79
  %81 = add <8 x i64> %80, %78
  br label %82

82:                                               ; preds = %63, %67
  %83 = phi <8 x i64> [ %64, %63 ], [ %81, %67 ]
  %84 = lshr <8 x i64> %83, splat (i64 47)
  %85 = bitcast <8 x i64> %83 to <16 x i32>
  %86 = bitcast <8 x i64> %84 to <16 x i32>
  %87 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %17, <16 x i32> %85, <16 x i32> %86, i32 150)
  %88 = bitcast <16 x i32> %87 to <8 x i64>
  %89 = lshr <8 x i64> %88, splat (i64 32)
  %90 = and <8 x i64> %88, splat (i64 4294967295)
  %91 = mul nuw <8 x i64> %90, splat (i64 2654435761)
  %92 = mul <8 x i64> %89, splat (i64 -7046029290881679360)
  %93 = add <8 x i64> %91, %92
  %94 = add nuw i64 %23, 1
  %95 = icmp ult i64 %94, %10
  br i1 %95, label %22, label %96, !llvm.loop !20

96:                                               ; preds = %82, %4
  %97 = phi <8 x i64> [ %5, %4 ], [ %93, %82 ]
  %98 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %98)
  %99 = mul i64 %10, %8
  %100 = lshr i64 %11, 6
  %101 = lshr i64 %3, 3
  %102 = icmp samesign ule i64 %100, %101
  tail call void @llvm.assume(i1 %102)
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 %99
  %104 = icmp ult i64 %11, 64
  br i1 %104, label %167, label %105

105:                                              ; preds = %96
  %106 = tail call i64 @llvm.umax.i64(i64 %100, i64 1)
  %107 = and i64 %106, 1
  %108 = icmp ult i64 %11, 128
  br i1 %108, label %147, label %109

109:                                              ; preds = %105
  %110 = and i64 %106, 288230376151711742
  br label %111

111:                                              ; preds = %111, %109
  %112 = phi i64 [ 0, %109 ], [ %144, %111 ]
  %113 = phi <8 x i64> [ %97, %109 ], [ %143, %111 ]
  %114 = phi i64 [ 0, %109 ], [ %145, %111 ]
  %115 = shl i64 %112, 6
  %116 = getelementptr inbounds nuw i8, ptr %103, i64 %115
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %117, i32 0, i32 3, i32 1)
  %118 = shl i64 %112, 3
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %118
  %120 = load <8 x i64>, ptr %116, align 1, !noalias !601
  %121 = load <8 x i64>, ptr %119, align 1
  %122 = xor <8 x i64> %121, %120
  %123 = lshr <8 x i64> %122, splat (i64 32)
  %124 = and <8 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <8 x i64> %124, %123
  %126 = shufflevector <8 x i64> %120, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %127 = add <8 x i64> %113, %126
  %128 = add <8 x i64> %127, %125
  %129 = or disjoint i64 %112, 1
  %130 = shl i64 %129, 6
  %131 = getelementptr inbounds nuw i8, ptr %103, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %132, i32 0, i32 3, i32 1)
  %133 = shl i64 %129, 3
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 %133
  %135 = load <8 x i64>, ptr %131, align 1, !noalias !601
  %136 = load <8 x i64>, ptr %134, align 1
  %137 = xor <8 x i64> %136, %135
  %138 = lshr <8 x i64> %137, splat (i64 32)
  %139 = and <8 x i64> %137, splat (i64 4294967295)
  %140 = mul nuw <8 x i64> %139, %138
  %141 = shufflevector <8 x i64> %135, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %142 = add <8 x i64> %128, %141
  %143 = add <8 x i64> %142, %140
  %144 = add nuw nsw i64 %112, 2
  %145 = add i64 %114, 2
  %146 = icmp eq i64 %145, %110
  br i1 %146, label %147, label %111, !llvm.loop !562

147:                                              ; preds = %111, %105
  %148 = phi <8 x i64> [ poison, %105 ], [ %143, %111 ]
  %149 = phi i64 [ 0, %105 ], [ %144, %111 ]
  %150 = phi <8 x i64> [ %97, %105 ], [ %143, %111 ]
  %151 = icmp eq i64 %107, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %147
  %153 = shl i64 %149, 6
  %154 = getelementptr inbounds nuw i8, ptr %103, i64 %153
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %155, i32 0, i32 3, i32 1)
  %156 = shl i64 %149, 3
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 %156
  %158 = load <8 x i64>, ptr %154, align 1, !noalias !601
  %159 = load <8 x i64>, ptr %157, align 1
  %160 = xor <8 x i64> %159, %158
  %161 = lshr <8 x i64> %160, splat (i64 32)
  %162 = and <8 x i64> %160, splat (i64 4294967295)
  %163 = mul nuw <8 x i64> %162, %161
  %164 = shufflevector <8 x i64> %158, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %165 = add <8 x i64> %150, %164
  %166 = add <8 x i64> %165, %163
  br label %167

167:                                              ; preds = %152, %147, %96
  %168 = phi <8 x i64> [ %97, %96 ], [ %148, %147 ], [ %166, %152 ]
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %170 = getelementptr inbounds i8, ptr %169, i64 -64
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %172 = getelementptr inbounds i8, ptr %171, i64 -71
  %173 = load <4 x i64>, ptr %170, align 1
  %174 = load <4 x i64>, ptr %172, align 1
  %175 = xor <4 x i64> %174, %173
  %176 = lshr <4 x i64> %175, splat (i64 32)
  %177 = and <4 x i64> %175, splat (i64 4294967295)
  %178 = mul nuw <4 x i64> %177, %176
  %179 = shufflevector <4 x i64> %173, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %180 = shufflevector <8 x i64> %168, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %181 = add <4 x i64> %180, %179
  %182 = add <4 x i64> %181, %178
  %183 = getelementptr inbounds i8, ptr %169, i64 -32
  %184 = load <4 x i64>, ptr %183, align 1
  %185 = getelementptr inbounds i8, ptr %171, i64 -39
  %186 = load <4 x i64>, ptr %185, align 1
  %187 = xor <4 x i64> %186, %184
  %188 = lshr <4 x i64> %187, splat (i64 32)
  %189 = and <4 x i64> %187, splat (i64 4294967295)
  %190 = mul nuw <4 x i64> %189, %188
  %191 = shufflevector <4 x i64> %184, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %192 = shufflevector <8 x i64> %168, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %193 = add <4 x i64> %192, %191
  %194 = add <4 x i64> %193, %190
  %195 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %196 = mul i64 %1, -7046029288634856825
  %197 = extractelement <4 x i64> %182, i64 0
  %198 = load i64, ptr %195, align 1, !alias.scope !604, !noalias !607
  %199 = xor i64 %198, %197
  %200 = extractelement <4 x i64> %182, i64 1
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %202 = load i64, ptr %201, align 1, !alias.scope !604, !noalias !607
  %203 = xor i64 %202, %200
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %196, %209
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %212 = extractelement <4 x i64> %182, i64 2
  %213 = load i64, ptr %211, align 1, !alias.scope !604, !noalias !607
  %214 = xor i64 %213, %212
  %215 = extractelement <4 x i64> %182, i64 3
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %217 = load i64, ptr %216, align 1, !alias.scope !604, !noalias !607
  %218 = xor i64 %217, %215
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %210, %224
  %226 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %227 = extractelement <4 x i64> %194, i64 0
  %228 = load i64, ptr %226, align 1, !alias.scope !604, !noalias !607
  %229 = xor i64 %228, %227
  %230 = extractelement <4 x i64> %194, i64 1
  %231 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %232 = load i64, ptr %231, align 1, !alias.scope !604, !noalias !607
  %233 = xor i64 %232, %230
  %234 = zext i64 %229 to i128
  %235 = zext i64 %233 to i128
  %236 = mul nuw i128 %235, %234
  %237 = lshr i128 %236, 64
  %238 = xor i128 %237, %236
  %239 = trunc i128 %238 to i64
  %240 = add i64 %225, %239
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %242 = extractelement <4 x i64> %194, i64 2
  %243 = load i64, ptr %241, align 1, !alias.scope !604, !noalias !607
  %244 = xor i64 %243, %242
  %245 = extractelement <4 x i64> %194, i64 3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %247 = load i64, ptr %246, align 1, !alias.scope !604, !noalias !607
  %248 = xor i64 %247, %245
  %249 = zext i64 %244 to i128
  %250 = zext i64 %248 to i128
  %251 = mul nuw i128 %250, %249
  %252 = lshr i128 %251, 64
  %253 = xor i128 %252, %251
  %254 = trunc i128 %253 to i64
  %255 = add i64 %240, %254
  %256 = lshr i64 %255, 37
  %257 = xor i64 %256, %255
  %258 = mul i64 %257, 1609587791953885689
  %259 = lshr i64 %258, 32
  %260 = xor i64 %259, %258
  ret i64 %260
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noundef i32 @XXH3_update_avx512(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %746

7:                                                ; preds = %3
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %11 = load ptr, ptr %10, align 8, !alias.scope !609, !noalias !612
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = select i1 %12, ptr %13, ptr %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %16 = load i64, ptr %15, align 16, !alias.scope !609, !noalias !612
  %17 = add i64 %16, %2
  store i64 %17, ptr %15, align 16, !alias.scope !609, !noalias !612
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %19 = load i32, ptr %18, align 64, !alias.scope !609, !noalias !612
  %20 = icmp ult i32 %19, 257
  tail call void @llvm.assume(i1 %20)
  %21 = zext nneg i32 %19 to i64
  %22 = add i64 %2, %21
  %23 = icmp ult i64 %22, 257
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %27 = trunc i64 %2 to i32
  %28 = load i32, ptr %18, align 64, !alias.scope !609, !noalias !612
  %29 = add i32 %28, %27
  br label %744

30:                                               ; preds = %7
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %34 = load i64, ptr %33, align 8, !alias.scope !609, !noalias !612
  br label %251

35:                                               ; preds = %30
  %36 = sub nuw nsw i32 256, %19
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %39, ptr nonnull readonly align 1 %1, i64 %37, i1 false)
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 %37
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %43 = load i64, ptr %42, align 8, !alias.scope !609, !noalias !612
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %45 = load i64, ptr %44, align 32, !alias.scope !609, !noalias !612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %46 = icmp ugt i64 %43, 3
  tail call void @llvm.assume(i1 %46)
  %47 = load i64, ptr %41, align 8, !alias.scope !614, !noalias !617
  %48 = icmp ult i64 %47, %43
  tail call void @llvm.assume(i1 %48)
  %49 = sub i64 %43, %47
  %50 = icmp ult i64 %49, 5
  br i1 %50, label %51, label %176

51:                                               ; preds = %35
  %52 = sub nuw nsw i64 4, %49
  %53 = shl i64 %47, 3
  %54 = getelementptr inbounds nuw i8, ptr %14, i64 %53
  %55 = load <8 x i64>, ptr %0, align 64, !alias.scope !621, !noalias !624
  %56 = add i64 %47, 1
  %57 = and i64 %49, 1
  %58 = icmp eq i64 %43, %56
  br i1 %58, label %97, label %59

59:                                               ; preds = %51
  %60 = and i64 %49, 6
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi <8 x i64> [ %55, %59 ], [ %93, %61 ]
  %63 = phi i64 [ 0, %59 ], [ %94, %61 ]
  %64 = phi i64 [ 0, %59 ], [ %95, %61 ]
  %65 = shl i64 %63, 6
  %66 = getelementptr inbounds nuw i8, ptr %38, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %67, i32 0, i32 3, i32 1), !noalias !614
  %68 = shl i64 %63, 3
  %69 = getelementptr inbounds nuw i8, ptr %54, i64 %68
  %70 = load <8 x i64>, ptr %66, align 1, !noalias !627
  %71 = load <8 x i64>, ptr %69, align 1, !noalias !614
  %72 = xor <8 x i64> %71, %70
  %73 = lshr <8 x i64> %72, splat (i64 32)
  %74 = and <8 x i64> %72, splat (i64 4294967295)
  %75 = mul nuw <8 x i64> %74, %73
  %76 = shufflevector <8 x i64> %70, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %77 = add <8 x i64> %62, %76
  %78 = add <8 x i64> %77, %75
  store <8 x i64> %78, ptr %0, align 64, !alias.scope !621, !noalias !624
  %79 = or disjoint i64 %63, 1
  %80 = shl i64 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %38, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %82, i32 0, i32 3, i32 1), !noalias !614
  %83 = shl i64 %79, 3
  %84 = getelementptr inbounds nuw i8, ptr %54, i64 %83
  %85 = load <8 x i64>, ptr %81, align 1, !noalias !627
  %86 = load <8 x i64>, ptr %84, align 1, !noalias !614
  %87 = xor <8 x i64> %86, %85
  %88 = lshr <8 x i64> %87, splat (i64 32)
  %89 = and <8 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <8 x i64> %89, %88
  %91 = shufflevector <8 x i64> %85, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %92 = add <8 x i64> %78, %91
  %93 = add <8 x i64> %92, %90
  store <8 x i64> %93, ptr %0, align 64, !alias.scope !621, !noalias !624
  %94 = add nuw i64 %63, 2
  %95 = add i64 %64, 2
  %96 = icmp eq i64 %95, %60
  br i1 %96, label %97, label %61, !llvm.loop !562

97:                                               ; preds = %61, %51
  %98 = phi <8 x i64> [ poison, %51 ], [ %93, %61 ]
  %99 = phi <8 x i64> [ %55, %51 ], [ %93, %61 ]
  %100 = phi i64 [ 0, %51 ], [ %94, %61 ]
  %101 = icmp eq i64 %57, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %97
  %103 = shl i64 %100, 6
  %104 = getelementptr inbounds nuw i8, ptr %38, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %105, i32 0, i32 3, i32 1), !noalias !614
  %106 = shl i64 %100, 3
  %107 = getelementptr inbounds nuw i8, ptr %54, i64 %106
  %108 = load <8 x i64>, ptr %104, align 1, !noalias !627
  %109 = load <8 x i64>, ptr %107, align 1, !noalias !614
  %110 = xor <8 x i64> %109, %108
  %111 = lshr <8 x i64> %110, splat (i64 32)
  %112 = and <8 x i64> %110, splat (i64 4294967295)
  %113 = mul nuw <8 x i64> %112, %111
  %114 = shufflevector <8 x i64> %108, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %115 = add <8 x i64> %99, %114
  %116 = add <8 x i64> %115, %113
  store <8 x i64> %116, ptr %0, align 64, !alias.scope !621, !noalias !624
  br label %117

117:                                              ; preds = %97, %102
  %118 = phi <8 x i64> [ %98, %97 ], [ %116, %102 ]
  %119 = getelementptr inbounds nuw i8, ptr %14, i64 %45
  %120 = lshr <8 x i64> %118, splat (i64 47)
  %121 = load <16 x i32>, ptr %119, align 1, !noalias !614
  %122 = bitcast <8 x i64> %118 to <16 x i32>
  %123 = bitcast <8 x i64> %120 to <16 x i32>
  %124 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %121, <16 x i32> %122, <16 x i32> %123, i32 150)
  %125 = bitcast <16 x i32> %124 to <8 x i64>
  %126 = lshr <8 x i64> %125, splat (i64 32)
  %127 = and <8 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <8 x i64> %127, splat (i64 2654435761)
  %129 = mul <8 x i64> %126, splat (i64 -7046029290881679360)
  %130 = add <8 x i64> %128, %129
  store <8 x i64> %130, ptr %0, align 64, !alias.scope !628, !noalias !631
  %131 = shl nuw nsw i64 %49, 6
  %132 = getelementptr inbounds nuw i8, ptr %38, i64 %131
  %133 = icmp eq i64 %49, 4
  br i1 %133, label %249, label %134

134:                                              ; preds = %117
  %135 = add i64 %47, 3
  %136 = and i64 %52, 1
  %137 = icmp eq i64 %135, %43
  br i1 %137, label %230, label %138

138:                                              ; preds = %134
  %139 = and i64 %52, 6
  br label %140

140:                                              ; preds = %140, %138
  %141 = phi <8 x i64> [ %130, %138 ], [ %172, %140 ]
  %142 = phi i64 [ 0, %138 ], [ %173, %140 ]
  %143 = phi i64 [ 0, %138 ], [ %174, %140 ]
  %144 = shl i64 %142, 6
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 %144
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %146, i32 0, i32 3, i32 1), !noalias !614
  %147 = shl i64 %142, 3
  %148 = getelementptr inbounds nuw i8, ptr %14, i64 %147
  %149 = load <8 x i64>, ptr %145, align 1, !noalias !633
  %150 = load <8 x i64>, ptr %148, align 1, !noalias !614
  %151 = xor <8 x i64> %150, %149
  %152 = lshr <8 x i64> %151, splat (i64 32)
  %153 = and <8 x i64> %151, splat (i64 4294967295)
  %154 = mul nuw <8 x i64> %153, %152
  %155 = shufflevector <8 x i64> %149, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %156 = add <8 x i64> %141, %155
  %157 = add <8 x i64> %156, %154
  store <8 x i64> %157, ptr %0, align 64, !alias.scope !636, !noalias !638
  %158 = or disjoint i64 %142, 1
  %159 = shl i64 %158, 6
  %160 = getelementptr inbounds nuw i8, ptr %132, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %161, i32 0, i32 3, i32 1), !noalias !614
  %162 = shl i64 %158, 3
  %163 = getelementptr inbounds nuw i8, ptr %14, i64 %162
  %164 = load <8 x i64>, ptr %160, align 1, !noalias !633
  %165 = load <8 x i64>, ptr %163, align 1, !noalias !614
  %166 = xor <8 x i64> %165, %164
  %167 = lshr <8 x i64> %166, splat (i64 32)
  %168 = and <8 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <8 x i64> %168, %167
  %170 = shufflevector <8 x i64> %164, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %171 = add <8 x i64> %157, %170
  %172 = add <8 x i64> %171, %169
  store <8 x i64> %172, ptr %0, align 64, !alias.scope !636, !noalias !638
  %173 = add nuw i64 %142, 2
  %174 = add i64 %143, 2
  %175 = icmp eq i64 %174, %139
  br i1 %175, label %230, label %140, !llvm.loop !562

176:                                              ; preds = %35
  %177 = shl i64 %47, 3
  %178 = getelementptr inbounds nuw i8, ptr %14, i64 %177
  %179 = ptrtoint ptr %0 to i64
  %180 = and i64 %179, 63
  %181 = icmp eq i64 %180, 0
  tail call void @llvm.assume(i1 %181), !noalias !614
  %182 = load <8 x i64>, ptr %0, align 64, !alias.scope !640, !noalias !643
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %183, i32 0, i32 3, i32 1), !noalias !614
  %184 = load <8 x i64>, ptr %38, align 64, !noalias !646
  %185 = load <8 x i64>, ptr %178, align 1, !noalias !614
  %186 = xor <8 x i64> %185, %184
  %187 = lshr <8 x i64> %186, splat (i64 32)
  %188 = and <8 x i64> %186, splat (i64 4294967295)
  %189 = mul nuw <8 x i64> %188, %187
  %190 = shufflevector <8 x i64> %184, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %191 = add <8 x i64> %182, %190
  %192 = add <8 x i64> %191, %189
  store <8 x i64> %192, ptr %0, align 64, !alias.scope !640, !noalias !643
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %194, i32 0, i32 3, i32 1), !noalias !614
  %195 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %196 = load <8 x i64>, ptr %193, align 64, !noalias !646
  %197 = load <8 x i64>, ptr %195, align 1, !noalias !614
  %198 = xor <8 x i64> %197, %196
  %199 = lshr <8 x i64> %198, splat (i64 32)
  %200 = and <8 x i64> %198, splat (i64 4294967295)
  %201 = mul nuw <8 x i64> %200, %199
  %202 = shufflevector <8 x i64> %196, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %203 = add <8 x i64> %192, %202
  %204 = add <8 x i64> %203, %201
  store <8 x i64> %204, ptr %0, align 64, !alias.scope !640, !noalias !643
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %206, i32 0, i32 3, i32 1), !noalias !614
  %207 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %208 = load <8 x i64>, ptr %205, align 64, !noalias !646
  %209 = load <8 x i64>, ptr %207, align 1, !noalias !614
  %210 = xor <8 x i64> %209, %208
  %211 = lshr <8 x i64> %210, splat (i64 32)
  %212 = and <8 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <8 x i64> %212, %211
  %214 = shufflevector <8 x i64> %208, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %215 = add <8 x i64> %204, %214
  %216 = add <8 x i64> %215, %213
  store <8 x i64> %216, ptr %0, align 64, !alias.scope !640, !noalias !643
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %218, i32 0, i32 3, i32 1), !noalias !614
  %219 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %220 = load <8 x i64>, ptr %217, align 64, !noalias !646
  %221 = load <8 x i64>, ptr %219, align 1, !noalias !614
  %222 = xor <8 x i64> %221, %220
  %223 = lshr <8 x i64> %222, splat (i64 32)
  %224 = and <8 x i64> %222, splat (i64 4294967295)
  %225 = mul nuw <8 x i64> %224, %223
  %226 = shufflevector <8 x i64> %220, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %227 = add <8 x i64> %216, %226
  %228 = add <8 x i64> %227, %225
  store <8 x i64> %228, ptr %0, align 64, !alias.scope !640, !noalias !643
  %229 = add i64 %47, 4
  br label %249

230:                                              ; preds = %140, %134
  %231 = phi <8 x i64> [ %130, %134 ], [ %172, %140 ]
  %232 = phi i64 [ 0, %134 ], [ %173, %140 ]
  %233 = icmp eq i64 %136, 0
  br i1 %233, label %249, label %234

234:                                              ; preds = %230
  %235 = shl i64 %232, 6
  %236 = getelementptr inbounds nuw i8, ptr %132, i64 %235
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %237, i32 0, i32 3, i32 1), !noalias !614
  %238 = shl i64 %232, 3
  %239 = getelementptr inbounds nuw i8, ptr %14, i64 %238
  %240 = load <8 x i64>, ptr %236, align 1, !noalias !633
  %241 = load <8 x i64>, ptr %239, align 1, !noalias !614
  %242 = xor <8 x i64> %241, %240
  %243 = lshr <8 x i64> %242, splat (i64 32)
  %244 = and <8 x i64> %242, splat (i64 4294967295)
  %245 = mul nuw <8 x i64> %244, %243
  %246 = shufflevector <8 x i64> %240, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %247 = add <8 x i64> %231, %246
  %248 = add <8 x i64> %247, %245
  store <8 x i64> %248, ptr %0, align 64, !alias.scope !636, !noalias !638
  br label %249

249:                                              ; preds = %234, %230, %117, %176
  %250 = phi i64 [ %229, %176 ], [ 0, %117 ], [ %52, %230 ], [ %52, %234 ]
  store i64 %250, ptr %41, align 8, !alias.scope !614, !noalias !617
  store i32 0, ptr %18, align 64, !alias.scope !609, !noalias !612
  br label %251

251:                                              ; preds = %32, %249
  %252 = phi i64 [ %43, %249 ], [ %34, %32 ]
  %253 = phi ptr [ %40, %249 ], [ %1, %32 ]
  %254 = icmp ult ptr %253, %9
  tail call void @llvm.assume(i1 %254)
  %255 = ptrtoint ptr %9 to i64
  %256 = ptrtoint ptr %253 to i64
  %257 = sub i64 %255, %256
  %258 = shl i64 %252, 6
  %259 = icmp ugt i64 %257, %258
  br i1 %259, label %260, label %515

260:                                              ; preds = %251
  %261 = getelementptr inbounds i8, ptr %9, i64 -1
  %262 = ptrtoint ptr %261 to i64
  %263 = sub i64 %262, %256
  %264 = lshr i64 %263, 6
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %266 = load i64, ptr %265, align 8, !alias.scope !609, !noalias !612
  %267 = icmp uge i64 %252, %266
  tail call void @llvm.assume(i1 %267)
  %268 = sub i64 %252, %266
  %269 = icmp ule i64 %268, %264
  tail call void @llvm.assume(i1 %269)
  %270 = shl i64 %266, 3
  %271 = getelementptr inbounds nuw i8, ptr %14, i64 %270
  %272 = icmp eq i64 %252, %266
  %273 = load <8 x i64>, ptr %0, align 64, !alias.scope !647, !noalias !650
  br i1 %272, label %280, label %274

274:                                              ; preds = %260
  %275 = add i64 %266, 1
  %276 = and i64 %268, 1
  %277 = icmp eq i64 %252, %275
  br i1 %277, label %320, label %278

278:                                              ; preds = %274
  %279 = and i64 %268, -2
  br label %284

280:                                              ; preds = %260
  %281 = ptrtoint ptr %0 to i64
  %282 = and i64 %281, 63
  %283 = icmp eq i64 %282, 0
  br label %340

284:                                              ; preds = %284, %278
  %285 = phi <8 x i64> [ %273, %278 ], [ %316, %284 ]
  %286 = phi i64 [ 0, %278 ], [ %317, %284 ]
  %287 = phi i64 [ 0, %278 ], [ %318, %284 ]
  %288 = shl i64 %286, 6
  %289 = getelementptr inbounds nuw i8, ptr %253, i64 %288
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %290, i32 0, i32 3, i32 1)
  %291 = shl i64 %286, 3
  %292 = getelementptr inbounds nuw i8, ptr %271, i64 %291
  %293 = load <8 x i64>, ptr %289, align 1, !noalias !652
  %294 = load <8 x i64>, ptr %292, align 1
  %295 = xor <8 x i64> %294, %293
  %296 = lshr <8 x i64> %295, splat (i64 32)
  %297 = and <8 x i64> %295, splat (i64 4294967295)
  %298 = mul nuw <8 x i64> %297, %296
  %299 = shufflevector <8 x i64> %293, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %300 = add <8 x i64> %285, %299
  %301 = add <8 x i64> %300, %298
  store <8 x i64> %301, ptr %0, align 64, !alias.scope !655, !noalias !657
  %302 = or disjoint i64 %286, 1
  %303 = shl i64 %302, 6
  %304 = getelementptr inbounds nuw i8, ptr %253, i64 %303
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %305, i32 0, i32 3, i32 1)
  %306 = shl i64 %302, 3
  %307 = getelementptr inbounds nuw i8, ptr %271, i64 %306
  %308 = load <8 x i64>, ptr %304, align 1, !noalias !652
  %309 = load <8 x i64>, ptr %307, align 1
  %310 = xor <8 x i64> %309, %308
  %311 = lshr <8 x i64> %310, splat (i64 32)
  %312 = and <8 x i64> %310, splat (i64 4294967295)
  %313 = mul nuw <8 x i64> %312, %311
  %314 = shufflevector <8 x i64> %308, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %315 = add <8 x i64> %301, %314
  %316 = add <8 x i64> %315, %313
  store <8 x i64> %316, ptr %0, align 64, !alias.scope !655, !noalias !657
  %317 = add nuw i64 %286, 2
  %318 = add i64 %287, 2
  %319 = icmp eq i64 %318, %279
  br i1 %319, label %320, label %284, !llvm.loop !562

320:                                              ; preds = %284, %274
  %321 = phi <8 x i64> [ poison, %274 ], [ %316, %284 ]
  %322 = phi <8 x i64> [ %273, %274 ], [ %316, %284 ]
  %323 = phi i64 [ 0, %274 ], [ %317, %284 ]
  %324 = icmp eq i64 %276, 0
  br i1 %324, label %340, label %325

325:                                              ; preds = %320
  %326 = shl i64 %323, 6
  %327 = getelementptr inbounds nuw i8, ptr %253, i64 %326
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %328, i32 0, i32 3, i32 1)
  %329 = shl i64 %323, 3
  %330 = getelementptr inbounds nuw i8, ptr %271, i64 %329
  %331 = load <8 x i64>, ptr %327, align 1, !noalias !652
  %332 = load <8 x i64>, ptr %330, align 1
  %333 = xor <8 x i64> %332, %331
  %334 = lshr <8 x i64> %333, splat (i64 32)
  %335 = and <8 x i64> %333, splat (i64 4294967295)
  %336 = mul nuw <8 x i64> %335, %334
  %337 = shufflevector <8 x i64> %331, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %338 = add <8 x i64> %322, %337
  %339 = add <8 x i64> %338, %336
  store <8 x i64> %339, ptr %0, align 64, !alias.scope !655, !noalias !657
  br label %340

340:                                              ; preds = %325, %320, %280
  %341 = phi i1 [ %283, %280 ], [ true, %320 ], [ true, %325 ]
  %342 = phi <8 x i64> [ %273, %280 ], [ %321, %320 ], [ %339, %325 ]
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %344 = load i64, ptr %343, align 32, !alias.scope !609, !noalias !612
  %345 = getelementptr inbounds nuw i8, ptr %14, i64 %344
  tail call void @llvm.assume(i1 %341)
  %346 = lshr <8 x i64> %342, splat (i64 47)
  %347 = load <16 x i32>, ptr %345, align 1
  %348 = bitcast <8 x i64> %342 to <16 x i32>
  %349 = bitcast <8 x i64> %346 to <16 x i32>
  %350 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %347, <16 x i32> %348, <16 x i32> %349, i32 150)
  %351 = bitcast <16 x i32> %350 to <8 x i64>
  %352 = lshr <8 x i64> %351, splat (i64 32)
  %353 = and <8 x i64> %351, splat (i64 4294967295)
  %354 = mul nuw <8 x i64> %353, splat (i64 2654435761)
  %355 = mul <8 x i64> %352, splat (i64 -7046029290881679360)
  %356 = add <8 x i64> %354, %355
  store <8 x i64> %356, ptr %0, align 64, !alias.scope !647, !noalias !650
  store i64 0, ptr %265, align 8, !alias.scope !609, !noalias !612
  %357 = shl nuw i64 %268, 6
  %358 = getelementptr inbounds nuw i8, ptr %253, i64 %357
  %359 = sub nsw i64 %264, %268
  %360 = icmp ult i64 %359, %252
  br i1 %360, label %370, label %361

361:                                              ; preds = %340
  %362 = and i64 %252, 1
  %363 = icmp eq i64 %252, 1
  %364 = and i64 %252, -2
  %365 = icmp eq i64 %362, 0
  br label %366

366:                                              ; preds = %361, %435
  %367 = phi <8 x i64> [ %356, %361 ], [ %447, %435 ]
  %368 = phi ptr [ %358, %361 ], [ %448, %435 ]
  %369 = phi i64 [ %359, %361 ], [ %449, %435 ]
  switch i64 %252, label %380 [
    i64 0, label %435
    i64 1, label %416
  ]

370:                                              ; preds = %435, %340
  %371 = phi <8 x i64> [ %356, %340 ], [ %447, %435 ]
  %372 = phi i64 [ %359, %340 ], [ %449, %435 ]
  %373 = phi ptr [ %358, %340 ], [ %448, %435 ]
  %374 = icmp eq i64 %372, 0
  br i1 %374, label %506, label %375

375:                                              ; preds = %370
  %376 = and i64 %372, 1
  %377 = icmp eq i64 %372, 1
  br i1 %377, label %487, label %378

378:                                              ; preds = %375
  %379 = and i64 %372, -2
  br label %451

380:                                              ; preds = %366, %380
  %381 = phi <8 x i64> [ %412, %380 ], [ %367, %366 ]
  %382 = phi i64 [ %413, %380 ], [ 0, %366 ]
  %383 = phi i64 [ %414, %380 ], [ 0, %366 ]
  %384 = shl i64 %382, 6
  %385 = getelementptr inbounds nuw i8, ptr %368, i64 %384
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %386, i32 0, i32 3, i32 1)
  %387 = shl i64 %382, 3
  %388 = getelementptr inbounds nuw i8, ptr %14, i64 %387
  %389 = load <8 x i64>, ptr %385, align 1, !noalias !659
  %390 = load <8 x i64>, ptr %388, align 1
  %391 = xor <8 x i64> %390, %389
  %392 = lshr <8 x i64> %391, splat (i64 32)
  %393 = and <8 x i64> %391, splat (i64 4294967295)
  %394 = mul nuw <8 x i64> %393, %392
  %395 = shufflevector <8 x i64> %389, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %396 = add <8 x i64> %381, %395
  %397 = add <8 x i64> %396, %394
  store <8 x i64> %397, ptr %0, align 64, !alias.scope !662, !noalias !664
  %398 = or disjoint i64 %382, 1
  %399 = shl i64 %398, 6
  %400 = getelementptr inbounds nuw i8, ptr %368, i64 %399
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %401, i32 0, i32 3, i32 1)
  %402 = shl i64 %398, 3
  %403 = getelementptr inbounds nuw i8, ptr %14, i64 %402
  %404 = load <8 x i64>, ptr %400, align 1, !noalias !659
  %405 = load <8 x i64>, ptr %403, align 1
  %406 = xor <8 x i64> %405, %404
  %407 = lshr <8 x i64> %406, splat (i64 32)
  %408 = and <8 x i64> %406, splat (i64 4294967295)
  %409 = mul nuw <8 x i64> %408, %407
  %410 = shufflevector <8 x i64> %404, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %411 = add <8 x i64> %397, %410
  %412 = add <8 x i64> %411, %409
  store <8 x i64> %412, ptr %0, align 64, !alias.scope !662, !noalias !664
  %413 = add nuw i64 %382, 2
  %414 = add i64 %383, 2
  %415 = icmp eq i64 %414, %364
  br i1 %415, label %416, label %380, !llvm.loop !562

416:                                              ; preds = %380, %366
  %417 = phi <8 x i64> [ poison, %366 ], [ %412, %380 ]
  %418 = phi <8 x i64> [ %367, %366 ], [ %412, %380 ]
  %419 = phi i64 [ 0, %366 ], [ %413, %380 ]
  br i1 %365, label %435, label %420

420:                                              ; preds = %416
  %421 = shl i64 %419, 6
  %422 = getelementptr inbounds nuw i8, ptr %368, i64 %421
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %423, i32 0, i32 3, i32 1)
  %424 = shl i64 %419, 3
  %425 = getelementptr inbounds nuw i8, ptr %14, i64 %424
  %426 = load <8 x i64>, ptr %422, align 1, !noalias !659
  %427 = load <8 x i64>, ptr %425, align 1
  %428 = xor <8 x i64> %427, %426
  %429 = lshr <8 x i64> %428, splat (i64 32)
  %430 = and <8 x i64> %428, splat (i64 4294967295)
  %431 = mul nuw <8 x i64> %430, %429
  %432 = shufflevector <8 x i64> %426, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %433 = add <8 x i64> %418, %432
  %434 = add <8 x i64> %433, %431
  store <8 x i64> %434, ptr %0, align 64, !alias.scope !662, !noalias !664
  br label %435

435:                                              ; preds = %420, %416, %366
  %436 = phi <8 x i64> [ %367, %366 ], [ %417, %416 ], [ %434, %420 ]
  %437 = lshr <8 x i64> %436, splat (i64 47)
  %438 = load <16 x i32>, ptr %345, align 1
  %439 = bitcast <8 x i64> %436 to <16 x i32>
  %440 = bitcast <8 x i64> %437 to <16 x i32>
  %441 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %438, <16 x i32> %439, <16 x i32> %440, i32 150)
  %442 = bitcast <16 x i32> %441 to <8 x i64>
  %443 = lshr <8 x i64> %442, splat (i64 32)
  %444 = and <8 x i64> %442, splat (i64 4294967295)
  %445 = mul nuw <8 x i64> %444, splat (i64 2654435761)
  %446 = mul <8 x i64> %443, splat (i64 -7046029290881679360)
  %447 = add <8 x i64> %445, %446
  store <8 x i64> %447, ptr %0, align 64, !alias.scope !666, !noalias !669
  %448 = getelementptr inbounds nuw i8, ptr %368, i64 %258
  %449 = sub i64 %369, %252
  %450 = icmp ult i64 %449, %252
  br i1 %450, label %370, label %366, !llvm.loop !206

451:                                              ; preds = %451, %378
  %452 = phi <8 x i64> [ %371, %378 ], [ %483, %451 ]
  %453 = phi i64 [ 0, %378 ], [ %484, %451 ]
  %454 = phi i64 [ 0, %378 ], [ %485, %451 ]
  %455 = shl i64 %453, 6
  %456 = getelementptr inbounds nuw i8, ptr %373, i64 %455
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %457, i32 0, i32 3, i32 1)
  %458 = shl i64 %453, 3
  %459 = getelementptr inbounds nuw i8, ptr %14, i64 %458
  %460 = load <8 x i64>, ptr %456, align 1, !noalias !671
  %461 = load <8 x i64>, ptr %459, align 1
  %462 = xor <8 x i64> %461, %460
  %463 = lshr <8 x i64> %462, splat (i64 32)
  %464 = and <8 x i64> %462, splat (i64 4294967295)
  %465 = mul nuw <8 x i64> %464, %463
  %466 = shufflevector <8 x i64> %460, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %467 = add <8 x i64> %452, %466
  %468 = add <8 x i64> %467, %465
  store <8 x i64> %468, ptr %0, align 64, !alias.scope !674, !noalias !676
  %469 = or disjoint i64 %453, 1
  %470 = shl i64 %469, 6
  %471 = getelementptr inbounds nuw i8, ptr %373, i64 %470
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %472, i32 0, i32 3, i32 1)
  %473 = shl i64 %469, 3
  %474 = getelementptr inbounds nuw i8, ptr %14, i64 %473
  %475 = load <8 x i64>, ptr %471, align 1, !noalias !671
  %476 = load <8 x i64>, ptr %474, align 1
  %477 = xor <8 x i64> %476, %475
  %478 = lshr <8 x i64> %477, splat (i64 32)
  %479 = and <8 x i64> %477, splat (i64 4294967295)
  %480 = mul nuw <8 x i64> %479, %478
  %481 = shufflevector <8 x i64> %475, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %482 = add <8 x i64> %468, %481
  %483 = add <8 x i64> %482, %480
  store <8 x i64> %483, ptr %0, align 64, !alias.scope !674, !noalias !676
  %484 = add nuw i64 %453, 2
  %485 = add i64 %454, 2
  %486 = icmp eq i64 %485, %379
  br i1 %486, label %487, label %451, !llvm.loop !562

487:                                              ; preds = %451, %375
  %488 = phi <8 x i64> [ %371, %375 ], [ %483, %451 ]
  %489 = phi i64 [ 0, %375 ], [ %484, %451 ]
  %490 = icmp eq i64 %376, 0
  br i1 %490, label %506, label %491

491:                                              ; preds = %487
  %492 = shl i64 %489, 6
  %493 = getelementptr inbounds nuw i8, ptr %373, i64 %492
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %494, i32 0, i32 3, i32 1)
  %495 = shl i64 %489, 3
  %496 = getelementptr inbounds nuw i8, ptr %14, i64 %495
  %497 = load <8 x i64>, ptr %493, align 1, !noalias !671
  %498 = load <8 x i64>, ptr %496, align 1
  %499 = xor <8 x i64> %498, %497
  %500 = lshr <8 x i64> %499, splat (i64 32)
  %501 = and <8 x i64> %499, splat (i64 4294967295)
  %502 = mul nuw <8 x i64> %501, %500
  %503 = shufflevector <8 x i64> %497, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %504 = add <8 x i64> %488, %503
  %505 = add <8 x i64> %504, %502
  store <8 x i64> %505, ptr %0, align 64, !alias.scope !674, !noalias !676
  br label %506

506:                                              ; preds = %491, %487, %370
  %507 = shl i64 %372, 6
  %508 = getelementptr inbounds nuw i8, ptr %373, i64 %507
  %509 = icmp ult ptr %508, %9
  tail call void @llvm.assume(i1 %509)
  store i64 %372, ptr %265, align 8, !alias.scope !609, !noalias !612
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %511 = getelementptr inbounds i8, ptr %508, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %510, ptr noundef nonnull readonly align 1 dereferenceable(64) %511, i64 64, i1 false)
  %512 = ptrtoint ptr %508 to i64
  %513 = sub i64 %255, %512
  %514 = icmp slt i64 %513, 65
  tail call void @llvm.assume(i1 %514)
  br label %737

515:                                              ; preds = %251
  %516 = icmp sgt i64 %257, 256
  br i1 %516, label %517, label %737

517:                                              ; preds = %515
  %518 = getelementptr inbounds i8, ptr %9, i64 -256
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %521 = load i64, ptr %520, align 32, !alias.scope !609, !noalias !612
  %522 = icmp ugt i64 %252, 3
  tail call void @llvm.assume(i1 %522)
  %523 = load i64, ptr %519, align 8, !alias.scope !678, !noalias !681
  %524 = ptrtoint ptr %0 to i64
  %525 = and i64 %524, 63
  %526 = icmp eq i64 %525, 0
  %527 = getelementptr inbounds nuw i8, ptr %14, i64 %521
  br label %528

528:                                              ; preds = %728, %517
  %529 = phi i64 [ %523, %517 ], [ %729, %728 ]
  %530 = phi ptr [ %253, %517 ], [ %730, %728 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %531 = icmp ult i64 %529, %252
  tail call void @llvm.assume(i1 %531)
  %532 = sub i64 %252, %529
  %533 = icmp ult i64 %532, 5
  br i1 %533, label %534, label %658

534:                                              ; preds = %528
  %535 = sub nuw nsw i64 4, %532
  %536 = shl i64 %529, 3
  %537 = getelementptr inbounds nuw i8, ptr %14, i64 %536
  tail call void @llvm.assume(i1 %526), !noalias !678
  %538 = load <8 x i64>, ptr %0, align 64, !alias.scope !685, !noalias !688
  %539 = add i64 %529, 1
  %540 = and i64 %532, 1
  %541 = icmp eq i64 %252, %539
  br i1 %541, label %580, label %542

542:                                              ; preds = %534
  %543 = and i64 %532, 6
  br label %544

544:                                              ; preds = %544, %542
  %545 = phi <8 x i64> [ %538, %542 ], [ %576, %544 ]
  %546 = phi i64 [ 0, %542 ], [ %577, %544 ]
  %547 = phi i64 [ 0, %542 ], [ %578, %544 ]
  %548 = shl i64 %546, 6
  %549 = getelementptr inbounds nuw i8, ptr %530, i64 %548
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %550, i32 0, i32 3, i32 1), !noalias !678
  %551 = shl i64 %546, 3
  %552 = getelementptr inbounds nuw i8, ptr %537, i64 %551
  %553 = load <8 x i64>, ptr %549, align 1, !noalias !691
  %554 = load <8 x i64>, ptr %552, align 1, !noalias !678
  %555 = xor <8 x i64> %554, %553
  %556 = lshr <8 x i64> %555, splat (i64 32)
  %557 = and <8 x i64> %555, splat (i64 4294967295)
  %558 = mul nuw <8 x i64> %557, %556
  %559 = shufflevector <8 x i64> %553, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %560 = add <8 x i64> %545, %559
  %561 = add <8 x i64> %560, %558
  store <8 x i64> %561, ptr %0, align 64, !alias.scope !685, !noalias !688
  %562 = or disjoint i64 %546, 1
  %563 = shl i64 %562, 6
  %564 = getelementptr inbounds nuw i8, ptr %530, i64 %563
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %565, i32 0, i32 3, i32 1), !noalias !678
  %566 = shl i64 %562, 3
  %567 = getelementptr inbounds nuw i8, ptr %537, i64 %566
  %568 = load <8 x i64>, ptr %564, align 1, !noalias !691
  %569 = load <8 x i64>, ptr %567, align 1, !noalias !678
  %570 = xor <8 x i64> %569, %568
  %571 = lshr <8 x i64> %570, splat (i64 32)
  %572 = and <8 x i64> %570, splat (i64 4294967295)
  %573 = mul nuw <8 x i64> %572, %571
  %574 = shufflevector <8 x i64> %568, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %575 = add <8 x i64> %561, %574
  %576 = add <8 x i64> %575, %573
  store <8 x i64> %576, ptr %0, align 64, !alias.scope !685, !noalias !688
  %577 = add nuw i64 %546, 2
  %578 = add i64 %547, 2
  %579 = icmp eq i64 %578, %543
  br i1 %579, label %580, label %544, !llvm.loop !562

580:                                              ; preds = %544, %534
  %581 = phi <8 x i64> [ poison, %534 ], [ %576, %544 ]
  %582 = phi <8 x i64> [ %538, %534 ], [ %576, %544 ]
  %583 = phi i64 [ 0, %534 ], [ %577, %544 ]
  %584 = icmp eq i64 %540, 0
  br i1 %584, label %600, label %585

585:                                              ; preds = %580
  %586 = shl i64 %583, 6
  %587 = getelementptr inbounds nuw i8, ptr %530, i64 %586
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %588, i32 0, i32 3, i32 1), !noalias !678
  %589 = shl i64 %583, 3
  %590 = getelementptr inbounds nuw i8, ptr %537, i64 %589
  %591 = load <8 x i64>, ptr %587, align 1, !noalias !691
  %592 = load <8 x i64>, ptr %590, align 1, !noalias !678
  %593 = xor <8 x i64> %592, %591
  %594 = lshr <8 x i64> %593, splat (i64 32)
  %595 = and <8 x i64> %593, splat (i64 4294967295)
  %596 = mul nuw <8 x i64> %595, %594
  %597 = shufflevector <8 x i64> %591, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %598 = add <8 x i64> %582, %597
  %599 = add <8 x i64> %598, %596
  store <8 x i64> %599, ptr %0, align 64, !alias.scope !685, !noalias !688
  br label %600

600:                                              ; preds = %580, %585
  %601 = phi <8 x i64> [ %581, %580 ], [ %599, %585 ]
  %602 = lshr <8 x i64> %601, splat (i64 47)
  %603 = load <16 x i32>, ptr %527, align 1, !noalias !678
  %604 = bitcast <8 x i64> %601 to <16 x i32>
  %605 = bitcast <8 x i64> %602 to <16 x i32>
  %606 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %603, <16 x i32> %604, <16 x i32> %605, i32 150)
  %607 = bitcast <16 x i32> %606 to <8 x i64>
  %608 = lshr <8 x i64> %607, splat (i64 32)
  %609 = and <8 x i64> %607, splat (i64 4294967295)
  %610 = mul nuw <8 x i64> %609, splat (i64 2654435761)
  %611 = mul <8 x i64> %608, splat (i64 -7046029290881679360)
  %612 = add <8 x i64> %610, %611
  store <8 x i64> %612, ptr %0, align 64, !alias.scope !692, !noalias !695
  %613 = shl nuw nsw i64 %532, 6
  %614 = getelementptr inbounds nuw i8, ptr %530, i64 %613
  %615 = icmp eq i64 %532, 4
  br i1 %615, label %728, label %616

616:                                              ; preds = %600
  %617 = sub i64 %529, %252
  %618 = and i64 %535, 1
  %619 = icmp eq i64 %617, -3
  br i1 %619, label %709, label %620

620:                                              ; preds = %616
  %621 = and i64 %535, 6
  br label %622

622:                                              ; preds = %622, %620
  %623 = phi <8 x i64> [ %612, %620 ], [ %654, %622 ]
  %624 = phi i64 [ 0, %620 ], [ %655, %622 ]
  %625 = phi i64 [ 0, %620 ], [ %656, %622 ]
  %626 = shl i64 %624, 6
  %627 = getelementptr inbounds nuw i8, ptr %614, i64 %626
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %628, i32 0, i32 3, i32 1), !noalias !678
  %629 = shl i64 %624, 3
  %630 = getelementptr inbounds nuw i8, ptr %14, i64 %629
  %631 = load <8 x i64>, ptr %627, align 1, !noalias !697
  %632 = load <8 x i64>, ptr %630, align 1, !noalias !678
  %633 = xor <8 x i64> %632, %631
  %634 = lshr <8 x i64> %633, splat (i64 32)
  %635 = and <8 x i64> %633, splat (i64 4294967295)
  %636 = mul nuw <8 x i64> %635, %634
  %637 = shufflevector <8 x i64> %631, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %638 = add <8 x i64> %623, %637
  %639 = add <8 x i64> %638, %636
  store <8 x i64> %639, ptr %0, align 64, !alias.scope !700, !noalias !702
  %640 = or disjoint i64 %624, 1
  %641 = shl i64 %640, 6
  %642 = getelementptr inbounds nuw i8, ptr %614, i64 %641
  %643 = getelementptr inbounds nuw i8, ptr %642, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %643, i32 0, i32 3, i32 1), !noalias !678
  %644 = shl i64 %640, 3
  %645 = getelementptr inbounds nuw i8, ptr %14, i64 %644
  %646 = load <8 x i64>, ptr %642, align 1, !noalias !697
  %647 = load <8 x i64>, ptr %645, align 1, !noalias !678
  %648 = xor <8 x i64> %647, %646
  %649 = lshr <8 x i64> %648, splat (i64 32)
  %650 = and <8 x i64> %648, splat (i64 4294967295)
  %651 = mul nuw <8 x i64> %650, %649
  %652 = shufflevector <8 x i64> %646, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %653 = add <8 x i64> %639, %652
  %654 = add <8 x i64> %653, %651
  store <8 x i64> %654, ptr %0, align 64, !alias.scope !700, !noalias !702
  %655 = add nuw i64 %624, 2
  %656 = add i64 %625, 2
  %657 = icmp eq i64 %656, %621
  br i1 %657, label %709, label %622, !llvm.loop !562

658:                                              ; preds = %528
  %659 = shl i64 %529, 3
  %660 = getelementptr inbounds nuw i8, ptr %14, i64 %659
  tail call void @llvm.assume(i1 %526), !noalias !678
  %661 = load <8 x i64>, ptr %0, align 64, !alias.scope !704, !noalias !707
  %662 = getelementptr inbounds nuw i8, ptr %530, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %662, i32 0, i32 3, i32 1), !noalias !678
  %663 = load <8 x i64>, ptr %530, align 1, !noalias !710
  %664 = load <8 x i64>, ptr %660, align 1, !noalias !678
  %665 = xor <8 x i64> %664, %663
  %666 = lshr <8 x i64> %665, splat (i64 32)
  %667 = and <8 x i64> %665, splat (i64 4294967295)
  %668 = mul nuw <8 x i64> %667, %666
  %669 = shufflevector <8 x i64> %663, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %670 = add <8 x i64> %661, %669
  %671 = add <8 x i64> %670, %668
  store <8 x i64> %671, ptr %0, align 64, !alias.scope !704, !noalias !707
  %672 = getelementptr inbounds nuw i8, ptr %530, i64 64
  %673 = getelementptr inbounds nuw i8, ptr %530, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %673, i32 0, i32 3, i32 1), !noalias !678
  %674 = getelementptr inbounds nuw i8, ptr %660, i64 8
  %675 = load <8 x i64>, ptr %672, align 1, !noalias !710
  %676 = load <8 x i64>, ptr %674, align 1, !noalias !678
  %677 = xor <8 x i64> %676, %675
  %678 = lshr <8 x i64> %677, splat (i64 32)
  %679 = and <8 x i64> %677, splat (i64 4294967295)
  %680 = mul nuw <8 x i64> %679, %678
  %681 = shufflevector <8 x i64> %675, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %682 = add <8 x i64> %671, %681
  %683 = add <8 x i64> %682, %680
  store <8 x i64> %683, ptr %0, align 64, !alias.scope !704, !noalias !707
  %684 = getelementptr inbounds nuw i8, ptr %530, i64 128
  %685 = getelementptr inbounds nuw i8, ptr %530, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %685, i32 0, i32 3, i32 1), !noalias !678
  %686 = getelementptr inbounds nuw i8, ptr %660, i64 16
  %687 = load <8 x i64>, ptr %684, align 1, !noalias !710
  %688 = load <8 x i64>, ptr %686, align 1, !noalias !678
  %689 = xor <8 x i64> %688, %687
  %690 = lshr <8 x i64> %689, splat (i64 32)
  %691 = and <8 x i64> %689, splat (i64 4294967295)
  %692 = mul nuw <8 x i64> %691, %690
  %693 = shufflevector <8 x i64> %687, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %694 = add <8 x i64> %683, %693
  %695 = add <8 x i64> %694, %692
  store <8 x i64> %695, ptr %0, align 64, !alias.scope !704, !noalias !707
  %696 = getelementptr inbounds nuw i8, ptr %530, i64 192
  %697 = getelementptr inbounds nuw i8, ptr %530, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %697, i32 0, i32 3, i32 1), !noalias !678
  %698 = getelementptr inbounds nuw i8, ptr %660, i64 24
  %699 = load <8 x i64>, ptr %696, align 1, !noalias !710
  %700 = load <8 x i64>, ptr %698, align 1, !noalias !678
  %701 = xor <8 x i64> %700, %699
  %702 = lshr <8 x i64> %701, splat (i64 32)
  %703 = and <8 x i64> %701, splat (i64 4294967295)
  %704 = mul nuw <8 x i64> %703, %702
  %705 = shufflevector <8 x i64> %699, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %706 = add <8 x i64> %695, %705
  %707 = add <8 x i64> %706, %704
  store <8 x i64> %707, ptr %0, align 64, !alias.scope !704, !noalias !707
  %708 = add i64 %529, 4
  br label %728

709:                                              ; preds = %622, %616
  %710 = phi <8 x i64> [ %612, %616 ], [ %654, %622 ]
  %711 = phi i64 [ 0, %616 ], [ %655, %622 ]
  %712 = icmp eq i64 %618, 0
  br i1 %712, label %728, label %713

713:                                              ; preds = %709
  %714 = shl i64 %711, 6
  %715 = getelementptr inbounds nuw i8, ptr %614, i64 %714
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %716, i32 0, i32 3, i32 1), !noalias !678
  %717 = shl i64 %711, 3
  %718 = getelementptr inbounds nuw i8, ptr %14, i64 %717
  %719 = load <8 x i64>, ptr %715, align 1, !noalias !697
  %720 = load <8 x i64>, ptr %718, align 1, !noalias !678
  %721 = xor <8 x i64> %720, %719
  %722 = lshr <8 x i64> %721, splat (i64 32)
  %723 = and <8 x i64> %721, splat (i64 4294967295)
  %724 = mul nuw <8 x i64> %723, %722
  %725 = shufflevector <8 x i64> %719, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %726 = add <8 x i64> %710, %725
  %727 = add <8 x i64> %726, %724
  store <8 x i64> %727, ptr %0, align 64, !alias.scope !700, !noalias !702
  br label %728

728:                                              ; preds = %713, %709, %600, %658
  %729 = phi i64 [ %708, %658 ], [ 0, %600 ], [ %535, %709 ], [ %535, %713 ]
  %730 = getelementptr inbounds nuw i8, ptr %530, i64 256
  %731 = icmp ult ptr %730, %518
  br i1 %731, label %528, label %732, !llvm.loop !284

732:                                              ; preds = %728
  store i64 %729, ptr %519, align 8, !alias.scope !678, !noalias !681
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %734 = getelementptr inbounds nuw i8, ptr %530, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %733, ptr noundef nonnull readonly align 1 dereferenceable(64) %734, i64 64, i1 false)
  %735 = ptrtoint ptr %730 to i64
  %736 = sub i64 %255, %735
  br label %737

737:                                              ; preds = %732, %515, %506
  %738 = phi i64 [ %736, %732 ], [ %257, %515 ], [ %513, %506 ]
  %739 = phi ptr [ %730, %732 ], [ %253, %515 ], [ %508, %506 ]
  %740 = icmp ult ptr %739, %9
  tail call void @llvm.assume(i1 %740)
  %741 = icmp slt i64 %738, 257
  tail call void @llvm.assume(i1 %741)
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %742, ptr nonnull readonly align 1 %739, i64 %738, i1 false)
  %743 = trunc i64 %738 to i32
  br label %744

744:                                              ; preds = %737, %24
  %745 = phi i32 [ %743, %737 ], [ %29, %24 ]
  store i32 %745, ptr %18, align 64, !alias.scope !609, !noalias !612
  br label %746

746:                                              ; preds = %5, %744
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i32 immarg) #11

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal { i64, i64 } @XXHL128_default_sse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #4 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %130, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %82
  %8 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %5 ], [ %122, %82 ]
  %9 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %5 ], [ %112, %82 ]
  %10 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %102, %82 ]
  %11 = phi i64 [ 0, %5 ], [ %123, %82 ]
  %12 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %5 ], [ %92, %82 ]
  %13 = shl i64 %11, 10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  br label %15

15:                                               ; preds = %15, %7
  %16 = phi <2 x i64> [ %8, %7 ], [ %79, %15 ]
  %17 = phi <2 x i64> [ %9, %7 ], [ %65, %15 ]
  %18 = phi <2 x i64> [ %10, %7 ], [ %51, %15 ]
  %19 = phi <2 x i64> [ %12, %7 ], [ %37, %15 ]
  %20 = phi i64 [ 0, %7 ], [ %80, %15 ]
  %21 = shl i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1), !noalias !714
  %24 = shl i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <2 x i64>, ptr %22, align 1, !alias.scope !711, !noalias !716
  %27 = load <2 x i64>, ptr %25, align 8, !alias.scope !714, !noalias !718
  %28 = xor <2 x i64> %27, %26
  %29 = bitcast <2 x i64> %28 to <4 x i32>
  %30 = shufflevector <4 x i32> %29, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %31 = bitcast <4 x i32> %30 to <2 x i64>
  %32 = and <2 x i64> %28, splat (i64 4294967295)
  %33 = and <2 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <2 x i64> %33, %32
  %35 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %36 = add <2 x i64> %19, %35
  %37 = add <2 x i64> %36, %34
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %39 = load <2 x i64>, ptr %38, align 1, !alias.scope !711, !noalias !716
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %41 = load <2 x i64>, ptr %40, align 8, !alias.scope !714, !noalias !718
  %42 = xor <2 x i64> %41, %39
  %43 = bitcast <2 x i64> %42 to <4 x i32>
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %45 = bitcast <4 x i32> %44 to <2 x i64>
  %46 = and <2 x i64> %42, splat (i64 4294967295)
  %47 = and <2 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <2 x i64> %47, %46
  %49 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %50 = add <2 x i64> %18, %49
  %51 = add <2 x i64> %50, %48
  %52 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %53 = load <2 x i64>, ptr %52, align 1, !alias.scope !711, !noalias !716
  %54 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %55 = load <2 x i64>, ptr %54, align 8, !alias.scope !714, !noalias !718
  %56 = xor <2 x i64> %55, %53
  %57 = bitcast <2 x i64> %56 to <4 x i32>
  %58 = shufflevector <4 x i32> %57, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %59 = bitcast <4 x i32> %58 to <2 x i64>
  %60 = and <2 x i64> %56, splat (i64 4294967295)
  %61 = and <2 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <2 x i64> %61, %60
  %63 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %64 = add <2 x i64> %17, %63
  %65 = add <2 x i64> %64, %62
  %66 = getelementptr inbounds nuw i8, ptr %22, i64 48
  %67 = load <2 x i64>, ptr %66, align 1, !alias.scope !711, !noalias !716
  %68 = getelementptr inbounds nuw i8, ptr %25, i64 48
  %69 = load <2 x i64>, ptr %68, align 8, !alias.scope !714, !noalias !718
  %70 = xor <2 x i64> %69, %67
  %71 = bitcast <2 x i64> %70 to <4 x i32>
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %73 = bitcast <4 x i32> %72 to <2 x i64>
  %74 = and <2 x i64> %70, splat (i64 4294967295)
  %75 = and <2 x i64> %73, splat (i64 4294967295)
  %76 = mul nuw <2 x i64> %75, %74
  %77 = shufflevector <2 x i64> %67, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %78 = add <2 x i64> %16, %77
  %79 = add <2 x i64> %78, %76
  %80 = add nuw nsw i64 %20, 1
  %81 = icmp eq i64 %80, 16
  br i1 %81, label %82, label %15, !llvm.loop !18

82:                                               ; preds = %15
  %83 = lshr <2 x i64> %37, splat (i64 47)
  %84 = xor <2 x i64> %37, %83
  %85 = xor <2 x i64> %84, <i64 -4329134394285701654, i64 -1485321483350670907>
  %86 = bitcast <2 x i64> %85 to <4 x i32>
  %87 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %88 = bitcast <4 x i32> %87 to <2 x i64>
  %89 = and <2 x i64> %85, splat (i64 4294967295)
  %90 = mul nuw <2 x i64> %89, splat (i64 2654435761)
  %91 = mul <2 x i64> %88, splat (i64 -7046029290881679360)
  %92 = add <2 x i64> %91, %90
  %93 = lshr <2 x i64> %51, splat (i64 47)
  %94 = xor <2 x i64> %51, %93
  %95 = xor <2 x i64> %94, <i64 5321830579834785047, i64 -7032137544937171245>
  %96 = bitcast <2 x i64> %95 to <4 x i32>
  %97 = shufflevector <4 x i32> %96, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %98 = bitcast <4 x i32> %97 to <2 x i64>
  %99 = and <2 x i64> %95, splat (i64 4294967295)
  %100 = mul nuw <2 x i64> %99, splat (i64 2654435761)
  %101 = mul <2 x i64> %98, splat (i64 -7046029290881679360)
  %102 = add <2 x i64> %101, %100
  %103 = lshr <2 x i64> %65, splat (i64 47)
  %104 = xor <2 x i64> %65, %103
  %105 = xor <2 x i64> %104, <i64 -242834301215959509, i64 -3588858202114426737>
  %106 = bitcast <2 x i64> %105 to <4 x i32>
  %107 = shufflevector <4 x i32> %106, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %108 = bitcast <4 x i32> %107 to <2 x i64>
  %109 = and <2 x i64> %105, splat (i64 4294967295)
  %110 = mul nuw <2 x i64> %109, splat (i64 2654435761)
  %111 = mul <2 x i64> %108, splat (i64 -7046029290881679360)
  %112 = add <2 x i64> %111, %110
  %113 = lshr <2 x i64> %79, splat (i64 47)
  %114 = xor <2 x i64> %79, %113
  %115 = xor <2 x i64> %114, <i64 2883454493032893253, i64 9097354517224871855>
  %116 = bitcast <2 x i64> %115 to <4 x i32>
  %117 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %118 = bitcast <4 x i32> %117 to <2 x i64>
  %119 = and <2 x i64> %115, splat (i64 4294967295)
  %120 = mul nuw <2 x i64> %119, splat (i64 2654435761)
  %121 = mul <2 x i64> %118, splat (i64 -7046029290881679360)
  %122 = add <2 x i64> %121, %120
  %123 = add nuw nsw i64 %11, 1
  %124 = icmp eq i64 %123, %6
  br i1 %124, label %125, label %7, !llvm.loop !20

125:                                              ; preds = %82
  %126 = shufflevector <2 x i64> %102, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %127 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %126, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %128 = shufflevector <2 x i64> %112, <2 x i64> %122, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %129 = shufflevector <2 x i64> %92, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %130

130:                                              ; preds = %125, %2
  %131 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %2 ], [ %112, %125 ]
  %132 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %2 ], [ %122, %125 ]
  %133 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %128, %125 ]
  %134 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %102, %125 ]
  %135 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %127, %125 ]
  %136 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %2 ], [ %92, %125 ]
  %137 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %2 ], [ %129, %125 ]
  %138 = shufflevector <4 x i64> %137, <4 x i64> %135, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %139 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %139)
  %140 = and i64 %3, -1024
  %141 = lshr i64 %3, 6
  %142 = and i64 %141, 15
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 %140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %144 = icmp eq i64 %142, 0
  br i1 %144, label %215, label %145

145:                                              ; preds = %130, %145
  %146 = phi <2 x i64> [ %209, %145 ], [ %132, %130 ]
  %147 = phi <2 x i64> [ %195, %145 ], [ %131, %130 ]
  %148 = phi <2 x i64> [ %181, %145 ], [ %134, %130 ]
  %149 = phi <2 x i64> [ %167, %145 ], [ %136, %130 ]
  %150 = phi i64 [ %210, %145 ], [ 0, %130 ]
  %151 = shl i64 %150, 6
  %152 = getelementptr inbounds nuw i8, ptr %143, i64 %151
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %153, i32 0, i32 3, i32 1), !noalias !722
  %154 = shl i64 %150, 3
  %155 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %154
  %156 = load <2 x i64>, ptr %152, align 1, !alias.scope !719, !noalias !724
  %157 = load <2 x i64>, ptr %155, align 8, !alias.scope !722, !noalias !726
  %158 = xor <2 x i64> %157, %156
  %159 = bitcast <2 x i64> %158 to <4 x i32>
  %160 = shufflevector <4 x i32> %159, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %161 = bitcast <4 x i32> %160 to <2 x i64>
  %162 = and <2 x i64> %158, splat (i64 4294967295)
  %163 = and <2 x i64> %161, splat (i64 4294967295)
  %164 = mul nuw <2 x i64> %163, %162
  %165 = shufflevector <2 x i64> %156, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %166 = add <2 x i64> %149, %165
  %167 = add <2 x i64> %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %152, i64 16
  %169 = load <2 x i64>, ptr %168, align 1, !alias.scope !719, !noalias !724
  %170 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %171 = load <2 x i64>, ptr %170, align 8, !alias.scope !722, !noalias !726
  %172 = xor <2 x i64> %171, %169
  %173 = bitcast <2 x i64> %172 to <4 x i32>
  %174 = shufflevector <4 x i32> %173, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %175 = bitcast <4 x i32> %174 to <2 x i64>
  %176 = and <2 x i64> %172, splat (i64 4294967295)
  %177 = and <2 x i64> %175, splat (i64 4294967295)
  %178 = mul nuw <2 x i64> %177, %176
  %179 = shufflevector <2 x i64> %169, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %180 = add <2 x i64> %148, %179
  %181 = add <2 x i64> %180, %178
  %182 = getelementptr inbounds nuw i8, ptr %152, i64 32
  %183 = load <2 x i64>, ptr %182, align 1, !alias.scope !719, !noalias !724
  %184 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %185 = load <2 x i64>, ptr %184, align 8, !alias.scope !722, !noalias !726
  %186 = xor <2 x i64> %185, %183
  %187 = bitcast <2 x i64> %186 to <4 x i32>
  %188 = shufflevector <4 x i32> %187, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %189 = bitcast <4 x i32> %188 to <2 x i64>
  %190 = and <2 x i64> %186, splat (i64 4294967295)
  %191 = and <2 x i64> %189, splat (i64 4294967295)
  %192 = mul nuw <2 x i64> %191, %190
  %193 = shufflevector <2 x i64> %183, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %194 = add <2 x i64> %147, %193
  %195 = add <2 x i64> %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %152, i64 48
  %197 = load <2 x i64>, ptr %196, align 1, !alias.scope !719, !noalias !724
  %198 = getelementptr inbounds nuw i8, ptr %155, i64 48
  %199 = load <2 x i64>, ptr %198, align 8, !alias.scope !722, !noalias !726
  %200 = xor <2 x i64> %199, %197
  %201 = bitcast <2 x i64> %200 to <4 x i32>
  %202 = shufflevector <4 x i32> %201, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %203 = bitcast <4 x i32> %202 to <2 x i64>
  %204 = and <2 x i64> %200, splat (i64 4294967295)
  %205 = and <2 x i64> %203, splat (i64 4294967295)
  %206 = mul nuw <2 x i64> %205, %204
  %207 = shufflevector <2 x i64> %197, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %208 = add <2 x i64> %146, %207
  %209 = add <2 x i64> %208, %206
  %210 = add nuw nsw i64 %150, 1
  %211 = icmp eq i64 %210, %142
  br i1 %211, label %212, label %145, !llvm.loop !18

212:                                              ; preds = %145
  %213 = shufflevector <2 x i64> %167, <2 x i64> %181, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %214 = shufflevector <2 x i64> %195, <2 x i64> %209, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %215

215:                                              ; preds = %130, %212
  %216 = phi <4 x i64> [ %133, %130 ], [ %214, %212 ]
  %217 = phi <4 x i64> [ %138, %130 ], [ %213, %212 ]
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %219 = getelementptr inbounds i8, ptr %218, i64 -64
  %220 = load <4 x i64>, ptr %219, align 1, !alias.scope !727, !noalias !730
  %221 = xor <4 x i64> %220, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %222 = lshr <4 x i64> %221, splat (i64 32)
  %223 = and <4 x i64> %221, splat (i64 4294967295)
  %224 = mul nuw <4 x i64> %223, %222
  %225 = shufflevector <4 x i64> %220, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %226 = add <4 x i64> %217, %225
  %227 = add <4 x i64> %226, %224
  %228 = getelementptr inbounds i8, ptr %218, i64 -32
  %229 = load <4 x i64>, ptr %228, align 1, !alias.scope !727, !noalias !730
  %230 = xor <4 x i64> %229, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %231 = lshr <4 x i64> %230, splat (i64 32)
  %232 = and <4 x i64> %230, splat (i64 4294967295)
  %233 = mul nuw <4 x i64> %232, %231
  %234 = shufflevector <4 x i64> %229, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %235 = add <4 x i64> %216, %234
  %236 = add <4 x i64> %235, %233
  %237 = mul i64 %1, -7046029288634856825
  %238 = extractelement <4 x i64> %227, i64 0
  %239 = xor i64 %238, 7914194659941938988
  %240 = extractelement <4 x i64> %227, i64 1
  %241 = xor i64 %240, -6611157965513653271
  %242 = zext i64 %239 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %237, %247
  %249 = extractelement <4 x i64> %227, i64 2
  %250 = xor i64 %249, -1839215637059881052
  %251 = extractelement <4 x i64> %227, i64 3
  %252 = xor i64 %251, -3433288310154277810
  %253 = zext i64 %250 to i128
  %254 = zext i64 %252 to i128
  %255 = mul nuw i128 %254, %253
  %256 = lshr i128 %255, 64
  %257 = xor i128 %256, %255
  %258 = trunc i128 %257 to i64
  %259 = add i64 %248, %258
  %260 = extractelement <4 x i64> %236, i64 0
  %261 = xor i64 %260, 5046485836271438973
  %262 = extractelement <4 x i64> %236, i64 1
  %263 = xor i64 %262, -8055285457383852172
  %264 = zext i64 %261 to i128
  %265 = zext i64 %263 to i128
  %266 = mul nuw i128 %265, %264
  %267 = lshr i128 %266, 64
  %268 = xor i128 %267, %266
  %269 = trunc i128 %268 to i64
  %270 = add i64 %259, %269
  %271 = extractelement <4 x i64> %236, i64 2
  %272 = xor i64 %271, 5920048007935066598
  %273 = extractelement <4 x i64> %236, i64 3
  %274 = xor i64 %273, 7336514198459093435
  %275 = zext i64 %272 to i128
  %276 = zext i64 %274 to i128
  %277 = mul nuw i128 %276, %275
  %278 = lshr i128 %277, 64
  %279 = xor i128 %278, %277
  %280 = trunc i128 %279 to i64
  %281 = add i64 %270, %280
  %282 = lshr i64 %281, 37
  %283 = xor i64 %282, %281
  %284 = mul i64 %283, 1609587791953885689
  %285 = lshr i64 %284, 32
  %286 = xor i64 %285, %284
  %287 = mul i64 %1, -4417276706812531889
  %288 = xor i64 %287, -1
  %289 = xor i64 %238, -2753530472436770380
  %290 = xor i64 %240, 3784058077962335096
  %291 = zext i64 %289 to i128
  %292 = zext i64 %290 to i128
  %293 = mul nuw i128 %292, %291
  %294 = lshr i128 %293, 64
  %295 = xor i128 %294, %293
  %296 = trunc i128 %295 to i64
  %297 = add i64 %296, %288
  %298 = xor i64 %249, -360392965937173549
  %299 = xor i64 %251, -5237161843349560557
  %300 = zext i64 %298 to i128
  %301 = zext i64 %299 to i128
  %302 = mul nuw i128 %301, %300
  %303 = lshr i128 %302, 64
  %304 = xor i128 %303, %302
  %305 = trunc i128 %304 to i64
  %306 = add i64 %297, %305
  %307 = xor i64 %260, 2965150961192524528
  %308 = xor i64 %262, 9032178055121889492
  %309 = zext i64 %307 to i128
  %310 = zext i64 %308 to i128
  %311 = mul nuw i128 %310, %309
  %312 = lshr i128 %311, 64
  %313 = xor i128 %312, %311
  %314 = trunc i128 %313 to i64
  %315 = add i64 %306, %314
  %316 = xor i64 %271, 8850058120466833735
  %317 = xor i64 %273, -7669846995664752176
  %318 = zext i64 %316 to i128
  %319 = zext i64 %317 to i128
  %320 = mul nuw i128 %319, %318
  %321 = lshr i128 %320, 64
  %322 = xor i128 %321, %320
  %323 = trunc i128 %322 to i64
  %324 = add i64 %315, %323
  %325 = lshr i64 %324, 37
  %326 = xor i64 %325, %324
  %327 = mul i64 %326, 1609587791953885689
  %328 = lshr i64 %327, 32
  %329 = xor i64 %328, %327
  %330 = insertvalue { i64, i64 } poison, i64 %286, 0
  %331 = insertvalue { i64, i64 } %330, i64 %329, 1
  ret { i64, i64 } %331
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @XXHL128_seed_sse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #5 {
  %4 = alloca [192 x i8], align 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %334

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %134, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %86
  %12 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %9 ], [ %126, %86 ]
  %13 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %9 ], [ %116, %86 ]
  %14 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %106, %86 ]
  %15 = phi i64 [ 0, %9 ], [ %127, %86 ]
  %16 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %9 ], [ %96, %86 ]
  %17 = shl i64 %15, 10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  br label %19

19:                                               ; preds = %19, %11
  %20 = phi <2 x i64> [ %12, %11 ], [ %83, %19 ]
  %21 = phi <2 x i64> [ %13, %11 ], [ %69, %19 ]
  %22 = phi <2 x i64> [ %14, %11 ], [ %55, %19 ]
  %23 = phi <2 x i64> [ %16, %11 ], [ %41, %19 ]
  %24 = phi i64 [ 0, %11 ], [ %84, %19 ]
  %25 = shl i64 %24, 6
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1), !noalias !738
  %28 = shl i64 %24, 3
  %29 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %28
  %30 = load <2 x i64>, ptr %26, align 1, !alias.scope !735, !noalias !740
  %31 = load <2 x i64>, ptr %29, align 8, !alias.scope !738, !noalias !742
  %32 = xor <2 x i64> %31, %30
  %33 = bitcast <2 x i64> %32 to <4 x i32>
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %35 = bitcast <4 x i32> %34 to <2 x i64>
  %36 = and <2 x i64> %32, splat (i64 4294967295)
  %37 = and <2 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <2 x i64> %37, %36
  %39 = shufflevector <2 x i64> %30, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %40 = add <2 x i64> %23, %39
  %41 = add <2 x i64> %40, %38
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %43 = load <2 x i64>, ptr %42, align 1, !alias.scope !735, !noalias !740
  %44 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %45 = load <2 x i64>, ptr %44, align 8, !alias.scope !738, !noalias !742
  %46 = xor <2 x i64> %45, %43
  %47 = bitcast <2 x i64> %46 to <4 x i32>
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %49 = bitcast <4 x i32> %48 to <2 x i64>
  %50 = and <2 x i64> %46, splat (i64 4294967295)
  %51 = and <2 x i64> %49, splat (i64 4294967295)
  %52 = mul nuw <2 x i64> %51, %50
  %53 = shufflevector <2 x i64> %43, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %54 = add <2 x i64> %22, %53
  %55 = add <2 x i64> %54, %52
  %56 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %57 = load <2 x i64>, ptr %56, align 1, !alias.scope !735, !noalias !740
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %59 = load <2 x i64>, ptr %58, align 8, !alias.scope !738, !noalias !742
  %60 = xor <2 x i64> %59, %57
  %61 = bitcast <2 x i64> %60 to <4 x i32>
  %62 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %63 = bitcast <4 x i32> %62 to <2 x i64>
  %64 = and <2 x i64> %60, splat (i64 4294967295)
  %65 = and <2 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <2 x i64> %65, %64
  %67 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %68 = add <2 x i64> %21, %67
  %69 = add <2 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %71 = load <2 x i64>, ptr %70, align 1, !alias.scope !735, !noalias !740
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %73 = load <2 x i64>, ptr %72, align 8, !alias.scope !738, !noalias !742
  %74 = xor <2 x i64> %73, %71
  %75 = bitcast <2 x i64> %74 to <4 x i32>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %74, splat (i64 4294967295)
  %79 = and <2 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <2 x i64> %79, %78
  %81 = shufflevector <2 x i64> %71, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %82 = add <2 x i64> %20, %81
  %83 = add <2 x i64> %82, %80
  %84 = add nuw nsw i64 %24, 1
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %86, label %19, !llvm.loop !18

86:                                               ; preds = %19
  %87 = lshr <2 x i64> %41, splat (i64 47)
  %88 = xor <2 x i64> %41, %87
  %89 = xor <2 x i64> %88, <i64 -4329134394285701654, i64 -1485321483350670907>
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = and <2 x i64> %89, splat (i64 4294967295)
  %94 = mul nuw <2 x i64> %93, splat (i64 2654435761)
  %95 = mul <2 x i64> %92, splat (i64 -7046029290881679360)
  %96 = add <2 x i64> %95, %94
  %97 = lshr <2 x i64> %55, splat (i64 47)
  %98 = xor <2 x i64> %55, %97
  %99 = xor <2 x i64> %98, <i64 5321830579834785047, i64 -7032137544937171245>
  %100 = bitcast <2 x i64> %99 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = and <2 x i64> %99, splat (i64 4294967295)
  %104 = mul nuw <2 x i64> %103, splat (i64 2654435761)
  %105 = mul <2 x i64> %102, splat (i64 -7046029290881679360)
  %106 = add <2 x i64> %105, %104
  %107 = lshr <2 x i64> %69, splat (i64 47)
  %108 = xor <2 x i64> %69, %107
  %109 = xor <2 x i64> %108, <i64 -242834301215959509, i64 -3588858202114426737>
  %110 = bitcast <2 x i64> %109 to <4 x i32>
  %111 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  %113 = and <2 x i64> %109, splat (i64 4294967295)
  %114 = mul nuw <2 x i64> %113, splat (i64 2654435761)
  %115 = mul <2 x i64> %112, splat (i64 -7046029290881679360)
  %116 = add <2 x i64> %115, %114
  %117 = lshr <2 x i64> %83, splat (i64 47)
  %118 = xor <2 x i64> %83, %117
  %119 = xor <2 x i64> %118, <i64 2883454493032893253, i64 9097354517224871855>
  %120 = bitcast <2 x i64> %119 to <4 x i32>
  %121 = shufflevector <4 x i32> %120, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %122 = bitcast <4 x i32> %121 to <2 x i64>
  %123 = and <2 x i64> %119, splat (i64 4294967295)
  %124 = mul nuw <2 x i64> %123, splat (i64 2654435761)
  %125 = mul <2 x i64> %122, splat (i64 -7046029290881679360)
  %126 = add <2 x i64> %125, %124
  %127 = add nuw nsw i64 %15, 1
  %128 = icmp eq i64 %127, %10
  br i1 %128, label %129, label %11, !llvm.loop !20

129:                                              ; preds = %86
  %130 = shufflevector <2 x i64> %106, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %131 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %130, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %132 = shufflevector <2 x i64> %116, <2 x i64> %126, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %133 = shufflevector <2 x i64> %96, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %134

134:                                              ; preds = %129, %6
  %135 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %6 ], [ %116, %129 ]
  %136 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %6 ], [ %126, %129 ]
  %137 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %132, %129 ]
  %138 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %106, %129 ]
  %139 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %131, %129 ]
  %140 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %6 ], [ %96, %129 ]
  %141 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %6 ], [ %133, %129 ]
  %142 = shufflevector <4 x i64> %141, <4 x i64> %139, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %143 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %143)
  %144 = and i64 %7, -1024
  %145 = lshr i64 %7, 6
  %146 = and i64 %145, 15
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 %144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %148 = icmp eq i64 %146, 0
  br i1 %148, label %219, label %149

149:                                              ; preds = %134, %149
  %150 = phi <2 x i64> [ %213, %149 ], [ %136, %134 ]
  %151 = phi <2 x i64> [ %199, %149 ], [ %135, %134 ]
  %152 = phi <2 x i64> [ %185, %149 ], [ %138, %134 ]
  %153 = phi <2 x i64> [ %171, %149 ], [ %140, %134 ]
  %154 = phi i64 [ %214, %149 ], [ 0, %134 ]
  %155 = shl i64 %154, 6
  %156 = getelementptr inbounds nuw i8, ptr %147, i64 %155
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %157, i32 0, i32 3, i32 1), !noalias !746
  %158 = shl i64 %154, 3
  %159 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %158
  %160 = load <2 x i64>, ptr %156, align 1, !alias.scope !743, !noalias !748
  %161 = load <2 x i64>, ptr %159, align 8, !alias.scope !746, !noalias !750
  %162 = xor <2 x i64> %161, %160
  %163 = bitcast <2 x i64> %162 to <4 x i32>
  %164 = shufflevector <4 x i32> %163, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %165 = bitcast <4 x i32> %164 to <2 x i64>
  %166 = and <2 x i64> %162, splat (i64 4294967295)
  %167 = and <2 x i64> %165, splat (i64 4294967295)
  %168 = mul nuw <2 x i64> %167, %166
  %169 = shufflevector <2 x i64> %160, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %170 = add <2 x i64> %153, %169
  %171 = add <2 x i64> %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %173 = load <2 x i64>, ptr %172, align 1, !alias.scope !743, !noalias !748
  %174 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %175 = load <2 x i64>, ptr %174, align 8, !alias.scope !746, !noalias !750
  %176 = xor <2 x i64> %175, %173
  %177 = bitcast <2 x i64> %176 to <4 x i32>
  %178 = shufflevector <4 x i32> %177, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %179 = bitcast <4 x i32> %178 to <2 x i64>
  %180 = and <2 x i64> %176, splat (i64 4294967295)
  %181 = and <2 x i64> %179, splat (i64 4294967295)
  %182 = mul nuw <2 x i64> %181, %180
  %183 = shufflevector <2 x i64> %173, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %184 = add <2 x i64> %152, %183
  %185 = add <2 x i64> %184, %182
  %186 = getelementptr inbounds nuw i8, ptr %156, i64 32
  %187 = load <2 x i64>, ptr %186, align 1, !alias.scope !743, !noalias !748
  %188 = getelementptr inbounds nuw i8, ptr %159, i64 32
  %189 = load <2 x i64>, ptr %188, align 8, !alias.scope !746, !noalias !750
  %190 = xor <2 x i64> %189, %187
  %191 = bitcast <2 x i64> %190 to <4 x i32>
  %192 = shufflevector <4 x i32> %191, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %193 = bitcast <4 x i32> %192 to <2 x i64>
  %194 = and <2 x i64> %190, splat (i64 4294967295)
  %195 = and <2 x i64> %193, splat (i64 4294967295)
  %196 = mul nuw <2 x i64> %195, %194
  %197 = shufflevector <2 x i64> %187, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %198 = add <2 x i64> %151, %197
  %199 = add <2 x i64> %198, %196
  %200 = getelementptr inbounds nuw i8, ptr %156, i64 48
  %201 = load <2 x i64>, ptr %200, align 1, !alias.scope !743, !noalias !748
  %202 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %203 = load <2 x i64>, ptr %202, align 8, !alias.scope !746, !noalias !750
  %204 = xor <2 x i64> %203, %201
  %205 = bitcast <2 x i64> %204 to <4 x i32>
  %206 = shufflevector <4 x i32> %205, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %207 = bitcast <4 x i32> %206 to <2 x i64>
  %208 = and <2 x i64> %204, splat (i64 4294967295)
  %209 = and <2 x i64> %207, splat (i64 4294967295)
  %210 = mul nuw <2 x i64> %209, %208
  %211 = shufflevector <2 x i64> %201, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %212 = add <2 x i64> %150, %211
  %213 = add <2 x i64> %212, %210
  %214 = add nuw nsw i64 %154, 1
  %215 = icmp eq i64 %214, %146
  br i1 %215, label %216, label %149, !llvm.loop !18

216:                                              ; preds = %149
  %217 = shufflevector <2 x i64> %171, <2 x i64> %185, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %218 = shufflevector <2 x i64> %199, <2 x i64> %213, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %219

219:                                              ; preds = %134, %216
  %220 = phi <4 x i64> [ %137, %134 ], [ %218, %216 ]
  %221 = phi <4 x i64> [ %142, %134 ], [ %217, %216 ]
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %223 = getelementptr inbounds i8, ptr %222, i64 -64
  %224 = load <4 x i64>, ptr %223, align 1, !alias.scope !751, !noalias !754
  %225 = xor <4 x i64> %224, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %226 = lshr <4 x i64> %225, splat (i64 32)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %224, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %221, %229
  %231 = add <4 x i64> %230, %228
  %232 = getelementptr inbounds i8, ptr %222, i64 -32
  %233 = load <4 x i64>, ptr %232, align 1, !alias.scope !751, !noalias !754
  %234 = xor <4 x i64> %233, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %235 = lshr <4 x i64> %234, splat (i64 32)
  %236 = and <4 x i64> %234, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, %235
  %238 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %239 = add <4 x i64> %220, %238
  %240 = add <4 x i64> %239, %237
  %241 = mul i64 %1, -7046029288634856825
  %242 = extractelement <4 x i64> %231, i64 0
  %243 = xor i64 %242, 7914194659941938988
  %244 = extractelement <4 x i64> %231, i64 1
  %245 = xor i64 %244, -6611157965513653271
  %246 = zext i64 %243 to i128
  %247 = zext i64 %245 to i128
  %248 = mul nuw i128 %247, %246
  %249 = lshr i128 %248, 64
  %250 = xor i128 %249, %248
  %251 = trunc i128 %250 to i64
  %252 = add i64 %241, %251
  %253 = extractelement <4 x i64> %231, i64 2
  %254 = xor i64 %253, -1839215637059881052
  %255 = extractelement <4 x i64> %231, i64 3
  %256 = xor i64 %255, -3433288310154277810
  %257 = zext i64 %254 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %252, %262
  %264 = extractelement <4 x i64> %240, i64 0
  %265 = xor i64 %264, 5046485836271438973
  %266 = extractelement <4 x i64> %240, i64 1
  %267 = xor i64 %266, -8055285457383852172
  %268 = zext i64 %265 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %263, %273
  %275 = extractelement <4 x i64> %240, i64 2
  %276 = xor i64 %275, 5920048007935066598
  %277 = extractelement <4 x i64> %240, i64 3
  %278 = xor i64 %277, 7336514198459093435
  %279 = zext i64 %276 to i128
  %280 = zext i64 %278 to i128
  %281 = mul nuw i128 %280, %279
  %282 = lshr i128 %281, 64
  %283 = xor i128 %282, %281
  %284 = trunc i128 %283 to i64
  %285 = add i64 %274, %284
  %286 = lshr i64 %285, 37
  %287 = xor i64 %286, %285
  %288 = mul i64 %287, 1609587791953885689
  %289 = lshr i64 %288, 32
  %290 = xor i64 %289, %288
  %291 = mul i64 %1, -4417276706812531889
  %292 = xor i64 %291, -1
  %293 = xor i64 %242, -2753530472436770380
  %294 = xor i64 %244, 3784058077962335096
  %295 = zext i64 %293 to i128
  %296 = zext i64 %294 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %300, %292
  %302 = xor i64 %253, -360392965937173549
  %303 = xor i64 %255, -5237161843349560557
  %304 = zext i64 %302 to i128
  %305 = zext i64 %303 to i128
  %306 = mul nuw i128 %305, %304
  %307 = lshr i128 %306, 64
  %308 = xor i128 %307, %306
  %309 = trunc i128 %308 to i64
  %310 = add i64 %301, %309
  %311 = xor i64 %264, 2965150961192524528
  %312 = xor i64 %266, 9032178055121889492
  %313 = zext i64 %311 to i128
  %314 = zext i64 %312 to i128
  %315 = mul nuw i128 %314, %313
  %316 = lshr i128 %315, 64
  %317 = xor i128 %316, %315
  %318 = trunc i128 %317 to i64
  %319 = add i64 %310, %318
  %320 = xor i64 %275, 8850058120466833735
  %321 = xor i64 %277, -7669846995664752176
  %322 = zext i64 %320 to i128
  %323 = zext i64 %321 to i128
  %324 = mul nuw i128 %323, %322
  %325 = lshr i128 %324, 64
  %326 = xor i128 %325, %324
  %327 = trunc i128 %326 to i64
  %328 = add i64 %319, %327
  %329 = lshr i64 %328, 37
  %330 = xor i64 %329, %328
  %331 = mul i64 %330, 1609587791953885689
  %332 = lshr i64 %331, 32
  %333 = xor i64 %332, %331
  br label %737

334:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20, !noalias !732
  %335 = sub i64 0, %2
  %336 = insertelement <2 x i64> poison, i64 %2, i64 0
  %337 = insertelement <2 x i64> %336, i64 %335, i64 1
  %338 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #20, !noalias !732, !srcloc !45
  %339 = ptrtoint ptr %338 to i64
  %340 = and i64 %339, 15
  %341 = icmp eq i64 %340, 0
  call void @llvm.assume(i1 %341), !noalias !732
  %342 = add <2 x i64> %337, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %342, ptr %338, align 16, !noalias !732
  %343 = add <2 x i64> %337, <i64 -2623469361688619810, i64 2262974939099578482>
  %344 = getelementptr inbounds nuw i8, ptr %338, i64 16
  store <2 x i64> %343, ptr %344, align 16, !noalias !732
  %345 = add <2 x i64> %337, <i64 8711581037947681227, i64 2410270004345854594>
  %346 = getelementptr inbounds nuw i8, ptr %338, i64 32
  store <2 x i64> %345, ptr %346, align 16, !noalias !732
  %347 = add <2 x i64> %337, <i64 -8204357891075471176, i64 5487137525590930912>
  %348 = getelementptr inbounds nuw i8, ptr %338, i64 48
  store <2 x i64> %347, ptr %348, align 16, !noalias !732
  %349 = add <2 x i64> %337, <i64 -3818837453329782724, i64 -6688317018830679928>
  %350 = getelementptr inbounds nuw i8, ptr %338, i64 64
  store <2 x i64> %349, ptr %350, align 16, !noalias !732
  %351 = add <2 x i64> %337, <i64 5690594596133299313, i64 -2833645246901970632>
  %352 = getelementptr inbounds nuw i8, ptr %338, i64 80
  store <2 x i64> %351, ptr %352, align 16, !noalias !732
  %353 = add <2 x i64> %337, <i64 4554437623014685352, i64 2111919702937427193>
  %354 = getelementptr inbounds nuw i8, ptr %338, i64 96
  store <2 x i64> %353, ptr %354, align 16, !noalias !732
  %355 = add <2 x i64> %337, <i64 3556072174620004746, i64 7238261902898274248>
  %356 = getelementptr inbounds nuw i8, ptr %338, i64 112
  store <2 x i64> %355, ptr %356, align 16, !noalias !732
  %357 = add <2 x i64> %337, <i64 -4329134394285701654, i64 -1485321483350670907>
  %358 = getelementptr inbounds nuw i8, ptr %338, i64 128
  store <2 x i64> %357, ptr %358, align 16, !noalias !732
  %359 = add <2 x i64> %337, <i64 5321830579834785047, i64 -7032137544937171245>
  %360 = getelementptr inbounds nuw i8, ptr %338, i64 144
  store <2 x i64> %359, ptr %360, align 16, !noalias !732
  %361 = add <2 x i64> %337, <i64 -242834301215959509, i64 -3588858202114426737>
  %362 = getelementptr inbounds nuw i8, ptr %338, i64 160
  store <2 x i64> %361, ptr %362, align 16, !noalias !732
  %363 = add <2 x i64> %337, <i64 2883454493032893253, i64 9097354517224871855>
  %364 = getelementptr inbounds nuw i8, ptr %338, i64 176
  store <2 x i64> %363, ptr %364, align 16, !noalias !732
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %365 = add i64 %1, -1
  %366 = icmp ult i64 %365, 1024
  br i1 %366, label %500, label %367

367:                                              ; preds = %334
  %368 = lshr i64 %365, 10
  %369 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %370 = load <2 x i64>, ptr %369, align 64, !alias.scope !761, !noalias !764
  %371 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %372 = load <2 x i64>, ptr %371, align 16, !alias.scope !761, !noalias !764
  %373 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %374 = load <2 x i64>, ptr %373, align 32, !alias.scope !761, !noalias !764
  %375 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %376 = load <2 x i64>, ptr %375, align 16, !alias.scope !761, !noalias !764
  br label %377

377:                                              ; preds = %367, %452
  %378 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %367 ], [ %492, %452 ]
  %379 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %367 ], [ %482, %452 ]
  %380 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %367 ], [ %472, %452 ]
  %381 = phi i64 [ 0, %367 ], [ %493, %452 ]
  %382 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %367 ], [ %462, %452 ]
  %383 = shl i64 %381, 10
  %384 = getelementptr inbounds nuw i8, ptr %0, i64 %383
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  br label %385

385:                                              ; preds = %385, %377
  %386 = phi <2 x i64> [ %378, %377 ], [ %449, %385 ]
  %387 = phi <2 x i64> [ %379, %377 ], [ %435, %385 ]
  %388 = phi <2 x i64> [ %380, %377 ], [ %421, %385 ]
  %389 = phi <2 x i64> [ %382, %377 ], [ %407, %385 ]
  %390 = phi i64 [ 0, %377 ], [ %450, %385 ]
  %391 = shl i64 %390, 6
  %392 = getelementptr inbounds nuw i8, ptr %384, i64 %391
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %393, i32 0, i32 3, i32 1), !noalias !769
  %394 = shl i64 %390, 3
  %395 = getelementptr inbounds nuw i8, ptr %4, i64 %394
  %396 = load <2 x i64>, ptr %392, align 1, !alias.scope !766, !noalias !771
  %397 = load <2 x i64>, ptr %395, align 8, !alias.scope !769, !noalias !773
  %398 = xor <2 x i64> %397, %396
  %399 = bitcast <2 x i64> %398 to <4 x i32>
  %400 = shufflevector <4 x i32> %399, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %401 = bitcast <4 x i32> %400 to <2 x i64>
  %402 = and <2 x i64> %398, splat (i64 4294967295)
  %403 = and <2 x i64> %401, splat (i64 4294967295)
  %404 = mul nuw <2 x i64> %403, %402
  %405 = shufflevector <2 x i64> %396, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %406 = add <2 x i64> %389, %405
  %407 = add <2 x i64> %406, %404
  %408 = getelementptr inbounds nuw i8, ptr %392, i64 16
  %409 = load <2 x i64>, ptr %408, align 1, !alias.scope !766, !noalias !771
  %410 = getelementptr inbounds nuw i8, ptr %395, i64 16
  %411 = load <2 x i64>, ptr %410, align 8, !alias.scope !769, !noalias !773
  %412 = xor <2 x i64> %411, %409
  %413 = bitcast <2 x i64> %412 to <4 x i32>
  %414 = shufflevector <4 x i32> %413, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %415 = bitcast <4 x i32> %414 to <2 x i64>
  %416 = and <2 x i64> %412, splat (i64 4294967295)
  %417 = and <2 x i64> %415, splat (i64 4294967295)
  %418 = mul nuw <2 x i64> %417, %416
  %419 = shufflevector <2 x i64> %409, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %420 = add <2 x i64> %388, %419
  %421 = add <2 x i64> %420, %418
  %422 = getelementptr inbounds nuw i8, ptr %392, i64 32
  %423 = load <2 x i64>, ptr %422, align 1, !alias.scope !766, !noalias !771
  %424 = getelementptr inbounds nuw i8, ptr %395, i64 32
  %425 = load <2 x i64>, ptr %424, align 8, !alias.scope !769, !noalias !773
  %426 = xor <2 x i64> %425, %423
  %427 = bitcast <2 x i64> %426 to <4 x i32>
  %428 = shufflevector <4 x i32> %427, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %429 = bitcast <4 x i32> %428 to <2 x i64>
  %430 = and <2 x i64> %426, splat (i64 4294967295)
  %431 = and <2 x i64> %429, splat (i64 4294967295)
  %432 = mul nuw <2 x i64> %431, %430
  %433 = shufflevector <2 x i64> %423, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %434 = add <2 x i64> %387, %433
  %435 = add <2 x i64> %434, %432
  %436 = getelementptr inbounds nuw i8, ptr %392, i64 48
  %437 = load <2 x i64>, ptr %436, align 1, !alias.scope !766, !noalias !771
  %438 = getelementptr inbounds nuw i8, ptr %395, i64 48
  %439 = load <2 x i64>, ptr %438, align 8, !alias.scope !769, !noalias !773
  %440 = xor <2 x i64> %439, %437
  %441 = bitcast <2 x i64> %440 to <4 x i32>
  %442 = shufflevector <4 x i32> %441, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %443 = bitcast <4 x i32> %442 to <2 x i64>
  %444 = and <2 x i64> %440, splat (i64 4294967295)
  %445 = and <2 x i64> %443, splat (i64 4294967295)
  %446 = mul nuw <2 x i64> %445, %444
  %447 = shufflevector <2 x i64> %437, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %448 = add <2 x i64> %386, %447
  %449 = add <2 x i64> %448, %446
  %450 = add nuw nsw i64 %390, 1
  %451 = icmp eq i64 %450, 16
  br i1 %451, label %452, label %385, !llvm.loop !18

452:                                              ; preds = %385
  %453 = lshr <2 x i64> %407, splat (i64 47)
  %454 = xor <2 x i64> %453, %370
  %455 = xor <2 x i64> %454, %407
  %456 = bitcast <2 x i64> %455 to <4 x i32>
  %457 = shufflevector <4 x i32> %456, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %458 = bitcast <4 x i32> %457 to <2 x i64>
  %459 = and <2 x i64> %455, splat (i64 4294967295)
  %460 = mul nuw <2 x i64> %459, splat (i64 2654435761)
  %461 = mul <2 x i64> %458, splat (i64 -7046029290881679360)
  %462 = add <2 x i64> %461, %460
  %463 = lshr <2 x i64> %421, splat (i64 47)
  %464 = xor <2 x i64> %463, %372
  %465 = xor <2 x i64> %464, %421
  %466 = bitcast <2 x i64> %465 to <4 x i32>
  %467 = shufflevector <4 x i32> %466, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %468 = bitcast <4 x i32> %467 to <2 x i64>
  %469 = and <2 x i64> %465, splat (i64 4294967295)
  %470 = mul nuw <2 x i64> %469, splat (i64 2654435761)
  %471 = mul <2 x i64> %468, splat (i64 -7046029290881679360)
  %472 = add <2 x i64> %471, %470
  %473 = lshr <2 x i64> %435, splat (i64 47)
  %474 = xor <2 x i64> %473, %374
  %475 = xor <2 x i64> %474, %435
  %476 = bitcast <2 x i64> %475 to <4 x i32>
  %477 = shufflevector <4 x i32> %476, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %478 = bitcast <4 x i32> %477 to <2 x i64>
  %479 = and <2 x i64> %475, splat (i64 4294967295)
  %480 = mul nuw <2 x i64> %479, splat (i64 2654435761)
  %481 = mul <2 x i64> %478, splat (i64 -7046029290881679360)
  %482 = add <2 x i64> %481, %480
  %483 = lshr <2 x i64> %449, splat (i64 47)
  %484 = xor <2 x i64> %483, %376
  %485 = xor <2 x i64> %484, %449
  %486 = bitcast <2 x i64> %485 to <4 x i32>
  %487 = shufflevector <4 x i32> %486, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %488 = bitcast <4 x i32> %487 to <2 x i64>
  %489 = and <2 x i64> %485, splat (i64 4294967295)
  %490 = mul nuw <2 x i64> %489, splat (i64 2654435761)
  %491 = mul <2 x i64> %488, splat (i64 -7046029290881679360)
  %492 = add <2 x i64> %491, %490
  %493 = add nuw nsw i64 %381, 1
  %494 = icmp eq i64 %493, %368
  br i1 %494, label %495, label %377, !llvm.loop !20

495:                                              ; preds = %452
  %496 = shufflevector <2 x i64> %472, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %497 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %496, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %498 = shufflevector <2 x i64> %482, <2 x i64> %492, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %499 = shufflevector <2 x i64> %462, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %500

500:                                              ; preds = %495, %334
  %501 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %334 ], [ %482, %495 ]
  %502 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %334 ], [ %492, %495 ]
  %503 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %334 ], [ %498, %495 ]
  %504 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %334 ], [ %472, %495 ]
  %505 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %334 ], [ %497, %495 ]
  %506 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %334 ], [ %462, %495 ]
  %507 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %334 ], [ %499, %495 ]
  %508 = shufflevector <4 x i64> %507, <4 x i64> %505, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %509 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %509)
  %510 = and i64 %365, -1024
  %511 = lshr i64 %365, 6
  %512 = and i64 %511, 15
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 %510
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %514 = icmp eq i64 %512, 0
  br i1 %514, label %585, label %515

515:                                              ; preds = %500, %515
  %516 = phi <2 x i64> [ %579, %515 ], [ %502, %500 ]
  %517 = phi <2 x i64> [ %565, %515 ], [ %501, %500 ]
  %518 = phi <2 x i64> [ %551, %515 ], [ %504, %500 ]
  %519 = phi <2 x i64> [ %537, %515 ], [ %506, %500 ]
  %520 = phi i64 [ %580, %515 ], [ 0, %500 ]
  %521 = shl i64 %520, 6
  %522 = getelementptr inbounds nuw i8, ptr %513, i64 %521
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %523, i32 0, i32 3, i32 1), !noalias !777
  %524 = shl i64 %520, 3
  %525 = getelementptr inbounds nuw i8, ptr %4, i64 %524
  %526 = load <2 x i64>, ptr %522, align 1, !alias.scope !774, !noalias !779
  %527 = load <2 x i64>, ptr %525, align 8, !alias.scope !777, !noalias !781
  %528 = xor <2 x i64> %527, %526
  %529 = bitcast <2 x i64> %528 to <4 x i32>
  %530 = shufflevector <4 x i32> %529, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %531 = bitcast <4 x i32> %530 to <2 x i64>
  %532 = and <2 x i64> %528, splat (i64 4294967295)
  %533 = and <2 x i64> %531, splat (i64 4294967295)
  %534 = mul nuw <2 x i64> %533, %532
  %535 = shufflevector <2 x i64> %526, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %536 = add <2 x i64> %519, %535
  %537 = add <2 x i64> %536, %534
  %538 = getelementptr inbounds nuw i8, ptr %522, i64 16
  %539 = load <2 x i64>, ptr %538, align 1, !alias.scope !774, !noalias !779
  %540 = getelementptr inbounds nuw i8, ptr %525, i64 16
  %541 = load <2 x i64>, ptr %540, align 8, !alias.scope !777, !noalias !781
  %542 = xor <2 x i64> %541, %539
  %543 = bitcast <2 x i64> %542 to <4 x i32>
  %544 = shufflevector <4 x i32> %543, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %545 = bitcast <4 x i32> %544 to <2 x i64>
  %546 = and <2 x i64> %542, splat (i64 4294967295)
  %547 = and <2 x i64> %545, splat (i64 4294967295)
  %548 = mul nuw <2 x i64> %547, %546
  %549 = shufflevector <2 x i64> %539, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %550 = add <2 x i64> %518, %549
  %551 = add <2 x i64> %550, %548
  %552 = getelementptr inbounds nuw i8, ptr %522, i64 32
  %553 = load <2 x i64>, ptr %552, align 1, !alias.scope !774, !noalias !779
  %554 = getelementptr inbounds nuw i8, ptr %525, i64 32
  %555 = load <2 x i64>, ptr %554, align 8, !alias.scope !777, !noalias !781
  %556 = xor <2 x i64> %555, %553
  %557 = bitcast <2 x i64> %556 to <4 x i32>
  %558 = shufflevector <4 x i32> %557, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %559 = bitcast <4 x i32> %558 to <2 x i64>
  %560 = and <2 x i64> %556, splat (i64 4294967295)
  %561 = and <2 x i64> %559, splat (i64 4294967295)
  %562 = mul nuw <2 x i64> %561, %560
  %563 = shufflevector <2 x i64> %553, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %564 = add <2 x i64> %517, %563
  %565 = add <2 x i64> %564, %562
  %566 = getelementptr inbounds nuw i8, ptr %522, i64 48
  %567 = load <2 x i64>, ptr %566, align 1, !alias.scope !774, !noalias !779
  %568 = getelementptr inbounds nuw i8, ptr %525, i64 48
  %569 = load <2 x i64>, ptr %568, align 8, !alias.scope !777, !noalias !781
  %570 = xor <2 x i64> %569, %567
  %571 = bitcast <2 x i64> %570 to <4 x i32>
  %572 = shufflevector <4 x i32> %571, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %573 = bitcast <4 x i32> %572 to <2 x i64>
  %574 = and <2 x i64> %570, splat (i64 4294967295)
  %575 = and <2 x i64> %573, splat (i64 4294967295)
  %576 = mul nuw <2 x i64> %575, %574
  %577 = shufflevector <2 x i64> %567, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %578 = add <2 x i64> %516, %577
  %579 = add <2 x i64> %578, %576
  %580 = add nuw nsw i64 %520, 1
  %581 = icmp eq i64 %580, %512
  br i1 %581, label %582, label %515, !llvm.loop !18

582:                                              ; preds = %515
  %583 = shufflevector <2 x i64> %537, <2 x i64> %551, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %584 = shufflevector <2 x i64> %565, <2 x i64> %579, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %585

585:                                              ; preds = %500, %582
  %586 = phi <4 x i64> [ %503, %500 ], [ %584, %582 ]
  %587 = phi <4 x i64> [ %508, %500 ], [ %583, %582 ]
  %588 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %589 = getelementptr inbounds i8, ptr %588, i64 -64
  %590 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %591 = load <4 x i64>, ptr %589, align 1, !alias.scope !782, !noalias !759
  %592 = load <4 x i64>, ptr %590, align 1
  %593 = xor <4 x i64> %592, %591
  %594 = lshr <4 x i64> %593, splat (i64 32)
  %595 = and <4 x i64> %593, splat (i64 4294967295)
  %596 = mul nuw <4 x i64> %595, %594
  %597 = shufflevector <4 x i64> %591, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %598 = add <4 x i64> %587, %597
  %599 = add <4 x i64> %598, %596
  %600 = getelementptr inbounds i8, ptr %588, i64 -32
  %601 = load <4 x i64>, ptr %600, align 1, !alias.scope !782, !noalias !759
  %602 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %603 = load <4 x i64>, ptr %602, align 1, !alias.scope !759, !noalias !782
  %604 = xor <4 x i64> %603, %601
  %605 = lshr <4 x i64> %604, splat (i64 32)
  %606 = and <4 x i64> %604, splat (i64 4294967295)
  %607 = mul nuw <4 x i64> %606, %605
  %608 = shufflevector <4 x i64> %601, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %609 = add <4 x i64> %586, %608
  %610 = add <4 x i64> %609, %607
  %611 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %612 = mul i64 %1, -7046029288634856825
  %613 = extractelement <4 x i64> %599, i64 0
  %614 = load i64, ptr %611, align 1, !alias.scope !783, !noalias !786
  %615 = xor i64 %614, %613
  %616 = extractelement <4 x i64> %599, i64 1
  %617 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %618 = load i64, ptr %617, align 1, !alias.scope !783, !noalias !786
  %619 = xor i64 %618, %616
  %620 = zext i64 %615 to i128
  %621 = zext i64 %619 to i128
  %622 = mul nuw i128 %621, %620
  %623 = lshr i128 %622, 64
  %624 = xor i128 %623, %622
  %625 = trunc i128 %624 to i64
  %626 = add i64 %612, %625
  %627 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %628 = extractelement <4 x i64> %599, i64 2
  %629 = load i64, ptr %627, align 1, !alias.scope !783, !noalias !786
  %630 = xor i64 %629, %628
  %631 = extractelement <4 x i64> %599, i64 3
  %632 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %633 = load i64, ptr %632, align 1, !alias.scope !783, !noalias !786
  %634 = xor i64 %633, %631
  %635 = zext i64 %630 to i128
  %636 = zext i64 %634 to i128
  %637 = mul nuw i128 %636, %635
  %638 = lshr i128 %637, 64
  %639 = xor i128 %638, %637
  %640 = trunc i128 %639 to i64
  %641 = add i64 %626, %640
  %642 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %643 = extractelement <4 x i64> %610, i64 0
  %644 = load i64, ptr %642, align 1, !alias.scope !783, !noalias !786
  %645 = xor i64 %644, %643
  %646 = extractelement <4 x i64> %610, i64 1
  %647 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %648 = load i64, ptr %647, align 1, !alias.scope !783, !noalias !786
  %649 = xor i64 %648, %646
  %650 = zext i64 %645 to i128
  %651 = zext i64 %649 to i128
  %652 = mul nuw i128 %651, %650
  %653 = lshr i128 %652, 64
  %654 = xor i128 %653, %652
  %655 = trunc i128 %654 to i64
  %656 = add i64 %641, %655
  %657 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %658 = extractelement <4 x i64> %610, i64 2
  %659 = load i64, ptr %657, align 1, !alias.scope !783, !noalias !786
  %660 = xor i64 %659, %658
  %661 = extractelement <4 x i64> %610, i64 3
  %662 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %663 = load i64, ptr %662, align 1, !alias.scope !783, !noalias !786
  %664 = xor i64 %663, %661
  %665 = zext i64 %660 to i128
  %666 = zext i64 %664 to i128
  %667 = mul nuw i128 %666, %665
  %668 = lshr i128 %667, 64
  %669 = xor i128 %668, %667
  %670 = trunc i128 %669 to i64
  %671 = add i64 %656, %670
  %672 = lshr i64 %671, 37
  %673 = xor i64 %672, %671
  %674 = mul i64 %673, 1609587791953885689
  %675 = lshr i64 %674, 32
  %676 = xor i64 %675, %674
  %677 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %678 = mul i64 %1, -4417276706812531889
  %679 = xor i64 %678, -1
  %680 = load i64, ptr %677, align 1, !alias.scope !788, !noalias !791
  %681 = xor i64 %680, %613
  %682 = bitcast <4 x i64> %592 to i256
  %683 = lshr i256 %682, 32
  %684 = trunc i256 %683 to i64
  %685 = xor i64 %616, %684
  %686 = zext i64 %681 to i128
  %687 = zext i64 %685 to i128
  %688 = mul nuw i128 %687, %686
  %689 = lshr i128 %688, 64
  %690 = xor i128 %689, %688
  %691 = trunc i128 %690 to i64
  %692 = add i64 %691, %679
  %693 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %694 = load i64, ptr %693, align 1, !alias.scope !788, !noalias !791
  %695 = xor i64 %694, %628
  %696 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %697 = load i64, ptr %696, align 1, !alias.scope !788, !noalias !791
  %698 = xor i64 %697, %631
  %699 = zext i64 %695 to i128
  %700 = zext i64 %698 to i128
  %701 = mul nuw i128 %700, %699
  %702 = lshr i128 %701, 64
  %703 = xor i128 %702, %701
  %704 = trunc i128 %703 to i64
  %705 = add i64 %692, %704
  %706 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %707 = load i64, ptr %706, align 1, !alias.scope !788, !noalias !791
  %708 = xor i64 %707, %643
  %709 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %710 = load i64, ptr %709, align 1, !alias.scope !788, !noalias !791
  %711 = xor i64 %710, %646
  %712 = zext i64 %708 to i128
  %713 = zext i64 %711 to i128
  %714 = mul nuw i128 %713, %712
  %715 = lshr i128 %714, 64
  %716 = xor i128 %715, %714
  %717 = trunc i128 %716 to i64
  %718 = add i64 %705, %717
  %719 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %720 = load i64, ptr %719, align 1, !alias.scope !788, !noalias !791
  %721 = xor i64 %720, %658
  %722 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %723 = load i64, ptr %722, align 1, !alias.scope !788, !noalias !791
  %724 = xor i64 %723, %661
  %725 = zext i64 %721 to i128
  %726 = zext i64 %724 to i128
  %727 = mul nuw i128 %726, %725
  %728 = lshr i128 %727, 64
  %729 = xor i128 %728, %727
  %730 = trunc i128 %729 to i64
  %731 = add i64 %718, %730
  %732 = lshr i64 %731, 37
  %733 = xor i64 %732, %731
  %734 = mul i64 %733, 1609587791953885689
  %735 = lshr i64 %734, 32
  %736 = xor i64 %735, %734
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20, !noalias !732
  br label %737

737:                                              ; preds = %219, %585
  %738 = phi i64 [ %290, %219 ], [ %676, %585 ]
  %739 = phi i64 [ %333, %219 ], [ %736, %585 ]
  %740 = insertvalue { i64, i64 } poison, i64 %738, 0
  %741 = insertvalue { i64, i64 } %740, i64 %739, 1
  ret { i64, i64 } %741
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal { i64, i64 } @XXHL128_secret_sse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) #4 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ugt i64 %7, %8
  br i1 %12, label %146, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = load <2 x i64>, ptr %15, align 1, !alias.scope !798, !noalias !801
  %17 = getelementptr inbounds i8, ptr %14, i64 -48
  %18 = load <2 x i64>, ptr %17, align 1, !alias.scope !798, !noalias !801
  %19 = getelementptr inbounds i8, ptr %14, i64 -32
  %20 = load <2 x i64>, ptr %19, align 1, !alias.scope !798, !noalias !801
  %21 = getelementptr inbounds i8, ptr %14, i64 -16
  %22 = load <2 x i64>, ptr %21, align 1, !alias.scope !798, !noalias !801
  br label %23

23:                                               ; preds = %13, %98
  %24 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %13 ], [ %138, %98 ]
  %25 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %13 ], [ %128, %98 ]
  %26 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %13 ], [ %118, %98 ]
  %27 = phi i64 [ 0, %13 ], [ %139, %98 ]
  %28 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %13 ], [ %108, %98 ]
  %29 = mul i64 %27, %7
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  br label %31

31:                                               ; preds = %31, %23
  %32 = phi <2 x i64> [ %24, %23 ], [ %95, %31 ]
  %33 = phi <2 x i64> [ %25, %23 ], [ %81, %31 ]
  %34 = phi <2 x i64> [ %26, %23 ], [ %67, %31 ]
  %35 = phi <2 x i64> [ %28, %23 ], [ %53, %31 ]
  %36 = phi i64 [ 0, %23 ], [ %96, %31 ]
  %37 = shl i64 %36, 6
  %38 = getelementptr inbounds nuw i8, ptr %30, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %39, i32 0, i32 3, i32 1), !noalias !806
  %40 = shl i64 %36, 3
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load <2 x i64>, ptr %38, align 1, !alias.scope !803, !noalias !808
  %43 = load <2 x i64>, ptr %41, align 1, !alias.scope !806, !noalias !810
  %44 = xor <2 x i64> %43, %42
  %45 = bitcast <2 x i64> %44 to <4 x i32>
  %46 = shufflevector <4 x i32> %45, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %47 = bitcast <4 x i32> %46 to <2 x i64>
  %48 = and <2 x i64> %44, splat (i64 4294967295)
  %49 = and <2 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <2 x i64> %49, %48
  %51 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %52 = add <2 x i64> %35, %51
  %53 = add <2 x i64> %52, %50
  %54 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %55 = load <2 x i64>, ptr %54, align 1, !alias.scope !803, !noalias !808
  %56 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %57 = load <2 x i64>, ptr %56, align 1, !alias.scope !806, !noalias !810
  %58 = xor <2 x i64> %57, %55
  %59 = bitcast <2 x i64> %58 to <4 x i32>
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %61 = bitcast <4 x i32> %60 to <2 x i64>
  %62 = and <2 x i64> %58, splat (i64 4294967295)
  %63 = and <2 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <2 x i64> %63, %62
  %65 = shufflevector <2 x i64> %55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %66 = add <2 x i64> %34, %65
  %67 = add <2 x i64> %66, %64
  %68 = getelementptr inbounds nuw i8, ptr %38, i64 32
  %69 = load <2 x i64>, ptr %68, align 1, !alias.scope !803, !noalias !808
  %70 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %71 = load <2 x i64>, ptr %70, align 1, !alias.scope !806, !noalias !810
  %72 = xor <2 x i64> %71, %69
  %73 = bitcast <2 x i64> %72 to <4 x i32>
  %74 = shufflevector <4 x i32> %73, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %75 = bitcast <4 x i32> %74 to <2 x i64>
  %76 = and <2 x i64> %72, splat (i64 4294967295)
  %77 = and <2 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <2 x i64> %77, %76
  %79 = shufflevector <2 x i64> %69, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %80 = add <2 x i64> %33, %79
  %81 = add <2 x i64> %80, %78
  %82 = getelementptr inbounds nuw i8, ptr %38, i64 48
  %83 = load <2 x i64>, ptr %82, align 1, !alias.scope !803, !noalias !808
  %84 = getelementptr inbounds nuw i8, ptr %41, i64 48
  %85 = load <2 x i64>, ptr %84, align 1, !alias.scope !806, !noalias !810
  %86 = xor <2 x i64> %85, %83
  %87 = bitcast <2 x i64> %86 to <4 x i32>
  %88 = shufflevector <4 x i32> %87, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %89 = bitcast <4 x i32> %88 to <2 x i64>
  %90 = and <2 x i64> %86, splat (i64 4294967295)
  %91 = and <2 x i64> %89, splat (i64 4294967295)
  %92 = mul nuw <2 x i64> %91, %90
  %93 = shufflevector <2 x i64> %83, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %94 = add <2 x i64> %32, %93
  %95 = add <2 x i64> %94, %92
  %96 = add nuw nsw i64 %36, 1
  %97 = icmp eq i64 %96, %6
  br i1 %97, label %98, label %31, !llvm.loop !18

98:                                               ; preds = %31
  %99 = lshr <2 x i64> %53, splat (i64 47)
  %100 = xor <2 x i64> %99, %16
  %101 = xor <2 x i64> %100, %53
  %102 = bitcast <2 x i64> %101 to <4 x i32>
  %103 = shufflevector <4 x i32> %102, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %104 = bitcast <4 x i32> %103 to <2 x i64>
  %105 = and <2 x i64> %101, splat (i64 4294967295)
  %106 = mul nuw <2 x i64> %105, splat (i64 2654435761)
  %107 = mul <2 x i64> %104, splat (i64 -7046029290881679360)
  %108 = add <2 x i64> %107, %106
  %109 = lshr <2 x i64> %67, splat (i64 47)
  %110 = xor <2 x i64> %109, %18
  %111 = xor <2 x i64> %110, %67
  %112 = bitcast <2 x i64> %111 to <4 x i32>
  %113 = shufflevector <4 x i32> %112, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %114 = bitcast <4 x i32> %113 to <2 x i64>
  %115 = and <2 x i64> %111, splat (i64 4294967295)
  %116 = mul nuw <2 x i64> %115, splat (i64 2654435761)
  %117 = mul <2 x i64> %114, splat (i64 -7046029290881679360)
  %118 = add <2 x i64> %117, %116
  %119 = lshr <2 x i64> %81, splat (i64 47)
  %120 = xor <2 x i64> %119, %20
  %121 = xor <2 x i64> %120, %81
  %122 = bitcast <2 x i64> %121 to <4 x i32>
  %123 = shufflevector <4 x i32> %122, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %124 = bitcast <4 x i32> %123 to <2 x i64>
  %125 = and <2 x i64> %121, splat (i64 4294967295)
  %126 = mul nuw <2 x i64> %125, splat (i64 2654435761)
  %127 = mul <2 x i64> %124, splat (i64 -7046029290881679360)
  %128 = add <2 x i64> %127, %126
  %129 = lshr <2 x i64> %95, splat (i64 47)
  %130 = xor <2 x i64> %129, %22
  %131 = xor <2 x i64> %130, %95
  %132 = bitcast <2 x i64> %131 to <4 x i32>
  %133 = shufflevector <4 x i32> %132, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %134 = bitcast <4 x i32> %133 to <2 x i64>
  %135 = and <2 x i64> %131, splat (i64 4294967295)
  %136 = mul nuw <2 x i64> %135, splat (i64 2654435761)
  %137 = mul <2 x i64> %134, splat (i64 -7046029290881679360)
  %138 = add <2 x i64> %137, %136
  %139 = add nuw i64 %27, 1
  %140 = icmp ult i64 %139, %9
  br i1 %140, label %23, label %141, !llvm.loop !20

141:                                              ; preds = %98
  %142 = shufflevector <2 x i64> %118, <2 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %143 = shufflevector <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 poison, i64 poison>, <4 x i64> %142, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %144 = shufflevector <2 x i64> %128, <2 x i64> %138, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %145 = shufflevector <2 x i64> %108, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %146

146:                                              ; preds = %141, %4
  %147 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %4 ], [ %128, %141 ]
  %148 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %4 ], [ %138, %141 ]
  %149 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %144, %141 ]
  %150 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %118, %141 ]
  %151 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %143, %141 ]
  %152 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %4 ], [ %108, %141 ]
  %153 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 undef, i64 undef>, %4 ], [ %145, %141 ]
  %154 = shufflevector <4 x i64> %153, <4 x i64> %151, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %155 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %155)
  %156 = mul i64 %9, %7
  %157 = lshr i64 %10, 6
  %158 = lshr i64 %3, 3
  %159 = icmp samesign ule i64 %157, %158
  tail call void @llvm.assume(i1 %159)
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 %156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %161 = icmp ult i64 %10, 64
  br i1 %161, label %232, label %162

162:                                              ; preds = %146, %162
  %163 = phi <2 x i64> [ %226, %162 ], [ %148, %146 ]
  %164 = phi <2 x i64> [ %212, %162 ], [ %147, %146 ]
  %165 = phi <2 x i64> [ %198, %162 ], [ %150, %146 ]
  %166 = phi <2 x i64> [ %184, %162 ], [ %152, %146 ]
  %167 = phi i64 [ %227, %162 ], [ 0, %146 ]
  %168 = shl i64 %167, 6
  %169 = getelementptr inbounds nuw i8, ptr %160, i64 %168
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %170, i32 0, i32 3, i32 1), !noalias !814
  %171 = shl i64 %167, 3
  %172 = getelementptr inbounds nuw i8, ptr %2, i64 %171
  %173 = load <2 x i64>, ptr %169, align 1, !alias.scope !811, !noalias !816
  %174 = load <2 x i64>, ptr %172, align 1, !alias.scope !814, !noalias !818
  %175 = xor <2 x i64> %174, %173
  %176 = bitcast <2 x i64> %175 to <4 x i32>
  %177 = shufflevector <4 x i32> %176, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %178 = bitcast <4 x i32> %177 to <2 x i64>
  %179 = and <2 x i64> %175, splat (i64 4294967295)
  %180 = and <2 x i64> %178, splat (i64 4294967295)
  %181 = mul nuw <2 x i64> %180, %179
  %182 = shufflevector <2 x i64> %173, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %183 = add <2 x i64> %166, %182
  %184 = add <2 x i64> %183, %181
  %185 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %186 = load <2 x i64>, ptr %185, align 1, !alias.scope !811, !noalias !816
  %187 = getelementptr inbounds nuw i8, ptr %172, i64 16
  %188 = load <2 x i64>, ptr %187, align 1, !alias.scope !814, !noalias !818
  %189 = xor <2 x i64> %188, %186
  %190 = bitcast <2 x i64> %189 to <4 x i32>
  %191 = shufflevector <4 x i32> %190, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %192 = bitcast <4 x i32> %191 to <2 x i64>
  %193 = and <2 x i64> %189, splat (i64 4294967295)
  %194 = and <2 x i64> %192, splat (i64 4294967295)
  %195 = mul nuw <2 x i64> %194, %193
  %196 = shufflevector <2 x i64> %186, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %197 = add <2 x i64> %165, %196
  %198 = add <2 x i64> %197, %195
  %199 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %200 = load <2 x i64>, ptr %199, align 1, !alias.scope !811, !noalias !816
  %201 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %202 = load <2 x i64>, ptr %201, align 1, !alias.scope !814, !noalias !818
  %203 = xor <2 x i64> %202, %200
  %204 = bitcast <2 x i64> %203 to <4 x i32>
  %205 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %206 = bitcast <4 x i32> %205 to <2 x i64>
  %207 = and <2 x i64> %203, splat (i64 4294967295)
  %208 = and <2 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <2 x i64> %208, %207
  %210 = shufflevector <2 x i64> %200, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %211 = add <2 x i64> %164, %210
  %212 = add <2 x i64> %211, %209
  %213 = getelementptr inbounds nuw i8, ptr %169, i64 48
  %214 = load <2 x i64>, ptr %213, align 1, !alias.scope !811, !noalias !816
  %215 = getelementptr inbounds nuw i8, ptr %172, i64 48
  %216 = load <2 x i64>, ptr %215, align 1, !alias.scope !814, !noalias !818
  %217 = xor <2 x i64> %216, %214
  %218 = bitcast <2 x i64> %217 to <4 x i32>
  %219 = shufflevector <4 x i32> %218, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %220 = bitcast <4 x i32> %219 to <2 x i64>
  %221 = and <2 x i64> %217, splat (i64 4294967295)
  %222 = and <2 x i64> %220, splat (i64 4294967295)
  %223 = mul nuw <2 x i64> %222, %221
  %224 = shufflevector <2 x i64> %214, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %225 = add <2 x i64> %163, %224
  %226 = add <2 x i64> %225, %223
  %227 = add nuw i64 %167, 1
  %228 = icmp eq i64 %227, %157
  br i1 %228, label %229, label %162, !llvm.loop !18

229:                                              ; preds = %162
  %230 = shufflevector <2 x i64> %184, <2 x i64> %198, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %231 = shufflevector <2 x i64> %212, <2 x i64> %226, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %232

232:                                              ; preds = %146, %229
  %233 = phi <4 x i64> [ %149, %146 ], [ %231, %229 ]
  %234 = phi <4 x i64> [ %154, %146 ], [ %230, %229 ]
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %236 = getelementptr inbounds i8, ptr %235, i64 -64
  %237 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %238 = getelementptr inbounds i8, ptr %237, i64 -71
  %239 = load <4 x i64>, ptr %236, align 1, !alias.scope !793, !noalias !796
  %240 = load <4 x i64>, ptr %238, align 1
  %241 = xor <4 x i64> %240, %239
  %242 = lshr <4 x i64> %241, splat (i64 32)
  %243 = and <4 x i64> %241, splat (i64 4294967295)
  %244 = mul nuw <4 x i64> %243, %242
  %245 = shufflevector <4 x i64> %239, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %246 = add <4 x i64> %234, %245
  %247 = add <4 x i64> %246, %244
  %248 = getelementptr inbounds i8, ptr %235, i64 -32
  %249 = load <4 x i64>, ptr %248, align 1, !alias.scope !793, !noalias !796
  %250 = getelementptr inbounds i8, ptr %237, i64 -39
  %251 = load <4 x i64>, ptr %250, align 1, !alias.scope !796, !noalias !793
  %252 = xor <4 x i64> %251, %249
  %253 = lshr <4 x i64> %252, splat (i64 32)
  %254 = and <4 x i64> %252, splat (i64 4294967295)
  %255 = mul nuw <4 x i64> %254, %253
  %256 = shufflevector <4 x i64> %249, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %257 = add <4 x i64> %233, %256
  %258 = add <4 x i64> %257, %255
  %259 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %260 = mul i64 %1, -7046029288634856825
  %261 = extractelement <4 x i64> %247, i64 0
  %262 = load i64, ptr %259, align 1, !alias.scope !819, !noalias !822
  %263 = xor i64 %262, %261
  %264 = extractelement <4 x i64> %247, i64 1
  %265 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %266 = load i64, ptr %265, align 1, !alias.scope !819, !noalias !822
  %267 = xor i64 %266, %264
  %268 = zext i64 %263 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %260, %273
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %276 = extractelement <4 x i64> %247, i64 2
  %277 = load i64, ptr %275, align 1, !alias.scope !819, !noalias !822
  %278 = xor i64 %277, %276
  %279 = extractelement <4 x i64> %247, i64 3
  %280 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %281 = load i64, ptr %280, align 1, !alias.scope !819, !noalias !822
  %282 = xor i64 %281, %279
  %283 = zext i64 %278 to i128
  %284 = zext i64 %282 to i128
  %285 = mul nuw i128 %284, %283
  %286 = lshr i128 %285, 64
  %287 = xor i128 %286, %285
  %288 = trunc i128 %287 to i64
  %289 = add i64 %274, %288
  %290 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %291 = extractelement <4 x i64> %258, i64 0
  %292 = load i64, ptr %290, align 1, !alias.scope !819, !noalias !822
  %293 = xor i64 %292, %291
  %294 = extractelement <4 x i64> %258, i64 1
  %295 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %296 = load i64, ptr %295, align 1, !alias.scope !819, !noalias !822
  %297 = xor i64 %296, %294
  %298 = zext i64 %293 to i128
  %299 = zext i64 %297 to i128
  %300 = mul nuw i128 %299, %298
  %301 = lshr i128 %300, 64
  %302 = xor i128 %301, %300
  %303 = trunc i128 %302 to i64
  %304 = add i64 %289, %303
  %305 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %306 = extractelement <4 x i64> %258, i64 2
  %307 = load i64, ptr %305, align 1, !alias.scope !819, !noalias !822
  %308 = xor i64 %307, %306
  %309 = extractelement <4 x i64> %258, i64 3
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %311 = load i64, ptr %310, align 1, !alias.scope !819, !noalias !822
  %312 = xor i64 %311, %309
  %313 = zext i64 %308 to i128
  %314 = zext i64 %312 to i128
  %315 = mul nuw i128 %314, %313
  %316 = lshr i128 %315, 64
  %317 = xor i128 %316, %315
  %318 = trunc i128 %317 to i64
  %319 = add i64 %304, %318
  %320 = lshr i64 %319, 37
  %321 = xor i64 %320, %319
  %322 = mul i64 %321, 1609587791953885689
  %323 = lshr i64 %322, 32
  %324 = xor i64 %323, %322
  %325 = getelementptr inbounds i8, ptr %237, i64 -75
  %326 = mul i64 %1, -4417276706812531889
  %327 = xor i64 %326, -1
  %328 = load i64, ptr %325, align 1, !alias.scope !824, !noalias !827
  %329 = xor i64 %328, %261
  %330 = bitcast <4 x i64> %240 to i256
  %331 = lshr i256 %330, 32
  %332 = trunc i256 %331 to i64
  %333 = xor i64 %264, %332
  %334 = zext i64 %329 to i128
  %335 = zext i64 %333 to i128
  %336 = mul nuw i128 %335, %334
  %337 = lshr i128 %336, 64
  %338 = xor i128 %337, %336
  %339 = trunc i128 %338 to i64
  %340 = add i64 %339, %327
  %341 = getelementptr inbounds i8, ptr %237, i64 -59
  %342 = load i64, ptr %341, align 1, !alias.scope !824, !noalias !827
  %343 = xor i64 %342, %276
  %344 = getelementptr inbounds i8, ptr %237, i64 -51
  %345 = load i64, ptr %344, align 1, !alias.scope !824, !noalias !827
  %346 = xor i64 %345, %279
  %347 = zext i64 %343 to i128
  %348 = zext i64 %346 to i128
  %349 = mul nuw i128 %348, %347
  %350 = lshr i128 %349, 64
  %351 = xor i128 %350, %349
  %352 = trunc i128 %351 to i64
  %353 = add i64 %340, %352
  %354 = getelementptr inbounds i8, ptr %237, i64 -43
  %355 = load i64, ptr %354, align 1, !alias.scope !824, !noalias !827
  %356 = xor i64 %355, %291
  %357 = getelementptr inbounds i8, ptr %237, i64 -35
  %358 = load i64, ptr %357, align 1, !alias.scope !824, !noalias !827
  %359 = xor i64 %358, %294
  %360 = zext i64 %356 to i128
  %361 = zext i64 %359 to i128
  %362 = mul nuw i128 %361, %360
  %363 = lshr i128 %362, 64
  %364 = xor i128 %363, %362
  %365 = trunc i128 %364 to i64
  %366 = add i64 %353, %365
  %367 = getelementptr inbounds i8, ptr %237, i64 -27
  %368 = load i64, ptr %367, align 1, !alias.scope !824, !noalias !827
  %369 = xor i64 %368, %306
  %370 = getelementptr inbounds i8, ptr %237, i64 -19
  %371 = load i64, ptr %370, align 1, !alias.scope !824, !noalias !827
  %372 = xor i64 %371, %309
  %373 = zext i64 %369 to i128
  %374 = zext i64 %372 to i128
  %375 = mul nuw i128 %374, %373
  %376 = lshr i128 %375, 64
  %377 = xor i128 %376, %375
  %378 = trunc i128 %377 to i64
  %379 = add i64 %366, %378
  %380 = lshr i64 %379, 37
  %381 = xor i64 %380, %379
  %382 = mul i64 %381, 1609587791953885689
  %383 = lshr i64 %382, 32
  %384 = xor i64 %383, %382
  %385 = insertvalue { i64, i64 } poison, i64 %324, 0
  %386 = insertvalue { i64, i64 } %385, i64 %384, 1
  ret { i64, i64 } %386
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal { i64, i64 } @XXHL128_default_avx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #4 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %44
  %8 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %60, %44 ]
  %9 = phi i64 [ 0, %5 ], [ %61, %44 ]
  %10 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %52, %44 ]
  %11 = shl i64 %9, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi <4 x i64> [ %8, %7 ], [ %41, %13 ]
  %15 = phi <4 x i64> [ %10, %7 ], [ %30, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %42, %13 ]
  %17 = shl i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %19, i32 0, i32 3, i32 1), !noalias !832
  %20 = shl i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <4 x i64>, ptr %18, align 1, !alias.scope !829, !noalias !834
  %23 = load <4 x i64>, ptr %21, align 8, !alias.scope !832, !noalias !836
  %24 = xor <4 x i64> %23, %22
  %25 = lshr <4 x i64> %24, splat (i64 32)
  %26 = and <4 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <4 x i64> %26, %25
  %28 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %29 = add <4 x i64> %15, %28
  %30 = add <4 x i64> %29, %27
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %32 = load <4 x i64>, ptr %31, align 1, !alias.scope !829, !noalias !834
  %33 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %34 = load <4 x i64>, ptr %33, align 8, !alias.scope !832, !noalias !836
  %35 = xor <4 x i64> %34, %32
  %36 = lshr <4 x i64> %35, splat (i64 32)
  %37 = and <4 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <4 x i64> %37, %36
  %39 = shufflevector <4 x i64> %32, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %40 = add <4 x i64> %14, %39
  %41 = add <4 x i64> %40, %38
  %42 = add nuw nsw i64 %16, 1
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %13, !llvm.loop !293

44:                                               ; preds = %13
  %45 = lshr <4 x i64> %30, splat (i64 47)
  %46 = xor <4 x i64> %30, %45
  %47 = xor <4 x i64> %46, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, splat (i64 2654435761)
  %51 = mul <4 x i64> %48, splat (i64 -7046029290881679360)
  %52 = add <4 x i64> %50, %51
  %53 = lshr <4 x i64> %41, splat (i64 47)
  %54 = xor <4 x i64> %41, %53
  %55 = xor <4 x i64> %54, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %56 = lshr <4 x i64> %55, splat (i64 32)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, splat (i64 2654435761)
  %59 = mul <4 x i64> %56, splat (i64 -7046029290881679360)
  %60 = add <4 x i64> %58, %59
  %61 = add nuw nsw i64 %9, 1
  %62 = icmp eq i64 %61, %6
  br i1 %62, label %63, label %7, !llvm.loop !20

63:                                               ; preds = %44, %2
  %64 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %60, %44 ]
  %65 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %52, %44 ]
  %66 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %66)
  %67 = and i64 %3, -1024
  %68 = lshr i64 %3, 6
  %69 = and i64 %68, 15
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %63, %72
  %73 = phi <4 x i64> [ %100, %72 ], [ %64, %63 ]
  %74 = phi <4 x i64> [ %89, %72 ], [ %65, %63 ]
  %75 = phi i64 [ %101, %72 ], [ 0, %63 ]
  %76 = shl i64 %75, 6
  %77 = getelementptr inbounds nuw i8, ptr %70, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %78, i32 0, i32 3, i32 1), !noalias !840
  %79 = shl i64 %75, 3
  %80 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %79
  %81 = load <4 x i64>, ptr %77, align 1, !alias.scope !837, !noalias !842
  %82 = load <4 x i64>, ptr %80, align 8, !alias.scope !840, !noalias !844
  %83 = xor <4 x i64> %82, %81
  %84 = lshr <4 x i64> %83, splat (i64 32)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %88 = add <4 x i64> %74, %87
  %89 = add <4 x i64> %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %91 = load <4 x i64>, ptr %90, align 1, !alias.scope !837, !noalias !842
  %92 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %93 = load <4 x i64>, ptr %92, align 8, !alias.scope !840, !noalias !844
  %94 = xor <4 x i64> %93, %91
  %95 = lshr <4 x i64> %94, splat (i64 32)
  %96 = and <4 x i64> %94, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, %95
  %98 = shufflevector <4 x i64> %91, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %99 = add <4 x i64> %73, %98
  %100 = add <4 x i64> %99, %97
  %101 = add nuw nsw i64 %75, 1
  %102 = icmp eq i64 %101, %69
  br i1 %102, label %103, label %72, !llvm.loop !293

103:                                              ; preds = %72, %63
  %104 = phi <4 x i64> [ %64, %63 ], [ %100, %72 ]
  %105 = phi <4 x i64> [ %65, %63 ], [ %89, %72 ]
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %107 = getelementptr inbounds i8, ptr %106, i64 -64
  %108 = load <4 x i64>, ptr %107, align 1, !alias.scope !845, !noalias !848
  %109 = xor <4 x i64> %108, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %110 = lshr <4 x i64> %109, splat (i64 32)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %108, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %105, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds i8, ptr %106, i64 -32
  %117 = load <4 x i64>, ptr %116, align 1, !alias.scope !845, !noalias !848
  %118 = xor <4 x i64> %117, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %119 = lshr <4 x i64> %118, splat (i64 32)
  %120 = and <4 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <4 x i64> %120, %119
  %122 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %123 = add <4 x i64> %104, %122
  %124 = add <4 x i64> %123, %121
  %125 = mul i64 %1, -7046029288634856825
  %126 = extractelement <4 x i64> %115, i64 0
  %127 = xor i64 %126, 7914194659941938988
  %128 = extractelement <4 x i64> %115, i64 1
  %129 = xor i64 %128, -6611157965513653271
  %130 = zext i64 %127 to i128
  %131 = zext i64 %129 to i128
  %132 = mul nuw i128 %131, %130
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = add i64 %125, %135
  %137 = extractelement <4 x i64> %115, i64 2
  %138 = xor i64 %137, -1839215637059881052
  %139 = extractelement <4 x i64> %115, i64 3
  %140 = xor i64 %139, -3433288310154277810
  %141 = zext i64 %138 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %136, %146
  %148 = extractelement <4 x i64> %124, i64 0
  %149 = xor i64 %148, 5046485836271438973
  %150 = extractelement <4 x i64> %124, i64 1
  %151 = xor i64 %150, -8055285457383852172
  %152 = zext i64 %149 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %147, %157
  %159 = extractelement <4 x i64> %124, i64 2
  %160 = xor i64 %159, 5920048007935066598
  %161 = extractelement <4 x i64> %124, i64 3
  %162 = xor i64 %161, 7336514198459093435
  %163 = zext i64 %160 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = add i64 %158, %168
  %170 = lshr i64 %169, 37
  %171 = xor i64 %170, %169
  %172 = mul i64 %171, 1609587791953885689
  %173 = lshr i64 %172, 32
  %174 = xor i64 %173, %172
  %175 = mul i64 %1, -4417276706812531889
  %176 = xor i64 %175, -1
  %177 = xor i64 %126, -2753530472436770380
  %178 = xor i64 %128, 3784058077962335096
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %184, %176
  %186 = xor i64 %137, -360392965937173549
  %187 = xor i64 %139, -5237161843349560557
  %188 = zext i64 %186 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %185, %193
  %195 = xor i64 %148, 2965150961192524528
  %196 = xor i64 %150, 9032178055121889492
  %197 = zext i64 %195 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %194, %202
  %204 = xor i64 %159, 8850058120466833735
  %205 = xor i64 %161, -7669846995664752176
  %206 = zext i64 %204 to i128
  %207 = zext i64 %205 to i128
  %208 = mul nuw i128 %207, %206
  %209 = lshr i128 %208, 64
  %210 = xor i128 %209, %208
  %211 = trunc i128 %210 to i64
  %212 = add i64 %203, %211
  %213 = lshr i64 %212, 37
  %214 = xor i64 %213, %212
  %215 = mul i64 %214, 1609587791953885689
  %216 = lshr i64 %215, 32
  %217 = xor i64 %216, %215
  %218 = insertvalue { i64, i64 } poison, i64 %174, 0
  %219 = insertvalue { i64, i64 } %218, i64 %217, 1
  ret { i64, i64 } %219
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @XXHL128_seed_avx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #5 {
  %4 = alloca [192 x i8], align 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %222

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %67, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %48
  %12 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %9 ], [ %64, %48 ]
  %13 = phi i64 [ 0, %9 ], [ %65, %48 ]
  %14 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %56, %48 ]
  %15 = shl i64 %13, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi <4 x i64> [ %12, %11 ], [ %45, %17 ]
  %19 = phi <4 x i64> [ %14, %11 ], [ %34, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %46, %17 ]
  %21 = shl i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1), !noalias !856
  %24 = shl i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1, !alias.scope !853, !noalias !858
  %27 = load <4 x i64>, ptr %25, align 8, !alias.scope !856, !noalias !860
  %28 = xor <4 x i64> %27, %26
  %29 = lshr <4 x i64> %28, splat (i64 32)
  %30 = and <4 x i64> %28, splat (i64 4294967295)
  %31 = mul nuw <4 x i64> %30, %29
  %32 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %33 = add <4 x i64> %19, %32
  %34 = add <4 x i64> %33, %31
  %35 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %36 = load <4 x i64>, ptr %35, align 1, !alias.scope !853, !noalias !858
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %38 = load <4 x i64>, ptr %37, align 8, !alias.scope !856, !noalias !860
  %39 = xor <4 x i64> %38, %36
  %40 = lshr <4 x i64> %39, splat (i64 32)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %36, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %18, %43
  %45 = add <4 x i64> %44, %42
  %46 = add nuw nsw i64 %20, 1
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %17, !llvm.loop !293

48:                                               ; preds = %17
  %49 = lshr <4 x i64> %34, splat (i64 47)
  %50 = xor <4 x i64> %34, %49
  %51 = xor <4 x i64> %50, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %52 = lshr <4 x i64> %51, splat (i64 32)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, splat (i64 2654435761)
  %55 = mul <4 x i64> %52, splat (i64 -7046029290881679360)
  %56 = add <4 x i64> %54, %55
  %57 = lshr <4 x i64> %45, splat (i64 47)
  %58 = xor <4 x i64> %45, %57
  %59 = xor <4 x i64> %58, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %62, %63
  %65 = add nuw nsw i64 %13, 1
  %66 = icmp eq i64 %65, %10
  br i1 %66, label %67, label %11, !llvm.loop !20

67:                                               ; preds = %48, %6
  %68 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %64, %48 ]
  %69 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %56, %48 ]
  %70 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %70)
  %71 = and i64 %7, -1024
  %72 = lshr i64 %7, 6
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %67, %76
  %77 = phi <4 x i64> [ %104, %76 ], [ %68, %67 ]
  %78 = phi <4 x i64> [ %93, %76 ], [ %69, %67 ]
  %79 = phi i64 [ %105, %76 ], [ 0, %67 ]
  %80 = shl i64 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %74, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %82, i32 0, i32 3, i32 1), !noalias !864
  %83 = shl i64 %79, 3
  %84 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %83
  %85 = load <4 x i64>, ptr %81, align 1, !alias.scope !861, !noalias !866
  %86 = load <4 x i64>, ptr %84, align 8, !alias.scope !864, !noalias !868
  %87 = xor <4 x i64> %86, %85
  %88 = lshr <4 x i64> %87, splat (i64 32)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %85, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = add <4 x i64> %78, %91
  %93 = add <4 x i64> %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %95 = load <4 x i64>, ptr %94, align 1, !alias.scope !861, !noalias !866
  %96 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %97 = load <4 x i64>, ptr %96, align 8, !alias.scope !864, !noalias !868
  %98 = xor <4 x i64> %97, %95
  %99 = lshr <4 x i64> %98, splat (i64 32)
  %100 = and <4 x i64> %98, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %100, %99
  %102 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %103 = add <4 x i64> %77, %102
  %104 = add <4 x i64> %103, %101
  %105 = add nuw nsw i64 %79, 1
  %106 = icmp eq i64 %105, %73
  br i1 %106, label %107, label %76, !llvm.loop !293

107:                                              ; preds = %76, %67
  %108 = phi <4 x i64> [ %68, %67 ], [ %104, %76 ]
  %109 = phi <4 x i64> [ %69, %67 ], [ %93, %76 ]
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %111 = getelementptr inbounds i8, ptr %110, i64 -64
  %112 = load <4 x i64>, ptr %111, align 1, !alias.scope !869, !noalias !872
  %113 = xor <4 x i64> %112, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %114 = lshr <4 x i64> %113, splat (i64 32)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %112, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %109, %117
  %119 = add <4 x i64> %118, %116
  %120 = getelementptr inbounds i8, ptr %110, i64 -32
  %121 = load <4 x i64>, ptr %120, align 1, !alias.scope !869, !noalias !872
  %122 = xor <4 x i64> %121, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %123 = lshr <4 x i64> %122, splat (i64 32)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %121, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %108, %126
  %128 = add <4 x i64> %127, %125
  %129 = mul i64 %1, -7046029288634856825
  %130 = extractelement <4 x i64> %119, i64 0
  %131 = xor i64 %130, 7914194659941938988
  %132 = extractelement <4 x i64> %119, i64 1
  %133 = xor i64 %132, -6611157965513653271
  %134 = zext i64 %131 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %129, %139
  %141 = extractelement <4 x i64> %119, i64 2
  %142 = xor i64 %141, -1839215637059881052
  %143 = extractelement <4 x i64> %119, i64 3
  %144 = xor i64 %143, -3433288310154277810
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %140, %150
  %152 = extractelement <4 x i64> %128, i64 0
  %153 = xor i64 %152, 5046485836271438973
  %154 = extractelement <4 x i64> %128, i64 1
  %155 = xor i64 %154, -8055285457383852172
  %156 = zext i64 %153 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %151, %161
  %163 = extractelement <4 x i64> %128, i64 2
  %164 = xor i64 %163, 5920048007935066598
  %165 = extractelement <4 x i64> %128, i64 3
  %166 = xor i64 %165, 7336514198459093435
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %162, %172
  %174 = lshr i64 %173, 37
  %175 = xor i64 %174, %173
  %176 = mul i64 %175, 1609587791953885689
  %177 = lshr i64 %176, 32
  %178 = xor i64 %177, %176
  %179 = mul i64 %1, -4417276706812531889
  %180 = xor i64 %179, -1
  %181 = xor i64 %130, -2753530472436770380
  %182 = xor i64 %132, 3784058077962335096
  %183 = zext i64 %181 to i128
  %184 = zext i64 %182 to i128
  %185 = mul nuw i128 %184, %183
  %186 = lshr i128 %185, 64
  %187 = xor i128 %186, %185
  %188 = trunc i128 %187 to i64
  %189 = add i64 %188, %180
  %190 = xor i64 %141, -360392965937173549
  %191 = xor i64 %143, -5237161843349560557
  %192 = zext i64 %190 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %189, %197
  %199 = xor i64 %152, 2965150961192524528
  %200 = xor i64 %154, 9032178055121889492
  %201 = zext i64 %199 to i128
  %202 = zext i64 %200 to i128
  %203 = mul nuw i128 %202, %201
  %204 = lshr i128 %203, 64
  %205 = xor i128 %204, %203
  %206 = trunc i128 %205 to i64
  %207 = add i64 %198, %206
  %208 = xor i64 %163, 8850058120466833735
  %209 = xor i64 %165, -7669846995664752176
  %210 = zext i64 %208 to i128
  %211 = zext i64 %209 to i128
  %212 = mul nuw i128 %211, %210
  %213 = lshr i128 %212, 64
  %214 = xor i128 %213, %212
  %215 = trunc i128 %214 to i64
  %216 = add i64 %207, %215
  %217 = lshr i64 %216, 37
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587791953885689
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  br label %499

222:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20, !noalias !850
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1), !noalias !850
  %223 = sub i64 0, %2
  %224 = insertelement <4 x i64> poison, i64 %2, i64 0
  %225 = insertelement <4 x i64> %224, i64 %223, i64 1
  %226 = insertelement <4 x i64> %225, i64 %2, i64 2
  %227 = insertelement <4 x i64> %226, i64 %223, i64 3
  %228 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #20, !noalias !850, !srcloc !318
  %229 = ptrtoint ptr %228 to i64
  %230 = and i64 %229, 31
  %231 = icmp eq i64 %230, 0
  call void @llvm.assume(i1 %231), !noalias !850
  %232 = add <4 x i64> %227, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %232, ptr %228, align 32, !noalias !850
  %233 = add <4 x i64> %227, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %234 = getelementptr inbounds nuw i8, ptr %228, i64 32
  store <4 x i64> %233, ptr %234, align 32, !noalias !850
  %235 = add <4 x i64> %227, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %236 = getelementptr inbounds nuw i8, ptr %228, i64 64
  store <4 x i64> %235, ptr %236, align 32, !noalias !850
  %237 = add <4 x i64> %227, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %238 = getelementptr inbounds nuw i8, ptr %228, i64 96
  store <4 x i64> %237, ptr %238, align 32, !noalias !850
  %239 = add <4 x i64> %227, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %240 = getelementptr inbounds nuw i8, ptr %228, i64 128
  store <4 x i64> %239, ptr %240, align 32, !noalias !850
  %241 = add <4 x i64> %227, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %242 = getelementptr inbounds nuw i8, ptr %228, i64 160
  store <4 x i64> %241, ptr %242, align 32, !noalias !850
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %243 = add i64 %1, -1
  %244 = icmp ult i64 %243, 1024
  br i1 %244, label %307, label %245

245:                                              ; preds = %222
  %246 = lshr i64 %243, 10
  %247 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %248 = load <4 x i64>, ptr %247, align 64, !alias.scope !879, !noalias !882
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %250 = load <4 x i64>, ptr %249, align 32, !alias.scope !879, !noalias !882
  br label %251

251:                                              ; preds = %245, %288
  %252 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %245 ], [ %304, %288 ]
  %253 = phi i64 [ 0, %245 ], [ %305, %288 ]
  %254 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %245 ], [ %296, %288 ]
  %255 = shl i64 %253, 10
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 %255
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  br label %257

257:                                              ; preds = %257, %251
  %258 = phi <4 x i64> [ %252, %251 ], [ %285, %257 ]
  %259 = phi <4 x i64> [ %254, %251 ], [ %274, %257 ]
  %260 = phi i64 [ 0, %251 ], [ %286, %257 ]
  %261 = shl i64 %260, 6
  %262 = getelementptr inbounds nuw i8, ptr %256, i64 %261
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %263, i32 0, i32 3, i32 1), !noalias !887
  %264 = shl i64 %260, 3
  %265 = getelementptr inbounds nuw i8, ptr %4, i64 %264
  %266 = load <4 x i64>, ptr %262, align 1, !alias.scope !884, !noalias !889
  %267 = load <4 x i64>, ptr %265, align 8, !alias.scope !887, !noalias !891
  %268 = xor <4 x i64> %267, %266
  %269 = lshr <4 x i64> %268, splat (i64 32)
  %270 = and <4 x i64> %268, splat (i64 4294967295)
  %271 = mul nuw <4 x i64> %270, %269
  %272 = shufflevector <4 x i64> %266, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %273 = add <4 x i64> %259, %272
  %274 = add <4 x i64> %273, %271
  %275 = getelementptr inbounds nuw i8, ptr %262, i64 32
  %276 = load <4 x i64>, ptr %275, align 1, !alias.scope !884, !noalias !889
  %277 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %278 = load <4 x i64>, ptr %277, align 8, !alias.scope !887, !noalias !891
  %279 = xor <4 x i64> %278, %276
  %280 = lshr <4 x i64> %279, splat (i64 32)
  %281 = and <4 x i64> %279, splat (i64 4294967295)
  %282 = mul nuw <4 x i64> %281, %280
  %283 = shufflevector <4 x i64> %276, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %284 = add <4 x i64> %258, %283
  %285 = add <4 x i64> %284, %282
  %286 = add nuw nsw i64 %260, 1
  %287 = icmp eq i64 %286, 16
  br i1 %287, label %288, label %257, !llvm.loop !293

288:                                              ; preds = %257
  %289 = lshr <4 x i64> %274, splat (i64 47)
  %290 = xor <4 x i64> %289, %248
  %291 = xor <4 x i64> %290, %274
  %292 = lshr <4 x i64> %291, splat (i64 32)
  %293 = and <4 x i64> %291, splat (i64 4294967295)
  %294 = mul nuw <4 x i64> %293, splat (i64 2654435761)
  %295 = mul <4 x i64> %292, splat (i64 -7046029290881679360)
  %296 = add <4 x i64> %294, %295
  %297 = lshr <4 x i64> %285, splat (i64 47)
  %298 = xor <4 x i64> %297, %250
  %299 = xor <4 x i64> %298, %285
  %300 = lshr <4 x i64> %299, splat (i64 32)
  %301 = and <4 x i64> %299, splat (i64 4294967295)
  %302 = mul nuw <4 x i64> %301, splat (i64 2654435761)
  %303 = mul <4 x i64> %300, splat (i64 -7046029290881679360)
  %304 = add <4 x i64> %302, %303
  %305 = add nuw nsw i64 %253, 1
  %306 = icmp eq i64 %305, %246
  br i1 %306, label %307, label %251, !llvm.loop !20

307:                                              ; preds = %288, %222
  %308 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %222 ], [ %304, %288 ]
  %309 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %222 ], [ %296, %288 ]
  %310 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %310)
  %311 = and i64 %243, -1024
  %312 = lshr i64 %243, 6
  %313 = and i64 %312, 15
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 %311
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %315 = icmp eq i64 %313, 0
  br i1 %315, label %347, label %316

316:                                              ; preds = %307, %316
  %317 = phi <4 x i64> [ %344, %316 ], [ %308, %307 ]
  %318 = phi <4 x i64> [ %333, %316 ], [ %309, %307 ]
  %319 = phi i64 [ %345, %316 ], [ 0, %307 ]
  %320 = shl i64 %319, 6
  %321 = getelementptr inbounds nuw i8, ptr %314, i64 %320
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %322, i32 0, i32 3, i32 1), !noalias !895
  %323 = shl i64 %319, 3
  %324 = getelementptr inbounds nuw i8, ptr %4, i64 %323
  %325 = load <4 x i64>, ptr %321, align 1, !alias.scope !892, !noalias !897
  %326 = load <4 x i64>, ptr %324, align 8, !alias.scope !895, !noalias !899
  %327 = xor <4 x i64> %326, %325
  %328 = lshr <4 x i64> %327, splat (i64 32)
  %329 = and <4 x i64> %327, splat (i64 4294967295)
  %330 = mul nuw <4 x i64> %329, %328
  %331 = shufflevector <4 x i64> %325, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %332 = add <4 x i64> %318, %331
  %333 = add <4 x i64> %332, %330
  %334 = getelementptr inbounds nuw i8, ptr %321, i64 32
  %335 = load <4 x i64>, ptr %334, align 1, !alias.scope !892, !noalias !897
  %336 = getelementptr inbounds nuw i8, ptr %324, i64 32
  %337 = load <4 x i64>, ptr %336, align 8, !alias.scope !895, !noalias !899
  %338 = xor <4 x i64> %337, %335
  %339 = lshr <4 x i64> %338, splat (i64 32)
  %340 = and <4 x i64> %338, splat (i64 4294967295)
  %341 = mul nuw <4 x i64> %340, %339
  %342 = shufflevector <4 x i64> %335, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %343 = add <4 x i64> %317, %342
  %344 = add <4 x i64> %343, %341
  %345 = add nuw nsw i64 %319, 1
  %346 = icmp eq i64 %345, %313
  br i1 %346, label %347, label %316, !llvm.loop !293

347:                                              ; preds = %316, %307
  %348 = phi <4 x i64> [ %308, %307 ], [ %344, %316 ]
  %349 = phi <4 x i64> [ %309, %307 ], [ %333, %316 ]
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %351 = getelementptr inbounds i8, ptr %350, i64 -64
  %352 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %353 = load <4 x i64>, ptr %351, align 1, !alias.scope !900, !noalias !877
  %354 = load <4 x i64>, ptr %352, align 1
  %355 = xor <4 x i64> %354, %353
  %356 = lshr <4 x i64> %355, splat (i64 32)
  %357 = and <4 x i64> %355, splat (i64 4294967295)
  %358 = mul nuw <4 x i64> %357, %356
  %359 = shufflevector <4 x i64> %353, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %360 = add <4 x i64> %349, %359
  %361 = add <4 x i64> %360, %358
  %362 = getelementptr inbounds i8, ptr %350, i64 -32
  %363 = load <4 x i64>, ptr %362, align 1, !alias.scope !900, !noalias !877
  %364 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %365 = load <4 x i64>, ptr %364, align 1, !alias.scope !877, !noalias !900
  %366 = xor <4 x i64> %365, %363
  %367 = lshr <4 x i64> %366, splat (i64 32)
  %368 = and <4 x i64> %366, splat (i64 4294967295)
  %369 = mul nuw <4 x i64> %368, %367
  %370 = shufflevector <4 x i64> %363, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %371 = add <4 x i64> %348, %370
  %372 = add <4 x i64> %371, %369
  %373 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %374 = mul i64 %1, -7046029288634856825
  %375 = extractelement <4 x i64> %361, i64 0
  %376 = load i64, ptr %373, align 1, !alias.scope !901, !noalias !904
  %377 = xor i64 %376, %375
  %378 = extractelement <4 x i64> %361, i64 1
  %379 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %380 = load i64, ptr %379, align 1, !alias.scope !901, !noalias !904
  %381 = xor i64 %380, %378
  %382 = zext i64 %377 to i128
  %383 = zext i64 %381 to i128
  %384 = mul nuw i128 %383, %382
  %385 = lshr i128 %384, 64
  %386 = xor i128 %385, %384
  %387 = trunc i128 %386 to i64
  %388 = add i64 %374, %387
  %389 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %390 = extractelement <4 x i64> %361, i64 2
  %391 = load i64, ptr %389, align 1, !alias.scope !901, !noalias !904
  %392 = xor i64 %391, %390
  %393 = extractelement <4 x i64> %361, i64 3
  %394 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %395 = load i64, ptr %394, align 1, !alias.scope !901, !noalias !904
  %396 = xor i64 %395, %393
  %397 = zext i64 %392 to i128
  %398 = zext i64 %396 to i128
  %399 = mul nuw i128 %398, %397
  %400 = lshr i128 %399, 64
  %401 = xor i128 %400, %399
  %402 = trunc i128 %401 to i64
  %403 = add i64 %388, %402
  %404 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %405 = extractelement <4 x i64> %372, i64 0
  %406 = load i64, ptr %404, align 1, !alias.scope !901, !noalias !904
  %407 = xor i64 %406, %405
  %408 = extractelement <4 x i64> %372, i64 1
  %409 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %410 = load i64, ptr %409, align 1, !alias.scope !901, !noalias !904
  %411 = xor i64 %410, %408
  %412 = zext i64 %407 to i128
  %413 = zext i64 %411 to i128
  %414 = mul nuw i128 %413, %412
  %415 = lshr i128 %414, 64
  %416 = xor i128 %415, %414
  %417 = trunc i128 %416 to i64
  %418 = add i64 %403, %417
  %419 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %420 = extractelement <4 x i64> %372, i64 2
  %421 = load i64, ptr %419, align 1, !alias.scope !901, !noalias !904
  %422 = xor i64 %421, %420
  %423 = extractelement <4 x i64> %372, i64 3
  %424 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %425 = load i64, ptr %424, align 1, !alias.scope !901, !noalias !904
  %426 = xor i64 %425, %423
  %427 = zext i64 %422 to i128
  %428 = zext i64 %426 to i128
  %429 = mul nuw i128 %428, %427
  %430 = lshr i128 %429, 64
  %431 = xor i128 %430, %429
  %432 = trunc i128 %431 to i64
  %433 = add i64 %418, %432
  %434 = lshr i64 %433, 37
  %435 = xor i64 %434, %433
  %436 = mul i64 %435, 1609587791953885689
  %437 = lshr i64 %436, 32
  %438 = xor i64 %437, %436
  %439 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %440 = mul i64 %1, -4417276706812531889
  %441 = xor i64 %440, -1
  %442 = load i64, ptr %439, align 1, !alias.scope !906, !noalias !909
  %443 = xor i64 %442, %375
  %444 = bitcast <4 x i64> %354 to i256
  %445 = lshr i256 %444, 32
  %446 = trunc i256 %445 to i64
  %447 = xor i64 %378, %446
  %448 = zext i64 %443 to i128
  %449 = zext i64 %447 to i128
  %450 = mul nuw i128 %449, %448
  %451 = lshr i128 %450, 64
  %452 = xor i128 %451, %450
  %453 = trunc i128 %452 to i64
  %454 = add i64 %453, %441
  %455 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %456 = load i64, ptr %455, align 1, !alias.scope !906, !noalias !909
  %457 = xor i64 %456, %390
  %458 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %459 = load i64, ptr %458, align 1, !alias.scope !906, !noalias !909
  %460 = xor i64 %459, %393
  %461 = zext i64 %457 to i128
  %462 = zext i64 %460 to i128
  %463 = mul nuw i128 %462, %461
  %464 = lshr i128 %463, 64
  %465 = xor i128 %464, %463
  %466 = trunc i128 %465 to i64
  %467 = add i64 %454, %466
  %468 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %469 = load i64, ptr %468, align 1, !alias.scope !906, !noalias !909
  %470 = xor i64 %469, %405
  %471 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %472 = load i64, ptr %471, align 1, !alias.scope !906, !noalias !909
  %473 = xor i64 %472, %408
  %474 = zext i64 %470 to i128
  %475 = zext i64 %473 to i128
  %476 = mul nuw i128 %475, %474
  %477 = lshr i128 %476, 64
  %478 = xor i128 %477, %476
  %479 = trunc i128 %478 to i64
  %480 = add i64 %467, %479
  %481 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %482 = load i64, ptr %481, align 1, !alias.scope !906, !noalias !909
  %483 = xor i64 %482, %420
  %484 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %485 = load i64, ptr %484, align 1, !alias.scope !906, !noalias !909
  %486 = xor i64 %485, %423
  %487 = zext i64 %483 to i128
  %488 = zext i64 %486 to i128
  %489 = mul nuw i128 %488, %487
  %490 = lshr i128 %489, 64
  %491 = xor i128 %490, %489
  %492 = trunc i128 %491 to i64
  %493 = add i64 %480, %492
  %494 = lshr i64 %493, 37
  %495 = xor i64 %494, %493
  %496 = mul i64 %495, 1609587791953885689
  %497 = lshr i64 %496, 32
  %498 = xor i64 %497, %496
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20, !noalias !850
  br label %499

499:                                              ; preds = %107, %347
  %500 = phi i64 [ %178, %107 ], [ %438, %347 ]
  %501 = phi i64 [ %221, %107 ], [ %498, %347 ]
  %502 = insertvalue { i64, i64 } poison, i64 %500, 0
  %503 = insertvalue { i64, i64 } %502, i64 %501, 1
  ret { i64, i64 } %503
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal { i64, i64 } @XXHL128_secret_avx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) #4 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ugt i64 %7, %8
  br i1 %12, label %75, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = load <4 x i64>, ptr %15, align 1, !alias.scope !916, !noalias !919
  %17 = getelementptr inbounds i8, ptr %14, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1, !alias.scope !916, !noalias !919
  br label %19

19:                                               ; preds = %13, %56
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %13 ], [ %72, %56 ]
  %21 = phi i64 [ 0, %13 ], [ %73, %56 ]
  %22 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %13 ], [ %64, %56 ]
  %23 = mul i64 %21, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  br label %25

25:                                               ; preds = %25, %19
  %26 = phi <4 x i64> [ %20, %19 ], [ %53, %25 ]
  %27 = phi <4 x i64> [ %22, %19 ], [ %42, %25 ]
  %28 = phi i64 [ 0, %19 ], [ %54, %25 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %31, i32 0, i32 3, i32 1), !noalias !924
  %32 = shl i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load <4 x i64>, ptr %30, align 1, !alias.scope !921, !noalias !926
  %35 = load <4 x i64>, ptr %33, align 1, !alias.scope !924, !noalias !928
  %36 = xor <4 x i64> %35, %34
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, %37
  %40 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %41 = add <4 x i64> %27, %40
  %42 = add <4 x i64> %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %44 = load <4 x i64>, ptr %43, align 1, !alias.scope !921, !noalias !926
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %46 = load <4 x i64>, ptr %45, align 1, !alias.scope !924, !noalias !928
  %47 = xor <4 x i64> %46, %44
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %52 = add <4 x i64> %26, %51
  %53 = add <4 x i64> %52, %50
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %25, !llvm.loop !293

56:                                               ; preds = %25
  %57 = lshr <4 x i64> %42, splat (i64 47)
  %58 = xor <4 x i64> %57, %16
  %59 = xor <4 x i64> %58, %42
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %62, %63
  %65 = lshr <4 x i64> %53, splat (i64 47)
  %66 = xor <4 x i64> %65, %18
  %67 = xor <4 x i64> %66, %53
  %68 = lshr <4 x i64> %67, splat (i64 32)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, splat (i64 2654435761)
  %71 = mul <4 x i64> %68, splat (i64 -7046029290881679360)
  %72 = add <4 x i64> %70, %71
  %73 = add nuw i64 %21, 1
  %74 = icmp ult i64 %73, %9
  br i1 %74, label %19, label %75, !llvm.loop !20

75:                                               ; preds = %56, %4
  %76 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %72, %56 ]
  %77 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %64, %56 ]
  %78 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %78)
  %79 = mul i64 %9, %7
  %80 = lshr i64 %10, 6
  %81 = lshr i64 %3, 3
  %82 = icmp samesign ule i64 %80, %81
  tail call void @llvm.assume(i1 %82)
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %84 = icmp ult i64 %10, 64
  br i1 %84, label %116, label %85

85:                                               ; preds = %75, %85
  %86 = phi <4 x i64> [ %113, %85 ], [ %76, %75 ]
  %87 = phi <4 x i64> [ %102, %85 ], [ %77, %75 ]
  %88 = phi i64 [ %114, %85 ], [ 0, %75 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %91, i32 0, i32 3, i32 1), !noalias !932
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1, !alias.scope !929, !noalias !934
  %95 = load <4 x i64>, ptr %93, align 1, !alias.scope !932, !noalias !936
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %87, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %104 = load <4 x i64>, ptr %103, align 1, !alias.scope !929, !noalias !934
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %106 = load <4 x i64>, ptr %105, align 1, !alias.scope !932, !noalias !936
  %107 = xor <4 x i64> %106, %104
  %108 = lshr <4 x i64> %107, splat (i64 32)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %86, %111
  %113 = add <4 x i64> %112, %110
  %114 = add nuw i64 %88, 1
  %115 = icmp eq i64 %114, %80
  br i1 %115, label %116, label %85, !llvm.loop !293

116:                                              ; preds = %85, %75
  %117 = phi <4 x i64> [ %76, %75 ], [ %113, %85 ]
  %118 = phi <4 x i64> [ %77, %75 ], [ %102, %85 ]
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %120 = getelementptr inbounds i8, ptr %119, i64 -64
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %122 = getelementptr inbounds i8, ptr %121, i64 -71
  %123 = load <4 x i64>, ptr %120, align 1, !alias.scope !911, !noalias !914
  %124 = load <4 x i64>, ptr %122, align 1
  %125 = xor <4 x i64> %124, %123
  %126 = lshr <4 x i64> %125, splat (i64 32)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %130 = add <4 x i64> %118, %129
  %131 = add <4 x i64> %130, %128
  %132 = getelementptr inbounds i8, ptr %119, i64 -32
  %133 = load <4 x i64>, ptr %132, align 1, !alias.scope !911, !noalias !914
  %134 = getelementptr inbounds i8, ptr %121, i64 -39
  %135 = load <4 x i64>, ptr %134, align 1, !alias.scope !914, !noalias !911
  %136 = xor <4 x i64> %135, %133
  %137 = lshr <4 x i64> %136, splat (i64 32)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %133, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = add <4 x i64> %117, %140
  %142 = add <4 x i64> %141, %139
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %144 = mul i64 %1, -7046029288634856825
  %145 = extractelement <4 x i64> %131, i64 0
  %146 = load i64, ptr %143, align 1, !alias.scope !937, !noalias !940
  %147 = xor i64 %146, %145
  %148 = extractelement <4 x i64> %131, i64 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %150 = load i64, ptr %149, align 1, !alias.scope !937, !noalias !940
  %151 = xor i64 %150, %148
  %152 = zext i64 %147 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %144, %157
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %160 = extractelement <4 x i64> %131, i64 2
  %161 = load i64, ptr %159, align 1, !alias.scope !937, !noalias !940
  %162 = xor i64 %161, %160
  %163 = extractelement <4 x i64> %131, i64 3
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %165 = load i64, ptr %164, align 1, !alias.scope !937, !noalias !940
  %166 = xor i64 %165, %163
  %167 = zext i64 %162 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %158, %172
  %174 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %175 = extractelement <4 x i64> %142, i64 0
  %176 = load i64, ptr %174, align 1, !alias.scope !937, !noalias !940
  %177 = xor i64 %176, %175
  %178 = extractelement <4 x i64> %142, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %180 = load i64, ptr %179, align 1, !alias.scope !937, !noalias !940
  %181 = xor i64 %180, %178
  %182 = zext i64 %177 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %173, %187
  %189 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %190 = extractelement <4 x i64> %142, i64 2
  %191 = load i64, ptr %189, align 1, !alias.scope !937, !noalias !940
  %192 = xor i64 %191, %190
  %193 = extractelement <4 x i64> %142, i64 3
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %195 = load i64, ptr %194, align 1, !alias.scope !937, !noalias !940
  %196 = xor i64 %195, %193
  %197 = zext i64 %192 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %188, %202
  %204 = lshr i64 %203, 37
  %205 = xor i64 %204, %203
  %206 = mul i64 %205, 1609587791953885689
  %207 = lshr i64 %206, 32
  %208 = xor i64 %207, %206
  %209 = getelementptr inbounds i8, ptr %121, i64 -75
  %210 = mul i64 %1, -4417276706812531889
  %211 = xor i64 %210, -1
  %212 = load i64, ptr %209, align 1, !alias.scope !942, !noalias !945
  %213 = xor i64 %212, %145
  %214 = bitcast <4 x i64> %124 to i256
  %215 = lshr i256 %214, 32
  %216 = trunc i256 %215 to i64
  %217 = xor i64 %148, %216
  %218 = zext i64 %213 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %223, %211
  %225 = getelementptr inbounds i8, ptr %121, i64 -59
  %226 = load i64, ptr %225, align 1, !alias.scope !942, !noalias !945
  %227 = xor i64 %226, %160
  %228 = getelementptr inbounds i8, ptr %121, i64 -51
  %229 = load i64, ptr %228, align 1, !alias.scope !942, !noalias !945
  %230 = xor i64 %229, %163
  %231 = zext i64 %227 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %224, %236
  %238 = getelementptr inbounds i8, ptr %121, i64 -43
  %239 = load i64, ptr %238, align 1, !alias.scope !942, !noalias !945
  %240 = xor i64 %239, %175
  %241 = getelementptr inbounds i8, ptr %121, i64 -35
  %242 = load i64, ptr %241, align 1, !alias.scope !942, !noalias !945
  %243 = xor i64 %242, %178
  %244 = zext i64 %240 to i128
  %245 = zext i64 %243 to i128
  %246 = mul nuw i128 %245, %244
  %247 = lshr i128 %246, 64
  %248 = xor i128 %247, %246
  %249 = trunc i128 %248 to i64
  %250 = add i64 %237, %249
  %251 = getelementptr inbounds i8, ptr %121, i64 -27
  %252 = load i64, ptr %251, align 1, !alias.scope !942, !noalias !945
  %253 = xor i64 %252, %190
  %254 = getelementptr inbounds i8, ptr %121, i64 -19
  %255 = load i64, ptr %254, align 1, !alias.scope !942, !noalias !945
  %256 = xor i64 %255, %193
  %257 = zext i64 %253 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %250, %262
  %264 = lshr i64 %263, 37
  %265 = xor i64 %264, %263
  %266 = mul i64 %265, 1609587791953885689
  %267 = lshr i64 %266, 32
  %268 = xor i64 %267, %266
  %269 = insertvalue { i64, i64 } poison, i64 %208, 0
  %270 = insertvalue { i64, i64 } %269, i64 %268, 1
  ret { i64, i64 } %270
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal { i64, i64 } @XXHL128_default_avx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #8 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %3 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !950
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = lshr i64 %4, 10
  %8 = load <16 x i32>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64
  br label %9

9:                                                ; preds = %6, %48
  %10 = phi i64 [ 0, %6 ], [ %59, %48 ]
  %11 = phi <8 x i64> [ %3, %6 ], [ %58, %48 ]
  %12 = shl i64 %10, 10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi <8 x i64> [ %11, %9 ], [ %45, %14 ]
  %16 = phi i64 [ 0, %9 ], [ %46, %14 ]
  %17 = shl i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %19, i32 0, i32 3, i32 1), !noalias !955
  %20 = shl i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <8 x i64>, ptr %18, align 1, !alias.scope !952, !noalias !957
  %23 = load <8 x i64>, ptr %21, align 16, !alias.scope !955, !noalias !961
  %24 = xor <8 x i64> %23, %22
  %25 = lshr <8 x i64> %24, splat (i64 32)
  %26 = and <8 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <8 x i64> %26, %25
  %28 = shufflevector <8 x i64> %22, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %29 = add <8 x i64> %15, %28
  %30 = add <8 x i64> %29, %27
  %31 = or disjoint i64 %16, 1
  %32 = shl i64 %31, 6
  %33 = getelementptr inbounds nuw i8, ptr %13, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %34, i32 0, i32 3, i32 1), !noalias !955
  %35 = shl i64 %31, 3
  %36 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %35
  %37 = load <8 x i64>, ptr %33, align 1, !alias.scope !952, !noalias !957
  %38 = load <8 x i64>, ptr %36, align 8, !alias.scope !955, !noalias !961
  %39 = xor <8 x i64> %38, %37
  %40 = lshr <8 x i64> %39, splat (i64 32)
  %41 = and <8 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <8 x i64> %41, %40
  %43 = shufflevector <8 x i64> %37, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %44 = add <8 x i64> %30, %43
  %45 = add <8 x i64> %44, %42
  %46 = add nuw nsw i64 %16, 2
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %14, !llvm.loop !562

48:                                               ; preds = %14
  %49 = lshr <8 x i64> %45, splat (i64 47)
  %50 = bitcast <8 x i64> %45 to <16 x i32>
  %51 = bitcast <8 x i64> %49 to <16 x i32>
  %52 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %8, <16 x i32> %50, <16 x i32> %51, i32 150)
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = lshr <8 x i64> %53, splat (i64 32)
  %55 = and <8 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, splat (i64 2654435761)
  %57 = mul <8 x i64> %54, splat (i64 -7046029290881679360)
  %58 = add <8 x i64> %56, %57
  %59 = add nuw nsw i64 %10, 1
  %60 = icmp eq i64 %59, %7
  br i1 %60, label %61, label %9, !llvm.loop !20

61:                                               ; preds = %48, %2
  %62 = phi <8 x i64> [ %3, %2 ], [ %58, %48 ]
  %63 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %63)
  %64 = and i64 %4, -1024
  %65 = lshr i64 %4, 6
  %66 = and i64 %65, 15
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  switch i64 %66, label %68 [
    i64 0, label %127
    i64 1, label %106
  ]

68:                                               ; preds = %61
  %69 = and i64 %65, 14
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi <8 x i64> [ %62, %68 ], [ %102, %70 ]
  %72 = phi i64 [ 0, %68 ], [ %103, %70 ]
  %73 = phi i64 [ 0, %68 ], [ %104, %70 ]
  %74 = shl i64 %72, 6
  %75 = getelementptr inbounds nuw i8, ptr %67, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %76, i32 0, i32 3, i32 1), !noalias !965
  %77 = shl i64 %72, 3
  %78 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %77
  %79 = load <8 x i64>, ptr %75, align 1, !alias.scope !962, !noalias !967
  %80 = load <8 x i64>, ptr %78, align 16, !alias.scope !965, !noalias !971
  %81 = xor <8 x i64> %80, %79
  %82 = lshr <8 x i64> %81, splat (i64 32)
  %83 = and <8 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <8 x i64> %83, %82
  %85 = shufflevector <8 x i64> %79, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %86 = add <8 x i64> %71, %85
  %87 = add <8 x i64> %86, %84
  %88 = or disjoint i64 %72, 1
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %67, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %91, i32 0, i32 3, i32 1), !noalias !965
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %92
  %94 = load <8 x i64>, ptr %90, align 1, !alias.scope !962, !noalias !967
  %95 = load <8 x i64>, ptr %93, align 8, !alias.scope !965, !noalias !971
  %96 = xor <8 x i64> %95, %94
  %97 = lshr <8 x i64> %96, splat (i64 32)
  %98 = and <8 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <8 x i64> %98, %97
  %100 = shufflevector <8 x i64> %94, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %101 = add <8 x i64> %87, %100
  %102 = add <8 x i64> %101, %99
  %103 = add nuw nsw i64 %72, 2
  %104 = add i64 %73, 2
  %105 = icmp eq i64 %104, %69
  br i1 %105, label %106, label %70, !llvm.loop !562

106:                                              ; preds = %70, %61
  %107 = phi <8 x i64> [ poison, %61 ], [ %102, %70 ]
  %108 = phi <8 x i64> [ %62, %61 ], [ %102, %70 ]
  %109 = phi i64 [ 0, %61 ], [ %103, %70 ]
  %110 = and i64 %4, 64
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %106
  %113 = shl i64 %109, 6
  %114 = getelementptr inbounds nuw i8, ptr %67, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %115, i32 0, i32 3, i32 1), !noalias !965
  %116 = shl i64 %109, 3
  %117 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %116
  %118 = load <8 x i64>, ptr %114, align 1, !alias.scope !962, !noalias !967
  %119 = load <8 x i64>, ptr %117, align 8, !alias.scope !965, !noalias !971
  %120 = xor <8 x i64> %119, %118
  %121 = lshr <8 x i64> %120, splat (i64 32)
  %122 = and <8 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <8 x i64> %122, %121
  %124 = shufflevector <8 x i64> %118, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %125 = add <8 x i64> %108, %124
  %126 = add <8 x i64> %125, %123
  br label %127

127:                                              ; preds = %112, %106, %61
  %128 = phi <8 x i64> [ %62, %61 ], [ %107, %106 ], [ %126, %112 ]
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %130 = getelementptr inbounds i8, ptr %129, i64 -64
  %131 = load <4 x i64>, ptr %130, align 1, !alias.scope !947, !noalias !972
  %132 = xor <4 x i64> %131, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %133 = lshr <4 x i64> %132, splat (i64 32)
  %134 = and <4 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <4 x i64> %134, %133
  %136 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %137 = shufflevector <8 x i64> %128, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %138 = add <4 x i64> %137, %136
  %139 = add <4 x i64> %138, %135
  %140 = getelementptr inbounds i8, ptr %129, i64 -32
  %141 = load <4 x i64>, ptr %140, align 1, !alias.scope !947, !noalias !972
  %142 = xor <4 x i64> %141, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %143 = lshr <4 x i64> %142, splat (i64 32)
  %144 = and <4 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <4 x i64> %144, %143
  %146 = shufflevector <4 x i64> %141, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %147 = shufflevector <8 x i64> %128, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %148 = add <4 x i64> %147, %146
  %149 = add <4 x i64> %148, %145
  %150 = mul i64 %1, -7046029288634856825
  %151 = extractelement <4 x i64> %139, i64 0
  %152 = xor i64 %151, 7914194659941938988
  %153 = extractelement <4 x i64> %139, i64 1
  %154 = xor i64 %153, -6611157965513653271
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = extractelement <4 x i64> %139, i64 2
  %163 = xor i64 %162, -1839215637059881052
  %164 = extractelement <4 x i64> %139, i64 3
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
  %243 = insertvalue { i64, i64 } poison, i64 %199, 0
  %244 = insertvalue { i64, i64 } %243, i64 %242, 1
  ret { i64, i64 } %244
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal { i64, i64 } @XXHL128_seed_avx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #8 {
  %4 = alloca [192 x i8], align 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %247

6:                                                ; preds = %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %7 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !979
  %8 = add i64 %1, -1
  %9 = icmp ult i64 %8, 1024
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = lshr i64 %8, 10
  %12 = load <16 x i32>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64
  br label %13

13:                                               ; preds = %10, %52
  %14 = phi i64 [ 0, %10 ], [ %63, %52 ]
  %15 = phi <8 x i64> [ %7, %10 ], [ %62, %52 ]
  %16 = shl i64 %14, 10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi <8 x i64> [ %15, %13 ], [ %49, %18 ]
  %20 = phi i64 [ 0, %13 ], [ %50, %18 ]
  %21 = shl i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1), !noalias !984
  %24 = shl i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <8 x i64>, ptr %22, align 1, !alias.scope !981, !noalias !986
  %27 = load <8 x i64>, ptr %25, align 16, !alias.scope !984, !noalias !990
  %28 = xor <8 x i64> %27, %26
  %29 = lshr <8 x i64> %28, splat (i64 32)
  %30 = and <8 x i64> %28, splat (i64 4294967295)
  %31 = mul nuw <8 x i64> %30, %29
  %32 = shufflevector <8 x i64> %26, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %33 = add <8 x i64> %19, %32
  %34 = add <8 x i64> %33, %31
  %35 = or disjoint i64 %20, 1
  %36 = shl i64 %35, 6
  %37 = getelementptr inbounds nuw i8, ptr %17, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %38, i32 0, i32 3, i32 1), !noalias !984
  %39 = shl i64 %35, 3
  %40 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %39
  %41 = load <8 x i64>, ptr %37, align 1, !alias.scope !981, !noalias !986
  %42 = load <8 x i64>, ptr %40, align 8, !alias.scope !984, !noalias !990
  %43 = xor <8 x i64> %42, %41
  %44 = lshr <8 x i64> %43, splat (i64 32)
  %45 = and <8 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <8 x i64> %45, %44
  %47 = shufflevector <8 x i64> %41, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %48 = add <8 x i64> %34, %47
  %49 = add <8 x i64> %48, %46
  %50 = add nuw nsw i64 %20, 2
  %51 = icmp eq i64 %50, 16
  br i1 %51, label %52, label %18, !llvm.loop !562

52:                                               ; preds = %18
  %53 = lshr <8 x i64> %49, splat (i64 47)
  %54 = bitcast <8 x i64> %49 to <16 x i32>
  %55 = bitcast <8 x i64> %53 to <16 x i32>
  %56 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %12, <16 x i32> %54, <16 x i32> %55, i32 150)
  %57 = bitcast <16 x i32> %56 to <8 x i64>
  %58 = lshr <8 x i64> %57, splat (i64 32)
  %59 = and <8 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <8 x i64> %59, splat (i64 2654435761)
  %61 = mul <8 x i64> %58, splat (i64 -7046029290881679360)
  %62 = add <8 x i64> %60, %61
  %63 = add nuw nsw i64 %14, 1
  %64 = icmp eq i64 %63, %11
  br i1 %64, label %65, label %13, !llvm.loop !20

65:                                               ; preds = %52, %6
  %66 = phi <8 x i64> [ %7, %6 ], [ %62, %52 ]
  %67 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %67)
  %68 = and i64 %8, -1024
  %69 = lshr i64 %8, 6
  %70 = and i64 %69, 15
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 %68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  switch i64 %70, label %72 [
    i64 0, label %131
    i64 1, label %110
  ]

72:                                               ; preds = %65
  %73 = and i64 %69, 14
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi <8 x i64> [ %66, %72 ], [ %106, %74 ]
  %76 = phi i64 [ 0, %72 ], [ %107, %74 ]
  %77 = phi i64 [ 0, %72 ], [ %108, %74 ]
  %78 = shl i64 %76, 6
  %79 = getelementptr inbounds nuw i8, ptr %71, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %80, i32 0, i32 3, i32 1), !noalias !994
  %81 = shl i64 %76, 3
  %82 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %81
  %83 = load <8 x i64>, ptr %79, align 1, !alias.scope !991, !noalias !996
  %84 = load <8 x i64>, ptr %82, align 16, !alias.scope !994, !noalias !1000
  %85 = xor <8 x i64> %84, %83
  %86 = lshr <8 x i64> %85, splat (i64 32)
  %87 = and <8 x i64> %85, splat (i64 4294967295)
  %88 = mul nuw <8 x i64> %87, %86
  %89 = shufflevector <8 x i64> %83, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %90 = add <8 x i64> %75, %89
  %91 = add <8 x i64> %90, %88
  %92 = or disjoint i64 %76, 1
  %93 = shl i64 %92, 6
  %94 = getelementptr inbounds nuw i8, ptr %71, i64 %93
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %95, i32 0, i32 3, i32 1), !noalias !994
  %96 = shl i64 %92, 3
  %97 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %96
  %98 = load <8 x i64>, ptr %94, align 1, !alias.scope !991, !noalias !996
  %99 = load <8 x i64>, ptr %97, align 8, !alias.scope !994, !noalias !1000
  %100 = xor <8 x i64> %99, %98
  %101 = lshr <8 x i64> %100, splat (i64 32)
  %102 = and <8 x i64> %100, splat (i64 4294967295)
  %103 = mul nuw <8 x i64> %102, %101
  %104 = shufflevector <8 x i64> %98, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %105 = add <8 x i64> %91, %104
  %106 = add <8 x i64> %105, %103
  %107 = add nuw nsw i64 %76, 2
  %108 = add i64 %77, 2
  %109 = icmp eq i64 %108, %73
  br i1 %109, label %110, label %74, !llvm.loop !562

110:                                              ; preds = %74, %65
  %111 = phi <8 x i64> [ poison, %65 ], [ %106, %74 ]
  %112 = phi <8 x i64> [ %66, %65 ], [ %106, %74 ]
  %113 = phi i64 [ 0, %65 ], [ %107, %74 ]
  %114 = and i64 %8, 64
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %110
  %117 = shl i64 %113, 6
  %118 = getelementptr inbounds nuw i8, ptr %71, i64 %117
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %119, i32 0, i32 3, i32 1), !noalias !994
  %120 = shl i64 %113, 3
  %121 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %120
  %122 = load <8 x i64>, ptr %118, align 1, !alias.scope !991, !noalias !996
  %123 = load <8 x i64>, ptr %121, align 8, !alias.scope !994, !noalias !1000
  %124 = xor <8 x i64> %123, %122
  %125 = lshr <8 x i64> %124, splat (i64 32)
  %126 = and <8 x i64> %124, splat (i64 4294967295)
  %127 = mul nuw <8 x i64> %126, %125
  %128 = shufflevector <8 x i64> %122, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %129 = add <8 x i64> %112, %128
  %130 = add <8 x i64> %129, %127
  br label %131

131:                                              ; preds = %116, %110, %65
  %132 = phi <8 x i64> [ %66, %65 ], [ %111, %110 ], [ %130, %116 ]
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %134 = getelementptr inbounds i8, ptr %133, i64 -64
  %135 = load <4 x i64>, ptr %134, align 1, !alias.scope !1001, !noalias !1002
  %136 = xor <4 x i64> %135, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %137 = lshr <4 x i64> %136, splat (i64 32)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %135, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = shufflevector <8 x i64> %132, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %142 = add <4 x i64> %141, %140
  %143 = add <4 x i64> %142, %139
  %144 = getelementptr inbounds i8, ptr %133, i64 -32
  %145 = load <4 x i64>, ptr %144, align 1, !alias.scope !1001, !noalias !1002
  %146 = xor <4 x i64> %145, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %147 = lshr <4 x i64> %146, splat (i64 32)
  %148 = and <4 x i64> %146, splat (i64 4294967295)
  %149 = mul nuw <4 x i64> %148, %147
  %150 = shufflevector <4 x i64> %145, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %151 = shufflevector <8 x i64> %132, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %152 = add <4 x i64> %151, %150
  %153 = add <4 x i64> %152, %149
  %154 = mul i64 %1, -7046029288634856825
  %155 = extractelement <4 x i64> %143, i64 0
  %156 = xor i64 %155, 7914194659941938988
  %157 = extractelement <4 x i64> %143, i64 1
  %158 = xor i64 %157, -6611157965513653271
  %159 = zext i64 %156 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %154, %164
  %166 = extractelement <4 x i64> %143, i64 2
  %167 = xor i64 %166, -1839215637059881052
  %168 = extractelement <4 x i64> %143, i64 3
  %169 = xor i64 %168, -3433288310154277810
  %170 = zext i64 %167 to i128
  %171 = zext i64 %169 to i128
  %172 = mul nuw i128 %171, %170
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %165, %175
  %177 = extractelement <4 x i64> %153, i64 0
  %178 = xor i64 %177, 5046485836271438973
  %179 = extractelement <4 x i64> %153, i64 1
  %180 = xor i64 %179, -8055285457383852172
  %181 = zext i64 %178 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %176, %186
  %188 = extractelement <4 x i64> %153, i64 2
  %189 = xor i64 %188, 5920048007935066598
  %190 = extractelement <4 x i64> %153, i64 3
  %191 = xor i64 %190, 7336514198459093435
  %192 = zext i64 %189 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %187, %197
  %199 = lshr i64 %198, 37
  %200 = xor i64 %199, %198
  %201 = mul i64 %200, 1609587791953885689
  %202 = lshr i64 %201, 32
  %203 = xor i64 %202, %201
  %204 = mul i64 %1, -4417276706812531889
  %205 = xor i64 %204, -1
  %206 = xor i64 %155, -2753530472436770380
  %207 = xor i64 %157, 3784058077962335096
  %208 = zext i64 %206 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %213, %205
  %215 = xor i64 %166, -360392965937173549
  %216 = xor i64 %168, -5237161843349560557
  %217 = zext i64 %215 to i128
  %218 = zext i64 %216 to i128
  %219 = mul nuw i128 %218, %217
  %220 = lshr i128 %219, 64
  %221 = xor i128 %220, %219
  %222 = trunc i128 %221 to i64
  %223 = add i64 %214, %222
  %224 = xor i64 %177, 2965150961192524528
  %225 = xor i64 %179, 9032178055121889492
  %226 = zext i64 %224 to i128
  %227 = zext i64 %225 to i128
  %228 = mul nuw i128 %227, %226
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %223, %231
  %233 = xor i64 %188, 8850058120466833735
  %234 = xor i64 %190, -7669846995664752176
  %235 = zext i64 %233 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %232, %240
  %242 = lshr i64 %241, 37
  %243 = xor i64 %242, %241
  %244 = mul i64 %243, 1609587791953885689
  %245 = lshr i64 %244, 32
  %246 = xor i64 %245, %244
  br label %541

247:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20, !noalias !973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %248 = insertelement <8 x i64> poison, i64 %2, i64 0
  %249 = sub <8 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, %248
  %250 = shufflevector <8 x i64> %249, <8 x i64> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %251 = shufflevector <8 x i64> %248, <8 x i64> %250, <8 x i32> <i32 0, i32 9, i32 0, i32 11, i32 0, i32 13, i32 0, i32 15>
  %252 = load <8 x i64>, ptr @XXH3_kSecret, align 64, !noalias !1006
  %253 = add <8 x i64> %252, %251
  store <8 x i64> %253, ptr %4, align 64, !alias.scope !1003, !noalias !973
  %254 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), align 64, !noalias !1006
  %255 = add <8 x i64> %254, %251
  %256 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <8 x i64> %255, ptr %256, align 64, !alias.scope !1003, !noalias !973
  %257 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64, !noalias !1006
  %258 = add <8 x i64> %257, %251
  %259 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store <8 x i64> %258, ptr %259, align 64, !alias.scope !1003, !noalias !973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %260 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !1010
  %261 = add i64 %1, -1
  %262 = icmp ult i64 %261, 1024
  %263 = bitcast <8 x i64> %258 to i512
  %264 = bitcast <8 x i64> %258 to <16 x i32>
  %265 = lshr i512 %263, 200
  %266 = trunc i512 %265 to i256
  %267 = bitcast i256 %266 to <4 x i64>
  %268 = bitcast <8 x i64> %253 to i512
  %269 = lshr i512 %268, 88
  %270 = trunc i512 %269 to i64
  %271 = lshr i512 %268, 152
  %272 = trunc i512 %271 to i64
  %273 = lshr i512 %268, 216
  %274 = trunc i512 %273 to i64
  %275 = lshr i512 %268, 280
  %276 = trunc i512 %275 to i64
  %277 = lshr i512 %268, 344
  %278 = trunc i512 %277 to i64
  %279 = lshr i512 %268, 408
  %280 = trunc i512 %279 to i64
  %281 = bitcast <8 x i64> %255 to i512
  %282 = lshr i512 %281, 24
  %283 = trunc i512 %282 to i64
  %284 = lshr i512 %281, 424
  %285 = trunc i512 %284 to i64
  br i1 %262, label %340, label %286

286:                                              ; preds = %247
  %287 = lshr i64 %261, 10
  br label %288

288:                                              ; preds = %286, %327
  %289 = phi i64 [ 0, %286 ], [ %338, %327 ]
  %290 = phi <8 x i64> [ %260, %286 ], [ %337, %327 ]
  %291 = shl i64 %289, 10
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 %291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  br label %293

293:                                              ; preds = %293, %288
  %294 = phi <8 x i64> [ %290, %288 ], [ %324, %293 ]
  %295 = phi i64 [ 0, %288 ], [ %325, %293 ]
  %296 = shl i64 %295, 6
  %297 = getelementptr inbounds nuw i8, ptr %292, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %298, i32 0, i32 3, i32 1), !noalias !1015
  %299 = shl i64 %295, 3
  %300 = getelementptr inbounds nuw i8, ptr %4, i64 %299
  %301 = load <8 x i64>, ptr %297, align 1, !alias.scope !1012, !noalias !1017
  %302 = load <8 x i64>, ptr %300, align 16, !alias.scope !1015, !noalias !1021
  %303 = xor <8 x i64> %302, %301
  %304 = lshr <8 x i64> %303, splat (i64 32)
  %305 = and <8 x i64> %303, splat (i64 4294967295)
  %306 = mul nuw <8 x i64> %305, %304
  %307 = shufflevector <8 x i64> %301, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %308 = add <8 x i64> %294, %307
  %309 = add <8 x i64> %308, %306
  %310 = or disjoint i64 %295, 1
  %311 = shl i64 %310, 6
  %312 = getelementptr inbounds nuw i8, ptr %292, i64 %311
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %313, i32 0, i32 3, i32 1), !noalias !1015
  %314 = shl i64 %310, 3
  %315 = getelementptr inbounds nuw i8, ptr %4, i64 %314
  %316 = load <8 x i64>, ptr %312, align 1, !alias.scope !1012, !noalias !1017
  %317 = load <8 x i64>, ptr %315, align 8, !alias.scope !1015, !noalias !1021
  %318 = xor <8 x i64> %317, %316
  %319 = lshr <8 x i64> %318, splat (i64 32)
  %320 = and <8 x i64> %318, splat (i64 4294967295)
  %321 = mul nuw <8 x i64> %320, %319
  %322 = shufflevector <8 x i64> %316, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %323 = add <8 x i64> %309, %322
  %324 = add <8 x i64> %323, %321
  %325 = add nuw nsw i64 %295, 2
  %326 = icmp eq i64 %325, 16
  br i1 %326, label %327, label %293, !llvm.loop !562

327:                                              ; preds = %293
  %328 = lshr <8 x i64> %324, splat (i64 47)
  %329 = bitcast <8 x i64> %324 to <16 x i32>
  %330 = bitcast <8 x i64> %328 to <16 x i32>
  %331 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %264, <16 x i32> %329, <16 x i32> %330, i32 150)
  %332 = bitcast <16 x i32> %331 to <8 x i64>
  %333 = lshr <8 x i64> %332, splat (i64 32)
  %334 = and <8 x i64> %332, splat (i64 4294967295)
  %335 = mul nuw <8 x i64> %334, splat (i64 2654435761)
  %336 = mul <8 x i64> %333, splat (i64 -7046029290881679360)
  %337 = add <8 x i64> %335, %336
  %338 = add nuw nsw i64 %289, 1
  %339 = icmp eq i64 %338, %287
  br i1 %339, label %340, label %288, !llvm.loop !20

340:                                              ; preds = %327, %247
  %341 = phi <8 x i64> [ %260, %247 ], [ %337, %327 ]
  %342 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %342)
  %343 = and i64 %261, -1024
  %344 = lshr i64 %261, 6
  %345 = and i64 %344, 15
  %346 = getelementptr inbounds nuw i8, ptr %0, i64 %343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  switch i64 %345, label %347 [
    i64 0, label %406
    i64 1, label %385
  ]

347:                                              ; preds = %340
  %348 = and i64 %344, 14
  br label %349

349:                                              ; preds = %349, %347
  %350 = phi <8 x i64> [ %341, %347 ], [ %381, %349 ]
  %351 = phi i64 [ 0, %347 ], [ %382, %349 ]
  %352 = phi i64 [ 0, %347 ], [ %383, %349 ]
  %353 = shl i64 %351, 6
  %354 = getelementptr inbounds nuw i8, ptr %346, i64 %353
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %355, i32 0, i32 3, i32 1), !noalias !1025
  %356 = shl i64 %351, 3
  %357 = getelementptr inbounds nuw i8, ptr %4, i64 %356
  %358 = load <8 x i64>, ptr %354, align 1, !alias.scope !1022, !noalias !1027
  %359 = load <8 x i64>, ptr %357, align 16, !alias.scope !1025, !noalias !1031
  %360 = xor <8 x i64> %359, %358
  %361 = lshr <8 x i64> %360, splat (i64 32)
  %362 = and <8 x i64> %360, splat (i64 4294967295)
  %363 = mul nuw <8 x i64> %362, %361
  %364 = shufflevector <8 x i64> %358, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %365 = add <8 x i64> %350, %364
  %366 = add <8 x i64> %365, %363
  %367 = or disjoint i64 %351, 1
  %368 = shl i64 %367, 6
  %369 = getelementptr inbounds nuw i8, ptr %346, i64 %368
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %370, i32 0, i32 3, i32 1), !noalias !1025
  %371 = shl i64 %367, 3
  %372 = getelementptr inbounds nuw i8, ptr %4, i64 %371
  %373 = load <8 x i64>, ptr %369, align 1, !alias.scope !1022, !noalias !1027
  %374 = load <8 x i64>, ptr %372, align 8, !alias.scope !1025, !noalias !1031
  %375 = xor <8 x i64> %374, %373
  %376 = lshr <8 x i64> %375, splat (i64 32)
  %377 = and <8 x i64> %375, splat (i64 4294967295)
  %378 = mul nuw <8 x i64> %377, %376
  %379 = shufflevector <8 x i64> %373, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %380 = add <8 x i64> %366, %379
  %381 = add <8 x i64> %380, %378
  %382 = add nuw nsw i64 %351, 2
  %383 = add i64 %352, 2
  %384 = icmp eq i64 %383, %348
  br i1 %384, label %385, label %349, !llvm.loop !562

385:                                              ; preds = %349, %340
  %386 = phi <8 x i64> [ poison, %340 ], [ %381, %349 ]
  %387 = phi <8 x i64> [ %341, %340 ], [ %381, %349 ]
  %388 = phi i64 [ 0, %340 ], [ %382, %349 ]
  %389 = and i64 %261, 64
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %406, label %391

391:                                              ; preds = %385
  %392 = shl i64 %388, 6
  %393 = getelementptr inbounds nuw i8, ptr %346, i64 %392
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %394, i32 0, i32 3, i32 1), !noalias !1025
  %395 = shl i64 %388, 3
  %396 = getelementptr inbounds nuw i8, ptr %4, i64 %395
  %397 = load <8 x i64>, ptr %393, align 1, !alias.scope !1022, !noalias !1027
  %398 = load <8 x i64>, ptr %396, align 8, !alias.scope !1025, !noalias !1031
  %399 = xor <8 x i64> %398, %397
  %400 = lshr <8 x i64> %399, splat (i64 32)
  %401 = and <8 x i64> %399, splat (i64 4294967295)
  %402 = mul nuw <8 x i64> %401, %400
  %403 = shufflevector <8 x i64> %397, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %404 = add <8 x i64> %387, %403
  %405 = add <8 x i64> %404, %402
  br label %406

406:                                              ; preds = %391, %385, %340
  %407 = phi <8 x i64> [ %341, %340 ], [ %386, %385 ], [ %405, %391 ]
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %409 = getelementptr inbounds i8, ptr %408, i64 -64
  %410 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %411 = load <4 x i64>, ptr %409, align 1, !alias.scope !1032, !noalias !1033
  %412 = load <4 x i64>, ptr %410, align 1
  %413 = xor <4 x i64> %412, %411
  %414 = lshr <4 x i64> %413, splat (i64 32)
  %415 = and <4 x i64> %413, splat (i64 4294967295)
  %416 = mul nuw <4 x i64> %415, %414
  %417 = shufflevector <4 x i64> %411, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %418 = shufflevector <8 x i64> %407, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %419 = add <4 x i64> %418, %417
  %420 = add <4 x i64> %419, %416
  %421 = getelementptr inbounds i8, ptr %408, i64 -32
  %422 = load <4 x i64>, ptr %421, align 1, !alias.scope !1032, !noalias !1033
  %423 = xor <4 x i64> %422, %267
  %424 = lshr <4 x i64> %423, splat (i64 32)
  %425 = and <4 x i64> %423, splat (i64 4294967295)
  %426 = mul nuw <4 x i64> %425, %424
  %427 = shufflevector <4 x i64> %422, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %428 = shufflevector <8 x i64> %407, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %429 = add <4 x i64> %428, %427
  %430 = add <4 x i64> %429, %426
  %431 = mul i64 %1, -7046029288634856825
  %432 = extractelement <4 x i64> %420, i64 0
  %433 = xor i64 %432, %270
  %434 = extractelement <4 x i64> %420, i64 1
  %435 = xor i64 %434, %272
  %436 = zext i64 %433 to i128
  %437 = zext i64 %435 to i128
  %438 = mul nuw i128 %437, %436
  %439 = lshr i128 %438, 64
  %440 = xor i128 %439, %438
  %441 = trunc i128 %440 to i64
  %442 = add i64 %431, %441
  %443 = extractelement <4 x i64> %420, i64 2
  %444 = xor i64 %443, %274
  %445 = extractelement <4 x i64> %420, i64 3
  %446 = xor i64 %445, %276
  %447 = zext i64 %444 to i128
  %448 = zext i64 %446 to i128
  %449 = mul nuw i128 %448, %447
  %450 = lshr i128 %449, 64
  %451 = xor i128 %450, %449
  %452 = trunc i128 %451 to i64
  %453 = add i64 %442, %452
  %454 = extractelement <4 x i64> %430, i64 0
  %455 = xor i64 %454, %278
  %456 = extractelement <4 x i64> %430, i64 1
  %457 = xor i64 %456, %280
  %458 = zext i64 %455 to i128
  %459 = zext i64 %457 to i128
  %460 = mul nuw i128 %459, %458
  %461 = lshr i128 %460, 64
  %462 = xor i128 %461, %460
  %463 = trunc i128 %462 to i64
  %464 = add i64 %453, %463
  %465 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %466 = extractelement <4 x i64> %430, i64 2
  %467 = load i64, ptr %465, align 1, !alias.scope !1034, !noalias !1037
  %468 = xor i64 %467, %466
  %469 = extractelement <4 x i64> %430, i64 3
  %470 = xor i64 %469, %283
  %471 = zext i64 %468 to i128
  %472 = zext i64 %470 to i128
  %473 = mul nuw i128 %472, %471
  %474 = lshr i128 %473, 64
  %475 = xor i128 %474, %473
  %476 = trunc i128 %475 to i64
  %477 = add i64 %464, %476
  %478 = lshr i64 %477, 37
  %479 = xor i64 %478, %477
  %480 = mul i64 %479, 1609587791953885689
  %481 = lshr i64 %480, 32
  %482 = xor i64 %481, %480
  %483 = mul i64 %1, -4417276706812531889
  %484 = xor i64 %483, -1
  %485 = xor i64 %432, %285
  %486 = bitcast <4 x i64> %412 to i256
  %487 = lshr i256 %486, 32
  %488 = trunc i256 %487 to i64
  %489 = xor i64 %434, %488
  %490 = zext i64 %485 to i128
  %491 = zext i64 %489 to i128
  %492 = mul nuw i128 %491, %490
  %493 = lshr i128 %492, 64
  %494 = xor i128 %493, %492
  %495 = trunc i128 %494 to i64
  %496 = add i64 %495, %484
  %497 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %498 = load i64, ptr %497, align 1, !alias.scope !1039, !noalias !1042
  %499 = xor i64 %498, %443
  %500 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %501 = load i64, ptr %500, align 1, !alias.scope !1039, !noalias !1042
  %502 = xor i64 %501, %445
  %503 = zext i64 %499 to i128
  %504 = zext i64 %502 to i128
  %505 = mul nuw i128 %504, %503
  %506 = lshr i128 %505, 64
  %507 = xor i128 %506, %505
  %508 = trunc i128 %507 to i64
  %509 = add i64 %496, %508
  %510 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %511 = load i64, ptr %510, align 1, !alias.scope !1039, !noalias !1042
  %512 = xor i64 %511, %454
  %513 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %514 = load i64, ptr %513, align 1, !alias.scope !1039, !noalias !1042
  %515 = xor i64 %514, %456
  %516 = zext i64 %512 to i128
  %517 = zext i64 %515 to i128
  %518 = mul nuw i128 %517, %516
  %519 = lshr i128 %518, 64
  %520 = xor i128 %519, %518
  %521 = trunc i128 %520 to i64
  %522 = add i64 %509, %521
  %523 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %524 = load i64, ptr %523, align 1, !alias.scope !1039, !noalias !1042
  %525 = xor i64 %524, %466
  %526 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %527 = load i64, ptr %526, align 1, !alias.scope !1039, !noalias !1042
  %528 = xor i64 %527, %469
  %529 = zext i64 %525 to i128
  %530 = zext i64 %528 to i128
  %531 = mul nuw i128 %530, %529
  %532 = lshr i128 %531, 64
  %533 = xor i128 %532, %531
  %534 = trunc i128 %533 to i64
  %535 = add i64 %522, %534
  %536 = lshr i64 %535, 37
  %537 = xor i64 %536, %535
  %538 = mul i64 %537, 1609587791953885689
  %539 = lshr i64 %538, 32
  %540 = xor i64 %539, %538
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20, !noalias !973
  br label %541

541:                                              ; preds = %131, %406
  %542 = phi i64 [ %203, %131 ], [ %482, %406 ]
  %543 = phi i64 [ %246, %131 ], [ %540, %406 ]
  %544 = insertvalue { i64, i64 } poison, i64 %542, 0
  %545 = insertvalue { i64, i64 } %544, i64 %543, 1
  ret { i64, i64 } %545
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal { i64, i64 } @XXHL128_secret_avx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) #8 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %5 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64, !noalias !1049
  %6 = add i64 %3, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %1, -1
  %10 = udiv i64 %9, %8
  %11 = urem i64 %9, %8
  %12 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %12)
  %13 = icmp ugt i64 %8, %9
  br i1 %13, label %96, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %16 = getelementptr inbounds i8, ptr %15, i64 -64
  %17 = load <16 x i32>, ptr %16, align 1
  %18 = icmp eq i64 %7, 1
  %19 = and i64 %7, 2305843009213693950
  %20 = and i64 %3, 8
  %21 = icmp eq i64 %20, 0
  br label %22

22:                                               ; preds = %14, %82
  %23 = phi i64 [ 0, %14 ], [ %94, %82 ]
  %24 = phi <8 x i64> [ %5, %14 ], [ %93, %82 ]
  %25 = mul i64 %23, %8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  br i1 %18, label %63, label %27

27:                                               ; preds = %22, %27
  %28 = phi <8 x i64> [ %59, %27 ], [ %24, %22 ]
  %29 = phi i64 [ %60, %27 ], [ 0, %22 ]
  %30 = phi i64 [ %61, %27 ], [ 0, %22 ]
  %31 = shl i64 %29, 6
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %33, i32 0, i32 3, i32 1), !noalias !1053
  %34 = shl i64 %29, 3
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load <8 x i64>, ptr %32, align 1, !alias.scope !1050, !noalias !1055
  %37 = load <8 x i64>, ptr %35, align 1, !alias.scope !1053, !noalias !1059
  %38 = xor <8 x i64> %37, %36
  %39 = lshr <8 x i64> %38, splat (i64 32)
  %40 = and <8 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <8 x i64> %40, %39
  %42 = shufflevector <8 x i64> %36, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %43 = add <8 x i64> %28, %42
  %44 = add <8 x i64> %43, %41
  %45 = or disjoint i64 %29, 1
  %46 = shl i64 %45, 6
  %47 = getelementptr inbounds nuw i8, ptr %26, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %48, i32 0, i32 3, i32 1), !noalias !1053
  %49 = shl i64 %45, 3
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load <8 x i64>, ptr %47, align 1, !alias.scope !1050, !noalias !1055
  %52 = load <8 x i64>, ptr %50, align 1, !alias.scope !1053, !noalias !1059
  %53 = xor <8 x i64> %52, %51
  %54 = lshr <8 x i64> %53, splat (i64 32)
  %55 = and <8 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, %54
  %57 = shufflevector <8 x i64> %51, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %58 = add <8 x i64> %44, %57
  %59 = add <8 x i64> %58, %56
  %60 = add nuw nsw i64 %29, 2
  %61 = add nuw nsw i64 %30, 2
  %62 = icmp eq i64 %61, %19
  br i1 %62, label %63, label %27, !llvm.loop !562

63:                                               ; preds = %27, %22
  %64 = phi <8 x i64> [ poison, %22 ], [ %59, %27 ]
  %65 = phi <8 x i64> [ %24, %22 ], [ %59, %27 ]
  %66 = phi i64 [ 0, %22 ], [ %60, %27 ]
  br i1 %21, label %82, label %67

67:                                               ; preds = %63
  %68 = shl i64 %66, 6
  %69 = getelementptr inbounds nuw i8, ptr %26, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %70, i32 0, i32 3, i32 1), !noalias !1053
  %71 = shl i64 %66, 3
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load <8 x i64>, ptr %69, align 1, !alias.scope !1050, !noalias !1055
  %74 = load <8 x i64>, ptr %72, align 1, !alias.scope !1053, !noalias !1059
  %75 = xor <8 x i64> %74, %73
  %76 = lshr <8 x i64> %75, splat (i64 32)
  %77 = and <8 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <8 x i64> %77, %76
  %79 = shufflevector <8 x i64> %73, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %80 = add <8 x i64> %65, %79
  %81 = add <8 x i64> %80, %78
  br label %82

82:                                               ; preds = %63, %67
  %83 = phi <8 x i64> [ %64, %63 ], [ %81, %67 ]
  %84 = lshr <8 x i64> %83, splat (i64 47)
  %85 = bitcast <8 x i64> %83 to <16 x i32>
  %86 = bitcast <8 x i64> %84 to <16 x i32>
  %87 = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %17, <16 x i32> %85, <16 x i32> %86, i32 150)
  %88 = bitcast <16 x i32> %87 to <8 x i64>
  %89 = lshr <8 x i64> %88, splat (i64 32)
  %90 = and <8 x i64> %88, splat (i64 4294967295)
  %91 = mul nuw <8 x i64> %90, splat (i64 2654435761)
  %92 = mul <8 x i64> %89, splat (i64 -7046029290881679360)
  %93 = add <8 x i64> %91, %92
  %94 = add nuw i64 %23, 1
  %95 = icmp ult i64 %94, %10
  br i1 %95, label %22, label %96, !llvm.loop !20

96:                                               ; preds = %82, %4
  %97 = phi <8 x i64> [ %5, %4 ], [ %93, %82 ]
  %98 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %98)
  %99 = mul i64 %10, %8
  %100 = lshr i64 %11, 6
  %101 = lshr i64 %3, 3
  %102 = icmp samesign ule i64 %100, %101
  tail call void @llvm.assume(i1 %102)
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 %99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %104 = icmp ult i64 %11, 64
  br i1 %104, label %166, label %105

105:                                              ; preds = %96
  %106 = icmp eq i64 %100, 1
  br i1 %106, label %145, label %107

107:                                              ; preds = %105
  %108 = and i64 %100, 288230376151711742
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi <8 x i64> [ %97, %107 ], [ %141, %109 ]
  %111 = phi i64 [ 0, %107 ], [ %142, %109 ]
  %112 = phi i64 [ 0, %107 ], [ %143, %109 ]
  %113 = shl i64 %111, 6
  %114 = getelementptr inbounds nuw i8, ptr %103, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %115, i32 0, i32 3, i32 1), !noalias !1063
  %116 = shl i64 %111, 3
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 %116
  %118 = load <8 x i64>, ptr %114, align 1, !alias.scope !1060, !noalias !1065
  %119 = load <8 x i64>, ptr %117, align 1, !alias.scope !1063, !noalias !1069
  %120 = xor <8 x i64> %119, %118
  %121 = lshr <8 x i64> %120, splat (i64 32)
  %122 = and <8 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <8 x i64> %122, %121
  %124 = shufflevector <8 x i64> %118, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %125 = add <8 x i64> %110, %124
  %126 = add <8 x i64> %125, %123
  %127 = or disjoint i64 %111, 1
  %128 = shl i64 %127, 6
  %129 = getelementptr inbounds nuw i8, ptr %103, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %130, i32 0, i32 3, i32 1), !noalias !1063
  %131 = shl i64 %127, 3
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 %131
  %133 = load <8 x i64>, ptr %129, align 1, !alias.scope !1060, !noalias !1065
  %134 = load <8 x i64>, ptr %132, align 1, !alias.scope !1063, !noalias !1069
  %135 = xor <8 x i64> %134, %133
  %136 = lshr <8 x i64> %135, splat (i64 32)
  %137 = and <8 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <8 x i64> %137, %136
  %139 = shufflevector <8 x i64> %133, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %140 = add <8 x i64> %126, %139
  %141 = add <8 x i64> %140, %138
  %142 = add nuw i64 %111, 2
  %143 = add i64 %112, 2
  %144 = icmp eq i64 %143, %108
  br i1 %144, label %145, label %109, !llvm.loop !562

145:                                              ; preds = %109, %105
  %146 = phi <8 x i64> [ poison, %105 ], [ %141, %109 ]
  %147 = phi <8 x i64> [ %97, %105 ], [ %141, %109 ]
  %148 = phi i64 [ 0, %105 ], [ %142, %109 ]
  %149 = and i64 %11, 64
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %145
  %152 = shl i64 %148, 6
  %153 = getelementptr inbounds nuw i8, ptr %103, i64 %152
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %154, i32 0, i32 3, i32 1), !noalias !1063
  %155 = shl i64 %148, 3
  %156 = getelementptr inbounds nuw i8, ptr %2, i64 %155
  %157 = load <8 x i64>, ptr %153, align 1, !alias.scope !1060, !noalias !1065
  %158 = load <8 x i64>, ptr %156, align 1, !alias.scope !1063, !noalias !1069
  %159 = xor <8 x i64> %158, %157
  %160 = lshr <8 x i64> %159, splat (i64 32)
  %161 = and <8 x i64> %159, splat (i64 4294967295)
  %162 = mul nuw <8 x i64> %161, %160
  %163 = shufflevector <8 x i64> %157, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %164 = add <8 x i64> %147, %163
  %165 = add <8 x i64> %164, %162
  br label %166

166:                                              ; preds = %151, %145, %96
  %167 = phi <8 x i64> [ %97, %96 ], [ %146, %145 ], [ %165, %151 ]
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %169 = getelementptr inbounds i8, ptr %168, i64 -64
  %170 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %171 = getelementptr inbounds i8, ptr %170, i64 -71
  %172 = load <4 x i64>, ptr %169, align 1, !alias.scope !1044, !noalias !1047
  %173 = load <4 x i64>, ptr %171, align 1, !alias.scope !1047, !noalias !1044
  %174 = xor <4 x i64> %173, %172
  %175 = lshr <4 x i64> %174, splat (i64 32)
  %176 = and <4 x i64> %174, splat (i64 4294967295)
  %177 = mul nuw <4 x i64> %176, %175
  %178 = shufflevector <4 x i64> %172, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %179 = shufflevector <8 x i64> %167, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %180 = add <4 x i64> %179, %178
  %181 = add <4 x i64> %180, %177
  %182 = getelementptr inbounds i8, ptr %168, i64 -32
  %183 = load <4 x i64>, ptr %182, align 1, !alias.scope !1044, !noalias !1047
  %184 = getelementptr inbounds i8, ptr %170, i64 -39
  %185 = load <4 x i64>, ptr %184, align 1, !alias.scope !1047, !noalias !1044
  %186 = xor <4 x i64> %185, %183
  %187 = lshr <4 x i64> %186, splat (i64 32)
  %188 = and <4 x i64> %186, splat (i64 4294967295)
  %189 = mul nuw <4 x i64> %188, %187
  %190 = shufflevector <4 x i64> %183, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %191 = shufflevector <8 x i64> %167, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %192 = add <4 x i64> %191, %190
  %193 = add <4 x i64> %192, %189
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %195 = mul i64 %1, -7046029288634856825
  %196 = extractelement <4 x i64> %181, i64 0
  %197 = load i64, ptr %194, align 1, !alias.scope !1070, !noalias !1073
  %198 = xor i64 %197, %196
  %199 = extractelement <4 x i64> %181, i64 1
  %200 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %201 = load i64, ptr %200, align 1, !alias.scope !1070, !noalias !1073
  %202 = xor i64 %201, %199
  %203 = zext i64 %198 to i128
  %204 = zext i64 %202 to i128
  %205 = mul nuw i128 %204, %203
  %206 = lshr i128 %205, 64
  %207 = xor i128 %206, %205
  %208 = trunc i128 %207 to i64
  %209 = add i64 %195, %208
  %210 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %211 = extractelement <4 x i64> %181, i64 2
  %212 = load i64, ptr %210, align 1, !alias.scope !1070, !noalias !1073
  %213 = xor i64 %212, %211
  %214 = extractelement <4 x i64> %181, i64 3
  %215 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %216 = load i64, ptr %215, align 1, !alias.scope !1070, !noalias !1073
  %217 = xor i64 %216, %214
  %218 = zext i64 %213 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %209, %223
  %225 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %226 = extractelement <4 x i64> %193, i64 0
  %227 = load i64, ptr %225, align 1, !alias.scope !1070, !noalias !1073
  %228 = xor i64 %227, %226
  %229 = extractelement <4 x i64> %193, i64 1
  %230 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %231 = load i64, ptr %230, align 1, !alias.scope !1070, !noalias !1073
  %232 = xor i64 %231, %229
  %233 = zext i64 %228 to i128
  %234 = zext i64 %232 to i128
  %235 = mul nuw i128 %234, %233
  %236 = lshr i128 %235, 64
  %237 = xor i128 %236, %235
  %238 = trunc i128 %237 to i64
  %239 = add i64 %224, %238
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %241 = extractelement <4 x i64> %193, i64 2
  %242 = load i64, ptr %240, align 1, !alias.scope !1070, !noalias !1073
  %243 = xor i64 %242, %241
  %244 = extractelement <4 x i64> %193, i64 3
  %245 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %246 = load i64, ptr %245, align 1, !alias.scope !1070, !noalias !1073
  %247 = xor i64 %246, %244
  %248 = zext i64 %243 to i128
  %249 = zext i64 %247 to i128
  %250 = mul nuw i128 %249, %248
  %251 = lshr i128 %250, 64
  %252 = xor i128 %251, %250
  %253 = trunc i128 %252 to i64
  %254 = add i64 %239, %253
  %255 = lshr i64 %254, 37
  %256 = xor i64 %255, %254
  %257 = mul i64 %256, 1609587791953885689
  %258 = lshr i64 %257, 32
  %259 = xor i64 %258, %257
  %260 = getelementptr inbounds i8, ptr %170, i64 -75
  %261 = mul i64 %1, -4417276706812531889
  %262 = xor i64 %261, -1
  %263 = load i64, ptr %260, align 1, !alias.scope !1075, !noalias !1078
  %264 = xor i64 %263, %196
  %265 = getelementptr inbounds i8, ptr %170, i64 -67
  %266 = load i64, ptr %265, align 1, !alias.scope !1075, !noalias !1078
  %267 = xor i64 %266, %199
  %268 = zext i64 %264 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %273, %262
  %275 = getelementptr inbounds i8, ptr %170, i64 -59
  %276 = load i64, ptr %275, align 1, !alias.scope !1075, !noalias !1078
  %277 = xor i64 %276, %211
  %278 = getelementptr inbounds i8, ptr %170, i64 -51
  %279 = load i64, ptr %278, align 1, !alias.scope !1075, !noalias !1078
  %280 = xor i64 %279, %214
  %281 = zext i64 %277 to i128
  %282 = zext i64 %280 to i128
  %283 = mul nuw i128 %282, %281
  %284 = lshr i128 %283, 64
  %285 = xor i128 %284, %283
  %286 = trunc i128 %285 to i64
  %287 = add i64 %274, %286
  %288 = getelementptr inbounds i8, ptr %170, i64 -43
  %289 = load i64, ptr %288, align 1, !alias.scope !1075, !noalias !1078
  %290 = xor i64 %289, %226
  %291 = getelementptr inbounds i8, ptr %170, i64 -35
  %292 = load i64, ptr %291, align 1, !alias.scope !1075, !noalias !1078
  %293 = xor i64 %292, %229
  %294 = zext i64 %290 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %287, %299
  %301 = getelementptr inbounds i8, ptr %170, i64 -27
  %302 = load i64, ptr %301, align 1, !alias.scope !1075, !noalias !1078
  %303 = xor i64 %302, %241
  %304 = getelementptr inbounds i8, ptr %170, i64 -19
  %305 = load i64, ptr %304, align 1, !alias.scope !1075, !noalias !1078
  %306 = xor i64 %305, %244
  %307 = zext i64 %303 to i128
  %308 = zext i64 %306 to i128
  %309 = mul nuw i128 %308, %307
  %310 = lshr i128 %309, 64
  %311 = xor i128 %310, %309
  %312 = trunc i128 %311 to i64
  %313 = add i64 %300, %312
  %314 = lshr i64 %313, 37
  %315 = xor i64 %314, %313
  %316 = mul i64 %315, 1609587791953885689
  %317 = lshr i64 %316, 32
  %318 = xor i64 %317, %316
  %319 = insertvalue { i64, i64 } poison, i64 %259, 0
  %320 = insertvalue { i64, i64 } %319, i64 %318, 1
  ret { i64, i64 } %320
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #12 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -16
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %161 = load i64, ptr %159, align 1
  %162 = getelementptr inbounds i8, ptr %158, i64 -8
  %163 = load i64, ptr %162, align 1
  %164 = load i64, ptr %160, align 1
  %165 = add i64 %164, %3
  %166 = xor i64 %165, %161
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %168 = load i64, ptr %167, align 1
  %169 = sub i64 %168, %3
  %170 = xor i64 %169, %163
  %171 = zext i64 %166 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = lshr i64 %156, 37
  %178 = xor i64 %177, %156
  %179 = mul i64 %178, 1609587791953885689
  %180 = lshr i64 %179, 32
  %181 = xor i64 %180, %179
  %182 = icmp eq i32 %157, 8
  br i1 %182, label %213, label %183

183:                                              ; preds = %4
  %184 = zext nneg i32 %157 to i64
  br label %185

185:                                              ; preds = %183, %185
  %186 = phi i64 [ 8, %183 ], [ %211, %185 ]
  %187 = phi i64 [ %181, %183 ], [ %189, %185 ]
  %188 = phi i64 [ %176, %183 ], [ %210, %185 ]
  %189 = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %187) #20, !srcloc !1080
  %190 = shl nuw nsw i64 %186, 4
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 %190
  %192 = getelementptr i8, ptr %2, i64 %190
  %193 = getelementptr i8, ptr %192, i64 -125
  %194 = load i64, ptr %191, align 1
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %196 = load i64, ptr %195, align 1
  %197 = load i64, ptr %193, align 1
  %198 = add i64 %197, %3
  %199 = xor i64 %198, %194
  %200 = getelementptr i8, ptr %192, i64 -117
  %201 = load i64, ptr %200, align 1
  %202 = sub i64 %201, %3
  %203 = xor i64 %202, %196
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %188, %209
  %211 = add nuw nsw i64 %186, 1
  %212 = icmp eq i64 %211, %184
  br i1 %212, label %213, label %185, !llvm.loop !1081

213:                                              ; preds = %185, %4
  %214 = phi i64 [ %176, %4 ], [ %210, %185 ]
  %215 = phi i64 [ %181, %4 ], [ %189, %185 ]
  %216 = add i64 %215, %214
  %217 = lshr i64 %216, 37
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587791953885689
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  ret i64 %221
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = load i64, ptr %6, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i64, ptr %25, align 1
  %27 = add i64 %26, %24
  %28 = xor i64 %23, %27
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = add i64 %30, %3
  %32 = xor i64 %31, %24
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %34 = load i64, ptr %33, align 1
  %35 = sub i64 %34, %3
  %36 = xor i64 %35, %26
  %37 = zext i64 %32 to i128
  %38 = zext i64 %36 to i128
  %39 = mul nuw i128 %38, %37
  %40 = lshr i128 %39, 64
  %41 = xor i128 %40, %39
  %42 = trunc i128 %41 to i64
  %43 = add i64 %9, %7
  %44 = xor i64 %43, %42
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %48 = load i64, ptr %45, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 1
  %51 = load i64, ptr %47, align 1
  %52 = add i64 %51, %3
  %53 = xor i64 %52, %48
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %55 = load i64, ptr %54, align 1
  %56 = sub i64 %55, %3
  %57 = xor i64 %56, %50
  %58 = zext i64 %53 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %28, %63
  %65 = load i64, ptr %46, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %67 = load i64, ptr %66, align 1
  %68 = add i64 %67, %65
  %69 = xor i64 %64, %68
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %71 = load i64, ptr %70, align 1
  %72 = add i64 %71, %3
  %73 = xor i64 %72, %65
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %75 = load i64, ptr %74, align 1
  %76 = sub i64 %75, %3
  %77 = xor i64 %76, %67
  %78 = zext i64 %73 to i128
  %79 = zext i64 %77 to i128
  %80 = mul nuw i128 %79, %78
  %81 = lshr i128 %80, 64
  %82 = xor i128 %81, %80
  %83 = trunc i128 %82 to i64
  %84 = add i64 %44, %83
  %85 = add i64 %50, %48
  %86 = xor i64 %84, %85
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %90 = load i64, ptr %87, align 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %92 = load i64, ptr %91, align 1
  %93 = load i64, ptr %89, align 1
  %94 = add i64 %93, %3
  %95 = xor i64 %94, %90
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %97 = load i64, ptr %96, align 1
  %98 = sub i64 %97, %3
  %99 = xor i64 %98, %92
  %100 = zext i64 %95 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %69, %105
  %107 = load i64, ptr %88, align 1
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = add i64 %109, %107
  %111 = xor i64 %106, %110
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %113 = load i64, ptr %112, align 1
  %114 = add i64 %113, %3
  %115 = xor i64 %114, %107
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %117 = load i64, ptr %116, align 1
  %118 = sub i64 %117, %3
  %119 = xor i64 %118, %109
  %120 = zext i64 %115 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %86, %125
  %127 = add i64 %92, %90
  %128 = xor i64 %126, %127
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %132 = load i64, ptr %129, align 1
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %134 = load i64, ptr %133, align 1
  %135 = load i64, ptr %131, align 1
  %136 = add i64 %135, %3
  %137 = xor i64 %136, %132
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %139 = load i64, ptr %138, align 1
  %140 = sub i64 %139, %3
  %141 = xor i64 %140, %134
  %142 = zext i64 %137 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %111, %147
  %149 = load i64, ptr %130, align 1
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %151 = load i64, ptr %150, align 1
  %152 = add i64 %151, %149
  %153 = xor i64 %148, %152
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %155 = load i64, ptr %154, align 1
  %156 = add i64 %155, %3
  %157 = xor i64 %156, %149
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %159 = load i64, ptr %158, align 1
  %160 = sub i64 %159, %3
  %161 = xor i64 %160, %151
  %162 = zext i64 %157 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %128, %167
  %169 = add i64 %134, %132
  %170 = xor i64 %168, %169
  %171 = lshr i64 %153, 37
  %172 = xor i64 %171, %153
  %173 = mul i64 %172, 1609587791953885689
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  %176 = lshr i64 %170, 37
  %177 = xor i64 %176, %170
  %178 = mul i64 %177, 1609587791953885689
  %179 = lshr i64 %178, 32
  %180 = xor i64 %179, %178
  %181 = icmp samesign ult i64 %1, 160
  br i1 %181, label %313, label %182

182:                                              ; preds = %4
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %186 = load i64, ptr %183, align 1
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %188 = load i64, ptr %187, align 1
  %189 = load i64, ptr %185, align 1
  %190 = add i64 %189, %3
  %191 = xor i64 %190, %186
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %193 = load i64, ptr %192, align 1
  %194 = sub i64 %193, %3
  %195 = xor i64 %194, %188
  %196 = zext i64 %191 to i128
  %197 = zext i64 %195 to i128
  %198 = mul nuw i128 %197, %196
  %199 = lshr i128 %198, 64
  %200 = xor i128 %199, %198
  %201 = trunc i128 %200 to i64
  %202 = add i64 %175, %201
  %203 = load i64, ptr %184, align 1
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %205 = load i64, ptr %204, align 1
  %206 = add i64 %205, %203
  %207 = xor i64 %202, %206
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %209 = load i64, ptr %208, align 1
  %210 = add i64 %209, %3
  %211 = xor i64 %210, %203
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %213 = load i64, ptr %212, align 1
  %214 = sub i64 %213, %3
  %215 = xor i64 %214, %205
  %216 = zext i64 %211 to i128
  %217 = zext i64 %215 to i128
  %218 = mul nuw i128 %217, %216
  %219 = lshr i128 %218, 64
  %220 = xor i128 %219, %218
  %221 = trunc i128 %220 to i64
  %222 = add i64 %180, %221
  %223 = add i64 %188, %186
  %224 = xor i64 %222, %223
  %225 = icmp samesign ult i64 %1, 192
  br i1 %225, label %313, label %226, !llvm.loop !1082

226:                                              ; preds = %182
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %230 = load i64, ptr %227, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = add i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %237 = load i64, ptr %236, align 1
  %238 = sub i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %207, %245
  %247 = load i64, ptr %228, align 1
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %249 = load i64, ptr %248, align 1
  %250 = add i64 %249, %247
  %251 = xor i64 %246, %250
  %252 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %253 = load i64, ptr %252, align 1
  %254 = add i64 %253, %3
  %255 = xor i64 %254, %247
  %256 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %257 = load i64, ptr %256, align 1
  %258 = sub i64 %257, %3
  %259 = xor i64 %258, %249
  %260 = zext i64 %255 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %224, %265
  %267 = add i64 %232, %230
  %268 = xor i64 %266, %267
  %269 = icmp samesign ult i64 %1, 224
  br i1 %269, label %313, label %270, !llvm.loop !1082

270:                                              ; preds = %226
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %273 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %274 = load i64, ptr %271, align 1
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %276 = load i64, ptr %275, align 1
  %277 = load i64, ptr %273, align 1
  %278 = add i64 %277, %3
  %279 = xor i64 %278, %274
  %280 = getelementptr inbounds nuw i8, ptr %2, i64 75
  %281 = load i64, ptr %280, align 1
  %282 = sub i64 %281, %3
  %283 = xor i64 %282, %276
  %284 = zext i64 %279 to i128
  %285 = zext i64 %283 to i128
  %286 = mul nuw i128 %285, %284
  %287 = lshr i128 %286, 64
  %288 = xor i128 %287, %286
  %289 = trunc i128 %288 to i64
  %290 = add i64 %251, %289
  %291 = load i64, ptr %272, align 1
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %293 = load i64, ptr %292, align 1
  %294 = add i64 %293, %291
  %295 = xor i64 %290, %294
  %296 = getelementptr inbounds nuw i8, ptr %2, i64 83
  %297 = load i64, ptr %296, align 1
  %298 = add i64 %297, %3
  %299 = xor i64 %298, %291
  %300 = getelementptr inbounds nuw i8, ptr %2, i64 91
  %301 = load i64, ptr %300, align 1
  %302 = sub i64 %301, %3
  %303 = xor i64 %302, %293
  %304 = zext i64 %299 to i128
  %305 = zext i64 %303 to i128
  %306 = mul nuw i128 %305, %304
  %307 = lshr i128 %306, 64
  %308 = xor i128 %307, %306
  %309 = trunc i128 %308 to i64
  %310 = add i64 %268, %309
  %311 = add i64 %276, %274
  %312 = xor i64 %310, %311
  br label %313

313:                                              ; preds = %182, %226, %270, %4
  %314 = phi i64 [ %175, %4 ], [ %207, %182 ], [ %251, %226 ], [ %295, %270 ]
  %315 = phi i64 [ %180, %4 ], [ %224, %182 ], [ %268, %226 ], [ %312, %270 ]
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %317 = getelementptr inbounds i8, ptr %316, i64 -16
  %318 = getelementptr inbounds i8, ptr %316, i64 -32
  %319 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %320 = load i64, ptr %317, align 1
  %321 = getelementptr inbounds i8, ptr %316, i64 -8
  %322 = load i64, ptr %321, align 1
  %323 = load i64, ptr %319, align 1
  %324 = sub i64 %323, %3
  %325 = xor i64 %324, %320
  %326 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %327 = load i64, ptr %326, align 1
  %328 = add i64 %327, %3
  %329 = xor i64 %328, %322
  %330 = zext i64 %325 to i128
  %331 = zext i64 %329 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %314, %335
  %337 = load i64, ptr %318, align 1
  %338 = getelementptr inbounds i8, ptr %316, i64 -24
  %339 = load i64, ptr %338, align 1
  %340 = add i64 %339, %337
  %341 = xor i64 %336, %340
  %342 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %343 = load i64, ptr %342, align 1
  %344 = sub i64 %343, %3
  %345 = xor i64 %344, %337
  %346 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %347 = load i64, ptr %346, align 1
  %348 = add i64 %347, %3
  %349 = xor i64 %348, %339
  %350 = zext i64 %345 to i128
  %351 = zext i64 %349 to i128
  %352 = mul nuw i128 %351, %350
  %353 = lshr i128 %352, 64
  %354 = xor i128 %353, %352
  %355 = trunc i128 %354 to i64
  %356 = add i64 %315, %355
  %357 = add i64 %322, %320
  %358 = xor i64 %356, %357
  %359 = add i64 %358, %341
  %360 = mul i64 %341, -7046029288634856825
  %361 = mul i64 %358, -8796714831421723037
  %362 = sub i64 %1, %3
  %363 = mul i64 %362, -4417276706812531889
  %364 = add i64 %360, %363
  %365 = add i64 %364, %361
  %366 = lshr i64 %359, 37
  %367 = xor i64 %366, %359
  %368 = mul i64 %367, 1609587791953885689
  %369 = lshr i64 %368, 32
  %370 = xor i64 %369, %368
  %371 = lshr i64 %365, 37
  %372 = xor i64 %371, %365
  %373 = mul i64 %372, 1609587791953885689
  %374 = lshr i64 %373, 32
  %375 = xor i64 %374, %373
  %376 = sub i64 0, %375
  %377 = insertvalue { i64, i64 } poison, i64 %370, 0
  %378 = insertvalue { i64, i64 } %377, i64 %376, 1
  ret { i64, i64 } %378
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { mustprogress nofree noinline nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 9435, i64 9450, i64 2152265759}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", i32 2000, i32 2002}
!8 = !{i64 10578, i64 10594, i64 10610, i64 10692, i64 10760, i64 10838, i64 10877}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH3_accumulate_sse2: argument 1"}
!12 = distinct !{!12, !"XXH3_accumulate_sse2"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_accumulate_sse2: argument 2"}
!15 = !{!16, !14}
!16 = distinct !{!16, !12, !"XXH3_accumulate_sse2: argument 0"}
!17 = !{!16, !11}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_accumulate_sse2: argument 1"}
!23 = distinct !{!23, !"XXH3_accumulate_sse2"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"XXH3_accumulate_sse2: argument 2"}
!26 = !{!27, !25}
!27 = distinct !{!27, !23, !"XXH3_accumulate_sse2: argument 0"}
!28 = !{!27, !22}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_accumulate_sse2: argument 1"}
!31 = distinct !{!31, !"XXH3_accumulate_sse2"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_accumulate_sse2: argument 2"}
!34 = !{!35, !33}
!35 = distinct !{!35, !31, !"XXH3_accumulate_sse2: argument 0"}
!36 = !{!35, !30}
!37 = !{!38}
!38 = distinct !{!38, !39, !"XXH3_accumulate_sse2: argument 1"}
!39 = distinct !{!39, !"XXH3_accumulate_sse2"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"XXH3_accumulate_sse2: argument 2"}
!42 = !{!43, !41}
!43 = distinct !{!43, !39, !"XXH3_accumulate_sse2: argument 0"}
!44 = !{!43, !38}
!45 = !{i64 2152224343}
!46 = !{!47}
!47 = distinct !{!47, !48, !"XXH3_scrambleAcc_sse2: argument 1"}
!48 = distinct !{!48, !"XXH3_scrambleAcc_sse2"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"XXH3_scrambleAcc_sse2: argument 0"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"XXH3_accumulate_sse2: argument 1"}
!53 = distinct !{!53, !"XXH3_accumulate_sse2"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"XXH3_accumulate_sse2: argument 2"}
!56 = !{!57, !55}
!57 = distinct !{!57, !53, !"XXH3_accumulate_sse2: argument 0"}
!58 = !{!57, !52}
!59 = !{!60}
!60 = distinct !{!60, !61, !"XXH3_accumulate_sse2: argument 1"}
!61 = distinct !{!61, !"XXH3_accumulate_sse2"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"XXH3_accumulate_sse2: argument 2"}
!64 = !{!65, !63}
!65 = distinct !{!65, !61, !"XXH3_accumulate_sse2: argument 0"}
!66 = !{!65, !60}
!67 = !{!68}
!68 = distinct !{!68, !69, !"XXH3_mergeAccs: argument 1"}
!69 = distinct !{!69, !"XXH3_mergeAccs"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"XXH3_mergeAccs: argument 0"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"XXH3_scrambleAcc_sse2: argument 1"}
!74 = distinct !{!74, !"XXH3_scrambleAcc_sse2"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"XXH3_scrambleAcc_sse2: argument 0"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"XXH3_accumulate_sse2: argument 1"}
!79 = distinct !{!79, !"XXH3_accumulate_sse2"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"XXH3_accumulate_sse2: argument 2"}
!82 = !{!83, !81}
!83 = distinct !{!83, !79, !"XXH3_accumulate_sse2: argument 0"}
!84 = !{!83, !78}
!85 = !{!86}
!86 = distinct !{!86, !87, !"XXH3_accumulate_sse2: argument 1"}
!87 = distinct !{!87, !"XXH3_accumulate_sse2"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"XXH3_accumulate_sse2: argument 2"}
!90 = !{!91, !89}
!91 = distinct !{!91, !87, !"XXH3_accumulate_sse2: argument 0"}
!92 = !{!91, !86}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_mergeAccs: argument 1"}
!95 = distinct !{!95, !"XXH3_mergeAccs"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_mergeAccs: argument 0"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"XXH3_update: argument 0"}
!100 = distinct !{!100, !"XXH3_update"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"XXH3_update: argument 1"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_consumeStripes: argument 1"}
!105 = distinct !{!105, !"XXH3_consumeStripes"}
!106 = !{!107, !108, !109}
!107 = distinct !{!107, !105, !"XXH3_consumeStripes: argument 0"}
!108 = distinct !{!108, !105, !"XXH3_consumeStripes: argument 2"}
!109 = distinct !{!109, !105, !"XXH3_consumeStripes: argument 3"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"XXH3_accumulate_sse2: argument 0"}
!112 = distinct !{!112, !"XXH3_accumulate_sse2"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"XXH3_accumulate_sse2: argument 1"}
!115 = !{!116}
!116 = distinct !{!116, !112, !"XXH3_accumulate_sse2: argument 2"}
!117 = !{!118, !111}
!118 = distinct !{!118, !119, !"XXH3_accumulate_512_sse2: argument 0"}
!119 = distinct !{!119, !"XXH3_accumulate_512_sse2"}
!120 = !{!121, !122, !114, !116, !104}
!121 = distinct !{!121, !119, !"XXH3_accumulate_512_sse2: argument 1"}
!122 = distinct !{!122, !119, !"XXH3_accumulate_512_sse2: argument 2"}
!123 = !{!116, !104}
!124 = !{!111, !116, !104}
!125 = !{!111, !114, !104}
!126 = !{!127}
!127 = distinct !{!127, !128, !"XXH3_scrambleAcc_sse2: argument 0"}
!128 = distinct !{!128, !"XXH3_scrambleAcc_sse2"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"XXH3_scrambleAcc_sse2: argument 1"}
!131 = !{!127, !104}
!132 = !{!130, !104}
!133 = !{!134}
!134 = distinct !{!134, !135, !"XXH3_accumulate_sse2: argument 0"}
!135 = distinct !{!135, !"XXH3_accumulate_sse2"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"XXH3_accumulate_sse2: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !135, !"XXH3_accumulate_sse2: argument 2"}
!140 = !{!139, !104}
!141 = !{!134, !139, !104}
!142 = !{!134, !137, !104}
!143 = !{!144, !134}
!144 = distinct !{!144, !145, !"XXH3_accumulate_512_sse2: argument 0"}
!145 = distinct !{!145, !"XXH3_accumulate_512_sse2"}
!146 = !{!147, !148, !137, !139, !104}
!147 = distinct !{!147, !145, !"XXH3_accumulate_512_sse2: argument 1"}
!148 = distinct !{!148, !145, !"XXH3_accumulate_512_sse2: argument 2"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"XXH3_accumulate_sse2: argument 0"}
!151 = distinct !{!151, !"XXH3_accumulate_sse2"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"XXH3_accumulate_sse2: argument 1"}
!154 = !{!155}
!155 = distinct !{!155, !151, !"XXH3_accumulate_sse2: argument 2"}
!156 = !{!157, !150}
!157 = distinct !{!157, !158, !"XXH3_accumulate_512_sse2: argument 0"}
!158 = distinct !{!158, !"XXH3_accumulate_512_sse2"}
!159 = !{!160, !161, !153, !155, !104}
!160 = distinct !{!160, !158, !"XXH3_accumulate_512_sse2: argument 1"}
!161 = distinct !{!161, !158, !"XXH3_accumulate_512_sse2: argument 2"}
!162 = !{!155, !104}
!163 = !{!150, !155, !104}
!164 = !{!150, !153, !104}
!165 = !{!166}
!166 = distinct !{!166, !167, !"XXH3_accumulate_sse2: argument 0"}
!167 = distinct !{!167, !"XXH3_accumulate_sse2"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"XXH3_accumulate_sse2: argument 1"}
!170 = !{!171}
!171 = distinct !{!171, !167, !"XXH3_accumulate_sse2: argument 2"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"XXH3_scrambleAcc_sse2: argument 0"}
!174 = distinct !{!174, !"XXH3_scrambleAcc_sse2"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"XXH3_scrambleAcc_sse2: argument 1"}
!177 = !{}
!178 = !{!166, !171}
!179 = !{!166, !169}
!180 = !{!181, !166}
!181 = distinct !{!181, !182, !"XXH3_accumulate_512_sse2: argument 0"}
!182 = distinct !{!182, !"XXH3_accumulate_512_sse2"}
!183 = !{!184, !185, !169, !171}
!184 = distinct !{!184, !182, !"XXH3_accumulate_512_sse2: argument 1"}
!185 = distinct !{!185, !182, !"XXH3_accumulate_512_sse2: argument 2"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"XXH3_accumulate_sse2: argument 0"}
!188 = distinct !{!188, !"XXH3_accumulate_sse2"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"XXH3_accumulate_sse2: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !188, !"XXH3_accumulate_sse2: argument 2"}
!193 = !{!187, !192}
!194 = !{!187, !190}
!195 = !{!196, !187}
!196 = distinct !{!196, !197, !"XXH3_accumulate_512_sse2: argument 0"}
!197 = distinct !{!197, !"XXH3_accumulate_512_sse2"}
!198 = !{!199, !200, !190, !192}
!199 = distinct !{!199, !197, !"XXH3_accumulate_512_sse2: argument 1"}
!200 = distinct !{!200, !197, !"XXH3_accumulate_512_sse2: argument 2"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"XXH3_scrambleAcc_sse2: argument 0"}
!203 = distinct !{!203, !"XXH3_scrambleAcc_sse2"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"XXH3_scrambleAcc_sse2: argument 1"}
!206 = distinct !{!206, !19}
!207 = !{!208}
!208 = distinct !{!208, !209, !"XXH3_accumulate_sse2: argument 0"}
!209 = distinct !{!209, !"XXH3_accumulate_sse2"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"XXH3_accumulate_sse2: argument 1"}
!212 = !{!213}
!213 = distinct !{!213, !209, !"XXH3_accumulate_sse2: argument 2"}
!214 = !{!208, !213}
!215 = !{!208, !211}
!216 = !{!217, !208}
!217 = distinct !{!217, !218, !"XXH3_accumulate_512_sse2: argument 0"}
!218 = distinct !{!218, !"XXH3_accumulate_512_sse2"}
!219 = !{!220, !221, !211, !213}
!220 = distinct !{!220, !218, !"XXH3_accumulate_512_sse2: argument 1"}
!221 = distinct !{!221, !218, !"XXH3_accumulate_512_sse2: argument 2"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"XXH3_consumeStripes: argument 1"}
!224 = distinct !{!224, !"XXH3_consumeStripes"}
!225 = !{!226, !227, !228}
!226 = distinct !{!226, !224, !"XXH3_consumeStripes: argument 0"}
!227 = distinct !{!227, !224, !"XXH3_consumeStripes: argument 2"}
!228 = distinct !{!228, !224, !"XXH3_consumeStripes: argument 3"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"XXH3_accumulate_sse2: argument 0"}
!231 = distinct !{!231, !"XXH3_accumulate_sse2"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"XXH3_accumulate_sse2: argument 1"}
!234 = !{!235}
!235 = distinct !{!235, !231, !"XXH3_accumulate_sse2: argument 2"}
!236 = !{!237, !230}
!237 = distinct !{!237, !238, !"XXH3_accumulate_512_sse2: argument 0"}
!238 = distinct !{!238, !"XXH3_accumulate_512_sse2"}
!239 = !{!240, !241, !233, !235, !223}
!240 = distinct !{!240, !238, !"XXH3_accumulate_512_sse2: argument 1"}
!241 = distinct !{!241, !238, !"XXH3_accumulate_512_sse2: argument 2"}
!242 = !{!235, !223}
!243 = !{!230, !235, !223}
!244 = !{!230, !233, !223}
!245 = !{!246}
!246 = distinct !{!246, !247, !"XXH3_scrambleAcc_sse2: argument 0"}
!247 = distinct !{!247, !"XXH3_scrambleAcc_sse2"}
!248 = !{!249}
!249 = distinct !{!249, !247, !"XXH3_scrambleAcc_sse2: argument 1"}
!250 = !{!246, !223}
!251 = !{!249, !223}
!252 = !{!253}
!253 = distinct !{!253, !254, !"XXH3_accumulate_sse2: argument 0"}
!254 = distinct !{!254, !"XXH3_accumulate_sse2"}
!255 = !{!256}
!256 = distinct !{!256, !254, !"XXH3_accumulate_sse2: argument 1"}
!257 = !{!258}
!258 = distinct !{!258, !254, !"XXH3_accumulate_sse2: argument 2"}
!259 = !{!258, !223}
!260 = !{!253, !258, !223}
!261 = !{!253, !256, !223}
!262 = !{!263, !253}
!263 = distinct !{!263, !264, !"XXH3_accumulate_512_sse2: argument 0"}
!264 = distinct !{!264, !"XXH3_accumulate_512_sse2"}
!265 = !{!266, !267, !256, !258, !223}
!266 = distinct !{!266, !264, !"XXH3_accumulate_512_sse2: argument 1"}
!267 = distinct !{!267, !264, !"XXH3_accumulate_512_sse2: argument 2"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"XXH3_accumulate_sse2: argument 0"}
!270 = distinct !{!270, !"XXH3_accumulate_sse2"}
!271 = !{!272}
!272 = distinct !{!272, !270, !"XXH3_accumulate_sse2: argument 1"}
!273 = !{!274}
!274 = distinct !{!274, !270, !"XXH3_accumulate_sse2: argument 2"}
!275 = !{!276, !269}
!276 = distinct !{!276, !277, !"XXH3_accumulate_512_sse2: argument 0"}
!277 = distinct !{!277, !"XXH3_accumulate_512_sse2"}
!278 = !{!279, !280, !272, !274, !223}
!279 = distinct !{!279, !277, !"XXH3_accumulate_512_sse2: argument 1"}
!280 = distinct !{!280, !277, !"XXH3_accumulate_512_sse2: argument 2"}
!281 = !{!274, !223}
!282 = !{!269, !274, !223}
!283 = !{!269, !272, !223}
!284 = distinct !{!284, !19}
!285 = !{!286}
!286 = distinct !{!286, !287, !"XXH3_accumulate_avx2: argument 1"}
!287 = distinct !{!287, !"XXH3_accumulate_avx2"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"XXH3_accumulate_avx2: argument 2"}
!290 = !{!291, !289}
!291 = distinct !{!291, !287, !"XXH3_accumulate_avx2: argument 0"}
!292 = !{!291, !286}
!293 = distinct !{!293, !19}
!294 = !{!295}
!295 = distinct !{!295, !296, !"XXH3_accumulate_avx2: argument 1"}
!296 = distinct !{!296, !"XXH3_accumulate_avx2"}
!297 = !{!298}
!298 = distinct !{!298, !296, !"XXH3_accumulate_avx2: argument 2"}
!299 = !{!300, !298}
!300 = distinct !{!300, !296, !"XXH3_accumulate_avx2: argument 0"}
!301 = !{!300, !295}
!302 = !{!303}
!303 = distinct !{!303, !304, !"XXH3_accumulate_avx2: argument 1"}
!304 = distinct !{!304, !"XXH3_accumulate_avx2"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"XXH3_accumulate_avx2: argument 2"}
!307 = !{!308, !306}
!308 = distinct !{!308, !304, !"XXH3_accumulate_avx2: argument 0"}
!309 = !{!308, !303}
!310 = !{!311}
!311 = distinct !{!311, !312, !"XXH3_accumulate_avx2: argument 1"}
!312 = distinct !{!312, !"XXH3_accumulate_avx2"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"XXH3_accumulate_avx2: argument 2"}
!315 = !{!316, !314}
!316 = distinct !{!316, !312, !"XXH3_accumulate_avx2: argument 0"}
!317 = !{!316, !311}
!318 = !{i64 2152221514}
!319 = !{!320}
!320 = distinct !{!320, !321, !"XXH3_scrambleAcc_avx2: argument 1"}
!321 = distinct !{!321, !"XXH3_scrambleAcc_avx2"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"XXH3_scrambleAcc_avx2: argument 0"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"XXH3_accumulate_avx2: argument 1"}
!326 = distinct !{!326, !"XXH3_accumulate_avx2"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"XXH3_accumulate_avx2: argument 2"}
!329 = !{!330, !328}
!330 = distinct !{!330, !326, !"XXH3_accumulate_avx2: argument 0"}
!331 = !{!330, !325}
!332 = !{!333}
!333 = distinct !{!333, !334, !"XXH3_accumulate_avx2: argument 1"}
!334 = distinct !{!334, !"XXH3_accumulate_avx2"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"XXH3_accumulate_avx2: argument 2"}
!337 = !{!338, !336}
!338 = distinct !{!338, !334, !"XXH3_accumulate_avx2: argument 0"}
!339 = !{!338, !333}
!340 = !{!341}
!341 = distinct !{!341, !342, !"XXH3_mergeAccs: argument 1"}
!342 = distinct !{!342, !"XXH3_mergeAccs"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"XXH3_mergeAccs: argument 0"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"XXH3_scrambleAcc_avx2: argument 1"}
!347 = distinct !{!347, !"XXH3_scrambleAcc_avx2"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"XXH3_scrambleAcc_avx2: argument 0"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"XXH3_accumulate_avx2: argument 1"}
!352 = distinct !{!352, !"XXH3_accumulate_avx2"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"XXH3_accumulate_avx2: argument 2"}
!355 = !{!356, !354}
!356 = distinct !{!356, !352, !"XXH3_accumulate_avx2: argument 0"}
!357 = !{!356, !351}
!358 = !{!359}
!359 = distinct !{!359, !360, !"XXH3_accumulate_avx2: argument 1"}
!360 = distinct !{!360, !"XXH3_accumulate_avx2"}
!361 = !{!362}
!362 = distinct !{!362, !360, !"XXH3_accumulate_avx2: argument 2"}
!363 = !{!364, !362}
!364 = distinct !{!364, !360, !"XXH3_accumulate_avx2: argument 0"}
!365 = !{!364, !359}
!366 = !{!367}
!367 = distinct !{!367, !368, !"XXH3_mergeAccs: argument 1"}
!368 = distinct !{!368, !"XXH3_mergeAccs"}
!369 = !{!370}
!370 = distinct !{!370, !368, !"XXH3_mergeAccs: argument 0"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"XXH3_update: argument 0"}
!373 = distinct !{!373, !"XXH3_update"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"XXH3_update: argument 1"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"XXH3_consumeStripes: argument 1"}
!378 = distinct !{!378, !"XXH3_consumeStripes"}
!379 = !{!380, !381, !382}
!380 = distinct !{!380, !378, !"XXH3_consumeStripes: argument 0"}
!381 = distinct !{!381, !378, !"XXH3_consumeStripes: argument 2"}
!382 = distinct !{!382, !378, !"XXH3_consumeStripes: argument 3"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"XXH3_accumulate_avx2: argument 0"}
!385 = distinct !{!385, !"XXH3_accumulate_avx2"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"XXH3_accumulate_avx2: argument 1"}
!388 = !{!389}
!389 = distinct !{!389, !385, !"XXH3_accumulate_avx2: argument 2"}
!390 = !{!391, !384}
!391 = distinct !{!391, !392, !"XXH3_accumulate_512_avx2: argument 0"}
!392 = distinct !{!392, !"XXH3_accumulate_512_avx2"}
!393 = !{!394, !395, !387, !389, !377}
!394 = distinct !{!394, !392, !"XXH3_accumulate_512_avx2: argument 1"}
!395 = distinct !{!395, !392, !"XXH3_accumulate_512_avx2: argument 2"}
!396 = !{!389, !377}
!397 = !{!384, !389, !377}
!398 = !{!384, !387, !377}
!399 = !{!400}
!400 = distinct !{!400, !401, !"XXH3_scrambleAcc_avx2: argument 0"}
!401 = distinct !{!401, !"XXH3_scrambleAcc_avx2"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"XXH3_scrambleAcc_avx2: argument 1"}
!404 = !{!400, !377}
!405 = !{!403, !377}
!406 = !{!407}
!407 = distinct !{!407, !408, !"XXH3_accumulate_avx2: argument 0"}
!408 = distinct !{!408, !"XXH3_accumulate_avx2"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"XXH3_accumulate_avx2: argument 1"}
!411 = !{!412}
!412 = distinct !{!412, !408, !"XXH3_accumulate_avx2: argument 2"}
!413 = !{!412, !377}
!414 = !{!407, !412, !377}
!415 = !{!407, !410, !377}
!416 = !{!417, !407}
!417 = distinct !{!417, !418, !"XXH3_accumulate_512_avx2: argument 0"}
!418 = distinct !{!418, !"XXH3_accumulate_512_avx2"}
!419 = !{!420, !421, !410, !412, !377}
!420 = distinct !{!420, !418, !"XXH3_accumulate_512_avx2: argument 1"}
!421 = distinct !{!421, !418, !"XXH3_accumulate_512_avx2: argument 2"}
!422 = !{!423}
!423 = distinct !{!423, !424, !"XXH3_accumulate_avx2: argument 0"}
!424 = distinct !{!424, !"XXH3_accumulate_avx2"}
!425 = !{!426}
!426 = distinct !{!426, !424, !"XXH3_accumulate_avx2: argument 1"}
!427 = !{!428}
!428 = distinct !{!428, !424, !"XXH3_accumulate_avx2: argument 2"}
!429 = !{!428, !377}
!430 = !{!423, !428, !377}
!431 = !{!423, !426, !377}
!432 = !{!433, !423}
!433 = distinct !{!433, !434, !"XXH3_accumulate_512_avx2: argument 0"}
!434 = distinct !{!434, !"XXH3_accumulate_512_avx2"}
!435 = !{!436, !437, !426, !428, !377}
!436 = distinct !{!436, !434, !"XXH3_accumulate_512_avx2: argument 1"}
!437 = distinct !{!437, !434, !"XXH3_accumulate_512_avx2: argument 2"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"XXH3_accumulate_avx2: argument 0"}
!440 = distinct !{!440, !"XXH3_accumulate_avx2"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"XXH3_accumulate_avx2: argument 1"}
!443 = !{!444}
!444 = distinct !{!444, !440, !"XXH3_accumulate_avx2: argument 2"}
!445 = !{!446}
!446 = distinct !{!446, !447, !"XXH3_scrambleAcc_avx2: argument 0"}
!447 = distinct !{!447, !"XXH3_scrambleAcc_avx2"}
!448 = !{!449}
!449 = distinct !{!449, !447, !"XXH3_scrambleAcc_avx2: argument 1"}
!450 = !{!439, !444}
!451 = !{!439, !442}
!452 = !{!453, !439}
!453 = distinct !{!453, !454, !"XXH3_accumulate_512_avx2: argument 0"}
!454 = distinct !{!454, !"XXH3_accumulate_512_avx2"}
!455 = !{!456, !457, !442, !444}
!456 = distinct !{!456, !454, !"XXH3_accumulate_512_avx2: argument 1"}
!457 = distinct !{!457, !454, !"XXH3_accumulate_512_avx2: argument 2"}
!458 = !{!459}
!459 = distinct !{!459, !460, !"XXH3_accumulate_avx2: argument 0"}
!460 = distinct !{!460, !"XXH3_accumulate_avx2"}
!461 = !{!462}
!462 = distinct !{!462, !460, !"XXH3_accumulate_avx2: argument 1"}
!463 = !{!464}
!464 = distinct !{!464, !460, !"XXH3_accumulate_avx2: argument 2"}
!465 = !{!459, !464}
!466 = !{!459, !462}
!467 = !{!468, !459}
!468 = distinct !{!468, !469, !"XXH3_accumulate_512_avx2: argument 0"}
!469 = distinct !{!469, !"XXH3_accumulate_512_avx2"}
!470 = !{!471, !472, !462, !464}
!471 = distinct !{!471, !469, !"XXH3_accumulate_512_avx2: argument 1"}
!472 = distinct !{!472, !469, !"XXH3_accumulate_512_avx2: argument 2"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"XXH3_scrambleAcc_avx2: argument 0"}
!475 = distinct !{!475, !"XXH3_scrambleAcc_avx2"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"XXH3_scrambleAcc_avx2: argument 1"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"XXH3_accumulate_avx2: argument 0"}
!480 = distinct !{!480, !"XXH3_accumulate_avx2"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"XXH3_accumulate_avx2: argument 1"}
!483 = !{!484}
!484 = distinct !{!484, !480, !"XXH3_accumulate_avx2: argument 2"}
!485 = !{!479, !484}
!486 = !{!479, !482}
!487 = !{!488, !479}
!488 = distinct !{!488, !489, !"XXH3_accumulate_512_avx2: argument 0"}
!489 = distinct !{!489, !"XXH3_accumulate_512_avx2"}
!490 = !{!491, !492, !482, !484}
!491 = distinct !{!491, !489, !"XXH3_accumulate_512_avx2: argument 1"}
!492 = distinct !{!492, !489, !"XXH3_accumulate_512_avx2: argument 2"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"XXH3_consumeStripes: argument 1"}
!495 = distinct !{!495, !"XXH3_consumeStripes"}
!496 = !{!497, !498, !499}
!497 = distinct !{!497, !495, !"XXH3_consumeStripes: argument 0"}
!498 = distinct !{!498, !495, !"XXH3_consumeStripes: argument 2"}
!499 = distinct !{!499, !495, !"XXH3_consumeStripes: argument 3"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"XXH3_accumulate_avx2: argument 0"}
!502 = distinct !{!502, !"XXH3_accumulate_avx2"}
!503 = !{!504}
!504 = distinct !{!504, !502, !"XXH3_accumulate_avx2: argument 1"}
!505 = !{!506}
!506 = distinct !{!506, !502, !"XXH3_accumulate_avx2: argument 2"}
!507 = !{!508, !501}
!508 = distinct !{!508, !509, !"XXH3_accumulate_512_avx2: argument 0"}
!509 = distinct !{!509, !"XXH3_accumulate_512_avx2"}
!510 = !{!511, !512, !504, !506, !494}
!511 = distinct !{!511, !509, !"XXH3_accumulate_512_avx2: argument 1"}
!512 = distinct !{!512, !509, !"XXH3_accumulate_512_avx2: argument 2"}
!513 = !{!506, !494}
!514 = !{!501, !506, !494}
!515 = !{!501, !504, !494}
!516 = !{!517}
!517 = distinct !{!517, !518, !"XXH3_scrambleAcc_avx2: argument 0"}
!518 = distinct !{!518, !"XXH3_scrambleAcc_avx2"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"XXH3_scrambleAcc_avx2: argument 1"}
!521 = !{!517, !494}
!522 = !{!520, !494}
!523 = !{!524}
!524 = distinct !{!524, !525, !"XXH3_accumulate_avx2: argument 0"}
!525 = distinct !{!525, !"XXH3_accumulate_avx2"}
!526 = !{!527}
!527 = distinct !{!527, !525, !"XXH3_accumulate_avx2: argument 1"}
!528 = !{!529}
!529 = distinct !{!529, !525, !"XXH3_accumulate_avx2: argument 2"}
!530 = !{!529, !494}
!531 = !{!524, !529, !494}
!532 = !{!524, !527, !494}
!533 = !{!534, !524}
!534 = distinct !{!534, !535, !"XXH3_accumulate_512_avx2: argument 0"}
!535 = distinct !{!535, !"XXH3_accumulate_512_avx2"}
!536 = !{!537, !538, !527, !529, !494}
!537 = distinct !{!537, !535, !"XXH3_accumulate_512_avx2: argument 1"}
!538 = distinct !{!538, !535, !"XXH3_accumulate_512_avx2: argument 2"}
!539 = !{!540}
!540 = distinct !{!540, !541, !"XXH3_accumulate_avx2: argument 0"}
!541 = distinct !{!541, !"XXH3_accumulate_avx2"}
!542 = !{!543}
!543 = distinct !{!543, !541, !"XXH3_accumulate_avx2: argument 1"}
!544 = !{!545}
!545 = distinct !{!545, !541, !"XXH3_accumulate_avx2: argument 2"}
!546 = !{!545, !494}
!547 = !{!540, !545, !494}
!548 = !{!540, !543, !494}
!549 = !{!550, !540}
!550 = distinct !{!550, !551, !"XXH3_accumulate_512_avx2: argument 0"}
!551 = distinct !{!551, !"XXH3_accumulate_512_avx2"}
!552 = !{!553, !554, !543, !545, !494}
!553 = distinct !{!553, !551, !"XXH3_accumulate_512_avx2: argument 1"}
!554 = distinct !{!554, !551, !"XXH3_accumulate_512_avx2: argument 2"}
!555 = !{!556, !558}
!556 = distinct !{!556, !557, !"XXH3_hashLong_64b_internal: argument 0"}
!557 = distinct !{!557, !"XXH3_hashLong_64b_internal"}
!558 = distinct !{!558, !557, !"XXH3_hashLong_64b_internal: argument 1"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"XXH3_accumulate_512_avx512: argument 2"}
!561 = distinct !{!561, !"XXH3_accumulate_512_avx512"}
!562 = distinct !{!562, !19}
!563 = !{!564}
!564 = distinct !{!564, !565, !"XXH3_accumulate_512_avx512: argument 2"}
!565 = distinct !{!565, !"XXH3_accumulate_512_avx512"}
!566 = !{!567, !569}
!567 = distinct !{!567, !568, !"XXH3_hashLong_64b_internal: argument 0"}
!568 = distinct !{!568, !"XXH3_hashLong_64b_internal"}
!569 = distinct !{!569, !568, !"XXH3_hashLong_64b_internal: argument 1"}
!570 = !{!571}
!571 = distinct !{!571, !572, !"XXH3_accumulate_512_avx512: argument 2"}
!572 = distinct !{!572, !"XXH3_accumulate_512_avx512"}
!573 = !{!574}
!574 = distinct !{!574, !575, !"XXH3_accumulate_512_avx512: argument 2"}
!575 = distinct !{!575, !"XXH3_accumulate_512_avx512"}
!576 = !{!577}
!577 = distinct !{!577, !578, !"XXH3_initCustomSecret_avx512: argument 0"}
!578 = distinct !{!578, !"XXH3_initCustomSecret_avx512"}
!579 = !{!580, !582}
!580 = distinct !{!580, !581, !"XXH3_hashLong_64b_internal: argument 0"}
!581 = distinct !{!581, !"XXH3_hashLong_64b_internal"}
!582 = distinct !{!582, !581, !"XXH3_hashLong_64b_internal: argument 1"}
!583 = !{!584}
!584 = distinct !{!584, !585, !"XXH3_accumulate_512_avx512: argument 2"}
!585 = distinct !{!585, !"XXH3_accumulate_512_avx512"}
!586 = !{!587}
!587 = distinct !{!587, !588, !"XXH3_accumulate_512_avx512: argument 2"}
!588 = distinct !{!588, !"XXH3_accumulate_512_avx512"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"XXH3_mergeAccs: argument 1"}
!591 = distinct !{!591, !"XXH3_mergeAccs"}
!592 = !{!593}
!593 = distinct !{!593, !591, !"XXH3_mergeAccs: argument 0"}
!594 = !{!595, !597}
!595 = distinct !{!595, !596, !"XXH3_hashLong_64b_internal: argument 0"}
!596 = distinct !{!596, !"XXH3_hashLong_64b_internal"}
!597 = distinct !{!597, !596, !"XXH3_hashLong_64b_internal: argument 1"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"XXH3_accumulate_512_avx512: argument 2"}
!600 = distinct !{!600, !"XXH3_accumulate_512_avx512"}
!601 = !{!602}
!602 = distinct !{!602, !603, !"XXH3_accumulate_512_avx512: argument 2"}
!603 = distinct !{!603, !"XXH3_accumulate_512_avx512"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"XXH3_mergeAccs: argument 1"}
!606 = distinct !{!606, !"XXH3_mergeAccs"}
!607 = !{!608}
!608 = distinct !{!608, !606, !"XXH3_mergeAccs: argument 0"}
!609 = !{!610}
!610 = distinct !{!610, !611, !"XXH3_update: argument 0"}
!611 = distinct !{!611, !"XXH3_update"}
!612 = !{!613}
!613 = distinct !{!613, !611, !"XXH3_update: argument 1"}
!614 = !{!615}
!615 = distinct !{!615, !616, !"XXH3_consumeStripes: argument 1"}
!616 = distinct !{!616, !"XXH3_consumeStripes"}
!617 = !{!618, !619, !620}
!618 = distinct !{!618, !616, !"XXH3_consumeStripes: argument 0"}
!619 = distinct !{!619, !616, !"XXH3_consumeStripes: argument 2"}
!620 = distinct !{!620, !616, !"XXH3_consumeStripes: argument 3"}
!621 = !{!622}
!622 = distinct !{!622, !623, !"XXH3_accumulate_512_avx512: argument 0"}
!623 = distinct !{!623, !"XXH3_accumulate_512_avx512"}
!624 = !{!625, !626, !615}
!625 = distinct !{!625, !623, !"XXH3_accumulate_512_avx512: argument 1"}
!626 = distinct !{!626, !623, !"XXH3_accumulate_512_avx512: argument 2"}
!627 = !{!626, !615}
!628 = !{!629}
!629 = distinct !{!629, !630, !"XXH3_scrambleAcc_avx512: argument 0"}
!630 = distinct !{!630, !"XXH3_scrambleAcc_avx512"}
!631 = !{!632, !615}
!632 = distinct !{!632, !630, !"XXH3_scrambleAcc_avx512: argument 1"}
!633 = !{!634, !615}
!634 = distinct !{!634, !635, !"XXH3_accumulate_512_avx512: argument 2"}
!635 = distinct !{!635, !"XXH3_accumulate_512_avx512"}
!636 = !{!637}
!637 = distinct !{!637, !635, !"XXH3_accumulate_512_avx512: argument 0"}
!638 = !{!639, !634, !615}
!639 = distinct !{!639, !635, !"XXH3_accumulate_512_avx512: argument 1"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"XXH3_accumulate_512_avx512: argument 0"}
!642 = distinct !{!642, !"XXH3_accumulate_512_avx512"}
!643 = !{!644, !645, !615}
!644 = distinct !{!644, !642, !"XXH3_accumulate_512_avx512: argument 1"}
!645 = distinct !{!645, !642, !"XXH3_accumulate_512_avx512: argument 2"}
!646 = !{!645, !615}
!647 = !{!648}
!648 = distinct !{!648, !649, !"XXH3_scrambleAcc_avx512: argument 0"}
!649 = distinct !{!649, !"XXH3_scrambleAcc_avx512"}
!650 = !{!651}
!651 = distinct !{!651, !649, !"XXH3_scrambleAcc_avx512: argument 1"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"XXH3_accumulate_512_avx512: argument 2"}
!654 = distinct !{!654, !"XXH3_accumulate_512_avx512"}
!655 = !{!656}
!656 = distinct !{!656, !654, !"XXH3_accumulate_512_avx512: argument 0"}
!657 = !{!658, !653}
!658 = distinct !{!658, !654, !"XXH3_accumulate_512_avx512: argument 1"}
!659 = !{!660}
!660 = distinct !{!660, !661, !"XXH3_accumulate_512_avx512: argument 2"}
!661 = distinct !{!661, !"XXH3_accumulate_512_avx512"}
!662 = !{!663}
!663 = distinct !{!663, !661, !"XXH3_accumulate_512_avx512: argument 0"}
!664 = !{!665, !660}
!665 = distinct !{!665, !661, !"XXH3_accumulate_512_avx512: argument 1"}
!666 = !{!667}
!667 = distinct !{!667, !668, !"XXH3_scrambleAcc_avx512: argument 0"}
!668 = distinct !{!668, !"XXH3_scrambleAcc_avx512"}
!669 = !{!670}
!670 = distinct !{!670, !668, !"XXH3_scrambleAcc_avx512: argument 1"}
!671 = !{!672}
!672 = distinct !{!672, !673, !"XXH3_accumulate_512_avx512: argument 2"}
!673 = distinct !{!673, !"XXH3_accumulate_512_avx512"}
!674 = !{!675}
!675 = distinct !{!675, !673, !"XXH3_accumulate_512_avx512: argument 0"}
!676 = !{!677, !672}
!677 = distinct !{!677, !673, !"XXH3_accumulate_512_avx512: argument 1"}
!678 = !{!679}
!679 = distinct !{!679, !680, !"XXH3_consumeStripes: argument 1"}
!680 = distinct !{!680, !"XXH3_consumeStripes"}
!681 = !{!682, !683, !684}
!682 = distinct !{!682, !680, !"XXH3_consumeStripes: argument 0"}
!683 = distinct !{!683, !680, !"XXH3_consumeStripes: argument 2"}
!684 = distinct !{!684, !680, !"XXH3_consumeStripes: argument 3"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"XXH3_accumulate_512_avx512: argument 0"}
!687 = distinct !{!687, !"XXH3_accumulate_512_avx512"}
!688 = !{!689, !690, !679}
!689 = distinct !{!689, !687, !"XXH3_accumulate_512_avx512: argument 1"}
!690 = distinct !{!690, !687, !"XXH3_accumulate_512_avx512: argument 2"}
!691 = !{!690, !679}
!692 = !{!693}
!693 = distinct !{!693, !694, !"XXH3_scrambleAcc_avx512: argument 0"}
!694 = distinct !{!694, !"XXH3_scrambleAcc_avx512"}
!695 = !{!696, !679}
!696 = distinct !{!696, !694, !"XXH3_scrambleAcc_avx512: argument 1"}
!697 = !{!698, !679}
!698 = distinct !{!698, !699, !"XXH3_accumulate_512_avx512: argument 2"}
!699 = distinct !{!699, !"XXH3_accumulate_512_avx512"}
!700 = !{!701}
!701 = distinct !{!701, !699, !"XXH3_accumulate_512_avx512: argument 0"}
!702 = !{!703, !698, !679}
!703 = distinct !{!703, !699, !"XXH3_accumulate_512_avx512: argument 1"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"XXH3_accumulate_512_avx512: argument 0"}
!706 = distinct !{!706, !"XXH3_accumulate_512_avx512"}
!707 = !{!708, !709, !679}
!708 = distinct !{!708, !706, !"XXH3_accumulate_512_avx512: argument 1"}
!709 = distinct !{!709, !706, !"XXH3_accumulate_512_avx512: argument 2"}
!710 = !{!709, !679}
!711 = !{!712}
!712 = distinct !{!712, !713, !"XXH3_accumulate_sse2: argument 1"}
!713 = distinct !{!713, !"XXH3_accumulate_sse2"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"XXH3_accumulate_sse2: argument 2"}
!716 = !{!717, !715}
!717 = distinct !{!717, !713, !"XXH3_accumulate_sse2: argument 0"}
!718 = !{!717, !712}
!719 = !{!720}
!720 = distinct !{!720, !721, !"XXH3_accumulate_sse2: argument 1"}
!721 = distinct !{!721, !"XXH3_accumulate_sse2"}
!722 = !{!723}
!723 = distinct !{!723, !721, !"XXH3_accumulate_sse2: argument 2"}
!724 = !{!725, !723}
!725 = distinct !{!725, !721, !"XXH3_accumulate_sse2: argument 0"}
!726 = !{!725, !720}
!727 = !{!728}
!728 = distinct !{!728, !729, !"XXH3_hashLong_128b_internal: argument 0"}
!729 = distinct !{!729, !"XXH3_hashLong_128b_internal"}
!730 = !{!731}
!731 = distinct !{!731, !729, !"XXH3_hashLong_128b_internal: argument 1"}
!732 = !{!733}
!733 = distinct !{!733, !734, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!734 = distinct !{!734, !"XXH3_hashLong_128b_withSeed_internal"}
!735 = !{!736}
!736 = distinct !{!736, !737, !"XXH3_accumulate_sse2: argument 1"}
!737 = distinct !{!737, !"XXH3_accumulate_sse2"}
!738 = !{!739}
!739 = distinct !{!739, !737, !"XXH3_accumulate_sse2: argument 2"}
!740 = !{!741, !739}
!741 = distinct !{!741, !737, !"XXH3_accumulate_sse2: argument 0"}
!742 = !{!741, !736}
!743 = !{!744}
!744 = distinct !{!744, !745, !"XXH3_accumulate_sse2: argument 1"}
!745 = distinct !{!745, !"XXH3_accumulate_sse2"}
!746 = !{!747}
!747 = distinct !{!747, !745, !"XXH3_accumulate_sse2: argument 2"}
!748 = !{!749, !747}
!749 = distinct !{!749, !745, !"XXH3_accumulate_sse2: argument 0"}
!750 = !{!749, !744}
!751 = !{!752, !733}
!752 = distinct !{!752, !753, !"XXH3_hashLong_128b_internal: argument 0"}
!753 = distinct !{!753, !"XXH3_hashLong_128b_internal"}
!754 = !{!755}
!755 = distinct !{!755, !753, !"XXH3_hashLong_128b_internal: argument 1"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"XXH3_hashLong_128b_internal: argument 0"}
!758 = distinct !{!758, !"XXH3_hashLong_128b_internal"}
!759 = !{!760}
!760 = distinct !{!760, !758, !"XXH3_hashLong_128b_internal: argument 1"}
!761 = !{!762}
!762 = distinct !{!762, !763, !"XXH3_scrambleAcc_sse2: argument 1"}
!763 = distinct !{!763, !"XXH3_scrambleAcc_sse2"}
!764 = !{!765}
!765 = distinct !{!765, !763, !"XXH3_scrambleAcc_sse2: argument 0"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"XXH3_accumulate_sse2: argument 1"}
!768 = distinct !{!768, !"XXH3_accumulate_sse2"}
!769 = !{!770}
!770 = distinct !{!770, !768, !"XXH3_accumulate_sse2: argument 2"}
!771 = !{!772, !770}
!772 = distinct !{!772, !768, !"XXH3_accumulate_sse2: argument 0"}
!773 = !{!772, !767}
!774 = !{!775}
!775 = distinct !{!775, !776, !"XXH3_accumulate_sse2: argument 1"}
!776 = distinct !{!776, !"XXH3_accumulate_sse2"}
!777 = !{!778}
!778 = distinct !{!778, !776, !"XXH3_accumulate_sse2: argument 2"}
!779 = !{!780, !778}
!780 = distinct !{!780, !776, !"XXH3_accumulate_sse2: argument 0"}
!781 = !{!780, !775}
!782 = !{!757, !733}
!783 = !{!784}
!784 = distinct !{!784, !785, !"XXH3_mergeAccs: argument 1"}
!785 = distinct !{!785, !"XXH3_mergeAccs"}
!786 = !{!787}
!787 = distinct !{!787, !785, !"XXH3_mergeAccs: argument 0"}
!788 = !{!789}
!789 = distinct !{!789, !790, !"XXH3_mergeAccs: argument 1"}
!790 = distinct !{!790, !"XXH3_mergeAccs"}
!791 = !{!792}
!792 = distinct !{!792, !790, !"XXH3_mergeAccs: argument 0"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"XXH3_hashLong_128b_internal: argument 0"}
!795 = distinct !{!795, !"XXH3_hashLong_128b_internal"}
!796 = !{!797}
!797 = distinct !{!797, !795, !"XXH3_hashLong_128b_internal: argument 1"}
!798 = !{!799}
!799 = distinct !{!799, !800, !"XXH3_scrambleAcc_sse2: argument 1"}
!800 = distinct !{!800, !"XXH3_scrambleAcc_sse2"}
!801 = !{!802}
!802 = distinct !{!802, !800, !"XXH3_scrambleAcc_sse2: argument 0"}
!803 = !{!804}
!804 = distinct !{!804, !805, !"XXH3_accumulate_sse2: argument 1"}
!805 = distinct !{!805, !"XXH3_accumulate_sse2"}
!806 = !{!807}
!807 = distinct !{!807, !805, !"XXH3_accumulate_sse2: argument 2"}
!808 = !{!809, !807}
!809 = distinct !{!809, !805, !"XXH3_accumulate_sse2: argument 0"}
!810 = !{!809, !804}
!811 = !{!812}
!812 = distinct !{!812, !813, !"XXH3_accumulate_sse2: argument 1"}
!813 = distinct !{!813, !"XXH3_accumulate_sse2"}
!814 = !{!815}
!815 = distinct !{!815, !813, !"XXH3_accumulate_sse2: argument 2"}
!816 = !{!817, !815}
!817 = distinct !{!817, !813, !"XXH3_accumulate_sse2: argument 0"}
!818 = !{!817, !812}
!819 = !{!820}
!820 = distinct !{!820, !821, !"XXH3_mergeAccs: argument 1"}
!821 = distinct !{!821, !"XXH3_mergeAccs"}
!822 = !{!823}
!823 = distinct !{!823, !821, !"XXH3_mergeAccs: argument 0"}
!824 = !{!825}
!825 = distinct !{!825, !826, !"XXH3_mergeAccs: argument 1"}
!826 = distinct !{!826, !"XXH3_mergeAccs"}
!827 = !{!828}
!828 = distinct !{!828, !826, !"XXH3_mergeAccs: argument 0"}
!829 = !{!830}
!830 = distinct !{!830, !831, !"XXH3_accumulate_avx2: argument 1"}
!831 = distinct !{!831, !"XXH3_accumulate_avx2"}
!832 = !{!833}
!833 = distinct !{!833, !831, !"XXH3_accumulate_avx2: argument 2"}
!834 = !{!835, !833}
!835 = distinct !{!835, !831, !"XXH3_accumulate_avx2: argument 0"}
!836 = !{!835, !830}
!837 = !{!838}
!838 = distinct !{!838, !839, !"XXH3_accumulate_avx2: argument 1"}
!839 = distinct !{!839, !"XXH3_accumulate_avx2"}
!840 = !{!841}
!841 = distinct !{!841, !839, !"XXH3_accumulate_avx2: argument 2"}
!842 = !{!843, !841}
!843 = distinct !{!843, !839, !"XXH3_accumulate_avx2: argument 0"}
!844 = !{!843, !838}
!845 = !{!846}
!846 = distinct !{!846, !847, !"XXH3_hashLong_128b_internal: argument 0"}
!847 = distinct !{!847, !"XXH3_hashLong_128b_internal"}
!848 = !{!849}
!849 = distinct !{!849, !847, !"XXH3_hashLong_128b_internal: argument 1"}
!850 = !{!851}
!851 = distinct !{!851, !852, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!852 = distinct !{!852, !"XXH3_hashLong_128b_withSeed_internal"}
!853 = !{!854}
!854 = distinct !{!854, !855, !"XXH3_accumulate_avx2: argument 1"}
!855 = distinct !{!855, !"XXH3_accumulate_avx2"}
!856 = !{!857}
!857 = distinct !{!857, !855, !"XXH3_accumulate_avx2: argument 2"}
!858 = !{!859, !857}
!859 = distinct !{!859, !855, !"XXH3_accumulate_avx2: argument 0"}
!860 = !{!859, !854}
!861 = !{!862}
!862 = distinct !{!862, !863, !"XXH3_accumulate_avx2: argument 1"}
!863 = distinct !{!863, !"XXH3_accumulate_avx2"}
!864 = !{!865}
!865 = distinct !{!865, !863, !"XXH3_accumulate_avx2: argument 2"}
!866 = !{!867, !865}
!867 = distinct !{!867, !863, !"XXH3_accumulate_avx2: argument 0"}
!868 = !{!867, !862}
!869 = !{!870, !851}
!870 = distinct !{!870, !871, !"XXH3_hashLong_128b_internal: argument 0"}
!871 = distinct !{!871, !"XXH3_hashLong_128b_internal"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"XXH3_hashLong_128b_internal: argument 1"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"XXH3_hashLong_128b_internal: argument 0"}
!876 = distinct !{!876, !"XXH3_hashLong_128b_internal"}
!877 = !{!878}
!878 = distinct !{!878, !876, !"XXH3_hashLong_128b_internal: argument 1"}
!879 = !{!880}
!880 = distinct !{!880, !881, !"XXH3_scrambleAcc_avx2: argument 1"}
!881 = distinct !{!881, !"XXH3_scrambleAcc_avx2"}
!882 = !{!883}
!883 = distinct !{!883, !881, !"XXH3_scrambleAcc_avx2: argument 0"}
!884 = !{!885}
!885 = distinct !{!885, !886, !"XXH3_accumulate_avx2: argument 1"}
!886 = distinct !{!886, !"XXH3_accumulate_avx2"}
!887 = !{!888}
!888 = distinct !{!888, !886, !"XXH3_accumulate_avx2: argument 2"}
!889 = !{!890, !888}
!890 = distinct !{!890, !886, !"XXH3_accumulate_avx2: argument 0"}
!891 = !{!890, !885}
!892 = !{!893}
!893 = distinct !{!893, !894, !"XXH3_accumulate_avx2: argument 1"}
!894 = distinct !{!894, !"XXH3_accumulate_avx2"}
!895 = !{!896}
!896 = distinct !{!896, !894, !"XXH3_accumulate_avx2: argument 2"}
!897 = !{!898, !896}
!898 = distinct !{!898, !894, !"XXH3_accumulate_avx2: argument 0"}
!899 = !{!898, !893}
!900 = !{!875, !851}
!901 = !{!902}
!902 = distinct !{!902, !903, !"XXH3_mergeAccs: argument 1"}
!903 = distinct !{!903, !"XXH3_mergeAccs"}
!904 = !{!905}
!905 = distinct !{!905, !903, !"XXH3_mergeAccs: argument 0"}
!906 = !{!907}
!907 = distinct !{!907, !908, !"XXH3_mergeAccs: argument 1"}
!908 = distinct !{!908, !"XXH3_mergeAccs"}
!909 = !{!910}
!910 = distinct !{!910, !908, !"XXH3_mergeAccs: argument 0"}
!911 = !{!912}
!912 = distinct !{!912, !913, !"XXH3_hashLong_128b_internal: argument 0"}
!913 = distinct !{!913, !"XXH3_hashLong_128b_internal"}
!914 = !{!915}
!915 = distinct !{!915, !913, !"XXH3_hashLong_128b_internal: argument 1"}
!916 = !{!917}
!917 = distinct !{!917, !918, !"XXH3_scrambleAcc_avx2: argument 1"}
!918 = distinct !{!918, !"XXH3_scrambleAcc_avx2"}
!919 = !{!920}
!920 = distinct !{!920, !918, !"XXH3_scrambleAcc_avx2: argument 0"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"XXH3_accumulate_avx2: argument 1"}
!923 = distinct !{!923, !"XXH3_accumulate_avx2"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"XXH3_accumulate_avx2: argument 2"}
!926 = !{!927, !925}
!927 = distinct !{!927, !923, !"XXH3_accumulate_avx2: argument 0"}
!928 = !{!927, !922}
!929 = !{!930}
!930 = distinct !{!930, !931, !"XXH3_accumulate_avx2: argument 1"}
!931 = distinct !{!931, !"XXH3_accumulate_avx2"}
!932 = !{!933}
!933 = distinct !{!933, !931, !"XXH3_accumulate_avx2: argument 2"}
!934 = !{!935, !933}
!935 = distinct !{!935, !931, !"XXH3_accumulate_avx2: argument 0"}
!936 = !{!935, !930}
!937 = !{!938}
!938 = distinct !{!938, !939, !"XXH3_mergeAccs: argument 1"}
!939 = distinct !{!939, !"XXH3_mergeAccs"}
!940 = !{!941}
!941 = distinct !{!941, !939, !"XXH3_mergeAccs: argument 0"}
!942 = !{!943}
!943 = distinct !{!943, !944, !"XXH3_mergeAccs: argument 1"}
!944 = distinct !{!944, !"XXH3_mergeAccs"}
!945 = !{!946}
!946 = distinct !{!946, !944, !"XXH3_mergeAccs: argument 0"}
!947 = !{!948}
!948 = distinct !{!948, !949, !"XXH3_hashLong_128b_internal: argument 0"}
!949 = distinct !{!949, !"XXH3_hashLong_128b_internal"}
!950 = !{!948, !951}
!951 = distinct !{!951, !949, !"XXH3_hashLong_128b_internal: argument 1"}
!952 = !{!953}
!953 = distinct !{!953, !954, !"XXH3_accumulate_avx512: argument 1"}
!954 = distinct !{!954, !"XXH3_accumulate_avx512"}
!955 = !{!956}
!956 = distinct !{!956, !954, !"XXH3_accumulate_avx512: argument 2"}
!957 = !{!958, !960, !956}
!958 = distinct !{!958, !959, !"XXH3_accumulate_512_avx512: argument 2"}
!959 = distinct !{!959, !"XXH3_accumulate_512_avx512"}
!960 = distinct !{!960, !954, !"XXH3_accumulate_avx512: argument 0"}
!961 = !{!960, !953}
!962 = !{!963}
!963 = distinct !{!963, !964, !"XXH3_accumulate_avx512: argument 1"}
!964 = distinct !{!964, !"XXH3_accumulate_avx512"}
!965 = !{!966}
!966 = distinct !{!966, !964, !"XXH3_accumulate_avx512: argument 2"}
!967 = !{!968, !970, !966}
!968 = distinct !{!968, !969, !"XXH3_accumulate_512_avx512: argument 2"}
!969 = distinct !{!969, !"XXH3_accumulate_512_avx512"}
!970 = distinct !{!970, !964, !"XXH3_accumulate_avx512: argument 0"}
!971 = !{!970, !963}
!972 = !{!951}
!973 = !{!974}
!974 = distinct !{!974, !975, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!975 = distinct !{!975, !"XXH3_hashLong_128b_withSeed_internal"}
!976 = !{!977}
!977 = distinct !{!977, !978, !"XXH3_hashLong_128b_internal: argument 0"}
!978 = distinct !{!978, !"XXH3_hashLong_128b_internal"}
!979 = !{!977, !980, !974}
!980 = distinct !{!980, !978, !"XXH3_hashLong_128b_internal: argument 1"}
!981 = !{!982}
!982 = distinct !{!982, !983, !"XXH3_accumulate_avx512: argument 1"}
!983 = distinct !{!983, !"XXH3_accumulate_avx512"}
!984 = !{!985}
!985 = distinct !{!985, !983, !"XXH3_accumulate_avx512: argument 2"}
!986 = !{!987, !989, !985}
!987 = distinct !{!987, !988, !"XXH3_accumulate_512_avx512: argument 2"}
!988 = distinct !{!988, !"XXH3_accumulate_512_avx512"}
!989 = distinct !{!989, !983, !"XXH3_accumulate_avx512: argument 0"}
!990 = !{!989, !982}
!991 = !{!992}
!992 = distinct !{!992, !993, !"XXH3_accumulate_avx512: argument 1"}
!993 = distinct !{!993, !"XXH3_accumulate_avx512"}
!994 = !{!995}
!995 = distinct !{!995, !993, !"XXH3_accumulate_avx512: argument 2"}
!996 = !{!997, !999, !995}
!997 = distinct !{!997, !998, !"XXH3_accumulate_512_avx512: argument 2"}
!998 = distinct !{!998, !"XXH3_accumulate_512_avx512"}
!999 = distinct !{!999, !993, !"XXH3_accumulate_avx512: argument 0"}
!1000 = !{!999, !992}
!1001 = !{!977, !974}
!1002 = !{!980}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"XXH3_initCustomSecret_avx512: argument 0"}
!1005 = distinct !{!1005, !"XXH3_initCustomSecret_avx512"}
!1006 = !{!1004, !974}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1009, !"XXH3_hashLong_128b_internal: argument 0"}
!1009 = distinct !{!1009, !"XXH3_hashLong_128b_internal"}
!1010 = !{!1008, !1011, !974}
!1011 = distinct !{!1011, !1009, !"XXH3_hashLong_128b_internal: argument 1"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1014, !"XXH3_accumulate_avx512: argument 1"}
!1014 = distinct !{!1014, !"XXH3_accumulate_avx512"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1014, !"XXH3_accumulate_avx512: argument 2"}
!1017 = !{!1018, !1020, !1016}
!1018 = distinct !{!1018, !1019, !"XXH3_accumulate_512_avx512: argument 2"}
!1019 = distinct !{!1019, !"XXH3_accumulate_512_avx512"}
!1020 = distinct !{!1020, !1014, !"XXH3_accumulate_avx512: argument 0"}
!1021 = !{!1020, !1013}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"XXH3_accumulate_avx512: argument 1"}
!1024 = distinct !{!1024, !"XXH3_accumulate_avx512"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1024, !"XXH3_accumulate_avx512: argument 2"}
!1027 = !{!1028, !1030, !1026}
!1028 = distinct !{!1028, !1029, !"XXH3_accumulate_512_avx512: argument 2"}
!1029 = distinct !{!1029, !"XXH3_accumulate_512_avx512"}
!1030 = distinct !{!1030, !1024, !"XXH3_accumulate_avx512: argument 0"}
!1031 = !{!1030, !1023}
!1032 = !{!1008, !974}
!1033 = !{!1011}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1036, !"XXH3_mergeAccs: argument 1"}
!1036 = distinct !{!1036, !"XXH3_mergeAccs"}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1036, !"XXH3_mergeAccs: argument 0"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1041, !"XXH3_mergeAccs: argument 1"}
!1041 = distinct !{!1041, !"XXH3_mergeAccs"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1041, !"XXH3_mergeAccs: argument 0"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"XXH3_hashLong_128b_internal: argument 0"}
!1046 = distinct !{!1046, !"XXH3_hashLong_128b_internal"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1046, !"XXH3_hashLong_128b_internal: argument 1"}
!1049 = !{!1045, !1048}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"XXH3_accumulate_avx512: argument 1"}
!1052 = distinct !{!1052, !"XXH3_accumulate_avx512"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1052, !"XXH3_accumulate_avx512: argument 2"}
!1055 = !{!1056, !1058, !1054}
!1056 = distinct !{!1056, !1057, !"XXH3_accumulate_512_avx512: argument 2"}
!1057 = distinct !{!1057, !"XXH3_accumulate_512_avx512"}
!1058 = distinct !{!1058, !1052, !"XXH3_accumulate_avx512: argument 0"}
!1059 = !{!1058, !1051}
!1060 = !{!1061}
!1061 = distinct !{!1061, !1062, !"XXH3_accumulate_avx512: argument 1"}
!1062 = distinct !{!1062, !"XXH3_accumulate_avx512"}
!1063 = !{!1064}
!1064 = distinct !{!1064, !1062, !"XXH3_accumulate_avx512: argument 2"}
!1065 = !{!1066, !1068, !1064}
!1066 = distinct !{!1066, !1067, !"XXH3_accumulate_512_avx512: argument 2"}
!1067 = distinct !{!1067, !"XXH3_accumulate_512_avx512"}
!1068 = distinct !{!1068, !1062, !"XXH3_accumulate_avx512: argument 0"}
!1069 = !{!1068, !1061}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"XXH3_mergeAccs: argument 1"}
!1072 = distinct !{!1072, !"XXH3_mergeAccs"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1072, !"XXH3_mergeAccs: argument 0"}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"XXH3_mergeAccs: argument 1"}
!1077 = distinct !{!1077, !"XXH3_mergeAccs"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1077, !"XXH3_mergeAccs: argument 0"}
!1080 = !{i64 2152215347}
!1081 = distinct !{!1081, !19}
!1082 = distinct !{!1082, !19}
