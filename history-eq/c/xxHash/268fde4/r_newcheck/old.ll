; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/268fde4/wrap_apisec.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/268fde4/wrap_apisec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64sec192_len256(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 256, 321) 256, ptr noundef readonly %1, i64 noundef range(i64 136, 193) 192) #11
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64sec136_len320(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 256, 321) 320, ptr noundef readonly %1, i64 noundef range(i64 136, 193) 136) #11
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128sec192_len256(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #1 {
  %4 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef readonly %1, i64 noundef 256, ptr noundef readonly %2, i64 noundef 192)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @target_64_len256(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %0, i64 noundef 256) #11
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_64seed_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef 256, i64 noundef %1) #11
  ret i64 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias noundef readonly %0, i64 noundef %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #5 {
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
  %16 = load <4 x i64>, ptr %15, align 1
  %17 = getelementptr inbounds i8, ptr %14, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %13, %56
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %13 ], [ %72, %56 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %13 ], [ %64, %56 ]
  %22 = phi i64 [ 0, %13 ], [ %73, %56 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %20, %19 ], [ %53, %25 ]
  %27 = phi <4 x i64> [ %21, %19 ], [ %42, %25 ]
  %28 = phi i64 [ 0, %19 ], [ %54, %25 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = shl i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load <4 x i64>, ptr %30, align 1
  %35 = load <4 x i64>, ptr %33, align 1
  %36 = xor <4 x i64> %35, %34
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, %37
  %40 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %41 = add <4 x i64> %27, %40
  %42 = add <4 x i64> %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %46 = load <4 x i64>, ptr %45, align 1
  %47 = xor <4 x i64> %46, %44
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %52 = add <4 x i64> %26, %51
  %53 = add <4 x i64> %52, %50
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %25

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
  br i1 %74, label %19, label %75

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
  %84 = icmp ult i64 %10, 64
  br i1 %84, label %116, label %85

85:                                               ; preds = %75, %85
  %86 = phi <4 x i64> [ %113, %85 ], [ %76, %75 ]
  %87 = phi <4 x i64> [ %102, %85 ], [ %77, %75 ]
  %88 = phi i64 [ %114, %85 ], [ 0, %75 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1)
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1
  %95 = load <4 x i64>, ptr %93, align 1
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %87, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %104 = load <4 x i64>, ptr %103, align 1
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %106 = load <4 x i64>, ptr %105, align 1
  %107 = xor <4 x i64> %106, %104
  %108 = lshr <4 x i64> %107, splat (i64 32)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %86, %111
  %113 = add <4 x i64> %112, %110
  %114 = add nuw nsw i64 %88, 1
  %115 = icmp samesign ult i64 %114, %80
  br i1 %115, label %85, label %116

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
  %146 = load i64, ptr %143, align 1
  %147 = xor i64 %146, %145
  %148 = extractelement <4 x i64> %131, i64 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %150 = load i64, ptr %149, align 1
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
  %161 = load i64, ptr %159, align 1
  %162 = xor i64 %161, %160
  %163 = extractelement <4 x i64> %131, i64 3
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %165 = load i64, ptr %164, align 1
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
  %176 = load i64, ptr %174, align 1
  %177 = xor i64 %176, %175
  %178 = extractelement <4 x i64> %142, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %180 = load i64, ptr %179, align 1
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
  %191 = load i64, ptr %189, align 1
  %192 = xor i64 %191, %190
  %193 = extractelement <4 x i64> %142, i64 3
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %195 = load i64, ptr %194, align 1
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noalias noundef readonly %0, i64 noundef %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #5 {
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
  %16 = load <4 x i64>, ptr %15, align 1
  %17 = getelementptr inbounds i8, ptr %14, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %13, %56
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %13 ], [ %72, %56 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %13 ], [ %64, %56 ]
  %22 = phi i64 [ 0, %13 ], [ %73, %56 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %20, %19 ], [ %53, %25 ]
  %27 = phi <4 x i64> [ %21, %19 ], [ %42, %25 ]
  %28 = phi i64 [ 0, %19 ], [ %54, %25 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = shl i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load <4 x i64>, ptr %30, align 1
  %35 = load <4 x i64>, ptr %33, align 1
  %36 = xor <4 x i64> %35, %34
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, %37
  %40 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %41 = add <4 x i64> %27, %40
  %42 = add <4 x i64> %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %46 = load <4 x i64>, ptr %45, align 1
  %47 = xor <4 x i64> %46, %44
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %52 = add <4 x i64> %26, %51
  %53 = add <4 x i64> %52, %50
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %25

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
  br i1 %74, label %19, label %75

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
  %84 = icmp ult i64 %10, 64
  br i1 %84, label %116, label %85

85:                                               ; preds = %75, %85
  %86 = phi <4 x i64> [ %113, %85 ], [ %76, %75 ]
  %87 = phi <4 x i64> [ %102, %85 ], [ %77, %75 ]
  %88 = phi i64 [ %114, %85 ], [ 0, %75 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1)
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1
  %95 = load <4 x i64>, ptr %93, align 1
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %87, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %104 = load <4 x i64>, ptr %103, align 1
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %106 = load <4 x i64>, ptr %105, align 1
  %107 = xor <4 x i64> %106, %104
  %108 = lshr <4 x i64> %107, splat (i64 32)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %86, %111
  %113 = add <4 x i64> %112, %110
  %114 = add nuw nsw i64 %88, 1
  %115 = icmp samesign ult i64 %114, %80
  br i1 %115, label %85, label %116

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
  %146 = load i64, ptr %143, align 1
  %147 = xor i64 %146, %145
  %148 = extractelement <4 x i64> %131, i64 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %150 = load i64, ptr %149, align 1
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
  %161 = load i64, ptr %159, align 1
  %162 = xor i64 %161, %160
  %163 = extractelement <4 x i64> %131, i64 3
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %165 = load i64, ptr %164, align 1
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
  %176 = load i64, ptr %174, align 1
  %177 = xor i64 %176, %175
  %178 = extractelement <4 x i64> %142, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %180 = load i64, ptr %179, align 1
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
  %191 = load i64, ptr %189, align 1
  %192 = xor i64 %191, %190
  %193 = extractelement <4 x i64> %142, i64 3
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %195 = load i64, ptr %194, align 1
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
  %212 = load i64, ptr %209, align 1
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
  %226 = load i64, ptr %225, align 1
  %227 = xor i64 %226, %160
  %228 = getelementptr inbounds i8, ptr %121, i64 -51
  %229 = load i64, ptr %228, align 1
  %230 = xor i64 %229, %163
  %231 = zext i64 %227 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %224, %236
  %238 = getelementptr inbounds i8, ptr %121, i64 -43
  %239 = load i64, ptr %238, align 1
  %240 = xor i64 %239, %175
  %241 = getelementptr inbounds i8, ptr %121, i64 -35
  %242 = load i64, ptr %241, align 1
  %243 = xor i64 %242, %178
  %244 = zext i64 %240 to i128
  %245 = zext i64 %243 to i128
  %246 = mul nuw i128 %245, %244
  %247 = lshr i128 %246, 64
  %248 = xor i128 %247, %246
  %249 = trunc i128 %248 to i64
  %250 = add i64 %237, %249
  %251 = getelementptr inbounds i8, ptr %121, i64 -27
  %252 = load i64, ptr %251, align 1
  %253 = xor i64 %252, %190
  %254 = getelementptr inbounds i8, ptr %121, i64 -19
  %255 = load i64, ptr %254, align 1
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
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
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi <4 x i64> [ %8, %7 ], [ %41, %13 ]
  %15 = phi <4 x i64> [ %9, %7 ], [ %30, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %42, %13 ]
  %17 = shl nuw nsw i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1)
  %20 = shl nuw nsw i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <4 x i64>, ptr %18, align 1
  %23 = load <4 x i64>, ptr %21, align 8
  %24 = xor <4 x i64> %23, %22
  %25 = lshr <4 x i64> %24, splat (i64 32)
  %26 = and <4 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <4 x i64> %26, %25
  %28 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %29 = add <4 x i64> %15, %28
  %30 = add <4 x i64> %29, %27
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %32 = load <4 x i64>, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %34 = load <4 x i64>, ptr %33, align 8
  %35 = xor <4 x i64> %34, %32
  %36 = lshr <4 x i64> %35, splat (i64 32)
  %37 = and <4 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <4 x i64> %37, %36
  %39 = shufflevector <4 x i64> %32, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %40 = add <4 x i64> %14, %39
  %41 = add <4 x i64> %40, %38
  %42 = add nuw nsw i64 %16, 1
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %13

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
  br i1 %62, label %63, label %7

