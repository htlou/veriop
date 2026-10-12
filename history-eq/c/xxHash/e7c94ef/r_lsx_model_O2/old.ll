; ModuleID = 'r_lsx_model/old.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e7c94ef/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = xor i64 %17, %9
  %27 = add i64 %9, %2
  %28 = lshr i64 %26, 32
  %29 = and i64 %26, 4294967295
  %30 = mul nuw i64 %29, %28
  %31 = xor i64 %18, %10
  %32 = add i64 %10, %1
  %33 = add i64 %32, %30
  %34 = lshr i64 %31, 32
  %35 = and i64 %31, 4294967295
  %36 = mul nuw i64 %35, %34
  %37 = add i64 %27, %36
  %38 = xor i64 %19, %11
  %39 = add i64 %11, %4
  %40 = lshr i64 %38, 32
  %41 = and i64 %38, 4294967295
  %42 = mul nuw i64 %41, %40
  %43 = xor i64 %20, %12
  %44 = add i64 %12, %3
  %45 = add i64 %44, %42
  %46 = lshr i64 %43, 32
  %47 = and i64 %43, 4294967295
  %48 = mul nuw i64 %47, %46
  %49 = add i64 %39, %48
  %50 = xor i64 %21, %13
  %51 = add i64 %13, %6
  %52 = lshr i64 %50, 32
  %53 = and i64 %50, 4294967295
  %54 = mul nuw i64 %53, %52
  %55 = xor i64 %22, %14
  %56 = add i64 %14, %5
  %57 = add i64 %56, %54
  %58 = lshr i64 %55, 32
  %59 = and i64 %55, 4294967295
  %60 = mul nuw i64 %59, %58
  %61 = add i64 %51, %60
  %62 = xor i64 %23, %15
  %63 = add i64 %15, %8
  %64 = lshr i64 %62, 32
  %65 = and i64 %62, 4294967295
  %66 = mul nuw i64 %65, %64
  %67 = xor i64 %24, %16
  %68 = add i64 %16, %7
  %69 = add i64 %68, %66
  %70 = lshr i64 %67, 32
  %71 = and i64 %67, 4294967295
  %72 = mul nuw i64 %71, %70
  %73 = add i64 %63, %72
  store i64 %33, ptr %0, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %37, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %45, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %49, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %57, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %61, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %69, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %73, ptr %80, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = lshr i64 %1, 47
  %19 = xor i64 %18, %9
  %20 = xor i64 %19, %1
  %21 = mul i64 %20, 2654435761
  %22 = lshr i64 %2, 47
  %23 = xor i64 %22, %10
  %24 = xor i64 %23, %2
  %25 = mul i64 %24, 2654435761
  %26 = lshr i64 %3, 47
  %27 = xor i64 %26, %11
  %28 = xor i64 %27, %3
  %29 = mul i64 %28, 2654435761
  %30 = lshr i64 %4, 47
  %31 = xor i64 %30, %12
  %32 = xor i64 %31, %4
  %33 = mul i64 %32, 2654435761
  %34 = lshr i64 %5, 47
  %35 = xor i64 %34, %13
  %36 = xor i64 %35, %5
  %37 = mul i64 %36, 2654435761
  %38 = lshr i64 %6, 47
  %39 = xor i64 %38, %14
  %40 = xor i64 %39, %6
  %41 = mul i64 %40, 2654435761
  %42 = lshr i64 %7, 47
  %43 = xor i64 %42, %15
  %44 = xor i64 %43, %7
  %45 = mul i64 %44, 2654435761
  %46 = lshr i64 %8, 47
  %47 = xor i64 %46, %16
  %48 = xor i64 %47, %8
  %49 = mul i64 %48, 2654435761
  store i64 %21, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %25, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %29, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %33, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %37, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %41, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %45, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %49, ptr %56, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local i64 @target_api_len1024(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [192 x i8], align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %.preheader, label %205

.preheader:                                       ; preds = %2, %.preheader
  %5 = phi i64 [ %92, %.preheader ], [ 2870177450012600261, %2 ]
  %6 = phi i64 [ %96, %.preheader ], [ 2654435761, %2 ]
  %7 = phi i64 [ %72, %.preheader ], [ -8796714831421723037, %2 ]
  %8 = phi i64 [ %76, %.preheader ], [ 2246822519, %2 ]
  %9 = phi i64 [ %52, %.preheader ], [ -4417276706812531889, %2 ]
  %10 = phi i64 [ %56, %.preheader ], [ 1609587929392839161, %2 ]
  %11 = phi i64 [ %32, %.preheader ], [ 3266489917, %2 ]
  %12 = phi i64 [ %36, %.preheader ], [ -7046029288634856825, %2 ]
  %13 = phi i64 [ %97, %.preheader ], [ 0, %2 ]
  %14 = shl i64 %13, 6
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %16, i32 0, i32 3, i32 1)
  %17 = shl i64 %13, 3
  %18 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %17
  %19 = load i64, ptr %15, align 1
  %20 = load i64, ptr %18, align 8
  %21 = xor i64 %20, %19
  %22 = add i64 %19, %12
  %23 = lshr i64 %21, 32
  %24 = and i64 %21, 4294967295
  %25 = mul nuw i64 %24, %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %27 = load i64, ptr %26, align 1
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %29 = load i64, ptr %28, align 8
  %30 = xor i64 %29, %27
  %31 = add i64 %27, %11
  %32 = add i64 %31, %25
  %33 = lshr i64 %30, 32
  %34 = and i64 %30, 4294967295
  %35 = mul nuw i64 %34, %33
  %36 = add i64 %22, %35
  %37 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %38 = load i64, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %40 = load i64, ptr %39, align 8
  %41 = xor i64 %40, %38
  %42 = add i64 %38, %10
  %43 = lshr i64 %41, 32
  %44 = and i64 %41, 4294967295
  %45 = mul nuw i64 %44, %43
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %49 = load i64, ptr %48, align 8
  %50 = xor i64 %49, %47
  %51 = add i64 %47, %9
  %52 = add i64 %51, %45
  %53 = lshr i64 %50, 32
  %54 = and i64 %50, 4294967295
  %55 = mul nuw i64 %54, %53
  %56 = add i64 %42, %55
  %57 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %60 = load i64, ptr %59, align 8
  %61 = xor i64 %60, %58
  %62 = add i64 %58, %8
  %63 = lshr i64 %61, 32
  %64 = and i64 %61, 4294967295
  %65 = mul nuw i64 %64, %63
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %69 = load i64, ptr %68, align 8
  %70 = xor i64 %69, %67
  %71 = add i64 %67, %7
  %72 = add i64 %71, %65
  %73 = lshr i64 %70, 32
  %74 = and i64 %70, 4294967295
  %75 = mul nuw i64 %74, %73
  %76 = add i64 %62, %75
  %77 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %80 = load i64, ptr %79, align 8
  %81 = xor i64 %80, %78
  %82 = add i64 %78, %6
  %83 = lshr i64 %81, 32
  %84 = and i64 %81, 4294967295
  %85 = mul nuw i64 %84, %83
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %87 = load i64, ptr %86, align 1
  %88 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %89 = load i64, ptr %88, align 8
  %90 = xor i64 %89, %87
  %91 = add i64 %87, %5
  %92 = add i64 %91, %85
  %93 = lshr i64 %90, 32
  %94 = and i64 %90, 4294967295
  %95 = mul nuw i64 %94, %93
  %96 = add i64 %82, %95
  %97 = add nuw nsw i64 %13, 1
  %98 = icmp eq i64 %97, 15
  br i1 %98, label %99, label %.preheader

