; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4ff3a1b/wrap_api2.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4ff3a1b/wrap_api2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len20_val(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -2048144777
  %12 = add i32 %11, 606290984
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 13)
  %15 = mul i32 %14, -1640531535
  %16 = freeze i32 %15
  %17 = lshr i64 %0, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, -2048144777
  %21 = add i32 %20, %8
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = freeze i32 %23
  %25 = trunc i64 %1 to i32
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %8, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = freeze i32 %29
  %31 = lshr i64 %1, 32
  %32 = trunc nuw i64 %31 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, 1640531535
  %35 = add i32 %34, %8
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, 20
  %46 = add i32 %45, %39
  %47 = add i32 %46, %40
  %48 = add i32 %47, %41
  %49 = add i32 %48, %42
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i32 %51, 15
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, -2048144777
  %55 = lshr i32 %54, 13
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -1028477379
  %58 = lshr i32 %57, 16
  %59 = xor i32 %58, %57
  ret i32 %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @target_xxh3_len200_val(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31) local_unnamed_addr #2 {
  %33 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %33) #8
  store i64 %0, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %1, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 %2, ptr %35, align 16
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %3, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i64 %4, ptr %37, align 16
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 40
  store i64 %5, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i64 %6, ptr %39, align 16
  %40 = getelementptr inbounds nuw i8, ptr %33, i64 56
  store i64 %7, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 64
  store i64 %8, ptr %41, align 16
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i64 %9, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 80
  store i64 %10, ptr %43, align 16
  %44 = getelementptr inbounds nuw i8, ptr %33, i64 88
  store i64 %11, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store i64 %12, ptr %45, align 16
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 104
  store i64 %13, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store i64 %14, ptr %47, align 16
  %48 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store i64 %15, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %33, i64 128
  store i64 %16, ptr %49, align 16
  %50 = getelementptr inbounds nuw i8, ptr %33, i64 136
  store i64 %17, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 144
  store i64 %18, ptr %51, align 16
  %52 = getelementptr inbounds nuw i8, ptr %33, i64 152
  store i64 %19, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %33, i64 160
  store i64 %20, ptr %53, align 16
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 168
  store i64 %21, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %33, i64 176
  store i64 %22, ptr %55, align 16
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 184
  store i64 %23, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 192
  store i64 %24, ptr %57, align 16
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i64 %25, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %33, i64 208
  store i64 %26, ptr %59, align 16
  %60 = getelementptr inbounds nuw i8, ptr %33, i64 216
  store i64 %27, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %33, i64 224
  store i64 %28, ptr %61, align 16
  %62 = getelementptr inbounds nuw i8, ptr %33, i64 232
  store i64 %29, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %33, i64 240
  store i64 %30, ptr %63, align 16
  %64 = getelementptr inbounds nuw i8, ptr %33, i64 248
  store i64 %31, ptr %64, align 8
  %65 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %33, i64 noundef range(i64 0, 201) 200, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %33) #8
  ret i64 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh3_64_le16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp ugt i64 %1, 16
  br i1 %3, label %80, label %4

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %29, !prof !6

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
  br label %80

29:                                               ; preds = %4
  %30 = icmp samesign ugt i64 %1, 3
  br i1 %30, label %31, label %53, !prof !6

31:                                               ; preds = %29
  %32 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %32)
  %33 = load i32, ptr %0, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %35 = getelementptr inbounds i8, ptr %34, i64 -4
  %36 = load i32, ptr %35, align 1
  %37 = zext i32 %36 to i64
  %38 = zext i32 %33 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or disjoint i64 %39, %37
  %41 = xor i64 %40, -4090762196417718878
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 49)
  %43 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 24)
  %44 = xor i64 %43, %42
  %45 = xor i64 %44, %41
  %46 = mul i64 %45, -6939452855193903323
  %47 = lshr i64 %46, 35
  %48 = add nuw nsw i64 %47, %1
  %49 = xor i64 %48, %46
  %50 = mul i64 %49, -6939452855193903323
  %51 = lshr i64 %50, 28
  %52 = xor i64 %51, %50
  br label %80