63:                                               ; preds = %44, %2
  %64 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %60, %44 ]
  %65 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %52, %44 ]
  %66 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %66)
  %67 = and i64 %3, -1024
  %68 = lshr i64 %3, 6
  %69 = and i64 %68, 15
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %63, %72
  %73 = phi <4 x i64> [ %100, %72 ], [ %64, %63 ]
  %74 = phi <4 x i64> [ %89, %72 ], [ %65, %63 ]
  %75 = phi i64 [ %101, %72 ], [ 0, %63 ]
  %76 = shl nuw nsw i64 %75, 6
  %77 = getelementptr inbounds nuw i8, ptr %70, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %78, i32 0, i32 3, i32 1)
  %79 = shl nuw nsw i64 %75, 3
  %80 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %79
  %81 = load <4 x i64>, ptr %77, align 1
  %82 = load <4 x i64>, ptr %80, align 8
  %83 = xor <4 x i64> %82, %81
  %84 = lshr <4 x i64> %83, splat (i64 32)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %88 = add <4 x i64> %74, %87
  %89 = add <4 x i64> %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %91 = load <4 x i64>, ptr %90, align 1
  %92 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %93 = load <4 x i64>, ptr %92, align 8
  %94 = xor <4 x i64> %93, %91
  %95 = lshr <4 x i64> %94, splat (i64 32)
  %96 = and <4 x i64> %94, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, %95
  %98 = shufflevector <4 x i64> %91, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %99 = add <4 x i64> %73, %98
  %100 = add <4 x i64> %99, %97
  %101 = add nuw nsw i64 %75, 1
  %102 = icmp eq i64 %101, %69
  br i1 %102, label %103, label %72

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
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noalias noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 {
  %4 = alloca [192 x i8], align 32
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
  br label %17

17:                                               ; preds = %11, %17
  %18 = phi <4 x i64> [ %12, %11 ], [ %45, %17 ]
  %19 = phi <4 x i64> [ %13, %11 ], [ %34, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %46, %17 ]
  %21 = shl nuw nsw i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1)
  %24 = shl nuw nsw i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1
  %27 = load <4 x i64>, ptr %25, align 8
  %28 = xor <4 x i64> %27, %26
  %29 = lshr <4 x i64> %28, splat (i64 32)
  %30 = and <4 x i64> %28, splat (i64 4294967295)
  %31 = mul nuw <4 x i64> %30, %29
  %32 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %33 = add <4 x i64> %19, %32
  %34 = add <4 x i64> %33, %31
  %35 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %38 = load <4 x i64>, ptr %37, align 8
  %39 = xor <4 x i64> %38, %36
  %40 = lshr <4 x i64> %39, splat (i64 32)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %36, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %18, %43
  %45 = add <4 x i64> %44, %42
  %46 = add nuw nsw i64 %20, 1
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %17

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
  br i1 %66, label %67, label %11

