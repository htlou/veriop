; ModuleID = 'ident_rv64gc_novector/wrapper.c'
source_filename = "ident_rv64gc_novector/wrapper.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local signext i32 @target_xxh32(ptr noundef readonly %0, i64 noundef %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %55

7:                                                ; preds = %5
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -15
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i32 [ %10, %7 ], [ %41, %13 ]
  %15 = phi i32 [ %2, %7 ], [ %35, %13 ]
  %16 = phi i32 [ %9, %7 ], [ %29, %13 ]
  %17 = phi i32 [ %8, %7 ], [ %23, %13 ]
  %18 = phi ptr [ %0, %7 ], [ %42, %13 ]
  %19 = load i32, ptr %18, align 1, !alias.scope !9, !noalias !12
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %17
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %25 = load i32, ptr %24, align 1, !alias.scope !9, !noalias !12
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %31 = load i32, ptr %30, align 1, !alias.scope !9, !noalias !12
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %37 = load i32, ptr %36, align 1, !alias.scope !9, !noalias !12
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %14
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %43 = icmp ult ptr %42, %12
  br i1 %43, label %13, label %44, !llvm.loop !14

44:                                               ; preds = %13
  %45 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 1)
  %46 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %47 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 12)
  %48 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 18)
  %49 = trunc i64 %1 to i32
  %50 = add i32 %45, %49
  %51 = add i32 %50, %46
  %52 = add i32 %51, %47
  %53 = add i32 %52, %48
  %54 = and i64 %1, 15
  br label %62

55:                                               ; preds = %5
  %56 = add i32 %2, 374761393
  %57 = trunc nuw i64 %1 to i32
  %58 = add i32 %56, %57
  br label %62

59:                                               ; preds = %3
  %60 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %60)
  %61 = add i32 %2, 374761393
  br label %97

62:                                               ; preds = %55, %44
  %63 = phi i64 [ %54, %44 ], [ %1, %55 ]
  %64 = phi i32 [ %53, %44 ], [ %58, %55 ]
  %65 = phi ptr [ %42, %44 ], [ %0, %55 ]
  %66 = icmp samesign ugt i64 %63, 3
  br i1 %66, label %72, label %67

67:                                               ; preds = %72, %62
  %68 = phi ptr [ %65, %62 ], [ %79, %72 ]
  %69 = phi i64 [ %63, %62 ], [ %82, %72 ]
  %70 = phi i32 [ %64, %62 ], [ %81, %72 ]
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %97, label %84

72:                                               ; preds = %62, %72
  %73 = phi i32 [ %81, %72 ], [ %64, %62 ]
  %74 = phi i64 [ %82, %72 ], [ %63, %62 ]
  %75 = phi ptr [ %79, %72 ], [ %65, %62 ]
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -1028477379
  %78 = add i32 %77, %73
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %80 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 17)
  %81 = mul i32 %80, 668265263
  %82 = add nsw i64 %74, -4
  %83 = icmp ugt i64 %82, 3
  br i1 %83, label %72, label %67, !llvm.loop !16

84:                                               ; preds = %67, %84
  %85 = phi i32 [ %94, %84 ], [ %70, %67 ]
  %86 = phi i64 [ %95, %84 ], [ %69, %67 ]
  %87 = phi ptr [ %88, %84 ], [ %68, %67 ]
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 1
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i32
  %91 = mul i32 %90, 374761393
  %92 = add i32 %91, %85
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 11)
  %94 = mul i32 %93, -1640531535
  %95 = add nsw i64 %86, -1
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %84, !llvm.loop !17

97:                                               ; preds = %84, %59, %67
  %98 = phi i32 [ %70, %67 ], [ %61, %59 ], [ %94, %84 ]
  %99 = lshr i32 %98, 15
  %100 = xor i32 %99, %98
  %101 = mul i32 %100, -2048144777
  %102 = lshr i32 %101, 13
  %103 = xor i32 %102, %101
  %104 = mul i32 %103, -1028477379
  %105 = lshr i32 %104, 16
  %106 = xor i32 %105, %104
  ret i32 %106
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %76

7:                                                ; preds = %5
  %8 = add i64 %2, 6983438078262162902
  %9 = add i64 %2, -4417276706812531889
  %10 = add i64 %2, 7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -31
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ %10, %7 ], [ %41, %13 ]
  %15 = phi i64 [ %2, %7 ], [ %35, %13 ]
  %16 = phi i64 [ %9, %7 ], [ %29, %13 ]
  %17 = phi i64 [ %8, %7 ], [ %23, %13 ]
  %18 = phi ptr [ %0, %7 ], [ %42, %13 ]
  %19 = load i64, ptr %18, align 1, !alias.scope !18, !noalias !21
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, %17
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %25 = load i64, ptr %24, align 1, !alias.scope !18, !noalias !21
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %31 = load i64, ptr %30, align 1, !alias.scope !18, !noalias !21
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %15
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %37 = load i64, ptr %36, align 1, !alias.scope !18, !noalias !21
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %14
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %43 = icmp ult ptr %42, %12
  br i1 %43, label %13, label %44, !llvm.loop !23

44:                                               ; preds = %13
  %45 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 1)
  %46 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 7)
  %47 = add i64 %46, %45
  %48 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 12)
  %49 = add i64 %47, %48
  %50 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 18)
  %51 = add i64 %49, %50
  %52 = mul i64 %22, -2381459717836149591
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %51, %54
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = mul i64 %28, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %34, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %40, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  br label %81

76:                                               ; preds = %5
  %77 = add i64 %2, 2870177450012600261
  br label %81

78:                                               ; preds = %3
  %79 = add i64 %2, 2870177450012600261
  %80 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %80)
  br label %135

81:                                               ; preds = %76, %44
  %82 = phi i64 [ %75, %44 ], [ %77, %76 ]
  %83 = phi ptr [ %42, %44 ], [ %0, %76 ]
  %84 = add i64 %82, %1
  %85 = and i64 %1, 31
  %86 = icmp samesign ugt i64 %85, 7
  br i1 %86, label %87, label %102

87:                                               ; preds = %81, %87
  %88 = phi i64 [ %99, %87 ], [ %84, %81 ]
  %89 = phi ptr [ %95, %87 ], [ %83, %81 ]
  %90 = phi i64 [ %100, %87 ], [ %85, %81 ]
  %91 = load i64, ptr %89, align 1
  %92 = mul i64 %91, -4417276706812531889
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  %95 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %96 = xor i64 %94, %88
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 27)
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  %100 = add nsw i64 %90, -8
  %101 = icmp ugt i64 %100, 7
  br i1 %101, label %87, label %102, !llvm.loop !24

102:                                              ; preds = %87, %81
  %103 = phi i64 [ %85, %81 ], [ %100, %87 ]
  %104 = phi ptr [ %83, %81 ], [ %95, %87 ]
  %105 = phi i64 [ %84, %81 ], [ %99, %87 ]
  %106 = icmp samesign ugt i64 %103, 3
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i32, ptr %104, align 1
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, -7046029288634856825
  %111 = xor i64 %110, %105
  %112 = getelementptr inbounds nuw i8, ptr %104, i64 4
  %113 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 23)
  %114 = mul i64 %113, -4417276706812531889
  %115 = add i64 %114, 1609587929392839161
  %116 = add nsw i64 %103, -4
  br label %117

117:                                              ; preds = %107, %102
  %118 = phi i64 [ %116, %107 ], [ %103, %102 ]
  %119 = phi ptr [ %112, %107 ], [ %104, %102 ]
  %120 = phi i64 [ %115, %107 ], [ %105, %102 ]
  %121 = icmp eq i64 %118, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %117, %122
  %123 = phi i64 [ %132, %122 ], [ %120, %117 ]
  %124 = phi ptr [ %126, %122 ], [ %119, %117 ]
  %125 = phi i64 [ %133, %122 ], [ %118, %117 ]
  %126 = getelementptr inbounds nuw i8, ptr %124, i64 1
  %127 = load i8, ptr %124, align 1
  %128 = zext i8 %127 to i64
  %129 = mul i64 %128, 2870177450012600261
  %130 = xor i64 %129, %123
  %131 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 11)
  %132 = mul i64 %131, -7046029288634856825
  %133 = add nsw i64 %125, -1
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %122, !llvm.loop !25

135:                                              ; preds = %122, %78, %117
  %136 = phi i64 [ %120, %117 ], [ %79, %78 ], [ %132, %122 ]
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  ret i64 %144
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_seed(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, ptr noundef nonnull @XXH3_hashLong_64b_withSeed)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_secret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = icmp ult i64 %3, 136
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef 0, ptr noundef %2, i64 noundef range(i64 136, 0) %3, ptr noundef nonnull @XXH3_hashLong_64b_withSecret)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i64 [ %7, %6 ], [ 0, %4 ]
  ret i64 %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [192 x i8], align 8
  %6 = icmp ult i64 %2, 17
  br i1 %6, label %7, label %155

7:                                                ; preds = %4
  %8 = icmp samesign ugt i64 %2, 8
  br i1 %8, label %9, label %49

9:                                                ; preds = %7
  %10 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %10)
  %11 = sub i64 6455697860950631241, %3
  %12 = add i64 %3, -4466874330221494952
  %13 = load i64, ptr %1, align 1
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %13, %11
  %18 = xor i64 %17, %16
  %19 = zext i64 %18 to i128
  %20 = mul nuw i128 %19, 11400714785074694791
  %21 = trunc i128 %20 to i64
  %22 = lshr i128 %20, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = shl nuw nsw i64 %2, 54
  %25 = add nsw i64 %24, -18014398509481984
  %26 = add i64 %25, %21
  %27 = xor i64 %16, %12
  %28 = and i64 %27, 4294967295
  %29 = mul nuw i64 %28, 2246822518
  %30 = add i64 %29, %27
  %31 = add i64 %30, %23
  %32 = tail call noundef i64 @llvm.bswap.i64(i64 %31)
  %33 = xor i64 %32, %26
  %34 = zext i64 %33 to i128
  %35 = mul nuw i128 %34, 14029467366897019727
  %36 = trunc i128 %35 to i64
  %37 = lshr i128 %35, 64
  %38 = trunc nuw i128 %37 to i64
  %39 = mul i64 %31, -4417276706812531889
  %40 = add i64 %39, %38
  %41 = lshr i64 %36, 37
  %42 = xor i64 %41, %36
  %43 = mul i64 %42, 1609587791953885689
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  %46 = lshr i64 %40, 37
  %47 = xor i64 %46, %40
  %48 = mul i64 %47, 1609587791953885689
  br label %148

49:                                               ; preds = %7
  %50 = icmp samesign ugt i64 %2, 3
  br i1 %50, label %51, label %88

51:                                               ; preds = %49
  %52 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %52)
  %53 = trunc i64 %3 to i32
  %54 = tail call noundef i32 @llvm.bswap.i32(i32 %53)
  %55 = zext i32 %54 to i64
  %56 = shl nuw i64 %55, 32
  %57 = xor i64 %56, %3
  %58 = load i32, ptr %1, align 1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %60 = getelementptr inbounds i8, ptr %59, i64 -4
  %61 = load i32, ptr %60, align 1
  %62 = zext i32 %58 to i64
  %63 = zext i32 %61 to i64
  %64 = shl nuw i64 %63, 32
  %65 = or disjoint i64 %64, %62
  %66 = add i64 %57, -4255862940314790740
  %67 = xor i64 %65, %66
  %68 = shl nuw nsw i64 %2, 2
  %69 = add nuw nsw i64 %68, -7046029288634856825
  %70 = zext i64 %67 to i128
  %71 = zext i64 %69 to i128
  %72 = mul nuw i128 %70, %71
  %73 = trunc i128 %72 to i64
  %74 = lshr i128 %72, 64
  %75 = trunc nuw i128 %74 to i64
  %76 = shl i64 %73, 1
  %77 = add i64 %76, %75
  %78 = lshr i64 %77, 3
  %79 = xor i64 %78, %73
  %80 = lshr i64 %79, 35
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  %85 = lshr i64 %77, 37
  %86 = xor i64 %85, %77
  %87 = mul i64 %86, 1609587791953885689
  br label %148

88:                                               ; preds = %49
  %89 = icmp eq i64 %2, 0
  br i1 %89, label %131, label %90

90:                                               ; preds = %88
  %91 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %91)
  %92 = load i8, ptr %1, align 1
  %93 = lshr i64 %2, 1
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr i8, ptr %1, i64 %2
  %97 = getelementptr i8, ptr %96, i64 -1
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %92 to i32
  %100 = shl nuw nsw i32 %99, 16
  %101 = zext i8 %95 to i32
  %102 = shl nuw i32 %101, 24
  %103 = or disjoint i32 %102, %100
  %104 = zext i8 %98 to i32
  %105 = or disjoint i32 %103, %104
  %106 = trunc nuw nsw i64 %2 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or disjoint i32 %105, %107
  %109 = tail call noundef i32 @llvm.bswap.i32(i32 %108)
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 13)
  %111 = add i64 %3, 2267503259
  %112 = sub i64 808198283, %3
  %113 = zext i32 %108 to i64
  %114 = zext nneg i32 %110 to i64
  %115 = lshr i64 %111, 33
  %116 = xor i64 %115, %113
  %117 = xor i64 %116, %111
  %118 = mul i64 %117, -4417276706812531889
  %119 = lshr i64 %118, 29
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  %124 = lshr i64 %112, 33
  %125 = xor i64 %124, %114
  %126 = xor i64 %125, %112
  %127 = mul i64 %126, -4417276706812531889
  %128 = lshr i64 %127, 29
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, 1609587929392839161
  br label %148

131:                                              ; preds = %88
  %132 = xor i64 %3, 7507096552062056628
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  %141 = xor i64 %3, -7613947547284439735
  %142 = lshr i64 %141, 33
  %143 = xor i64 %142, %141
  %144 = mul i64 %143, -4417276706812531889
  %145 = lshr i64 %144, 29
  %146 = xor i64 %145, %144
  %147 = mul i64 %146, 1609587929392839161
  br label %148

