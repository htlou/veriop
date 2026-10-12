; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/267bf16/wrap_secret2020.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/267bf16/wrap_secret2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @target_initsecret(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = bitcast ptr @kSecret to ptr
  %4 = load i64, ptr %3, align 1
  %5 = add i64 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = sub i64 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load i64, ptr %9, align 1
  %11 = add i64 %10, %1
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 %13, %1
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load i64, ptr %15, align 1
  %17 = add i64 %16, %1
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %19 = load i64, ptr %18, align 1
  %20 = sub i64 %19, %1
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %22 = load i64, ptr %21, align 1
  %23 = add i64 %22, %1
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %25 = load i64, ptr %24, align 1
  %26 = sub i64 %25, %1
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %28 = load i64, ptr %27, align 1
  %29 = add i64 %28, %1
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %31 = load i64, ptr %30, align 1
  %32 = sub i64 %31, %1
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %34 = load i64, ptr %33, align 1
  %35 = add i64 %34, %1
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %37 = load i64, ptr %36, align 1
  %38 = sub i64 %37, %1
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %40 = load i64, ptr %39, align 1
  %41 = add i64 %40, %1
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %43 = load i64, ptr %42, align 1
  %44 = sub i64 %43, %1
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %46 = load i64, ptr %45, align 1
  %47 = add i64 %46, %1
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %49 = load i64, ptr %48, align 1
  %50 = sub i64 %49, %1
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %52 = load i64, ptr %51, align 1
  %53 = add i64 %52, %1
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %55 = load i64, ptr %54, align 1
  %56 = sub i64 %55, %1
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %58 = load i64, ptr %57, align 1
  %59 = add i64 %58, %1
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %61 = load i64, ptr %60, align 1
  %62 = sub i64 %61, %1
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %64 = load i64, ptr %63, align 1
  %65 = add i64 %64, %1
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %67 = load i64, ptr %66, align 1
  %68 = sub i64 %67, %1
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %70, %1
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %73 = load i64, ptr %72, align 1
  %74 = sub i64 %73, %1
  store i64 %5, ptr %0, align 1
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %75, align 1
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %11, ptr %76, align 1
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %14, ptr %77, align 1
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %17, ptr %78, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %20, ptr %79, align 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %23, ptr %80, align 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %26, ptr %81, align 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %29, ptr %82, align 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %32, ptr %83, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %35, ptr %84, align 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %38, ptr %85, align 1
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %41, ptr %86, align 1
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %44, ptr %87, align 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %47, ptr %88, align 1
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %50, ptr %89, align 1
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %53, ptr %90, align 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %56, ptr %91, align 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %59, ptr %92, align 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %62, ptr %93, align 1
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %65, ptr %94, align 1
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %68, ptr %95, align 1
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %71, ptr %96, align 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %74, ptr %97, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  br label %485

190:                                              ; preds = %2
  %191 = bitcast ptr @kSecret to ptr
  %192 = load i64, ptr %191, align 1
  %193 = add i64 %192, %1
  %194 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %195 = load i64, ptr %194, align 1
  %196 = sub i64 %195, %1
  store i64 %193, ptr %3, align 16
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %196, ptr %197, align 8
  %198 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %199 = load i64, ptr %198, align 1
  %200 = add i64 %199, %1
  %201 = getelementptr inbounds nuw i8, ptr %191, i64 24
  %202 = load i64, ptr %201, align 1
  %203 = sub i64 %202, %1
  %204 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %200, ptr %204, align 16
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %203, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %191, i64 32
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %207, %1
  %209 = getelementptr inbounds nuw i8, ptr %191, i64 40
  %210 = load i64, ptr %209, align 1
  %211 = sub i64 %210, %1
  %212 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %208, ptr %212, align 16
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %211, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %191, i64 48
  %215 = load i64, ptr %214, align 1
  %216 = add i64 %215, %1
  %217 = getelementptr inbounds nuw i8, ptr %191, i64 56
  %218 = load i64, ptr %217, align 1
  %219 = sub i64 %218, %1
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %216, ptr %220, align 16
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %219, ptr %221, align 8
  %222 = getelementptr inbounds nuw i8, ptr %191, i64 64
  %223 = load i64, ptr %222, align 1
  %224 = add i64 %223, %1
  %225 = getelementptr inbounds nuw i8, ptr %191, i64 72
  %226 = load i64, ptr %225, align 1
  %227 = sub i64 %226, %1
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %224, ptr %228, align 16
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %227, ptr %229, align 8
  %230 = getelementptr inbounds nuw i8, ptr %191, i64 80
  %231 = load i64, ptr %230, align 1
  %232 = add i64 %231, %1
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %232, ptr %233, align 16
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %234, i32 0, i32 3, i32 1)
  %235 = load <16 x i8>, ptr %0, align 1
  %236 = load <16 x i8>, ptr %3, align 16
  %237 = bitcast <16 x i8> %235 to <2 x i64>
  %238 = add <2 x i64> %237, <i64 3266489917, i64 -7046029288634856825>
  %239 = xor <16 x i8> %236, %235
  %240 = bitcast <16 x i8> %239 to <2 x i64>
  %241 = trunc <2 x i64> %240 to <2 x i32>
  %242 = lshr <2 x i64> %240, splat (i64 32)
  %243 = trunc nuw <2 x i64> %242 to <2 x i32>
  %244 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %241, <2 x i32> %243)
  %245 = add <2 x i64> %238, %244
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %247 = load <16 x i8>, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %249 = load <16 x i8>, ptr %248, align 16
  %250 = bitcast <16 x i8> %247 to <2 x i64>
  %251 = add <2 x i64> %250, <i64 -4417276706812531889, i64 1609587929392839161>
  %252 = xor <16 x i8> %249, %247
  %253 = bitcast <16 x i8> %252 to <2 x i64>
  %254 = trunc <2 x i64> %253 to <2 x i32>
  %255 = lshr <2 x i64> %253, splat (i64 32)
  %256 = trunc nuw <2 x i64> %255 to <2 x i32>
  %257 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %254, <2 x i32> %256)
  %258 = add <2 x i64> %251, %257
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %260 = load <16 x i8>, ptr %259, align 1
  %261 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %262 = load <16 x i8>, ptr %261, align 16
  %263 = bitcast <16 x i8> %260 to <2 x i64>
  %264 = add <2 x i64> %263, <i64 -8796714831421723037, i64 2246822519>
  %265 = xor <16 x i8> %262, %260
  %266 = bitcast <16 x i8> %265 to <2 x i64>
  %267 = trunc <2 x i64> %266 to <2 x i32>
  %268 = lshr <2 x i64> %266, splat (i64 32)
  %269 = trunc nuw <2 x i64> %268 to <2 x i32>
  %270 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %267, <2 x i32> %269)
  %271 = add <2 x i64> %264, %270
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %273 = load <16 x i8>, ptr %272, align 1
  %274 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %275 = load <16 x i8>, ptr %274, align 16
  %276 = bitcast <16 x i8> %273 to <2 x i64>
  %277 = add <2 x i64> %276, <i64 2870177450012600261, i64 2654435761>
  %278 = xor <16 x i8> %275, %273
  %279 = bitcast <16 x i8> %278 to <2 x i64>
  %280 = trunc <2 x i64> %279 to <2 x i32>
  %281 = lshr <2 x i64> %279, splat (i64 32)
  %282 = trunc nuw <2 x i64> %281 to <2 x i32>
  %283 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %280, <2 x i32> %282)
  %284 = add <2 x i64> %277, %283
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %286, i32 0, i32 3, i32 1)
  %287 = load <16 x i8>, ptr %285, align 1
  %288 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %289 = load <16 x i8>, ptr %288, align 8
  %290 = bitcast <16 x i8> %287 to <2 x i64>
  %291 = add <2 x i64> %245, %290
  %292 = xor <16 x i8> %289, %287
  %293 = bitcast <16 x i8> %292 to <2 x i64>
  %294 = trunc <2 x i64> %293 to <2 x i32>
  %295 = lshr <2 x i64> %293, splat (i64 32)
  %296 = trunc nuw <2 x i64> %295 to <2 x i32>
  %297 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %294, <2 x i32> %296)
  %298 = add <2 x i64> %291, %297
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %300 = load <16 x i8>, ptr %299, align 1
  %301 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %302 = load <16 x i8>, ptr %301, align 8
  %303 = bitcast <16 x i8> %300 to <2 x i64>
  %304 = add <2 x i64> %258, %303
  %305 = xor <16 x i8> %302, %300
  %306 = bitcast <16 x i8> %305 to <2 x i64>
  %307 = trunc <2 x i64> %306 to <2 x i32>
  %308 = lshr <2 x i64> %306, splat (i64 32)
  %309 = trunc nuw <2 x i64> %308 to <2 x i32>
  %310 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %307, <2 x i32> %309)
  %311 = add <2 x i64> %304, %310
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %313 = load <16 x i8>, ptr %312, align 1
  %314 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %315 = load <16 x i8>, ptr %314, align 8
  %316 = bitcast <16 x i8> %313 to <2 x i64>
  %317 = add <2 x i64> %271, %316
  %318 = xor <16 x i8> %315, %313
  %319 = bitcast <16 x i8> %318 to <2 x i64>
  %320 = trunc <2 x i64> %319 to <2 x i32>
  %321 = lshr <2 x i64> %319, splat (i64 32)
  %322 = trunc nuw <2 x i64> %321 to <2 x i32>
  %323 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %320, <2 x i32> %322)
  %324 = add <2 x i64> %317, %323
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %326 = load <16 x i8>, ptr %325, align 1
  %327 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %328 = load <16 x i8>, ptr %327, align 8
  %329 = bitcast <16 x i8> %326 to <2 x i64>
  %330 = add <2 x i64> %284, %329
  %331 = xor <16 x i8> %328, %326
  %332 = bitcast <16 x i8> %331 to <2 x i64>
  %333 = trunc <2 x i64> %332 to <2 x i32>
  %334 = lshr <2 x i64> %332, splat (i64 32)
  %335 = trunc nuw <2 x i64> %334 to <2 x i32>
  %336 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %333, <2 x i32> %335)
  %337 = add <2 x i64> %330, %336
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %339, i32 0, i32 3, i32 1)
  %340 = load <16 x i8>, ptr %338, align 1
  %341 = bitcast <16 x i8> %340 to <2 x i64>
  %342 = add <2 x i64> %298, %341
  %343 = xor <16 x i8> %340, %249
  %344 = bitcast <16 x i8> %343 to <2 x i64>
  %345 = trunc <2 x i64> %344 to <2 x i32>
  %346 = lshr <2 x i64> %344, splat (i64 32)
  %347 = trunc nuw <2 x i64> %346 to <2 x i32>
  %348 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %345, <2 x i32> %347)
  %349 = add <2 x i64> %342, %348
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %351 = load <16 x i8>, ptr %350, align 1
  %352 = bitcast <16 x i8> %351 to <2 x i64>
  %353 = add <2 x i64> %311, %352
  %354 = xor <16 x i8> %351, %262
  %355 = bitcast <16 x i8> %354 to <2 x i64>
  %356 = trunc <2 x i64> %355 to <2 x i32>
  %357 = lshr <2 x i64> %355, splat (i64 32)
  %358 = trunc nuw <2 x i64> %357 to <2 x i32>
  %359 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %356, <2 x i32> %358)
  %360 = add <2 x i64> %353, %359
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %362 = load <16 x i8>, ptr %361, align 1
  %363 = bitcast <16 x i8> %362 to <2 x i64>
  %364 = add <2 x i64> %324, %363
  %365 = xor <16 x i8> %362, %275
  %366 = bitcast <16 x i8> %365 to <2 x i64>
  %367 = trunc <2 x i64> %366 to <2 x i32>
  %368 = lshr <2 x i64> %366, splat (i64 32)
  %369 = trunc nuw <2 x i64> %368 to <2 x i32>
  %370 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %367, <2 x i32> %369)
  %371 = add <2 x i64> %364, %370
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %373 = load <16 x i8>, ptr %372, align 1
  %374 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %375 = load <16 x i8>, ptr %374, align 16
  %376 = bitcast <16 x i8> %373 to <2 x i64>
  %377 = add <2 x i64> %337, %376
  %378 = xor <16 x i8> %375, %373
  %379 = bitcast <16 x i8> %378 to <2 x i64>
  %380 = trunc <2 x i64> %379 to <2 x i32>
  %381 = lshr <2 x i64> %379, splat (i64 32)
  %382 = trunc nuw <2 x i64> %381 to <2 x i32>
  %383 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %380, <2 x i32> %382)
  %384 = add <2 x i64> %377, %383
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %386, i32 0, i32 3, i32 1)
  %387 = load <16 x i8>, ptr %385, align 1
  %388 = bitcast <16 x i8> %387 to <2 x i64>
  %389 = add <2 x i64> %349, %388
  %390 = xor <16 x i8> %387, %302
  %391 = bitcast <16 x i8> %390 to <2 x i64>
  %392 = trunc <2 x i64> %391 to <2 x i32>
  %393 = lshr <2 x i64> %391, splat (i64 32)
  %394 = trunc nuw <2 x i64> %393 to <2 x i32>
  %395 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %392, <2 x i32> %394)
  %396 = add <2 x i64> %389, %395
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %398 = load <16 x i8>, ptr %397, align 1
  %399 = bitcast <16 x i8> %398 to <2 x i64>
  %400 = add <2 x i64> %360, %399
  %401 = xor <16 x i8> %398, %315
  %402 = bitcast <16 x i8> %401 to <2 x i64>
  %403 = trunc <2 x i64> %402 to <2 x i32>
  %404 = lshr <2 x i64> %402, splat (i64 32)
  %405 = trunc nuw <2 x i64> %404 to <2 x i32>
  %406 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %403, <2 x i32> %405)
  %407 = add <2 x i64> %400, %406
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %409 = load <16 x i8>, ptr %408, align 1
  %410 = bitcast <16 x i8> %409 to <2 x i64>
  %411 = add <2 x i64> %371, %410
  %412 = xor <16 x i8> %409, %328
  %413 = bitcast <16 x i8> %412 to <2 x i64>
  %414 = trunc <2 x i64> %413 to <2 x i32>
  %415 = lshr <2 x i64> %413, splat (i64 32)
  %416 = trunc nuw <2 x i64> %415 to <2 x i32>
  %417 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %414, <2 x i32> %416)
  %418 = add <2 x i64> %411, %417
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %420 = load <16 x i8>, ptr %419, align 1
  %421 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %422 = load <16 x i8>, ptr %421, align 8
  %423 = bitcast <16 x i8> %420 to <2 x i64>
  %424 = add <2 x i64> %384, %423
  %425 = xor <16 x i8> %422, %420
  %426 = bitcast <16 x i8> %425 to <2 x i64>
  %427 = trunc <2 x i64> %426 to <2 x i32>
  %428 = lshr <2 x i64> %426, splat (i64 32)
  %429 = trunc nuw <2 x i64> %428 to <2 x i32>
  %430 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %427, <2 x i32> %429)
  %431 = add <2 x i64> %424, %430
  %432 = extractelement <2 x i64> %396, i64 0
  %433 = extractelement <2 x i64> %396, i64 1
  %434 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %435 = load i64, ptr %434, align 1
  %436 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %437 = load i64, ptr %436, align 1
  %438 = xor i64 %435, %432
  %439 = xor i64 %437, %433
  %440 = zext i64 %438 to i128
  %441 = zext i64 %439 to i128
  %442 = mul nuw i128 %441, %440
  %443 = lshr i128 %442, 64
  %444 = xor i128 %443, %442
  %445 = trunc i128 %444 to i64
  %446 = add i64 %445, 3997421333012711168
  %447 = extractelement <2 x i64> %407, i64 0
  %448 = extractelement <2 x i64> %407, i64 1
  %449 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %450 = load i64, ptr %449, align 1
  %451 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %452 = load i64, ptr %451, align 1
  %453 = xor i64 %450, %447
  %454 = xor i64 %452, %448
  %455 = zext i64 %453 to i128
  %456 = zext i64 %454 to i128
  %457 = mul nuw i128 %456, %455
  %458 = lshr i128 %457, 64
  %459 = xor i128 %458, %457
  %460 = trunc i128 %459 to i64
  %461 = add i64 %446, %460
  %462 = extractelement <2 x i64> %418, i64 0
  %463 = extractelement <2 x i64> %418, i64 1
  %464 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %465 = load i64, ptr %464, align 1
  %466 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %467 = load i64, ptr %466, align 1
  %468 = xor i64 %465, %462
  %469 = xor i64 %467, %463
  %470 = zext i64 %468 to i128
  %471 = zext i64 %469 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %461, %475
  %477 = extractelement <2 x i64> %431, i64 0
  %478 = extractelement <2 x i64> %431, i64 1
  %479 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %480 = load i64, ptr %479, align 1
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %482 = load i64, ptr %481, align 1
  %483 = xor i64 %480, %477
  %484 = xor i64 %482, %478
  br label %485

