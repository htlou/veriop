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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  br i1 %4, label %5, label %207

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi i64 [ %94, %6 ], [ 2870177450012600261, %5 ]
  %8 = phi i64 [ %98, %6 ], [ 2654435761, %5 ]
  %9 = phi i64 [ %74, %6 ], [ -8796714831421723037, %5 ]
  %10 = phi i64 [ %78, %6 ], [ 2246822519, %5 ]
  %11 = phi i64 [ %54, %6 ], [ -4417276706812531889, %5 ]
  %12 = phi i64 [ %58, %6 ], [ 1609587929392839161, %5 ]
  %13 = phi i64 [ %34, %6 ], [ 3266489917, %5 ]
  %14 = phi i64 [ %38, %6 ], [ -7046029288634856825, %5 ]
  %15 = phi i64 [ %99, %6 ], [ 0, %5 ]
  %16 = shl i64 %15, 6
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %18, i32 0, i32 3, i32 1)
  %19 = shl i64 %15, 3
  %20 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %19
  %21 = load i64, ptr %17, align 1
  %22 = load i64, ptr %20, align 8
  %23 = xor i64 %22, %21
  %24 = add i64 %21, %14
  %25 = lshr i64 %23, 32
  %26 = and i64 %23, 4294967295
  %27 = mul nuw i64 %26, %25
  %28 = add i64 %27, %13
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %32 = load i64, ptr %31, align 8
  %33 = xor i64 %32, %30
  %34 = add i64 %28, %30
  %35 = lshr i64 %33, 32
  %36 = and i64 %33, 4294967295
  %37 = mul nuw i64 %36, %35
  %38 = add i64 %24, %37
  %39 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %40 = load i64, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %42 = load i64, ptr %41, align 8
  %43 = xor i64 %42, %40
  %44 = add i64 %40, %12
  %45 = lshr i64 %43, 32
  %46 = and i64 %43, 4294967295
  %47 = mul nuw i64 %46, %45
  %48 = add i64 %47, %11
  %49 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %52 = load i64, ptr %51, align 8
  %53 = xor i64 %52, %50
  %54 = add i64 %48, %50
  %55 = lshr i64 %53, 32
  %56 = and i64 %53, 4294967295
  %57 = mul nuw i64 %56, %55
  %58 = add i64 %44, %57
  %59 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %60 = load i64, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %62 = load i64, ptr %61, align 8
  %63 = xor i64 %62, %60
  %64 = add i64 %60, %10
  %65 = lshr i64 %63, 32
  %66 = and i64 %63, 4294967295
  %67 = mul nuw i64 %66, %65
  %68 = add i64 %67, %9
  %69 = getelementptr inbounds nuw i8, ptr %17, i64 40
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %20, i64 40
  %72 = load i64, ptr %71, align 8
  %73 = xor i64 %72, %70
  %74 = add i64 %68, %70
  %75 = lshr i64 %73, 32
  %76 = and i64 %73, 4294967295
  %77 = mul nuw i64 %76, %75
  %78 = add i64 %64, %77
  %79 = getelementptr inbounds nuw i8, ptr %17, i64 48
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %20, i64 48
  %82 = load i64, ptr %81, align 8
  %83 = xor i64 %82, %80
  %84 = add i64 %80, %8
  %85 = lshr i64 %83, 32
  %86 = and i64 %83, 4294967295
  %87 = mul nuw i64 %86, %85
  %88 = add i64 %87, %7
  %89 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %90 = load i64, ptr %89, align 1
  %91 = getelementptr inbounds nuw i8, ptr %20, i64 56
  %92 = load i64, ptr %91, align 8
  %93 = xor i64 %92, %90
  %94 = add i64 %88, %90
  %95 = lshr i64 %93, 32
  %96 = and i64 %93, 4294967295
  %97 = mul nuw i64 %96, %95
  %98 = add i64 %84, %97
  %99 = add nuw nsw i64 %15, 1
  %100 = icmp eq i64 %99, 15
  br i1 %100, label %101, label %6