148:                                              ; preds = %131, %90, %51, %9
  %149 = phi i64 [ %147, %131 ], [ %130, %90 ], [ %87, %51 ], [ %48, %9 ]
  %150 = phi i64 [ %140, %131 ], [ %123, %90 ], [ %84, %51 ], [ %45, %9 ]
  %151 = lshr i64 %149, 32
  %152 = xor i64 %151, %149
  %153 = insertvalue [2 x i64] poison, i64 %150, 0
  %154 = insertvalue [2 x i64] %153, i64 %152, 1
  br label %642

155:                                              ; preds = %4
  %156 = icmp ult i64 %2, 129
  br i1 %156, label %157, label %332

157:                                              ; preds = %155
  %158 = mul i64 %2, -7046029288634856825
  %159 = icmp samesign ugt i64 %2, 32
  br i1 %159, label %160, label %275

160:                                              ; preds = %157
  %161 = icmp samesign ugt i64 %2, 64
  br i1 %161, label %162, label %237

162:                                              ; preds = %160
  %163 = icmp samesign ugt i64 %2, 96
  br i1 %163, label %164, label %199

164:                                              ; preds = %162
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %166 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %167 = getelementptr inbounds i8, ptr %166, i64 -64
  %168 = load i64, ptr %165, align 1, !alias.scope !26
  %169 = getelementptr i8, ptr %1, i64 56
  %170 = load i64, ptr %169, align 1, !alias.scope !26
  %171 = load i64, ptr %167, align 1, !alias.scope !26
  %172 = getelementptr i8, ptr %166, i64 -56
  %173 = load i64, ptr %172, align 1, !alias.scope !26
  %174 = add i64 %3, 4554437623014685352
  %175 = xor i64 %168, %174
  %176 = sub i64 2111919702937427193, %3
  %177 = xor i64 %170, %176
  %178 = zext i64 %175 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %158, %183
  %185 = add i64 %173, %171
  %186 = xor i64 %184, %185
  %187 = add i64 %3, 3556072174620004746
  %188 = xor i64 %171, %187
  %189 = sub i64 7238261902898274248, %3
  %190 = xor i64 %173, %189
  %191 = zext i64 %188 to i128
  %192 = zext i64 %190 to i128
  %193 = mul nuw i128 %192, %191
  %194 = lshr i128 %193, 64
  %195 = xor i128 %194, %193
  %196 = trunc i128 %195 to i64
  %197 = add i64 %170, %168
  %198 = xor i64 %197, %196
  br label %199

199:                                              ; preds = %164, %162
  %200 = phi i64 [ %186, %164 ], [ %158, %162 ]
  %201 = phi i64 [ %198, %164 ], [ 0, %162 ]
  %202 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %203 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %204 = getelementptr inbounds i8, ptr %203, i64 -48
  %205 = load i64, ptr %202, align 1, !alias.scope !26
  %206 = getelementptr i8, ptr %1, i64 40
  %207 = load i64, ptr %206, align 1, !alias.scope !26
  %208 = load i64, ptr %204, align 1, !alias.scope !26
  %209 = getelementptr i8, ptr %203, i64 -40
  %210 = load i64, ptr %209, align 1, !alias.scope !26
  %211 = add i64 %3, -3818837453329782724
  %212 = xor i64 %205, %211
  %213 = sub i64 -6688317018830679928, %3
  %214 = xor i64 %207, %213
  %215 = zext i64 %212 to i128
  %216 = zext i64 %214 to i128
  %217 = mul nuw i128 %216, %215
  %218 = lshr i128 %217, 64
  %219 = xor i128 %218, %217
  %220 = trunc i128 %219 to i64
  %221 = add i64 %200, %220
  %222 = add i64 %210, %208
  %223 = xor i64 %221, %222
  %224 = add i64 %3, 5690594596133299313
  %225 = xor i64 %208, %224
  %226 = sub i64 -2833645246901970632, %3
  %227 = xor i64 %210, %226
  %228 = zext i64 %225 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %201, %233
  %235 = add i64 %207, %205
  %236 = xor i64 %234, %235
  br label %237

237:                                              ; preds = %199, %160
  %238 = phi i64 [ %223, %199 ], [ %158, %160 ]
  %239 = phi i64 [ %236, %199 ], [ 0, %160 ]
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %241 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %242 = getelementptr inbounds i8, ptr %241, i64 -32
  %243 = load i64, ptr %240, align 1, !alias.scope !26
  %244 = getelementptr i8, ptr %1, i64 24
  %245 = load i64, ptr %244, align 1, !alias.scope !26
  %246 = load i64, ptr %242, align 1, !alias.scope !26
  %247 = getelementptr i8, ptr %241, i64 -24
  %248 = load i64, ptr %247, align 1, !alias.scope !26
  %249 = add i64 %3, 8711581037947681227
  %250 = xor i64 %243, %249
  %251 = sub i64 2410270004345854594, %3
  %252 = xor i64 %245, %251
  %253 = zext i64 %250 to i128
  %254 = zext i64 %252 to i128
  %255 = mul nuw i128 %254, %253
  %256 = lshr i128 %255, 64
  %257 = xor i128 %256, %255
  %258 = trunc i128 %257 to i64
  %259 = add i64 %238, %258
  %260 = add i64 %248, %246
  %261 = xor i64 %259, %260
  %262 = add i64 %3, -8204357891075471176
  %263 = xor i64 %246, %262
  %264 = sub i64 5487137525590930912, %3
  %265 = xor i64 %248, %264
  %266 = zext i64 %263 to i128
  %267 = zext i64 %265 to i128
  %268 = mul nuw i128 %267, %266
  %269 = lshr i128 %268, 64
  %270 = xor i128 %269, %268
  %271 = trunc i128 %270 to i64
  %272 = add i64 %239, %271
  %273 = add i64 %245, %243
  %274 = xor i64 %272, %273
  br label %275

275:                                              ; preds = %237, %157
  %276 = phi i64 [ %261, %237 ], [ %158, %157 ]
  %277 = phi i64 [ %274, %237 ], [ 0, %157 ]
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %279 = getelementptr inbounds i8, ptr %278, i64 -16
  %280 = load i64, ptr %1, align 1, !alias.scope !26
  %281 = getelementptr i8, ptr %1, i64 8
  %282 = load i64, ptr %281, align 1, !alias.scope !26
  %283 = load i64, ptr %279, align 1, !alias.scope !26
  %284 = getelementptr i8, ptr %278, i64 -8
  %285 = load i64, ptr %284, align 1, !alias.scope !26
  %286 = add i64 %3, -4734510112055689544
  %287 = xor i64 %280, %286
  %288 = sub i64 2066345149520216444, %3
  %289 = xor i64 %282, %288
  %290 = zext i64 %287 to i128
  %291 = zext i64 %289 to i128
  %292 = mul nuw i128 %291, %290
  %293 = lshr i128 %292, 64
  %294 = xor i128 %293, %292
  %295 = trunc i128 %294 to i64
  %296 = add i64 %276, %295
  %297 = add i64 %285, %283
  %298 = xor i64 %296, %297
  %299 = add i64 %3, -2623469361688619810
  %300 = xor i64 %283, %299
  %301 = sub i64 2262974939099578482, %3
  %302 = xor i64 %285, %301
  %303 = zext i64 %300 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %277, %308
  %310 = add i64 %282, %280
  %311 = xor i64 %309, %310
  %312 = add i64 %311, %298
  %313 = mul i64 %298, -7046029288634856825
  %314 = mul i64 %311, -8796714831421723037
  %315 = sub i64 %2, %3
  %316 = mul i64 %315, -4417276706812531889
  %317 = add i64 %313, %316
  %318 = add i64 %317, %314
  %319 = lshr i64 %312, 37
  %320 = xor i64 %319, %312
  %321 = mul i64 %320, 1609587791953885689
  %322 = lshr i64 %321, 32
  %323 = xor i64 %322, %321
  %324 = lshr i64 %318, 37
  %325 = xor i64 %324, %318
  %326 = mul i64 %325, 1609587791953885689
  %327 = lshr i64 %326, 32
  %328 = xor i64 %327, %326
  %329 = sub i64 0, %328
  %330 = insertvalue [2 x i64] poison, i64 %323, 0
  %331 = insertvalue [2 x i64] %330, i64 %329, 1
  br label %642

332:                                              ; preds = %155
  %333 = icmp ult i64 %2, 241
  br i1 %333, label %334, label %589

334:                                              ; preds = %332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %335 = mul i64 %2, -7046029288634856825
  %336 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %337 = load i64, ptr %1, align 1, !alias.scope !29
  %338 = getelementptr i8, ptr %1, i64 8
  %339 = load i64, ptr %338, align 1, !alias.scope !29
  %340 = load i64, ptr %336, align 1, !alias.scope !29
  %341 = getelementptr i8, ptr %1, i64 24
  %342 = load i64, ptr %341, align 1, !alias.scope !29
  %343 = add i64 %3, -4734510112055689544
  %344 = xor i64 %337, %343
  %345 = sub i64 2066345149520216444, %3
  %346 = xor i64 %339, %345
  %347 = zext i64 %344 to i128
  %348 = zext i64 %346 to i128
  %349 = mul nuw i128 %348, %347
  %350 = lshr i128 %349, 64
  %351 = xor i128 %350, %349
  %352 = trunc i128 %351 to i64
  %353 = add i64 %335, %352
  %354 = add i64 %342, %340
  %355 = xor i64 %353, %354
  %356 = add i64 %3, -2623469361688619810
  %357 = xor i64 %340, %356
  %358 = sub i64 2262974939099578482, %3
  %359 = xor i64 %342, %358
  %360 = zext i64 %357 to i128
  %361 = zext i64 %359 to i128
  %362 = mul nuw i128 %361, %360
  %363 = lshr i128 %362, 64
  %364 = xor i128 %363, %362
  %365 = trunc i128 %364 to i64
  %366 = add i64 %339, %337
  %367 = xor i64 %366, %365
  %368 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %369 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %370 = load i64, ptr %368, align 1, !alias.scope !29
  %371 = getelementptr i8, ptr %1, i64 40
  %372 = load i64, ptr %371, align 1, !alias.scope !29
  %373 = load i64, ptr %369, align 1, !alias.scope !29
  %374 = getelementptr i8, ptr %1, i64 56
  %375 = load i64, ptr %374, align 1, !alias.scope !29
  %376 = add i64 %3, 8711581037947681227
  %377 = xor i64 %370, %376
  %378 = sub i64 2410270004345854594, %3
  %379 = xor i64 %372, %378
  %380 = zext i64 %377 to i128
  %381 = zext i64 %379 to i128
  %382 = mul nuw i128 %381, %380
  %383 = lshr i128 %382, 64
  %384 = xor i128 %383, %382
  %385 = trunc i128 %384 to i64
  %386 = add i64 %355, %385
  %387 = add i64 %375, %373
  %388 = xor i64 %386, %387
  %389 = add i64 %3, -8204357891075471176
  %390 = xor i64 %373, %389
  %391 = sub i64 5487137525590930912, %3
  %392 = xor i64 %375, %391
  %393 = zext i64 %390 to i128
  %394 = zext i64 %392 to i128
  %395 = mul nuw i128 %394, %393
  %396 = lshr i128 %395, 64
  %397 = xor i128 %396, %395
  %398 = trunc i128 %397 to i64
  %399 = add i64 %367, %398
  %400 = add i64 %372, %370
  %401 = xor i64 %399, %400
  %402 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %403 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %404 = load i64, ptr %402, align 1, !alias.scope !29
  %405 = getelementptr i8, ptr %1, i64 72
  %406 = load i64, ptr %405, align 1, !alias.scope !29
  %407 = load i64, ptr %403, align 1, !alias.scope !29
  %408 = getelementptr i8, ptr %1, i64 88
  %409 = load i64, ptr %408, align 1, !alias.scope !29
  %410 = add i64 %3, -3818837453329782724
  %411 = xor i64 %404, %410
  %412 = sub i64 -6688317018830679928, %3
  %413 = xor i64 %406, %412
  %414 = zext i64 %411 to i128
  %415 = zext i64 %413 to i128
  %416 = mul nuw i128 %415, %414
  %417 = lshr i128 %416, 64
  %418 = xor i128 %417, %416
  %419 = trunc i128 %418 to i64
  %420 = add i64 %388, %419
  %421 = add i64 %409, %407
  %422 = xor i64 %420, %421
  %423 = add i64 %3, 5690594596133299313
  %424 = xor i64 %407, %423
  %425 = sub i64 -2833645246901970632, %3
  %426 = xor i64 %409, %425
  %427 = zext i64 %424 to i128
  %428 = zext i64 %426 to i128
  %429 = mul nuw i128 %428, %427
  %430 = lshr i128 %429, 64
  %431 = xor i128 %430, %429
  %432 = trunc i128 %431 to i64
  %433 = add i64 %401, %432
  %434 = add i64 %406, %404
  %435 = xor i64 %433, %434
  %436 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %437 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %438 = load i64, ptr %436, align 1, !alias.scope !29
  %439 = getelementptr i8, ptr %1, i64 104
  %440 = load i64, ptr %439, align 1, !alias.scope !29
  %441 = load i64, ptr %437, align 1, !alias.scope !29
  %442 = getelementptr i8, ptr %1, i64 120
  %443 = load i64, ptr %442, align 1, !alias.scope !29
  %444 = add i64 %3, 4554437623014685352
  %445 = xor i64 %438, %444
  %446 = sub i64 2111919702937427193, %3
  %447 = xor i64 %440, %446
  %448 = zext i64 %445 to i128
  %449 = zext i64 %447 to i128
  %450 = mul nuw i128 %449, %448
  %451 = lshr i128 %450, 64
  %452 = xor i128 %451, %450
  %453 = trunc i128 %452 to i64
  %454 = add i64 %422, %453
  %455 = add i64 %443, %441
  %456 = xor i64 %454, %455
  %457 = add i64 %3, 3556072174620004746
  %458 = xor i64 %441, %457
  %459 = sub i64 7238261902898274248, %3
  %460 = xor i64 %443, %459
  %461 = zext i64 %458 to i128
  %462 = zext i64 %460 to i128
  %463 = mul nuw i128 %462, %461
  %464 = lshr i128 %463, 64
  %465 = xor i128 %464, %463
  %466 = trunc i128 %465 to i64
  %467 = add i64 %435, %466
  %468 = add i64 %440, %438
  %469 = xor i64 %467, %468
  %470 = lshr i64 %456, 37
  %471 = xor i64 %470, %456
  %472 = mul i64 %471, 1609587791953885689
  %473 = lshr i64 %472, 32
  %474 = xor i64 %473, %472
  %475 = lshr i64 %469, 37
  %476 = xor i64 %475, %469
  %477 = mul i64 %476, 1609587791953885689
  %478 = lshr i64 %477, 32
  %479 = xor i64 %478, %477
  %480 = icmp samesign ult i64 %2, 160
  br i1 %480, label %531, label %481