99:                                               ; preds = %.preheader
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %101 = load i64, ptr %100, align 1
  %102 = xor i64 %101, -1556992608276218209
  %103 = add i64 %101, %36
  %104 = lshr i64 %102, 32
  %105 = and i64 %102, 4294967295
  %106 = mul nuw i64 %105, %104
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %108 = load i64, ptr %107, align 1
  %109 = xor i64 %108, -4196251135427498811
  %110 = add i64 %108, %32
  %111 = add i64 %110, %106
  %112 = lshr i64 %109, 32
  %113 = and i64 %109, 4294967295
  %114 = mul nuw i64 %113, %112
  %115 = add i64 %103, %114
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, 1723580219865931905
  %119 = add i64 %117, %56
  %120 = lshr i64 %118, 32
  %121 = and i64 %118, 4294967295
  %122 = mul nuw i64 %121, %120
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %124 = load i64, ptr %123, align 1
  %125 = xor i64 %124, -3221803331004277491
  %126 = add i64 %124, %52
  %127 = add i64 %126, %122
  %128 = lshr i64 %125, 32
  %129 = and i64 %125, 4294967295
  %130 = mul nuw i64 %129, %128
  %131 = add i64 %119, %130
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %133 = load i64, ptr %132, align 1
  %134 = xor i64 %133, 3143064850383918358
  %135 = add i64 %133, %76
  %136 = lshr i64 %134, 32
  %137 = and i64 %134, 4294967295
  %138 = mul nuw i64 %137, %136
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %140 = load i64, ptr %139, align 1
  %141 = xor i64 %140, -8071399103737053674
  %142 = add i64 %140, %72
  %143 = add i64 %142, %138
  %144 = lshr i64 %141, 32
  %145 = and i64 %141, 4294967295
  %146 = mul nuw i64 %145, %144
  %147 = add i64 %135, %146
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %149, 5030012605302946040
  %151 = add i64 %149, %96
  %152 = lshr i64 %150, 32
  %153 = and i64 %150, 4294967295
  %154 = mul nuw i64 %153, %152
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %156 = load i64, ptr %155, align 1
  %157 = xor i64 %156, -5825401622958753077
  %158 = add i64 %156, %92
  %159 = add i64 %158, %154
  %160 = lshr i64 %157, 32
  %161 = and i64 %157, 4294967295
  %162 = mul nuw i64 %161, %160
  %163 = add i64 %151, %162
  %164 = xor i64 %111, 7914194659941938988
  %165 = xor i64 %115, -6611157965513653271
  %166 = zext i64 %164 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %171, -2457058741658706944
  %173 = xor i64 %127, -1839215637059881052
  %174 = xor i64 %131, -3433288310154277810
  %175 = zext i64 %173 to i128
  %176 = zext i64 %174 to i128
  %177 = mul nuw i128 %176, %175
  %178 = lshr i128 %177, 64
  %179 = xor i128 %178, %177
  %180 = trunc i128 %179 to i64
  %181 = add i64 %172, %180
  %182 = xor i64 %143, 5046485836271438973
  %183 = xor i64 %147, -8055285457383852172
  %184 = zext i64 %182 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %181, %189
  %191 = xor i64 %159, 5920048007935066598
  %192 = xor i64 %163, 7336514198459093435
  %193 = zext i64 %191 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %190, %198
  %200 = lshr i64 %199, 37
  %201 = xor i64 %200, %199
  %202 = mul i64 %201, 1609587791953885689
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  br label %486

205:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #4
  %206 = add i64 %1, -4734510112055689544
  %207 = sub i64 2066345149520216444, %1
  store i64 %206, ptr %3, align 8
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %207, ptr %208, align 8
  %209 = add i64 %1, -2623469361688619810
  %210 = sub i64 2262974939099578482, %1
  %211 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %209, ptr %211, align 8
  %212 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %210, ptr %212, align 8
  %213 = add i64 %1, 8711581037947681227
  %214 = sub i64 2410270004345854594, %1
  %215 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %213, ptr %215, align 8
  %216 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %214, ptr %216, align 8
  %217 = add i64 %1, -8204357891075471176
  %218 = sub i64 5487137525590930912, %1
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %217, ptr %219, align 8
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %218, ptr %220, align 8
  %221 = add i64 %1, -3818837453329782724
  %222 = sub i64 -6688317018830679928, %1
  %223 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %221, ptr %223, align 8
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %222, ptr %224, align 8
  %225 = add i64 %1, 5690594596133299313
  %226 = sub i64 -2833645246901970632, %1
  %227 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %225, ptr %227, align 8
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %226, ptr %228, align 8
  %229 = add i64 %1, 4554437623014685352
  %230 = sub i64 2111919702937427193, %1
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %229, ptr %231, align 8
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %230, ptr %232, align 8
  %233 = add i64 %1, 3556072174620004746
  %234 = sub i64 7238261902898274248, %1
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %233, ptr %235, align 8
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %234, ptr %236, align 8
  %237 = add i64 %1, -4329134394285701654
  %238 = sub i64 -1485321483350670907, %1
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %237, ptr %239, align 8
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %238, ptr %240, align 8
  %241 = add i64 %1, 5321830579834785047
  %242 = sub i64 -7032137544937171245, %1
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %241, ptr %243, align 8
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %242, ptr %244, align 8
  %245 = add i64 %1, -242834301215959509
  %246 = sub i64 -3588858202114426737, %1
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %245, ptr %247, align 8
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %246, ptr %248, align 8
  %249 = add i64 %1, 2883454493032893253
  %250 = sub i64 9097354517224871855, %1
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %249, ptr %251, align 8
  %252 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %250, ptr %252, align 8
  br label %253

