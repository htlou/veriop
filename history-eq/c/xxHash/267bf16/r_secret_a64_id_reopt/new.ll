; ModuleID = '/tmp/tmpg6p8m4fb/in.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/267bf16/wrap_secret2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
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
  br label %454

190:                                              ; preds = %2
  %191 = add i64 %1, -4734510112055689544
  %192 = sub i64 2066345149520216444, %1
  store i64 %191, ptr %3, align 16
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %192, ptr %193, align 8
  %194 = add i64 %1, -2623469361688619810
  %195 = sub i64 2262974939099578482, %1
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %194, ptr %196, align 16
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %195, ptr %197, align 8
  %198 = add i64 %1, 8711581037947681227
  %199 = sub i64 2410270004345854594, %1
  %200 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %198, ptr %200, align 16
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %199, ptr %201, align 8
  %202 = add i64 %1, -8204357891075471176
  %203 = sub i64 5487137525590930912, %1
  %204 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %202, ptr %204, align 16
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %203, ptr %205, align 8
  %206 = add i64 %1, -3818837453329782724
  %207 = sub i64 -6688317018830679928, %1
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %206, ptr %208, align 16
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %207, ptr %209, align 8
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
  %226 = load <16 x i8>, ptr %196, align 16
  %227 = bitcast <16 x i8> %225 to <2 x i64>
  %228 = add <2 x i64> %227, <i64 -4417276706812531889, i64 1609587929392839161>
  %229 = xor <16 x i8> %226, %225
  %230 = bitcast <16 x i8> %229 to <2 x i64>
  %231 = trunc <2 x i64> %230 to <2 x i32>
  %232 = lshr <2 x i64> %230, splat (i64 32)
  %233 = trunc nuw <2 x i64> %232 to <2 x i32>
  %234 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %231, <2 x i32> %233)
  %235 = add <2 x i64> %228, %234
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %237 = load <16 x i8>, ptr %236, align 1
  %238 = load <16 x i8>, ptr %200, align 16
  %239 = bitcast <16 x i8> %237 to <2 x i64>
  %240 = add <2 x i64> %239, <i64 -8796714831421723037, i64 2246822519>
  %241 = xor <16 x i8> %238, %237
  %242 = bitcast <16 x i8> %241 to <2 x i64>
  %243 = trunc <2 x i64> %242 to <2 x i32>
  %244 = lshr <2 x i64> %242, splat (i64 32)
  %245 = trunc nuw <2 x i64> %244 to <2 x i32>
  %246 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %243, <2 x i32> %245)
  %247 = add <2 x i64> %240, %246
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %249 = load <16 x i8>, ptr %248, align 1
  %250 = load <16 x i8>, ptr %204, align 16
  %251 = bitcast <16 x i8> %249 to <2 x i64>
  %252 = add <2 x i64> %251, <i64 2870177450012600261, i64 2654435761>
  %253 = xor <16 x i8> %250, %249
  %254 = bitcast <16 x i8> %253 to <2 x i64>
  %255 = trunc <2 x i64> %254 to <2 x i32>
  %256 = lshr <2 x i64> %254, splat (i64 32)
  %257 = trunc nuw <2 x i64> %256 to <2 x i32>
  %258 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %255, <2 x i32> %257)
  %259 = add <2 x i64> %252, %258
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %261, i32 0, i32 3, i32 1)
  %262 = load <16 x i8>, ptr %260, align 1
  %263 = load <16 x i8>, ptr %193, align 8
  %264 = bitcast <16 x i8> %262 to <2 x i64>
  %265 = add <2 x i64> %223, %264
  %266 = xor <16 x i8> %263, %262
  %267 = bitcast <16 x i8> %266 to <2 x i64>
  %268 = trunc <2 x i64> %267 to <2 x i32>
  %269 = lshr <2 x i64> %267, splat (i64 32)
  %270 = trunc nuw <2 x i64> %269 to <2 x i32>
  %271 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %268, <2 x i32> %270)
  %272 = add <2 x i64> %265, %271
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %274 = load <16 x i8>, ptr %273, align 1
  %275 = load <16 x i8>, ptr %197, align 8
  %276 = bitcast <16 x i8> %274 to <2 x i64>
  %277 = add <2 x i64> %235, %276
  %278 = xor <16 x i8> %275, %274
  %279 = bitcast <16 x i8> %278 to <2 x i64>
  %280 = trunc <2 x i64> %279 to <2 x i32>
  %281 = lshr <2 x i64> %279, splat (i64 32)
  %282 = trunc nuw <2 x i64> %281 to <2 x i32>
  %283 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %280, <2 x i32> %282)
  %284 = add <2 x i64> %277, %283
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %286 = load <16 x i8>, ptr %285, align 1
  %287 = load <16 x i8>, ptr %201, align 8
  %288 = bitcast <16 x i8> %286 to <2 x i64>
  %289 = add <2 x i64> %247, %288
  %290 = xor <16 x i8> %287, %286
  %291 = bitcast <16 x i8> %290 to <2 x i64>
  %292 = trunc <2 x i64> %291 to <2 x i32>
  %293 = lshr <2 x i64> %291, splat (i64 32)
  %294 = trunc nuw <2 x i64> %293 to <2 x i32>
  %295 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %292, <2 x i32> %294)
  %296 = add <2 x i64> %289, %295
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %298 = load <16 x i8>, ptr %297, align 1
  %299 = load <16 x i8>, ptr %205, align 8
  %300 = bitcast <16 x i8> %298 to <2 x i64>
  %301 = add <2 x i64> %259, %300
  %302 = xor <16 x i8> %299, %298
  %303 = bitcast <16 x i8> %302 to <2 x i64>
  %304 = trunc <2 x i64> %303 to <2 x i32>
  %305 = lshr <2 x i64> %303, splat (i64 32)
  %306 = trunc nuw <2 x i64> %305 to <2 x i32>
  %307 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %304, <2 x i32> %306)
  %308 = add <2 x i64> %301, %307
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %310, i32 0, i32 3, i32 1)
  %311 = load <16 x i8>, ptr %309, align 1
  %312 = bitcast <16 x i8> %311 to <2 x i64>
  %313 = add <2 x i64> %272, %312
  %314 = xor <16 x i8> %311, %226
  %315 = bitcast <16 x i8> %314 to <2 x i64>
  %316 = trunc <2 x i64> %315 to <2 x i32>
  %317 = lshr <2 x i64> %315, splat (i64 32)
  %318 = trunc nuw <2 x i64> %317 to <2 x i32>
  %319 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %316, <2 x i32> %318)
  %320 = add <2 x i64> %313, %319
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %322 = load <16 x i8>, ptr %321, align 1
  %323 = bitcast <16 x i8> %322 to <2 x i64>
  %324 = add <2 x i64> %284, %323
  %325 = xor <16 x i8> %322, %238
  %326 = bitcast <16 x i8> %325 to <2 x i64>
  %327 = trunc <2 x i64> %326 to <2 x i32>
  %328 = lshr <2 x i64> %326, splat (i64 32)
  %329 = trunc nuw <2 x i64> %328 to <2 x i32>
  %330 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %327, <2 x i32> %329)
  %331 = add <2 x i64> %324, %330
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %333 = load <16 x i8>, ptr %332, align 1
  %334 = bitcast <16 x i8> %333 to <2 x i64>
  %335 = add <2 x i64> %296, %334
  %336 = xor <16 x i8> %333, %250
  %337 = bitcast <16 x i8> %336 to <2 x i64>
  %338 = trunc <2 x i64> %337 to <2 x i32>
  %339 = lshr <2 x i64> %337, splat (i64 32)
  %340 = trunc nuw <2 x i64> %339 to <2 x i32>
  %341 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %338, <2 x i32> %340)
  %342 = add <2 x i64> %335, %341
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %344 = load <16 x i8>, ptr %343, align 1
  %345 = load <16 x i8>, ptr %208, align 16
  %346 = bitcast <16 x i8> %344 to <2 x i64>
  %347 = add <2 x i64> %308, %346
  %348 = xor <16 x i8> %345, %344
  %349 = bitcast <16 x i8> %348 to <2 x i64>
  %350 = trunc <2 x i64> %349 to <2 x i32>
  %351 = lshr <2 x i64> %349, splat (i64 32)
  %352 = trunc nuw <2 x i64> %351 to <2 x i32>
  %353 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %350, <2 x i32> %352)
  %354 = add <2 x i64> %347, %353
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %356, i32 0, i32 3, i32 1)
  %357 = load <16 x i8>, ptr %355, align 1
  %358 = bitcast <16 x i8> %357 to <2 x i64>
  %359 = add <2 x i64> %320, %358
  %360 = xor <16 x i8> %357, %275
  %361 = bitcast <16 x i8> %360 to <2 x i64>
  %362 = trunc <2 x i64> %361 to <2 x i32>
  %363 = lshr <2 x i64> %361, splat (i64 32)
  %364 = trunc nuw <2 x i64> %363 to <2 x i32>
  %365 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %362, <2 x i32> %364)
  %366 = add <2 x i64> %359, %365
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %368 = load <16 x i8>, ptr %367, align 1
  %369 = bitcast <16 x i8> %368 to <2 x i64>
  %370 = add <2 x i64> %331, %369
  %371 = xor <16 x i8> %368, %287
  %372 = bitcast <16 x i8> %371 to <2 x i64>
  %373 = trunc <2 x i64> %372 to <2 x i32>
  %374 = lshr <2 x i64> %372, splat (i64 32)
  %375 = trunc nuw <2 x i64> %374 to <2 x i32>
  %376 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %373, <2 x i32> %375)
  %377 = add <2 x i64> %370, %376
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %379 = load <16 x i8>, ptr %378, align 1
  %380 = bitcast <16 x i8> %379 to <2 x i64>
  %381 = add <2 x i64> %342, %380
  %382 = xor <16 x i8> %379, %299
  %383 = bitcast <16 x i8> %382 to <2 x i64>
  %384 = trunc <2 x i64> %383 to <2 x i32>
  %385 = lshr <2 x i64> %383, splat (i64 32)
  %386 = trunc nuw <2 x i64> %385 to <2 x i32>
  %387 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %384, <2 x i32> %386)
  %388 = add <2 x i64> %381, %387
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %390 = load <16 x i8>, ptr %389, align 1
  %391 = load <16 x i8>, ptr %209, align 8
  %392 = bitcast <16 x i8> %390 to <2 x i64>
  %393 = add <2 x i64> %354, %392
  %394 = xor <16 x i8> %391, %390
  %395 = bitcast <16 x i8> %394 to <2 x i64>
  %396 = trunc <2 x i64> %395 to <2 x i32>
  %397 = lshr <2 x i64> %395, splat (i64 32)
  %398 = trunc nuw <2 x i64> %397 to <2 x i32>
  %399 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %396, <2 x i32> %398)
  %400 = add <2 x i64> %393, %399
  %401 = extractelement <2 x i64> %366, i64 0
  %402 = extractelement <2 x i64> %366, i64 1
  %403 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %404 = load i64, ptr %403, align 1
  %405 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %406 = load i64, ptr %405, align 1
  %407 = xor i64 %404, %401
  %408 = xor i64 %406, %402
  %409 = zext i64 %407 to i128
  %410 = zext i64 %408 to i128
  %411 = mul nuw i128 %410, %409
  %412 = lshr i128 %411, 64
  %413 = xor i128 %412, %411
  %414 = trunc i128 %413 to i64
  %415 = add i64 %414, 3997421333012711168
  %416 = extractelement <2 x i64> %377, i64 0
  %417 = extractelement <2 x i64> %377, i64 1
  %418 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %419 = load i64, ptr %418, align 1
  %420 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %421 = load i64, ptr %420, align 1
  %422 = xor i64 %419, %416
  %423 = xor i64 %421, %417
  %424 = zext i64 %422 to i128
  %425 = zext i64 %423 to i128
  %426 = mul nuw i128 %425, %424
  %427 = lshr i128 %426, 64
  %428 = xor i128 %427, %426
  %429 = trunc i128 %428 to i64
  %430 = add i64 %415, %429
  %431 = extractelement <2 x i64> %388, i64 0
  %432 = extractelement <2 x i64> %388, i64 1
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %434 = load i64, ptr %433, align 1
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %436 = load i64, ptr %435, align 1
  %437 = xor i64 %434, %431
  %438 = xor i64 %436, %432
  %439 = zext i64 %437 to i128
  %440 = zext i64 %438 to i128
  %441 = mul nuw i128 %440, %439
  %442 = lshr i128 %441, 64
  %443 = xor i128 %442, %441
  %444 = trunc i128 %443 to i64
  %445 = add i64 %430, %444
  %446 = extractelement <2 x i64> %400, i64 0
  %447 = extractelement <2 x i64> %400, i64 1
  %448 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %449 = load i64, ptr %448, align 1
  %450 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %451 = load i64, ptr %450, align 1
  %452 = xor i64 %449, %446
  %453 = xor i64 %451, %447
  br label %454

454:                                              ; preds = %190, %5
  %455 = phi i64 [ %452, %190 ], [ %188, %5 ]
  %456 = phi i64 [ %453, %190 ], [ %189, %5 ]
  %457 = phi i64 [ %445, %190 ], [ %185, %5 ]
  %458 = zext i64 %455 to i128
  %459 = zext i64 %456 to i128
  %460 = mul nuw i128 %459, %458
  %461 = lshr i128 %460, 64
  %462 = xor i128 %461, %460
  %463 = trunc i128 %462 to i64
  %464 = add i64 %457, %463
  %465 = lshr i64 %464, 37
  %466 = xor i64 %465, %464
  %467 = mul i64 %466, 1609587791953885689
  %468 = lshr i64 %467, 32
  %469 = xor i64 %468, %467
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %469
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