481:                                              ; preds = %334, %481
  %482 = phi i64 [ %529, %481 ], [ 160, %334 ]
  %483 = phi i64 [ %528, %481 ], [ %479, %334 ]
  %484 = phi i64 [ %511, %481 ], [ %474, %334 ]
  %485 = getelementptr inbounds nuw i8, ptr %1, i64 %482
  %486 = getelementptr inbounds i8, ptr %485, i64 -32
  %487 = getelementptr inbounds i8, ptr %485, i64 -16
  %488 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 3), i64 %482
  %489 = getelementptr inbounds i8, ptr %488, i64 -160
  %490 = load i64, ptr %486, align 1, !alias.scope !29
  %491 = getelementptr i8, ptr %485, i64 -24
  %492 = load i64, ptr %491, align 1, !alias.scope !29
  %493 = load i64, ptr %487, align 1, !alias.scope !29
  %494 = getelementptr i8, ptr %485, i64 -8
  %495 = load i64, ptr %494, align 1, !alias.scope !29
  %496 = load i64, ptr %489, align 1, !noalias !29
  %497 = getelementptr i8, ptr %488, i64 -152
  %498 = load i64, ptr %497, align 1, !noalias !29
  %499 = add i64 %496, %3
  %500 = xor i64 %499, %490
  %501 = sub i64 %498, %3
  %502 = xor i64 %501, %492
  %503 = zext i64 %500 to i128
  %504 = zext i64 %502 to i128
  %505 = mul nuw i128 %504, %503
  %506 = lshr i128 %505, 64
  %507 = xor i128 %506, %505
  %508 = trunc i128 %507 to i64
  %509 = add i64 %484, %508
  %510 = add i64 %495, %493
  %511 = xor i64 %509, %510
  %512 = getelementptr inbounds i8, ptr %488, i64 -144
  %513 = load i64, ptr %512, align 1, !noalias !29
  %514 = getelementptr i8, ptr %488, i64 -136
  %515 = load i64, ptr %514, align 1, !noalias !29
  %516 = add i64 %513, %3
  %517 = xor i64 %516, %493
  %518 = sub i64 %515, %3
  %519 = xor i64 %518, %495
  %520 = zext i64 %517 to i128
  %521 = zext i64 %519 to i128
  %522 = mul nuw i128 %521, %520
  %523 = lshr i128 %522, 64
  %524 = xor i128 %523, %522
  %525 = trunc i128 %524 to i64
  %526 = add i64 %483, %525
  %527 = add i64 %492, %490
  %528 = xor i64 %526, %527
  %529 = add nuw nsw i64 %482, 32
  %530 = icmp samesign ult i64 %2, %529
  br i1 %530, label %531, label %481, !llvm.loop !32

531:                                              ; preds = %481, %334
  %532 = phi i64 [ %474, %334 ], [ %511, %481 ]
  %533 = phi i64 [ %479, %334 ], [ %528, %481 ]
  %534 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %535 = getelementptr inbounds i8, ptr %534, i64 -16
  %536 = getelementptr inbounds i8, ptr %534, i64 -32
  %537 = load i64, ptr %535, align 1, !alias.scope !29
  %538 = getelementptr i8, ptr %534, i64 -8
  %539 = load i64, ptr %538, align 1, !alias.scope !29
  %540 = load i64, ptr %536, align 1, !alias.scope !29
  %541 = getelementptr i8, ptr %534, i64 -24
  %542 = load i64, ptr %541, align 1, !alias.scope !29
  %543 = sub i64 5695865814404364607, %3
  %544 = xor i64 %537, %543
  %545 = add i64 %3, 6464017090953185821
  %546 = xor i64 %539, %545
  %547 = zext i64 %544 to i128
  %548 = zext i64 %546 to i128
  %549 = mul nuw i128 %548, %547
  %550 = lshr i128 %549, 64
  %551 = xor i128 %550, %549
  %552 = trunc i128 %551 to i64
  %553 = add i64 %532, %552
  %554 = add i64 %542, %540
  %555 = xor i64 %553, %554
  %556 = sub i64 8320639771003045937, %3
  %557 = xor i64 %540, %556
  %558 = add i64 %3, -1453760514566526364
  %559 = xor i64 %542, %558
  %560 = zext i64 %557 to i128
  %561 = zext i64 %559 to i128
  %562 = mul nuw i128 %561, %560
  %563 = lshr i128 %562, 64
  %564 = xor i128 %563, %562
  %565 = trunc i128 %564 to i64
  %566 = add i64 %533, %565
  %567 = add i64 %539, %537
  %568 = xor i64 %566, %567
  %569 = add i64 %568, %555
  %570 = mul i64 %555, -7046029288634856825
  %571 = mul i64 %568, -8796714831421723037
  %572 = sub i64 %2, %3
  %573 = mul i64 %572, -4417276706812531889
  %574 = add i64 %570, %573
  %575 = add i64 %574, %571
  %576 = lshr i64 %569, 37
  %577 = xor i64 %576, %569
  %578 = mul i64 %577, 1609587791953885689
  %579 = lshr i64 %578, 32
  %580 = xor i64 %579, %578
  %581 = lshr i64 %575, 37
  %582 = xor i64 %581, %575
  %583 = mul i64 %582, 1609587791953885689
  %584 = lshr i64 %583, 32
  %585 = xor i64 %584, %583
  %586 = sub i64 0, %585
  %587 = insertvalue [2 x i64] poison, i64 %580, 0
  %588 = insertvalue [2 x i64] %587, i64 %586, 1
  br label %642

589:                                              ; preds = %332
  %590 = icmp eq i64 %3, 0
  br i1 %590, label %591, label %593

591:                                              ; preds = %589
  %592 = tail call fastcc [2 x i64] @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %642

593:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #12, !noalias !33
  %594 = add i64 %3, -4734510112055689544
  %595 = sub i64 2066345149520216444, %3
  store i64 %594, ptr %5, align 8, !alias.scope !36, !noalias !33
  %596 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %595, ptr %596, align 8, !alias.scope !36, !noalias !33
  %597 = add i64 %3, -2623469361688619810
  %598 = sub i64 2262974939099578482, %3
  %599 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %597, ptr %599, align 8, !alias.scope !36, !noalias !33
  %600 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %598, ptr %600, align 8, !alias.scope !36, !noalias !33
  %601 = add i64 %3, 8711581037947681227
  %602 = sub i64 2410270004345854594, %3
  %603 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %601, ptr %603, align 8, !alias.scope !36, !noalias !33
  %604 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %602, ptr %604, align 8, !alias.scope !36, !noalias !33
  %605 = add i64 %3, -8204357891075471176
  %606 = sub i64 5487137525590930912, %3
  %607 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %605, ptr %607, align 8, !alias.scope !36, !noalias !33
  %608 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %606, ptr %608, align 8, !alias.scope !36, !noalias !33
  %609 = add i64 %3, -3818837453329782724
  %610 = sub i64 -6688317018830679928, %3
  %611 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %609, ptr %611, align 8, !alias.scope !36, !noalias !33
  %612 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %610, ptr %612, align 8, !alias.scope !36, !noalias !33
  %613 = add i64 %3, 5690594596133299313
  %614 = sub i64 -2833645246901970632, %3
  %615 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %613, ptr %615, align 8, !alias.scope !36, !noalias !33
  %616 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %614, ptr %616, align 8, !alias.scope !36, !noalias !33
  %617 = add i64 %3, 4554437623014685352
  %618 = sub i64 2111919702937427193, %3
  %619 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %617, ptr %619, align 8, !alias.scope !36, !noalias !33
  %620 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %618, ptr %620, align 8, !alias.scope !36, !noalias !33
  %621 = add i64 %3, 3556072174620004746
  %622 = sub i64 7238261902898274248, %3
  %623 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %621, ptr %623, align 8, !alias.scope !36, !noalias !33
  %624 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %622, ptr %624, align 8, !alias.scope !36, !noalias !33
  %625 = add i64 %3, -4329134394285701654
  %626 = sub i64 -1485321483350670907, %3
  %627 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %625, ptr %627, align 8, !alias.scope !36, !noalias !33
  %628 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %626, ptr %628, align 8, !alias.scope !36, !noalias !33
  %629 = add i64 %3, 5321830579834785047
  %630 = sub i64 -7032137544937171245, %3
  %631 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %629, ptr %631, align 8, !alias.scope !36, !noalias !33
  %632 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %630, ptr %632, align 8, !alias.scope !36, !noalias !33
  %633 = add i64 %3, -242834301215959509
  %634 = sub i64 -3588858202114426737, %3
  %635 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %633, ptr %635, align 8, !alias.scope !36, !noalias !33
  %636 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %634, ptr %636, align 8, !alias.scope !36, !noalias !33
  %637 = add i64 %3, 2883454493032893253
  %638 = sub i64 9097354517224871855, %3
  %639 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %637, ptr %639, align 8, !alias.scope !36, !noalias !33
  %640 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %638, ptr %640, align 8, !alias.scope !36, !noalias !33
  %641 = call fastcc [2 x i64] @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #12, !noalias !33
  br label %642

642:                                              ; preds = %148, %275, %531, %591, %593
  %643 = phi [2 x i64] [ %154, %148 ], [ %331, %275 ], [ %588, %531 ], [ %592, %591 ], [ %641, %593 ]
  %644 = extractvalue [2 x i64] %643, 0
  %645 = extractvalue [2 x i64] %643, 1
  store i64 %644, ptr %0, align 8
  %646 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %645, ptr %646, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef range(i64 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #1 {
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %69

8:                                                ; preds = %6
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %46, !prof !39

10:                                               ; preds = %8
  %11 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %12)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = add i64 %17, %2
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %20 = load i64, ptr %19, align 1
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %22 = load i64, ptr %21, align 1
  %23 = xor i64 %22, %20
  %24 = sub i64 %23, %2
  %25 = load i64, ptr %0, align 1
  %26 = xor i64 %25, %18
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %28 = getelementptr inbounds i8, ptr %27, i64 -8
  %29 = load i64, ptr %28, align 1
  %30 = xor i64 %29, %24
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  %32 = add i64 %31, %1
  %33 = add i64 %32, %30
  %34 = zext i64 %26 to i128
  %35 = zext i64 %30 to i128
  %36 = mul nuw i128 %35, %34
  %37 = lshr i128 %36, 64
  %38 = xor i128 %37, %36
  %39 = trunc i128 %38 to i64
  %40 = add i64 %33, %39
  %41 = lshr i64 %40, 37
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, 1609587791953885689
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  br label %466

46:                                               ; preds = %8
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %50, !prof !39

48:                                               ; preds = %46
  %49 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #13
  br label %466

50:                                               ; preds = %46
  %51 = icmp eq i64 %1, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #13
  br label %466

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %56, %58
  %60 = xor i64 %59, %2
  %61 = lshr i64 %60, 33
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, -4417276706812531889
  %64 = lshr i64 %63, 29
  %65 = xor i64 %64, %63
  %66 = mul i64 %65, 1609587929392839161
  %67 = lshr i64 %66, 32
  %68 = xor i64 %67, %66
  br label %466

69:                                               ; preds = %6
  %70 = icmp ult i64 %1, 129
  br i1 %70, label %71, label %244

71:                                               ; preds = %69
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %72 = mul i64 %1, -7046029288634856825
  %73 = icmp samesign ugt i64 %1, 32
  br i1 %73, label %74, label %200

74:                                               ; preds = %71
  %75 = icmp samesign ugt i64 %1, 64
  br i1 %75, label %76, label %159

76:                                               ; preds = %74
  %77 = icmp samesign ugt i64 %1, 96
  br i1 %77, label %78, label %118

78:                                               ; preds = %76
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %81 = load i64, ptr %79, align 1, !alias.scope !40, !noalias !43
  %82 = getelementptr i8, ptr %0, i64 56
  %83 = load i64, ptr %82, align 1, !alias.scope !40, !noalias !43
  %84 = load i64, ptr %80, align 1, !alias.scope !43, !noalias !40
  %85 = getelementptr i8, ptr %3, i64 104
  %86 = load i64, ptr %85, align 1, !alias.scope !43, !noalias !40
  %87 = add i64 %84, %2
  %88 = xor i64 %87, %81
  %89 = sub i64 %86, %2
  %90 = xor i64 %89, %83
  %91 = zext i64 %88 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %72, %96
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %99 = getelementptr inbounds i8, ptr %98, i64 -64
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %101 = load i64, ptr %99, align 1, !alias.scope !40, !noalias !43
  %102 = getelementptr i8, ptr %98, i64 -56
  %103 = load i64, ptr %102, align 1, !alias.scope !40, !noalias !43
  %104 = load i64, ptr %100, align 1, !alias.scope !43, !noalias !40
  %105 = getelementptr i8, ptr %3, i64 120
  %106 = load i64, ptr %105, align 1, !alias.scope !43, !noalias !40
  %107 = add i64 %104, %2
  %108 = xor i64 %107, %101
  %109 = sub i64 %106, %2
  %110 = xor i64 %109, %103
  %111 = zext i64 %108 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %97, %116
  br label %118

