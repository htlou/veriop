; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/267bf16/wrap_secret2020.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/267bf16/wrap_secret2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

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
  %3 = alloca [88 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %190

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %6, i32 0, i32 3, i32 1)
  %7 = load <2 x i64>, ptr %0, align 1
  %8 = add <2 x i64> %7, <i64 3266489917, i64 -7046029288634856825>
  %9 = xor <2 x i64> %7, <i64 -4734510112055689544, i64 2066345149520216444>
  %10 = trunc <2 x i64> %9 to <2 x i32>
  %11 = lshr <2 x i64> %9, splat (i64 32)
  %12 = trunc nuw <2 x i64> %11 to <2 x i32>
  %13 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %10, <2 x i32> %12)
  %14 = add <2 x i64> %8, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 1
  %17 = add <2 x i64> %16, <i64 -4417276706812531889, i64 1609587929392839161>
  %18 = xor <2 x i64> %16, <i64 -2623469361688619810, i64 2262974939099578482>
  %19 = trunc <2 x i64> %18 to <2 x i32>
  %20 = lshr <2 x i64> %18, splat (i64 32)
  %21 = trunc nuw <2 x i64> %20 to <2 x i32>
  %22 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %19, <2 x i32> %21)
  %23 = add <2 x i64> %17, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %25 = load <2 x i64>, ptr %24, align 1
  %26 = add <2 x i64> %25, <i64 -8796714831421723037, i64 2246822519>
  %27 = xor <2 x i64> %25, <i64 8711581037947681227, i64 2410270004345854594>
  %28 = trunc <2 x i64> %27 to <2 x i32>
  %29 = lshr <2 x i64> %27, splat (i64 32)
  %30 = trunc nuw <2 x i64> %29 to <2 x i32>
  %31 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %28, <2 x i32> %30)
  %32 = add <2 x i64> %26, %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %34 = load <2 x i64>, ptr %33, align 1
  %35 = add <2 x i64> %34, <i64 2870177450012600261, i64 2654435761>
  %36 = xor <2 x i64> %34, <i64 -8204357891075471176, i64 5487137525590930912>
  %37 = trunc <2 x i64> %36 to <2 x i32>
  %38 = lshr <2 x i64> %36, splat (i64 32)
  %39 = trunc nuw <2 x i64> %38 to <2 x i32>
  %40 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %37, <2 x i32> %39)
  %41 = add <2 x i64> %35, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %43, i32 0, i32 3, i32 1)
  %44 = load <2 x i64>, ptr %42, align 1
  %45 = add <2 x i64> %14, %44
  %46 = xor <2 x i64> %44, <i64 2066345149520216444, i64 -2623469361688619810>
  %47 = trunc <2 x i64> %46 to <2 x i32>
  %48 = lshr <2 x i64> %46, splat (i64 32)
  %49 = trunc nuw <2 x i64> %48 to <2 x i32>
  %50 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %47, <2 x i32> %49)
  %51 = add <2 x i64> %45, %50
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %53 = load <2 x i64>, ptr %52, align 1
  %54 = add <2 x i64> %23, %53
  %55 = xor <2 x i64> %53, <i64 2262974939099578482, i64 8711581037947681227>
  %56 = trunc <2 x i64> %55 to <2 x i32>
  %57 = lshr <2 x i64> %55, splat (i64 32)
  %58 = trunc nuw <2 x i64> %57 to <2 x i32>
  %59 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %56, <2 x i32> %58)
  %60 = add <2 x i64> %54, %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %62 = load <2 x i64>, ptr %61, align 1
  %63 = add <2 x i64> %32, %62
  %64 = xor <2 x i64> %62, <i64 2410270004345854594, i64 -8204357891075471176>
  %65 = trunc <2 x i64> %64 to <2 x i32>
  %66 = lshr <2 x i64> %64, splat (i64 32)
  %67 = trunc nuw <2 x i64> %66 to <2 x i32>
  %68 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %65, <2 x i32> %67)
  %69 = add <2 x i64> %63, %68
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %71 = load <2 x i64>, ptr %70, align 1
  %72 = add <2 x i64> %41, %71
  %73 = xor <2 x i64> %71, <i64 5487137525590930912, i64 -3818837453329782724>
  %74 = trunc <2 x i64> %73 to <2 x i32>
  %75 = lshr <2 x i64> %73, splat (i64 32)
  %76 = trunc nuw <2 x i64> %75 to <2 x i32>
  %77 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %74, <2 x i32> %76)
  %78 = add <2 x i64> %72, %77
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %80, i32 0, i32 3, i32 1)
  %81 = load <2 x i64>, ptr %79, align 1
  %82 = add <2 x i64> %51, %81
  %83 = xor <2 x i64> %81, <i64 -2623469361688619810, i64 2262974939099578482>
  %84 = trunc <2 x i64> %83 to <2 x i32>
  %85 = lshr <2 x i64> %83, splat (i64 32)
  %86 = trunc nuw <2 x i64> %85 to <2 x i32>
  %87 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %84, <2 x i32> %86)
  %88 = add <2 x i64> %82, %87
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %90 = load <2 x i64>, ptr %89, align 1
  %91 = add <2 x i64> %60, %90
  %92 = xor <2 x i64> %90, <i64 8711581037947681227, i64 2410270004345854594>
  %93 = trunc <2 x i64> %92 to <2 x i32>
  %94 = lshr <2 x i64> %92, splat (i64 32)
  %95 = trunc nuw <2 x i64> %94 to <2 x i32>
  %96 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %93, <2 x i32> %95)
  %97 = add <2 x i64> %91, %96
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %99 = load <2 x i64>, ptr %98, align 1
  %100 = add <2 x i64> %69, %99
  %101 = xor <2 x i64> %99, <i64 -8204357891075471176, i64 5487137525590930912>
  %102 = trunc <2 x i64> %101 to <2 x i32>
  %103 = lshr <2 x i64> %101, splat (i64 32)
  %104 = trunc nuw <2 x i64> %103 to <2 x i32>
  %105 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %102, <2 x i32> %104)
  %106 = add <2 x i64> %100, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %108 = load <2 x i64>, ptr %107, align 1
  %109 = add <2 x i64> %78, %108
  %110 = xor <2 x i64> %108, <i64 -3818837453329782724, i64 -6688317018830679928>
  %111 = trunc <2 x i64> %110 to <2 x i32>
  %112 = lshr <2 x i64> %110, splat (i64 32)
  %113 = trunc nuw <2 x i64> %112 to <2 x i32>
  %114 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %111, <2 x i32> %113)
  %115 = add <2 x i64> %109, %114
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %117, i32 0, i32 3, i32 1)
  %118 = load <2 x i64>, ptr %116, align 1
  %119 = add <2 x i64> %88, %118
  %120 = xor <2 x i64> %118, <i64 2262974939099578482, i64 8711581037947681227>
  %121 = trunc <2 x i64> %120 to <2 x i32>
  %122 = lshr <2 x i64> %120, splat (i64 32)
  %123 = trunc nuw <2 x i64> %122 to <2 x i32>
  %124 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %121, <2 x i32> %123)
  %125 = add <2 x i64> %119, %124
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %127 = load <2 x i64>, ptr %126, align 1
  %128 = add <2 x i64> %97, %127
  %129 = xor <2 x i64> %127, <i64 2410270004345854594, i64 -8204357891075471176>
  %130 = trunc <2 x i64> %129 to <2 x i32>
  %131 = lshr <2 x i64> %129, splat (i64 32)
  %132 = trunc nuw <2 x i64> %131 to <2 x i32>
  %133 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %130, <2 x i32> %132)
  %134 = add <2 x i64> %128, %133
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %136 = load <2 x i64>, ptr %135, align 1
  %137 = add <2 x i64> %106, %136
  %138 = xor <2 x i64> %136, <i64 5487137525590930912, i64 -3818837453329782724>
  %139 = trunc <2 x i64> %138 to <2 x i32>
  %140 = lshr <2 x i64> %138, splat (i64 32)
  %141 = trunc nuw <2 x i64> %140 to <2 x i32>
  %142 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %139, <2 x i32> %141)
  %143 = add <2 x i64> %137, %142
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %145 = load <2 x i64>, ptr %144, align 1
  %146 = add <2 x i64> %115, %145
  %147 = xor <2 x i64> %145, <i64 -6688317018830679928, i64 5690594596133299313>
  %148 = trunc <2 x i64> %147 to <2 x i32>
  %149 = lshr <2 x i64> %147, splat (i64 32)
  %150 = trunc nuw <2 x i64> %149 to <2 x i32>
  %151 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %148, <2 x i32> %150)
  %152 = add <2 x i64> %146, %151
  %153 = extractelement <2 x i64> %125, i64 0
  %154 = extractelement <2 x i64> %125, i64 1
  %155 = xor i64 %153, 7914194659941938988
  %156 = xor i64 %154, -6611157965513653271
  %157 = zext i64 %155 to i128
  %158 = zext i64 %156 to i128
  %159 = mul nuw i128 %158, %157
  %160 = lshr i128 %159, 64
  %161 = xor i128 %160, %159
  %162 = trunc i128 %161 to i64
  %163 = add i64 %162, 3997421333012711168
  %164 = extractelement <2 x i64> %134, i64 0
  %165 = extractelement <2 x i64> %134, i64 1
  %166 = xor i64 %164, -1839215637059881052
  %167 = xor i64 %165, -3433288310154277810
  %168 = zext i64 %166 to i128
  %169 = zext i64 %167 to i128
  %170 = mul nuw i128 %169, %168
  %171 = lshr i128 %170, 64
  %172 = xor i128 %171, %170
  %173 = trunc i128 %172 to i64
  %174 = add i64 %163, %173
  %175 = extractelement <2 x i64> %143, i64 0
  %176 = extractelement <2 x i64> %143, i64 1
  %177 = xor i64 %175, 5046485836271438973
  %178 = xor i64 %176, -8055285457383852172
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %174, %184
  %186 = extractelement <2 x i64> %152, i64 0
  %187 = extractelement <2 x i64> %152, i64 1
  %188 = xor i64 %186, 5920048007935066598
  %189 = xor i64 %187, 7336514198459093435
  br label %463

