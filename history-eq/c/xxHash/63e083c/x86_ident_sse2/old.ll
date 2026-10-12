; ModuleID = 'x86_ident_sse2/wrapper.c'
source_filename = "x86_ident_sse2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  %19 = load i32, ptr %18, align 1, !alias.scope !5, !noalias !8
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %17
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %25 = load i32, ptr %24, align 1, !alias.scope !5, !noalias !8
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %31 = load i32, ptr %30, align 1, !alias.scope !5, !noalias !8
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %37 = load i32, ptr %36, align 1, !alias.scope !5, !noalias !8
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %14
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %43 = icmp ult ptr %42, %12
  br i1 %43, label %13, label %44, !llvm.loop !10

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
  br label %189

62:                                               ; preds = %55, %44
  %63 = phi i64 [ %54, %44 ], [ %1, %55 ]
  %64 = phi i32 [ %53, %44 ], [ %58, %55 ]
  %65 = phi ptr [ %42, %44 ], [ %0, %55 ]
  %66 = icmp samesign ugt i64 %63, 3
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = add nsw i64 %63, -4
  %69 = lshr i64 %68, 2
  %70 = add nuw nsw i64 %69, 1
  %71 = and i64 %70, 3
  %72 = and i64 %68, 12
  %73 = icmp eq i64 %72, 12
  br i1 %73, label %88, label %74

74:                                               ; preds = %67, %74
  %75 = phi i32 [ %84, %74 ], [ %64, %67 ]
  %76 = phi i64 [ %85, %74 ], [ %63, %67 ]
  %77 = phi ptr [ %82, %74 ], [ %65, %67 ]
  %78 = phi i64 [ %86, %74 ], [ 0, %67 ]
  %79 = load i32, ptr %77, align 1
  %80 = mul i32 %79, -1028477379
  %81 = add i32 %80, %75
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %83 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 17)
  %84 = mul i32 %83, 668265263
  %85 = add nsw i64 %76, -4
  %86 = add i64 %78, 1
  %87 = icmp eq i64 %86, %71
  br i1 %87, label %88, label %74, !llvm.loop !12

88:                                               ; preds = %74, %67
  %89 = phi i32 [ %64, %67 ], [ %84, %74 ]
  %90 = phi i64 [ %63, %67 ], [ %85, %74 ]
  %91 = phi ptr [ %65, %67 ], [ %82, %74 ]
  %92 = phi ptr [ poison, %67 ], [ %82, %74 ]
  %93 = phi i32 [ poison, %67 ], [ %84, %74 ]
  %94 = phi i64 [ poison, %67 ], [ %85, %74 ]
  %95 = icmp ult i64 %68, 12
  br i1 %95, label %96, label %125

96:                                               ; preds = %88, %125, %62
  %97 = phi ptr [ %65, %62 ], [ %92, %88 ], [ %150, %125 ]
  %98 = phi i64 [ %63, %62 ], [ %94, %88 ], [ %153, %125 ]
  %99 = phi i32 [ %64, %62 ], [ %93, %88 ], [ %152, %125 ]
  %100 = icmp eq i64 %98, 0
  br i1 %100, label %189, label %101

101:                                              ; preds = %96
  %102 = and i64 %98, 3
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %101, %104
  %105 = phi i32 [ %115, %104 ], [ %99, %101 ]
  %106 = phi i64 [ %116, %104 ], [ %98, %101 ]
  %107 = phi ptr [ %109, %104 ], [ %97, %101 ]
  %108 = phi i64 [ %117, %104 ], [ 0, %101 ]
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %110 = load i8, ptr %107, align 1
  %111 = zext i8 %110 to i32
  %112 = mul i32 %111, 374761393
  %113 = add i32 %112, %105
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 11)
  %115 = mul i32 %114, -1640531535
  %116 = add nsw i64 %106, -1
  %117 = add i64 %108, 1
  %118 = icmp eq i64 %117, %102
  br i1 %118, label %119, label %104, !llvm.loop !14

119:                                              ; preds = %104, %101
  %120 = phi i32 [ poison, %101 ], [ %115, %104 ]
  %121 = phi i32 [ %99, %101 ], [ %115, %104 ]
  %122 = phi i64 [ %98, %101 ], [ %116, %104 ]
  %123 = phi ptr [ %97, %101 ], [ %109, %104 ]
  %124 = icmp ult i64 %98, 4
  br i1 %124, label %189, label %155

125:                                              ; preds = %88, %125
  %126 = phi i32 [ %152, %125 ], [ %89, %88 ]
  %127 = phi i64 [ %153, %125 ], [ %90, %88 ]
  %128 = phi ptr [ %150, %125 ], [ %91, %88 ]
  %129 = load i32, ptr %128, align 1
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %126
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 4
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  %135 = load i32, ptr %132, align 1
  %136 = mul i32 %135, -1028477379
  %137 = add i32 %136, %134
  %138 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %139 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 17)
  %140 = mul i32 %139, 668265263
  %141 = load i32, ptr %138, align 1
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %140
  %144 = getelementptr inbounds nuw i8, ptr %128, i64 12
  %145 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  %146 = mul i32 %145, 668265263
  %147 = load i32, ptr %144, align 1
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %146
  %150 = getelementptr inbounds nuw i8, ptr %128, i64 16
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %152 = mul i32 %151, 668265263
  %153 = add nsw i64 %127, -16
  %154 = icmp ugt i64 %153, 3
  br i1 %154, label %125, label %96, !llvm.loop !15

155:                                              ; preds = %119, %155
  %156 = phi i32 [ %186, %155 ], [ %121, %119 ]
  %157 = phi i64 [ %187, %155 ], [ %122, %119 ]
  %158 = phi ptr [ %180, %155 ], [ %123, %119 ]
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %160 = load i8, ptr %158, align 1
  %161 = zext i8 %160 to i32
  %162 = mul i32 %161, 374761393
  %163 = add i32 %162, %156
  %164 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 11)
  %165 = mul i32 %164, -1640531535
  %166 = getelementptr inbounds nuw i8, ptr %158, i64 2
  %167 = load i8, ptr %159, align 1
  %168 = zext i8 %167 to i32
  %169 = mul i32 %168, 374761393
  %170 = add i32 %169, %165
  %171 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 11)
  %172 = mul i32 %171, -1640531535
  %173 = getelementptr inbounds nuw i8, ptr %158, i64 3
  %174 = load i8, ptr %166, align 1
  %175 = zext i8 %174 to i32
  %176 = mul i32 %175, 374761393
  %177 = add i32 %176, %172
  %178 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 11)
  %179 = mul i32 %178, -1640531535
  %180 = getelementptr inbounds nuw i8, ptr %158, i64 4
  %181 = load i8, ptr %173, align 1
  %182 = zext i8 %181 to i32
  %183 = mul i32 %182, 374761393
  %184 = add i32 %183, %179
  %185 = tail call i32 @llvm.fshl.i32(i32 %184, i32 %184, i32 11)
  %186 = mul i32 %185, -1640531535
  %187 = add nsw i64 %157, -4
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %155, !llvm.loop !16

189:                                              ; preds = %119, %155, %59, %96
  %190 = phi i32 [ %99, %96 ], [ %61, %59 ], [ %120, %119 ], [ %186, %155 ]
  %191 = lshr i32 %190, 15
  %192 = xor i32 %191, %190
  %193 = mul i32 %192, -2048144777
  %194 = lshr i32 %193, 13
  %195 = xor i32 %194, %193
  %196 = mul i32 %195, -1028477379
  %197 = lshr i32 %196, 16
  %198 = xor i32 %197, %196
  ret i32 %198
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
  %19 = load i64, ptr %18, align 1, !alias.scope !17, !noalias !20
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, %17
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %25 = load i64, ptr %24, align 1, !alias.scope !17, !noalias !20
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %31 = load i64, ptr %30, align 1, !alias.scope !17, !noalias !20
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %15
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %37 = load i64, ptr %36, align 1, !alias.scope !17, !noalias !20
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %14
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %43 = icmp ult ptr %42, %12
  br i1 %43, label %13, label %44, !llvm.loop !22

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
  br label %212

81:                                               ; preds = %76, %44
  %82 = phi i64 [ %75, %44 ], [ %77, %76 ]
  %83 = phi ptr [ %42, %44 ], [ %0, %76 ]
  %84 = add i64 %82, %1
  %85 = and i64 %1, 31
  %86 = icmp samesign ugt i64 %85, 7
  br i1 %86, label %87, label %134