118:                                              ; preds = %78, %76
  %119 = phi i64 [ %117, %78 ], [ %72, %76 ]
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %122 = load i64, ptr %120, align 1, !alias.scope !40, !noalias !43
  %123 = getelementptr i8, ptr %0, i64 40
  %124 = load i64, ptr %123, align 1, !alias.scope !40, !noalias !43
  %125 = load i64, ptr %121, align 1, !alias.scope !43, !noalias !40
  %126 = getelementptr i8, ptr %3, i64 72
  %127 = load i64, ptr %126, align 1, !alias.scope !43, !noalias !40
  %128 = add i64 %125, %2
  %129 = xor i64 %128, %122
  %130 = sub i64 %127, %2
  %131 = xor i64 %130, %124
  %132 = zext i64 %129 to i128
  %133 = zext i64 %131 to i128
  %134 = mul nuw i128 %133, %132
  %135 = lshr i128 %134, 64
  %136 = xor i128 %135, %134
  %137 = trunc i128 %136 to i64
  %138 = add i64 %119, %137
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %140 = getelementptr inbounds i8, ptr %139, i64 -48
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %142 = load i64, ptr %140, align 1, !alias.scope !40, !noalias !43
  %143 = getelementptr i8, ptr %139, i64 -40
  %144 = load i64, ptr %143, align 1, !alias.scope !40, !noalias !43
  %145 = load i64, ptr %141, align 1, !alias.scope !43, !noalias !40
  %146 = getelementptr i8, ptr %3, i64 88
  %147 = load i64, ptr %146, align 1, !alias.scope !43, !noalias !40
  %148 = add i64 %145, %2
  %149 = xor i64 %148, %142
  %150 = sub i64 %147, %2
  %151 = xor i64 %150, %144
  %152 = zext i64 %149 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %138, %157
  br label %159

159:                                              ; preds = %118, %74
  %160 = phi i64 [ %158, %118 ], [ %72, %74 ]
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %163 = load i64, ptr %161, align 1, !alias.scope !40, !noalias !43
  %164 = getelementptr i8, ptr %0, i64 24
  %165 = load i64, ptr %164, align 1, !alias.scope !40, !noalias !43
  %166 = load i64, ptr %162, align 1, !alias.scope !43, !noalias !40
  %167 = getelementptr i8, ptr %3, i64 40
  %168 = load i64, ptr %167, align 1, !alias.scope !43, !noalias !40
  %169 = add i64 %166, %2
  %170 = xor i64 %169, %163
  %171 = sub i64 %168, %2
  %172 = xor i64 %171, %165
  %173 = zext i64 %170 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %160, %178
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %181 = getelementptr inbounds i8, ptr %180, i64 -32
  %182 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %183 = load i64, ptr %181, align 1, !alias.scope !40, !noalias !43
  %184 = getelementptr i8, ptr %180, i64 -24
  %185 = load i64, ptr %184, align 1, !alias.scope !40, !noalias !43
  %186 = load i64, ptr %182, align 1, !alias.scope !43, !noalias !40
  %187 = getelementptr i8, ptr %3, i64 56
  %188 = load i64, ptr %187, align 1, !alias.scope !43, !noalias !40
  %189 = add i64 %186, %2
  %190 = xor i64 %189, %183
  %191 = sub i64 %188, %2
  %192 = xor i64 %191, %185
  %193 = zext i64 %190 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %179, %198
  br label %200

200:                                              ; preds = %71, %159
  %201 = phi i64 [ %199, %159 ], [ %72, %71 ]
  %202 = load i64, ptr %0, align 1, !alias.scope !40, !noalias !43
  %203 = getelementptr i8, ptr %0, i64 8
  %204 = load i64, ptr %203, align 1, !alias.scope !40, !noalias !43
  %205 = load i64, ptr %3, align 1, !alias.scope !43, !noalias !40
  %206 = getelementptr i8, ptr %3, i64 8
  %207 = load i64, ptr %206, align 1, !alias.scope !43, !noalias !40
  %208 = add i64 %205, %2
  %209 = xor i64 %208, %202
  %210 = sub i64 %207, %2
  %211 = xor i64 %210, %204
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %201, %217
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %220 = getelementptr inbounds i8, ptr %219, i64 -16
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %222 = load i64, ptr %220, align 1, !alias.scope !40, !noalias !43
  %223 = getelementptr i8, ptr %219, i64 -8
  %224 = load i64, ptr %223, align 1, !alias.scope !40, !noalias !43
  %225 = load i64, ptr %221, align 1, !alias.scope !43, !noalias !40
  %226 = getelementptr i8, ptr %3, i64 24
  %227 = load i64, ptr %226, align 1, !alias.scope !43, !noalias !40
  %228 = add i64 %225, %2
  %229 = xor i64 %228, %222
  %230 = sub i64 %227, %2
  %231 = xor i64 %230, %224
  %232 = zext i64 %229 to i128
  %233 = zext i64 %231 to i128
  %234 = mul nuw i128 %233, %232
  %235 = lshr i128 %234, 64
  %236 = xor i128 %235, %234
  %237 = trunc i128 %236 to i64
  %238 = add i64 %218, %237
  %239 = lshr i64 %238, 37
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587791953885689
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  br label %466

244:                                              ; preds = %69
  %245 = icmp ult i64 %1, 241
  br i1 %245, label %246, label %464

246:                                              ; preds = %244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %247 = mul i64 %1, -7046029288634856825
  %248 = trunc nuw nsw i64 %1 to i32
  %249 = load i64, ptr %0, align 1, !alias.scope !45, !noalias !48
  %250 = getelementptr i8, ptr %0, i64 8
  %251 = load i64, ptr %250, align 1, !alias.scope !45, !noalias !48
  %252 = load i64, ptr %3, align 1, !alias.scope !48, !noalias !45
  %253 = getelementptr i8, ptr %3, i64 8
  %254 = load i64, ptr %253, align 1, !alias.scope !48, !noalias !45
  %255 = add i64 %252, %2
  %256 = xor i64 %255, %249
  %257 = sub i64 %254, %2
  %258 = xor i64 %257, %251
  %259 = zext i64 %256 to i128
  %260 = zext i64 %258 to i128
  %261 = mul nuw i128 %260, %259
  %262 = lshr i128 %261, 64
  %263 = xor i128 %262, %261
  %264 = trunc i128 %263 to i64
  %265 = add i64 %247, %264
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %267 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %268 = load i64, ptr %266, align 1, !alias.scope !45, !noalias !48
  %269 = getelementptr i8, ptr %0, i64 24
  %270 = load i64, ptr %269, align 1, !alias.scope !45, !noalias !48
  %271 = load i64, ptr %267, align 1, !alias.scope !48, !noalias !45
  %272 = getelementptr i8, ptr %3, i64 24
  %273 = load i64, ptr %272, align 1, !alias.scope !48, !noalias !45
  %274 = add i64 %271, %2
  %275 = xor i64 %274, %268
  %276 = sub i64 %273, %2
  %277 = xor i64 %276, %270
  %278 = zext i64 %275 to i128
  %279 = zext i64 %277 to i128
  %280 = mul nuw i128 %279, %278
  %281 = lshr i128 %280, 64
  %282 = xor i128 %281, %280
  %283 = trunc i128 %282 to i64
  %284 = add i64 %265, %283
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %286 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %287 = load i64, ptr %285, align 1, !alias.scope !45, !noalias !48
  %288 = getelementptr i8, ptr %0, i64 40
  %289 = load i64, ptr %288, align 1, !alias.scope !45, !noalias !48
  %290 = load i64, ptr %286, align 1, !alias.scope !48, !noalias !45
  %291 = getelementptr i8, ptr %3, i64 40
  %292 = load i64, ptr %291, align 1, !alias.scope !48, !noalias !45
  %293 = add i64 %290, %2
  %294 = xor i64 %293, %287
  %295 = sub i64 %292, %2
  %296 = xor i64 %295, %289
  %297 = zext i64 %294 to i128
  %298 = zext i64 %296 to i128
  %299 = mul nuw i128 %298, %297
  %300 = lshr i128 %299, 64
  %301 = xor i128 %300, %299
  %302 = trunc i128 %301 to i64
  %303 = add i64 %284, %302
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %305 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %306 = load i64, ptr %304, align 1, !alias.scope !45, !noalias !48
  %307 = getelementptr i8, ptr %0, i64 56
  %308 = load i64, ptr %307, align 1, !alias.scope !45, !noalias !48
  %309 = load i64, ptr %305, align 1, !alias.scope !48, !noalias !45
  %310 = getelementptr i8, ptr %3, i64 56
  %311 = load i64, ptr %310, align 1, !alias.scope !48, !noalias !45
  %312 = add i64 %309, %2
  %313 = xor i64 %312, %306
  %314 = sub i64 %311, %2
  %315 = xor i64 %314, %308
  %316 = zext i64 %313 to i128
  %317 = zext i64 %315 to i128
  %318 = mul nuw i128 %317, %316
  %319 = lshr i128 %318, 64
  %320 = xor i128 %319, %318
  %321 = trunc i128 %320 to i64
  %322 = add i64 %303, %321
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %324 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %325 = load i64, ptr %323, align 1, !alias.scope !45, !noalias !48
  %326 = getelementptr i8, ptr %0, i64 72
  %327 = load i64, ptr %326, align 1, !alias.scope !45, !noalias !48
  %328 = load i64, ptr %324, align 1, !alias.scope !48, !noalias !45
  %329 = getelementptr i8, ptr %3, i64 72
  %330 = load i64, ptr %329, align 1, !alias.scope !48, !noalias !45
  %331 = add i64 %328, %2
  %332 = xor i64 %331, %325
  %333 = sub i64 %330, %2
  %334 = xor i64 %333, %327
  %335 = zext i64 %332 to i128
  %336 = zext i64 %334 to i128
  %337 = mul nuw i128 %336, %335
  %338 = lshr i128 %337, 64
  %339 = xor i128 %338, %337
  %340 = trunc i128 %339 to i64
  %341 = add i64 %322, %340
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %344 = load i64, ptr %342, align 1, !alias.scope !45, !noalias !48
  %345 = getelementptr i8, ptr %0, i64 88
  %346 = load i64, ptr %345, align 1, !alias.scope !45, !noalias !48
  %347 = load i64, ptr %343, align 1, !alias.scope !48, !noalias !45
  %348 = getelementptr i8, ptr %3, i64 88
  %349 = load i64, ptr %348, align 1, !alias.scope !48, !noalias !45
  %350 = add i64 %347, %2
  %351 = xor i64 %350, %344
  %352 = sub i64 %349, %2
  %353 = xor i64 %352, %346
  %354 = zext i64 %351 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %341, %359
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %362 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %363 = load i64, ptr %361, align 1, !alias.scope !45, !noalias !48
  %364 = getelementptr i8, ptr %0, i64 104
  %365 = load i64, ptr %364, align 1, !alias.scope !45, !noalias !48
  %366 = load i64, ptr %362, align 1, !alias.scope !48, !noalias !45
  %367 = getelementptr i8, ptr %3, i64 104
  %368 = load i64, ptr %367, align 1, !alias.scope !48, !noalias !45
  %369 = add i64 %366, %2
  %370 = xor i64 %369, %363
  %371 = sub i64 %368, %2
  %372 = xor i64 %371, %365
  %373 = zext i64 %370 to i128
  %374 = zext i64 %372 to i128
  %375 = mul nuw i128 %374, %373
  %376 = lshr i128 %375, 64
  %377 = xor i128 %376, %375
  %378 = trunc i128 %377 to i64
  %379 = add i64 %360, %378
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %381 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %382 = load i64, ptr %380, align 1, !alias.scope !45, !noalias !48
  %383 = getelementptr i8, ptr %0, i64 120
  %384 = load i64, ptr %383, align 1, !alias.scope !45, !noalias !48
  %385 = load i64, ptr %381, align 1, !alias.scope !48, !noalias !45
  %386 = getelementptr i8, ptr %3, i64 120
  %387 = load i64, ptr %386, align 1, !alias.scope !48, !noalias !45
  %388 = add i64 %385, %2
  %389 = xor i64 %388, %382
  %390 = sub i64 %387, %2
  %391 = xor i64 %390, %384
  %392 = zext i64 %389 to i128
  %393 = zext i64 %391 to i128
  %394 = mul nuw i128 %393, %392
  %395 = lshr i128 %394, 64
  %396 = xor i128 %395, %394
  %397 = trunc i128 %396 to i64
  %398 = add i64 %379, %397
  %399 = lshr i32 %248, 4
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %401 = getelementptr inbounds i8, ptr %400, i64 -16
  %402 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %403 = load i64, ptr %401, align 1, !alias.scope !45, !noalias !48
  %404 = getelementptr i8, ptr %400, i64 -8
  %405 = load i64, ptr %404, align 1, !alias.scope !45, !noalias !48
  %406 = load i64, ptr %402, align 1, !alias.scope !48, !noalias !45
  %407 = getelementptr i8, ptr %3, i64 127
  %408 = load i64, ptr %407, align 1, !alias.scope !48, !noalias !45
  %409 = add i64 %406, %2
  %410 = xor i64 %409, %403
  %411 = sub i64 %408, %2
  %412 = xor i64 %411, %405
  %413 = zext i64 %410 to i128
  %414 = zext i64 %412 to i128
  %415 = mul nuw i128 %414, %413
  %416 = lshr i128 %415, 64
  %417 = xor i128 %416, %415
  %418 = trunc i128 %417 to i64
  %419 = lshr i64 %398, 37
  %420 = xor i64 %419, %398
  %421 = mul i64 %420, 1609587791953885689
  %422 = lshr i64 %421, 32
  %423 = xor i64 %422, %421
  %424 = icmp eq i32 %399, 8
  br i1 %424, label %455, label %425