190:                                              ; preds = %2
  %191 = add i64 %1, -4734510112055689544
  store i64 %191, ptr %3, align 16
  %192 = sub i64 2066345149520216444, %1
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %192, ptr %193, align 8
  %194 = add i64 %1, -2623469361688619810
  %195 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %194, ptr %195, align 16
  %196 = sub i64 2262974939099578482, %1
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %196, ptr %197, align 8
  %198 = add i64 %1, 8711581037947681227
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %198, ptr %199, align 16
  %200 = sub i64 2410270004345854594, %1
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %200, ptr %201, align 8
  %202 = add i64 %1, -8204357891075471176
  %203 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %202, ptr %203, align 16
  %204 = sub i64 5487137525590930912, %1
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %204, ptr %205, align 8
  %206 = add i64 %1, -3818837453329782724
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %206, ptr %207, align 16
  %208 = sub i64 -6688317018830679928, %1
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %208, ptr %209, align 8
  %210 = add i64 %1, 5690594596133299313
  %211 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %210, ptr %211, align 16
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %212, i32 0, i32 3, i32 1)
  %213 = load <16 x i8>, ptr %0, align 1
  %214 = load <16 x i8>, ptr %3, align 16
  %215 = bitcast <16 x i8> %213 to <2 x i64>
  %216 = add <2 x i64> %215, <i64 3266489917, i64 -7046029288634856825>
  %217 = xor <16 x i8> %214, %213
  %218 = bitcast <16 x i8> %217 to <2 x i64>
  %219 = trunc <2 x i64> %218 to <2 x i32>
  %220 = lshr <2 x i64> %218, splat (i64 32)
  %221 = trunc nuw <2 x i64> %220 to <2 x i32>
  %222 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %219, <2 x i32> %221)
  %223 = add <2 x i64> %216, %222
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %225 = load <16 x i8>, ptr %224, align 1
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %227 = load <16 x i8>, ptr %226, align 16
  %228 = bitcast <16 x i8> %225 to <2 x i64>
  %229 = add <2 x i64> %228, <i64 -4417276706812531889, i64 1609587929392839161>
  %230 = xor <16 x i8> %227, %225
  %231 = bitcast <16 x i8> %230 to <2 x i64>
  %232 = trunc <2 x i64> %231 to <2 x i32>
  %233 = lshr <2 x i64> %231, splat (i64 32)
  %234 = trunc nuw <2 x i64> %233 to <2 x i32>
  %235 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %232, <2 x i32> %234)
  %236 = add <2 x i64> %229, %235
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %238 = load <16 x i8>, ptr %237, align 1
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %240 = load <16 x i8>, ptr %239, align 16
  %241 = bitcast <16 x i8> %238 to <2 x i64>
  %242 = add <2 x i64> %241, <i64 -8796714831421723037, i64 2246822519>
  %243 = xor <16 x i8> %240, %238
  %244 = bitcast <16 x i8> %243 to <2 x i64>
  %245 = trunc <2 x i64> %244 to <2 x i32>
  %246 = lshr <2 x i64> %244, splat (i64 32)
  %247 = trunc nuw <2 x i64> %246 to <2 x i32>
  %248 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %245, <2 x i32> %247)
  %249 = add <2 x i64> %242, %248
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %251 = load <16 x i8>, ptr %250, align 1
  %252 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %253 = load <16 x i8>, ptr %252, align 16
  %254 = bitcast <16 x i8> %251 to <2 x i64>
  %255 = add <2 x i64> %254, <i64 2870177450012600261, i64 2654435761>
  %256 = xor <16 x i8> %253, %251
  %257 = bitcast <16 x i8> %256 to <2 x i64>
  %258 = trunc <2 x i64> %257 to <2 x i32>
  %259 = lshr <2 x i64> %257, splat (i64 32)
  %260 = trunc nuw <2 x i64> %259 to <2 x i32>
  %261 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %258, <2 x i32> %260)
  %262 = add <2 x i64> %255, %261
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %264, i32 0, i32 3, i32 1)
  %265 = load <16 x i8>, ptr %263, align 1
  %266 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %267 = load <16 x i8>, ptr %266, align 8
  %268 = bitcast <16 x i8> %265 to <2 x i64>
  %269 = add <2 x i64> %223, %268
  %270 = xor <16 x i8> %267, %265
  %271 = bitcast <16 x i8> %270 to <2 x i64>
  %272 = trunc <2 x i64> %271 to <2 x i32>
  %273 = lshr <2 x i64> %271, splat (i64 32)
  %274 = trunc nuw <2 x i64> %273 to <2 x i32>
  %275 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %272, <2 x i32> %274)
  %276 = add <2 x i64> %269, %275
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %278 = load <16 x i8>, ptr %277, align 1
  %279 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %280 = load <16 x i8>, ptr %279, align 8
  %281 = bitcast <16 x i8> %278 to <2 x i64>
  %282 = add <2 x i64> %236, %281
  %283 = xor <16 x i8> %280, %278
  %284 = bitcast <16 x i8> %283 to <2 x i64>
  %285 = trunc <2 x i64> %284 to <2 x i32>
  %286 = lshr <2 x i64> %284, splat (i64 32)
  %287 = trunc nuw <2 x i64> %286 to <2 x i32>
  %288 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %285, <2 x i32> %287)
  %289 = add <2 x i64> %282, %288
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %291 = load <16 x i8>, ptr %290, align 1
  %292 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %293 = load <16 x i8>, ptr %292, align 8
  %294 = bitcast <16 x i8> %291 to <2 x i64>
  %295 = add <2 x i64> %249, %294
  %296 = xor <16 x i8> %293, %291
  %297 = bitcast <16 x i8> %296 to <2 x i64>
  %298 = trunc <2 x i64> %297 to <2 x i32>
  %299 = lshr <2 x i64> %297, splat (i64 32)
  %300 = trunc nuw <2 x i64> %299 to <2 x i32>
  %301 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %298, <2 x i32> %300)
  %302 = add <2 x i64> %295, %301
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %304 = load <16 x i8>, ptr %303, align 1
  %305 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %306 = load <16 x i8>, ptr %305, align 8
  %307 = bitcast <16 x i8> %304 to <2 x i64>
  %308 = add <2 x i64> %262, %307
  %309 = xor <16 x i8> %306, %304
  %310 = bitcast <16 x i8> %309 to <2 x i64>
  %311 = trunc <2 x i64> %310 to <2 x i32>
  %312 = lshr <2 x i64> %310, splat (i64 32)
  %313 = trunc nuw <2 x i64> %312 to <2 x i32>
  %314 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %311, <2 x i32> %313)
  %315 = add <2 x i64> %308, %314
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %317, i32 0, i32 3, i32 1)
  %318 = load <16 x i8>, ptr %316, align 1
  %319 = bitcast <16 x i8> %318 to <2 x i64>
  %320 = add <2 x i64> %276, %319
  %321 = xor <16 x i8> %318, %227
  %322 = bitcast <16 x i8> %321 to <2 x i64>
  %323 = trunc <2 x i64> %322 to <2 x i32>
  %324 = lshr <2 x i64> %322, splat (i64 32)
  %325 = trunc nuw <2 x i64> %324 to <2 x i32>
  %326 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %323, <2 x i32> %325)
  %327 = add <2 x i64> %320, %326
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %329 = load <16 x i8>, ptr %328, align 1
  %330 = bitcast <16 x i8> %329 to <2 x i64>
  %331 = add <2 x i64> %289, %330
  %332 = xor <16 x i8> %329, %240
  %333 = bitcast <16 x i8> %332 to <2 x i64>
  %334 = trunc <2 x i64> %333 to <2 x i32>
  %335 = lshr <2 x i64> %333, splat (i64 32)
  %336 = trunc nuw <2 x i64> %335 to <2 x i32>
  %337 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %334, <2 x i32> %336)
  %338 = add <2 x i64> %331, %337
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %340 = load <16 x i8>, ptr %339, align 1
  %341 = bitcast <16 x i8> %340 to <2 x i64>
  %342 = add <2 x i64> %302, %341
  %343 = xor <16 x i8> %340, %253
  %344 = bitcast <16 x i8> %343 to <2 x i64>
  %345 = trunc <2 x i64> %344 to <2 x i32>
  %346 = lshr <2 x i64> %344, splat (i64 32)
  %347 = trunc nuw <2 x i64> %346 to <2 x i32>
  %348 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %345, <2 x i32> %347)
  %349 = add <2 x i64> %342, %348
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %351 = load <16 x i8>, ptr %350, align 1
  %352 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %353 = load <16 x i8>, ptr %352, align 16
  %354 = bitcast <16 x i8> %351 to <2 x i64>
  %355 = add <2 x i64> %315, %354
  %356 = xor <16 x i8> %353, %351
  %357 = bitcast <16 x i8> %356 to <2 x i64>
  %358 = trunc <2 x i64> %357 to <2 x i32>
  %359 = lshr <2 x i64> %357, splat (i64 32)
  %360 = trunc nuw <2 x i64> %359 to <2 x i32>
  %361 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %358, <2 x i32> %360)
  %362 = add <2 x i64> %355, %361
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %364, i32 0, i32 3, i32 1)
  %365 = load <16 x i8>, ptr %363, align 1
  %366 = bitcast <16 x i8> %365 to <2 x i64>
  %367 = add <2 x i64> %327, %366
  %368 = xor <16 x i8> %365, %280
  %369 = bitcast <16 x i8> %368 to <2 x i64>
  %370 = trunc <2 x i64> %369 to <2 x i32>
  %371 = lshr <2 x i64> %369, splat (i64 32)
  %372 = trunc nuw <2 x i64> %371 to <2 x i32>
  %373 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %370, <2 x i32> %372)
  %374 = add <2 x i64> %367, %373
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %376 = load <16 x i8>, ptr %375, align 1
  %377 = bitcast <16 x i8> %376 to <2 x i64>
  %378 = add <2 x i64> %338, %377
  %379 = xor <16 x i8> %376, %293
  %380 = bitcast <16 x i8> %379 to <2 x i64>
  %381 = trunc <2 x i64> %380 to <2 x i32>
  %382 = lshr <2 x i64> %380, splat (i64 32)
  %383 = trunc nuw <2 x i64> %382 to <2 x i32>
  %384 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %381, <2 x i32> %383)
  %385 = add <2 x i64> %378, %384
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %387 = load <16 x i8>, ptr %386, align 1
  %388 = bitcast <16 x i8> %387 to <2 x i64>
  %389 = add <2 x i64> %349, %388
  %390 = xor <16 x i8> %387, %306
  %391 = bitcast <16 x i8> %390 to <2 x i64>
  %392 = trunc <2 x i64> %391 to <2 x i32>
  %393 = lshr <2 x i64> %391, splat (i64 32)
  %394 = trunc nuw <2 x i64> %393 to <2 x i32>
  %395 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %392, <2 x i32> %394)
  %396 = add <2 x i64> %389, %395
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %398 = load <16 x i8>, ptr %397, align 1
  %399 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %400 = load <16 x i8>, ptr %399, align 8
  %401 = bitcast <16 x i8> %398 to <2 x i64>
  %402 = add <2 x i64> %362, %401
  %403 = xor <16 x i8> %400, %398
  %404 = bitcast <16 x i8> %403 to <2 x i64>
  %405 = trunc <2 x i64> %404 to <2 x i32>
  %406 = lshr <2 x i64> %404, splat (i64 32)
  %407 = trunc nuw <2 x i64> %406 to <2 x i32>
  %408 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %405, <2 x i32> %407)
  %409 = add <2 x i64> %402, %408
  %410 = extractelement <2 x i64> %374, i64 0
  %411 = extractelement <2 x i64> %374, i64 1
  %412 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %413 = load i64, ptr %412, align 1
  %414 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %415 = load i64, ptr %414, align 1
  %416 = xor i64 %413, %410
  %417 = xor i64 %415, %411
  %418 = zext i64 %416 to i128
  %419 = zext i64 %417 to i128
  %420 = mul nuw i128 %419, %418
  %421 = lshr i128 %420, 64
  %422 = xor i128 %421, %420
  %423 = trunc i128 %422 to i64
  %424 = add i64 %423, 3997421333012711168
  %425 = extractelement <2 x i64> %385, i64 0
  %426 = extractelement <2 x i64> %385, i64 1
  %427 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %428, %425
  %432 = xor i64 %430, %426
  %433 = zext i64 %431 to i128
  %434 = zext i64 %432 to i128
  %435 = mul nuw i128 %434, %433
  %436 = lshr i128 %435, 64
  %437 = xor i128 %436, %435
  %438 = trunc i128 %437 to i64
  %439 = add i64 %424, %438
  %440 = extractelement <2 x i64> %396, i64 0
  %441 = extractelement <2 x i64> %396, i64 1
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %443 = load i64, ptr %442, align 1
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %445 = load i64, ptr %444, align 1
  %446 = xor i64 %443, %440
  %447 = xor i64 %445, %441
  %448 = zext i64 %446 to i128
  %449 = zext i64 %447 to i128
  %450 = mul nuw i128 %449, %448
  %451 = lshr i128 %450, 64
  %452 = xor i128 %451, %450
  %453 = trunc i128 %452 to i64
  %454 = add i64 %439, %453
  %455 = extractelement <2 x i64> %409, i64 0
  %456 = extractelement <2 x i64> %409, i64 1
  %457 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %458 = load i64, ptr %457, align 1
  %459 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %460 = load i64, ptr %459, align 1
  %461 = xor i64 %458, %455
  %462 = xor i64 %460, %456
  br label %463

