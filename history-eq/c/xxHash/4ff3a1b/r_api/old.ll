; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4ff3a1b/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4ff3a1b/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_64_le16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i64 %1, 16
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %29, !prof !8

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
  br label %37

29:                                               ; preds = %4
  %30 = icmp samesign ugt i64 %1, 3
  br i1 %30, label %31, label %33, !prof !8

31:                                               ; preds = %29
  %32 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef nonnull readonly @XXH3_kSecret, i64 noundef 0) #8
  br label %37

33:                                               ; preds = %29
  %34 = icmp eq i64 %1, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef nonnull readonly @XXH3_kSecret, i64 noundef 0) #8
  br label %37

37:                                               ; preds = %35, %33, %31, %6, %2
  %38 = phi i64 [ 0, %2 ], [ %28, %6 ], [ %32, %31 ], [ %36, %35 ], [ 3244421341483603138, %33 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64_17to128(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, -129
  %4 = icmp ult i64 %3, -112
  br i1 %4, label %125, label %5

5:                                                ; preds = %2
  %6 = mul i64 %1, -7046029288634856825
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = xor i64 %7, -4734510112055689544
  %11 = xor i64 %9, 2066345149520216444
  %12 = zext i64 %10 to i128
  %13 = zext i64 %11 to i128
  %14 = mul nuw i128 %13, %12
  %15 = lshr i128 %14, 64
  %16 = xor i128 %15, %14
  %17 = trunc i128 %16 to i64
  %18 = add i64 %6, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %20 = getelementptr inbounds i8, ptr %19, i64 -16
  %21 = load i64, ptr %20, align 1
  %22 = getelementptr i8, ptr %19, i64 -8
  %23 = load i64, ptr %22, align 1
  %24 = xor i64 %21, -2623469361688619810
  %25 = xor i64 %23, 2262974939099578482
  %26 = zext i64 %24 to i128
  %27 = zext i64 %25 to i128
  %28 = mul nuw i128 %27, %26
  %29 = lshr i128 %28, 64
  %30 = xor i128 %29, %28
  %31 = trunc i128 %30 to i64
  %32 = icmp samesign ugt i64 %1, 32
  br i1 %32, label %33, label %116

33:                                               ; preds = %5
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i64, ptr %34, align 1
  %36 = getelementptr i8, ptr %0, i64 24
  %37 = load i64, ptr %36, align 1
  %38 = xor i64 %35, 8711581037947681227
  %39 = xor i64 %37, 2410270004345854594
  %40 = zext i64 %38 to i128
  %41 = zext i64 %39 to i128
  %42 = mul nuw i128 %41, %40
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %18, %45
  %47 = getelementptr inbounds i8, ptr %19, i64 -32
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %19, i64 -24
  %50 = load i64, ptr %49, align 1
  %51 = xor i64 %48, -8204357891075471176
  %52 = xor i64 %50, 5487137525590930912
  %53 = zext i64 %51 to i128
  %54 = zext i64 %52 to i128
  %55 = mul nuw i128 %54, %53
  %56 = lshr i128 %55, 64
  %57 = xor i128 %56, %55
  %58 = trunc i128 %57 to i64
  %59 = add i64 %58, %31
  %60 = icmp samesign ugt i64 %1, 64
  br i1 %60, label %61, label %116

61:                                               ; preds = %33
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr i8, ptr %0, i64 40
  %65 = load i64, ptr %64, align 1
  %66 = xor i64 %63, -3818837453329782724
  %67 = xor i64 %65, -6688317018830679928
  %68 = zext i64 %66 to i128
  %69 = zext i64 %67 to i128
  %70 = mul nuw i128 %69, %68
  %71 = lshr i128 %70, 64
  %72 = xor i128 %71, %70
  %73 = trunc i128 %72 to i64
  %74 = add i64 %46, %73
  %75 = getelementptr inbounds i8, ptr %19, i64 -48
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr i8, ptr %19, i64 -40
  %78 = load i64, ptr %77, align 1
  %79 = xor i64 %76, 5690594596133299313
  %80 = xor i64 %78, -2833645246901970632
  %81 = zext i64 %79 to i128
  %82 = zext i64 %80 to i128
  %83 = mul nuw i128 %82, %81
  %84 = lshr i128 %83, 64
  %85 = xor i128 %84, %83
  %86 = trunc i128 %85 to i64
  %87 = add i64 %59, %86
  %88 = icmp samesign ugt i64 %1, 96
  br i1 %88, label %89, label %116

89:                                               ; preds = %61
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr i8, ptr %0, i64 56
  %93 = load i64, ptr %92, align 1
  %94 = xor i64 %91, 4554437623014685352
  %95 = xor i64 %93, 2111919702937427193
  %96 = zext i64 %94 to i128
  %97 = zext i64 %95 to i128
  %98 = mul nuw i128 %97, %96
  %99 = lshr i128 %98, 64
  %100 = xor i128 %99, %98
  %101 = trunc i128 %100 to i64
  %102 = add i64 %74, %101
  %103 = getelementptr inbounds i8, ptr %19, i64 -64
  %104 = load i64, ptr %103, align 1
  %105 = getelementptr i8, ptr %19, i64 -56
  %106 = load i64, ptr %105, align 1
  %107 = xor i64 %104, 3556072174620004746
  %108 = xor i64 %106, 7238261902898274248
  %109 = zext i64 %107 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = add i64 %87, %114
  br label %116

116:                                              ; preds = %5, %33, %61, %89
  %117 = phi i64 [ %102, %89 ], [ %74, %61 ], [ %46, %33 ], [ %18, %5 ]
  %118 = phi i64 [ %115, %89 ], [ %87, %61 ], [ %59, %33 ], [ %31, %5 ]
  %119 = add i64 %118, %117
  %120 = lshr i64 %119, 37
  %121 = xor i64 %120, %119
  %122 = mul i64 %121, 1609587791953885689
  %123 = lshr i64 %122, 32
  %124 = xor i64 %123, %122
  br label %125

125:                                              ; preds = %2, %116
  %126 = phi i64 [ %124, %116 ], [ 0, %2 ]
  ret i64 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_64_seed_le16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 16
  br i1 %4, label %50, label %5

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %32, !prof !8

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
  br label %50

32:                                               ; preds = %5
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %36, !prof !8

34:                                               ; preds = %32
  %35 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef nonnull readonly @XXH3_kSecret, i64 noundef %2) #8
  br label %50

36:                                               ; preds = %32
  %37 = icmp eq i64 %1, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef nonnull readonly @XXH3_kSecret, i64 noundef %2) #8
  br label %50

