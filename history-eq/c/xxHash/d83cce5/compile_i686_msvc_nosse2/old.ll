; ModuleID = 'compile_i686_msvc_nosse2/wrapper.c'
source_filename = "compile_i686_msvc_nosse2/wrapper.c"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc19.33.0"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite)
define dso_local i64 @target_xxh3_len256(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31) local_unnamed_addr #0 {
  %33 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %33) #6
  store i64 %0, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 8
  store i64 %1, ptr %34, align 1
  %35 = getelementptr inbounds nuw i8, ptr %33, i32 16
  store i64 %2, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %33, i32 24
  store i64 %3, ptr %36, align 1
  %37 = getelementptr inbounds nuw i8, ptr %33, i32 32
  store i64 %4, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %33, i32 40
  store i64 %5, ptr %38, align 1
  %39 = getelementptr inbounds nuw i8, ptr %33, i32 48
  store i64 %6, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %33, i32 56
  store i64 %7, ptr %40, align 1
  %41 = getelementptr inbounds nuw i8, ptr %33, i32 64
  store i64 %8, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %33, i32 72
  store i64 %9, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %33, i32 80
  store i64 %10, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %33, i32 88
  store i64 %11, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %33, i32 96
  store i64 %12, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %33, i32 104
  store i64 %13, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %33, i32 112
  store i64 %14, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %33, i32 120
  store i64 %15, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %33, i32 128
  store i64 %16, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %33, i32 136
  store i64 %17, ptr %50, align 1
  %51 = getelementptr inbounds nuw i8, ptr %33, i32 144
  store i64 %18, ptr %51, align 1
  %52 = getelementptr inbounds nuw i8, ptr %33, i32 152
  store i64 %19, ptr %52, align 1
  %53 = getelementptr inbounds nuw i8, ptr %33, i32 160
  store i64 %20, ptr %53, align 1
  %54 = getelementptr inbounds nuw i8, ptr %33, i32 168
  store i64 %21, ptr %54, align 1
  %55 = getelementptr inbounds nuw i8, ptr %33, i32 176
  store i64 %22, ptr %55, align 1
  %56 = getelementptr inbounds nuw i8, ptr %33, i32 184
  store i64 %23, ptr %56, align 1
  %57 = getelementptr inbounds nuw i8, ptr %33, i32 192
  store i64 %24, ptr %57, align 1
  %58 = getelementptr inbounds nuw i8, ptr %33, i32 200
  store i64 %25, ptr %58, align 1
  %59 = getelementptr inbounds nuw i8, ptr %33, i32 208
  store i64 %26, ptr %59, align 1
  %60 = getelementptr inbounds nuw i8, ptr %33, i32 216
  store i64 %27, ptr %60, align 1
  %61 = getelementptr inbounds nuw i8, ptr %33, i32 224
  store i64 %28, ptr %61, align 1
  %62 = getelementptr inbounds nuw i8, ptr %33, i32 232
  store i64 %29, ptr %62, align 1
  %63 = getelementptr inbounds nuw i8, ptr %33, i32 240
  store i64 %30, ptr %63, align 1
  %64 = getelementptr inbounds nuw i8, ptr %33, i32 248
  store i64 %31, ptr %64, align 1
  %65 = call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef nonnull readonly %33, i32 noundef 256, ptr noundef nonnull @XXH3_kSecret)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %33) #6
  ret i64 %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite)