87:                                               ; preds = %81
  %88 = add nsw i64 %85, -8
  %89 = and i64 %88, 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i64, ptr %83, align 1
  %93 = mul i64 %92, -4417276706812531889
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %97 = xor i64 %95, %84
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 27)
  %99 = mul i64 %98, -7046029288634856825
  %100 = add i64 %99, -8796714831421723037
  %101 = add nsw i64 %85, -8
  br label %102

102:                                              ; preds = %91, %87
  %103 = phi i64 [ %84, %87 ], [ %100, %91 ]
  %104 = phi ptr [ %83, %87 ], [ %96, %91 ]
  %105 = phi i64 [ %85, %87 ], [ %101, %91 ]
  %106 = phi ptr [ poison, %87 ], [ %96, %91 ]
  %107 = phi i64 [ poison, %87 ], [ %100, %91 ]
  %108 = phi i64 [ poison, %87 ], [ %101, %91 ]
  %109 = icmp ult i64 %88, 8
  br i1 %109, label %134, label %110

110:                                              ; preds = %102, %110
  %111 = phi i64 [ %131, %110 ], [ %103, %102 ]
  %112 = phi ptr [ %127, %110 ], [ %104, %102 ]
  %113 = phi i64 [ %132, %110 ], [ %105, %102 ]
  %114 = load i64, ptr %112, align 1
  %115 = mul i64 %114, -4417276706812531889
  %116 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 31)
  %117 = mul i64 %116, -7046029288634856825
  %118 = getelementptr inbounds nuw i8, ptr %112, i64 8
  %119 = xor i64 %117, %111
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 27)
  %121 = mul i64 %120, -7046029288634856825
  %122 = add i64 %121, -8796714831421723037
  %123 = load i64, ptr %118, align 1
  %124 = mul i64 %123, -4417276706812531889
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 31)
  %126 = mul i64 %125, -7046029288634856825
  %127 = getelementptr inbounds nuw i8, ptr %112, i64 16
  %128 = xor i64 %126, %122
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 27)
  %130 = mul i64 %129, -7046029288634856825
  %131 = add i64 %130, -8796714831421723037
  %132 = add nsw i64 %113, -16
  %133 = icmp ugt i64 %132, 7
  br i1 %133, label %110, label %134, !llvm.loop !23

134:                                              ; preds = %102, %110, %81
  %135 = phi i64 [ %85, %81 ], [ %108, %102 ], [ %132, %110 ]
  %136 = phi ptr [ %83, %81 ], [ %106, %102 ], [ %127, %110 ]
  %137 = phi i64 [ %84, %81 ], [ %107, %102 ], [ %131, %110 ]
  %138 = icmp samesign ugt i64 %135, 3
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i32, ptr %136, align 1
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, -7046029288634856825
  %143 = xor i64 %142, %137
  %144 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %145 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 23)
  %146 = mul i64 %145, -4417276706812531889
  %147 = add i64 %146, 1609587929392839161
  %148 = add nsw i64 %135, -4
  br label %149

149:                                              ; preds = %139, %134
  %150 = phi i64 [ %148, %139 ], [ %135, %134 ]
  %151 = phi ptr [ %144, %139 ], [ %136, %134 ]
  %152 = phi i64 [ %147, %139 ], [ %137, %134 ]
  %153 = icmp eq i64 %150, 0
  br i1 %153, label %212, label %154

154:                                              ; preds = %149
  %155 = and i64 %150, 3
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %154, %157
  %158 = phi i64 [ %168, %157 ], [ %152, %154 ]
  %159 = phi ptr [ %162, %157 ], [ %151, %154 ]
  %160 = phi i64 [ %169, %157 ], [ %150, %154 ]
  %161 = phi i64 [ %170, %157 ], [ 0, %154 ]
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 1
  %163 = load i8, ptr %159, align 1
  %164 = zext i8 %163 to i64
  %165 = mul i64 %164, 2870177450012600261
  %166 = xor i64 %165, %158
  %167 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 11)
  %168 = mul i64 %167, -7046029288634856825
  %169 = add nsw i64 %160, -1
  %170 = add i64 %161, 1
  %171 = icmp eq i64 %170, %155
  br i1 %171, label %172, label %157, !llvm.loop !24

172:                                              ; preds = %157, %154
  %173 = phi i64 [ poison, %154 ], [ %168, %157 ]
  %174 = phi i64 [ %152, %154 ], [ %168, %157 ]
  %175 = phi ptr [ %151, %154 ], [ %162, %157 ]
  %176 = phi i64 [ %150, %154 ], [ %169, %157 ]
  %177 = icmp ult i64 %150, 4
  br i1 %177, label %212, label %178

178:                                              ; preds = %172, %178
  %179 = phi i64 [ %209, %178 ], [ %174, %172 ]
  %180 = phi ptr [ %203, %178 ], [ %175, %172 ]
  %181 = phi i64 [ %210, %178 ], [ %176, %172 ]
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 1
  %183 = load i8, ptr %180, align 1
  %184 = zext i8 %183 to i64
  %185 = mul i64 %184, 2870177450012600261
  %186 = xor i64 %185, %179
  %187 = tail call i64 @llvm.fshl.i64(i64 %186, i64 %186, i64 11)
  %188 = mul i64 %187, -7046029288634856825
  %189 = getelementptr inbounds nuw i8, ptr %180, i64 2
  %190 = load i8, ptr %182, align 1
  %191 = zext i8 %190 to i64
  %192 = mul i64 %191, 2870177450012600261
  %193 = xor i64 %192, %188
  %194 = tail call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 11)
  %195 = mul i64 %194, -7046029288634856825
  %196 = getelementptr inbounds nuw i8, ptr %180, i64 3
  %197 = load i8, ptr %189, align 1
  %198 = zext i8 %197 to i64
  %199 = mul i64 %198, 2870177450012600261
  %200 = xor i64 %199, %195
  %201 = tail call i64 @llvm.fshl.i64(i64 %200, i64 %200, i64 11)
  %202 = mul i64 %201, -7046029288634856825
  %203 = getelementptr inbounds nuw i8, ptr %180, i64 4
  %204 = load i8, ptr %196, align 1
  %205 = zext i8 %204 to i64
  %206 = mul i64 %205, 2870177450012600261
  %207 = xor i64 %206, %202
  %208 = tail call i64 @llvm.fshl.i64(i64 %207, i64 %207, i64 11)
  %209 = mul i64 %208, -7046029288634856825
  %210 = add nsw i64 %181, -4
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %178, !llvm.loop !25

212:                                              ; preds = %172, %178, %78, %149
  %213 = phi i64 [ %152, %149 ], [ %79, %78 ], [ %173, %172 ], [ %209, %178 ]
  %214 = lshr i64 %213, 33
  %215 = xor i64 %214, %213
  %216 = mul i64 %215, -4417276706812531889
  %217 = lshr i64 %216, 29
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587929392839161
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  ret i64 %221
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

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [192 x i8], align 16
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
  %153 = insertvalue { i64, i64 } poison, i64 %150, 0
  %154 = insertvalue { i64, i64 } %153, i64 %152, 1
  br label %625

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
  %330 = insertvalue { i64, i64 } poison, i64 %323, 0
  %331 = insertvalue { i64, i64 } %330, i64 %329, 1
  br label %625

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
  %587 = insertvalue { i64, i64 } poison, i64 %580, 0
  %588 = insertvalue { i64, i64 } %587, i64 %586, 1
  br label %625

589:                                              ; preds = %332
  %590 = icmp eq i64 %3, 0
  br i1 %590, label %591, label %593

591:                                              ; preds = %589
  %592 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %625

593:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #13, !noalias !33
  %594 = sub i64 0, %3
  %595 = insertelement <2 x i64> poison, i64 %3, i64 0
  %596 = insertelement <2 x i64> %595, i64 %594, i64 1
  %597 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %5) #14, !srcloc !36
  %598 = ptrtoint ptr %597 to i64
  %599 = and i64 %598, 15
  %600 = icmp eq i64 %599, 0
  call void @llvm.assume(i1 %600)
  %601 = add <2 x i64> %596, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %601, ptr %597, align 16, !noalias !33
  %602 = add <2 x i64> %596, <i64 -2623469361688619810, i64 2262974939099578482>
  %603 = getelementptr inbounds nuw i8, ptr %597, i64 16
  store <2 x i64> %602, ptr %603, align 16, !noalias !33
  %604 = add <2 x i64> %596, <i64 8711581037947681227, i64 2410270004345854594>
  %605 = getelementptr inbounds nuw i8, ptr %597, i64 32
  store <2 x i64> %604, ptr %605, align 16, !noalias !33
  %606 = add <2 x i64> %596, <i64 -8204357891075471176, i64 5487137525590930912>
  %607 = getelementptr inbounds nuw i8, ptr %597, i64 48
  store <2 x i64> %606, ptr %607, align 16, !noalias !33
  %608 = add <2 x i64> %596, <i64 -3818837453329782724, i64 -6688317018830679928>
  %609 = getelementptr inbounds nuw i8, ptr %597, i64 64
  store <2 x i64> %608, ptr %609, align 16, !noalias !33
  %610 = add <2 x i64> %596, <i64 5690594596133299313, i64 -2833645246901970632>
  %611 = getelementptr inbounds nuw i8, ptr %597, i64 80
  store <2 x i64> %610, ptr %611, align 16, !noalias !33
  %612 = add <2 x i64> %596, <i64 4554437623014685352, i64 2111919702937427193>
  %613 = getelementptr inbounds nuw i8, ptr %597, i64 96
  store <2 x i64> %612, ptr %613, align 16, !noalias !33
  %614 = add <2 x i64> %596, <i64 3556072174620004746, i64 7238261902898274248>
  %615 = getelementptr inbounds nuw i8, ptr %597, i64 112
  store <2 x i64> %614, ptr %615, align 16, !noalias !33
  %616 = add <2 x i64> %596, <i64 -4329134394285701654, i64 -1485321483350670907>
  %617 = getelementptr inbounds nuw i8, ptr %597, i64 128
  store <2 x i64> %616, ptr %617, align 16, !noalias !33
  %618 = add <2 x i64> %596, <i64 5321830579834785047, i64 -7032137544937171245>
  %619 = getelementptr inbounds nuw i8, ptr %597, i64 144
  store <2 x i64> %618, ptr %619, align 16, !noalias !33
  %620 = add <2 x i64> %596, <i64 -242834301215959509, i64 -3588858202114426737>
  %621 = getelementptr inbounds nuw i8, ptr %597, i64 160
  store <2 x i64> %620, ptr %621, align 16, !noalias !33
  %622 = add <2 x i64> %596, <i64 2883454493032893253, i64 9097354517224871855>
  %623 = getelementptr inbounds nuw i8, ptr %597, i64 176
  store <2 x i64> %622, ptr %623, align 16, !noalias !33
  %624 = call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #13, !noalias !33
  br label %625

625:                                              ; preds = %148, %275, %531, %591, %593
  %626 = phi { i64, i64 } [ %154, %148 ], [ %331, %275 ], [ %588, %531 ], [ %592, %591 ], [ %624, %593 ]
  %627 = extractvalue { i64, i64 } %626, 0
  %628 = extractvalue { i64, i64 } %626, 1
  store i64 %627, ptr %0, align 8
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %628, ptr %629, align 8
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
  br i1 %9, label %10, label %46, !prof !37

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
  br label %336

46:                                               ; preds = %8
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %50, !prof !37

48:                                               ; preds = %46
  %49 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #15
  br label %336

50:                                               ; preds = %46
  %51 = icmp eq i64 %1, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #15
  br label %336

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
  br label %336

69:                                               ; preds = %6
  %70 = icmp ult i64 %1, 129
  br i1 %70, label %71, label %244

71:                                               ; preds = %69
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
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
  %81 = load i64, ptr %79, align 1, !alias.scope !38, !noalias !41
  %82 = getelementptr i8, ptr %0, i64 56
  %83 = load i64, ptr %82, align 1, !alias.scope !38, !noalias !41
  %84 = load i64, ptr %80, align 1, !alias.scope !41, !noalias !38
  %85 = getelementptr i8, ptr %3, i64 104
  %86 = load i64, ptr %85, align 1, !alias.scope !41, !noalias !38
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
  %101 = load i64, ptr %99, align 1, !alias.scope !38, !noalias !41
  %102 = getelementptr i8, ptr %98, i64 -56
  %103 = load i64, ptr %102, align 1, !alias.scope !38, !noalias !41
  %104 = load i64, ptr %100, align 1, !alias.scope !41, !noalias !38
  %105 = getelementptr i8, ptr %3, i64 120
  %106 = load i64, ptr %105, align 1, !alias.scope !41, !noalias !38
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
  %122 = load i64, ptr %120, align 1, !alias.scope !38, !noalias !41
  %123 = getelementptr i8, ptr %0, i64 40
  %124 = load i64, ptr %123, align 1, !alias.scope !38, !noalias !41
  %125 = load i64, ptr %121, align 1, !alias.scope !41, !noalias !38
  %126 = getelementptr i8, ptr %3, i64 72
  %127 = load i64, ptr %126, align 1, !alias.scope !41, !noalias !38
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
  %142 = load i64, ptr %140, align 1, !alias.scope !38, !noalias !41
  %143 = getelementptr i8, ptr %139, i64 -40
  %144 = load i64, ptr %143, align 1, !alias.scope !38, !noalias !41
  %145 = load i64, ptr %141, align 1, !alias.scope !41, !noalias !38
  %146 = getelementptr i8, ptr %3, i64 88
  %147 = load i64, ptr %146, align 1, !alias.scope !41, !noalias !38
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
  %163 = load i64, ptr %161, align 1, !alias.scope !38, !noalias !41
  %164 = getelementptr i8, ptr %0, i64 24
  %165 = load i64, ptr %164, align 1, !alias.scope !38, !noalias !41
  %166 = load i64, ptr %162, align 1, !alias.scope !41, !noalias !38
  %167 = getelementptr i8, ptr %3, i64 40
  %168 = load i64, ptr %167, align 1, !alias.scope !41, !noalias !38
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
  %183 = load i64, ptr %181, align 1, !alias.scope !38, !noalias !41
  %184 = getelementptr i8, ptr %180, i64 -24
  %185 = load i64, ptr %184, align 1, !alias.scope !38, !noalias !41
  %186 = load i64, ptr %182, align 1, !alias.scope !41, !noalias !38
  %187 = getelementptr i8, ptr %3, i64 56
  %188 = load i64, ptr %187, align 1, !alias.scope !41, !noalias !38
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
  %202 = load i64, ptr %0, align 1, !alias.scope !38, !noalias !41
  %203 = getelementptr i8, ptr %0, i64 8
  %204 = load i64, ptr %203, align 1, !alias.scope !38, !noalias !41
  %205 = load i64, ptr %3, align 1, !alias.scope !41, !noalias !38
  %206 = getelementptr i8, ptr %3, i64 8
  %207 = load i64, ptr %206, align 1, !alias.scope !41, !noalias !38
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
  %222 = load i64, ptr %220, align 1, !alias.scope !38, !noalias !41
  %223 = getelementptr i8, ptr %219, i64 -8
  %224 = load i64, ptr %223, align 1, !alias.scope !38, !noalias !41
  %225 = load i64, ptr %221, align 1, !alias.scope !41, !noalias !38
  %226 = getelementptr i8, ptr %3, i64 24
  %227 = load i64, ptr %226, align 1, !alias.scope !41, !noalias !38
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
  br label %336

244:                                              ; preds = %69
  %245 = icmp ult i64 %1, 241
  br i1 %245, label %246, label %334