67:                                               ; preds = %48, %6
  %68 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %64, %48 ]
  %69 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %56, %48 ]
  %70 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %70)
  %71 = and i64 %7, -1024
  %72 = lshr i64 %7, 6
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %67, %76
  %77 = phi <4 x i64> [ %104, %76 ], [ %68, %67 ]
  %78 = phi <4 x i64> [ %93, %76 ], [ %69, %67 ]
  %79 = phi i64 [ %105, %76 ], [ 0, %67 ]
  %80 = shl nuw nsw i64 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %74, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %82, i32 0, i32 3, i32 1)
  %83 = shl nuw nsw i64 %79, 3
  %84 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %83
  %85 = load <4 x i64>, ptr %81, align 1
  %86 = load <4 x i64>, ptr %84, align 8
  %87 = xor <4 x i64> %86, %85
  %88 = lshr <4 x i64> %87, splat (i64 32)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %85, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = add <4 x i64> %78, %91
  %93 = add <4 x i64> %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %95 = load <4 x i64>, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %97 = load <4 x i64>, ptr %96, align 8
  %98 = xor <4 x i64> %97, %95
  %99 = lshr <4 x i64> %98, splat (i64 32)
  %100 = and <4 x i64> %98, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %100, %99
  %102 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %103 = add <4 x i64> %77, %102
  %104 = add <4 x i64> %103, %101
  %105 = add nuw nsw i64 %79, 1
  %106 = icmp eq i64 %105, %73
  br i1 %106, label %107, label %76

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
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #11
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %180 = sub i64 0, %2
  %181 = insertelement <4 x i64> poison, i64 %2, i64 0
  %182 = insertelement <4 x i64> %181, i64 %180, i64 1
  %183 = insertelement <4 x i64> %182, i64 %2, i64 2
  %184 = insertelement <4 x i64> %183, i64 %180, i64 3
  %185 = freeze ptr %4
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
  %205 = load <4 x i64>, ptr %204, align 32
  %206 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %207 = load <4 x i64>, ptr %206, align 32
  br label %208