define dso_local i64 @target_xxh3_seed_len256(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32) local_unnamed_addr #0 {
  %34 = alloca [192 x i8], align 8
  %35 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %35) #6
  store i64 %0, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %35, i32 8
  store i64 %1, ptr %36, align 1
  %37 = getelementptr inbounds nuw i8, ptr %35, i32 16
  store i64 %2, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %35, i32 24
  store i64 %3, ptr %38, align 1
  %39 = getelementptr inbounds nuw i8, ptr %35, i32 32
  store i64 %4, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %35, i32 40
  store i64 %5, ptr %40, align 1
  %41 = getelementptr inbounds nuw i8, ptr %35, i32 48
  store i64 %6, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %35, i32 56
  store i64 %7, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %35, i32 64
  store i64 %8, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %35, i32 72
  store i64 %9, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %35, i32 80
  store i64 %10, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %35, i32 88
  store i64 %11, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %35, i32 96
  store i64 %12, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %35, i32 104
  store i64 %13, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %35, i32 112
  store i64 %14, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %35, i32 120
  store i64 %15, ptr %50, align 1
  %51 = getelementptr inbounds nuw i8, ptr %35, i32 128
  store i64 %16, ptr %51, align 1
  %52 = getelementptr inbounds nuw i8, ptr %35, i32 136
  store i64 %17, ptr %52, align 1
  %53 = getelementptr inbounds nuw i8, ptr %35, i32 144
  store i64 %18, ptr %53, align 1
  %54 = getelementptr inbounds nuw i8, ptr %35, i32 152
  store i64 %19, ptr %54, align 1
  %55 = getelementptr inbounds nuw i8, ptr %35, i32 160
  store i64 %20, ptr %55, align 1
  %56 = getelementptr inbounds nuw i8, ptr %35, i32 168
  store i64 %21, ptr %56, align 1
  %57 = getelementptr inbounds nuw i8, ptr %35, i32 176
  store i64 %22, ptr %57, align 1
  %58 = getelementptr inbounds nuw i8, ptr %35, i32 184
  store i64 %23, ptr %58, align 1
  %59 = getelementptr inbounds nuw i8, ptr %35, i32 192
  store i64 %24, ptr %59, align 1
  %60 = getelementptr inbounds nuw i8, ptr %35, i32 200
  store i64 %25, ptr %60, align 1
  %61 = getelementptr inbounds nuw i8, ptr %35, i32 208
  store i64 %26, ptr %61, align 1
  %62 = getelementptr inbounds nuw i8, ptr %35, i32 216
  store i64 %27, ptr %62, align 1
  %63 = getelementptr inbounds nuw i8, ptr %35, i32 224
  store i64 %28, ptr %63, align 1
  %64 = getelementptr inbounds nuw i8, ptr %35, i32 232
  store i64 %29, ptr %64, align 1
  %65 = getelementptr inbounds nuw i8, ptr %35, i32 240
  store i64 %30, ptr %65, align 1
  %66 = getelementptr inbounds nuw i8, ptr %35, i32 248
  store i64 %31, ptr %66, align 1
  %67 = icmp eq i64 %32, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %33
  %69 = call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef nonnull readonly %35, i32 noundef 256, ptr noundef nonnull @XXH3_kSecret)
  br label %119

70:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %34) #6
  %71 = add i64 %32, -4734510112055689544
  %72 = sub i64 2066345149520216444, %32
  store i64 %71, ptr %34, align 8, !alias.scope !4
  %73 = getelementptr inbounds nuw i8, ptr %34, i32 8
  store i64 %72, ptr %73, align 8, !alias.scope !4
  %74 = add i64 %32, -2623469361688619810
  %75 = sub i64 2262974939099578482, %32
  %76 = getelementptr inbounds nuw i8, ptr %34, i32 16
  store i64 %74, ptr %76, align 8, !alias.scope !4
  %77 = getelementptr inbounds nuw i8, ptr %34, i32 24
  store i64 %75, ptr %77, align 8, !alias.scope !4
  %78 = add i64 %32, 8711581037947681227
  %79 = sub i64 2410270004345854594, %32
  %80 = getelementptr inbounds nuw i8, ptr %34, i32 32
  store i64 %78, ptr %80, align 8, !alias.scope !4
  %81 = getelementptr inbounds nuw i8, ptr %34, i32 40
  store i64 %79, ptr %81, align 8, !alias.scope !4
  %82 = add i64 %32, -8204357891075471176
  %83 = sub i64 5487137525590930912, %32
  %84 = getelementptr inbounds nuw i8, ptr %34, i32 48
  store i64 %82, ptr %84, align 8, !alias.scope !4
  %85 = getelementptr inbounds nuw i8, ptr %34, i32 56
  store i64 %83, ptr %85, align 8, !alias.scope !4
  %86 = add i64 %32, -3818837453329782724
  %87 = sub i64 -6688317018830679928, %32
  %88 = getelementptr inbounds nuw i8, ptr %34, i32 64
  store i64 %86, ptr %88, align 8, !alias.scope !4
  %89 = getelementptr inbounds nuw i8, ptr %34, i32 72
  store i64 %87, ptr %89, align 8, !alias.scope !4
  %90 = add i64 %32, 5690594596133299313
  %91 = sub i64 -2833645246901970632, %32
  %92 = getelementptr inbounds nuw i8, ptr %34, i32 80
  store i64 %90, ptr %92, align 8, !alias.scope !4
  %93 = getelementptr inbounds nuw i8, ptr %34, i32 88
  store i64 %91, ptr %93, align 8, !alias.scope !4
  %94 = add i64 %32, 4554437623014685352
  %95 = sub i64 2111919702937427193, %32
  %96 = getelementptr inbounds nuw i8, ptr %34, i32 96
  store i64 %94, ptr %96, align 8, !alias.scope !4
  %97 = getelementptr inbounds nuw i8, ptr %34, i32 104
  store i64 %95, ptr %97, align 8, !alias.scope !4
  %98 = add i64 %32, 3556072174620004746
  %99 = sub i64 7238261902898274248, %32
  %100 = getelementptr inbounds nuw i8, ptr %34, i32 112
  store i64 %98, ptr %100, align 8, !alias.scope !4
  %101 = getelementptr inbounds nuw i8, ptr %34, i32 120
  store i64 %99, ptr %101, align 8, !alias.scope !4
  %102 = add i64 %32, -4329134394285701654
  %103 = sub i64 -1485321483350670907, %32
  %104 = getelementptr inbounds nuw i8, ptr %34, i32 128
  store i64 %102, ptr %104, align 8, !alias.scope !4
  %105 = getelementptr inbounds nuw i8, ptr %34, i32 136
  store i64 %103, ptr %105, align 8, !alias.scope !4
  %106 = add i64 %32, 5321830579834785047
  %107 = sub i64 -7032137544937171245, %32
  %108 = getelementptr inbounds nuw i8, ptr %34, i32 144
  store i64 %106, ptr %108, align 8, !alias.scope !4
  %109 = getelementptr inbounds nuw i8, ptr %34, i32 152
  store i64 %107, ptr %109, align 8, !alias.scope !4
  %110 = add i64 %32, -242834301215959509
  %111 = sub i64 -3588858202114426737, %32
  %112 = getelementptr inbounds nuw i8, ptr %34, i32 160
  store i64 %110, ptr %112, align 8, !alias.scope !4
  %113 = getelementptr inbounds nuw i8, ptr %34, i32 168
  store i64 %111, ptr %113, align 8, !alias.scope !4
  %114 = add i64 %32, 2883454493032893253
  %115 = sub i64 9097354517224871855, %32
  %116 = getelementptr inbounds nuw i8, ptr %34, i32 176
  store i64 %114, ptr %116, align 8, !alias.scope !4
  %117 = getelementptr inbounds nuw i8, ptr %34, i32 184
  store i64 %115, ptr %117, align 8, !alias.scope !4
  %118 = call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef nonnull readonly %35, i32 noundef 256, ptr noundef nonnull %34)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %34) #6
  br label %119