246:                                              ; preds = %244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %247 = mul i64 %1, -7046029288634856825
  %248 = trunc nuw nsw i64 %1 to i32
  %249 = load <16 x i64>, ptr %0, align 1, !alias.scope !43, !noalias !46
  %250 = load <16 x i64>, ptr %3, align 1, !alias.scope !46, !noalias !43
  %251 = shufflevector <16 x i64> %250, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %252 = insertelement <8 x i64> poison, i64 %2, i64 0
  %253 = shufflevector <8 x i64> %252, <8 x i64> poison, <8 x i32> zeroinitializer
  %254 = add <8 x i64> %251, %253
  %255 = shufflevector <16 x i64> %249, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %256 = xor <8 x i64> %254, %255
  %257 = shufflevector <16 x i64> %250, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %258 = sub <8 x i64> %257, %253
  %259 = shufflevector <16 x i64> %249, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %260 = xor <8 x i64> %258, %259
  %261 = zext <8 x i64> %256 to <8 x i128>
  %262 = zext <8 x i64> %260 to <8 x i128>
  %263 = mul nuw <8 x i128> %262, %261
  %264 = lshr <8 x i128> %263, splat (i128 64)
  %265 = xor <8 x i128> %264, %263
  %266 = trunc <8 x i128> %265 to <8 x i64>
  %267 = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %266)
  %268 = add i64 %267, %247
  %269 = lshr i32 %248, 4
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %271 = getelementptr inbounds i8, ptr %270, i64 -16
  %272 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %273 = load i64, ptr %271, align 1, !alias.scope !43, !noalias !46
  %274 = getelementptr i8, ptr %270, i64 -8
  %275 = load i64, ptr %274, align 1, !alias.scope !43, !noalias !46
  %276 = load i64, ptr %272, align 1, !alias.scope !46, !noalias !43
  %277 = getelementptr i8, ptr %3, i64 127
  %278 = load i64, ptr %277, align 1, !alias.scope !46, !noalias !43
  %279 = add i64 %276, %2
  %280 = xor i64 %279, %273
  %281 = sub i64 %278, %2
  %282 = xor i64 %281, %275
  %283 = zext i64 %280 to i128
  %284 = zext i64 %282 to i128
  %285 = mul nuw i128 %284, %283
  %286 = lshr i128 %285, 64
  %287 = xor i128 %286, %285
  %288 = trunc i128 %287 to i64
  %289 = lshr i64 %268, 37
  %290 = xor i64 %289, %268
  %291 = mul i64 %290, 1609587791953885689
  %292 = lshr i64 %291, 32
  %293 = xor i64 %292, %291
  %294 = icmp eq i32 %269, 8
  br i1 %294, label %325, label %295

295:                                              ; preds = %246
  %296 = zext nneg i32 %269 to i64
  br label %297

297:                                              ; preds = %297, %295
  %298 = phi i64 [ 8, %295 ], [ %323, %297 ]
  %299 = phi i64 [ %293, %295 ], [ %301, %297 ]
  %300 = phi i64 [ %288, %295 ], [ %322, %297 ]
  %301 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %299) #14, !srcloc !48
  %302 = shl nuw nsw i64 %298, 4
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 %302
  %304 = getelementptr i8, ptr %3, i64 %302
  %305 = getelementptr i8, ptr %304, i64 -125
  %306 = load i64, ptr %303, align 1, !alias.scope !43, !noalias !46
  %307 = getelementptr i8, ptr %303, i64 8
  %308 = load i64, ptr %307, align 1, !alias.scope !43, !noalias !46
  %309 = load i64, ptr %305, align 1, !alias.scope !46, !noalias !43
  %310 = getelementptr i8, ptr %304, i64 -117
  %311 = load i64, ptr %310, align 1, !alias.scope !46, !noalias !43
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
  %322 = add i64 %300, %321
  %323 = add nuw nsw i64 %298, 1
  %324 = icmp eq i64 %323, %296
  br i1 %324, label %325, label %297, !llvm.loop !49

325:                                              ; preds = %297, %246
  %326 = phi i64 [ %288, %246 ], [ %322, %297 ]
  %327 = phi i64 [ %293, %246 ], [ %301, %297 ]
  %328 = add i64 %327, %326
  %329 = lshr i64 %328, 37
  %330 = xor i64 %329, %328
  %331 = mul i64 %330, 1609587791953885689
  %332 = lshr i64 %331, 32
  %333 = xor i64 %332, %331
  br label %336

334:                                              ; preds = %244
  %335 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #13, !callees !50
  br label %336

336:                                              ; preds = %54, %52, %48, %10, %334, %325, %200
  %337 = phi i64 [ %243, %200 ], [ %333, %325 ], [ %335, %334 ], [ %45, %10 ], [ %49, %48 ], [ %53, %52 ], [ %68, %54 ]
  ret i64 %337
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture readnone %3, i64 %4) #2 {
  %6 = alloca [8 x i64], align 16
  %7 = alloca [8 x i64], align 16
  %8 = alloca [192 x i8], align 16
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13, !noalias !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !51
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  %11 = mul i64 %1, -7046029288634856825
  %12 = load i64, ptr %7, align 16, !alias.scope !55, !noalias !60
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !alias.scope !55, !noalias !60
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
  %25 = load i64, ptr %24, align 16, !alias.scope !55, !noalias !60
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %27 = load i64, ptr %26, align 8, !alias.scope !55, !noalias !60
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
  %38 = load i64, ptr %37, align 16, !alias.scope !55, !noalias !60
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %40 = load i64, ptr %39, align 8, !alias.scope !55, !noalias !60
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
  %51 = load i64, ptr %50, align 16, !alias.scope !55, !noalias !60
  %52 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %53 = load i64, ptr %52, align 8, !alias.scope !55, !noalias !60
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13, !noalias !51
  br label %172

68:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #13
  %69 = sub i64 0, %2
  %70 = insertelement <2 x i64> poison, i64 %2, i64 0
  %71 = insertelement <2 x i64> %70, i64 %69, i64 1
  %72 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %8) #14, !srcloc !36
  %73 = ptrtoint ptr %72 to i64
  %74 = and i64 %73, 15
  %75 = icmp eq i64 %74, 0
  call void @llvm.assume(i1 %75)
  %76 = add <2 x i64> %71, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %76, ptr %72, align 16
  %77 = add <2 x i64> %71, <i64 -2623469361688619810, i64 2262974939099578482>
  %78 = getelementptr inbounds nuw i8, ptr %72, i64 16
  store <2 x i64> %77, ptr %78, align 16
  %79 = add <2 x i64> %71, <i64 8711581037947681227, i64 2410270004345854594>
  %80 = getelementptr inbounds nuw i8, ptr %72, i64 32
  store <2 x i64> %79, ptr %80, align 16
  %81 = add <2 x i64> %71, <i64 -8204357891075471176, i64 5487137525590930912>
  %82 = getelementptr inbounds nuw i8, ptr %72, i64 48
  store <2 x i64> %81, ptr %82, align 16
  %83 = add <2 x i64> %71, <i64 -3818837453329782724, i64 -6688317018830679928>
  %84 = getelementptr inbounds nuw i8, ptr %72, i64 64
  store <2 x i64> %83, ptr %84, align 16
  %85 = add <2 x i64> %71, <i64 5690594596133299313, i64 -2833645246901970632>
  %86 = getelementptr inbounds nuw i8, ptr %72, i64 80
  store <2 x i64> %85, ptr %86, align 16
  %87 = add <2 x i64> %71, <i64 4554437623014685352, i64 2111919702937427193>
  %88 = getelementptr inbounds nuw i8, ptr %72, i64 96
  store <2 x i64> %87, ptr %88, align 16
  %89 = add <2 x i64> %71, <i64 3556072174620004746, i64 7238261902898274248>
  %90 = getelementptr inbounds nuw i8, ptr %72, i64 112
  store <2 x i64> %89, ptr %90, align 16
  %91 = add <2 x i64> %71, <i64 -4329134394285701654, i64 -1485321483350670907>
  %92 = getelementptr inbounds nuw i8, ptr %72, i64 128
  store <2 x i64> %91, ptr %92, align 16
  %93 = add <2 x i64> %71, <i64 5321830579834785047, i64 -7032137544937171245>
  %94 = getelementptr inbounds nuw i8, ptr %72, i64 144
  store <2 x i64> %93, ptr %94, align 16
  %95 = add <2 x i64> %71, <i64 -242834301215959509, i64 -3588858202114426737>
  %96 = getelementptr inbounds nuw i8, ptr %72, i64 160
  store <2 x i64> %95, ptr %96, align 16
  %97 = add <2 x i64> %71, <i64 2883454493032893253, i64 9097354517224871855>
  %98 = getelementptr inbounds nuw i8, ptr %72, i64 176
  store <2 x i64> %97, ptr %98, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !66
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull readonly %8, i64 noundef 192)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %99 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %100 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %101 = load i64, ptr %6, align 16, !alias.scope !78, !noalias !79
  %102 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %103 = load i64, ptr %102, align 8, !alias.scope !78, !noalias !79
  %104 = load i64, ptr %99, align 1, !alias.scope !80, !noalias !81
  %105 = getelementptr inbounds nuw i8, ptr %8, i64 19
  %106 = load i64, ptr %105, align 1, !alias.scope !80, !noalias !81
  %107 = xor i64 %104, %101
  %108 = xor i64 %106, %103
  %109 = zext i64 %107 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = add i64 %100, %114
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %117 = getelementptr inbounds nuw i8, ptr %8, i64 27
  %118 = load i64, ptr %116, align 16, !alias.scope !78, !noalias !79
  %119 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %120 = load i64, ptr %119, align 8, !alias.scope !78, !noalias !79
  %121 = load i64, ptr %117, align 1, !alias.scope !80, !noalias !81
  %122 = getelementptr inbounds nuw i8, ptr %8, i64 35
  %123 = load i64, ptr %122, align 1, !alias.scope !80, !noalias !81
  %124 = xor i64 %121, %118
  %125 = xor i64 %123, %120
  %126 = zext i64 %124 to i128
  %127 = zext i64 %125 to i128
  %128 = mul nuw i128 %127, %126
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %115, %131
  %133 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %134 = getelementptr inbounds nuw i8, ptr %8, i64 43
  %135 = load i64, ptr %133, align 16, !alias.scope !78, !noalias !79
  %136 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %137 = load i64, ptr %136, align 8, !alias.scope !78, !noalias !79
  %138 = load i64, ptr %134, align 1, !alias.scope !80, !noalias !81
  %139 = getelementptr inbounds nuw i8, ptr %8, i64 51
  %140 = load i64, ptr %139, align 1, !alias.scope !80, !noalias !81
  %141 = xor i64 %138, %135
  %142 = xor i64 %140, %137
  %143 = zext i64 %141 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %132, %148
  %150 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %151 = getelementptr inbounds nuw i8, ptr %8, i64 59
  %152 = load i64, ptr %150, align 16, !alias.scope !78, !noalias !79
  %153 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %154 = load i64, ptr %153, align 8, !alias.scope !78, !noalias !79
  %155 = load i64, ptr %151, align 1, !alias.scope !80, !noalias !81
  %156 = getelementptr inbounds nuw i8, ptr %8, i64 67
  %157 = load i64, ptr %156, align 1, !alias.scope !80, !noalias !81
  %158 = xor i64 %155, %152
  %159 = xor i64 %157, %154
  %160 = zext i64 %158 to i128
  %161 = zext i64 %159 to i128
  %162 = mul nuw i128 %161, %160
  %163 = lshr i128 %162, 64
  %164 = xor i128 %163, %162
  %165 = trunc i128 %164 to i64
  %166 = add i64 %149, %165
  %167 = lshr i64 %166, 37
  %168 = xor i64 %167, %166
  %169 = mul i64 %168, 1609587791953885689
  %170 = lshr i64 %169, 32
  %171 = xor i64 %170, %169
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !66
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #13
  br label %172