208:                                              ; preds = %202, %245
  %209 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %202 ], [ %261, %245 ]
  %210 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %202 ], [ %253, %245 ]
  %211 = phi i64 [ 0, %202 ], [ %262, %245 ]
  %212 = shl i64 %211, 10
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 %212
  br label %214

214:                                              ; preds = %208, %214
  %215 = phi <4 x i64> [ %209, %208 ], [ %242, %214 ]
  %216 = phi <4 x i64> [ %210, %208 ], [ %231, %214 ]
  %217 = phi i64 [ 0, %208 ], [ %243, %214 ]
  %218 = shl nuw nsw i64 %217, 6
  %219 = getelementptr inbounds nuw i8, ptr %213, i64 %218
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %220, i32 0, i32 3, i32 1)
  %221 = shl nuw nsw i64 %217, 3
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 %221
  %223 = load <4 x i64>, ptr %219, align 1
  %224 = load <4 x i64>, ptr %222, align 8
  %225 = xor <4 x i64> %224, %223
  %226 = lshr <4 x i64> %225, splat (i64 32)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %223, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %216, %229
  %231 = add <4 x i64> %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %233 = load <4 x i64>, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %235 = load <4 x i64>, ptr %234, align 8
  %236 = xor <4 x i64> %235, %233
  %237 = lshr <4 x i64> %236, splat (i64 32)
  %238 = and <4 x i64> %236, splat (i64 4294967295)
  %239 = mul nuw <4 x i64> %238, %237
  %240 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %241 = add <4 x i64> %215, %240
  %242 = add <4 x i64> %241, %239
  %243 = add nuw nsw i64 %217, 1
  %244 = icmp eq i64 %243, 16
  br i1 %244, label %245, label %214

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
  br i1 %263, label %264, label %208

264:                                              ; preds = %245, %179
  %265 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %179 ], [ %261, %245 ]
  %266 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %179 ], [ %253, %245 ]
  %267 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %267)
  %268 = and i64 %200, -1024
  %269 = lshr i64 %200, 6
  %270 = and i64 %269, 15
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 %268
  %272 = icmp eq i64 %270, 0
  br i1 %272, label %304, label %273