40:                                               ; preds = %36
  %41 = xor i64 %2, -8707998980786479652
  %42 = lshr i64 %41, 33
  %43 = xor i64 %42, %41
  %44 = mul i64 %43, -4417276706812531889
  %45 = lshr i64 %44, 29
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, 1609587929392839161
  %48 = lshr i64 %47, 32
  %49 = xor i64 %48, %47
  br label %50

50:                                               ; preds = %40, %38, %34, %7, %3
  %51 = phi i64 [ 0, %3 ], [ %31, %7 ], [ %35, %34 ], [ %39, %38 ], [ %49, %40 ]
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_64_secret_le16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %1, 16
  %6 = icmp ult i64 %3, 136
  %7 = or i1 %5, %6
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %44, !prof !8

10:                                               ; preds = %8
  %11 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %12)
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = load i64, ptr %0, align 1
  %24 = xor i64 %17, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %26 = getelementptr inbounds i8, ptr %25, i64 -8
  %27 = load i64, ptr %26, align 1
  %28 = xor i64 %22, %27
  %29 = tail call noundef i64 @llvm.bswap.i64(i64 %24)
  %30 = add i64 %29, %1
  %31 = add i64 %30, %28
  %32 = zext i64 %24 to i128
  %33 = zext i64 %28 to i128
  %34 = mul nuw i128 %33, %32
  %35 = lshr i128 %34, 64
  %36 = xor i128 %35, %34
  %37 = trunc i128 %36 to i64
  %38 = add i64 %31, %37
  %39 = lshr i64 %38, 37
  %40 = xor i64 %39, %38
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  br label %66

44:                                               ; preds = %8
  %45 = icmp samesign ugt i64 %1, 3
  br i1 %45, label %46, label %48, !prof !8

46:                                               ; preds = %44
  %47 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %2, i64 noundef 0) #8
  br label %66

48:                                               ; preds = %44
  %49 = icmp eq i64 %1, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %2, i64 noundef 0) #8
  br label %66

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %56, %54
  %58 = lshr i64 %57, 33
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, -4417276706812531889
  %61 = lshr i64 %60, 29
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, 1609587929392839161
  %64 = lshr i64 %63, 32
  %65 = xor i64 %64, %63
  br label %66