53:                                               ; preds = %29
  %54 = icmp eq i64 %1, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %53
  %56 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %56)
  %57 = load i8, ptr %0, align 1
  %58 = lshr i64 %1, 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr i8, ptr %0, i64 %1
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %57 to i64
  %65 = shl nuw nsw i64 %64, 16
  %66 = zext i8 %60 to i64
  %67 = shl nuw nsw i64 %66, 24
  %68 = or disjoint i64 %67, %65
  %69 = zext i8 %63 to i64
  %70 = or disjoint i64 %68, %69
  %71 = shl nuw nsw i64 %1, 8
  %72 = or disjoint i64 %70, %71
  %73 = xor i64 %72, 2267503259
  %74 = mul i64 %73, -4417276706812531889
  %75 = lshr i64 %74, 29
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  br label %80

80:                                               ; preds = %55, %53, %31, %6, %2
  %81 = phi i64 [ 0, %2 ], [ %28, %6 ], [ %52, %31 ], [ %79, %55 ], [ 3244421341483603138, %53 ]
  ret i64 %81
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh3_64_seed_le16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp ugt i64 %1, 16
  br i1 %4, label %102, label %5

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %32, !prof !6

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
  br label %102

32:                                               ; preds = %5
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %62, !prof !6

34:                                               ; preds = %32
  %35 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %35)
  %36 = trunc i64 %2 to i32
  %37 = tail call noundef i32 @llvm.bswap.i32(i32 %36)
  %38 = zext i32 %37 to i64
  %39 = shl nuw i64 %38, 32
  %40 = xor i64 %39, %2
  %41 = load i32, ptr %0, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %43 = getelementptr inbounds i8, ptr %42, i64 -4
  %44 = load i32, ptr %43, align 1
  %45 = sub i64 -4090762196417718878, %40
  %46 = zext i32 %44 to i64
  %47 = zext i32 %41 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or disjoint i64 %48, %46
  %50 = xor i64 %49, %45
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 49)
  %52 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 24)
  %53 = xor i64 %52, %51
  %54 = xor i64 %53, %50
  %55 = mul i64 %54, -6939452855193903323
  %56 = lshr i64 %55, 35
  %57 = add nuw nsw i64 %56, %1
  %58 = xor i64 %57, %55
  %59 = mul i64 %58, -6939452855193903323
  %60 = lshr i64 %59, 28
  %61 = xor i64 %60, %59
  br label %102

62:                                               ; preds = %32
  %63 = icmp eq i64 %1, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %62
  %65 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %65)
  %66 = load i8, ptr %0, align 1
  %67 = lshr i64 %1, 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr i8, ptr %0, i64 %1
  %71 = getelementptr i8, ptr %70, i64 -1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %66 to i64
  %74 = shl nuw nsw i64 %73, 16
  %75 = zext i8 %69 to i64
  %76 = shl nuw nsw i64 %75, 24
  %77 = or disjoint i64 %76, %74
  %78 = zext i8 %72 to i64
  %79 = or disjoint i64 %77, %78
  %80 = shl nuw nsw i64 %1, 8
  %81 = or disjoint i64 %79, %80
  %82 = add i64 %2, 2267503259
  %83 = xor i64 %81, %82
  %84 = lshr i64 %83, 33
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, -4417276706812531889
  %87 = lshr i64 %86, 29
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, 1609587929392839161
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  br label %102

92:                                               ; preds = %62
  %93 = xor i64 %2, -8707998980786479652
  %94 = lshr i64 %93, 33
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, -4417276706812531889
  %97 = lshr i64 %96, 29
  %98 = xor i64 %97, %96
  %99 = mul i64 %98, 1609587929392839161
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  br label %102

102:                                              ; preds = %92, %64, %34, %7, %3
  %103 = phi i64 [ 0, %3 ], [ %31, %7 ], [ %61, %34 ], [ %91, %64 ], [ %101, %92 ]
  ret i64 %103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh3_64_secret_le16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ugt i64 %1, 16
  %6 = icmp ult i64 %3, 136
  %7 = or i1 %5, %6
  br i1 %7, label %121, label %8

8:                                                ; preds = %4
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %44, !prof !6

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
  br label %121

44:                                               ; preds = %8
  %45 = icmp samesign ugt i64 %1, 3
  br i1 %45, label %46, label %74, !prof !6

