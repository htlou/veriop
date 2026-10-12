; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/267bf16/wrap_secret2020.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/267bf16/wrap_secret2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_initsecret(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -4734510112055689544
  %4 = sub i64 2066345149520216444, %1
  %5 = add i64 %1, -2623469361688619810
  %6 = sub i64 2262974939099578482, %1
  %7 = add i64 %1, 8711581037947681227
  %8 = sub i64 2410270004345854594, %1
  %9 = add i64 %1, -8204357891075471176
  %10 = sub i64 5487137525590930912, %1
  %11 = add i64 %1, -3818837453329782724
  %12 = sub i64 -6688317018830679928, %1
  %13 = add i64 %1, 5690594596133299313
  %14 = sub i64 -2833645246901970632, %1
  %15 = add i64 %1, 4554437623014685352
  %16 = sub i64 2111919702937427193, %1
  %17 = add i64 %1, 3556072174620004746
  %18 = sub i64 7238261902898274248, %1
  %19 = add i64 %1, -4329134394285701654
  %20 = sub i64 -1485321483350670907, %1
  %21 = add i64 %1, 5321830579834785047
  %22 = sub i64 -7032137544937171245, %1
  %23 = add i64 %1, -242834301215959509
  %24 = sub i64 -3588858202114426737, %1
  %25 = add i64 %1, 2883454493032893253
  %26 = sub i64 9097354517224871855, %1
  store i64 %3, ptr %0, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %28, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %6, ptr %29, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %7, ptr %30, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %8, ptr %31, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %9, ptr %32, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %10, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %11, ptr %34, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %12, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %13, ptr %36, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %14, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %15, ptr %38, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %16, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %17, ptr %40, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %18, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %19, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %20, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %21, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %22, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %23, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %24, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %25, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %26, ptr %49, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_api_seed_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [88 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %134

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %6, i32 0, i32 3, i32 1)
  %7 = load <4 x i64>, ptr %0, align 1
  %8 = xor <4 x i64> %7, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %9 = bitcast <4 x i64> %8 to <8 x i32>
  %10 = shufflevector <8 x i32> %9, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %12 = and <4 x i64> %8, splat (i64 4294967295)
  %13 = and <4 x i64> %11, splat (i64 4294967295)
  %14 = mul nuw <4 x i64> %13, %12
  %15 = add <4 x i64> %7, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load <4 x i64>, ptr %16, align 1
  %18 = xor <4 x i64> %17, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %19 = bitcast <4 x i64> %18 to <8 x i32>
  %20 = shufflevector <8 x i32> %19, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %21 = bitcast <8 x i32> %20 to <4 x i64>
  %22 = and <4 x i64> %18, splat (i64 4294967295)
  %23 = and <4 x i64> %21, splat (i64 4294967295)
  %24 = mul nuw <4 x i64> %23, %22
  %25 = add <4 x i64> %17, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = load <4 x i64>, ptr %26, align 1
  %29 = xor <4 x i64> %28, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %30 = bitcast <4 x i64> %29 to <8 x i32>
  %31 = shufflevector <8 x i32> %30, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %32 = bitcast <8 x i32> %31 to <4 x i64>
  %33 = and <4 x i64> %29, splat (i64 4294967295)
  %34 = and <4 x i64> %32, splat (i64 4294967295)
  %35 = mul nuw <4 x i64> %34, %33
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %37 = load <4 x i64>, ptr %36, align 1
  %38 = xor <4 x i64> %37, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %39 = bitcast <4 x i64> %38 to <8 x i32>
  %40 = shufflevector <8 x i32> %39, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %41 = bitcast <8 x i32> %40 to <4 x i64>
  %42 = and <4 x i64> %38, splat (i64 4294967295)
  %43 = and <4 x i64> %41, splat (i64 4294967295)
  %44 = mul nuw <4 x i64> %43, %42
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %46, i32 0, i32 3, i32 1)
  %47 = load <4 x i64>, ptr %45, align 1
  %48 = xor <4 x i64> %47, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %49 = bitcast <4 x i64> %48 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = and <4 x i64> %48, splat (i64 4294967295)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, %52
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %56 = load <4 x i64>, ptr %55, align 1
  %57 = xor <4 x i64> %56, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = and <4 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, %61
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %65, i32 0, i32 3, i32 1)
  %66 = load <4 x i64>, ptr %64, align 1
  %67 = xor <4 x i64> %66, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = and <4 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, %71
  %74 = add <4 x i64> %15, %28
  %75 = add <4 x i64> %74, %14
  %76 = add <4 x i64> %75, %47
  %77 = add <4 x i64> %76, %35
  %78 = add <4 x i64> %77, %66
  %79 = add <4 x i64> %78, %54
  %80 = add <4 x i64> %79, %73
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %82 = load <4 x i64>, ptr %81, align 1
  %83 = xor <4 x i64> %82, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %84 = bitcast <4 x i64> %83 to <8 x i32>
  %85 = shufflevector <8 x i32> %84, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %86 = bitcast <8 x i32> %85 to <4 x i64>
  %87 = and <4 x i64> %83, splat (i64 4294967295)
  %88 = and <4 x i64> %86, splat (i64 4294967295)
  %89 = mul nuw <4 x i64> %88, %87
  %90 = add <4 x i64> %25, %37
  %91 = add <4 x i64> %90, %24
  %92 = add <4 x i64> %91, %56
  %93 = add <4 x i64> %92, %44
  %94 = add <4 x i64> %93, %82
  %95 = add <4 x i64> %94, %63
  %96 = add <4 x i64> %95, %89
  %97 = extractelement <4 x i64> %80, i64 0
  %98 = extractelement <4 x i64> %80, i64 1
  %99 = xor i64 %97, 7914194659941938988
  %100 = xor i64 %98, -6611157965513653271
  %101 = zext i64 %99 to i128
  %102 = zext i64 %100 to i128
  %103 = mul nuw i128 %102, %101
  %104 = lshr i128 %103, 64
  %105 = xor i128 %104, %103
  %106 = trunc i128 %105 to i64
  %107 = add i64 %106, 3997421333012711168
  %108 = extractelement <4 x i64> %80, i64 2
  %109 = extractelement <4 x i64> %80, i64 3
  %110 = xor i64 %108, -1839215637059881052
  %111 = xor i64 %109, -3433288310154277810
  %112 = zext i64 %110 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %107, %117
  %119 = extractelement <4 x i64> %96, i64 0
  %120 = extractelement <4 x i64> %96, i64 1
  %121 = xor i64 %119, 5046485836271438973
  %122 = xor i64 %120, -8055285457383852172
  %123 = zext i64 %121 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %118, %128
  %130 = extractelement <4 x i64> %96, i64 2
  %131 = extractelement <4 x i64> %96, i64 3
  %132 = xor i64 %130, 5920048007935066598
  %133 = xor i64 %131, 7336514198459093435
  br label %320

