; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ceed8a7/raw_gccview_avx512/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ceed8a7/raw_gccview_avx512/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_acc64(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 0, i32 3, i32 1)
  %3 = load <8 x i64>, ptr %0, align 1
  %4 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %5 = xor <8 x i64> %4, %3
  %6 = bitcast <8 x i64> %5 to <16 x i32>
  %7 = shufflevector <16 x i32> %6, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = bitcast <16 x i32> %7 to <8 x i64>
  %9 = and <8 x i64> %5, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 poison, i64 poison, i64 poison, i64 poison>
  %10 = and <8 x i64> %8, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 poison, i64 poison, i64 poison, i64 poison>
  %11 = mul nuw <8 x i64> %10, %9
  %12 = add <8 x i64> %3, %11
  %13 = shufflevector <8 x i64> %12, <8 x i64> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <8 x i64> %12, <8 x i64> poison, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = xor <8 x i64> %13, %14
  %16 = shufflevector <8 x i64> %12, <8 x i64> poison, <8 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = xor <8 x i64> %15, %16
  %18 = xor <8 x i64> %17, %12
  %19 = extractelement <8 x i64> %18, i64 0
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_acc128(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 0, i32 3, i32 1)
  %3 = load <8 x i64>, ptr %0, align 1
  %4 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %5 = xor <8 x i64> %4, %3
  %6 = bitcast <8 x i64> %5 to <16 x i32>
  %7 = shufflevector <16 x i32> %6, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = bitcast <16 x i32> %7 to <8 x i64>
  %9 = and <8 x i64> %5, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 poison, i64 poison, i64 poison, i64 poison>
  %10 = and <8 x i64> %8, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 poison, i64 poison, i64 poison, i64 poison>
  %11 = mul nuw <8 x i64> %10, %9
  %12 = shufflevector <8 x i64> %3, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = add <8 x i64> %11, %12
  %14 = shufflevector <8 x i64> %13, <8 x i64> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <8 x i64> %13, <8 x i64> poison, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = xor <8 x i64> %14, %15
  %17 = shufflevector <8 x i64> %13, <8 x i64> poison, <8 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = xor <8 x i64> %16, %17
  %19 = xor <8 x i64> %18, %13
  %20 = extractelement <8 x i64> %19, i64 0
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_api64(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_api128(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef readonly %0)
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  %5 = xor i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_long64_internal(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = load <8 x i64>, ptr %0, align 1
  %5 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %6 = xor <8 x i64> %5, %4
  %7 = bitcast <8 x i64> %6 to <16 x i32>
  %8 = shufflevector <16 x i32> %7, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %9 = bitcast <16 x i32> %8 to <8 x i64>
  %10 = and <8 x i64> %6, splat (i64 4294967295)
  %11 = and <8 x i64> %9, splat (i64 4294967295)
  %12 = mul nuw <8 x i64> %11, %10
  %13 = add <8 x i64> %4, %2
  %14 = add <8 x i64> %13, %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 0, i32 3, i32 1)
  %17 = load <8 x i64>, ptr %15, align 1
  %18 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), align 8
  %19 = xor <8 x i64> %18, %17
  %20 = bitcast <8 x i64> %19 to <16 x i32>
  %21 = shufflevector <16 x i32> %20, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %22 = bitcast <16 x i32> %21 to <8 x i64>
  %23 = and <8 x i64> %19, splat (i64 4294967295)
  %24 = and <8 x i64> %22, splat (i64 4294967295)
  %25 = mul nuw <8 x i64> %24, %23
  %26 = add <8 x i64> %17, %14
  %27 = add <8 x i64> %26, %25
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %29, i32 0, i32 3, i32 1)
  %30 = load <8 x i64>, ptr %28, align 1
  %31 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), align 16
  %32 = xor <8 x i64> %31, %30
  %33 = bitcast <8 x i64> %32 to <16 x i32>
  %34 = shufflevector <16 x i32> %33, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %35 = bitcast <16 x i32> %34 to <8 x i64>
  %36 = and <8 x i64> %32, splat (i64 4294967295)
  %37 = and <8 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <8 x i64> %37, %36
  %39 = add <8 x i64> %30, %27
  %40 = add <8 x i64> %39, %38
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull %42, i32 0, i32 3, i32 1)
  %43 = load <8 x i64>, ptr %41, align 1
  %44 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), align 8
  %45 = xor <8 x i64> %44, %43
  %46 = bitcast <8 x i64> %45 to <16 x i32>
  %47 = shufflevector <16 x i32> %46, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %48 = bitcast <16 x i32> %47 to <8 x i64>
  %49 = and <8 x i64> %45, splat (i64 4294967295)
  %50 = and <8 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <8 x i64> %50, %49
  %52 = add <8 x i64> %43, %40
  %53 = add <8 x i64> %52, %51
  %54 = extractelement <8 x i64> %53, i64 0
  %55 = xor i64 %54, 7914194659941938988
  %56 = extractelement <8 x i64> %53, i64 1
  %57 = xor i64 %56, -6611157965513653271
  %58 = zext i64 %55 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %63, 3997421333012711168
  %65 = extractelement <8 x i64> %53, i64 2
  %66 = xor i64 %65, -1839215637059881052
  %67 = extractelement <8 x i64> %53, i64 3
  %68 = xor i64 %67, -3433288310154277810
  %69 = zext i64 %66 to i128
  %70 = zext i64 %68 to i128
  %71 = mul nuw i128 %70, %69
  %72 = lshr i128 %71, 64
  %73 = xor i128 %72, %71
  %74 = trunc i128 %73 to i64
  %75 = add i64 %64, %74
  %76 = extractelement <8 x i64> %53, i64 4
  %77 = xor i64 %76, 5046485836271438973
  %78 = extractelement <8 x i64> %53, i64 5
  %79 = xor i64 %78, -8055285457383852172
  %80 = zext i64 %77 to i128
  %81 = zext i64 %79 to i128
  %82 = mul nuw i128 %81, %80
  %83 = lshr i128 %82, 64
  %84 = xor i128 %83, %82
  %85 = trunc i128 %84 to i64
  %86 = add i64 %75, %85
  %87 = extractelement <8 x i64> %53, i64 6
  %88 = xor i64 %87, 5920048007935066598
  %89 = extractelement <8 x i64> %53, i64 7
  %90 = xor i64 %89, 7336514198459093435
  %91 = zext i64 %88 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %86, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  ret i64 %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_long128_internal(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = load <8 x i64>, ptr %0, align 1
  %5 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %6 = xor <8 x i64> %5, %4
  %7 = bitcast <8 x i64> %6 to <16 x i32>
  %8 = shufflevector <16 x i32> %7, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %9 = bitcast <16 x i32> %8 to <8 x i64>
  %10 = and <8 x i64> %6, splat (i64 4294967295)
  %11 = and <8 x i64> %9, splat (i64 4294967295)
  %12 = mul nuw <8 x i64> %11, %10
  %13 = shufflevector <8 x i64> %4, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %14 = add <8 x i64> %2, %13
  %15 = add <8 x i64> %14, %12
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 0, i32 3, i32 1)
  %18 = load <8 x i64>, ptr %16, align 1
  %19 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), align 8
  %20 = xor <8 x i64> %19, %18
  %21 = bitcast <8 x i64> %20 to <16 x i32>
  %22 = shufflevector <16 x i32> %21, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %23 = bitcast <16 x i32> %22 to <8 x i64>
  %24 = and <8 x i64> %20, splat (i64 4294967295)
  %25 = and <8 x i64> %23, splat (i64 4294967295)
  %26 = mul nuw <8 x i64> %25, %24
  %27 = shufflevector <8 x i64> %18, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %28 = add <8 x i64> %15, %27
  %29 = add <8 x i64> %28, %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = load <8 x i64>, ptr %30, align 1
  %33 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), align 16
  %34 = xor <8 x i64> %33, %32
  %35 = bitcast <8 x i64> %34 to <16 x i32>
  %36 = shufflevector <16 x i32> %35, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %37 = bitcast <16 x i32> %36 to <8 x i64>
  %38 = and <8 x i64> %34, splat (i64 4294967295)
  %39 = and <8 x i64> %37, splat (i64 4294967295)
  %40 = mul nuw <8 x i64> %39, %38
  %41 = shufflevector <8 x i64> %32, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %42 = add <8 x i64> %29, %41
  %43 = add <8 x i64> %42, %40
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %45, i32 0, i32 3, i32 1)
  %46 = load <8 x i64>, ptr %44, align 1
  %47 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), align 8
  %48 = xor <8 x i64> %47, %46
  %49 = bitcast <8 x i64> %48 to <16 x i32>
  %50 = shufflevector <16 x i32> %49, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %51 = bitcast <16 x i32> %50 to <8 x i64>
  %52 = and <8 x i64> %48, splat (i64 4294967295)
  %53 = and <8 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <8 x i64> %53, %52
  %55 = shufflevector <8 x i64> %46, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %56 = add <8 x i64> %43, %55
  %57 = add <8 x i64> %56, %54
  %58 = extractelement <8 x i64> %57, i64 0
  %59 = xor i64 %58, 7914194659941938988
  %60 = extractelement <8 x i64> %57, i64 1
  %61 = xor i64 %60, -6611157965513653271
  %62 = zext i64 %59 to i128
  %63 = zext i64 %61 to i128
  %64 = mul nuw i128 %63, %62
  %65 = lshr i128 %64, 64
  %66 = xor i128 %65, %64
  %67 = trunc i128 %66 to i64
  %68 = add i64 %67, 3997421333012711168
  %69 = extractelement <8 x i64> %57, i64 2
  %70 = xor i64 %69, -1839215637059881052
  %71 = extractelement <8 x i64> %57, i64 3
  %72 = xor i64 %71, -3433288310154277810
  %73 = zext i64 %70 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %68, %78
  %80 = extractelement <8 x i64> %57, i64 4
  %81 = xor i64 %80, 5046485836271438973
  %82 = extractelement <8 x i64> %57, i64 5
  %83 = xor i64 %82, -8055285457383852172
  %84 = zext i64 %81 to i128
  %85 = zext i64 %83 to i128
  %86 = mul nuw i128 %85, %84
  %87 = lshr i128 %86, 64
  %88 = xor i128 %87, %86
  %89 = trunc i128 %88 to i64
  %90 = add i64 %79, %89
  %91 = extractelement <8 x i64> %57, i64 6
  %92 = xor i64 %91, 5920048007935066598
  %93 = extractelement <8 x i64> %57, i64 7
  %94 = xor i64 %93, 7336514198459093435
  %95 = zext i64 %92 to i128
  %96 = zext i64 %94 to i128
  %97 = mul nuw i128 %96, %95
  %98 = lshr i128 %97, 64
  %99 = xor i128 %98, %97
  %100 = trunc i128 %99 to i64
  %101 = add i64 %90, %100
  %102 = lshr i64 %101, 37
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, 1609587791953885689
  %105 = xor i64 %58, -2753530472436770380
  %106 = xor i64 %60, 3784058077962335096
  %107 = zext i64 %105 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %112, 5571448447725515007
  %114 = xor i64 %69, -360392965937173549
  %115 = xor i64 %71, -5237161843349560557
  %116 = zext i64 %114 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %113, %121
  %123 = xor i64 %80, 2965150961192524528
  %124 = xor i64 %82, 9032178055121889492
  %125 = zext i64 %123 to i128
  %126 = zext i64 %124 to i128
  %127 = mul nuw i128 %126, %125
  %128 = lshr i128 %127, 64
  %129 = xor i128 %128, %127
  %130 = trunc i128 %129 to i64
  %131 = add i64 %122, %130
  %132 = xor i64 %91, 8850058120466833735
  %133 = xor i64 %93, -7669846995664752176
  %134 = zext i64 %132 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %131, %139
  %141 = lshr i64 %140, 37
  %142 = xor i64 %141, %140
  %143 = mul i64 %142, 1609587791953885689
  %144 = xor i64 %143, %104
  %145 = lshr i64 %144, 32
  %146 = xor i64 %143, %145
  %147 = xor i64 %146, %104
  ret i64 %147
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = load <8 x i64>, ptr %0, align 1
  %5 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %6 = xor <8 x i64> %5, %4
  %7 = bitcast <8 x i64> %6 to <16 x i32>
  %8 = shufflevector <16 x i32> %7, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %9 = bitcast <16 x i32> %8 to <8 x i64>
  %10 = and <8 x i64> %6, splat (i64 4294967295)
  %11 = and <8 x i64> %9, splat (i64 4294967295)
  %12 = mul nuw <8 x i64> %11, %10
  %13 = add <8 x i64> %4, %2
  %14 = add <8 x i64> %13, %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 0, i32 3, i32 1)
  %17 = load <8 x i64>, ptr %15, align 1
  %18 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), align 8
  %19 = xor <8 x i64> %18, %17
  %20 = bitcast <8 x i64> %19 to <16 x i32>
  %21 = shufflevector <16 x i32> %20, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %22 = bitcast <16 x i32> %21 to <8 x i64>
  %23 = and <8 x i64> %19, splat (i64 4294967295)
  %24 = and <8 x i64> %22, splat (i64 4294967295)
  %25 = mul nuw <8 x i64> %24, %23
  %26 = add <8 x i64> %17, %14
  %27 = add <8 x i64> %26, %25
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %29, i32 0, i32 3, i32 1)
  %30 = load <8 x i64>, ptr %28, align 1
  %31 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), align 16
  %32 = xor <8 x i64> %31, %30
  %33 = bitcast <8 x i64> %32 to <16 x i32>
  %34 = shufflevector <16 x i32> %33, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %35 = bitcast <16 x i32> %34 to <8 x i64>
  %36 = and <8 x i64> %32, splat (i64 4294967295)
  %37 = and <8 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <8 x i64> %37, %36
  %39 = add <8 x i64> %30, %27
  %40 = add <8 x i64> %39, %38
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull %42, i32 0, i32 3, i32 1)
  %43 = load <8 x i64>, ptr %41, align 1
  %44 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), align 8
  %45 = xor <8 x i64> %44, %43
  %46 = bitcast <8 x i64> %45 to <16 x i32>
  %47 = shufflevector <16 x i32> %46, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %48 = bitcast <16 x i32> %47 to <8 x i64>
  %49 = and <8 x i64> %45, splat (i64 4294967295)
  %50 = and <8 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <8 x i64> %50, %49
  %52 = add <8 x i64> %43, %40
  %53 = add <8 x i64> %52, %51
  %54 = extractelement <8 x i64> %53, i64 0
  %55 = xor i64 %54, 7914194659941938988
  %56 = extractelement <8 x i64> %53, i64 1
  %57 = xor i64 %56, -6611157965513653271
  %58 = zext i64 %55 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %63, 3997421333012711168
  %65 = extractelement <8 x i64> %53, i64 2
  %66 = xor i64 %65, -1839215637059881052
  %67 = extractelement <8 x i64> %53, i64 3
  %68 = xor i64 %67, -3433288310154277810
  %69 = zext i64 %66 to i128
  %70 = zext i64 %68 to i128
  %71 = mul nuw i128 %70, %69
  %72 = lshr i128 %71, 64
  %73 = xor i128 %72, %71
  %74 = trunc i128 %73 to i64
  %75 = add i64 %64, %74
  %76 = extractelement <8 x i64> %53, i64 4
  %77 = xor i64 %76, 5046485836271438973
  %78 = extractelement <8 x i64> %53, i64 5
  %79 = xor i64 %78, -8055285457383852172
  %80 = zext i64 %77 to i128
  %81 = zext i64 %79 to i128
  %82 = mul nuw i128 %81, %80
  %83 = lshr i128 %82, 64
  %84 = xor i128 %83, %82
  %85 = trunc i128 %84 to i64
  %86 = add i64 %75, %85
  %87 = extractelement <8 x i64> %53, i64 6
  %88 = xor i64 %87, 5920048007935066598
  %89 = extractelement <8 x i64> %53, i64 7
  %90 = xor i64 %89, 7336514198459093435
  %91 = zext i64 %88 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %86, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  ret i64 %102
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = load <8 x i64>, ptr %0, align 1
  %5 = load <8 x i64>, ptr @XXH3_kSecret, align 64
  %6 = xor <8 x i64> %5, %4
  %7 = bitcast <8 x i64> %6 to <16 x i32>
  %8 = shufflevector <16 x i32> %7, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %9 = bitcast <16 x i32> %8 to <8 x i64>
  %10 = and <8 x i64> %6, splat (i64 4294967295)
  %11 = and <8 x i64> %9, splat (i64 4294967295)
  %12 = mul nuw <8 x i64> %11, %10
  %13 = shufflevector <8 x i64> %4, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %14 = add <8 x i64> %2, %13
  %15 = add <8 x i64> %14, %12
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 0, i32 3, i32 1)
  %18 = load <8 x i64>, ptr %16, align 1
  %19 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), align 8
  %20 = xor <8 x i64> %19, %18
  %21 = bitcast <8 x i64> %20 to <16 x i32>
  %22 = shufflevector <16 x i32> %21, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %23 = bitcast <16 x i32> %22 to <8 x i64>
  %24 = and <8 x i64> %20, splat (i64 4294967295)
  %25 = and <8 x i64> %23, splat (i64 4294967295)
  %26 = mul nuw <8 x i64> %25, %24
  %27 = shufflevector <8 x i64> %18, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %28 = add <8 x i64> %15, %27
  %29 = add <8 x i64> %28, %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = load <8 x i64>, ptr %30, align 1
  %33 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), align 16
  %34 = xor <8 x i64> %33, %32
  %35 = bitcast <8 x i64> %34 to <16 x i32>
  %36 = shufflevector <16 x i32> %35, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %37 = bitcast <16 x i32> %36 to <8 x i64>
  %38 = and <8 x i64> %34, splat (i64 4294967295)
  %39 = and <8 x i64> %37, splat (i64 4294967295)
  %40 = mul nuw <8 x i64> %39, %38
  %41 = shufflevector <8 x i64> %32, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %42 = add <8 x i64> %29, %41
  %43 = add <8 x i64> %42, %40
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %45, i32 0, i32 3, i32 1)
  %46 = load <8 x i64>, ptr %44, align 1
  %47 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), align 8
  %48 = xor <8 x i64> %47, %46
  %49 = bitcast <8 x i64> %48 to <16 x i32>
  %50 = shufflevector <16 x i32> %49, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %51 = bitcast <16 x i32> %50 to <8 x i64>
  %52 = and <8 x i64> %48, splat (i64 4294967295)
  %53 = and <8 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <8 x i64> %53, %52
  %55 = shufflevector <8 x i64> %46, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %56 = add <8 x i64> %43, %55
  %57 = add <8 x i64> %56, %54
  %58 = extractelement <8 x i64> %57, i64 0
  %59 = xor i64 %58, 7914194659941938988
  %60 = extractelement <8 x i64> %57, i64 1
  %61 = xor i64 %60, -6611157965513653271
  %62 = zext i64 %59 to i128
  %63 = zext i64 %61 to i128
  %64 = mul nuw i128 %63, %62
  %65 = lshr i128 %64, 64
  %66 = xor i128 %65, %64
  %67 = trunc i128 %66 to i64
  %68 = add i64 %67, 3997421333012711168
  %69 = extractelement <8 x i64> %57, i64 2
  %70 = xor i64 %69, -1839215637059881052
  %71 = extractelement <8 x i64> %57, i64 3
  %72 = xor i64 %71, -3433288310154277810
  %73 = zext i64 %70 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %68, %78
  %80 = extractelement <8 x i64> %57, i64 4
  %81 = xor i64 %80, 5046485836271438973
  %82 = extractelement <8 x i64> %57, i64 5
  %83 = xor i64 %82, -8055285457383852172
  %84 = zext i64 %81 to i128
  %85 = zext i64 %83 to i128
  %86 = mul nuw i128 %85, %84
  %87 = lshr i128 %86, 64
  %88 = xor i128 %87, %86
  %89 = trunc i128 %88 to i64
  %90 = add i64 %79, %89
  %91 = extractelement <8 x i64> %57, i64 6
  %92 = xor i64 %91, 5920048007935066598
  %93 = extractelement <8 x i64> %57, i64 7
  %94 = xor i64 %93, 7336514198459093435
  %95 = zext i64 %92 to i128
  %96 = zext i64 %94 to i128
  %97 = mul nuw i128 %96, %95
  %98 = lshr i128 %97, 64
  %99 = xor i128 %98, %97
  %100 = trunc i128 %99 to i64
  %101 = add i64 %90, %100
  %102 = lshr i64 %101, 37
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, 1609587791953885689
  %105 = lshr i64 %104, 32
  %106 = xor i64 %105, %104
  %107 = xor i64 %58, -2753530472436770380
  %108 = xor i64 %60, 3784058077962335096
  %109 = zext i64 %107 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = add i64 %114, 5571448447725515007
  %116 = xor i64 %69, -360392965937173549
  %117 = xor i64 %71, -5237161843349560557
  %118 = zext i64 %116 to i128
  %119 = zext i64 %117 to i128
  %120 = mul nuw i128 %119, %118
  %121 = lshr i128 %120, 64
  %122 = xor i128 %121, %120
  %123 = trunc i128 %122 to i64
  %124 = add i64 %115, %123
  %125 = xor i64 %80, 2965150961192524528
  %126 = xor i64 %82, 9032178055121889492
  %127 = zext i64 %125 to i128
  %128 = zext i64 %126 to i128
  %129 = mul nuw i128 %128, %127
  %130 = lshr i128 %129, 64
  %131 = xor i128 %130, %129
  %132 = trunc i128 %131 to i64
  %133 = add i64 %124, %132
  %134 = xor i64 %91, 8850058120466833735
  %135 = xor i64 %93, -7669846995664752176
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %133, %141
  %143 = lshr i64 %142, 37
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587791953885689
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  %148 = insertvalue { i64, i64 } poison, i64 %106, 0
  %149 = insertvalue { i64, i64 } %148, i64 %147, 1
  ret { i64, i64 } %149
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