463:                                              ; preds = %5, %190
  %464 = phi i64 [ %461, %190 ], [ %188, %5 ]
  %465 = phi i64 [ %462, %190 ], [ %189, %5 ]
  %466 = phi i64 [ %454, %190 ], [ %185, %5 ]
  %467 = zext i64 %464 to i128
  %468 = zext i64 %465 to i128
  %469 = mul nuw i128 %468, %467
  %470 = lshr i128 %469, 64
  %471 = xor i128 %470, %469
  %472 = trunc i128 %471 to i64
  %473 = add i64 %466, %472
  %474 = lshr i64 %473, 37
  %475 = xor i64 %474, %473
  %476 = mul i64 %475, 1609587791953885689
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %478
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!7, !9, !10, !12, !13}
!7 = distinct !{!7, !8, !"XXH3_accumulate: argument 0"}
!8 = distinct !{!8, !"XXH3_accumulate"}
!9 = distinct !{!9, !8, !"XXH3_accumulate: argument 2"}
!10 = distinct !{!10, !11, !"XXH3_hashLong_internal_loop: argument 0"}
!11 = distinct !{!11, !"XXH3_hashLong_internal_loop"}
!12 = distinct !{!12, !11, !"XXH3_hashLong_internal_loop: argument 2"}
!13 = distinct !{!13, !14, !"XXH3_hashLong_64b_internal: argument 1"}
!14 = distinct !{!14, !"XXH3_hashLong_64b_internal"}
!15 = !{!16, !18, !19, !20, !21}
!16 = distinct !{!16, !17, !"XXH3_accumulate_512: argument 1"}
!17 = distinct !{!17, !"XXH3_accumulate_512"}
!18 = distinct !{!18, !8, !"XXH3_accumulate: argument 1"}
!19 = distinct !{!19, !11, !"XXH3_hashLong_internal_loop: argument 1"}
!20 = distinct !{!20, !14, !"XXH3_hashLong_64b_internal: argument 0"}
!21 = distinct !{!21, !22, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!22 = distinct !{!22, !"XXH3_hashLong_64b_defaultSecret"}
!23 = !{!24, !25, !7, !9, !10, !12, !13}
!24 = distinct !{!24, !17, !"XXH3_accumulate_512: argument 0"}
!25 = distinct !{!25, !17, !"XXH3_accumulate_512: argument 2"}
!26 = !{!27, !18, !19, !20, !21}
!27 = distinct !{!27, !17, !"XXH3_accumulate_512: argument 1:It1"}
!28 = !{!29, !30, !7, !9, !10, !12, !13}
!29 = distinct !{!29, !17, !"XXH3_accumulate_512: argument 0:It1"}
!30 = distinct !{!30, !17, !"XXH3_accumulate_512: argument 2:It1"}
!31 = !{!32, !18, !19, !20, !21}
!32 = distinct !{!32, !17, !"XXH3_accumulate_512: argument 1:It2"}
!33 = !{!34, !35, !7, !9, !10, !12, !13}
!34 = distinct !{!34, !17, !"XXH3_accumulate_512: argument 0:It2"}
!35 = distinct !{!35, !17, !"XXH3_accumulate_512: argument 2:It2"}
!36 = !{!37, !18, !19, !20, !21}
!37 = distinct !{!37, !17, !"XXH3_accumulate_512: argument 1:It3"}
!38 = !{!39, !40, !7, !9, !10, !12, !13}
!39 = distinct !{!39, !17, !"XXH3_accumulate_512: argument 0:It3"}
!40 = distinct !{!40, !17, !"XXH3_accumulate_512: argument 2:It3"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH3_hashLong_64b_internal: argument 0"}
!43 = distinct !{!43, !"XXH3_hashLong_64b_internal"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"XXH3_hashLong_64b_internal: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"XXH3_hashLong_internal_loop: argument 1"}
!48 = distinct !{!48, !"XXH3_hashLong_internal_loop"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"XXH3_hashLong_internal_loop: argument 2"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"XXH3_accumulate: argument 1"}
!53 = distinct !{!53, !"XXH3_accumulate"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"XXH3_accumulate: argument 2"}
!56 = !{!57, !55, !58, !50, !45}
!57 = distinct !{!57, !53, !"XXH3_accumulate: argument 0"}
!58 = distinct !{!58, !48, !"XXH3_hashLong_internal_loop: argument 0"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"XXH3_accumulate_512: argument 1"}
!61 = distinct !{!61, !"XXH3_accumulate_512"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"XXH3_accumulate_512: argument 2"}
!64 = !{!60, !52, !47, !42}
!65 = !{!66, !63, !57, !55, !58, !50, !45}
!66 = distinct !{!66, !61, !"XXH3_accumulate_512: argument 0"}
!67 = !{!63, !55, !50, !45}
!68 = !{!66, !60, !57, !52, !58, !47, !42}
!69 = !{!70}
!70 = distinct !{!70, !61, !"XXH3_accumulate_512: argument 1:It1"}
!71 = !{!72}
!72 = distinct !{!72, !61, !"XXH3_accumulate_512: argument 2:It1"}
!73 = !{!70, !52, !47, !42}
!74 = !{!75, !72, !57, !55, !58, !50, !45}
!75 = distinct !{!75, !61, !"XXH3_accumulate_512: argument 0:It1"}
!76 = !{!72, !55, !50, !45}
!77 = !{!75, !70, !57, !52, !58, !47, !42}
!78 = !{!79}
!79 = distinct !{!79, !61, !"XXH3_accumulate_512: argument 1:It2"}
!80 = !{!81}
!81 = distinct !{!81, !61, !"XXH3_accumulate_512: argument 2:It2"}
!82 = !{!79, !52, !47, !42}
!83 = !{!84, !81, !57, !55, !58, !50, !45}
!84 = distinct !{!84, !61, !"XXH3_accumulate_512: argument 0:It2"}
!85 = !{!81, !55, !50, !45}
!86 = !{!84, !79, !57, !52, !58, !47, !42}
!87 = !{!88}
!88 = distinct !{!88, !61, !"XXH3_accumulate_512: argument 1:It3"}
!89 = !{!90}
!90 = distinct !{!90, !61, !"XXH3_accumulate_512: argument 2:It3"}
!91 = !{!88, !52, !47, !42}
!92 = !{!93, !90, !57, !55, !58, !50, !45}
!93 = distinct !{!93, !61, !"XXH3_accumulate_512: argument 0:It3"}
!94 = !{!90, !55, !50, !45}
!95 = !{!93, !88, !57, !52, !58, !47, !42}
!96 = !{!97, !45}
!97 = distinct !{!97, !98, !"XXH3_mergeAccs: argument 1"}
!98 = distinct !{!98, !"XXH3_mergeAccs"}
!99 = !{!100, !42}
!100 = distinct !{!100, !98, !"XXH3_mergeAccs: argument 0"}