134:                                              ; preds = %2
  %135 = add i64 %1, -4734510112055689544
  store i64 %135, ptr %3, align 8
  %136 = sub i64 2066345149520216444, %1
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %136, ptr %137, align 8
  %138 = add i64 %1, -2623469361688619810
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %138, ptr %139, align 8
  %140 = sub i64 2262974939099578482, %1
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %140, ptr %141, align 8
  %142 = add i64 %1, 8711581037947681227
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %142, ptr %143, align 8
  %144 = sub i64 2410270004345854594, %1
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %144, ptr %145, align 8
  %146 = add i64 %1, -8204357891075471176
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %146, ptr %147, align 8
  %148 = sub i64 5487137525590930912, %1
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %148, ptr %149, align 8
  %150 = add i64 %1, -3818837453329782724
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %150, ptr %151, align 8
  %152 = sub i64 -6688317018830679928, %1
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %152, ptr %153, align 8
  %154 = add i64 %1, 5690594596133299313
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %154, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %156, i32 0, i32 3, i32 1)
  %157 = load <4 x i64>, ptr %0, align 1
  %158 = load <4 x i64>, ptr %3, align 8
  %159 = xor <4 x i64> %158, %157
  %160 = bitcast <4 x i64> %159 to <8 x i32>
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %162 = bitcast <8 x i32> %161 to <4 x i64>
  %163 = and <4 x i64> %159, splat (i64 4294967295)
  %164 = and <4 x i64> %162, splat (i64 4294967295)
  %165 = mul nuw <4 x i64> %164, %163
  %166 = add <4 x i64> %157, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %167 = add <4 x i64> %166, %165
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %169 = load <4 x i64>, ptr %168, align 1
  %170 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %171 = load <4 x i64>, ptr %170, align 8
  %172 = xor <4 x i64> %171, %169
  %173 = bitcast <4 x i64> %172 to <8 x i32>
  %174 = shufflevector <8 x i32> %173, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %175 = bitcast <8 x i32> %174 to <4 x i64>
  %176 = and <4 x i64> %172, splat (i64 4294967295)
  %177 = and <4 x i64> %175, splat (i64 4294967295)
  %178 = mul nuw <4 x i64> %177, %176
  %179 = add <4 x i64> %169, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %180 = add <4 x i64> %179, %178
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %182, i32 0, i32 3, i32 1)
  %183 = load <4 x i64>, ptr %181, align 1
  %184 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %185 = load <4 x i64>, ptr %184, align 8
  %186 = xor <4 x i64> %185, %183
  %187 = bitcast <4 x i64> %186 to <8 x i32>
  %188 = shufflevector <8 x i32> %187, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %189 = bitcast <8 x i32> %188 to <4 x i64>
  %190 = and <4 x i64> %186, splat (i64 4294967295)
  %191 = and <4 x i64> %189, splat (i64 4294967295)
  %192 = mul nuw <4 x i64> %191, %190
  %193 = add <4 x i64> %167, %183
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %195 = load <4 x i64>, ptr %194, align 1
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %197 = load <4 x i64>, ptr %196, align 8
  %198 = xor <4 x i64> %197, %195
  %199 = bitcast <4 x i64> %198 to <8 x i32>
  %200 = shufflevector <8 x i32> %199, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %201 = bitcast <8 x i32> %200 to <4 x i64>
  %202 = and <4 x i64> %198, splat (i64 4294967295)
  %203 = and <4 x i64> %201, splat (i64 4294967295)
  %204 = mul nuw <4 x i64> %203, %202
  %205 = add <4 x i64> %180, %195
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %207, i32 0, i32 3, i32 1)
  %208 = load <4 x i64>, ptr %206, align 1
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %210 = load <4 x i64>, ptr %209, align 8
  %211 = xor <4 x i64> %210, %208
  %212 = bitcast <4 x i64> %211 to <8 x i32>
  %213 = shufflevector <8 x i32> %212, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %214 = bitcast <8 x i32> %213 to <4 x i64>
  %215 = and <4 x i64> %211, splat (i64 4294967295)
  %216 = and <4 x i64> %214, splat (i64 4294967295)
  %217 = mul nuw <4 x i64> %216, %215
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %219 = load <4 x i64>, ptr %218, align 1
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %221 = load <4 x i64>, ptr %220, align 8
  %222 = xor <4 x i64> %221, %219
  %223 = bitcast <4 x i64> %222 to <8 x i32>
  %224 = shufflevector <8 x i32> %223, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %225 = bitcast <8 x i32> %224 to <4 x i64>
  %226 = and <4 x i64> %222, splat (i64 4294967295)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %230, i32 0, i32 3, i32 1)
  %231 = load <4 x i64>, ptr %229, align 1
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %233 = load <4 x i64>, ptr %232, align 8
  %234 = xor <4 x i64> %233, %231
  %235 = bitcast <4 x i64> %234 to <8 x i32>
  %236 = shufflevector <8 x i32> %235, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %237 = bitcast <8 x i32> %236 to <4 x i64>
  %238 = and <4 x i64> %234, splat (i64 4294967295)
  %239 = and <4 x i64> %237, splat (i64 4294967295)
  %240 = mul nuw <4 x i64> %239, %238
  %241 = add <4 x i64> %193, %208
  %242 = add <4 x i64> %241, %192
  %243 = add <4 x i64> %242, %231
  %244 = add <4 x i64> %243, %217
  %245 = add <4 x i64> %244, %240
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %247 = load <4 x i64>, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %249 = load <4 x i64>, ptr %248, align 8
  %250 = xor <4 x i64> %249, %247
  %251 = bitcast <4 x i64> %250 to <8 x i32>
  %252 = shufflevector <8 x i32> %251, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %253 = bitcast <8 x i32> %252 to <4 x i64>
  %254 = and <4 x i64> %250, splat (i64 4294967295)
  %255 = and <4 x i64> %253, splat (i64 4294967295)
  %256 = mul nuw <4 x i64> %255, %254
  %257 = add <4 x i64> %205, %219
  %258 = add <4 x i64> %257, %204
  %259 = add <4 x i64> %258, %247
  %260 = add <4 x i64> %259, %228
  %261 = add <4 x i64> %260, %256
  %262 = extractelement <4 x i64> %245, i64 0
  %263 = extractelement <4 x i64> %245, i64 1
  %264 = bitcast <4 x i64> %185 to i256
  %265 = lshr i256 %264, 24
  %266 = trunc i256 %265 to i64
  %267 = bitcast <4 x i64> %210 to i256
  %268 = lshr i256 %267, 24
  %269 = trunc i256 %268 to i64
  %270 = xor i64 %262, %266
  %271 = xor i64 %263, %269
  %272 = zext i64 %270 to i128
  %273 = zext i64 %271 to i128
  %274 = mul nuw i128 %273, %272
  %275 = lshr i128 %274, 64
  %276 = xor i128 %275, %274
  %277 = trunc i128 %276 to i64
  %278 = add i64 %277, 3997421333012711168
  %279 = extractelement <4 x i64> %245, i64 2
  %280 = extractelement <4 x i64> %245, i64 3
  %281 = bitcast <4 x i64> %233 to i256
  %282 = lshr i256 %281, 24
  %283 = trunc i256 %282 to i64
  %284 = lshr i256 %281, 88
  %285 = trunc i256 %284 to i64
  %286 = xor i64 %279, %283
  %287 = xor i64 %280, %285
  %288 = zext i64 %286 to i128
  %289 = zext i64 %287 to i128
  %290 = mul nuw i128 %289, %288
  %291 = lshr i128 %290, 64
  %292 = xor i128 %291, %290
  %293 = trunc i128 %292 to i64
  %294 = add i64 %278, %293
  %295 = extractelement <4 x i64> %261, i64 0
  %296 = extractelement <4 x i64> %261, i64 1
  %297 = lshr i256 %281, 152
  %298 = trunc i256 %297 to i64
  %299 = bitcast <4 x i64> %221 to i256
  %300 = lshr i256 %299, 24
  %301 = trunc i256 %300 to i64
  %302 = xor i64 %295, %298
  %303 = xor i64 %296, %301
  %304 = zext i64 %302 to i128
  %305 = zext i64 %303 to i128
  %306 = mul nuw i128 %305, %304
  %307 = lshr i128 %306, 64
  %308 = xor i128 %307, %306
  %309 = trunc i128 %308 to i64
  %310 = add i64 %294, %309
  %311 = extractelement <4 x i64> %261, i64 2
  %312 = extractelement <4 x i64> %261, i64 3
  %313 = bitcast <4 x i64> %249 to i256
  %314 = lshr i256 %313, 24
  %315 = trunc i256 %314 to i64
  %316 = lshr i256 %313, 88
  %317 = trunc i256 %316 to i64
  %318 = xor i64 %311, %315
  %319 = xor i64 %312, %317
  br label %320