425:                                              ; preds = %246
  %426 = zext nneg i32 %399 to i64
  br label %427

427:                                              ; preds = %427, %425
  %428 = phi i64 [ 8, %425 ], [ %453, %427 ]
  %429 = phi i64 [ %423, %425 ], [ %431, %427 ]
  %430 = phi i64 [ %418, %425 ], [ %452, %427 ]
  %431 = tail call i64 asm "", "=r,0"(i64 %429) #14, !srcloc !50
  %432 = shl nuw nsw i64 %428, 4
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 %432
  %434 = getelementptr i8, ptr %3, i64 %432
  %435 = getelementptr i8, ptr %434, i64 -125
  %436 = load i64, ptr %433, align 1, !alias.scope !45, !noalias !48
  %437 = getelementptr i8, ptr %433, i64 8
  %438 = load i64, ptr %437, align 1, !alias.scope !45, !noalias !48
  %439 = load i64, ptr %435, align 1, !alias.scope !48, !noalias !45
  %440 = getelementptr i8, ptr %434, i64 -117
  %441 = load i64, ptr %440, align 1, !alias.scope !48, !noalias !45
  %442 = add i64 %439, %2
  %443 = xor i64 %442, %436
  %444 = sub i64 %441, %2
  %445 = xor i64 %444, %438
  %446 = zext i64 %443 to i128
  %447 = zext i64 %445 to i128
  %448 = mul nuw i128 %447, %446
  %449 = lshr i128 %448, 64
  %450 = xor i128 %449, %448
  %451 = trunc i128 %450 to i64
  %452 = add i64 %430, %451
  %453 = add nuw nsw i64 %428, 1
  %454 = icmp eq i64 %453, %426
  br i1 %454, label %455, label %427, !llvm.loop !51

455:                                              ; preds = %427, %246
  %456 = phi i64 [ %418, %246 ], [ %452, %427 ]
  %457 = phi i64 [ %423, %246 ], [ %431, %427 ]
  %458 = add i64 %457, %456
  %459 = lshr i64 %458, 37
  %460 = xor i64 %459, %458
  %461 = mul i64 %460, 1609587791953885689
  %462 = lshr i64 %461, 32
  %463 = xor i64 %462, %461
  br label %466

464:                                              ; preds = %244
  %465 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #12, !callees !52
  br label %466

466:                                              ; preds = %54, %52, %48, %10, %464, %455, %200
  %467 = phi i64 [ %243, %200 ], [ %463, %455 ], [ %465, %464 ], [ %45, %10 ], [ %49, %48 ], [ %53, %52 ], [ %68, %54 ]
  ret i64 %467
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture readnone %3, i64 %4) #7 {
  %6 = alloca [8 x i64], align 8
  %7 = alloca [8 x i64], align 8
  %8 = alloca [192 x i8], align 8
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12, !noalias !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !53
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  %11 = mul i64 %1, -7046029288634856825
  %12 = load i64, ptr %7, align 8, !alias.scope !57, !noalias !62
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !alias.scope !57, !noalias !62
  %15 = xor i64 %12, 7914194659941938988
  %16 = xor i64 %14, -6611157965513653271
  %17 = zext i64 %15 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %11, %22
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %25 = load i64, ptr %24, align 8, !alias.scope !57, !noalias !62
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %27 = load i64, ptr %26, align 8, !alias.scope !57, !noalias !62
  %28 = xor i64 %25, -1839215637059881052
  %29 = xor i64 %27, -3433288310154277810
  %30 = zext i64 %28 to i128
  %31 = zext i64 %29 to i128
  %32 = mul nuw i128 %31, %30
  %33 = lshr i128 %32, 64
  %34 = xor i128 %33, %32
  %35 = trunc i128 %34 to i64
  %36 = add i64 %23, %35
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %38 = load i64, ptr %37, align 8, !alias.scope !57, !noalias !62
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %40 = load i64, ptr %39, align 8, !alias.scope !57, !noalias !62
  %41 = xor i64 %38, 5046485836271438973
  %42 = xor i64 %40, -8055285457383852172
  %43 = zext i64 %41 to i128
  %44 = zext i64 %42 to i128
  %45 = mul nuw i128 %44, %43
  %46 = lshr i128 %45, 64
  %47 = xor i128 %46, %45
  %48 = trunc i128 %47 to i64
  %49 = add i64 %36, %48
  %50 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %51 = load i64, ptr %50, align 8, !alias.scope !57, !noalias !62
  %52 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %53 = load i64, ptr %52, align 8, !alias.scope !57, !noalias !62
  %54 = xor i64 %51, 5920048007935066598
  %55 = xor i64 %53, 7336514198459093435
  %56 = zext i64 %54 to i128
  %57 = zext i64 %55 to i128
  %58 = mul nuw i128 %57, %56
  %59 = lshr i128 %58, 64
  %60 = xor i128 %59, %58
  %61 = trunc i128 %60 to i64
  %62 = add i64 %49, %61
  %63 = lshr i64 %62, 37
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587791953885689
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12, !noalias !53
  br label %189

68:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #12
  %69 = add i64 %2, -4734510112055689544
  %70 = sub i64 2066345149520216444, %2
  store i64 %69, ptr %8, align 8, !alias.scope !65
  %71 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %70, ptr %71, align 8, !alias.scope !65
  %72 = add i64 %2, -2623469361688619810
  %73 = sub i64 2262974939099578482, %2
  %74 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %72, ptr %74, align 8, !alias.scope !65
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %73, ptr %75, align 8, !alias.scope !65
  %76 = add i64 %2, 8711581037947681227
  %77 = sub i64 2410270004345854594, %2
  %78 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %76, ptr %78, align 8, !alias.scope !65
  %79 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %77, ptr %79, align 8, !alias.scope !65
  %80 = add i64 %2, -8204357891075471176
  %81 = sub i64 5487137525590930912, %2
  %82 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %80, ptr %82, align 8, !alias.scope !65
  %83 = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %81, ptr %83, align 8, !alias.scope !65
  %84 = add i64 %2, -3818837453329782724
  %85 = sub i64 -6688317018830679928, %2
  %86 = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %84, ptr %86, align 8, !alias.scope !65
  %87 = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 %85, ptr %87, align 8, !alias.scope !65
  %88 = add i64 %2, 5690594596133299313
  %89 = sub i64 -2833645246901970632, %2
  %90 = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 %88, ptr %90, align 8, !alias.scope !65
  %91 = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 %89, ptr %91, align 8, !alias.scope !65
  %92 = add i64 %2, 4554437623014685352
  %93 = sub i64 2111919702937427193, %2
  %94 = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 %92, ptr %94, align 8, !alias.scope !65
  %95 = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i64 %93, ptr %95, align 8, !alias.scope !65
  %96 = add i64 %2, 3556072174620004746
  %97 = sub i64 7238261902898274248, %2
  %98 = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i64 %96, ptr %98, align 8, !alias.scope !65
  %99 = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 %97, ptr %99, align 8, !alias.scope !65
  %100 = add i64 %2, -4329134394285701654
  %101 = sub i64 -1485321483350670907, %2
  %102 = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %100, ptr %102, align 8, !alias.scope !65
  %103 = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i64 %101, ptr %103, align 8, !alias.scope !65
  %104 = add i64 %2, 5321830579834785047
  %105 = sub i64 -7032137544937171245, %2
  %106 = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i64 %104, ptr %106, align 8, !alias.scope !65
  %107 = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i64 %105, ptr %107, align 8, !alias.scope !65
  %108 = add i64 %2, -242834301215959509
  %109 = sub i64 -3588858202114426737, %2
  %110 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i64 %108, ptr %110, align 8, !alias.scope !65
  %111 = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i64 %109, ptr %111, align 8, !alias.scope !65
  %112 = add i64 %2, 2883454493032893253
  %113 = sub i64 9097354517224871855, %2
  %114 = getelementptr inbounds nuw i8, ptr %8, i64 176
  store i64 %112, ptr %114, align 8, !alias.scope !65
  %115 = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i64 %113, ptr %115, align 8, !alias.scope !65
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !71
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull readonly %8, i64 noundef 192)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %116 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %117 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %118 = load i64, ptr %6, align 8, !alias.scope !83, !noalias !84
  %119 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %120 = load i64, ptr %119, align 8, !alias.scope !83, !noalias !84
  %121 = load i64, ptr %116, align 1, !alias.scope !85, !noalias !86
  %122 = getelementptr inbounds nuw i8, ptr %8, i64 19
  %123 = load i64, ptr %122, align 1, !alias.scope !85, !noalias !86
  %124 = xor i64 %121, %118
  %125 = xor i64 %123, %120
  %126 = zext i64 %124 to i128
  %127 = zext i64 %125 to i128
  %128 = mul nuw i128 %127, %126
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %117, %131
  %133 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %134 = getelementptr inbounds nuw i8, ptr %8, i64 27
  %135 = load i64, ptr %133, align 8, !alias.scope !83, !noalias !84
  %136 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %137 = load i64, ptr %136, align 8, !alias.scope !83, !noalias !84
  %138 = load i64, ptr %134, align 1, !alias.scope !85, !noalias !86
  %139 = getelementptr inbounds nuw i8, ptr %8, i64 35
  %140 = load i64, ptr %139, align 1, !alias.scope !85, !noalias !86
  %141 = xor i64 %138, %135
  %142 = xor i64 %140, %137
  %143 = zext i64 %141 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %132, %148
  %150 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %151 = getelementptr inbounds nuw i8, ptr %8, i64 43
  %152 = load i64, ptr %150, align 8, !alias.scope !83, !noalias !84
  %153 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %154 = load i64, ptr %153, align 8, !alias.scope !83, !noalias !84
  %155 = load i64, ptr %151, align 1, !alias.scope !85, !noalias !86
  %156 = getelementptr inbounds nuw i8, ptr %8, i64 51
  %157 = load i64, ptr %156, align 1, !alias.scope !85, !noalias !86
  %158 = xor i64 %155, %152
  %159 = xor i64 %157, %154
  %160 = zext i64 %158 to i128
  %161 = zext i64 %159 to i128
  %162 = mul nuw i128 %161, %160
  %163 = lshr i128 %162, 64
  %164 = xor i128 %163, %162
  %165 = trunc i128 %164 to i64
  %166 = add i64 %149, %165
  %167 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %168 = getelementptr inbounds nuw i8, ptr %8, i64 59
  %169 = load i64, ptr %167, align 8, !alias.scope !83, !noalias !84
  %170 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %171 = load i64, ptr %170, align 8, !alias.scope !83, !noalias !84
  %172 = load i64, ptr %168, align 1, !alias.scope !85, !noalias !86
  %173 = getelementptr inbounds nuw i8, ptr %8, i64 67
  %174 = load i64, ptr %173, align 1, !alias.scope !85, !noalias !86
  %175 = xor i64 %172, %169
  %176 = xor i64 %174, %171
  %177 = zext i64 %175 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %166, %182
  %184 = lshr i64 %183, 37
  %185 = xor i64 %184, %183
  %186 = mul i64 %185, 1609587791953885689
  %187 = lshr i64 %186, 32
  %188 = xor i64 %187, %186
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !71
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #12
  br label %189

189:                                              ; preds = %10, %68
  %190 = phi i64 [ %67, %10 ], [ %188, %68 ]
  ret i64 %190
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 4, 9) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #8 {
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
define internal fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 1, 4) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #8 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_accumulate_scalar(ptr noalias noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #2 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %121, label %6

6:                                                ; preds = %4
  %7 = ptrtoint ptr %0 to i64
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %17 = load i64, ptr %10, align 8, !alias.scope !87, !noalias !93
  %18 = load i64, ptr %0, align 8, !alias.scope !87, !noalias !93
  %19 = load i64, ptr %11, align 8, !alias.scope !96, !noalias !93
  %20 = load i64, ptr %12, align 8, !alias.scope !96, !noalias !93
  %21 = load i64, ptr %13, align 8, !alias.scope !99, !noalias !93
  %22 = load i64, ptr %14, align 8, !alias.scope !99, !noalias !93
  %23 = load i64, ptr %15, align 8, !alias.scope !102, !noalias !93
  %24 = load i64, ptr %16, align 8, !alias.scope !102, !noalias !93
  br label %25