101:                                              ; preds = %6
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %103 = load i64, ptr %102, align 1
  %104 = xor i64 %103, -1556992608276218209
  %105 = add i64 %103, %38
  %106 = lshr i64 %104, 32
  %107 = and i64 %104, 4294967295
  %108 = mul nuw i64 %107, %106
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %110 = load i64, ptr %109, align 1
  %111 = xor i64 %110, -4196251135427498811
  %112 = add i64 %110, %34
  %113 = add i64 %112, %108
  %114 = lshr i64 %111, 32
  %115 = and i64 %111, 4294967295
  %116 = mul nuw i64 %115, %114
  %117 = add i64 %105, %116
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %119, 1723580219865931905
  %121 = add i64 %119, %58
  %122 = lshr i64 %120, 32
  %123 = and i64 %120, 4294967295
  %124 = mul nuw i64 %123, %122
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %126, -3221803331004277491
  %128 = add i64 %126, %54
  %129 = add i64 %128, %124
  %130 = lshr i64 %127, 32
  %131 = and i64 %127, 4294967295
  %132 = mul nuw i64 %131, %130
  %133 = add i64 %121, %132
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %135 = load i64, ptr %134, align 1
  %136 = xor i64 %135, 3143064850383918358
  %137 = add i64 %135, %78
  %138 = lshr i64 %136, 32
  %139 = and i64 %136, 4294967295
  %140 = mul nuw i64 %139, %138
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %142, -8071399103737053674
  %144 = add i64 %142, %74
  %145 = add i64 %144, %140
  %146 = lshr i64 %143, 32
  %147 = and i64 %143, 4294967295
  %148 = mul nuw i64 %147, %146
  %149 = add i64 %137, %148
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %151 = load i64, ptr %150, align 1
  %152 = xor i64 %151, 5030012605302946040
  %153 = add i64 %151, %98
  %154 = lshr i64 %152, 32
  %155 = and i64 %152, 4294967295
  %156 = mul nuw i64 %155, %154
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %158 = load i64, ptr %157, align 1
  %159 = xor i64 %158, -5825401622958753077
  %160 = add i64 %158, %94
  %161 = add i64 %160, %156
  %162 = lshr i64 %159, 32
  %163 = and i64 %159, 4294967295
  %164 = mul nuw i64 %163, %162
  %165 = add i64 %153, %164
  %166 = xor i64 %113, 7914194659941938988
  %167 = xor i64 %117, -6611157965513653271
  %168 = zext i64 %166 to i128
  %169 = zext i64 %167 to i128
  %170 = mul nuw i128 %169, %168
  %171 = lshr i128 %170, 64
  %172 = xor i128 %171, %170
  %173 = trunc i128 %172 to i64
  %174 = add i64 %173, -2457058741658706944
  %175 = xor i64 %129, -1839215637059881052
  %176 = xor i64 %133, -3433288310154277810
  %177 = zext i64 %175 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %174, %182
  %184 = xor i64 %145, 5046485836271438973
  %185 = xor i64 %149, -8055285457383852172
  %186 = zext i64 %184 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %183, %191
  %193 = xor i64 %161, 5920048007935066598
  %194 = xor i64 %165, 7336514198459093435
  %195 = zext i64 %193 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %192, %200
  %202 = lshr i64 %201, 37
  %203 = xor i64 %202, %201
  %204 = mul i64 %203, 1609587791953885689
  %205 = lshr i64 %204, 32
  %206 = xor i64 %205, %204
  br label %488

207:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #5
  %208 = add i64 %1, -4734510112055689544
  %209 = sub i64 2066345149520216444, %1
  store i64 %208, ptr %3, align 8
  %210 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %209, ptr %210, align 8
  %211 = add i64 %1, -2623469361688619810
  %212 = sub i64 2262974939099578482, %1
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %211, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %212, ptr %214, align 8
  %215 = add i64 %1, 8711581037947681227
  %216 = sub i64 2410270004345854594, %1
  %217 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %215, ptr %217, align 8
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %216, ptr %218, align 8
  %219 = add i64 %1, -8204357891075471176
  %220 = sub i64 5487137525590930912, %1
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %219, ptr %221, align 8
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %220, ptr %222, align 8
  %223 = add i64 %1, -3818837453329782724
  %224 = sub i64 -6688317018830679928, %1
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %223, ptr %225, align 8
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %224, ptr %226, align 8
  %227 = add i64 %1, 5690594596133299313
  %228 = sub i64 -2833645246901970632, %1
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %227, ptr %229, align 8
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %228, ptr %230, align 8
  %231 = add i64 %1, 4554437623014685352
  %232 = sub i64 2111919702937427193, %1
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %231, ptr %233, align 8
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %232, ptr %234, align 8
  %235 = add i64 %1, 3556072174620004746
  %236 = sub i64 7238261902898274248, %1
  %237 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %235, ptr %237, align 8
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %236, ptr %238, align 8
  %239 = add i64 %1, -4329134394285701654
  %240 = sub i64 -1485321483350670907, %1
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %239, ptr %241, align 8
  %242 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %240, ptr %242, align 8
  %243 = add i64 %1, 5321830579834785047
  %244 = sub i64 -7032137544937171245, %1
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %243, ptr %245, align 8
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %244, ptr %246, align 8
  %247 = add i64 %1, -242834301215959509
  %248 = sub i64 -3588858202114426737, %1
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %247, ptr %249, align 8
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %248, ptr %250, align 8
  %251 = add i64 %1, 2883454493032893253
  %252 = sub i64 9097354517224871855, %1
  %253 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %251, ptr %253, align 8
  %254 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %252, ptr %254, align 8
  br label %255