66:                                               ; preds = %52, %50, %46, %10, %4
  %67 = phi i64 [ 0, %4 ], [ %43, %10 ], [ %47, %46 ], [ %51, %50 ], [ %65, %52 ]
  ret i64 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh128_lo_le16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ugt i64 %1, 16
  br i1 %3, label %92, label %4

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %35

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
  %29 = mul i64 %28, -4417276706812531889
  %30 = lshr i64 %29, 37
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, 1609587791953885689
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  br label %92

35:                                               ; preds = %4
  %36 = icmp samesign ugt i64 %1, 3
  br i1 %36, label %37, label %65

37:                                               ; preds = %35
  %38 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %38)
  %39 = load i32, ptr %0, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %41 = getelementptr inbounds i8, ptr %40, i64 -4
  %42 = load i32, ptr %41, align 1
  %43 = zext i32 %39 to i64
  %44 = zext i32 %42 to i64
  %45 = shl nuw i64 %44, 32
  %46 = or disjoint i64 %45, %43
  %47 = xor i64 %46, -4255862940314790740
  %48 = shl nuw nsw i64 %1, 2
  %49 = add nuw nsw i64 %48, -7046029288634856825
  %50 = zext i64 %47 to i128
  %51 = zext i64 %49 to i128
  %52 = mul nuw i128 %50, %51
  %53 = trunc i128 %52 to i64
  %54 = lshr i128 %52, 64
  %55 = trunc nuw i128 %54 to i64
  %56 = shl i64 %53, 1
  %57 = add i64 %56, %55
  %58 = lshr i64 %57, 3
  %59 = xor i64 %58, %53
  %60 = lshr i64 %59, 35
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, -6939452855193903323
  %63 = lshr i64 %62, 28
  %64 = xor i64 %63, %62
  br label %92

65:                                               ; preds = %35
  %66 = icmp eq i64 %1, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %65
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = load i8, ptr %0, align 1
  %70 = lshr i64 %1, 1
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %0, i64 %1
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %69 to i64
  %77 = shl nuw nsw i64 %76, 16
  %78 = zext i8 %72 to i64
  %79 = shl nuw nsw i64 %78, 24
  %80 = or disjoint i64 %79, %77
  %81 = zext i8 %75 to i64
  %82 = or disjoint i64 %80, %81
  %83 = shl nuw nsw i64 %1, 8
  %84 = or disjoint i64 %82, %83
  %85 = xor i64 %84, 2267503259
  %86 = mul i64 %85, -4417276706812531889
  %87 = lshr i64 %86, 29
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, 1609587929392839161
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  br label %92

92:                                               ; preds = %67, %65, %37, %6, %2
  %93 = phi i64 [ 0, %2 ], [ %34, %6 ], [ %64, %37 ], [ %91, %67 ], [ 6918025063187695999, %65 ]
  ret i64 %93
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh128_hi_le16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ugt i64 %1, 16
  br i1 %3, label %99, label %4

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %40

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
  %31 = lshr i128 %30, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = mul i64 %26, -4417276706812531889
  %34 = add i64 %33, %32
  %35 = lshr i64 %34, 37
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %99

40:                                               ; preds = %4
  %41 = icmp samesign ugt i64 %1, 3
  br i1 %41, label %42, label %68

42:                                               ; preds = %40
  %43 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %43)
  %44 = load i32, ptr %0, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %46 = getelementptr inbounds i8, ptr %45, i64 -4
  %47 = load i32, ptr %46, align 1
  %48 = zext i32 %44 to i64
  %49 = zext i32 %47 to i64
  %50 = shl nuw i64 %49, 32
  %51 = or disjoint i64 %50, %48
  %52 = xor i64 %51, -4255862940314790740
  %53 = shl nuw nsw i64 %1, 2
  %54 = add nuw nsw i64 %53, -7046029288634856825
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %55, %56
  %58 = trunc i128 %57 to i64
  %59 = lshr i128 %57, 64
  %60 = trunc nuw i128 %59 to i64
  %61 = shl i64 %58, 1
  %62 = add i64 %61, %60
  %63 = lshr i64 %62, 37
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587791953885689
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  br label %99