172:                                              ; preds = %10, %68
  %173 = phi i64 [ %67, %10 ], [ %171, %68 ]
  ret i64 %173
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 4, 9) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #7 {
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
define internal fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 1, 4) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #7 {
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
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #8 {
  %6 = add i64 %4, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %2, -1
  %10 = udiv i64 %9, %8
  %11 = urem i64 %9, %8
  %12 = icmp ugt i64 %4, 135
  tail call void @llvm.assume(i1 %12)
  %13 = icmp ugt i64 %8, %9
  %14 = load <2 x i64>, ptr %0, align 16, !alias.scope !82, !noalias !85
  br i1 %13, label %153, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %20 = getelementptr inbounds i8, ptr %19, i64 -64
  %21 = ptrtoint ptr %0 to i64
  %22 = and i64 %21, 15
  %23 = icmp eq i64 %22, 0
  tail call void @llvm.assume(i1 %23)
  %24 = load <2 x i64>, ptr %20, align 1, !alias.scope !88, !noalias !91
  %25 = getelementptr inbounds i8, ptr %19, i64 -48
  %26 = load <2 x i64>, ptr %25, align 1, !alias.scope !88, !noalias !91
  %27 = getelementptr inbounds i8, ptr %19, i64 -32
  %28 = load <2 x i64>, ptr %27, align 1, !alias.scope !88, !noalias !91
  %29 = getelementptr inbounds i8, ptr %19, i64 -16
  %30 = load <2 x i64>, ptr %29, align 1, !alias.scope !88, !noalias !91
  %31 = load <2 x i64>, ptr %16, align 16, !noalias !93
  %32 = load <2 x i64>, ptr %17, align 16, !noalias !93
  %33 = load <2 x i64>, ptr %18, align 16, !noalias !93
  br label %34

34:                                               ; preds = %15, %109
  %35 = phi <2 x i64> [ %33, %15 ], [ %149, %109 ]
  %36 = phi <2 x i64> [ %32, %15 ], [ %139, %109 ]
  %37 = phi <2 x i64> [ %31, %15 ], [ %129, %109 ]
  %38 = phi <2 x i64> [ %14, %15 ], [ %119, %109 ]
  %39 = phi i64 [ 0, %15 ], [ %150, %109 ]
  %40 = mul i64 %39, %8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 %40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  br label %42

42:                                               ; preds = %42, %34
  %43 = phi <2 x i64> [ %35, %34 ], [ %106, %42 ]
  %44 = phi <2 x i64> [ %36, %34 ], [ %92, %42 ]
  %45 = phi <2 x i64> [ %37, %34 ], [ %78, %42 ]
  %46 = phi <2 x i64> [ %38, %34 ], [ %64, %42 ]
  %47 = phi i64 [ 0, %34 ], [ %107, %42 ]
  %48 = shl i64 %47, 6
  %49 = getelementptr inbounds nuw i8, ptr %41, i64 %48
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %50, i32 0, i32 3, i32 1), !noalias !97
  %51 = shl i64 %47, 3
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 %51
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %53 = load <2 x i64>, ptr %49, align 1, !alias.scope !104, !noalias !105
  %54 = load <2 x i64>, ptr %52, align 1, !alias.scope !108, !noalias !109
  %55 = xor <2 x i64> %54, %53
  %56 = bitcast <2 x i64> %55 to <4 x i32>
  %57 = shufflevector <4 x i32> %56, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %58 = bitcast <4 x i32> %57 to <2 x i64>
  %59 = and <2 x i64> %55, splat (i64 4294967295)
  %60 = and <2 x i64> %58, splat (i64 4294967295)
  %61 = mul nuw <2 x i64> %60, %59
  %62 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %63 = add <2 x i64> %46, %62
  %64 = add <2 x i64> %63, %61
  %65 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %66 = load <2 x i64>, ptr %65, align 1, !alias.scope !104, !noalias !105
  %67 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %68 = load <2 x i64>, ptr %67, align 1, !alias.scope !108, !noalias !109
  %69 = xor <2 x i64> %68, %66
  %70 = bitcast <2 x i64> %69 to <4 x i32>
  %71 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %72 = bitcast <4 x i32> %71 to <2 x i64>
  %73 = and <2 x i64> %69, splat (i64 4294967295)
  %74 = and <2 x i64> %72, splat (i64 4294967295)
  %75 = mul nuw <2 x i64> %74, %73
  %76 = shufflevector <2 x i64> %66, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %77 = add <2 x i64> %45, %76
  %78 = add <2 x i64> %77, %75
  %79 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %80 = load <2 x i64>, ptr %79, align 1, !alias.scope !104, !noalias !105
  %81 = getelementptr inbounds nuw i8, ptr %52, i64 32
  %82 = load <2 x i64>, ptr %81, align 1, !alias.scope !108, !noalias !109
  %83 = xor <2 x i64> %82, %80
  %84 = bitcast <2 x i64> %83 to <4 x i32>
  %85 = shufflevector <4 x i32> %84, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %86 = bitcast <4 x i32> %85 to <2 x i64>
  %87 = and <2 x i64> %83, splat (i64 4294967295)
  %88 = and <2 x i64> %86, splat (i64 4294967295)
  %89 = mul nuw <2 x i64> %88, %87
  %90 = shufflevector <2 x i64> %80, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %91 = add <2 x i64> %44, %90
  %92 = add <2 x i64> %91, %89
  %93 = getelementptr inbounds nuw i8, ptr %49, i64 48
  %94 = load <2 x i64>, ptr %93, align 1, !alias.scope !104, !noalias !105
  %95 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %96 = load <2 x i64>, ptr %95, align 1, !alias.scope !108, !noalias !109
  %97 = xor <2 x i64> %96, %94
  %98 = bitcast <2 x i64> %97 to <4 x i32>
  %99 = shufflevector <4 x i32> %98, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %100 = bitcast <4 x i32> %99 to <2 x i64>
  %101 = and <2 x i64> %97, splat (i64 4294967295)
  %102 = and <2 x i64> %100, splat (i64 4294967295)
  %103 = mul nuw <2 x i64> %102, %101
  %104 = shufflevector <2 x i64> %94, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %105 = add <2 x i64> %43, %104
  %106 = add <2 x i64> %105, %103
  %107 = add nuw nsw i64 %47, 1
  %108 = icmp eq i64 %107, %7
  br i1 %108, label %109, label %42, !llvm.loop !110