255:                                              ; preds = %255, %207
  %256 = phi i64 [ %343, %255 ], [ 2870177450012600261, %207 ]
  %257 = phi i64 [ %347, %255 ], [ 2654435761, %207 ]
  %258 = phi i64 [ %323, %255 ], [ -8796714831421723037, %207 ]
  %259 = phi i64 [ %327, %255 ], [ 2246822519, %207 ]
  %260 = phi i64 [ %303, %255 ], [ -4417276706812531889, %207 ]
  %261 = phi i64 [ %307, %255 ], [ 1609587929392839161, %207 ]
  %262 = phi i64 [ %283, %255 ], [ 3266489917, %207 ]
  %263 = phi i64 [ %287, %255 ], [ -7046029288634856825, %207 ]
  %264 = phi i64 [ %348, %255 ], [ 0, %207 ]
  %265 = shl i64 %264, 6
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 %265
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %267, i32 0, i32 3, i32 1)
  %268 = shl i64 %264, 3
  %269 = getelementptr inbounds nuw i8, ptr %3, i64 %268
  %270 = load i64, ptr %266, align 1
  %271 = load i64, ptr %269, align 8
  %272 = xor i64 %271, %270
  %273 = add i64 %270, %263
  %274 = lshr i64 %272, 32
  %275 = and i64 %272, 4294967295
  %276 = mul nuw i64 %275, %274
  %277 = add i64 %276, %262
  %278 = getelementptr inbounds nuw i8, ptr %266, i64 8
  %279 = load i64, ptr %278, align 1
  %280 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %281 = load i64, ptr %280, align 8
  %282 = xor i64 %281, %279
  %283 = add i64 %277, %279
  %284 = lshr i64 %282, 32
  %285 = and i64 %282, 4294967295
  %286 = mul nuw i64 %285, %284
  %287 = add i64 %273, %286
  %288 = getelementptr inbounds nuw i8, ptr %266, i64 16
  %289 = load i64, ptr %288, align 1
  %290 = getelementptr inbounds nuw i8, ptr %269, i64 16
  %291 = load i64, ptr %290, align 8
  %292 = xor i64 %291, %289
  %293 = add i64 %289, %261
  %294 = lshr i64 %292, 32
  %295 = and i64 %292, 4294967295
  %296 = mul nuw i64 %295, %294
  %297 = add i64 %296, %260
  %298 = getelementptr inbounds nuw i8, ptr %266, i64 24
  %299 = load i64, ptr %298, align 1
  %300 = getelementptr inbounds nuw i8, ptr %269, i64 24
  %301 = load i64, ptr %300, align 8
  %302 = xor i64 %301, %299
  %303 = add i64 %297, %299
  %304 = lshr i64 %302, 32
  %305 = and i64 %302, 4294967295
  %306 = mul nuw i64 %305, %304
  %307 = add i64 %293, %306
  %308 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %309 = load i64, ptr %308, align 1
  %310 = getelementptr inbounds nuw i8, ptr %269, i64 32
  %311 = load i64, ptr %310, align 8
  %312 = xor i64 %311, %309
  %313 = add i64 %309, %259
  %314 = lshr i64 %312, 32
  %315 = and i64 %312, 4294967295
  %316 = mul nuw i64 %315, %314
  %317 = add i64 %316, %258
  %318 = getelementptr inbounds nuw i8, ptr %266, i64 40
  %319 = load i64, ptr %318, align 1
  %320 = getelementptr inbounds nuw i8, ptr %269, i64 40
  %321 = load i64, ptr %320, align 8
  %322 = xor i64 %321, %319
  %323 = add i64 %317, %319
  %324 = lshr i64 %322, 32
  %325 = and i64 %322, 4294967295
  %326 = mul nuw i64 %325, %324
  %327 = add i64 %313, %326
  %328 = getelementptr inbounds nuw i8, ptr %266, i64 48
  %329 = load i64, ptr %328, align 1
  %330 = getelementptr inbounds nuw i8, ptr %269, i64 48
  %331 = load i64, ptr %330, align 8
  %332 = xor i64 %331, %329
  %333 = add i64 %329, %257
  %334 = lshr i64 %332, 32
  %335 = and i64 %332, 4294967295
  %336 = mul nuw i64 %335, %334
  %337 = add i64 %336, %256
  %338 = getelementptr inbounds nuw i8, ptr %266, i64 56
  %339 = load i64, ptr %338, align 1
  %340 = getelementptr inbounds nuw i8, ptr %269, i64 56
  %341 = load i64, ptr %340, align 8
  %342 = xor i64 %341, %339
  %343 = add i64 %337, %339
  %344 = lshr i64 %342, 32
  %345 = and i64 %342, 4294967295
  %346 = mul nuw i64 %345, %344
  %347 = add i64 %333, %346
  %348 = add nuw nsw i64 %264, 1
  %349 = icmp eq i64 %348, 15
  br i1 %349, label %350, label %255