68:                                               ; preds = %40
  %69 = icmp eq i64 %1, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %68
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = load i8, ptr %0, align 1
  %73 = lshr i64 %1, 1
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr i8, ptr %0, i64 %1
  %77 = getelementptr i8, ptr %76, i64 -1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %72 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = zext i8 %75 to i32
  %82 = shl nuw i32 %81, 24
  %83 = or disjoint i32 %82, %80
  %84 = zext i8 %78 to i32
  %85 = or disjoint i32 %83, %84
  %86 = trunc nuw nsw i64 %1 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or disjoint i32 %85, %87
  %89 = tail call noundef i32 @llvm.bswap.i32(i32 %88)
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = xor i32 %90, 808198283
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, -4417276706812531889
  %94 = lshr i64 %93, 29
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, 1609587929392839161
  %97 = lshr i64 %96, 32
  %98 = xor i64 %97, %96
  br label %99

99:                                               ; preds = %70, %68, %42, %6, %2
  %100 = phi i64 [ 0, %2 ], [ %39, %6 ], [ %67, %42 ], [ %98, %70 ], [ -7374073936536430376, %68 ]
  ret i64 %100
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_len200(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 1
  %5 = xor i64 %2, -4734510112055689544
  %6 = xor i64 %4, 2066345149520216444
  %7 = zext i64 %5 to i128
  %8 = zext i64 %6 to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = xor i128 %10, %9
  %12 = trunc i128 %11 to i64
  %13 = add i64 %12, -7253308125045442184
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 24
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %15, -2623469361688619810
  %19 = xor i64 %17, 2262974939099578482
  %20 = zext i64 %18 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %13, %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr i8, ptr %0, i64 40
  %30 = load i64, ptr %29, align 1
  %31 = xor i64 %28, 8711581037947681227
  %32 = xor i64 %30, 2410270004345854594
  %33 = zext i64 %31 to i128
  %34 = zext i64 %32 to i128
  %35 = mul nuw i128 %34, %33
  %36 = lshr i128 %35, 64
  %37 = xor i128 %36, %35
  %38 = trunc i128 %37 to i64
  %39 = add i64 %26, %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %41 = load i64, ptr %40, align 1
  %42 = getelementptr i8, ptr %0, i64 56
  %43 = load i64, ptr %42, align 1
  %44 = xor i64 %41, -8204357891075471176
  %45 = xor i64 %43, 5487137525590930912
  %46 = zext i64 %44 to i128
  %47 = zext i64 %45 to i128
  %48 = mul nuw i128 %47, %46
  %49 = lshr i128 %48, 64
  %50 = xor i128 %49, %48
  %51 = trunc i128 %50 to i64
  %52 = add i64 %39, %51
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr i8, ptr %0, i64 72
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %54, -3818837453329782724
  %58 = xor i64 %56, -6688317018830679928
  %59 = zext i64 %57 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %52, %64
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 88
  %69 = load i64, ptr %68, align 1
  %70 = xor i64 %67, 5690594596133299313
  %71 = xor i64 %69, -2833645246901970632
  %72 = zext i64 %70 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %65, %77
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr i8, ptr %0, i64 104
  %82 = load i64, ptr %81, align 1
  %83 = xor i64 %80, 4554437623014685352
  %84 = xor i64 %82, 2111919702937427193
  %85 = zext i64 %83 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = add i64 %78, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 120
  %95 = load i64, ptr %94, align 1
  %96 = xor i64 %93, 3556072174620004746
  %97 = xor i64 %95, 7238261902898274248
  %98 = zext i64 %96 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %91, %103
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %106 = load i64, ptr %105, align 1
  %107 = getelementptr i8, ptr %0, i64 192
  %108 = load i64, ptr %107, align 1
  %109 = xor i64 %106, 8320639771003045937
  %110 = xor i64 %108, -1453760514566526364
  %111 = zext i64 %109 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = lshr i64 %104, 37
  %118 = xor i64 %117, %104
  %119 = mul i64 %118, 1609587791953885689
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  %122 = freeze i64 %121
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr i8, ptr %0, i64 136
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, -9150895811085458631
  %128 = xor i64 %126, 7914194659941938988
  %129 = zext i64 %127 to i128
  %130 = zext i64 %128 to i128
  %131 = mul nuw i128 %130, %129
  %132 = lshr i128 %131, 64
  %133 = xor i128 %132, %131
  %134 = trunc i128 %133 to i64
  %135 = add i64 %116, %134
  %136 = freeze i64 %122
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %138 = load i64, ptr %137, align 1
  %139 = getelementptr i8, ptr %0, i64 152
  %140 = load i64, ptr %139, align 1
  %141 = xor i64 %138, -6611157965513653271
  %142 = xor i64 %140, -1839215637059881052
  %143 = zext i64 %141 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %135, %148
  %150 = freeze i64 %136
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %152 = load i64, ptr %151, align 1
  %153 = getelementptr i8, ptr %0, i64 168
  %154 = load i64, ptr %153, align 1
  %155 = xor i64 %152, -3433288310154277810
  %156 = xor i64 %154, 5046485836271438973
  %157 = zext i64 %155 to i128
  %158 = zext i64 %156 to i128
  %159 = mul nuw i128 %158, %157
  %160 = lshr i128 %159, 64
  %161 = xor i128 %160, %159
  %162 = trunc i128 %161 to i64
  %163 = add i64 %149, %162
  %164 = freeze i64 %150
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %166 = load i64, ptr %165, align 1
  %167 = xor i64 %166, -8055285457383852172
  %168 = xor i64 %106, 5920048007935066598
  %169 = zext i64 %167 to i128
  %170 = zext i64 %168 to i128
  %171 = mul nuw i128 %170, %169
  %172 = lshr i128 %171, 64
  %173 = xor i128 %172, %171
  %174 = trunc i128 %173 to i64
  %175 = add i64 %163, %174
  %176 = add i64 %175, %164
  %177 = lshr i64 %176, 37
  %178 = xor i64 %177, %176
  %179 = mul i64 %178, 1609587791953885689
  %180 = lshr i64 %179, 32
  %181 = xor i64 %180, %179
  ret i64 %181
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_xxh32_len7(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %0, i64 6
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = mul i32 %6, 374761393
  %8 = getelementptr i8, ptr %0, i64 5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = mul i32 %10, 374761393
  %12 = getelementptr i8, ptr %0, i64 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = mul i32 %14, 374761393
  %16 = load i32, ptr %0, align 1
  %17 = mul i32 %16, -1028477379
  %18 = add i32 %1, 374761400
  %19 = add i32 %17, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = add i32 %15, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11)
  %24 = mul i32 %23, -1640531535
  %25 = add i32 %11, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 11)
  %27 = mul i32 %26, -1640531535
  %28 = add i32 %7, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11)
  %30 = mul i32 %29, -1640531535
  %31 = lshr i32 %30, 15
  %32 = xor i32 %31, %30
  %33 = mul i32 %32, -2048144777
  %34 = lshr i32 %33, 13
  %35 = xor i32 %34, %33
  %36 = mul i32 %35, -1028477379
  %37 = lshr i32 %36, 16
  %38 = xor i32 %37, %36
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  %7 = load i32, ptr %0, align 1
  %8 = mul i32 %7, -2048144777
  %9 = add i32 %4, %8
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 13)
  %11 = mul i32 %10, -1640531535
  %12 = freeze i32 %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = load i32, ptr %13, align 1
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %5, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = freeze i32 %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i32, ptr %20, align 1
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %1
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = freeze i32 %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %28 = load i32, ptr %27, align 1
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %6, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = freeze i32 %32
  %34 = getelementptr i8, ptr %0, i64 16
  %35 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %36 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 7)
  %37 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 12)
  %38 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 18)
  %39 = add i32 %35, 20
  %40 = add i32 %39, %36
  %41 = add i32 %40, %37
  %42 = add i32 %41, %38
  %43 = load i32, ptr %34, align 1
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %42
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = lshr i32 %47, 15
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -2048144777
  %51 = lshr i32 %50, 13
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -1028477379
  %54 = lshr i32 %53, 16
  %55 = xor i32 %54, %53
  ret i32 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_len13(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %0, align 1
  %6 = load i32, ptr %4, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = zext i32 %6 to i64
  %12 = mul i64 %11, -7046029288634856825
  %13 = mul i64 %5, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %1, 2870177450012600274
  %17 = xor i64 %15, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = xor i64 %12, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 23)
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, 1609587929392839161
  %25 = xor i64 %10, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = lshr i64 %27, 33
  %29 = xor i64 %28, %27
  %30 = mul i64 %29, -4417276706812531889
  %31 = lshr i64 %30, 29
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587929392839161
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_len40(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i64, ptr %7, align 1
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %6, %9
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i64, ptr %13, align 1
  %15 = mul i64 %14, -4417276706812531889
  %16 = add i64 %15, %1
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i64, ptr %19, align 1
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %5, %21
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = load i64, ptr %0, align 1
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %4, %26
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr i8, ptr %0, i64 32
  %31 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 1)
  %32 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 7)
  %33 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 12)
  %34 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 18)
  %35 = add i64 %33, %34
  %36 = add i64 %35, %32
  %37 = add i64 %36, %31
  %38 = mul i64 %28, -2381459717836149591
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = mul i64 %23, -2381459717836149591
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %17, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %11, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421722997
  %62 = load i64, ptr %30, align 1
  %63 = mul i64 %62, -4417276706812531889
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31)
  %65 = mul i64 %64, -7046029288634856825
  %66 = xor i64 %65, %61
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 27)
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = lshr i64 %69, 33
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, -4417276706812531889
  %73 = lshr i64 %72, 29
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  ret i64 %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 4, 9) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #1 {
  %5 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %6)
  %7 = trunc i64 %3 to i32
  %8 = tail call noundef i32 @llvm.bswap.i32(i32 %7)
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %11 = xor i64 %10, %3
  %12 = load i32, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -4
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %11
  %22 = zext i32 %15 to i64
  %23 = zext i32 %12 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or disjoint i64 %24, %22
  %26 = xor i64 %21, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 49)
  %28 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 24)
  %29 = xor i64 %27, %28
  %30 = xor i64 %29, %26
  %31 = mul i64 %30, -6939452855193903323
  %32 = lshr i64 %31, 35
  %33 = add nuw nsw i64 %32, %1
  %34 = xor i64 %33, %31
  %35 = mul i64 %34, -6939452855193903323
  %36 = lshr i64 %35, 28
  %37 = xor i64 %36, %35
  ret i64 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 1, 4) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #1 {
  %5 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i8, ptr %0, align 1
  %8 = lshr i64 %1, 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr i8, ptr %0, i64 %1
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %7 to i64
  %15 = shl nuw nsw i64 %14, 16
  %16 = zext i8 %10 to i64
  %17 = shl nuw nsw i64 %16, 24
  %18 = or disjoint i64 %17, %15
  %19 = zext i8 %13 to i64
  %20 = or disjoint i64 %18, %19
  %21 = shl nuw nsw i64 %1, 8
  %22 = or disjoint i64 %20, %21
  %23 = load i32, ptr %2, align 1
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %25 = load i32, ptr %24, align 1
  %26 = xor i32 %25, %23
  %27 = zext i32 %26 to i64
  %28 = add i64 %3, %27
  %29 = xor i64 %28, %22
  %30 = lshr i64 %29, 33
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, -4417276706812531889
  %33 = lshr i64 %32, 29
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  ret i64 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_64bits_internal: argument 1"}
!7 = distinct !{!7, !"XXH3_64bits_internal"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!10}
!10 = distinct !{!10, !7, !"XXH3_64bits_internal: argument 0"}
!11 = !{!10, !6}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"XXH3_len_17to128_64b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_17to128_64b"}
!15 = distinct !{!15, !16, !"XXH3_64bits_internal: argument 0"}
!16 = distinct !{!16, !"XXH3_64bits_internal"}
!17 = !{!18, !19}
!18 = distinct !{!18, !14, !"XXH3_len_17to128_64b: argument 1"}
!19 = distinct !{!19, !16, !"XXH3_64bits_internal: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_64bits_internal: argument 1"}
!22 = distinct !{!22, !"XXH3_64bits_internal"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"XXH3_64bits_internal: argument 0"}
!25 = !{!24, !21}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_64bits_internal: argument 0"}
!28 = distinct !{!28, !"XXH3_64bits_internal"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"XXH3_64bits_internal: argument 1"}
!31 = !{!27, !30}
!32 = !{!33}
!33 = distinct !{!33, !34, !"XXH3_64bits_internal: argument 0"}
!34 = distinct !{!34, !"XXH3_64bits_internal"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_len_129to240_64b: argument 0"}
!37 = distinct !{!37, !"XXH3_len_129to240_64b"}
!38 = !{!36, !33}
!39 = !{!40, !41}
!40 = distinct !{!40, !37, !"XXH3_len_129to240_64b: argument 1"}
!41 = distinct !{!41, !34, !"XXH3_64bits_internal: argument 1"}
!42 = !{!36, !40, !33, !41}
!43 = !{i64 2152105361}
!44 = !{i64 2148121387}