253:                                              ; preds = %253, %205
  %254 = phi i64 [ %341, %253 ], [ 2870177450012600261, %205 ]
  %255 = phi i64 [ %345, %253 ], [ 2654435761, %205 ]
  %256 = phi i64 [ %321, %253 ], [ -8796714831421723037, %205 ]
  %257 = phi i64 [ %325, %253 ], [ 2246822519, %205 ]
  %258 = phi i64 [ %301, %253 ], [ -4417276706812531889, %205 ]
  %259 = phi i64 [ %305, %253 ], [ 1609587929392839161, %205 ]
  %260 = phi i64 [ %281, %253 ], [ 3266489917, %205 ]
  %261 = phi i64 [ %285, %253 ], [ -7046029288634856825, %205 ]
  %262 = phi i64 [ %346, %253 ], [ 0, %205 ]
  %263 = shl i64 %262, 6
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 %263
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %265, i32 0, i32 3, i32 1)
  %266 = shl i64 %262, 3
  %267 = getelementptr inbounds nuw i8, ptr %3, i64 %266
  %268 = load i64, ptr %264, align 1
  %269 = load i64, ptr %267, align 8
  %270 = xor i64 %269, %268
  %271 = add i64 %268, %261
  %272 = lshr i64 %270, 32
  %273 = and i64 %270, 4294967295
  %274 = mul nuw i64 %273, %272
  %275 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %267, i64 8
  %278 = load i64, ptr %277, align 8
  %279 = xor i64 %278, %276
  %280 = add i64 %276, %260
  %281 = add i64 %280, %274
  %282 = lshr i64 %279, 32
  %283 = and i64 %279, 4294967295
  %284 = mul nuw i64 %283, %282
  %285 = add i64 %271, %284
  %286 = getelementptr inbounds nuw i8, ptr %264, i64 16
  %287 = load i64, ptr %286, align 1
  %288 = getelementptr inbounds nuw i8, ptr %267, i64 16
  %289 = load i64, ptr %288, align 8
  %290 = xor i64 %289, %287
  %291 = add i64 %287, %259
  %292 = lshr i64 %290, 32
  %293 = and i64 %290, 4294967295
  %294 = mul nuw i64 %293, %292
  %295 = getelementptr inbounds nuw i8, ptr %264, i64 24
  %296 = load i64, ptr %295, align 1
  %297 = getelementptr inbounds nuw i8, ptr %267, i64 24
  %298 = load i64, ptr %297, align 8
  %299 = xor i64 %298, %296
  %300 = add i64 %296, %258
  %301 = add i64 %300, %294
  %302 = lshr i64 %299, 32
  %303 = and i64 %299, 4294967295
  %304 = mul nuw i64 %303, %302
  %305 = add i64 %291, %304
  %306 = getelementptr inbounds nuw i8, ptr %264, i64 32
  %307 = load i64, ptr %306, align 1
  %308 = getelementptr inbounds nuw i8, ptr %267, i64 32
  %309 = load i64, ptr %308, align 8
  %310 = xor i64 %309, %307
  %311 = add i64 %307, %257
  %312 = lshr i64 %310, 32
  %313 = and i64 %310, 4294967295
  %314 = mul nuw i64 %313, %312
  %315 = getelementptr inbounds nuw i8, ptr %264, i64 40
  %316 = load i64, ptr %315, align 1
  %317 = getelementptr inbounds nuw i8, ptr %267, i64 40
  %318 = load i64, ptr %317, align 8
  %319 = xor i64 %318, %316
  %320 = add i64 %316, %256
  %321 = add i64 %320, %314
  %322 = lshr i64 %319, 32
  %323 = and i64 %319, 4294967295
  %324 = mul nuw i64 %323, %322
  %325 = add i64 %311, %324
  %326 = getelementptr inbounds nuw i8, ptr %264, i64 48
  %327 = load i64, ptr %326, align 1
  %328 = getelementptr inbounds nuw i8, ptr %267, i64 48
  %329 = load i64, ptr %328, align 8
  %330 = xor i64 %329, %327
  %331 = add i64 %327, %255
  %332 = lshr i64 %330, 32
  %333 = and i64 %330, 4294967295
  %334 = mul nuw i64 %333, %332
  %335 = getelementptr inbounds nuw i8, ptr %264, i64 56
  %336 = load i64, ptr %335, align 1
  %337 = getelementptr inbounds nuw i8, ptr %267, i64 56
  %338 = load i64, ptr %337, align 8
  %339 = xor i64 %338, %336
  %340 = add i64 %336, %254
  %341 = add i64 %340, %334
  %342 = lshr i64 %339, 32
  %343 = and i64 %339, 4294967295
  %344 = mul nuw i64 %343, %342
  %345 = add i64 %331, %344
  %346 = add nuw nsw i64 %262, 1
  %347 = icmp eq i64 %346, 15
  br i1 %347, label %348, label %253