350:                                              ; preds = %255
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %352 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %353 = load i64, ptr %351, align 1
  %354 = load i64, ptr %352, align 1
  %355 = xor i64 %354, %353
  %356 = add i64 %353, %287
  %357 = lshr i64 %355, 32
  %358 = and i64 %355, 4294967295
  %359 = mul nuw i64 %358, %357
  %360 = add i64 %359, %283
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %362 = load i64, ptr %361, align 1
  %363 = getelementptr inbounds nuw i8, ptr %3, i64 129
  %364 = load i64, ptr %363, align 1
  %365 = xor i64 %364, %362
  %366 = add i64 %360, %362
  %367 = lshr i64 %365, 32
  %368 = and i64 %365, 4294967295
  %369 = mul nuw i64 %368, %367
  %370 = add i64 %356, %369
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %372 = load i64, ptr %371, align 1
  %373 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %374 = load i64, ptr %373, align 1
  %375 = xor i64 %374, %372
  %376 = add i64 %372, %307
  %377 = lshr i64 %375, 32
  %378 = and i64 %375, 4294967295
  %379 = mul nuw i64 %378, %377
  %380 = add i64 %379, %303
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %382 = load i64, ptr %381, align 1
  %383 = getelementptr inbounds nuw i8, ptr %3, i64 145
  %384 = load i64, ptr %383, align 1
  %385 = xor i64 %384, %382
  %386 = add i64 %380, %382
  %387 = lshr i64 %385, 32
  %388 = and i64 %385, 4294967295
  %389 = mul nuw i64 %388, %387
  %390 = add i64 %376, %389
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %392 = load i64, ptr %391, align 1
  %393 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %394 = load i64, ptr %393, align 1
  %395 = xor i64 %394, %392
  %396 = add i64 %392, %327
  %397 = lshr i64 %395, 32
  %398 = and i64 %395, 4294967295
  %399 = mul nuw i64 %398, %397
  %400 = add i64 %399, %323
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %402 = load i64, ptr %401, align 1
  %403 = getelementptr inbounds nuw i8, ptr %3, i64 161
  %404 = load i64, ptr %403, align 1
  %405 = xor i64 %404, %402
  %406 = add i64 %400, %402
  %407 = lshr i64 %405, 32
  %408 = and i64 %405, 4294967295
  %409 = mul nuw i64 %408, %407
  %410 = add i64 %396, %409
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %412 = load i64, ptr %411, align 1
  %413 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %414 = load i64, ptr %413, align 1
  %415 = xor i64 %414, %412
  %416 = add i64 %412, %347
  %417 = lshr i64 %415, 32
  %418 = and i64 %415, 4294967295
  %419 = mul nuw i64 %418, %417
  %420 = add i64 %419, %343
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %3, i64 177
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = add i64 %420, %422
  %427 = lshr i64 %425, 32
  %428 = and i64 %425, 4294967295
  %429 = mul nuw i64 %428, %427
  %430 = add i64 %416, %429
  %431 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %432 = load i64, ptr %431, align 1
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %434 = load i64, ptr %433, align 1
  %435 = xor i64 %432, %366
  %436 = xor i64 %434, %370
  %437 = zext i64 %435 to i128
  %438 = zext i64 %436 to i128
  %439 = mul nuw i128 %438, %437
  %440 = lshr i128 %439, 64
  %441 = xor i128 %440, %439
  %442 = trunc i128 %441 to i64
  %443 = add i64 %442, -2457058741658706944
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %445 = load i64, ptr %444, align 1
  %446 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %447 = load i64, ptr %446, align 1
  %448 = xor i64 %445, %386
  %449 = xor i64 %447, %390
  %450 = zext i64 %448 to i128
  %451 = zext i64 %449 to i128
  %452 = mul nuw i128 %451, %450
  %453 = lshr i128 %452, 64
  %454 = xor i128 %453, %452
  %455 = trunc i128 %454 to i64
  %456 = add i64 %443, %455
  %457 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %458 = load i64, ptr %457, align 1
  %459 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %460 = load i64, ptr %459, align 1
  %461 = xor i64 %458, %406
  %462 = xor i64 %460, %410
  %463 = zext i64 %461 to i128
  %464 = zext i64 %462 to i128
  %465 = mul nuw i128 %464, %463
  %466 = lshr i128 %465, 64
  %467 = xor i128 %466, %465
  %468 = trunc i128 %467 to i64
  %469 = add i64 %456, %468
  %470 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %471 = load i64, ptr %470, align 1
  %472 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %473 = load i64, ptr %472, align 1
  %474 = xor i64 %471, %426
  %475 = xor i64 %473, %430
  %476 = zext i64 %474 to i128
  %477 = zext i64 %475 to i128
  %478 = mul nuw i128 %477, %476
  %479 = lshr i128 %478, 64
  %480 = xor i128 %479, %478
  %481 = trunc i128 %480 to i64
  %482 = add i64 %469, %481
  %483 = lshr i64 %482, 37
  %484 = xor i64 %483, %482
  %485 = mul i64 %484, 1609587791953885689
  %486 = lshr i64 %485, 32
  %487 = xor i64 %486, %485
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #5
  br label %488

488:                                              ; preds = %350, %101
  %489 = phi i64 [ %206, %101 ], [ %487, %350 ]
  ret i64 %489
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