485:                                              ; preds = %5, %190
  %486 = phi i64 [ %483, %190 ], [ %188, %5 ]
  %487 = phi i64 [ %484, %190 ], [ %189, %5 ]
  %488 = phi i64 [ %476, %190 ], [ %185, %5 ]
  %489 = zext i64 %486 to i128
  %490 = zext i64 %487 to i128
  %491 = mul nuw i128 %490, %489
  %492 = lshr i128 %491, 64
  %493 = xor i128 %492, %491
  %494 = trunc i128 %493 to i64
  %495 = add i64 %488, %494
  %496 = lshr i64 %495, 37
  %497 = xor i64 %496, %495
  %498 = mul i64 %497, 1609587791953885689
  %499 = lshr i64 %498, 32
  %500 = xor i64 %499, %498
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %500
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 257133}
!7 = !{!8}
!8 = distinct !{!8, !9, !"XXH3_initCustomSecret: argument 0"}
!9 = distinct !{!9, !"XXH3_initCustomSecret"}
!10 = !{!11, !13, !14, !16, !17}
!11 = distinct !{!11, !12, !"XXH3_accumulate: argument 0"}
!12 = distinct !{!12, !"XXH3_accumulate"}
!13 = distinct !{!13, !12, !"XXH3_accumulate: argument 2"}
!14 = distinct !{!14, !15, !"XXH3_hashLong_internal_loop: argument 0"}
!15 = distinct !{!15, !"XXH3_hashLong_internal_loop"}
!16 = distinct !{!16, !15, !"XXH3_hashLong_internal_loop: argument 2"}
!17 = distinct !{!17, !18, !"XXH3_hashLong_64b_internal: argument 1"}
!18 = distinct !{!18, !"XXH3_hashLong_64b_internal"}
!19 = !{!20, !22, !23, !24, !25}
!20 = distinct !{!20, !21, !"XXH3_accumulate_512: argument 1"}
!21 = distinct !{!21, !"XXH3_accumulate_512"}
!22 = distinct !{!22, !12, !"XXH3_accumulate: argument 1"}
!23 = distinct !{!23, !15, !"XXH3_hashLong_internal_loop: argument 1"}
!24 = distinct !{!24, !18, !"XXH3_hashLong_64b_internal: argument 0"}
!25 = distinct !{!25, !26, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!26 = distinct !{!26, !"XXH3_hashLong_64b_defaultSecret"}
!27 = !{!28, !29, !11, !13, !14, !16, !17}
!28 = distinct !{!28, !21, !"XXH3_accumulate_512: argument 0"}
!29 = distinct !{!29, !21, !"XXH3_accumulate_512: argument 2"}
!30 = !{!31, !22, !23, !24, !25}
!31 = distinct !{!31, !21, !"XXH3_accumulate_512: argument 1:It1"}
!32 = !{!33, !34, !11, !13, !14, !16, !17}
!33 = distinct !{!33, !21, !"XXH3_accumulate_512: argument 0:It1"}
!34 = distinct !{!34, !21, !"XXH3_accumulate_512: argument 2:It1"}
!35 = !{!36, !22, !23, !24, !25}
!36 = distinct !{!36, !21, !"XXH3_accumulate_512: argument 1:It2"}
!37 = !{!38, !39, !11, !13, !14, !16, !17}
!38 = distinct !{!38, !21, !"XXH3_accumulate_512: argument 0:It2"}
!39 = distinct !{!39, !21, !"XXH3_accumulate_512: argument 2:It2"}
!40 = !{!41, !22, !23, !24, !25}
!41 = distinct !{!41, !21, !"XXH3_accumulate_512: argument 1:It3"}
!42 = !{!43, !44, !11, !13, !14, !16, !17}
!43 = distinct !{!43, !21, !"XXH3_accumulate_512: argument 0:It3"}
!44 = distinct !{!44, !21, !"XXH3_accumulate_512: argument 2:It3"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_initCustomSecret: argument 0"}
!47 = distinct !{!47, !"XXH3_initCustomSecret"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"XXH3_hashLong_64b_internal: argument 0"}
!50 = distinct !{!50, !"XXH3_hashLong_64b_internal"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"XXH3_hashLong_64b_internal: argument 1"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"XXH3_hashLong_internal_loop: argument 1"}
!55 = distinct !{!55, !"XXH3_hashLong_internal_loop"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"XXH3_hashLong_internal_loop: argument 2"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_accumulate: argument 1"}
!60 = distinct !{!60, !"XXH3_accumulate"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"XXH3_accumulate: argument 2"}
!63 = !{!64, !62, !65, !57, !52}
!64 = distinct !{!64, !60, !"XXH3_accumulate: argument 0"}
!65 = distinct !{!65, !55, !"XXH3_hashLong_internal_loop: argument 0"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_accumulate_512: argument 1"}
!68 = distinct !{!68, !"XXH3_accumulate_512"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"XXH3_accumulate_512: argument 2"}
!71 = !{!67, !59, !54, !49}
!72 = !{!73, !70, !64, !62, !65, !57, !52}
!73 = distinct !{!73, !68, !"XXH3_accumulate_512: argument 0"}
!74 = !{!70, !62, !57, !52}
!75 = !{!73, !67, !64, !59, !65, !54, !49}
!76 = !{!77}
!77 = distinct !{!77, !68, !"XXH3_accumulate_512: argument 1:It1"}
!78 = !{!79}
!79 = distinct !{!79, !68, !"XXH3_accumulate_512: argument 2:It1"}
!80 = !{!77, !59, !54, !49}
!81 = !{!82, !79, !64, !62, !65, !57, !52}
!82 = distinct !{!82, !68, !"XXH3_accumulate_512: argument 0:It1"}
!83 = !{!79, !62, !57, !52}
!84 = !{!82, !77, !64, !59, !65, !54, !49}
!85 = !{!86}
!86 = distinct !{!86, !68, !"XXH3_accumulate_512: argument 1:It2"}
!87 = !{!88}
!88 = distinct !{!88, !68, !"XXH3_accumulate_512: argument 2:It2"}
!89 = !{!86, !59, !54, !49}
!90 = !{!91, !88, !64, !62, !65, !57, !52}
!91 = distinct !{!91, !68, !"XXH3_accumulate_512: argument 0:It2"}
!92 = !{!88, !62, !57, !52}
!93 = !{!91, !86, !64, !59, !65, !54, !49}
!94 = !{!95}
!95 = distinct !{!95, !68, !"XXH3_accumulate_512: argument 1:It3"}
!96 = !{!97}
!97 = distinct !{!97, !68, !"XXH3_accumulate_512: argument 2:It3"}
!98 = !{!95, !59, !54, !49}
!99 = !{!100, !97, !64, !62, !65, !57, !52}
!100 = distinct !{!100, !68, !"XXH3_accumulate_512: argument 0:It3"}
!101 = !{!97, !62, !57, !52}
!102 = !{!100, !95, !64, !59, !65, !54, !49}
!103 = !{!104, !52}
!104 = distinct !{!104, !105, !"XXH3_mergeAccs: argument 1"}
!105 = distinct !{!105, !"XXH3_mergeAccs"}
!106 = !{!107, !49}
!107 = distinct !{!107, !105, !"XXH3_mergeAccs: argument 0"}