109:                                              ; preds = %42
  %110 = lshr <2 x i64> %64, splat (i64 47)
  %111 = xor <2 x i64> %110, %24
  %112 = xor <2 x i64> %111, %64
  %113 = bitcast <2 x i64> %112 to <4 x i32>
  %114 = shufflevector <4 x i32> %113, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %115 = bitcast <4 x i32> %114 to <2 x i64>
  %116 = and <2 x i64> %112, splat (i64 4294967295)
  %117 = mul nuw <2 x i64> %116, splat (i64 2654435761)
  %118 = mul <2 x i64> %115, splat (i64 -7046029290881679360)
  %119 = add <2 x i64> %118, %117
  %120 = lshr <2 x i64> %78, splat (i64 47)
  %121 = xor <2 x i64> %120, %26
  %122 = xor <2 x i64> %121, %78
  %123 = bitcast <2 x i64> %122 to <4 x i32>
  %124 = shufflevector <4 x i32> %123, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %125 = bitcast <4 x i32> %124 to <2 x i64>
  %126 = and <2 x i64> %122, splat (i64 4294967295)
  %127 = mul nuw <2 x i64> %126, splat (i64 2654435761)
  %128 = mul <2 x i64> %125, splat (i64 -7046029290881679360)
  %129 = add <2 x i64> %128, %127
  %130 = lshr <2 x i64> %92, splat (i64 47)
  %131 = xor <2 x i64> %130, %28
  %132 = xor <2 x i64> %131, %92
  %133 = bitcast <2 x i64> %132 to <4 x i32>
  %134 = shufflevector <4 x i32> %133, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %135 = bitcast <4 x i32> %134 to <2 x i64>
  %136 = and <2 x i64> %132, splat (i64 4294967295)
  %137 = mul nuw <2 x i64> %136, splat (i64 2654435761)
  %138 = mul <2 x i64> %135, splat (i64 -7046029290881679360)
  %139 = add <2 x i64> %138, %137
  %140 = lshr <2 x i64> %106, splat (i64 47)
  %141 = xor <2 x i64> %140, %30
  %142 = xor <2 x i64> %141, %106
  %143 = bitcast <2 x i64> %142 to <4 x i32>
  %144 = shufflevector <4 x i32> %143, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %145 = bitcast <4 x i32> %144 to <2 x i64>
  %146 = and <2 x i64> %142, splat (i64 4294967295)
  %147 = mul nuw <2 x i64> %146, splat (i64 2654435761)
  %148 = mul <2 x i64> %145, splat (i64 -7046029290881679360)
  %149 = add <2 x i64> %148, %147
  %150 = add nuw i64 %39, 1
  %151 = icmp ult i64 %150, %10
  br i1 %151, label %34, label %152, !llvm.loop !111

152:                                              ; preds = %109
  store <2 x i64> %129, ptr %16, align 16, !noalias !93
  store <2 x i64> %139, ptr %17, align 16, !noalias !93
  store <2 x i64> %149, ptr %18, align 16, !noalias !93
  br label %153

153:                                              ; preds = %152, %5
  %154 = phi <2 x i64> [ %119, %152 ], [ %14, %5 ]
  %155 = icmp ugt i64 %2, 64
  tail call void @llvm.assume(i1 %155)
  %156 = mul i64 %10, %8
  %157 = lshr i64 %11, 6
  %158 = lshr i64 %4, 3
  %159 = icmp samesign ule i64 %157, %158
  tail call void @llvm.assume(i1 %159)
  %160 = getelementptr inbounds nuw i8, ptr %1, i64 %156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %161 = icmp ult i64 %11, 64
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %161, label %163, label %172

163:                                              ; preds = %153
  %164 = load <2 x i64>, ptr %162, align 16, !alias.scope !82, !noalias !85
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %166 = load <2 x i64>, ptr %165, align 16, !alias.scope !82, !noalias !85
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %168 = load <2 x i64>, ptr %167, align 16, !alias.scope !82, !noalias !85
  %169 = ptrtoint ptr %0 to i64
  %170 = and i64 %169, 15
  %171 = icmp eq i64 %170, 0
  br label %245

172:                                              ; preds = %153
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %175 = load <2 x i64>, ptr %162, align 16, !alias.scope !119, !noalias !122
  %176 = load <2 x i64>, ptr %173, align 16, !alias.scope !119, !noalias !122
  %177 = load <2 x i64>, ptr %174, align 16, !alias.scope !119, !noalias !122
  br label %178

178:                                              ; preds = %178, %172
  %179 = phi <2 x i64> [ %177, %172 ], [ %242, %178 ]
  %180 = phi <2 x i64> [ %176, %172 ], [ %228, %178 ]
  %181 = phi <2 x i64> [ %175, %172 ], [ %214, %178 ]
  %182 = phi <2 x i64> [ %154, %172 ], [ %200, %178 ]
  %183 = phi i64 [ 0, %172 ], [ %243, %178 ]
  %184 = shl i64 %183, 6
  %185 = getelementptr inbounds nuw i8, ptr %160, i64 %184
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %186, i32 0, i32 3, i32 1), !noalias !117
  %187 = shl i64 %183, 3
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 %187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %189 = load <2 x i64>, ptr %185, align 1, !alias.scope !128, !noalias !129
  %190 = load <2 x i64>, ptr %188, align 1, !alias.scope !130, !noalias !131
  %191 = xor <2 x i64> %190, %189
  %192 = bitcast <2 x i64> %191 to <4 x i32>
  %193 = shufflevector <4 x i32> %192, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %194 = bitcast <4 x i32> %193 to <2 x i64>
  %195 = and <2 x i64> %191, splat (i64 4294967295)
  %196 = and <2 x i64> %194, splat (i64 4294967295)
  %197 = mul nuw <2 x i64> %196, %195
  %198 = shufflevector <2 x i64> %189, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %199 = add <2 x i64> %182, %198
  %200 = add <2 x i64> %199, %197
  %201 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %202 = load <2 x i64>, ptr %201, align 1, !alias.scope !128, !noalias !129
  %203 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %204 = load <2 x i64>, ptr %203, align 1, !alias.scope !130, !noalias !131
  %205 = xor <2 x i64> %204, %202
  %206 = bitcast <2 x i64> %205 to <4 x i32>
  %207 = shufflevector <4 x i32> %206, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %208 = bitcast <4 x i32> %207 to <2 x i64>
  %209 = and <2 x i64> %205, splat (i64 4294967295)
  %210 = and <2 x i64> %208, splat (i64 4294967295)
  %211 = mul nuw <2 x i64> %210, %209
  %212 = shufflevector <2 x i64> %202, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %213 = add <2 x i64> %181, %212
  %214 = add <2 x i64> %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %216 = load <2 x i64>, ptr %215, align 1, !alias.scope !128, !noalias !129
  %217 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %218 = load <2 x i64>, ptr %217, align 1, !alias.scope !130, !noalias !131
  %219 = xor <2 x i64> %218, %216
  %220 = bitcast <2 x i64> %219 to <4 x i32>
  %221 = shufflevector <4 x i32> %220, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %222 = bitcast <4 x i32> %221 to <2 x i64>
  %223 = and <2 x i64> %219, splat (i64 4294967295)
  %224 = and <2 x i64> %222, splat (i64 4294967295)
  %225 = mul nuw <2 x i64> %224, %223
  %226 = shufflevector <2 x i64> %216, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %227 = add <2 x i64> %180, %226
  %228 = add <2 x i64> %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %185, i64 48
  %230 = load <2 x i64>, ptr %229, align 1, !alias.scope !128, !noalias !129
  %231 = getelementptr inbounds nuw i8, ptr %188, i64 48
  %232 = load <2 x i64>, ptr %231, align 1, !alias.scope !130, !noalias !131
  %233 = xor <2 x i64> %232, %230
  %234 = bitcast <2 x i64> %233 to <4 x i32>
  %235 = shufflevector <4 x i32> %234, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %236 = bitcast <4 x i32> %235 to <2 x i64>
  %237 = and <2 x i64> %233, splat (i64 4294967295)
  %238 = and <2 x i64> %236, splat (i64 4294967295)
  %239 = mul nuw <2 x i64> %238, %237
  %240 = shufflevector <2 x i64> %230, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %241 = add <2 x i64> %179, %240
  %242 = add <2 x i64> %241, %239
  %243 = add nuw i64 %183, 1
  %244 = icmp eq i64 %243, %157
  br i1 %244, label %245, label %178, !llvm.loop !110