46:                                               ; preds = %44
  %47 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %48)
  %49 = load i32, ptr %0, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %51 = getelementptr inbounds i8, ptr %50, i64 -4
  %52 = load i32, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %56, %54
  %58 = zext i32 %52 to i64
  %59 = zext i32 %49 to i64
  %60 = shl nuw i64 %59, 32
  %61 = or disjoint i64 %60, %58
  %62 = xor i64 %57, %61
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %64 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %65 = xor i64 %64, %63
  %66 = xor i64 %65, %62
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 35
  %69 = add nuw nsw i64 %68, %1
  %70 = xor i64 %69, %67
  %71 = mul i64 %70, -6939452855193903323
  %72 = lshr i64 %71, 28
  %73 = xor i64 %72, %71
  br label %121

74:                                               ; preds = %44
  %75 = icmp eq i64 %1, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %74
  %77 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %77)
  %78 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %78)
  %79 = load i8, ptr %0, align 1
  %80 = lshr i64 %1, 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %0, i64 %1
  %84 = getelementptr i8, ptr %83, i64 -1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %79 to i64
  %87 = shl nuw nsw i64 %86, 16
  %88 = zext i8 %82 to i64
  %89 = shl nuw nsw i64 %88, 24
  %90 = or disjoint i64 %89, %87
  %91 = zext i8 %85 to i64
  %92 = or disjoint i64 %90, %91
  %93 = shl nuw nsw i64 %1, 8
  %94 = or disjoint i64 %92, %93
  %95 = load i32, ptr %2, align 1
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %97 = load i32, ptr %96, align 1
  %98 = xor i32 %97, %95
  %99 = zext i32 %98 to i64
  %100 = xor i64 %94, %99
  %101 = mul i64 %100, -4417276706812531889
  %102 = lshr i64 %101, 29
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, 1609587929392839161
  %105 = lshr i64 %104, 32
  %106 = xor i64 %105, %104
  br label %121

107:                                              ; preds = %74
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %109 = load i64, ptr %108, align 1
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %111 = load i64, ptr %110, align 1
  %112 = xor i64 %111, %109
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %121

121:                                              ; preds = %107, %76, %46, %10, %4
  %122 = phi i64 [ 0, %4 ], [ %43, %10 ], [ %73, %46 ], [ %106, %76 ], [ %120, %107 ]
  ret i64 %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef readonly %0, i64 noundef range(i64 129, 201) %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #5 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -16
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %161 = load i64, ptr %159, align 1
  %162 = getelementptr inbounds i8, ptr %158, i64 -8
  %163 = load i64, ptr %162, align 1
  %164 = load i64, ptr %160, align 1
  %165 = add i64 %164, %3
  %166 = xor i64 %165, %161
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %168 = load i64, ptr %167, align 1
  %169 = sub i64 %168, %3
  %170 = xor i64 %169, %163
  %171 = zext i64 %166 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = lshr i64 %156, 37
  %178 = xor i64 %177, %156
  %179 = mul i64 %178, 1609587791953885689
  %180 = lshr i64 %179, 32
  %181 = xor i64 %180, %179
  %182 = icmp eq i32 %157, 8
  br i1 %182, label %213, label %183

183:                                              ; preds = %4
  %184 = zext nneg i32 %157 to i64
  br label %185

185:                                              ; preds = %183, %185
  %186 = phi i64 [ 8, %183 ], [ %211, %185 ]
  %187 = phi i64 [ %181, %183 ], [ %189, %185 ]
  %188 = phi i64 [ %176, %183 ], [ %210, %185 ]
  %189 = freeze i64 %187
  %190 = shl nuw nsw i64 %186, 4
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 %190
  %192 = getelementptr i8, ptr %2, i64 %190
  %193 = getelementptr i8, ptr %192, i64 -125
  %194 = load i64, ptr %191, align 1
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %196 = load i64, ptr %195, align 1
  %197 = load i64, ptr %193, align 1
  %198 = add i64 %197, %3
  %199 = xor i64 %198, %194
  %200 = getelementptr i8, ptr %192, i64 -117
  %201 = load i64, ptr %200, align 1
  %202 = sub i64 %201, %3
  %203 = xor i64 %202, %196
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %188, %209
  %211 = add nuw nsw i64 %186, 1
  %212 = icmp eq i64 %211, %184
  br i1 %212, label %213, label %185

213:                                              ; preds = %185, %4
  %214 = phi i64 [ %176, %4 ], [ %210, %185 ]
  %215 = phi i64 [ %181, %4 ], [ %189, %185 ]
  %216 = add i64 %215, %214
  %217 = lshr i64 %216, 37
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587791953885689
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  ret i64 %221
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148120918}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i64 2152105204}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