25:                                               ; preds = %6, %25
  %26 = phi i64 [ %24, %6 ], [ %113, %25 ]
  %27 = phi i64 [ %23, %6 ], [ %117, %25 ]
  %28 = phi i64 [ %22, %6 ], [ %93, %25 ]
  %29 = phi i64 [ %21, %6 ], [ %97, %25 ]
  %30 = phi i64 [ %20, %6 ], [ %73, %25 ]
  %31 = phi i64 [ %19, %6 ], [ %77, %25 ]
  %32 = phi i64 [ %18, %6 ], [ %53, %25 ]
  %33 = phi i64 [ %17, %6 ], [ %57, %25 ]
  %34 = phi i64 [ 0, %6 ], [ %118, %25 ]
  %35 = shl i64 %34, 6
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %37, i32 0, i32 3, i32 1)
  %38 = shl i64 %34, 3
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %40 = load i64, ptr %36, align 1, !alias.scope !113, !noalias !114
  %41 = load i64, ptr %39, align 1, !alias.scope !115, !noalias !116
  %42 = xor i64 %41, %40
  %43 = add i64 %33, %40
  %44 = lshr i64 %42, 32
  %45 = and i64 %42, 4294967295
  %46 = mul nuw i64 %45, %44
  %47 = add i64 %46, %32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %48 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %49 = load i64, ptr %48, align 1, !alias.scope !122, !noalias !123
  %50 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %51 = load i64, ptr %50, align 1, !alias.scope !124, !noalias !125
  %52 = xor i64 %51, %49
  %53 = add i64 %47, %49
  %54 = lshr i64 %52, 32
  %55 = and i64 %52, 4294967295
  %56 = mul nuw i64 %55, %54
  %57 = add i64 %43, %56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %58 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %59 = load i64, ptr %58, align 1, !alias.scope !131, !noalias !132
  %60 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %61 = load i64, ptr %60, align 1, !alias.scope !133, !noalias !134
  %62 = xor i64 %61, %59
  %63 = add i64 %31, %59
  %64 = lshr i64 %62, 32
  %65 = and i64 %62, 4294967295
  %66 = mul nuw i64 %65, %64
  %67 = add i64 %66, %30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %68 = getelementptr inbounds nuw i8, ptr %36, i64 24
  %69 = load i64, ptr %68, align 1, !alias.scope !140, !noalias !141
  %70 = getelementptr inbounds nuw i8, ptr %39, i64 24
  %71 = load i64, ptr %70, align 1, !alias.scope !142, !noalias !143
  %72 = xor i64 %71, %69
  %73 = add i64 %67, %69
  %74 = lshr i64 %72, 32
  %75 = and i64 %72, 4294967295
  %76 = mul nuw i64 %75, %74
  %77 = add i64 %63, %76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %78 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %79 = load i64, ptr %78, align 1, !alias.scope !149, !noalias !150
  %80 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %81 = load i64, ptr %80, align 1, !alias.scope !151, !noalias !152
  %82 = xor i64 %81, %79
  %83 = add i64 %29, %79
  %84 = lshr i64 %82, 32
  %85 = and i64 %82, 4294967295
  %86 = mul nuw i64 %85, %84
  %87 = add i64 %86, %28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %88 = getelementptr inbounds nuw i8, ptr %36, i64 40
  %89 = load i64, ptr %88, align 1, !alias.scope !158, !noalias !159
  %90 = getelementptr inbounds nuw i8, ptr %39, i64 40
  %91 = load i64, ptr %90, align 1, !alias.scope !160, !noalias !161
  %92 = xor i64 %91, %89
  %93 = add i64 %87, %89
  %94 = lshr i64 %92, 32
  %95 = and i64 %92, 4294967295
  %96 = mul nuw i64 %95, %94
  %97 = add i64 %83, %96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %98 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %99 = load i64, ptr %98, align 1, !alias.scope !167, !noalias !168
  %100 = getelementptr inbounds nuw i8, ptr %39, i64 48
  %101 = load i64, ptr %100, align 1, !alias.scope !169, !noalias !170
  %102 = xor i64 %101, %99
  %103 = add i64 %27, %99
  %104 = lshr i64 %102, 32
  %105 = and i64 %102, 4294967295
  %106 = mul nuw i64 %105, %104
  %107 = add i64 %106, %26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %108 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %109 = load i64, ptr %108, align 1, !alias.scope !176, !noalias !177
  %110 = getelementptr inbounds nuw i8, ptr %39, i64 56
  %111 = load i64, ptr %110, align 1, !alias.scope !178, !noalias !179
  %112 = xor i64 %111, %109
  %113 = add i64 %107, %109
  %114 = lshr i64 %112, 32
  %115 = and i64 %112, 4294967295
  %116 = mul nuw i64 %115, %114
  %117 = add i64 %103, %116
  %118 = add nuw i64 %34, 1
  %119 = icmp eq i64 %118, %3
  br i1 %119, label %120, label %25, !llvm.loop !180

120:                                              ; preds = %25
  store i64 %57, ptr %10, align 8, !alias.scope !87, !noalias !93
  store i64 %53, ptr %0, align 8, !alias.scope !87, !noalias !93
  store i64 %77, ptr %11, align 8, !alias.scope !96, !noalias !93
  store i64 %73, ptr %12, align 8, !alias.scope !96, !noalias !93
  store i64 %97, ptr %13, align 8, !alias.scope !99, !noalias !93
  store i64 %93, ptr %14, align 8, !alias.scope !99, !noalias !93
  store i64 %117, ptr %15, align 8, !alias.scope !102, !noalias !93
  store i64 %113, ptr %16, align 8, !alias.scope !102, !noalias !93
  br label %121

121:                                              ; preds = %120, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #2 {
  %6 = add i64 %4, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %2, -1
  %10 = udiv i64 %9, %8
  %11 = icmp ugt i64 %4, 135
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ugt i64 %8, %9
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = ptrtoint ptr %0 to i64
  %15 = and i64 %14, 7
  %16 = icmp eq i64 %15, 0
  br label %91

17:                                               ; preds = %5
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %19 = getelementptr inbounds i8, ptr %18, i64 -64
  %20 = ptrtoint ptr %0 to i64
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds i8, ptr %18, i64 -56
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %25 = getelementptr inbounds i8, ptr %18, i64 -48
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = getelementptr inbounds i8, ptr %18, i64 -40
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %29 = getelementptr inbounds i8, ptr %18, i64 -32
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %31 = getelementptr inbounds i8, ptr %18, i64 -24
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %33 = getelementptr inbounds i8, ptr %18, i64 -16
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %35 = getelementptr inbounds i8, ptr %18, i64 -8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %37