245:                                              ; preds = %178, %163
  %246 = phi i1 [ %171, %163 ], [ true, %178 ]
  %247 = phi <2 x i64> [ %168, %163 ], [ %242, %178 ]
  %248 = phi <2 x i64> [ %166, %163 ], [ %228, %178 ]
  %249 = phi <2 x i64> [ %164, %163 ], [ %214, %178 ]
  %250 = phi <2 x i64> [ %154, %163 ], [ %200, %178 ]
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %252 = getelementptr inbounds i8, ptr %251, i64 -64
  %253 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %254 = getelementptr inbounds i8, ptr %253, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.assume(i1 %246)
  %255 = load <2 x i64>, ptr %252, align 1, !alias.scope !132, !noalias !134
  %256 = load <2 x i64>, ptr %254, align 1, !alias.scope !133, !noalias !135
  %257 = xor <2 x i64> %256, %255
  %258 = bitcast <2 x i64> %257 to <4 x i32>
  %259 = shufflevector <4 x i32> %258, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %260 = bitcast <4 x i32> %259 to <2 x i64>
  %261 = and <2 x i64> %257, splat (i64 4294967295)
  %262 = and <2 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <2 x i64> %262, %261
  %264 = shufflevector <2 x i64> %255, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %265 = add <2 x i64> %250, %264
  %266 = add <2 x i64> %265, %263
  store <2 x i64> %266, ptr %0, align 16, !alias.scope !82, !noalias !85
  %267 = getelementptr inbounds i8, ptr %251, i64 -48
  %268 = load <2 x i64>, ptr %267, align 1, !alias.scope !132, !noalias !134
  %269 = getelementptr inbounds i8, ptr %253, i64 -55
  %270 = load <2 x i64>, ptr %269, align 1, !alias.scope !133, !noalias !135
  %271 = xor <2 x i64> %270, %268
  %272 = bitcast <2 x i64> %271 to <4 x i32>
  %273 = shufflevector <4 x i32> %272, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %274 = bitcast <4 x i32> %273 to <2 x i64>
  %275 = and <2 x i64> %271, splat (i64 4294967295)
  %276 = and <2 x i64> %274, splat (i64 4294967295)
  %277 = mul nuw <2 x i64> %276, %275
  %278 = shufflevector <2 x i64> %268, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %280 = add <2 x i64> %249, %278
  %281 = add <2 x i64> %280, %277
  store <2 x i64> %281, ptr %279, align 16, !alias.scope !82, !noalias !85
  %282 = getelementptr inbounds i8, ptr %251, i64 -32
  %283 = load <2 x i64>, ptr %282, align 1, !alias.scope !132, !noalias !134
  %284 = getelementptr inbounds i8, ptr %253, i64 -39
  %285 = load <2 x i64>, ptr %284, align 1, !alias.scope !133, !noalias !135
  %286 = xor <2 x i64> %285, %283
  %287 = bitcast <2 x i64> %286 to <4 x i32>
  %288 = shufflevector <4 x i32> %287, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %289 = bitcast <4 x i32> %288 to <2 x i64>
  %290 = and <2 x i64> %286, splat (i64 4294967295)
  %291 = and <2 x i64> %289, splat (i64 4294967295)
  %292 = mul nuw <2 x i64> %291, %290
  %293 = shufflevector <2 x i64> %283, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %295 = add <2 x i64> %248, %293
  %296 = add <2 x i64> %295, %292
  store <2 x i64> %296, ptr %294, align 16, !alias.scope !82, !noalias !85
  %297 = getelementptr inbounds i8, ptr %251, i64 -16
  %298 = load <2 x i64>, ptr %297, align 1, !alias.scope !132, !noalias !134
  %299 = getelementptr inbounds i8, ptr %253, i64 -23
  %300 = load <2 x i64>, ptr %299, align 1, !alias.scope !133, !noalias !135
  %301 = xor <2 x i64> %300, %298
  %302 = bitcast <2 x i64> %301 to <4 x i32>
  %303 = shufflevector <4 x i32> %302, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %304 = bitcast <4 x i32> %303 to <2 x i64>
  %305 = and <2 x i64> %301, splat (i64 4294967295)
  %306 = and <2 x i64> %304, splat (i64 4294967295)
  %307 = mul nuw <2 x i64> %306, %305
  %308 = shufflevector <2 x i64> %298, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %310 = add <2 x i64> %247, %308
  %311 = add <2 x i64> %310, %307
  store <2 x i64> %311, ptr %309, align 16, !alias.scope !82, !noalias !85
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #10 {
  %6 = alloca [8 x i64], align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !139
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %3, i64 noundef %4)
  %7 = icmp ugt i64 %4, 74
  call void @llvm.assume(i1 %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %9 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %10 = load i64, ptr %6, align 16, !alias.scope !151, !noalias !152
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %12 = load i64, ptr %11, align 8, !alias.scope !151, !noalias !152
  %13 = load i64, ptr %8, align 1, !alias.scope !153, !noalias !154
  %14 = getelementptr i8, ptr %3, i64 19
  %15 = load i64, ptr %14, align 1, !alias.scope !153, !noalias !154
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
  %27 = load i64, ptr %25, align 16, !alias.scope !151, !noalias !152
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %29 = load i64, ptr %28, align 8, !alias.scope !151, !noalias !152
  %30 = load i64, ptr %26, align 1, !alias.scope !153, !noalias !154
  %31 = getelementptr i8, ptr %3, i64 35
  %32 = load i64, ptr %31, align 1, !alias.scope !153, !noalias !154
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
  %44 = load i64, ptr %42, align 16, !alias.scope !151, !noalias !152
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %46 = load i64, ptr %45, align 8, !alias.scope !151, !noalias !152
  %47 = load i64, ptr %43, align 1, !alias.scope !153, !noalias !154
  %48 = getelementptr i8, ptr %3, i64 51
  %49 = load i64, ptr %48, align 1, !alias.scope !153, !noalias !154
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
  %61 = load i64, ptr %59, align 16, !alias.scope !151, !noalias !152
  %62 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %63 = load i64, ptr %62, align 8, !alias.scope !151, !noalias !152
  %64 = load i64, ptr %60, align 1, !alias.scope !153, !noalias !154
  %65 = getelementptr i8, ptr %3, i64 67
  %66 = load i64, ptr %65, align 1, !alias.scope !153, !noalias !154
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !139
  ret i64 %80
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %4, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 192)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %6 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %7 = load i64, ptr %4, align 16, !alias.scope !170, !noalias !171
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8, !alias.scope !170, !noalias !171
  %10 = load i64, ptr %5, align 1, !alias.scope !171, !noalias !170
  %11 = getelementptr i8, ptr %2, i64 19
  %12 = load i64, ptr %11, align 1, !alias.scope !171, !noalias !170
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
  %24 = load i64, ptr %22, align 16, !alias.scope !170, !noalias !171
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %26 = load i64, ptr %25, align 8, !alias.scope !170, !noalias !171
  %27 = load i64, ptr %23, align 1, !alias.scope !171, !noalias !170
  %28 = getelementptr i8, ptr %2, i64 35
  %29 = load i64, ptr %28, align 1, !alias.scope !171, !noalias !170
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
  %41 = load i64, ptr %39, align 16, !alias.scope !170, !noalias !171
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %43 = load i64, ptr %42, align 8, !alias.scope !170, !noalias !171
  %44 = load i64, ptr %40, align 1, !alias.scope !171, !noalias !170
  %45 = getelementptr i8, ptr %2, i64 51
  %46 = load i64, ptr %45, align 1, !alias.scope !171, !noalias !170
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
  %58 = load i64, ptr %56, align 16, !alias.scope !170, !noalias !171
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %60 = load i64, ptr %59, align 8, !alias.scope !170, !noalias !171
  %61 = load i64, ptr %57, align 1, !alias.scope !171, !noalias !170
  %62 = getelementptr i8, ptr %2, i64 67
  %63 = load i64, ptr %62, align 1, !alias.scope !171, !noalias !170
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
  %81 = load i64, ptr %78, align 1, !alias.scope !172, !noalias !175
  %82 = getelementptr i8, ptr %2, i64 125
  %83 = load i64, ptr %82, align 1, !alias.scope !172, !noalias !175
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
  %94 = load i64, ptr %93, align 1, !alias.scope !172, !noalias !175
  %95 = getelementptr i8, ptr %2, i64 141
  %96 = load i64, ptr %95, align 1, !alias.scope !172, !noalias !175
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
  %107 = load i64, ptr %106, align 1, !alias.scope !172, !noalias !175
  %108 = getelementptr i8, ptr %2, i64 157
  %109 = load i64, ptr %108, align 1, !alias.scope !172, !noalias !175
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
  %120 = load i64, ptr %119, align 1, !alias.scope !172, !noalias !175
  %121 = getelementptr i8, ptr %2, i64 173
  %122 = load i64, ptr %121, align 1, !alias.scope !172, !noalias !175
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
  %137 = insertvalue { i64, i64 } poison, i64 %77, 0
  %138 = insertvalue { i64, i64 } %137, i64 %136, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret { i64, i64 } %138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #11

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { nounwind memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH32_consumeLong: argument 1"}
!7 = distinct !{!7, !"XXH32_consumeLong"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH32_consumeLong: argument 0"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH64_consumeLong: argument 1"}
!19 = distinct !{!19, !"XXH64_consumeLong"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"XXH64_consumeLong: argument 0"}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !11}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_len_17to128_128b: argument 0"}
!28 = distinct !{!28, !"XXH3_len_17to128_128b"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_len_129to240_128b: argument 0"}
!31 = distinct !{!31, !"XXH3_len_129to240_128b"}
!32 = distinct !{!32, !11}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!35 = distinct !{!35, !"XXH3_hashLong_128b_withSeed_internal"}
!36 = !{i64 2148824904}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_len_17to128_64b: argument 0"}
!40 = distinct !{!40, !"XXH3_len_17to128_64b"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"XXH3_len_17to128_64b: argument 1"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_len_129to240_64b: argument 0"}
!45 = distinct !{!45, !"XXH3_len_129to240_64b"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"XXH3_len_129to240_64b: argument 1"}
!48 = !{i64 2148822562}
!49 = distinct !{!49, !11}
!50 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"XXH3_hashLong_64b_internal: argument 0"}
!53 = distinct !{!53, !"XXH3_hashLong_64b_internal"}
!54 = distinct !{!54, !53, !"XXH3_hashLong_64b_internal: argument 1"}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"XXH3_mergeAccs: argument 0"}
!57 = distinct !{!57, !"XXH3_mergeAccs"}
!58 = distinct !{!58, !59, !"XXH3_finalizeLong_64b: argument 0"}
!59 = distinct !{!59, !"XXH3_finalizeLong_64b"}
!60 = !{!61, !62, !52, !54}
!61 = distinct !{!61, !57, !"XXH3_mergeAccs: argument 1"}
!62 = distinct !{!62, !59, !"XXH3_finalizeLong_64b: argument 1"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_hashLong_64b_internal: argument 1"}
!65 = distinct !{!65, !"XXH3_hashLong_64b_internal"}
!66 = !{!67, !64}
!67 = distinct !{!67, !65, !"XXH3_hashLong_64b_internal: argument 0"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"XXH3_finalizeLong_64b: argument 0"}
!70 = distinct !{!70, !"XXH3_finalizeLong_64b"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"XXH3_finalizeLong_64b: argument 1"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_mergeAccs: argument 0"}
!75 = distinct !{!75, !"XXH3_mergeAccs"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_mergeAccs: argument 1"}
!78 = !{!74, !69}
!79 = !{!77, !72, !67, !64}
!80 = !{!77, !72, !64}
!81 = !{!74, !69, !67}
!82 = !{!83}
!83 = distinct !{!83, !84, !"XXH3_accumulate_512_sse2: argument 0"}
!84 = distinct !{!84, !"XXH3_accumulate_512_sse2"}
!85 = !{!86, !87}
!86 = distinct !{!86, !84, !"XXH3_accumulate_512_sse2: argument 1"}
!87 = distinct !{!87, !84, !"XXH3_accumulate_512_sse2: argument 2"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"XXH3_scrambleAcc_sse2: argument 1"}
!90 = distinct !{!90, !"XXH3_scrambleAcc_sse2"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"XXH3_scrambleAcc_sse2: argument 0"}
!93 = !{}
!94 = !{!95}
!95 = distinct !{!95, !96, !"XXH3_accumulate_sse2: argument 1"}
!96 = distinct !{!96, !"XXH3_accumulate_sse2"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"XXH3_accumulate_sse2: argument 2"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_accumulate_512_sse2: argument 1"}
!101 = distinct !{!101, !"XXH3_accumulate_512_sse2"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"XXH3_accumulate_512_sse2: argument 2"}
!104 = !{!100, !95}
!105 = !{!106, !103, !107, !98}
!106 = distinct !{!106, !101, !"XXH3_accumulate_512_sse2: argument 0"}
!107 = distinct !{!107, !96, !"XXH3_accumulate_sse2: argument 0"}
!108 = !{!103, !98}
!109 = !{!106, !100, !107, !95}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = !{!113}
!113 = distinct !{!113, !114, !"XXH3_accumulate_sse2: argument 0"}
!114 = distinct !{!114, !"XXH3_accumulate_sse2"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"XXH3_accumulate_sse2: argument 1"}
!117 = !{!118}
!118 = distinct !{!118, !114, !"XXH3_accumulate_sse2: argument 2"}
!119 = !{!120, !113}
!120 = distinct !{!120, !121, !"XXH3_accumulate_512_sse2: argument 0"}
!121 = distinct !{!121, !"XXH3_accumulate_512_sse2"}
!122 = !{!123, !124, !116, !118}
!123 = distinct !{!123, !121, !"XXH3_accumulate_512_sse2: argument 1"}
!124 = distinct !{!124, !121, !"XXH3_accumulate_512_sse2: argument 2"}
!125 = !{!120}
!126 = !{!123}
!127 = !{!124}
!128 = !{!123, !116}
!129 = !{!120, !124, !113, !118}
!130 = !{!124, !118}
!131 = !{!120, !123, !113, !116}
!132 = !{!86}
!133 = !{!87}
!134 = !{!83, !87}
!135 = !{!83, !86}
!136 = !{!137}
!137 = distinct !{!137, !138, !"XXH3_hashLong_64b_internal: argument 1"}
!138 = distinct !{!138, !"XXH3_hashLong_64b_internal"}
!139 = !{!140, !137}
!140 = distinct !{!140, !138, !"XXH3_hashLong_64b_internal: argument 0"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"XXH3_finalizeLong_64b: argument 0"}
!143 = distinct !{!143, !"XXH3_finalizeLong_64b"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"XXH3_finalizeLong_64b: argument 1"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"XXH3_mergeAccs: argument 0"}
!148 = distinct !{!148, !"XXH3_mergeAccs"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"XXH3_mergeAccs: argument 1"}
!151 = !{!147, !142}
!152 = !{!150, !145, !140, !137}
!153 = !{!150, !145, !137}
!154 = !{!147, !142, !140}
!155 = !{!156}
!156 = distinct !{!156, !157, !"XXH3_finalizeLong_128b: argument 0"}
!157 = distinct !{!157, !"XXH3_finalizeLong_128b"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"XXH3_finalizeLong_128b: argument 1"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"XXH3_finalizeLong_64b: argument 0"}
!162 = distinct !{!162, !"XXH3_finalizeLong_64b"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"XXH3_finalizeLong_64b: argument 1"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"XXH3_mergeAccs: argument 0"}
!167 = distinct !{!167, !"XXH3_mergeAccs"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"XXH3_mergeAccs: argument 1"}
!170 = !{!166, !161, !156}
!171 = !{!169, !164, !159}
!172 = !{!173, !159}
!173 = distinct !{!173, !174, !"XXH3_mergeAccs: argument 1"}
!174 = distinct !{!174, !"XXH3_mergeAccs"}
!175 = !{!176, !156}
!176 = distinct !{!176, !174, !"XXH3_mergeAccs: argument 0"}