348:                                              ; preds = %253
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %350 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %351 = load i64, ptr %349, align 1
  %352 = load i64, ptr %350, align 1
  %353 = xor i64 %352, %351
  %354 = add i64 %351, %285
  %355 = lshr i64 %353, 32
  %356 = and i64 %353, 4294967295
  %357 = mul nuw i64 %356, %355
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %359 = load i64, ptr %358, align 1
  %360 = getelementptr inbounds nuw i8, ptr %3, i64 129
  %361 = load i64, ptr %360, align 1
  %362 = xor i64 %361, %359
  %363 = add i64 %359, %281
  %364 = add i64 %363, %357
  %365 = lshr i64 %362, 32
  %366 = and i64 %362, 4294967295
  %367 = mul nuw i64 %366, %365
  %368 = add i64 %354, %367
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %370 = load i64, ptr %369, align 1
  %371 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %372 = load i64, ptr %371, align 1
  %373 = xor i64 %372, %370
  %374 = add i64 %370, %305
  %375 = lshr i64 %373, 32
  %376 = and i64 %373, 4294967295
  %377 = mul nuw i64 %376, %375
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %379 = load i64, ptr %378, align 1
  %380 = getelementptr inbounds nuw i8, ptr %3, i64 145
  %381 = load i64, ptr %380, align 1
  %382 = xor i64 %381, %379
  %383 = add i64 %379, %301
  %384 = add i64 %383, %377
  %385 = lshr i64 %382, 32
  %386 = and i64 %382, 4294967295
  %387 = mul nuw i64 %386, %385
  %388 = add i64 %374, %387
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %390 = load i64, ptr %389, align 1
  %391 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %392 = load i64, ptr %391, align 1
  %393 = xor i64 %392, %390
  %394 = add i64 %390, %325
  %395 = lshr i64 %393, 32
  %396 = and i64 %393, 4294967295
  %397 = mul nuw i64 %396, %395
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %399 = load i64, ptr %398, align 1
  %400 = getelementptr inbounds nuw i8, ptr %3, i64 161
  %401 = load i64, ptr %400, align 1
  %402 = xor i64 %401, %399
  %403 = add i64 %399, %321
  %404 = add i64 %403, %397
  %405 = lshr i64 %402, 32
  %406 = and i64 %402, 4294967295
  %407 = mul nuw i64 %406, %405
  %408 = add i64 %394, %407
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %410 = load i64, ptr %409, align 1
  %411 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %412 = load i64, ptr %411, align 1
  %413 = xor i64 %412, %410
  %414 = add i64 %410, %345
  %415 = lshr i64 %413, 32
  %416 = and i64 %413, 4294967295
  %417 = mul nuw i64 %416, %415
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %419 = load i64, ptr %418, align 1
  %420 = getelementptr inbounds nuw i8, ptr %3, i64 177
  %421 = load i64, ptr %420, align 1
  %422 = xor i64 %421, %419
  %423 = add i64 %419, %341
  %424 = add i64 %423, %417
  %425 = lshr i64 %422, 32
  %426 = and i64 %422, 4294967295
  %427 = mul nuw i64 %426, %425
  %428 = add i64 %414, %427
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %430 = load i64, ptr %429, align 1
  %431 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %432 = load i64, ptr %431, align 1
  %433 = xor i64 %430, %364
  %434 = xor i64 %432, %368
  %435 = zext i64 %433 to i128
  %436 = zext i64 %434 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %440, -2457058741658706944
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %443 = load i64, ptr %442, align 1
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %445 = load i64, ptr %444, align 1
  %446 = xor i64 %443, %384
  %447 = xor i64 %445, %388
  %448 = zext i64 %446 to i128
  %449 = zext i64 %447 to i128
  %450 = mul nuw i128 %449, %448
  %451 = lshr i128 %450, 64
  %452 = xor i128 %451, %450
  %453 = trunc i128 %452 to i64
  %454 = add i64 %441, %453
  %455 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %456 = load i64, ptr %455, align 1
  %457 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %458 = load i64, ptr %457, align 1
  %459 = xor i64 %456, %404
  %460 = xor i64 %458, %408
  %461 = zext i64 %459 to i128
  %462 = zext i64 %460 to i128
  %463 = mul nuw i128 %462, %461
  %464 = lshr i128 %463, 64
  %465 = xor i128 %464, %463
  %466 = trunc i128 %465 to i64
  %467 = add i64 %454, %466
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %469 = load i64, ptr %468, align 1
  %470 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %471 = load i64, ptr %470, align 1
  %472 = xor i64 %469, %424
  %473 = xor i64 %471, %428
  %474 = zext i64 %472 to i128
  %475 = zext i64 %473 to i128
  %476 = mul nuw i128 %475, %474
  %477 = lshr i128 %476, 64
  %478 = xor i128 %477, %476
  %479 = trunc i128 %478 to i64
  %480 = add i64 %467, %479
  %481 = lshr i64 %480, 37
  %482 = xor i64 %481, %480
  %483 = mul i64 %482, 1609587791953885689
  %484 = lshr i64 %483, 32
  %485 = xor i64 %484, %483
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #4
  br label %486

486:                                              ; preds = %348, %99
  %487 = phi i64 [ %204, %99 ], [ %485, %348 ]
  ret i64 %487
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