320:                                              ; preds = %5, %134
  %321 = phi i64 [ %318, %134 ], [ %132, %5 ]
  %322 = phi i64 [ %319, %134 ], [ %133, %5 ]
  %323 = phi i64 [ %310, %134 ], [ %129, %5 ]
  %324 = zext i64 %321 to i128
  %325 = zext i64 %322 to i128
  %326 = mul nuw i128 %325, %324
  %327 = lshr i128 %326, 64
  %328 = xor i128 %327, %326
  %329 = trunc i128 %328 to i64
  %330 = add i64 %323, %329
  %331 = lshr i64 %330, 37
  %332 = xor i64 %331, %330
  %333 = mul i64 %332, 1609587791953885689
  %334 = lshr i64 %333, 32
  %335 = xor i64 %334, %333
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %335
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8, !9, !11, !12}
!6 = distinct !{!6, !7, !"XXH3_accumulate: argument 0"}
!7 = distinct !{!7, !"XXH3_accumulate"}
!8 = distinct !{!8, !7, !"XXH3_accumulate: argument 2"}
!9 = distinct !{!9, !10, !"XXH3_hashLong_internal_loop: argument 0"}
!10 = distinct !{!10, !"XXH3_hashLong_internal_loop"}
!11 = distinct !{!11, !10, !"XXH3_hashLong_internal_loop: argument 2"}
!12 = distinct !{!12, !13, !"XXH3_hashLong_64b_internal: argument 1"}
!13 = distinct !{!13, !"XXH3_hashLong_64b_internal"}
!14 = !{!15, !17, !18, !19, !20}
!15 = distinct !{!15, !16, !"XXH3_accumulate_512: argument 1"}
!16 = distinct !{!16, !"XXH3_accumulate_512"}
!17 = distinct !{!17, !7, !"XXH3_accumulate: argument 1"}
!18 = distinct !{!18, !10, !"XXH3_hashLong_internal_loop: argument 1"}
!19 = distinct !{!19, !13, !"XXH3_hashLong_64b_internal: argument 0"}
!20 = distinct !{!20, !21, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!21 = distinct !{!21, !"XXH3_hashLong_64b_defaultSecret"}
!22 = !{!23, !24, !6, !8, !9, !11, !12}
!23 = distinct !{!23, !16, !"XXH3_accumulate_512: argument 0"}
!24 = distinct !{!24, !16, !"XXH3_accumulate_512: argument 2"}
!25 = !{!26, !17, !18, !19, !20}
!26 = distinct !{!26, !16, !"XXH3_accumulate_512: argument 1:It1"}
!27 = !{!28, !29, !6, !8, !9, !11, !12}
!28 = distinct !{!28, !16, !"XXH3_accumulate_512: argument 0:It1"}
!29 = distinct !{!29, !16, !"XXH3_accumulate_512: argument 2:It1"}
!30 = !{!31, !17, !18, !19, !20}
!31 = distinct !{!31, !16, !"XXH3_accumulate_512: argument 1:It2"}
!32 = !{!33, !34, !6, !8, !9, !11, !12}
!33 = distinct !{!33, !16, !"XXH3_accumulate_512: argument 0:It2"}
!34 = distinct !{!34, !16, !"XXH3_accumulate_512: argument 2:It2"}
!35 = !{!36, !17, !18, !19, !20}
!36 = distinct !{!36, !16, !"XXH3_accumulate_512: argument 1:It3"}
!37 = !{!38, !39, !6, !8, !9, !11, !12}
!38 = distinct !{!38, !16, !"XXH3_accumulate_512: argument 0:It3"}
!39 = distinct !{!39, !16, !"XXH3_accumulate_512: argument 2:It3"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_hashLong_64b_internal: argument 0"}
!42 = distinct !{!42, !"XXH3_hashLong_64b_internal"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"XXH3_hashLong_64b_internal: argument 1"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_hashLong_internal_loop: argument 1"}
!47 = distinct !{!47, !"XXH3_hashLong_internal_loop"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"XXH3_hashLong_internal_loop: argument 2"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"XXH3_accumulate: argument 1"}
!52 = distinct !{!52, !"XXH3_accumulate"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"XXH3_accumulate: argument 2"}
!55 = !{!56, !54, !57, !49, !44}
!56 = distinct !{!56, !52, !"XXH3_accumulate: argument 0"}
!57 = distinct !{!57, !47, !"XXH3_hashLong_internal_loop: argument 0"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_accumulate_512: argument 1"}
!60 = distinct !{!60, !"XXH3_accumulate_512"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"XXH3_accumulate_512: argument 2"}
!63 = !{!59, !51, !46, !41}
!64 = !{!65, !62, !56, !54, !57, !49, !44}
!65 = distinct !{!65, !60, !"XXH3_accumulate_512: argument 0"}
!66 = !{!62, !54, !49, !44}
!67 = !{!65, !59, !56, !51, !57, !46, !41}
!68 = !{!69}
!69 = distinct !{!69, !60, !"XXH3_accumulate_512: argument 1:It1"}
!70 = !{!71}
!71 = distinct !{!71, !60, !"XXH3_accumulate_512: argument 2:It1"}
!72 = !{!69, !51, !46, !41}
!73 = !{!74, !71, !56, !54, !57, !49, !44}
!74 = distinct !{!74, !60, !"XXH3_accumulate_512: argument 0:It1"}
!75 = !{!71, !54, !49, !44}
!76 = !{!74, !69, !56, !51, !57, !46, !41}
!77 = !{!78, !51, !46, !41}
!78 = distinct !{!78, !60, !"XXH3_accumulate_512: argument 1:It2"}
!79 = !{!80, !81, !56, !54, !57, !49, !44}
!80 = distinct !{!80, !60, !"XXH3_accumulate_512: argument 0:It2"}
!81 = distinct !{!81, !60, !"XXH3_accumulate_512: argument 2:It2"}
!82 = !{!83, !51, !46, !41}
!83 = distinct !{!83, !60, !"XXH3_accumulate_512: argument 1:It3"}
!84 = !{!85, !86, !56, !54, !57, !49, !44}
!85 = distinct !{!85, !60, !"XXH3_accumulate_512: argument 0:It3"}
!86 = distinct !{!86, !60, !"XXH3_accumulate_512: argument 2:It3"}