37:                                               ; preds = %17, %37
  %38 = phi i64 [ 0, %17 ], [ %89, %37 ]
  %39 = mul i64 %38, %8
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 %39
  tail call fastcc void @XXH3_accumulate_scalar(ptr noundef nonnull %0, ptr noundef %40, ptr noundef %3, i64 noundef %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.assume(i1 %22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %41 = load i64, ptr %19, align 1, !alias.scope !191, !noalias !192
  %42 = load i64, ptr %0, align 8, !alias.scope !192, !noalias !191
  %43 = lshr i64 %42, 47
  %44 = xor i64 %41, %43
  %45 = xor i64 %44, %42
  %46 = mul i64 %45, 2654435761
  store i64 %46, ptr %0, align 8, !alias.scope !192, !noalias !191
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %47 = load i64, ptr %23, align 1, !alias.scope !197, !noalias !198
  %48 = load i64, ptr %24, align 8, !alias.scope !198, !noalias !197
  %49 = lshr i64 %48, 47
  %50 = xor i64 %47, %49
  %51 = xor i64 %50, %48
  %52 = mul i64 %51, 2654435761
  store i64 %52, ptr %24, align 8, !alias.scope !198, !noalias !197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %53 = load i64, ptr %25, align 1, !alias.scope !203, !noalias !204
  %54 = load i64, ptr %26, align 8, !alias.scope !204, !noalias !203
  %55 = lshr i64 %54, 47
  %56 = xor i64 %53, %55
  %57 = xor i64 %56, %54
  %58 = mul i64 %57, 2654435761
  store i64 %58, ptr %26, align 8, !alias.scope !204, !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %59 = load i64, ptr %27, align 1, !alias.scope !209, !noalias !210
  %60 = load i64, ptr %28, align 8, !alias.scope !210, !noalias !209
  %61 = lshr i64 %60, 47
  %62 = xor i64 %59, %61
  %63 = xor i64 %62, %60
  %64 = mul i64 %63, 2654435761
  store i64 %64, ptr %28, align 8, !alias.scope !210, !noalias !209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %65 = load i64, ptr %29, align 1, !alias.scope !215, !noalias !216
  %66 = load i64, ptr %30, align 8, !alias.scope !216, !noalias !215
  %67 = lshr i64 %66, 47
  %68 = xor i64 %65, %67
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, 2654435761
  store i64 %70, ptr %30, align 8, !alias.scope !216, !noalias !215
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %71 = load i64, ptr %31, align 1, !alias.scope !221, !noalias !222
  %72 = load i64, ptr %32, align 8, !alias.scope !222, !noalias !221
  %73 = lshr i64 %72, 47
  %74 = xor i64 %71, %73
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, 2654435761
  store i64 %76, ptr %32, align 8, !alias.scope !222, !noalias !221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %77 = load i64, ptr %33, align 1, !alias.scope !227, !noalias !228
  %78 = load i64, ptr %34, align 8, !alias.scope !228, !noalias !227
  %79 = lshr i64 %78, 47
  %80 = xor i64 %77, %79
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, 2654435761
  store i64 %82, ptr %34, align 8, !alias.scope !228, !noalias !227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %83 = load i64, ptr %35, align 1, !alias.scope !233, !noalias !234
  %84 = load i64, ptr %36, align 8, !alias.scope !234, !noalias !233
  %85 = lshr i64 %84, 47
  %86 = xor i64 %83, %85
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, 2654435761
  store i64 %88, ptr %36, align 8, !alias.scope !234, !noalias !233
  %89 = add nuw i64 %38, 1
  %90 = icmp ult i64 %89, %10
  br i1 %90, label %37, label %91, !llvm.loop !235

91:                                               ; preds = %37, %13
  %92 = phi i1 [ %16, %13 ], [ true, %37 ]
  %93 = icmp ugt i64 %2, 64
  tail call void @llvm.assume(i1 %93)
  %94 = mul i64 %10, %8
  %95 = sub i64 %9, %94
  %96 = lshr i64 %95, 6
  %97 = lshr i64 %4, 3
  %98 = icmp samesign ule i64 %96, %97
  tail call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 %94
  tail call fastcc void @XXH3_accumulate_scalar(ptr noundef nonnull %0, ptr noundef %99, ptr noundef %3, i64 noundef %96)
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %101 = getelementptr inbounds i8, ptr %100, i64 -64
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %103 = getelementptr inbounds i8, ptr %102, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.assume(i1 %92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %104 = load i64, ptr %101, align 1, !alias.scope !250, !noalias !251
  %105 = load i64, ptr %103, align 1, !alias.scope !252, !noalias !253
  %106 = xor i64 %105, %104
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %108 = load i64, ptr %107, align 8, !alias.scope !254, !noalias !255
  %109 = add i64 %108, %104
  %110 = lshr i64 %106, 32
  %111 = load i64, ptr %0, align 8, !alias.scope !254, !noalias !255
  %112 = and i64 %106, 4294967295
  %113 = mul nuw i64 %112, %110
  %114 = add i64 %113, %111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %115 = getelementptr inbounds i8, ptr %100, i64 -56
  %116 = load i64, ptr %115, align 1, !alias.scope !262, !noalias !263
  %117 = getelementptr inbounds i8, ptr %102, i64 -63
  %118 = load i64, ptr %117, align 1, !alias.scope !264, !noalias !265
  %119 = xor i64 %118, %116
  %120 = add i64 %114, %116
  store i64 %120, ptr %0, align 8, !alias.scope !266, !noalias !267
  %121 = lshr i64 %119, 32
  %122 = and i64 %119, 4294967295
  %123 = mul nuw i64 %122, %121
  %124 = add i64 %109, %123
  store i64 %124, ptr %107, align 8, !alias.scope !266, !noalias !267
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %125 = getelementptr inbounds i8, ptr %100, i64 -48
  %126 = load i64, ptr %125, align 1, !alias.scope !274, !noalias !275
  %127 = getelementptr inbounds i8, ptr %102, i64 -55
  %128 = load i64, ptr %127, align 1, !alias.scope !276, !noalias !277
  %129 = xor i64 %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %131 = load i64, ptr %130, align 8, !alias.scope !278, !noalias !279
  %132 = add i64 %131, %126
  %133 = lshr i64 %129, 32
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %135 = load i64, ptr %134, align 8, !alias.scope !278, !noalias !279
  %136 = and i64 %129, 4294967295
  %137 = mul nuw i64 %136, %133
  %138 = add i64 %137, %135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %139 = getelementptr inbounds i8, ptr %100, i64 -40
  %140 = load i64, ptr %139, align 1, !alias.scope !286, !noalias !287
  %141 = getelementptr inbounds i8, ptr %102, i64 -47
  %142 = load i64, ptr %141, align 1, !alias.scope !288, !noalias !289
  %143 = xor i64 %142, %140
  %144 = add i64 %138, %140
  store i64 %144, ptr %134, align 8, !alias.scope !290, !noalias !291
  %145 = lshr i64 %143, 32
  %146 = and i64 %143, 4294967295
  %147 = mul nuw i64 %146, %145
  %148 = add i64 %132, %147
  store i64 %148, ptr %130, align 8, !alias.scope !290, !noalias !291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %149 = getelementptr inbounds i8, ptr %100, i64 -32
  %150 = load i64, ptr %149, align 1, !alias.scope !298, !noalias !299
  %151 = getelementptr inbounds i8, ptr %102, i64 -39
  %152 = load i64, ptr %151, align 1, !alias.scope !300, !noalias !301
  %153 = xor i64 %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %155 = load i64, ptr %154, align 8, !alias.scope !302, !noalias !303
  %156 = add i64 %155, %150
  %157 = lshr i64 %153, 32
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %159 = load i64, ptr %158, align 8, !alias.scope !302, !noalias !303
  %160 = and i64 %153, 4294967295
  %161 = mul nuw i64 %160, %157
  %162 = add i64 %161, %159
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %163 = getelementptr inbounds i8, ptr %100, i64 -24
  %164 = load i64, ptr %163, align 1, !alias.scope !310, !noalias !311
  %165 = getelementptr inbounds i8, ptr %102, i64 -31
  %166 = load i64, ptr %165, align 1, !alias.scope !312, !noalias !313
  %167 = xor i64 %166, %164
  %168 = add i64 %162, %164
  store i64 %168, ptr %158, align 8, !alias.scope !314, !noalias !315
  %169 = lshr i64 %167, 32
  %170 = and i64 %167, 4294967295
  %171 = mul nuw i64 %170, %169
  %172 = add i64 %156, %171
  store i64 %172, ptr %154, align 8, !alias.scope !314, !noalias !315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %173 = getelementptr inbounds i8, ptr %100, i64 -16
  %174 = load i64, ptr %173, align 1, !alias.scope !322, !noalias !323
  %175 = getelementptr inbounds i8, ptr %102, i64 -23
  %176 = load i64, ptr %175, align 1, !alias.scope !324, !noalias !325
  %177 = xor i64 %176, %174
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %179 = load i64, ptr %178, align 8, !alias.scope !326, !noalias !327
  %180 = add i64 %179, %174
  %181 = lshr i64 %177, 32
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %183 = load i64, ptr %182, align 8, !alias.scope !326, !noalias !327
  %184 = and i64 %177, 4294967295
  %185 = mul nuw i64 %184, %181
  %186 = add i64 %185, %183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %187 = getelementptr inbounds i8, ptr %100, i64 -8
  %188 = load i64, ptr %187, align 1, !alias.scope !334, !noalias !335
  %189 = getelementptr inbounds i8, ptr %102, i64 -15
  %190 = load i64, ptr %189, align 1, !alias.scope !336, !noalias !337
  %191 = xor i64 %190, %188
  %192 = add i64 %186, %188
  store i64 %192, ptr %182, align 8, !alias.scope !338, !noalias !339
  %193 = lshr i64 %191, 32
  %194 = and i64 %191, 4294967295
  %195 = mul nuw i64 %194, %193
  %196 = add i64 %180, %195
  store i64 %196, ptr %178, align 8, !alias.scope !338, !noalias !339
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #7 {
  %6 = alloca [8 x i64], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !343
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %3, i64 noundef %4)
  %7 = icmp ugt i64 %4, 74
  call void @llvm.assume(i1 %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %9 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %10 = load i64, ptr %6, align 8, !alias.scope !355, !noalias !356
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %12 = load i64, ptr %11, align 8, !alias.scope !355, !noalias !356
  %13 = load i64, ptr %8, align 1, !alias.scope !357, !noalias !358
  %14 = getelementptr i8, ptr %3, i64 19
  %15 = load i64, ptr %14, align 1, !alias.scope !357, !noalias !358
  %16 = xor i64 %13, %10
  %17 = xor i64 %15, %12
  %18 = zext i64 %16 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %9, %23
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %27 = load i64, ptr %25, align 8, !alias.scope !355, !noalias !356
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %29 = load i64, ptr %28, align 8, !alias.scope !355, !noalias !356
  %30 = load i64, ptr %26, align 1, !alias.scope !357, !noalias !358
  %31 = getelementptr i8, ptr %3, i64 35
  %32 = load i64, ptr %31, align 1, !alias.scope !357, !noalias !358
  %33 = xor i64 %30, %27
  %34 = xor i64 %32, %29
  %35 = zext i64 %33 to i128
  %36 = zext i64 %34 to i128
  %37 = mul nuw i128 %36, %35
  %38 = lshr i128 %37, 64
  %39 = xor i128 %38, %37
  %40 = trunc i128 %39 to i64
  %41 = add i64 %24, %40
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %44 = load i64, ptr %42, align 8, !alias.scope !355, !noalias !356
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %46 = load i64, ptr %45, align 8, !alias.scope !355, !noalias !356
  %47 = load i64, ptr %43, align 1, !alias.scope !357, !noalias !358
  %48 = getelementptr i8, ptr %3, i64 51
  %49 = load i64, ptr %48, align 1, !alias.scope !357, !noalias !358
  %50 = xor i64 %47, %44
  %51 = xor i64 %49, %46
  %52 = zext i64 %50 to i128
  %53 = zext i64 %51 to i128
  %54 = mul nuw i128 %53, %52
  %55 = lshr i128 %54, 64
  %56 = xor i128 %55, %54
  %57 = trunc i128 %56 to i64
  %58 = add i64 %41, %57
  %59 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %61 = load i64, ptr %59, align 8, !alias.scope !355, !noalias !356
  %62 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %63 = load i64, ptr %62, align 8, !alias.scope !355, !noalias !356
  %64 = load i64, ptr %60, align 1, !alias.scope !357, !noalias !358
  %65 = getelementptr i8, ptr %3, i64 67
  %66 = load i64, ptr %65, align 1, !alias.scope !357, !noalias !358
  %67 = xor i64 %64, %61
  %68 = xor i64 %66, %63
  %69 = zext i64 %67 to i128
  %70 = zext i64 %68 to i128
  %71 = mul nuw i128 %70, %69
  %72 = lshr i128 %71, 64
  %73 = xor i128 %72, %71
  %74 = trunc i128 %73 to i64
  %75 = add i64 %58, %74
  %76 = lshr i64 %75, 37
  %77 = xor i64 %76, %75
  %78 = mul i64 %77, 1609587791953885689
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !343
  ret i64 %80
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc [2 x i64] @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %4, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 192)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %6 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %7 = load i64, ptr %4, align 8, !alias.scope !374, !noalias !375
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8, !alias.scope !374, !noalias !375
  %10 = load i64, ptr %5, align 1, !alias.scope !375, !noalias !374
  %11 = getelementptr i8, ptr %2, i64 19
  %12 = load i64, ptr %11, align 1, !alias.scope !375, !noalias !374
  %13 = xor i64 %10, %7
  %14 = xor i64 %12, %9
  %15 = zext i64 %13 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %6, %20
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %24 = load i64, ptr %22, align 8, !alias.scope !374, !noalias !375
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %26 = load i64, ptr %25, align 8, !alias.scope !374, !noalias !375
  %27 = load i64, ptr %23, align 1, !alias.scope !375, !noalias !374
  %28 = getelementptr i8, ptr %2, i64 35
  %29 = load i64, ptr %28, align 1, !alias.scope !375, !noalias !374
  %30 = xor i64 %27, %24
  %31 = xor i64 %29, %26
  %32 = zext i64 %30 to i128
  %33 = zext i64 %31 to i128
  %34 = mul nuw i128 %33, %32
  %35 = lshr i128 %34, 64
  %36 = xor i128 %35, %34
  %37 = trunc i128 %36 to i64
  %38 = add i64 %21, %37
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %41 = load i64, ptr %39, align 8, !alias.scope !374, !noalias !375
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %43 = load i64, ptr %42, align 8, !alias.scope !374, !noalias !375
  %44 = load i64, ptr %40, align 1, !alias.scope !375, !noalias !374
  %45 = getelementptr i8, ptr %2, i64 51
  %46 = load i64, ptr %45, align 1, !alias.scope !375, !noalias !374
  %47 = xor i64 %44, %41
  %48 = xor i64 %46, %43
  %49 = zext i64 %47 to i128
  %50 = zext i64 %48 to i128
  %51 = mul nuw i128 %50, %49
  %52 = lshr i128 %51, 64
  %53 = xor i128 %52, %51
  %54 = trunc i128 %53 to i64
  %55 = add i64 %38, %54
  %56 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %58 = load i64, ptr %56, align 8, !alias.scope !374, !noalias !375
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %60 = load i64, ptr %59, align 8, !alias.scope !374, !noalias !375
  %61 = load i64, ptr %57, align 1, !alias.scope !375, !noalias !374
  %62 = getelementptr i8, ptr %2, i64 67
  %63 = load i64, ptr %62, align 1, !alias.scope !375, !noalias !374
  %64 = xor i64 %61, %58
  %65 = xor i64 %63, %60
  %66 = zext i64 %64 to i128
  %67 = zext i64 %65 to i128
  %68 = mul nuw i128 %67, %66
  %69 = lshr i128 %68, 64
  %70 = xor i128 %69, %68
  %71 = trunc i128 %70 to i64
  %72 = add i64 %55, %71
  %73 = lshr i64 %72, 37
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, 1609587791953885689
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 117
  %79 = mul i64 %1, -4417276706812531889
  %80 = xor i64 %79, -1
  %81 = load i64, ptr %78, align 1, !alias.scope !376, !noalias !379
  %82 = getelementptr i8, ptr %2, i64 125
  %83 = load i64, ptr %82, align 1, !alias.scope !376, !noalias !379
  %84 = xor i64 %81, %7
  %85 = xor i64 %83, %9
  %86 = zext i64 %84 to i128
  %87 = zext i64 %85 to i128
  %88 = mul nuw i128 %87, %86
  %89 = lshr i128 %88, 64
  %90 = xor i128 %89, %88
  %91 = trunc i128 %90 to i64
  %92 = add i64 %91, %80
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 133
  %94 = load i64, ptr %93, align 1, !alias.scope !376, !noalias !379
  %95 = getelementptr i8, ptr %2, i64 141
  %96 = load i64, ptr %95, align 1, !alias.scope !376, !noalias !379
  %97 = xor i64 %94, %24
  %98 = xor i64 %96, %26
  %99 = zext i64 %97 to i128
  %100 = zext i64 %98 to i128
  %101 = mul nuw i128 %100, %99
  %102 = lshr i128 %101, 64
  %103 = xor i128 %102, %101
  %104 = trunc i128 %103 to i64
  %105 = add i64 %92, %104
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 149
  %107 = load i64, ptr %106, align 1, !alias.scope !376, !noalias !379
  %108 = getelementptr i8, ptr %2, i64 157
  %109 = load i64, ptr %108, align 1, !alias.scope !376, !noalias !379
  %110 = xor i64 %107, %41
  %111 = xor i64 %109, %43
  %112 = zext i64 %110 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %105, %117
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 165
  %120 = load i64, ptr %119, align 1, !alias.scope !376, !noalias !379
  %121 = getelementptr i8, ptr %2, i64 173
  %122 = load i64, ptr %121, align 1, !alias.scope !376, !noalias !379
  %123 = xor i64 %120, %58
  %124 = xor i64 %122, %60
  %125 = zext i64 %123 to i128
  %126 = zext i64 %124 to i128
  %127 = mul nuw i128 %126, %125
  %128 = lshr i128 %127, 64
  %129 = xor i128 %128, %127
  %130 = trunc i128 %129 to i64
  %131 = add i64 %118, %130
  %132 = lshr i64 %131, 37
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587791953885689
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  %137 = insertvalue [2 x i64] poison, i64 %77, 0
  %138 = insertvalue [2 x i64] %137, i64 %136, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret [2 x i64] %138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 8, !"SmallDataLimit", i32 0}
!8 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH32_consumeLong: argument 1"}
!11 = distinct !{!11, !"XXH32_consumeLong"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"XXH32_consumeLong: argument 0"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH64_consumeLong: argument 1"}
!20 = distinct !{!20, !"XXH64_consumeLong"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"XXH64_consumeLong: argument 0"}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_len_17to128_128b: argument 0"}
!28 = distinct !{!28, !"XXH3_len_17to128_128b"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_len_129to240_128b: argument 0"}
!31 = distinct !{!31, !"XXH3_len_129to240_128b"}
!32 = distinct !{!32, !15}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!35 = distinct !{!35, !"XXH3_hashLong_128b_withSeed_internal"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_initCustomSecret_scalar: argument 0"}
!38 = distinct !{!38, !"XXH3_initCustomSecret_scalar"}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_len_17to128_64b: argument 0"}
!42 = distinct !{!42, !"XXH3_len_17to128_64b"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"XXH3_len_17to128_64b: argument 1"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_len_129to240_64b: argument 0"}
!47 = distinct !{!47, !"XXH3_len_129to240_64b"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"XXH3_len_129to240_64b: argument 1"}
!50 = !{i64 2147897019}
!51 = distinct !{!51, !15}
!52 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!53 = !{!54, !56}
!54 = distinct !{!54, !55, !"XXH3_hashLong_64b_internal: argument 0"}
!55 = distinct !{!55, !"XXH3_hashLong_64b_internal"}
!56 = distinct !{!56, !55, !"XXH3_hashLong_64b_internal: argument 1"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"XXH3_mergeAccs: argument 0"}
!59 = distinct !{!59, !"XXH3_mergeAccs"}
!60 = distinct !{!60, !61, !"XXH3_finalizeLong_64b: argument 0"}
!61 = distinct !{!61, !"XXH3_finalizeLong_64b"}
!62 = !{!63, !64, !54, !56}
!63 = distinct !{!63, !59, !"XXH3_mergeAccs: argument 1"}
!64 = distinct !{!64, !61, !"XXH3_finalizeLong_64b: argument 1"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"XXH3_initCustomSecret_scalar: argument 0"}
!67 = distinct !{!67, !"XXH3_initCustomSecret_scalar"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"XXH3_hashLong_64b_internal: argument 1"}
!70 = distinct !{!70, !"XXH3_hashLong_64b_internal"}
!71 = !{!72, !69}
!72 = distinct !{!72, !70, !"XXH3_hashLong_64b_internal: argument 0"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_finalizeLong_64b: argument 0"}
!75 = distinct !{!75, !"XXH3_finalizeLong_64b"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_finalizeLong_64b: argument 1"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_mergeAccs: argument 0"}
!80 = distinct !{!80, !"XXH3_mergeAccs"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"XXH3_mergeAccs: argument 1"}
!83 = !{!79, !74}
!84 = !{!82, !77, !72, !69}
!85 = !{!82, !77, !69}
!86 = !{!79, !74, !72}
!87 = !{!88, !90, !92}
!88 = distinct !{!88, !89, !"XXH3_scalarRound: argument 0"}
!89 = distinct !{!89, !"XXH3_scalarRound"}
!90 = distinct !{!90, !91, !"XXH3_accumulate_512_scalar: argument 0"}
!91 = distinct !{!91, !"XXH3_accumulate_512_scalar"}
!92 = distinct !{!92, !89, !"XXH3_scalarRound: argument 0:It1"}
!93 = !{!94, !95}
!94 = distinct !{!94, !91, !"XXH3_accumulate_512_scalar: argument 1"}
!95 = distinct !{!95, !91, !"XXH3_accumulate_512_scalar: argument 2"}
!96 = !{!97, !90, !98}
!97 = distinct !{!97, !89, !"XXH3_scalarRound: argument 0:It2"}
!98 = distinct !{!98, !89, !"XXH3_scalarRound: argument 0:It3"}
!99 = !{!100, !90, !101}
!100 = distinct !{!100, !89, !"XXH3_scalarRound: argument 0:It4"}
!101 = distinct !{!101, !89, !"XXH3_scalarRound: argument 0:It5"}
!102 = !{!103, !90, !104}
!103 = distinct !{!103, !89, !"XXH3_scalarRound: argument 0:It6"}
!104 = distinct !{!104, !89, !"XXH3_scalarRound: argument 0:It7"}
!105 = !{!90}
!106 = !{!94}
!107 = !{!95}
!108 = !{!88}
!109 = !{!110}
!110 = distinct !{!110, !89, !"XXH3_scalarRound: argument 1"}
!111 = !{!112}
!112 = distinct !{!112, !89, !"XXH3_scalarRound: argument 2"}
!113 = !{!110, !94}
!114 = !{!88, !112, !90, !95}
!115 = !{!112, !95}
!116 = !{!88, !110, !90, !94}
!117 = !{!92}
!118 = !{!119}
!119 = distinct !{!119, !89, !"XXH3_scalarRound: argument 1:It1"}
!120 = !{!121}
!121 = distinct !{!121, !89, !"XXH3_scalarRound: argument 2:It1"}
!122 = !{!119, !94}
!123 = !{!92, !121, !90, !95}
!124 = !{!121, !95}
!125 = !{!92, !119, !90, !94}
!126 = !{!97}
!127 = !{!128}
!128 = distinct !{!128, !89, !"XXH3_scalarRound: argument 1:It2"}
!129 = !{!130}
!130 = distinct !{!130, !89, !"XXH3_scalarRound: argument 2:It2"}
!131 = !{!128, !94}
!132 = !{!97, !130, !90, !95}
!133 = !{!130, !95}
!134 = !{!97, !128, !90, !94}
!135 = !{!98}
!136 = !{!137}
!137 = distinct !{!137, !89, !"XXH3_scalarRound: argument 1:It3"}
!138 = !{!139}
!139 = distinct !{!139, !89, !"XXH3_scalarRound: argument 2:It3"}
!140 = !{!137, !94}
!141 = !{!98, !139, !90, !95}
!142 = !{!139, !95}
!143 = !{!98, !137, !90, !94}
!144 = !{!100}
!145 = !{!146}
!146 = distinct !{!146, !89, !"XXH3_scalarRound: argument 1:It4"}
!147 = !{!148}
!148 = distinct !{!148, !89, !"XXH3_scalarRound: argument 2:It4"}
!149 = !{!146, !94}
!150 = !{!100, !148, !90, !95}
!151 = !{!148, !95}
!152 = !{!100, !146, !90, !94}
!153 = !{!101}
!154 = !{!155}
!155 = distinct !{!155, !89, !"XXH3_scalarRound: argument 1:It5"}
!156 = !{!157}
!157 = distinct !{!157, !89, !"XXH3_scalarRound: argument 2:It5"}
!158 = !{!155, !94}
!159 = !{!101, !157, !90, !95}
!160 = !{!157, !95}
!161 = !{!101, !155, !90, !94}
!162 = !{!103}
!163 = !{!164}
!164 = distinct !{!164, !89, !"XXH3_scalarRound: argument 1:It6"}
!165 = !{!166}
!166 = distinct !{!166, !89, !"XXH3_scalarRound: argument 2:It6"}
!167 = !{!164, !94}
!168 = !{!103, !166, !90, !95}
!169 = !{!166, !95}
!170 = !{!103, !164, !90, !94}
!171 = !{!104}
!172 = !{!173}
!173 = distinct !{!173, !89, !"XXH3_scalarRound: argument 1:It7"}
!174 = !{!175}
!175 = distinct !{!175, !89, !"XXH3_scalarRound: argument 2:It7"}
!176 = !{!173, !94}
!177 = !{!104, !175, !90, !95}
!178 = !{!175, !95}
!179 = !{!104, !173, !90, !94}
!180 = distinct !{!180, !15}
!181 = !{!182}
!182 = distinct !{!182, !183, !"XXH3_scrambleAcc_scalar: argument 0"}
!183 = distinct !{!183, !"XXH3_scrambleAcc_scalar"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"XXH3_scrambleAcc_scalar: argument 1"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"XXH3_scalarScrambleRound: argument 0"}
!188 = distinct !{!188, !"XXH3_scalarScrambleRound"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"XXH3_scalarScrambleRound: argument 1"}
!191 = !{!190, !185}
!192 = !{!187, !182}
!193 = !{!194}
!194 = distinct !{!194, !188, !"XXH3_scalarScrambleRound: argument 0:It1"}
!195 = !{!196}
!196 = distinct !{!196, !188, !"XXH3_scalarScrambleRound: argument 1:It1"}
!197 = !{!196, !185}
!198 = !{!194, !182}
!199 = !{!200}
!200 = distinct !{!200, !188, !"XXH3_scalarScrambleRound: argument 0:It2"}
!201 = !{!202}
!202 = distinct !{!202, !188, !"XXH3_scalarScrambleRound: argument 1:It2"}
!203 = !{!202, !185}
!204 = !{!200, !182}
!205 = !{!206}
!206 = distinct !{!206, !188, !"XXH3_scalarScrambleRound: argument 0:It3"}
!207 = !{!208}
!208 = distinct !{!208, !188, !"XXH3_scalarScrambleRound: argument 1:It3"}
!209 = !{!208, !185}
!210 = !{!206, !182}
!211 = !{!212}
!212 = distinct !{!212, !188, !"XXH3_scalarScrambleRound: argument 0:It4"}
!213 = !{!214}
!214 = distinct !{!214, !188, !"XXH3_scalarScrambleRound: argument 1:It4"}
!215 = !{!214, !185}
!216 = !{!212, !182}
!217 = !{!218}
!218 = distinct !{!218, !188, !"XXH3_scalarScrambleRound: argument 0:It5"}
!219 = !{!220}
!220 = distinct !{!220, !188, !"XXH3_scalarScrambleRound: argument 1:It5"}
!221 = !{!220, !185}
!222 = !{!218, !182}
!223 = !{!224}
!224 = distinct !{!224, !188, !"XXH3_scalarScrambleRound: argument 0:It6"}
!225 = !{!226}
!226 = distinct !{!226, !188, !"XXH3_scalarScrambleRound: argument 1:It6"}
!227 = !{!226, !185}
!228 = !{!224, !182}
!229 = !{!230}
!230 = distinct !{!230, !188, !"XXH3_scalarScrambleRound: argument 0:It7"}
!231 = !{!232}
!232 = distinct !{!232, !188, !"XXH3_scalarScrambleRound: argument 1:It7"}
!233 = !{!232, !185}
!234 = !{!230, !182}
!235 = distinct !{!235, !15}
!236 = !{!237}
!237 = distinct !{!237, !238, !"XXH3_accumulate_512_scalar: argument 0"}
!238 = distinct !{!238, !"XXH3_accumulate_512_scalar"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"XXH3_accumulate_512_scalar: argument 1"}
!241 = !{!242}
!242 = distinct !{!242, !238, !"XXH3_accumulate_512_scalar: argument 2"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"XXH3_scalarRound: argument 0"}
!245 = distinct !{!245, !"XXH3_scalarRound"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"XXH3_scalarRound: argument 1"}
!248 = !{!249}
!249 = distinct !{!249, !245, !"XXH3_scalarRound: argument 2"}
!250 = !{!247, !240}
!251 = !{!244, !249, !237, !242}
!252 = !{!249, !242}
!253 = !{!244, !247, !237, !240}
!254 = !{!244, !237}
!255 = !{!247, !249, !240, !242}
!256 = !{!257}
!257 = distinct !{!257, !245, !"XXH3_scalarRound: argument 0:It1"}
!258 = !{!259}
!259 = distinct !{!259, !245, !"XXH3_scalarRound: argument 1:It1"}
!260 = !{!261}
!261 = distinct !{!261, !245, !"XXH3_scalarRound: argument 2:It1"}
!262 = !{!259, !240}
!263 = !{!257, !261, !237, !242}
!264 = !{!261, !242}
!265 = !{!257, !259, !237, !240}
!266 = !{!257, !237}
!267 = !{!259, !261, !240, !242}
!268 = !{!269}
!269 = distinct !{!269, !245, !"XXH3_scalarRound: argument 0:It2"}
!270 = !{!271}
!271 = distinct !{!271, !245, !"XXH3_scalarRound: argument 1:It2"}
!272 = !{!273}
!273 = distinct !{!273, !245, !"XXH3_scalarRound: argument 2:It2"}
!274 = !{!271, !240}
!275 = !{!269, !273, !237, !242}
!276 = !{!273, !242}
!277 = !{!269, !271, !237, !240}
!278 = !{!269, !237}
!279 = !{!271, !273, !240, !242}
!280 = !{!281}
!281 = distinct !{!281, !245, !"XXH3_scalarRound: argument 0:It3"}
!282 = !{!283}
!283 = distinct !{!283, !245, !"XXH3_scalarRound: argument 1:It3"}
!284 = !{!285}
!285 = distinct !{!285, !245, !"XXH3_scalarRound: argument 2:It3"}
!286 = !{!283, !240}
!287 = !{!281, !285, !237, !242}
!288 = !{!285, !242}
!289 = !{!281, !283, !237, !240}
!290 = !{!281, !237}
!291 = !{!283, !285, !240, !242}
!292 = !{!293}
!293 = distinct !{!293, !245, !"XXH3_scalarRound: argument 0:It4"}
!294 = !{!295}
!295 = distinct !{!295, !245, !"XXH3_scalarRound: argument 1:It4"}
!296 = !{!297}
!297 = distinct !{!297, !245, !"XXH3_scalarRound: argument 2:It4"}
!298 = !{!295, !240}
!299 = !{!293, !297, !237, !242}
!300 = !{!297, !242}
!301 = !{!293, !295, !237, !240}
!302 = !{!293, !237}
!303 = !{!295, !297, !240, !242}
!304 = !{!305}
!305 = distinct !{!305, !245, !"XXH3_scalarRound: argument 0:It5"}
!306 = !{!307}
!307 = distinct !{!307, !245, !"XXH3_scalarRound: argument 1:It5"}
!308 = !{!309}
!309 = distinct !{!309, !245, !"XXH3_scalarRound: argument 2:It5"}
!310 = !{!307, !240}
!311 = !{!305, !309, !237, !242}
!312 = !{!309, !242}
!313 = !{!305, !307, !237, !240}
!314 = !{!305, !237}
!315 = !{!307, !309, !240, !242}
!316 = !{!317}
!317 = distinct !{!317, !245, !"XXH3_scalarRound: argument 0:It6"}
!318 = !{!319}
!319 = distinct !{!319, !245, !"XXH3_scalarRound: argument 1:It6"}
!320 = !{!321}
!321 = distinct !{!321, !245, !"XXH3_scalarRound: argument 2:It6"}
!322 = !{!319, !240}
!323 = !{!317, !321, !237, !242}
!324 = !{!321, !242}
!325 = !{!317, !319, !237, !240}
!326 = !{!317, !237}
!327 = !{!319, !321, !240, !242}
!328 = !{!329}
!329 = distinct !{!329, !245, !"XXH3_scalarRound: argument 0:It7"}
!330 = !{!331}
!331 = distinct !{!331, !245, !"XXH3_scalarRound: argument 1:It7"}
!332 = !{!333}
!333 = distinct !{!333, !245, !"XXH3_scalarRound: argument 2:It7"}
!334 = !{!331, !240}
!335 = !{!329, !333, !237, !242}
!336 = !{!333, !242}
!337 = !{!329, !331, !237, !240}
!338 = !{!329, !237}
!339 = !{!331, !333, !240, !242}
!340 = !{!341}
!341 = distinct !{!341, !342, !"XXH3_hashLong_64b_internal: argument 1"}
!342 = distinct !{!342, !"XXH3_hashLong_64b_internal"}
!343 = !{!344, !341}
!344 = distinct !{!344, !342, !"XXH3_hashLong_64b_internal: argument 0"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"XXH3_finalizeLong_64b: argument 0"}
!347 = distinct !{!347, !"XXH3_finalizeLong_64b"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"XXH3_finalizeLong_64b: argument 1"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"XXH3_mergeAccs: argument 0"}
!352 = distinct !{!352, !"XXH3_mergeAccs"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"XXH3_mergeAccs: argument 1"}
!355 = !{!351, !346}
!356 = !{!354, !349, !344, !341}
!357 = !{!354, !349, !341}
!358 = !{!351, !346, !344}
!359 = !{!360}
!360 = distinct !{!360, !361, !"XXH3_finalizeLong_128b: argument 0"}
!361 = distinct !{!361, !"XXH3_finalizeLong_128b"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"XXH3_finalizeLong_128b: argument 1"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"XXH3_finalizeLong_64b: argument 0"}
!366 = distinct !{!366, !"XXH3_finalizeLong_64b"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"XXH3_finalizeLong_64b: argument 1"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"XXH3_mergeAccs: argument 0"}
!371 = distinct !{!371, !"XXH3_mergeAccs"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"XXH3_mergeAccs: argument 1"}
!374 = !{!370, !365, !360}
!375 = !{!373, !368, !363}
!376 = !{!377, !363}
!377 = distinct !{!377, !378, !"XXH3_mergeAccs: argument 1"}
!378 = distinct !{!378, !"XXH3_mergeAccs"}
!379 = !{!380, !360}
!380 = distinct !{!380, !378, !"XXH3_mergeAccs: argument 0"}