273:                                              ; preds = %264, %273
  %274 = phi <4 x i64> [ %301, %273 ], [ %265, %264 ]
  %275 = phi <4 x i64> [ %290, %273 ], [ %266, %264 ]
  %276 = phi i64 [ %302, %273 ], [ 0, %264 ]
  %277 = shl nuw nsw i64 %276, 6
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 %277
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %279, i32 0, i32 3, i32 1)
  %280 = shl nuw nsw i64 %276, 3
  %281 = getelementptr inbounds nuw i8, ptr %4, i64 %280
  %282 = load <4 x i64>, ptr %278, align 1
  %283 = load <4 x i64>, ptr %281, align 8
  %284 = xor <4 x i64> %283, %282
  %285 = lshr <4 x i64> %284, splat (i64 32)
  %286 = and <4 x i64> %284, splat (i64 4294967295)
  %287 = mul nuw <4 x i64> %286, %285
  %288 = shufflevector <4 x i64> %282, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %289 = add <4 x i64> %275, %288
  %290 = add <4 x i64> %289, %287
  %291 = getelementptr inbounds nuw i8, ptr %278, i64 32
  %292 = load <4 x i64>, ptr %291, align 1
  %293 = getelementptr inbounds nuw i8, ptr %281, i64 32
  %294 = load <4 x i64>, ptr %293, align 8
  %295 = xor <4 x i64> %294, %292
  %296 = lshr <4 x i64> %295, splat (i64 32)
  %297 = and <4 x i64> %295, splat (i64 4294967295)
  %298 = mul nuw <4 x i64> %297, %296
  %299 = shufflevector <4 x i64> %292, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %300 = add <4 x i64> %274, %299
  %301 = add <4 x i64> %300, %298
  %302 = add nuw nsw i64 %276, 1
  %303 = icmp eq i64 %302, %270
  br i1 %303, label %304, label %273

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
  %333 = load i64, ptr %330, align 1
  %334 = xor i64 %333, %332
  %335 = extractelement <4 x i64> %318, i64 1
  %336 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %337 = load i64, ptr %336, align 1
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
  %348 = load i64, ptr %346, align 1
  %349 = xor i64 %348, %347
  %350 = extractelement <4 x i64> %318, i64 3
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %352 = load i64, ptr %351, align 1
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
  %363 = load i64, ptr %361, align 1
  %364 = xor i64 %363, %362
  %365 = extractelement <4 x i64> %329, i64 1
  %366 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %367 = load i64, ptr %366, align 1
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
  %378 = load i64, ptr %376, align 1
  %379 = xor i64 %378, %377
  %380 = extractelement <4 x i64> %329, i64 3
  %381 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %382 = load i64, ptr %381, align 1
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
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #11
  br label %396

396:                                              ; preds = %107, %304
  %397 = phi i64 [ %178, %107 ], [ %395, %304 ]
  ret i64 %397
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { noinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_mergeAccs: argument 1"}
!10 = distinct !{!10, !"XXH3_mergeAccs"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"XXH3_mergeAccs: argument 0"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"XXH3_hashLong_128b_internal: argument 0"}
!15 = distinct !{!15, !"XXH3_hashLong_128b_internal"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"XXH3_hashLong_128b_internal: argument 1"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_mergeAccs: argument 1"}
!20 = distinct !{!20, !"XXH3_mergeAccs"}
!21 = !{!22, !14}
!22 = distinct !{!22, !20, !"XXH3_mergeAccs: argument 0"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_mergeAccs: argument 1"}
!25 = distinct !{!25, !"XXH3_mergeAccs"}
!26 = !{!27, !14}
!27 = distinct !{!27, !25, !"XXH3_mergeAccs: argument 0"}
!28 = !{i64 2152107708}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_mergeAccs: argument 1"}
!31 = distinct !{!31, !"XXH3_mergeAccs"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_mergeAccs: argument 0"}