119:                                              ; preds = %68, %70
  %120 = phi i64 [ %69, %68 ], [ %118, %70 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %35) #6
  ret i64 %120
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite)
define internal fastcc i64 @XXH3_hashLong_64b_internal(ptr noalias nocapture noundef readonly %0, i32 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i32 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %5 = add i32 %1, -1
  %6 = icmp ult i32 %5, 1024
  br i1 %6, label %78, label %7

7:                                                ; preds = %3
  %8 = lshr i32 %5, 10
  %9 = getelementptr inbounds nuw i8, ptr %2, i32 128
  %10 = getelementptr inbounds nuw i8, ptr %2, i32 136
  %11 = getelementptr inbounds nuw i8, ptr %4, i32 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i32 144
  %13 = getelementptr inbounds nuw i8, ptr %4, i32 16
  %14 = getelementptr inbounds nuw i8, ptr %2, i32 152
  %15 = getelementptr inbounds nuw i8, ptr %4, i32 24
  %16 = getelementptr inbounds nuw i8, ptr %2, i32 160
  %17 = getelementptr inbounds nuw i8, ptr %4, i32 32
  %18 = getelementptr inbounds nuw i8, ptr %2, i32 168
  %19 = getelementptr inbounds nuw i8, ptr %4, i32 40
  %20 = getelementptr inbounds nuw i8, ptr %2, i32 176
  %21 = getelementptr inbounds nuw i8, ptr %4, i32 48
  %22 = getelementptr inbounds nuw i8, ptr %2, i32 184
  %23 = getelementptr inbounds nuw i8, ptr %4, i32 56
  br label %24

24:                                               ; preds = %24, %7
  %25 = phi i32 [ 0, %7 ], [ %76, %24 ]
  %26 = shl nuw i32 %25, 10
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 %26
  call fastcc void @XXH3_accumulate(ptr noundef nonnull %4, ptr noundef readonly %27, ptr noundef readonly %2, i32 noundef 16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %28 = load i64, ptr %9, align 1, !alias.scope !19, !noalias !20
  %29 = load i64, ptr %4, align 8, !alias.scope !21, !noalias !22
  %30 = lshr i64 %29, 47
  %31 = xor i64 %28, %30
  %32 = xor i64 %31, %29
  %33 = mul i64 %32, 2654435761
  store i64 %33, ptr %4, align 8, !alias.scope !21, !noalias !22
  %34 = load i64, ptr %10, align 1, !alias.scope !19, !noalias !20
  %35 = load i64, ptr %11, align 8, !alias.scope !21, !noalias !22
  %36 = lshr i64 %35, 47
  %37 = xor i64 %34, %36
  %38 = xor i64 %37, %35
  %39 = mul i64 %38, 2654435761
  store i64 %39, ptr %11, align 8, !alias.scope !21, !noalias !22
  %40 = load i64, ptr %12, align 1, !alias.scope !19, !noalias !20
  %41 = load i64, ptr %13, align 8, !alias.scope !21, !noalias !22
  %42 = lshr i64 %41, 47
  %43 = xor i64 %40, %42
  %44 = xor i64 %43, %41
  %45 = mul i64 %44, 2654435761
  store i64 %45, ptr %13, align 8, !alias.scope !21, !noalias !22
  %46 = load i64, ptr %14, align 1, !alias.scope !19, !noalias !20
  %47 = load i64, ptr %15, align 8, !alias.scope !21, !noalias !22
  %48 = lshr i64 %47, 47
  %49 = xor i64 %46, %48
  %50 = xor i64 %49, %47
  %51 = mul i64 %50, 2654435761
  store i64 %51, ptr %15, align 8, !alias.scope !21, !noalias !22
  %52 = load i64, ptr %16, align 1, !alias.scope !19, !noalias !20
  %53 = load i64, ptr %17, align 8, !alias.scope !21, !noalias !22
  %54 = lshr i64 %53, 47
  %55 = xor i64 %52, %54
  %56 = xor i64 %55, %53
  %57 = mul i64 %56, 2654435761
  store i64 %57, ptr %17, align 8, !alias.scope !21, !noalias !22
  %58 = load i64, ptr %18, align 1, !alias.scope !19, !noalias !20
  %59 = load i64, ptr %19, align 8, !alias.scope !21, !noalias !22
  %60 = lshr i64 %59, 47
  %61 = xor i64 %58, %60
  %62 = xor i64 %61, %59
  %63 = mul i64 %62, 2654435761
  store i64 %63, ptr %19, align 8, !alias.scope !21, !noalias !22
  %64 = load i64, ptr %20, align 1, !alias.scope !19, !noalias !20
  %65 = load i64, ptr %21, align 8, !alias.scope !21, !noalias !22
  %66 = lshr i64 %65, 47
  %67 = xor i64 %64, %66
  %68 = xor i64 %67, %65
  %69 = mul i64 %68, 2654435761
  store i64 %69, ptr %21, align 8, !alias.scope !21, !noalias !22
  %70 = load i64, ptr %22, align 1, !alias.scope !19, !noalias !20
  %71 = load i64, ptr %23, align 8, !alias.scope !21, !noalias !22
  %72 = lshr i64 %71, 47
  %73 = xor i64 %70, %72
  %74 = xor i64 %73, %71
  %75 = mul i64 %74, 2654435761
  store i64 %75, ptr %23, align 8, !alias.scope !21, !noalias !22
  %76 = add nuw nsw i32 %25, 1
  %77 = icmp eq i32 %76, %8
  br i1 %77, label %78, label %24, !llvm.loop !23

78:                                               ; preds = %24, %3
  %79 = and i32 %5, -1024
  %80 = lshr i32 %5, 6
  %81 = and i32 %80, 15
  %82 = getelementptr inbounds nuw i8, ptr %0, i32 %79
  call fastcc void @XXH3_accumulate(ptr noundef nonnull %4, ptr noundef readonly %82, ptr noundef readonly %2, i32 noundef %81)
  %83 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %84 = getelementptr inbounds i8, ptr %83, i32 -64
  %85 = getelementptr inbounds nuw i8, ptr %2, i32 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %86 = load i64, ptr %84, align 1, !alias.scope !32, !noalias !33
  %87 = load i64, ptr %85, align 1, !alias.scope !34, !noalias !35
  %88 = xor i64 %87, %86
  %89 = getelementptr inbounds nuw i8, ptr %4, i32 8
  %90 = load i64, ptr %89, align 8, !alias.scope !36, !noalias !37
  %91 = add i64 %90, %86
  %92 = lshr i64 %88, 32
  %93 = and i64 %88, 4294967295
  %94 = mul nuw i64 %93, %92
  %95 = load i64, ptr %4, align 8, !alias.scope !36, !noalias !37
  %96 = add i64 %94, %95
  %97 = getelementptr inbounds i8, ptr %83, i32 -56
  %98 = load i64, ptr %97, align 1, !alias.scope !32, !noalias !33
  %99 = getelementptr inbounds nuw i8, ptr %2, i32 129
  %100 = load i64, ptr %99, align 1, !alias.scope !34, !noalias !35
  %101 = xor i64 %100, %98
  %102 = add i64 %96, %98
  %103 = lshr i64 %101, 32
  %104 = and i64 %101, 4294967295
  %105 = mul nuw i64 %104, %103
  %106 = add i64 %91, %105
  %107 = getelementptr inbounds i8, ptr %83, i32 -48
  %108 = load i64, ptr %107, align 1, !alias.scope !32, !noalias !33
  %109 = getelementptr inbounds nuw i8, ptr %2, i32 137
  %110 = load i64, ptr %109, align 1, !alias.scope !34, !noalias !35
  %111 = xor i64 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %4, i32 24
  %113 = load i64, ptr %112, align 8, !alias.scope !36, !noalias !37
  %114 = add i64 %113, %108
  %115 = lshr i64 %111, 32
  %116 = and i64 %111, 4294967295
  %117 = mul nuw i64 %116, %115
  %118 = getelementptr inbounds nuw i8, ptr %4, i32 16
  %119 = load i64, ptr %118, align 8, !alias.scope !36, !noalias !37
  %120 = add i64 %117, %119
  %121 = getelementptr inbounds i8, ptr %83, i32 -40
  %122 = load i64, ptr %121, align 1, !alias.scope !32, !noalias !33
  %123 = getelementptr inbounds nuw i8, ptr %2, i32 145
  %124 = load i64, ptr %123, align 1, !alias.scope !34, !noalias !35
  %125 = xor i64 %124, %122
  %126 = add i64 %120, %122
  %127 = lshr i64 %125, 32
  %128 = and i64 %125, 4294967295
  %129 = mul nuw i64 %128, %127
  %130 = add i64 %114, %129
  %131 = getelementptr inbounds i8, ptr %83, i32 -32
  %132 = load i64, ptr %131, align 1, !alias.scope !32, !noalias !33
  %133 = getelementptr inbounds nuw i8, ptr %2, i32 153
  %134 = load i64, ptr %133, align 1, !alias.scope !34, !noalias !35
  %135 = xor i64 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %4, i32 40
  %137 = load i64, ptr %136, align 8, !alias.scope !36, !noalias !37
  %138 = add i64 %137, %132
  %139 = lshr i64 %135, 32
  %140 = and i64 %135, 4294967295
  %141 = mul nuw i64 %140, %139
  %142 = getelementptr inbounds nuw i8, ptr %4, i32 32
  %143 = load i64, ptr %142, align 8, !alias.scope !36, !noalias !37
  %144 = add i64 %141, %143
  %145 = getelementptr inbounds i8, ptr %83, i32 -24
  %146 = load i64, ptr %145, align 1, !alias.scope !32, !noalias !33
  %147 = getelementptr inbounds nuw i8, ptr %2, i32 161
  %148 = load i64, ptr %147, align 1, !alias.scope !34, !noalias !35
  %149 = xor i64 %148, %146
  %150 = add i64 %144, %146
  %151 = lshr i64 %149, 32
  %152 = and i64 %149, 4294967295
  %153 = mul nuw i64 %152, %151
  %154 = add i64 %138, %153
  %155 = getelementptr inbounds i8, ptr %83, i32 -16
  %156 = load i64, ptr %155, align 1, !alias.scope !32, !noalias !33
  %157 = getelementptr inbounds nuw i8, ptr %2, i32 169
  %158 = load i64, ptr %157, align 1, !alias.scope !34, !noalias !35
  %159 = xor i64 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %4, i32 56
  %161 = load i64, ptr %160, align 8, !alias.scope !36, !noalias !37
  %162 = add i64 %161, %156
  %163 = lshr i64 %159, 32
  %164 = and i64 %159, 4294967295
  %165 = mul nuw i64 %164, %163
  %166 = getelementptr inbounds nuw i8, ptr %4, i32 48
  %167 = load i64, ptr %166, align 8, !alias.scope !36, !noalias !37
  %168 = add i64 %165, %167
  %169 = getelementptr inbounds i8, ptr %83, i32 -8
  %170 = load i64, ptr %169, align 1, !alias.scope !32, !noalias !33
  %171 = getelementptr inbounds nuw i8, ptr %2, i32 177
  %172 = load i64, ptr %171, align 1, !alias.scope !34, !noalias !35
  %173 = xor i64 %172, %170
  %174 = add i64 %168, %170
  %175 = lshr i64 %173, 32
  %176 = and i64 %173, 4294967295
  %177 = mul nuw i64 %176, %175
  %178 = add i64 %162, %177
  %179 = zext i32 %1 to i64
  %180 = mul i64 %179, -7046029288634856825
  %181 = getelementptr inbounds nuw i8, ptr %2, i32 11
  %182 = load i64, ptr %181, align 1, !alias.scope !38, !noalias !41
  %183 = getelementptr i8, ptr %2, i32 19
  %184 = load i64, ptr %183, align 1, !alias.scope !38, !noalias !41
  %185 = xor i64 %184, %106
  %186 = xor i64 %182, %102
  %187 = and i64 %186, 4294967295
  %188 = and i64 %185, 4294967295
  %189 = mul nuw i64 %188, %187
  %190 = lshr i64 %186, 32
  %191 = mul nuw i64 %188, %190
  %192 = lshr i64 %185, 32
  %193 = mul nuw i64 %192, %187
  %194 = mul nuw i64 %192, %190
  %195 = lshr i64 %189, 32
  %196 = and i64 %191, 4294967295
  %197 = add nuw i64 %196, %193
  %198 = add nuw i64 %197, %195
  %199 = lshr i64 %191, 32
  %200 = lshr i64 %198, 32
  %201 = add nuw i64 %199, %194
  %202 = add nuw i64 %201, %200
  %203 = shl i64 %198, 32
  %204 = and i64 %189, 4294967295
  %205 = or disjoint i64 %203, %204
  %206 = xor i64 %205, %202
  %207 = add i64 %206, %180
  %208 = getelementptr inbounds nuw i8, ptr %2, i32 27
  %209 = load i64, ptr %208, align 1, !alias.scope !38, !noalias !41
  %210 = getelementptr i8, ptr %2, i32 35
  %211 = load i64, ptr %210, align 1, !alias.scope !38, !noalias !41
  %212 = xor i64 %211, %130
  %213 = xor i64 %209, %126
  %214 = and i64 %213, 4294967295
  %215 = and i64 %212, 4294967295
  %216 = mul nuw i64 %215, %214
  %217 = lshr i64 %213, 32
  %218 = mul nuw i64 %215, %217
  %219 = lshr i64 %212, 32
  %220 = mul nuw i64 %219, %214
  %221 = mul nuw i64 %219, %217
  %222 = lshr i64 %216, 32
  %223 = and i64 %218, 4294967295
  %224 = add nuw i64 %223, %220
  %225 = add nuw i64 %224, %222
  %226 = lshr i64 %218, 32
  %227 = lshr i64 %225, 32
  %228 = add nuw i64 %226, %221
  %229 = add nuw i64 %228, %227
  %230 = shl i64 %225, 32
  %231 = and i64 %216, 4294967295
  %232 = or disjoint i64 %230, %231
  %233 = xor i64 %232, %229
  %234 = add i64 %207, %233
  %235 = getelementptr inbounds nuw i8, ptr %2, i32 43
  %236 = load i64, ptr %235, align 1, !alias.scope !38, !noalias !41
  %237 = getelementptr i8, ptr %2, i32 51
  %238 = load i64, ptr %237, align 1, !alias.scope !38, !noalias !41
  %239 = xor i64 %238, %154
  %240 = xor i64 %236, %150
  %241 = and i64 %240, 4294967295
  %242 = and i64 %239, 4294967295
  %243 = mul nuw i64 %242, %241
  %244 = lshr i64 %240, 32
  %245 = mul nuw i64 %242, %244
  %246 = lshr i64 %239, 32
  %247 = mul nuw i64 %246, %241
  %248 = mul nuw i64 %246, %244
  %249 = lshr i64 %243, 32
  %250 = and i64 %245, 4294967295
  %251 = add nuw i64 %250, %247
  %252 = add nuw i64 %251, %249
  %253 = lshr i64 %245, 32
  %254 = lshr i64 %252, 32
  %255 = add nuw i64 %253, %248
  %256 = add nuw i64 %255, %254
  %257 = shl i64 %252, 32
  %258 = and i64 %243, 4294967295
  %259 = or disjoint i64 %257, %258
  %260 = xor i64 %259, %256
  %261 = add i64 %234, %260
  %262 = getelementptr inbounds nuw i8, ptr %2, i32 59
  %263 = load i64, ptr %262, align 1, !alias.scope !38, !noalias !41
  %264 = getelementptr i8, ptr %2, i32 67
  %265 = load i64, ptr %264, align 1, !alias.scope !38, !noalias !41
  %266 = xor i64 %265, %178
  %267 = xor i64 %263, %174
  %268 = and i64 %267, 4294967295
  %269 = and i64 %266, 4294967295
  %270 = mul nuw i64 %269, %268
  %271 = lshr i64 %267, 32
  %272 = mul nuw i64 %269, %271
  %273 = lshr i64 %266, 32
  %274 = mul nuw i64 %273, %268
  %275 = mul nuw i64 %273, %271
  %276 = lshr i64 %270, 32
  %277 = and i64 %272, 4294967295
  %278 = add nuw i64 %277, %274
  %279 = add nuw i64 %278, %276
  %280 = lshr i64 %272, 32
  %281 = lshr i64 %279, 32
  %282 = add nuw i64 %280, %275
  %283 = add nuw i64 %282, %281
  %284 = shl i64 %279, 32
  %285 = and i64 %270, 4294967295
  %286 = or disjoint i64 %284, %285
  %287 = xor i64 %286, %283
  %288 = add i64 %261, %287
  %289 = lshr i64 %288, 37
  %290 = xor i64 %289, %288
  %291 = mul i64 %290, 1609587791953885689
  %292 = lshr i64 %291, 32
  %293 = xor i64 %292, %291
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i64 %293
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_accumulate(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, i32 noundef range(i32 0, 67108864) %3) unnamed_addr #4 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %117, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %14 = load i64, ptr %7, align 8, !alias.scope !43, !noalias !46
  %15 = load i64, ptr %0, align 8, !alias.scope !43, !noalias !46
  %16 = load i64, ptr %8, align 8, !alias.scope !43, !noalias !46
  %17 = load i64, ptr %9, align 8, !alias.scope !43, !noalias !46
  %18 = load i64, ptr %10, align 8, !alias.scope !43, !noalias !46
  %19 = load i64, ptr %11, align 8, !alias.scope !43, !noalias !46
  %20 = load i64, ptr %12, align 8, !alias.scope !43, !noalias !46
  %21 = load i64, ptr %13, align 8, !alias.scope !43, !noalias !46
  br label %22

22:                                               ; preds = %6, %22
  %23 = phi i64 [ %21, %6 ], [ %109, %22 ]
  %24 = phi i64 [ %20, %6 ], [ %113, %22 ]
  %25 = phi i64 [ %19, %6 ], [ %89, %22 ]
  %26 = phi i64 [ %18, %6 ], [ %93, %22 ]
  %27 = phi i64 [ %17, %6 ], [ %69, %22 ]
  %28 = phi i64 [ %16, %6 ], [ %73, %22 ]
  %29 = phi i64 [ %15, %6 ], [ %49, %22 ]
  %30 = phi i64 [ %14, %6 ], [ %53, %22 ]
  %31 = phi i32 [ 0, %6 ], [ %114, %22 ]
  %32 = shl nuw i32 %31, 6
  %33 = getelementptr inbounds nuw i8, ptr %1, i32 %32
  %34 = shl nuw nsw i32 %31, 3
  %35 = getelementptr inbounds nuw i8, ptr %2, i32 %34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %36 = load i64, ptr %33, align 1, !alias.scope !49, !noalias !51
  %37 = load i64, ptr %35, align 1, !alias.scope !50, !noalias !52
  %38 = xor i64 %37, %36
  %39 = add i64 %30, %36
  %40 = lshr i64 %38, 32
  %41 = and i64 %38, 4294967295
  %42 = mul nuw i64 %41, %40
  %43 = add i64 %42, %29
  %44 = getelementptr inbounds nuw i8, ptr %33, i32 8
  %45 = load i64, ptr %44, align 1, !alias.scope !49, !noalias !51
  %46 = getelementptr inbounds nuw i8, ptr %35, i32 8
  %47 = load i64, ptr %46, align 1, !alias.scope !50, !noalias !52
  %48 = xor i64 %47, %45
  %49 = add i64 %43, %45
  %50 = lshr i64 %48, 32
  %51 = and i64 %48, 4294967295
  %52 = mul nuw i64 %51, %50
  %53 = add i64 %39, %52
  %54 = getelementptr inbounds nuw i8, ptr %33, i32 16
  %55 = load i64, ptr %54, align 1, !alias.scope !49, !noalias !51
  %56 = getelementptr inbounds nuw i8, ptr %35, i32 16
  %57 = load i64, ptr %56, align 1, !alias.scope !50, !noalias !52
  %58 = xor i64 %57, %55
  %59 = add i64 %28, %55
  %60 = lshr i64 %58, 32
  %61 = and i64 %58, 4294967295
  %62 = mul nuw i64 %61, %60
  %63 = add i64 %62, %27
  %64 = getelementptr inbounds nuw i8, ptr %33, i32 24
  %65 = load i64, ptr %64, align 1, !alias.scope !49, !noalias !51
  %66 = getelementptr inbounds nuw i8, ptr %35, i32 24
  %67 = load i64, ptr %66, align 1, !alias.scope !50, !noalias !52
  %68 = xor i64 %67, %65
  %69 = add i64 %63, %65
  %70 = lshr i64 %68, 32
  %71 = and i64 %68, 4294967295
  %72 = mul nuw i64 %71, %70
  %73 = add i64 %59, %72
  %74 = getelementptr inbounds nuw i8, ptr %33, i32 32
  %75 = load i64, ptr %74, align 1, !alias.scope !49, !noalias !51
  %76 = getelementptr inbounds nuw i8, ptr %35, i32 32
  %77 = load i64, ptr %76, align 1, !alias.scope !50, !noalias !52
  %78 = xor i64 %77, %75
  %79 = add i64 %26, %75
  %80 = lshr i64 %78, 32
  %81 = and i64 %78, 4294967295
  %82 = mul nuw i64 %81, %80
  %83 = add i64 %82, %25
  %84 = getelementptr inbounds nuw i8, ptr %33, i32 40
  %85 = load i64, ptr %84, align 1, !alias.scope !49, !noalias !51
  %86 = getelementptr inbounds nuw i8, ptr %35, i32 40
  %87 = load i64, ptr %86, align 1, !alias.scope !50, !noalias !52
  %88 = xor i64 %87, %85
  %89 = add i64 %83, %85
  %90 = lshr i64 %88, 32
  %91 = and i64 %88, 4294967295
  %92 = mul nuw i64 %91, %90
  %93 = add i64 %79, %92
  %94 = getelementptr inbounds nuw i8, ptr %33, i32 48
  %95 = load i64, ptr %94, align 1, !alias.scope !49, !noalias !51
  %96 = getelementptr inbounds nuw i8, ptr %35, i32 48
  %97 = load i64, ptr %96, align 1, !alias.scope !50, !noalias !52
  %98 = xor i64 %97, %95
  %99 = add i64 %24, %95
  %100 = lshr i64 %98, 32
  %101 = and i64 %98, 4294967295
  %102 = mul nuw i64 %101, %100
  %103 = add i64 %102, %23
  %104 = getelementptr inbounds nuw i8, ptr %33, i32 56
  %105 = load i64, ptr %104, align 1, !alias.scope !49, !noalias !51
  %106 = getelementptr inbounds nuw i8, ptr %35, i32 56
  %107 = load i64, ptr %106, align 1, !alias.scope !50, !noalias !52
  %108 = xor i64 %107, %105
  %109 = add i64 %103, %105
  %110 = lshr i64 %108, 32
  %111 = and i64 %108, 4294967295
  %112 = mul nuw i64 %111, %110
  %113 = add i64 %99, %112
  %114 = add nuw nsw i32 %31, 1
  %115 = icmp eq i32 %114, %3
  br i1 %115, label %116, label %22, !llvm.loop !53

116:                                              ; preds = %22
  store i64 %53, ptr %7, align 8, !alias.scope !43, !noalias !46
  store i64 %49, ptr %0, align 8, !alias.scope !43, !noalias !46
  store i64 %73, ptr %8, align 8, !alias.scope !43, !noalias !46
  store i64 %69, ptr %9, align 8, !alias.scope !43, !noalias !46
  store i64 %93, ptr %10, align 8, !alias.scope !43, !noalias !46
  store i64 %89, ptr %11, align 8, !alias.scope !43, !noalias !46
  store i64 %113, ptr %12, align 8, !alias.scope !43, !noalias !46
  store i64 %109, ptr %13, align 8, !alias.scope !43, !noalias !46
  br label %117

117:                                              ; preds = %116, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"MaxTLSAlign", i32 65536}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"XXH3_initCustomSecret_scalar: argument 0"}
!6 = distinct !{!6, !"XXH3_initCustomSecret_scalar"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"XXH3_hashLong_internal_loop: argument 0"}
!9 = distinct !{!9, !"XXH3_hashLong_internal_loop"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"XXH3_hashLong_internal_loop: argument 1"}
!12 = !{!13}
!13 = distinct !{!13, !9, !"XXH3_hashLong_internal_loop: argument 2"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_scrambleAcc_scalar: argument 0"}
!16 = distinct !{!16, !"XXH3_scrambleAcc_scalar"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"XXH3_scrambleAcc_scalar: argument 1"}
!19 = !{!18, !13}
!20 = !{!15, !8, !11}
!21 = !{!15, !8}
!22 = !{!18, !11, !13}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_accumulate_512_scalar: argument 0"}
!27 = distinct !{!27, !"XXH3_accumulate_512_scalar"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"XXH3_accumulate_512_scalar: argument 1"}
!30 = !{!31}
!31 = distinct !{!31, !27, !"XXH3_accumulate_512_scalar: argument 2"}
!32 = !{!29, !11}
!33 = !{!26, !31, !8, !13}
!34 = !{!31, !13}
!35 = !{!26, !29, !8, !11}
!36 = !{!26, !8}
!37 = !{!29, !31, !11, !13}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_mergeAccs: argument 1"}
!40 = distinct !{!40, !"XXH3_mergeAccs"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"XXH3_mergeAccs: argument 0"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_accumulate_512_scalar: argument 0"}
!45 = distinct !{!45, !"XXH3_accumulate_512_scalar"}
!46 = !{!47, !48}
!47 = distinct !{!47, !45, !"XXH3_accumulate_512_scalar: argument 1"}
!48 = distinct !{!48, !45, !"XXH3_accumulate_512_scalar: argument 2"}
!49 = !{!47}
!50 = !{!48}
!51 = !{!44, !48}
!52 = !{!44, !47}
!53 = distinct !{!53, !24}
