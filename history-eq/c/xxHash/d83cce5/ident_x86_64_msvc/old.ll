; ModuleID = 'ident_x86_64_msvc/wrapper.c'
source_filename = "ident_x86_64_msvc/wrapper.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.0"

%struct.XXH_INLINE_XXH128_hash_t = type { i64, i64 }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -15
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %40, %11 ]
  %13 = phi i32 [ %8, %5 ], [ %21, %11 ]
  %14 = phi i32 [ %9, %5 ], [ %27, %11 ]
  %15 = phi i32 [ %2, %5 ], [ %33, %11 ]
  %16 = phi i32 [ %10, %5 ], [ %39, %11 ]
  %17 = load i32, ptr %12, align 1
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %14
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %15
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %35 = load i32, ptr %34, align 1
  %36 = mul i32 %35, -2048144777
  %37 = add i32 %36, %16
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %41 = icmp ult ptr %40, %7
  br i1 %41, label %11, label %42, !llvm.loop !5

42:                                               ; preds = %11
  %43 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 7)
  %45 = add i32 %44, %43
  %46 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 12)
  %47 = add i32 %45, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 18)
  %49 = add i32 %47, %48
  br label %52

50:                                               ; preds = %3
  %51 = add i32 %2, 374761393
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi i32 [ %49, %42 ], [ %51, %50 ]
  %54 = phi ptr [ %40, %42 ], [ %0, %50 ]
  %55 = trunc i64 %1 to i32
  %56 = add i32 %53, %55
  %57 = and i64 %1, 15
  switch i64 %57, label %205 [
    i64 12, label %58
    i64 8, label %65
    i64 4, label %74
    i64 13, label %82
    i64 9, label %89
    i64 5, label %98
    i64 14, label %113
    i64 10, label %120
    i64 6, label %129
    i64 15, label %151
    i64 11, label %158
    i64 7, label %167
    i64 3, label %176
    i64 2, label %186
    i64 1, label %196
    i64 0, label %206
  ]

58:                                               ; preds = %52
  %59 = load i32, ptr %54, align 1
  %60 = mul i32 %59, -1028477379
  %61 = add i32 %60, %56
  %62 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 17)
  %64 = mul i32 %63, 668265263
  br label %65

65:                                               ; preds = %58, %52
  %66 = phi ptr [ %54, %52 ], [ %62, %58 ]
  %67 = phi i32 [ %56, %52 ], [ %64, %58 ]
  %68 = load i32, ptr %66, align 1
  %69 = mul i32 %68, -1028477379
  %70 = add i32 %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %73 = mul i32 %72, 668265263
  br label %74

74:                                               ; preds = %65, %52
  %75 = phi ptr [ %54, %52 ], [ %71, %65 ]
  %76 = phi i32 [ %56, %52 ], [ %73, %65 ]
  %77 = load i32, ptr %75, align 1
  %78 = mul i32 %77, -1028477379
  %79 = add i32 %78, %76
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 17)
  %81 = mul i32 %80, 668265263
  br label %206

82:                                               ; preds = %52
  %83 = load i32, ptr %54, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %56
  %86 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  br label %89

89:                                               ; preds = %82, %52
  %90 = phi ptr [ %54, %52 ], [ %86, %82 ]
  %91 = phi i32 [ %56, %52 ], [ %88, %82 ]
  %92 = load i32, ptr %90, align 1
  %93 = mul i32 %92, -1028477379
  %94 = add i32 %93, %91
  %95 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %96 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 17)
  %97 = mul i32 %96, 668265263
  br label %98

98:                                               ; preds = %89, %52
  %99 = phi ptr [ %54, %52 ], [ %95, %89 ]
  %100 = phi i32 [ %56, %52 ], [ %97, %89 ]
  %101 = load i32, ptr %99, align 1
  %102 = mul i32 %101, -1028477379
  %103 = add i32 %102, %100
  %104 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %105 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 17)
  %106 = mul i32 %105, 668265263
  %107 = load i8, ptr %104, align 1
  %108 = zext i8 %107 to i32
  %109 = mul i32 %108, 374761393
  %110 = add i32 %106, %109
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 11)
  %112 = mul i32 %111, -1640531535
  br label %206

113:                                              ; preds = %52
  %114 = load i32, ptr %54, align 1
  %115 = mul i32 %114, -1028477379
  %116 = add i32 %115, %56
  %117 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 17)
  %119 = mul i32 %118, 668265263
  br label %120

120:                                              ; preds = %113, %52
  %121 = phi ptr [ %54, %52 ], [ %117, %113 ]
  %122 = phi i32 [ %56, %52 ], [ %119, %113 ]
  %123 = load i32, ptr %121, align 1
  %124 = mul i32 %123, -1028477379
  %125 = add i32 %124, %122
  %126 = getelementptr inbounds nuw i8, ptr %121, i64 4
  %127 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 17)
  %128 = mul i32 %127, 668265263
  br label %129

129:                                              ; preds = %120, %52
  %130 = phi ptr [ %54, %52 ], [ %126, %120 ]
  %131 = phi i32 [ %56, %52 ], [ %128, %120 ]
  %132 = load i32, ptr %130, align 1
  %133 = mul i32 %132, -1028477379
  %134 = add i32 %133, %131
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %136 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 17)
  %137 = mul i32 %136, 668265263
  %138 = getelementptr inbounds nuw i8, ptr %130, i64 5
  %139 = load i8, ptr %135, align 1
  %140 = zext i8 %139 to i32
  %141 = mul i32 %140, 374761393
  %142 = add i32 %137, %141
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 11)
  %144 = mul i32 %143, -1640531535
  %145 = load i8, ptr %138, align 1
  %146 = zext i8 %145 to i32
  %147 = mul i32 %146, 374761393
  %148 = add i32 %144, %147
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 11)
  %150 = mul i32 %149, -1640531535
  br label %206

151:                                              ; preds = %52
  %152 = load i32, ptr %54, align 1
  %153 = mul i32 %152, -1028477379
  %154 = add i32 %153, %56
  %155 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %156 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 17)
  %157 = mul i32 %156, 668265263
  br label %158

158:                                              ; preds = %151, %52
  %159 = phi ptr [ %54, %52 ], [ %155, %151 ]
  %160 = phi i32 [ %56, %52 ], [ %157, %151 ]
  %161 = load i32, ptr %159, align 1
  %162 = mul i32 %161, -1028477379
  %163 = add i32 %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %165 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 17)
  %166 = mul i32 %165, 668265263
  br label %167

167:                                              ; preds = %158, %52
  %168 = phi ptr [ %54, %52 ], [ %164, %158 ]
  %169 = phi i32 [ %56, %52 ], [ %166, %158 ]
  %170 = load i32, ptr %168, align 1
  %171 = mul i32 %170, -1028477379
  %172 = add i32 %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %168, i64 4
  %174 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 17)
  %175 = mul i32 %174, 668265263
  br label %176

176:                                              ; preds = %167, %52
  %177 = phi ptr [ %54, %52 ], [ %173, %167 ]
  %178 = phi i32 [ %56, %52 ], [ %175, %167 ]
  %179 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %180 = load i8, ptr %177, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %182, %178
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  br label %186

186:                                              ; preds = %176, %52
  %187 = phi ptr [ %54, %52 ], [ %179, %176 ]
  %188 = phi i32 [ %56, %52 ], [ %185, %176 ]
  %189 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %190 = load i8, ptr %187, align 1
  %191 = zext i8 %190 to i32
  %192 = mul i32 %191, 374761393
  %193 = add i32 %192, %188
  %194 = tail call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 11)
  %195 = mul i32 %194, -1640531535
  br label %196

196:                                              ; preds = %186, %52
  %197 = phi ptr [ %54, %52 ], [ %189, %186 ]
  %198 = phi i32 [ %56, %52 ], [ %195, %186 ]
  %199 = load i8, ptr %197, align 1
  %200 = zext i8 %199 to i32
  %201 = mul i32 %200, 374761393
  %202 = add i32 %201, %198
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 11)
  %204 = mul i32 %203, -1640531535
  br label %206

205:                                              ; preds = %52
  unreachable

206:                                              ; preds = %52, %74, %98, %129, %196
  %207 = phi i32 [ %150, %129 ], [ %112, %98 ], [ %81, %74 ], [ %56, %52 ], [ %204, %196 ]
  %208 = lshr i32 %207, 15
  %209 = xor i32 %208, %207
  %210 = mul i32 %209, -2048144777
  %211 = lshr i32 %210, 13
  %212 = xor i32 %211, %210
  %213 = mul i32 %212, -1028477379
  %214 = lshr i32 %213, 16
  %215 = xor i32 %214, %213
  ret i32 %215
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 31
  br i1 %4, label %5, label %74

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -32
  %8 = add i64 %2, 6983438078262162902
  %9 = add i64 %2, -4417276706812531889
  %10 = add i64 %2, 7046029288634856825
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %40, %11 ]
  %13 = phi i64 [ %8, %5 ], [ %21, %11 ]
  %14 = phi i64 [ %9, %5 ], [ %27, %11 ]
  %15 = phi i64 [ %2, %5 ], [ %33, %11 ]
  %16 = phi i64 [ %10, %5 ], [ %39, %11 ]
  %17 = load i64, ptr %12, align 1
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, %13
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %23 = load i64, ptr %22, align 1
  %24 = mul i64 %23, -4417276706812531889
  %25 = add i64 %24, %14
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %29 = load i64, ptr %28, align 1
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %15
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %16
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %41 = icmp ugt ptr %40, %7
  br i1 %41, label %42, label %11, !llvm.loop !7

42:                                               ; preds = %11
  %43 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 1)
  %44 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 7)
  %45 = add i64 %44, %43
  %46 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 12)
  %47 = add i64 %45, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 18)
  %49 = add i64 %47, %48
  %50 = mul i64 %20, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %26, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  %62 = mul i64 %32, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %38, -2381459717836149591
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  br label %76

74:                                               ; preds = %3
  %75 = add i64 %2, 2870177450012600261
  br label %76

76:                                               ; preds = %74, %42
  %77 = phi i64 [ %73, %42 ], [ %75, %74 ]
  %78 = phi ptr [ %40, %42 ], [ %0, %74 ]
  %79 = add i64 %77, %1
  %80 = and i64 %1, 31
  switch i64 %80, label %482 [
    i64 24, label %81
    i64 16, label %91
    i64 8, label %103
    i64 28, label %114
    i64 20, label %124
    i64 12, label %136
    i64 4, label %148
    i64 25, label %158
    i64 17, label %168
    i64 9, label %180
    i64 29, label %198
    i64 21, label %208
    i64 13, label %220
    i64 5, label %232
    i64 26, label %249
    i64 18, label %259
    i64 10, label %271
    i64 30, label %296
    i64 22, label %306
    i64 14, label %318
    i64 6, label %330
    i64 27, label %354
    i64 19, label %364
    i64 11, label %376
    i64 31, label %408
    i64 23, label %418
    i64 15, label %430
    i64 7, label %442
    i64 3, label %453
    i64 2, label %463
    i64 1, label %473
    i64 0, label %483
  ]

81:                                               ; preds = %76
  %82 = load i64, ptr %78, align 1
  %83 = mul i64 %82, -4417276706812531889
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 31)
  %85 = mul i64 %84, -7046029288634856825
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %87 = xor i64 %85, %79
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 27)
  %89 = mul i64 %88, -7046029288634856825
  %90 = add i64 %89, -8796714831421723037
  br label %91

91:                                               ; preds = %81, %76
  %92 = phi i64 [ %79, %76 ], [ %90, %81 ]
  %93 = phi ptr [ %78, %76 ], [ %86, %81 ]
  %94 = load i64, ptr %93, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %99 = xor i64 %97, %92
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  br label %103

103:                                              ; preds = %91, %76
  %104 = phi i64 [ %79, %76 ], [ %102, %91 ]
  %105 = phi ptr [ %78, %76 ], [ %98, %91 ]
  %106 = load i64, ptr %105, align 1
  %107 = mul i64 %106, -4417276706812531889
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 31)
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %109, %104
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 27)
  %112 = mul i64 %111, -7046029288634856825
  %113 = add i64 %112, -8796714831421723037
  br label %483

114:                                              ; preds = %76
  %115 = load i64, ptr %78, align 1
  %116 = mul i64 %115, -4417276706812531889
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 31)
  %118 = mul i64 %117, -7046029288634856825
  %119 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %120 = xor i64 %118, %79
  %121 = tail call i64 @llvm.fshl.i64(i64 %120, i64 %120, i64 27)
  %122 = mul i64 %121, -7046029288634856825
  %123 = add i64 %122, -8796714831421723037
  br label %124

124:                                              ; preds = %114, %76
  %125 = phi i64 [ %79, %76 ], [ %123, %114 ]
  %126 = phi ptr [ %78, %76 ], [ %119, %114 ]
  %127 = load i64, ptr %126, align 1
  %128 = mul i64 %127, -4417276706812531889
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 31)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %126, i64 8
  %132 = xor i64 %130, %125
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 27)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add i64 %134, -8796714831421723037
  br label %136

136:                                              ; preds = %124, %76
  %137 = phi i64 [ %79, %76 ], [ %135, %124 ]
  %138 = phi ptr [ %78, %76 ], [ %131, %124 ]
  %139 = load i64, ptr %138, align 1
  %140 = mul i64 %139, -4417276706812531889
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 31)
  %142 = mul i64 %141, -7046029288634856825
  %143 = getelementptr inbounds nuw i8, ptr %138, i64 8
  %144 = xor i64 %142, %137
  %145 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 27)
  %146 = mul i64 %145, -7046029288634856825
  %147 = add i64 %146, -8796714831421723037
  br label %148

148:                                              ; preds = %136, %76
  %149 = phi i64 [ %79, %76 ], [ %147, %136 ]
  %150 = phi ptr [ %78, %76 ], [ %143, %136 ]
  %151 = load i32, ptr %150, align 1
  %152 = zext i32 %151 to i64
  %153 = mul i64 %152, -7046029288634856825
  %154 = xor i64 %153, %149
  %155 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 23)
  %156 = mul i64 %155, -4417276706812531889
  %157 = add i64 %156, 1609587929392839161
  br label %483

158:                                              ; preds = %76
  %159 = load i64, ptr %78, align 1
  %160 = mul i64 %159, -4417276706812531889
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 31)
  %162 = mul i64 %161, -7046029288634856825
  %163 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %164 = xor i64 %162, %79
  %165 = tail call i64 @llvm.fshl.i64(i64 %164, i64 %164, i64 27)
  %166 = mul i64 %165, -7046029288634856825
  %167 = add i64 %166, -8796714831421723037
  br label %168

168:                                              ; preds = %158, %76
  %169 = phi i64 [ %79, %76 ], [ %167, %158 ]
  %170 = phi ptr [ %78, %76 ], [ %163, %158 ]
  %171 = load i64, ptr %170, align 1
  %172 = mul i64 %171, -4417276706812531889
  %173 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 31)
  %174 = mul i64 %173, -7046029288634856825
  %175 = getelementptr inbounds nuw i8, ptr %170, i64 8
  %176 = xor i64 %174, %169
  %177 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 27)
  %178 = mul i64 %177, -7046029288634856825
  %179 = add i64 %178, -8796714831421723037
  br label %180

180:                                              ; preds = %168, %76
  %181 = phi i64 [ %79, %76 ], [ %179, %168 ]
  %182 = phi ptr [ %78, %76 ], [ %175, %168 ]
  %183 = load i64, ptr %182, align 1
  %184 = mul i64 %183, -4417276706812531889
  %185 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 31)
  %186 = mul i64 %185, -7046029288634856825
  %187 = getelementptr inbounds nuw i8, ptr %182, i64 8
  %188 = xor i64 %186, %181
  %189 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 27)
  %190 = mul i64 %189, -7046029288634856825
  %191 = add i64 %190, -8796714831421723037
  %192 = load i8, ptr %187, align 1
  %193 = zext i8 %192 to i64
  %194 = mul i64 %193, 2870177450012600261
  %195 = xor i64 %191, %194
  %196 = tail call i64 @llvm.fshl.i64(i64 %195, i64 %195, i64 11)
  %197 = mul i64 %196, -7046029288634856825
  br label %483

198:                                              ; preds = %76
  %199 = load i64, ptr %78, align 1
  %200 = mul i64 %199, -4417276706812531889
  %201 = tail call i64 @llvm.fshl.i64(i64 %200, i64 %200, i64 31)
  %202 = mul i64 %201, -7046029288634856825
  %203 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %204 = xor i64 %202, %79
  %205 = tail call i64 @llvm.fshl.i64(i64 %204, i64 %204, i64 27)
  %206 = mul i64 %205, -7046029288634856825
  %207 = add i64 %206, -8796714831421723037
  br label %208

208:                                              ; preds = %198, %76
  %209 = phi i64 [ %79, %76 ], [ %207, %198 ]
  %210 = phi ptr [ %78, %76 ], [ %203, %198 ]
  %211 = load i64, ptr %210, align 1
  %212 = mul i64 %211, -4417276706812531889
  %213 = tail call i64 @llvm.fshl.i64(i64 %212, i64 %212, i64 31)
  %214 = mul i64 %213, -7046029288634856825
  %215 = getelementptr inbounds nuw i8, ptr %210, i64 8
  %216 = xor i64 %214, %209
  %217 = tail call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 27)
  %218 = mul i64 %217, -7046029288634856825
  %219 = add i64 %218, -8796714831421723037
  br label %220

220:                                              ; preds = %208, %76
  %221 = phi i64 [ %79, %76 ], [ %219, %208 ]
  %222 = phi ptr [ %78, %76 ], [ %215, %208 ]
  %223 = load i64, ptr %222, align 1
  %224 = mul i64 %223, -4417276706812531889
  %225 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 31)
  %226 = mul i64 %225, -7046029288634856825
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 8
  %228 = xor i64 %226, %221
  %229 = tail call i64 @llvm.fshl.i64(i64 %228, i64 %228, i64 27)
  %230 = mul i64 %229, -7046029288634856825
  %231 = add i64 %230, -8796714831421723037
  br label %232

232:                                              ; preds = %220, %76
  %233 = phi i64 [ %79, %76 ], [ %231, %220 ]
  %234 = phi ptr [ %78, %76 ], [ %227, %220 ]
  %235 = load i32, ptr %234, align 1
  %236 = zext i32 %235 to i64
  %237 = mul i64 %236, -7046029288634856825
  %238 = xor i64 %237, %233
  %239 = getelementptr inbounds nuw i8, ptr %234, i64 4
  %240 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 23)
  %241 = mul i64 %240, -4417276706812531889
  %242 = add i64 %241, 1609587929392839161
  %243 = load i8, ptr %239, align 1
  %244 = zext i8 %243 to i64
  %245 = mul i64 %244, 2870177450012600261
  %246 = xor i64 %242, %245
  %247 = tail call i64 @llvm.fshl.i64(i64 %246, i64 %246, i64 11)
  %248 = mul i64 %247, -7046029288634856825
  br label %483

249:                                              ; preds = %76
  %250 = load i64, ptr %78, align 1
  %251 = mul i64 %250, -4417276706812531889
  %252 = tail call i64 @llvm.fshl.i64(i64 %251, i64 %251, i64 31)
  %253 = mul i64 %252, -7046029288634856825
  %254 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %255 = xor i64 %253, %79
  %256 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 27)
  %257 = mul i64 %256, -7046029288634856825
  %258 = add i64 %257, -8796714831421723037
  br label %259

259:                                              ; preds = %249, %76
  %260 = phi i64 [ %79, %76 ], [ %258, %249 ]
  %261 = phi ptr [ %78, %76 ], [ %254, %249 ]
  %262 = load i64, ptr %261, align 1
  %263 = mul i64 %262, -4417276706812531889
  %264 = tail call i64 @llvm.fshl.i64(i64 %263, i64 %263, i64 31)
  %265 = mul i64 %264, -7046029288634856825
  %266 = getelementptr inbounds nuw i8, ptr %261, i64 8
  %267 = xor i64 %265, %260
  %268 = tail call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 27)
  %269 = mul i64 %268, -7046029288634856825
  %270 = add i64 %269, -8796714831421723037
  br label %271

271:                                              ; preds = %259, %76
  %272 = phi i64 [ %79, %76 ], [ %270, %259 ]
  %273 = phi ptr [ %78, %76 ], [ %266, %259 ]
  %274 = load i64, ptr %273, align 1
  %275 = mul i64 %274, -4417276706812531889
  %276 = tail call i64 @llvm.fshl.i64(i64 %275, i64 %275, i64 31)
  %277 = mul i64 %276, -7046029288634856825
  %278 = getelementptr inbounds nuw i8, ptr %273, i64 8
  %279 = xor i64 %277, %272
  %280 = tail call i64 @llvm.fshl.i64(i64 %279, i64 %279, i64 27)
  %281 = mul i64 %280, -7046029288634856825
  %282 = add i64 %281, -8796714831421723037
  %283 = getelementptr inbounds nuw i8, ptr %273, i64 9
  %284 = load i8, ptr %278, align 1
  %285 = zext i8 %284 to i64
  %286 = mul i64 %285, 2870177450012600261
  %287 = xor i64 %282, %286
  %288 = tail call i64 @llvm.fshl.i64(i64 %287, i64 %287, i64 11)
  %289 = mul i64 %288, -7046029288634856825
  %290 = load i8, ptr %283, align 1
  %291 = zext i8 %290 to i64
  %292 = mul i64 %291, 2870177450012600261
  %293 = xor i64 %289, %292
  %294 = tail call i64 @llvm.fshl.i64(i64 %293, i64 %293, i64 11)
  %295 = mul i64 %294, -7046029288634856825
  br label %483

296:                                              ; preds = %76
  %297 = load i64, ptr %78, align 1
  %298 = mul i64 %297, -4417276706812531889
  %299 = tail call i64 @llvm.fshl.i64(i64 %298, i64 %298, i64 31)
  %300 = mul i64 %299, -7046029288634856825
  %301 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %302 = xor i64 %300, %79
  %303 = tail call i64 @llvm.fshl.i64(i64 %302, i64 %302, i64 27)
  %304 = mul i64 %303, -7046029288634856825
  %305 = add i64 %304, -8796714831421723037
  br label %306

306:                                              ; preds = %296, %76
  %307 = phi i64 [ %79, %76 ], [ %305, %296 ]
  %308 = phi ptr [ %78, %76 ], [ %301, %296 ]
  %309 = load i64, ptr %308, align 1
  %310 = mul i64 %309, -4417276706812531889
  %311 = tail call i64 @llvm.fshl.i64(i64 %310, i64 %310, i64 31)
  %312 = mul i64 %311, -7046029288634856825
  %313 = getelementptr inbounds nuw i8, ptr %308, i64 8
  %314 = xor i64 %312, %307
  %315 = tail call i64 @llvm.fshl.i64(i64 %314, i64 %314, i64 27)
  %316 = mul i64 %315, -7046029288634856825
  %317 = add i64 %316, -8796714831421723037
  br label %318

318:                                              ; preds = %306, %76
  %319 = phi i64 [ %79, %76 ], [ %317, %306 ]
  %320 = phi ptr [ %78, %76 ], [ %313, %306 ]
  %321 = load i64, ptr %320, align 1
  %322 = mul i64 %321, -4417276706812531889
  %323 = tail call i64 @llvm.fshl.i64(i64 %322, i64 %322, i64 31)
  %324 = mul i64 %323, -7046029288634856825
  %325 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %326 = xor i64 %324, %319
  %327 = tail call i64 @llvm.fshl.i64(i64 %326, i64 %326, i64 27)
  %328 = mul i64 %327, -7046029288634856825
  %329 = add i64 %328, -8796714831421723037
  br label %330

330:                                              ; preds = %318, %76
  %331 = phi i64 [ %79, %76 ], [ %329, %318 ]
  %332 = phi ptr [ %78, %76 ], [ %325, %318 ]
  %333 = load i32, ptr %332, align 1
  %334 = zext i32 %333 to i64
  %335 = mul i64 %334, -7046029288634856825
  %336 = xor i64 %335, %331
  %337 = getelementptr inbounds nuw i8, ptr %332, i64 4
  %338 = tail call i64 @llvm.fshl.i64(i64 %336, i64 %336, i64 23)
  %339 = mul i64 %338, -4417276706812531889
  %340 = add i64 %339, 1609587929392839161
  %341 = getelementptr inbounds nuw i8, ptr %332, i64 5
  %342 = load i8, ptr %337, align 1
  %343 = zext i8 %342 to i64
  %344 = mul i64 %343, 2870177450012600261
  %345 = xor i64 %340, %344
  %346 = tail call i64 @llvm.fshl.i64(i64 %345, i64 %345, i64 11)
  %347 = mul i64 %346, -7046029288634856825
  %348 = load i8, ptr %341, align 1
  %349 = zext i8 %348 to i64
  %350 = mul i64 %349, 2870177450012600261
  %351 = xor i64 %347, %350
  %352 = tail call i64 @llvm.fshl.i64(i64 %351, i64 %351, i64 11)
  %353 = mul i64 %352, -7046029288634856825
  br label %483

354:                                              ; preds = %76
  %355 = load i64, ptr %78, align 1
  %356 = mul i64 %355, -4417276706812531889
  %357 = tail call i64 @llvm.fshl.i64(i64 %356, i64 %356, i64 31)
  %358 = mul i64 %357, -7046029288634856825
  %359 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %360 = xor i64 %358, %79
  %361 = tail call i64 @llvm.fshl.i64(i64 %360, i64 %360, i64 27)
  %362 = mul i64 %361, -7046029288634856825
  %363 = add i64 %362, -8796714831421723037
  br label %364

364:                                              ; preds = %354, %76
  %365 = phi i64 [ %79, %76 ], [ %363, %354 ]
  %366 = phi ptr [ %78, %76 ], [ %359, %354 ]
  %367 = load i64, ptr %366, align 1
  %368 = mul i64 %367, -4417276706812531889
  %369 = tail call i64 @llvm.fshl.i64(i64 %368, i64 %368, i64 31)
  %370 = mul i64 %369, -7046029288634856825
  %371 = getelementptr inbounds nuw i8, ptr %366, i64 8
  %372 = xor i64 %370, %365
  %373 = tail call i64 @llvm.fshl.i64(i64 %372, i64 %372, i64 27)
  %374 = mul i64 %373, -7046029288634856825
  %375 = add i64 %374, -8796714831421723037
  br label %376

376:                                              ; preds = %364, %76
  %377 = phi i64 [ %79, %76 ], [ %375, %364 ]
  %378 = phi ptr [ %78, %76 ], [ %371, %364 ]
  %379 = load i64, ptr %378, align 1
  %380 = mul i64 %379, -4417276706812531889
  %381 = tail call i64 @llvm.fshl.i64(i64 %380, i64 %380, i64 31)
  %382 = mul i64 %381, -7046029288634856825
  %383 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %384 = xor i64 %382, %377
  %385 = tail call i64 @llvm.fshl.i64(i64 %384, i64 %384, i64 27)
  %386 = mul i64 %385, -7046029288634856825
  %387 = add i64 %386, -8796714831421723037
  %388 = getelementptr inbounds nuw i8, ptr %378, i64 9
  %389 = load i8, ptr %383, align 1
  %390 = zext i8 %389 to i64
  %391 = mul i64 %390, 2870177450012600261
  %392 = xor i64 %387, %391
  %393 = tail call i64 @llvm.fshl.i64(i64 %392, i64 %392, i64 11)
  %394 = mul i64 %393, -7046029288634856825
  %395 = getelementptr inbounds nuw i8, ptr %378, i64 10
  %396 = load i8, ptr %388, align 1
  %397 = zext i8 %396 to i64
  %398 = mul i64 %397, 2870177450012600261
  %399 = xor i64 %394, %398
  %400 = tail call i64 @llvm.fshl.i64(i64 %399, i64 %399, i64 11)
  %401 = mul i64 %400, -7046029288634856825
  %402 = load i8, ptr %395, align 1
  %403 = zext i8 %402 to i64
  %404 = mul i64 %403, 2870177450012600261
  %405 = xor i64 %401, %404
  %406 = tail call i64 @llvm.fshl.i64(i64 %405, i64 %405, i64 11)
  %407 = mul i64 %406, -7046029288634856825
  br label %483

408:                                              ; preds = %76
  %409 = load i64, ptr %78, align 1
  %410 = mul i64 %409, -4417276706812531889
  %411 = tail call i64 @llvm.fshl.i64(i64 %410, i64 %410, i64 31)
  %412 = mul i64 %411, -7046029288634856825
  %413 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %414 = xor i64 %412, %79
  %415 = tail call i64 @llvm.fshl.i64(i64 %414, i64 %414, i64 27)
  %416 = mul i64 %415, -7046029288634856825
  %417 = add i64 %416, -8796714831421723037
  br label %418

418:                                              ; preds = %408, %76
  %419 = phi i64 [ %79, %76 ], [ %417, %408 ]
  %420 = phi ptr [ %78, %76 ], [ %413, %408 ]
  %421 = load i64, ptr %420, align 1
  %422 = mul i64 %421, -4417276706812531889
  %423 = tail call i64 @llvm.fshl.i64(i64 %422, i64 %422, i64 31)
  %424 = mul i64 %423, -7046029288634856825
  %425 = getelementptr inbounds nuw i8, ptr %420, i64 8
  %426 = xor i64 %424, %419
  %427 = tail call i64 @llvm.fshl.i64(i64 %426, i64 %426, i64 27)
  %428 = mul i64 %427, -7046029288634856825
  %429 = add i64 %428, -8796714831421723037
  br label %430

430:                                              ; preds = %418, %76
  %431 = phi i64 [ %79, %76 ], [ %429, %418 ]
  %432 = phi ptr [ %78, %76 ], [ %425, %418 ]
  %433 = load i64, ptr %432, align 1
  %434 = mul i64 %433, -4417276706812531889
  %435 = tail call i64 @llvm.fshl.i64(i64 %434, i64 %434, i64 31)
  %436 = mul i64 %435, -7046029288634856825
  %437 = getelementptr inbounds nuw i8, ptr %432, i64 8
  %438 = xor i64 %436, %431
  %439 = tail call i64 @llvm.fshl.i64(i64 %438, i64 %438, i64 27)
  %440 = mul i64 %439, -7046029288634856825
  %441 = add i64 %440, -8796714831421723037
  br label %442

442:                                              ; preds = %430, %76
  %443 = phi i64 [ %79, %76 ], [ %441, %430 ]
  %444 = phi ptr [ %78, %76 ], [ %437, %430 ]
  %445 = load i32, ptr %444, align 1
  %446 = zext i32 %445 to i64
  %447 = mul i64 %446, -7046029288634856825
  %448 = xor i64 %447, %443
  %449 = getelementptr inbounds nuw i8, ptr %444, i64 4
  %450 = tail call i64 @llvm.fshl.i64(i64 %448, i64 %448, i64 23)
  %451 = mul i64 %450, -4417276706812531889
  %452 = add i64 %451, 1609587929392839161
  br label %453

453:                                              ; preds = %442, %76
  %454 = phi i64 [ %79, %76 ], [ %452, %442 ]
  %455 = phi ptr [ %78, %76 ], [ %449, %442 ]
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 1
  %457 = load i8, ptr %455, align 1
  %458 = zext i8 %457 to i64
  %459 = mul i64 %458, 2870177450012600261
  %460 = xor i64 %459, %454
  %461 = tail call i64 @llvm.fshl.i64(i64 %460, i64 %460, i64 11)
  %462 = mul i64 %461, -7046029288634856825
  br label %463

463:                                              ; preds = %453, %76
  %464 = phi i64 [ %79, %76 ], [ %462, %453 ]
  %465 = phi ptr [ %78, %76 ], [ %456, %453 ]
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 1
  %467 = load i8, ptr %465, align 1
  %468 = zext i8 %467 to i64
  %469 = mul i64 %468, 2870177450012600261
  %470 = xor i64 %469, %464
  %471 = tail call i64 @llvm.fshl.i64(i64 %470, i64 %470, i64 11)
  %472 = mul i64 %471, -7046029288634856825
  br label %473

473:                                              ; preds = %463, %76
  %474 = phi i64 [ %79, %76 ], [ %472, %463 ]
  %475 = phi ptr [ %78, %76 ], [ %466, %463 ]
  %476 = load i8, ptr %475, align 1
  %477 = zext i8 %476 to i64
  %478 = mul i64 %477, 2870177450012600261
  %479 = xor i64 %478, %474
  %480 = tail call i64 @llvm.fshl.i64(i64 %479, i64 %479, i64 11)
  %481 = mul i64 %480, -7046029288634856825
  br label %483

482:                                              ; preds = %76
  unreachable

483:                                              ; preds = %76, %103, %148, %180, %232, %271, %330, %376, %473
  %484 = phi i64 [ %407, %376 ], [ %353, %330 ], [ %295, %271 ], [ %248, %232 ], [ %197, %180 ], [ %157, %148 ], [ %113, %103 ], [ %79, %76 ], [ %481, %473 ]
  %485 = lshr i64 %484, 33
  %486 = xor i64 %485, %484
  %487 = mul i64 %486, -4417276706812531889
  %488 = lshr i64 %487, 29
  %489 = xor i64 %488, %487
  %490 = mul i64 %489, 1609587929392839161
  %491 = lshr i64 %490, 32
  %492 = xor i64 %491, %490
  ret i64 %492
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
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [192 x i8], align 16
  %6 = alloca %struct.XXH_INLINE_XXH128_hash_t, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %7 = icmp ult i64 %2, 17
  br i1 %7, label %8, label %158

8:                                                ; preds = %4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %9 = icmp samesign ugt i64 %2, 8
  br i1 %9, label %10, label %52

10:                                               ; preds = %8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %11 = sub i64 6455697860950631241, %3
  %12 = add i64 %3, -4466874330221494952
  %13 = load i64, ptr %1, align 1, !noalias !20
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 1, !noalias !20
  %17 = xor i64 %13, %11
  %18 = xor i64 %17, %16
  %19 = zext i64 %18 to i128
  %20 = mul nuw i128 %19, 11400714785074694791
  %21 = lshr i128 %20, 64
  %22 = trunc nuw i128 %21 to i64
  %23 = trunc i128 %20 to i64
  %24 = shl nuw nsw i64 %2, 54
  %25 = add nsw i64 %24, -18014398509481984
  %26 = add i64 %25, %23
  %27 = xor i64 %16, %12
  %28 = and i64 %27, 4294967295
  %29 = mul nuw i64 %28, 2246822518
  %30 = add i64 %29, %27
  %31 = add i64 %30, %22
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %33 = xor i64 %32, %26
  %34 = zext i64 %33 to i128
  %35 = mul nuw i128 %34, 14029467366897019727
  %36 = lshr i128 %35, 64
  %37 = trunc nuw i128 %36 to i64
  %38 = trunc i128 %35 to i64
  %39 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %40 = mul i64 %31, -4417276706812531889
  %41 = add i64 %40, %37
  %42 = lshr i64 %38, 37
  %43 = xor i64 %42, %38
  %44 = mul i64 %43, 1609587791953885689
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  store i64 %46, ptr %6, align 8, !alias.scope !20
  %47 = lshr i64 %41, 37
  %48 = xor i64 %47, %41
  %49 = mul i64 %48, 1609587791953885689
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  store i64 %51, ptr %39, align 8, !alias.scope !20
  br label %624

52:                                               ; preds = %8
  %53 = icmp samesign ugt i64 %2, 3
  br i1 %53, label %54, label %93

54:                                               ; preds = %52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %55 = trunc i64 %3 to i32
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = zext i32 %56 to i64
  %58 = shl nuw i64 %57, 32
  %59 = xor i64 %58, %3
  %60 = load i32, ptr %1, align 1, !noalias !24
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %62 = getelementptr inbounds i8, ptr %61, i64 -4
  %63 = load i32, ptr %62, align 1, !noalias !24
  %64 = zext i32 %60 to i64
  %65 = zext i32 %63 to i64
  %66 = shl nuw i64 %65, 32
  %67 = or disjoint i64 %66, %64
  %68 = add i64 %59, -4255862940314790740
  %69 = xor i64 %67, %68
  %70 = shl nuw nsw i64 %2, 2
  %71 = add nuw nsw i64 %70, -7046029288634856825
  %72 = zext i64 %69 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %72, %73
  %75 = lshr i128 %74, 64
  %76 = trunc nuw i128 %75 to i64
  %77 = trunc i128 %74 to i64
  %78 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %79 = shl i64 %77, 1
  %80 = add i64 %79, %76
  %81 = lshr i64 %80, 3
  %82 = xor i64 %81, %77
  %83 = lshr i64 %82, 35
  %84 = xor i64 %83, %82
  %85 = mul i64 %84, -6939452855193903323
  %86 = lshr i64 %85, 28
  %87 = xor i64 %86, %85
  store i64 %87, ptr %6, align 8, !alias.scope !24
  %88 = lshr i64 %80, 37
  %89 = xor i64 %88, %80
  %90 = mul i64 %89, 1609587791953885689
  %91 = lshr i64 %90, 32
  %92 = xor i64 %91, %90
  store i64 %92, ptr %78, align 8, !alias.scope !24
  br label %624

93:                                               ; preds = %52
  %94 = icmp eq i64 %2, 0
  br i1 %94, label %138, label %95

95:                                               ; preds = %93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %96 = load i8, ptr %1, align 1, !noalias !28
  %97 = lshr i64 %2, 1
  %98 = getelementptr inbounds nuw i8, ptr %1, i64 %97
  %99 = load i8, ptr %98, align 1, !noalias !28
  %100 = getelementptr i8, ptr %1, i64 %2
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1, !noalias !28
  %103 = zext i8 %96 to i32
  %104 = shl nuw nsw i32 %103, 16
  %105 = zext i8 %99 to i32
  %106 = shl nuw i32 %105, 24
  %107 = or disjoint i32 %106, %104
  %108 = zext i8 %102 to i32
  %109 = or disjoint i32 %107, %108
  %110 = trunc nuw nsw i64 %2 to i32
  %111 = shl nuw nsw i32 %110, 8
  %112 = or disjoint i32 %109, %111
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 13)
  %115 = add i64 %3, 2267503259
  %116 = sub i64 808198283, %3
  %117 = zext i32 %112 to i64
  %118 = zext nneg i32 %114 to i64
  %119 = lshr i64 %115, 33
  %120 = xor i64 %119, %117
  %121 = xor i64 %120, %115
  %122 = mul i64 %121, -4417276706812531889
  %123 = lshr i64 %122, 29
  %124 = xor i64 %123, %122
  %125 = mul i64 %124, 1609587929392839161
  %126 = lshr i64 %125, 32
  %127 = xor i64 %126, %125
  store i64 %127, ptr %6, align 8, !alias.scope !28
  %128 = lshr i64 %116, 33
  %129 = xor i64 %128, %118
  %130 = xor i64 %129, %116
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  %137 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %136, ptr %137, align 8, !alias.scope !28
  br label %624

138:                                              ; preds = %93
  %139 = xor i64 %3, 7507096552062056628
  %140 = lshr i64 %139, 33
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, -4417276706812531889
  %143 = lshr i64 %142, 29
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  store i64 %147, ptr %6, align 8, !alias.scope !29
  %148 = xor i64 %3, -7613947547284439735
  %149 = lshr i64 %148, 33
  %150 = xor i64 %149, %148
  %151 = mul i64 %150, -4417276706812531889
  %152 = lshr i64 %151, 29
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, 1609587929392839161
  %155 = lshr i64 %154, 32
  %156 = xor i64 %155, %154
  %157 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %156, ptr %157, align 8, !alias.scope !29
  br label %624

158:                                              ; preds = %4
  %159 = icmp ult i64 %2, 129
  br i1 %159, label %160, label %334

160:                                              ; preds = %158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %161 = mul i64 %2, -7046029288634856825
  %162 = icmp samesign ugt i64 %2, 32
  br i1 %162, label %163, label %278

163:                                              ; preds = %160
  %164 = icmp samesign ugt i64 %2, 64
  br i1 %164, label %165, label %240

165:                                              ; preds = %163
  %166 = icmp samesign ugt i64 %2, 96
  br i1 %166, label %167, label %202

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %169 = getelementptr inbounds i8, ptr %168, i64 -64
  %170 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %171 = load i64, ptr %170, align 1, !alias.scope !33, !noalias !35
  %172 = getelementptr i8, ptr %1, i64 56
  %173 = load i64, ptr %172, align 1, !alias.scope !33, !noalias !35
  %174 = load i64, ptr %169, align 1, !alias.scope !33, !noalias !35
  %175 = getelementptr i8, ptr %168, i64 -56
  %176 = load i64, ptr %175, align 1, !alias.scope !33, !noalias !35
  %177 = sub i64 2111919702937427193, %3
  %178 = xor i64 %173, %177
  %179 = add i64 %3, 4554437623014685352
  %180 = xor i64 %171, %179
  %181 = zext i64 %180 to i128
  %182 = zext i64 %178 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %161, %186
  %188 = add i64 %176, %174
  %189 = xor i64 %187, %188
  %190 = sub i64 7238261902898274248, %3
  %191 = xor i64 %176, %190
  %192 = add i64 %3, 3556072174620004746
  %193 = xor i64 %174, %192
  %194 = zext i64 %193 to i128
  %195 = zext i64 %191 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %173, %171
  %201 = xor i64 %200, %199
  br label %202

202:                                              ; preds = %167, %165
  %203 = phi i64 [ %201, %167 ], [ 0, %165 ]
  %204 = phi i64 [ %189, %167 ], [ %161, %165 ]
  %205 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %206 = getelementptr inbounds i8, ptr %205, i64 -48
  %207 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %208 = load i64, ptr %207, align 1, !alias.scope !33, !noalias !35
  %209 = getelementptr i8, ptr %1, i64 40
  %210 = load i64, ptr %209, align 1, !alias.scope !33, !noalias !35
  %211 = load i64, ptr %206, align 1, !alias.scope !33, !noalias !35
  %212 = getelementptr i8, ptr %205, i64 -40
  %213 = load i64, ptr %212, align 1, !alias.scope !33, !noalias !35
  %214 = sub i64 -6688317018830679928, %3
  %215 = xor i64 %210, %214
  %216 = add i64 %3, -3818837453329782724
  %217 = xor i64 %208, %216
  %218 = zext i64 %217 to i128
  %219 = zext i64 %215 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %204, %223
  %225 = add i64 %213, %211
  %226 = xor i64 %224, %225
  %227 = sub i64 -2833645246901970632, %3
  %228 = xor i64 %213, %227
  %229 = add i64 %3, 5690594596133299313
  %230 = xor i64 %211, %229
  %231 = zext i64 %230 to i128
  %232 = zext i64 %228 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %203, %236
  %238 = add i64 %210, %208
  %239 = xor i64 %237, %238
  br label %240

240:                                              ; preds = %202, %163
  %241 = phi i64 [ %239, %202 ], [ 0, %163 ]
  %242 = phi i64 [ %226, %202 ], [ %161, %163 ]
  %243 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %244 = getelementptr inbounds i8, ptr %243, i64 -32
  %245 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %246 = load i64, ptr %245, align 1, !alias.scope !33, !noalias !35
  %247 = getelementptr i8, ptr %1, i64 24
  %248 = load i64, ptr %247, align 1, !alias.scope !33, !noalias !35
  %249 = load i64, ptr %244, align 1, !alias.scope !33, !noalias !35
  %250 = getelementptr i8, ptr %243, i64 -24
  %251 = load i64, ptr %250, align 1, !alias.scope !33, !noalias !35
  %252 = sub i64 2410270004345854594, %3
  %253 = xor i64 %248, %252
  %254 = add i64 %3, 8711581037947681227
  %255 = xor i64 %246, %254
  %256 = zext i64 %255 to i128
  %257 = zext i64 %253 to i128
  %258 = mul nuw i128 %257, %256
  %259 = lshr i128 %258, 64
  %260 = xor i128 %259, %258
  %261 = trunc i128 %260 to i64
  %262 = add i64 %242, %261
  %263 = add i64 %251, %249
  %264 = xor i64 %262, %263
  %265 = sub i64 5487137525590930912, %3
  %266 = xor i64 %251, %265
  %267 = add i64 %3, -8204357891075471176
  %268 = xor i64 %249, %267
  %269 = zext i64 %268 to i128
  %270 = zext i64 %266 to i128
  %271 = mul nuw i128 %270, %269
  %272 = lshr i128 %271, 64
  %273 = xor i128 %272, %271
  %274 = trunc i128 %273 to i64
  %275 = add i64 %241, %274
  %276 = add i64 %248, %246
  %277 = xor i64 %275, %276
  br label %278

278:                                              ; preds = %240, %160
  %279 = phi i64 [ %277, %240 ], [ 0, %160 ]
  %280 = phi i64 [ %264, %240 ], [ %161, %160 ]
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %282 = getelementptr inbounds i8, ptr %281, i64 -16
  %283 = load i64, ptr %1, align 1, !alias.scope !33, !noalias !35
  %284 = getelementptr i8, ptr %1, i64 8
  %285 = load i64, ptr %284, align 1, !alias.scope !33, !noalias !35
  %286 = load i64, ptr %282, align 1, !alias.scope !33, !noalias !35
  %287 = getelementptr i8, ptr %281, i64 -8
  %288 = load i64, ptr %287, align 1, !alias.scope !33, !noalias !35
  %289 = sub i64 2066345149520216444, %3
  %290 = xor i64 %285, %289
  %291 = add i64 %3, -4734510112055689544
  %292 = xor i64 %283, %291
  %293 = zext i64 %292 to i128
  %294 = zext i64 %290 to i128
  %295 = mul nuw i128 %294, %293
  %296 = lshr i128 %295, 64
  %297 = xor i128 %296, %295
  %298 = trunc i128 %297 to i64
  %299 = add i64 %280, %298
  %300 = add i64 %288, %286
  %301 = xor i64 %299, %300
  %302 = sub i64 2262974939099578482, %3
  %303 = xor i64 %288, %302
  %304 = add i64 %3, -2623469361688619810
  %305 = xor i64 %286, %304
  %306 = zext i64 %305 to i128
  %307 = zext i64 %303 to i128
  %308 = mul nuw i128 %307, %306
  %309 = lshr i128 %308, 64
  %310 = xor i128 %309, %308
  %311 = trunc i128 %310 to i64
  %312 = add i64 %279, %311
  %313 = add i64 %285, %283
  %314 = xor i64 %312, %313
  %315 = add i64 %314, %301
  %316 = mul i64 %301, -7046029288634856825
  %317 = mul i64 %314, -8796714831421723037
  %318 = sub i64 %2, %3
  %319 = mul i64 %318, -4417276706812531889
  %320 = add i64 %316, %319
  %321 = add i64 %320, %317
  %322 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %323 = lshr i64 %315, 37
  %324 = xor i64 %323, %315
  %325 = mul i64 %324, 1609587791953885689
  %326 = lshr i64 %325, 32
  %327 = xor i64 %326, %325
  store i64 %327, ptr %6, align 8, !alias.scope !35, !noalias !33
  %328 = lshr i64 %321, 37
  %329 = xor i64 %328, %321
  %330 = mul i64 %329, 1609587791953885689
  %331 = lshr i64 %330, 32
  %332 = xor i64 %331, %330
  %333 = sub i64 0, %332
  store i64 %333, ptr %322, align 8, !alias.scope !35, !noalias !33
  br label %624

334:                                              ; preds = %158
  %335 = icmp ult i64 %2, 241
  br i1 %335, label %336, label %593

336:                                              ; preds = %334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %337 = trunc nuw nsw i64 %2 to i32
  %338 = mul i64 %2, -7046029288634856825
  %339 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %340 = load i64, ptr %1, align 1, !alias.scope !39, !noalias !41
  %341 = getelementptr i8, ptr %1, i64 8
  %342 = load i64, ptr %341, align 1, !alias.scope !39, !noalias !41
  %343 = load i64, ptr %339, align 1, !alias.scope !39, !noalias !41
  %344 = getelementptr i8, ptr %1, i64 24
  %345 = load i64, ptr %344, align 1, !alias.scope !39, !noalias !41
  %346 = sub i64 2066345149520216444, %3
  %347 = xor i64 %342, %346
  %348 = add i64 %3, -4734510112055689544
  %349 = xor i64 %340, %348
  %350 = zext i64 %349 to i128
  %351 = zext i64 %347 to i128
  %352 = mul nuw i128 %351, %350
  %353 = lshr i128 %352, 64
  %354 = xor i128 %353, %352
  %355 = trunc i128 %354 to i64
  %356 = add i64 %338, %355
  %357 = add i64 %345, %343
  %358 = xor i64 %356, %357
  %359 = sub i64 2262974939099578482, %3
  %360 = xor i64 %345, %359
  %361 = add i64 %3, -2623469361688619810
  %362 = xor i64 %343, %361
  %363 = zext i64 %362 to i128
  %364 = zext i64 %360 to i128
  %365 = mul nuw i128 %364, %363
  %366 = lshr i128 %365, 64
  %367 = xor i128 %366, %365
  %368 = trunc i128 %367 to i64
  %369 = add i64 %342, %340
  %370 = xor i64 %369, %368
  %371 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %372 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %373 = load i64, ptr %371, align 1, !alias.scope !39, !noalias !41
  %374 = getelementptr i8, ptr %1, i64 40
  %375 = load i64, ptr %374, align 1, !alias.scope !39, !noalias !41
  %376 = load i64, ptr %372, align 1, !alias.scope !39, !noalias !41
  %377 = getelementptr i8, ptr %1, i64 56
  %378 = load i64, ptr %377, align 1, !alias.scope !39, !noalias !41
  %379 = sub i64 2410270004345854594, %3
  %380 = xor i64 %375, %379
  %381 = add i64 %3, 8711581037947681227
  %382 = xor i64 %373, %381
  %383 = zext i64 %382 to i128
  %384 = zext i64 %380 to i128
  %385 = mul nuw i128 %384, %383
  %386 = lshr i128 %385, 64
  %387 = xor i128 %386, %385
  %388 = trunc i128 %387 to i64
  %389 = add i64 %358, %388
  %390 = add i64 %378, %376
  %391 = xor i64 %389, %390
  %392 = sub i64 5487137525590930912, %3
  %393 = xor i64 %378, %392
  %394 = add i64 %3, -8204357891075471176
  %395 = xor i64 %376, %394
  %396 = zext i64 %395 to i128
  %397 = zext i64 %393 to i128
  %398 = mul nuw i128 %397, %396
  %399 = lshr i128 %398, 64
  %400 = xor i128 %399, %398
  %401 = trunc i128 %400 to i64
  %402 = add i64 %370, %401
  %403 = add i64 %375, %373
  %404 = xor i64 %402, %403
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %406 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %407 = load i64, ptr %405, align 1, !alias.scope !39, !noalias !41
  %408 = getelementptr i8, ptr %1, i64 72
  %409 = load i64, ptr %408, align 1, !alias.scope !39, !noalias !41
  %410 = load i64, ptr %406, align 1, !alias.scope !39, !noalias !41
  %411 = getelementptr i8, ptr %1, i64 88
  %412 = load i64, ptr %411, align 1, !alias.scope !39, !noalias !41
  %413 = sub i64 -6688317018830679928, %3
  %414 = xor i64 %409, %413
  %415 = add i64 %3, -3818837453329782724
  %416 = xor i64 %407, %415
  %417 = zext i64 %416 to i128
  %418 = zext i64 %414 to i128
  %419 = mul nuw i128 %418, %417
  %420 = lshr i128 %419, 64
  %421 = xor i128 %420, %419
  %422 = trunc i128 %421 to i64
  %423 = add i64 %391, %422
  %424 = add i64 %412, %410
  %425 = xor i64 %423, %424
  %426 = sub i64 -2833645246901970632, %3
  %427 = xor i64 %412, %426
  %428 = add i64 %3, 5690594596133299313
  %429 = xor i64 %410, %428
  %430 = zext i64 %429 to i128
  %431 = zext i64 %427 to i128
  %432 = mul nuw i128 %431, %430
  %433 = lshr i128 %432, 64
  %434 = xor i128 %433, %432
  %435 = trunc i128 %434 to i64
  %436 = add i64 %404, %435
  %437 = add i64 %409, %407
  %438 = xor i64 %436, %437
  %439 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %440 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %441 = load i64, ptr %439, align 1, !alias.scope !39, !noalias !41
  %442 = getelementptr i8, ptr %1, i64 104
  %443 = load i64, ptr %442, align 1, !alias.scope !39, !noalias !41
  %444 = load i64, ptr %440, align 1, !alias.scope !39, !noalias !41
  %445 = getelementptr i8, ptr %1, i64 120
  %446 = load i64, ptr %445, align 1, !alias.scope !39, !noalias !41
  %447 = sub i64 2111919702937427193, %3
  %448 = xor i64 %443, %447
  %449 = add i64 %3, 4554437623014685352
  %450 = xor i64 %441, %449
  %451 = zext i64 %450 to i128
  %452 = zext i64 %448 to i128
  %453 = mul nuw i128 %452, %451
  %454 = lshr i128 %453, 64
  %455 = xor i128 %454, %453
  %456 = trunc i128 %455 to i64
  %457 = add i64 %425, %456
  %458 = add i64 %446, %444
  %459 = xor i64 %457, %458
  %460 = sub i64 7238261902898274248, %3
  %461 = xor i64 %446, %460
  %462 = add i64 %3, 3556072174620004746
  %463 = xor i64 %444, %462
  %464 = zext i64 %463 to i128
  %465 = zext i64 %461 to i128
  %466 = mul nuw i128 %465, %464
  %467 = lshr i128 %466, 64
  %468 = xor i128 %467, %466
  %469 = trunc i128 %468 to i64
  %470 = add i64 %438, %469
  %471 = add i64 %443, %441
  %472 = xor i64 %470, %471
  %473 = lshr i32 %337, 5
  %474 = lshr i64 %459, 37
  %475 = xor i64 %474, %459
  %476 = mul i64 %475, 1609587791953885689
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  %479 = lshr i64 %472, 37
  %480 = xor i64 %479, %472
  %481 = mul i64 %480, 1609587791953885689
  %482 = lshr i64 %481, 32
  %483 = xor i64 %482, %481
  %484 = icmp eq i32 %473, 4
  br i1 %484, label %536, label %485

485:                                              ; preds = %336
  %486 = zext nneg i32 %473 to i64
  br label %487

487:                                              ; preds = %487, %485
  %488 = phi i64 [ 4, %485 ], [ %534, %487 ]
  %489 = phi i64 [ %483, %485 ], [ %533, %487 ]
  %490 = phi i64 [ %478, %485 ], [ %516, %487 ]
  %491 = shl i64 %488, 5
  %492 = getelementptr i8, ptr getelementptr (i8, ptr @XXH3_kSecret, i64 -125), i64 %491
  %493 = getelementptr inbounds nuw i8, ptr %1, i64 %491
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 16
  %495 = load i64, ptr %493, align 1, !alias.scope !39, !noalias !41
  %496 = getelementptr i8, ptr %493, i64 8
  %497 = load i64, ptr %496, align 1, !alias.scope !39, !noalias !41
  %498 = load i64, ptr %494, align 1, !alias.scope !39, !noalias !41
  %499 = getelementptr i8, ptr %493, i64 24
  %500 = load i64, ptr %499, align 1, !alias.scope !39, !noalias !41
  %501 = load i64, ptr %492, align 1, !noalias !42
  %502 = getelementptr i8, ptr %492, i64 8
  %503 = load i64, ptr %502, align 1, !noalias !42
  %504 = sub i64 %503, %3
  %505 = xor i64 %504, %497
  %506 = add i64 %501, %3
  %507 = xor i64 %506, %495
  %508 = zext i64 %507 to i128
  %509 = zext i64 %505 to i128
  %510 = mul nuw i128 %509, %508
  %511 = lshr i128 %510, 64
  %512 = xor i128 %511, %510
  %513 = trunc i128 %512 to i64
  %514 = add i64 %490, %513
  %515 = add i64 %500, %498
  %516 = xor i64 %514, %515
  %517 = getelementptr inbounds nuw i8, ptr %492, i64 16
  %518 = load i64, ptr %517, align 1, !noalias !42
  %519 = getelementptr i8, ptr %492, i64 24
  %520 = load i64, ptr %519, align 1, !noalias !42
  %521 = sub i64 %520, %3
  %522 = xor i64 %521, %500
  %523 = add i64 %518, %3
  %524 = xor i64 %523, %498
  %525 = zext i64 %524 to i128
  %526 = zext i64 %522 to i128
  %527 = mul nuw i128 %526, %525
  %528 = lshr i128 %527, 64
  %529 = xor i128 %528, %527
  %530 = trunc i128 %529 to i64
  %531 = add i64 %489, %530
  %532 = add i64 %497, %495
  %533 = xor i64 %531, %532
  %534 = add nuw nsw i64 %488, 1
  %535 = icmp eq i64 %534, %486
  br i1 %535, label %536, label %487, !llvm.loop !45

536:                                              ; preds = %487, %336
  %537 = phi i64 [ %478, %336 ], [ %516, %487 ]
  %538 = phi i64 [ %483, %336 ], [ %533, %487 ]
  %539 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %540 = getelementptr inbounds i8, ptr %539, i64 -32
  %541 = getelementptr inbounds i8, ptr %539, i64 -16
  %542 = load i64, ptr %541, align 1, !alias.scope !39, !noalias !41
  %543 = getelementptr i8, ptr %539, i64 -8
  %544 = load i64, ptr %543, align 1, !alias.scope !39, !noalias !41
  %545 = load i64, ptr %540, align 1, !alias.scope !39, !noalias !41
  %546 = getelementptr i8, ptr %539, i64 -24
  %547 = load i64, ptr %546, align 1, !alias.scope !39, !noalias !41
  %548 = add i64 %3, 6464017090953185821
  %549 = xor i64 %544, %548
  %550 = sub i64 5695865814404364607, %3
  %551 = xor i64 %542, %550
  %552 = zext i64 %551 to i128
  %553 = zext i64 %549 to i128
  %554 = mul nuw i128 %553, %552
  %555 = lshr i128 %554, 64
  %556 = xor i128 %555, %554
  %557 = trunc i128 %556 to i64
  %558 = add i64 %537, %557
  %559 = add i64 %547, %545
  %560 = xor i64 %558, %559
  %561 = add i64 %3, -1453760514566526364
  %562 = xor i64 %547, %561
  %563 = sub i64 8320639771003045937, %3
  %564 = xor i64 %545, %563
  %565 = zext i64 %564 to i128
  %566 = zext i64 %562 to i128
  %567 = mul nuw i128 %566, %565
  %568 = lshr i128 %567, 64
  %569 = xor i128 %568, %567
  %570 = trunc i128 %569 to i64
  %571 = add i64 %538, %570
  %572 = add i64 %544, %542
  %573 = xor i64 %571, %572
  %574 = add i64 %573, %560
  %575 = mul i64 %560, -7046029288634856825
  %576 = mul i64 %573, -8796714831421723037
  %577 = sub i64 %2, %3
  %578 = mul i64 %577, -4417276706812531889
  %579 = add i64 %575, %578
  %580 = add i64 %579, %576
  %581 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %582 = lshr i64 %574, 37
  %583 = xor i64 %582, %574
  %584 = mul i64 %583, 1609587791953885689
  %585 = lshr i64 %584, 32
  %586 = xor i64 %585, %584
  store i64 %586, ptr %6, align 8, !alias.scope !41, !noalias !39
  %587 = lshr i64 %580, 37
  %588 = xor i64 %587, %580
  %589 = mul i64 %588, 1609587791953885689
  %590 = lshr i64 %589, 32
  %591 = xor i64 %590, %589
  %592 = sub i64 0, %591
  store i64 %592, ptr %581, align 8, !alias.scope !41, !noalias !39
  br label %624

593:                                              ; preds = %334
  %594 = icmp eq i64 %3, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %593
  call fastcc void @XXH3_hashLong_128b_internal(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %624

596:                                              ; preds = %593
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #13, !noalias !46
  %597 = sub nsw i64 0, %3
  %598 = insertelement <2 x i64> poison, i64 %3, i64 0
  %599 = insertelement <2 x i64> %598, i64 %597, i64 1
  %600 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %5) #14, !srcloc !52
  %601 = add <2 x i64> %599, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %601, ptr %600, align 16, !noalias !46
  %602 = add <2 x i64> %599, <i64 -2623469361688619810, i64 2262974939099578482>
  %603 = getelementptr inbounds nuw i8, ptr %600, i64 16
  store <2 x i64> %602, ptr %603, align 16, !noalias !46
  %604 = add <2 x i64> %599, <i64 8711581037947681227, i64 2410270004345854594>
  %605 = getelementptr inbounds nuw i8, ptr %600, i64 32
  store <2 x i64> %604, ptr %605, align 16, !noalias !46
  %606 = add <2 x i64> %599, <i64 -8204357891075471176, i64 5487137525590930912>
  %607 = getelementptr inbounds nuw i8, ptr %600, i64 48
  store <2 x i64> %606, ptr %607, align 16, !noalias !46
  %608 = add <2 x i64> %599, <i64 -3818837453329782724, i64 -6688317018830679928>
  %609 = getelementptr inbounds nuw i8, ptr %600, i64 64
  store <2 x i64> %608, ptr %609, align 16, !noalias !46
  %610 = add <2 x i64> %599, <i64 5690594596133299313, i64 -2833645246901970632>
  %611 = getelementptr inbounds nuw i8, ptr %600, i64 80
  store <2 x i64> %610, ptr %611, align 16, !noalias !46
  %612 = add <2 x i64> %599, <i64 4554437623014685352, i64 2111919702937427193>
  %613 = getelementptr inbounds nuw i8, ptr %600, i64 96
  store <2 x i64> %612, ptr %613, align 16, !noalias !46
  %614 = add <2 x i64> %599, <i64 3556072174620004746, i64 7238261902898274248>
  %615 = getelementptr inbounds nuw i8, ptr %600, i64 112
  store <2 x i64> %614, ptr %615, align 16, !noalias !46
  %616 = add <2 x i64> %599, <i64 -4329134394285701654, i64 -1485321483350670907>
  %617 = getelementptr inbounds nuw i8, ptr %600, i64 128
  store <2 x i64> %616, ptr %617, align 16, !noalias !46
  %618 = add <2 x i64> %599, <i64 5321830579834785047, i64 -7032137544937171245>
  %619 = getelementptr inbounds nuw i8, ptr %600, i64 144
  store <2 x i64> %618, ptr %619, align 16, !noalias !46
  %620 = add <2 x i64> %599, <i64 -242834301215959509, i64 -3588858202114426737>
  %621 = getelementptr inbounds nuw i8, ptr %600, i64 160
  store <2 x i64> %620, ptr %621, align 16, !noalias !46
  %622 = add <2 x i64> %599, <i64 2883454493032893253, i64 9097354517224871855>
  %623 = getelementptr inbounds nuw i8, ptr %600, i64 176
  store <2 x i64> %622, ptr %623, align 16, !noalias !46
  call fastcc void @XXH3_hashLong_128b_internal(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #13, !noalias !46
  br label %624

624:                                              ; preds = %10, %54, %95, %138, %278, %536, %595, %596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef range(i64 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #1 {
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %74

8:                                                ; preds = %6
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %44, !prof !53

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = load i64, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %14, %12
  %16 = add i64 %15, %2
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %20, %18
  %22 = sub i64 %21, %2
  %23 = load i64, ptr %0, align 1
  %24 = xor i64 %23, %16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %26 = getelementptr inbounds i8, ptr %25, i64 -8
  %27 = load i64, ptr %26, align 1
  %28 = xor i64 %27, %22
  %29 = tail call i64 @llvm.bswap.i64(i64 %24)
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
  br label %379

44:                                               ; preds = %8
  %45 = icmp samesign ugt i64 %1, 3
  br i1 %45, label %46, label %52, !prof !53

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %3, i64 8
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %3, i64 16
  %50 = load i64, ptr %49, align 1
  %51 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, i64 %48, i64 %50, i64 noundef %2)
  br label %379

52:                                               ; preds = %44
  %53 = icmp eq i64 %1, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %3, align 1
  %56 = getelementptr i8, ptr %3, i64 4
  %57 = load i32, ptr %56, align 1
  %58 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, i32 %55, i32 %57, i64 noundef %2)
  br label %379

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %61 = load i64, ptr %60, align 1
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %63 = load i64, ptr %62, align 1
  %64 = xor i64 %61, %63
  %65 = xor i64 %64, %2
  %66 = lshr i64 %65, 33
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, -4417276706812531889
  %69 = lshr i64 %68, 29
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, 1609587929392839161
  %72 = lshr i64 %71, 32
  %73 = xor i64 %72, %71
  br label %379

74:                                               ; preds = %6
  %75 = icmp ult i64 %1, 129
  br i1 %75, label %76, label %249

76:                                               ; preds = %74
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %77 = mul i64 %1, -7046029288634856825
  %78 = icmp samesign ugt i64 %1, 32
  br i1 %78, label %79, label %205

79:                                               ; preds = %76
  %80 = icmp samesign ugt i64 %1, 64
  br i1 %80, label %81, label %164

81:                                               ; preds = %79
  %82 = icmp samesign ugt i64 %1, 96
  br i1 %82, label %83, label %123

83:                                               ; preds = %81
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %86 = load i64, ptr %85, align 1, !alias.scope !54, !noalias !57
  %87 = getelementptr i8, ptr %0, i64 56
  %88 = load i64, ptr %87, align 1, !alias.scope !54, !noalias !57
  %89 = load i64, ptr %84, align 1, !alias.scope !57, !noalias !54
  %90 = getelementptr i8, ptr %3, i64 104
  %91 = load i64, ptr %90, align 1, !alias.scope !57, !noalias !54
  %92 = sub i64 %91, %2
  %93 = xor i64 %92, %88
  %94 = add i64 %89, %2
  %95 = xor i64 %94, %86
  %96 = zext i64 %95 to i128
  %97 = zext i64 %93 to i128
  %98 = mul nuw i128 %97, %96
  %99 = lshr i128 %98, 64
  %100 = xor i128 %99, %98
  %101 = trunc i128 %100 to i64
  %102 = add i64 %77, %101
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %105 = getelementptr inbounds i8, ptr %104, i64 -64
  %106 = load i64, ptr %105, align 1, !alias.scope !54, !noalias !57
  %107 = getelementptr i8, ptr %104, i64 -56
  %108 = load i64, ptr %107, align 1, !alias.scope !54, !noalias !57
  %109 = load i64, ptr %103, align 1, !alias.scope !57, !noalias !54
  %110 = getelementptr i8, ptr %3, i64 120
  %111 = load i64, ptr %110, align 1, !alias.scope !57, !noalias !54
  %112 = sub i64 %111, %2
  %113 = xor i64 %112, %108
  %114 = add i64 %109, %2
  %115 = xor i64 %114, %106
  %116 = zext i64 %115 to i128
  %117 = zext i64 %113 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %102, %121
  br label %123

123:                                              ; preds = %83, %81
  %124 = phi i64 [ %122, %83 ], [ %77, %81 ]
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %127 = load i64, ptr %126, align 1, !alias.scope !54, !noalias !57
  %128 = getelementptr i8, ptr %0, i64 40
  %129 = load i64, ptr %128, align 1, !alias.scope !54, !noalias !57
  %130 = load i64, ptr %125, align 1, !alias.scope !57, !noalias !54
  %131 = getelementptr i8, ptr %3, i64 72
  %132 = load i64, ptr %131, align 1, !alias.scope !57, !noalias !54
  %133 = sub i64 %132, %2
  %134 = xor i64 %133, %129
  %135 = add i64 %130, %2
  %136 = xor i64 %135, %127
  %137 = zext i64 %136 to i128
  %138 = zext i64 %134 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %124, %142
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %146 = getelementptr inbounds i8, ptr %145, i64 -48
  %147 = load i64, ptr %146, align 1, !alias.scope !54, !noalias !57
  %148 = getelementptr i8, ptr %145, i64 -40
  %149 = load i64, ptr %148, align 1, !alias.scope !54, !noalias !57
  %150 = load i64, ptr %144, align 1, !alias.scope !57, !noalias !54
  %151 = getelementptr i8, ptr %3, i64 88
  %152 = load i64, ptr %151, align 1, !alias.scope !57, !noalias !54
  %153 = sub i64 %152, %2
  %154 = xor i64 %153, %149
  %155 = add i64 %150, %2
  %156 = xor i64 %155, %147
  %157 = zext i64 %156 to i128
  %158 = zext i64 %154 to i128
  %159 = mul nuw i128 %158, %157
  %160 = lshr i128 %159, 64
  %161 = xor i128 %160, %159
  %162 = trunc i128 %161 to i64
  %163 = add i64 %143, %162
  br label %164

164:                                              ; preds = %123, %79
  %165 = phi i64 [ %163, %123 ], [ %77, %79 ]
  %166 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %168 = load i64, ptr %167, align 1, !alias.scope !54, !noalias !57
  %169 = getelementptr i8, ptr %0, i64 24
  %170 = load i64, ptr %169, align 1, !alias.scope !54, !noalias !57
  %171 = load i64, ptr %166, align 1, !alias.scope !57, !noalias !54
  %172 = getelementptr i8, ptr %3, i64 40
  %173 = load i64, ptr %172, align 1, !alias.scope !57, !noalias !54
  %174 = sub i64 %173, %2
  %175 = xor i64 %174, %170
  %176 = add i64 %171, %2
  %177 = xor i64 %176, %168
  %178 = zext i64 %177 to i128
  %179 = zext i64 %175 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %165, %183
  %185 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -32
  %188 = load i64, ptr %187, align 1, !alias.scope !54, !noalias !57
  %189 = getelementptr i8, ptr %186, i64 -24
  %190 = load i64, ptr %189, align 1, !alias.scope !54, !noalias !57
  %191 = load i64, ptr %185, align 1, !alias.scope !57, !noalias !54
  %192 = getelementptr i8, ptr %3, i64 56
  %193 = load i64, ptr %192, align 1, !alias.scope !57, !noalias !54
  %194 = sub i64 %193, %2
  %195 = xor i64 %194, %190
  %196 = add i64 %191, %2
  %197 = xor i64 %196, %188
  %198 = zext i64 %197 to i128
  %199 = zext i64 %195 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %184, %203
  br label %205

205:                                              ; preds = %76, %164
  %206 = phi i64 [ %204, %164 ], [ %77, %76 ]
  %207 = load i64, ptr %0, align 1, !alias.scope !54, !noalias !57
  %208 = getelementptr i8, ptr %0, i64 8
  %209 = load i64, ptr %208, align 1, !alias.scope !54, !noalias !57
  %210 = load i64, ptr %3, align 1, !alias.scope !57, !noalias !54
  %211 = getelementptr i8, ptr %3, i64 8
  %212 = load i64, ptr %211, align 1, !alias.scope !57, !noalias !54
  %213 = sub i64 %212, %2
  %214 = xor i64 %213, %209
  %215 = add i64 %210, %2
  %216 = xor i64 %215, %207
  %217 = zext i64 %216 to i128
  %218 = zext i64 %214 to i128
  %219 = mul nuw i128 %218, %217
  %220 = lshr i128 %219, 64
  %221 = xor i128 %220, %219
  %222 = trunc i128 %221 to i64
  %223 = add i64 %206, %222
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %226 = getelementptr inbounds i8, ptr %225, i64 -16
  %227 = load i64, ptr %226, align 1, !alias.scope !54, !noalias !57
  %228 = getelementptr i8, ptr %225, i64 -8
  %229 = load i64, ptr %228, align 1, !alias.scope !54, !noalias !57
  %230 = load i64, ptr %224, align 1, !alias.scope !57, !noalias !54
  %231 = getelementptr i8, ptr %3, i64 24
  %232 = load i64, ptr %231, align 1, !alias.scope !57, !noalias !54
  %233 = sub i64 %232, %2
  %234 = xor i64 %233, %229
  %235 = add i64 %230, %2
  %236 = xor i64 %235, %227
  %237 = zext i64 %236 to i128
  %238 = zext i64 %234 to i128
  %239 = mul nuw i128 %238, %237
  %240 = lshr i128 %239, 64
  %241 = xor i128 %240, %239
  %242 = trunc i128 %241 to i64
  %243 = add i64 %223, %242
  %244 = lshr i64 %243, 37
  %245 = xor i64 %244, %243
  %246 = mul i64 %245, 1609587791953885689
  %247 = lshr i64 %246, 32
  %248 = xor i64 %247, %246
  br label %379

249:                                              ; preds = %74
  %250 = icmp ult i64 %1, 241
  br i1 %250, label %251, label %377

251:                                              ; preds = %249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %252 = mul i64 %1, -7046029288634856825
  %253 = trunc nuw nsw i64 %1 to i32
  %254 = load <16 x i64>, ptr %0, align 1, !alias.scope !59, !noalias !62
  %255 = load <16 x i64>, ptr %3, align 1, !alias.scope !62, !noalias !59
  %256 = shufflevector <16 x i64> %255, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %257 = insertelement <8 x i64> poison, i64 %2, i64 0
  %258 = shufflevector <8 x i64> %257, <8 x i64> poison, <8 x i32> zeroinitializer
  %259 = sub <8 x i64> %256, %258
  %260 = shufflevector <16 x i64> %254, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %261 = xor <8 x i64> %259, %260
  %262 = shufflevector <16 x i64> %255, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %263 = add <8 x i64> %262, %258
  %264 = shufflevector <16 x i64> %254, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %265 = xor <8 x i64> %263, %264
  %266 = zext <8 x i64> %265 to <8 x i128>
  %267 = zext <8 x i64> %261 to <8 x i128>
  %268 = mul nuw <8 x i128> %267, %266
  %269 = lshr <8 x i128> %268, splat (i128 64)
  %270 = xor <8 x i128> %269, %268
  %271 = trunc <8 x i128> %270 to <8 x i64>
  %272 = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %271)
  %273 = add i64 %272, %252
  %274 = lshr i32 %253, 4
  %275 = lshr i64 %273, 37
  %276 = xor i64 %275, %273
  %277 = mul i64 %276, 1609587791953885689
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  %280 = icmp eq i32 %274, 8
  br i1 %280, label %350, label %281

281:                                              ; preds = %251
  %282 = zext nneg i32 %274 to i64
  %283 = add nsw i64 %282, -8
  %284 = icmp ult i64 %283, 2
  br i1 %284, label %321, label %285

285:                                              ; preds = %281
  %286 = and i64 %283, -2
  %287 = add nsw i64 %286, 8
  %288 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %279, i64 0
  %289 = insertelement <2 x i64> poison, i64 %2, i64 0
  %290 = shufflevector <2 x i64> %289, <2 x i64> poison, <2 x i32> zeroinitializer
  %291 = getelementptr i8, ptr %3, i64 -125
  br label %292

292:                                              ; preds = %292, %285
  %293 = phi i64 [ 0, %285 ], [ %316, %292 ]
  %294 = phi <2 x i64> [ %288, %285 ], [ %315, %292 ]
  %295 = shl i64 %293, 4
  %296 = add i64 %295, 128
  %297 = getelementptr i8, ptr %291, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 %296
  %299 = load <4 x i64>, ptr %298, align 1, !alias.scope !59, !noalias !62
  %300 = shufflevector <4 x i64> %299, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %301 = shufflevector <4 x i64> %299, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %302 = load <4 x i64>, ptr %297, align 1, !alias.scope !62, !noalias !59
  %303 = shufflevector <4 x i64> %302, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %304 = shufflevector <4 x i64> %302, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %305 = sub <2 x i64> %304, %290
  %306 = xor <2 x i64> %305, %301
  %307 = add <2 x i64> %303, %290
  %308 = xor <2 x i64> %307, %300
  %309 = zext <2 x i64> %308 to <2 x i128>
  %310 = zext <2 x i64> %306 to <2 x i128>
  %311 = mul nuw <2 x i128> %310, %309
  %312 = lshr <2 x i128> %311, splat (i128 64)
  %313 = xor <2 x i128> %312, %311
  %314 = trunc <2 x i128> %313 to <2 x i64>
  %315 = add <2 x i64> %294, %314
  %316 = add nuw i64 %293, 2
  %317 = icmp eq i64 %316, %286
  br i1 %317, label %318, label %292, !llvm.loop !64

318:                                              ; preds = %292
  %319 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %315)
  %320 = icmp eq i64 %283, %286
  br i1 %320, label %350, label %321

321:                                              ; preds = %281, %318
  %322 = phi i64 [ 8, %281 ], [ %287, %318 ]
  %323 = phi i64 [ %279, %281 ], [ %319, %318 ]
  br label %324

324:                                              ; preds = %321, %324
  %325 = phi i64 [ %348, %324 ], [ %322, %321 ]
  %326 = phi i64 [ %347, %324 ], [ %323, %321 ]
  %327 = shl i64 %325, 4
  %328 = getelementptr i8, ptr %3, i64 %327
  %329 = getelementptr i8, ptr %328, i64 -125
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 %327
  %331 = load i64, ptr %330, align 1, !alias.scope !59, !noalias !62
  %332 = getelementptr i8, ptr %330, i64 8
  %333 = load i64, ptr %332, align 1, !alias.scope !59, !noalias !62
  %334 = load i64, ptr %329, align 1, !alias.scope !62, !noalias !59
  %335 = getelementptr i8, ptr %328, i64 -117
  %336 = load i64, ptr %335, align 1, !alias.scope !62, !noalias !59
  %337 = sub i64 %336, %2
  %338 = xor i64 %337, %333
  %339 = add i64 %334, %2
  %340 = xor i64 %339, %331
  %341 = zext i64 %340 to i128
  %342 = zext i64 %338 to i128
  %343 = mul nuw i128 %342, %341
  %344 = lshr i128 %343, 64
  %345 = xor i128 %344, %343
  %346 = trunc i128 %345 to i64
  %347 = add i64 %326, %346
  %348 = add nuw nsw i64 %325, 1
  %349 = icmp eq i64 %348, %282
  br i1 %349, label %350, label %324, !llvm.loop !67

350:                                              ; preds = %324, %318, %251
  %351 = phi i64 [ %279, %251 ], [ %319, %318 ], [ %347, %324 ]
  %352 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %354 = getelementptr inbounds i8, ptr %353, i64 -16
  %355 = load i64, ptr %354, align 1, !alias.scope !59, !noalias !62
  %356 = getelementptr i8, ptr %353, i64 -8
  %357 = load i64, ptr %356, align 1, !alias.scope !59, !noalias !62
  %358 = load i64, ptr %352, align 1, !alias.scope !62, !noalias !59
  %359 = getelementptr i8, ptr %3, i64 127
  %360 = load i64, ptr %359, align 1, !alias.scope !62, !noalias !59
  %361 = sub i64 %360, %2
  %362 = xor i64 %361, %357
  %363 = add i64 %358, %2
  %364 = xor i64 %363, %355
  %365 = zext i64 %364 to i128
  %366 = zext i64 %362 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %351, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %379

377:                                              ; preds = %249
  %378 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #13, !callees !68
  br label %379

379:                                              ; preds = %59, %54, %46, %10, %377, %350, %205
  %380 = phi i64 [ %248, %205 ], [ %376, %350 ], [ %378, %377 ], [ %43, %10 ], [ %51, %46 ], [ %58, %54 ], [ %73, %59 ]
  ret i64 %380
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture readnone %3, i64 %4) #2 {
  %6 = alloca [8 x i64], align 16
  %7 = alloca [8 x i64], align 16
  %8 = alloca [192 x i8], align 16
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13, !noalias !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !69
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  %11 = mul i64 %1, -7046029288634856825
  %12 = load i64, ptr %7, align 16, !alias.scope !73, !noalias !76
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !alias.scope !73, !noalias !76
  %15 = xor i64 %14, -6611157965513653271
  %16 = xor i64 %12, 7914194659941938988
  %17 = zext i64 %16 to i128
  %18 = zext i64 %15 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %11, %22
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %25 = load i64, ptr %24, align 16, !alias.scope !73, !noalias !76
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %27 = load i64, ptr %26, align 8, !alias.scope !73, !noalias !76
  %28 = xor i64 %27, -3433288310154277810
  %29 = xor i64 %25, -1839215637059881052
  %30 = zext i64 %29 to i128
  %31 = zext i64 %28 to i128
  %32 = mul nuw i128 %31, %30
  %33 = lshr i128 %32, 64
  %34 = xor i128 %33, %32
  %35 = trunc i128 %34 to i64
  %36 = add i64 %23, %35
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %38 = load i64, ptr %37, align 16, !alias.scope !73, !noalias !76
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %40 = load i64, ptr %39, align 8, !alias.scope !73, !noalias !76
  %41 = xor i64 %40, -8055285457383852172
  %42 = xor i64 %38, 5046485836271438973
  %43 = zext i64 %42 to i128
  %44 = zext i64 %41 to i128
  %45 = mul nuw i128 %44, %43
  %46 = lshr i128 %45, 64
  %47 = xor i128 %46, %45
  %48 = trunc i128 %47 to i64
  %49 = add i64 %36, %48
  %50 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %51 = load i64, ptr %50, align 16, !alias.scope !73, !noalias !76
  %52 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %53 = load i64, ptr %52, align 8, !alias.scope !73, !noalias !76
  %54 = xor i64 %53, 7336514198459093435
  %55 = xor i64 %51, 5920048007935066598
  %56 = zext i64 %55 to i128
  %57 = zext i64 %54 to i128
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13, !noalias !69
  br label %169

68:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #13
  %69 = sub nsw i64 0, %2
  %70 = insertelement <2 x i64> poison, i64 %2, i64 0
  %71 = insertelement <2 x i64> %70, i64 %69, i64 1
  %72 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %8) #14, !srcloc !52
  %73 = add <2 x i64> %71, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %73, ptr %72, align 16
  %74 = add <2 x i64> %71, <i64 -2623469361688619810, i64 2262974939099578482>
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 16
  store <2 x i64> %74, ptr %75, align 16
  %76 = add <2 x i64> %71, <i64 8711581037947681227, i64 2410270004345854594>
  %77 = getelementptr inbounds nuw i8, ptr %72, i64 32
  store <2 x i64> %76, ptr %77, align 16
  %78 = add <2 x i64> %71, <i64 -8204357891075471176, i64 5487137525590930912>
  %79 = getelementptr inbounds nuw i8, ptr %72, i64 48
  store <2 x i64> %78, ptr %79, align 16
  %80 = add <2 x i64> %71, <i64 -3818837453329782724, i64 -6688317018830679928>
  %81 = getelementptr inbounds nuw i8, ptr %72, i64 64
  store <2 x i64> %80, ptr %81, align 16
  %82 = add <2 x i64> %71, <i64 5690594596133299313, i64 -2833645246901970632>
  %83 = getelementptr inbounds nuw i8, ptr %72, i64 80
  store <2 x i64> %82, ptr %83, align 16
  %84 = add <2 x i64> %71, <i64 4554437623014685352, i64 2111919702937427193>
  %85 = getelementptr inbounds nuw i8, ptr %72, i64 96
  store <2 x i64> %84, ptr %85, align 16
  %86 = add <2 x i64> %71, <i64 3556072174620004746, i64 7238261902898274248>
  %87 = getelementptr inbounds nuw i8, ptr %72, i64 112
  store <2 x i64> %86, ptr %87, align 16
  %88 = add <2 x i64> %71, <i64 -4329134394285701654, i64 -1485321483350670907>
  %89 = getelementptr inbounds nuw i8, ptr %72, i64 128
  store <2 x i64> %88, ptr %89, align 16
  %90 = add <2 x i64> %71, <i64 5321830579834785047, i64 -7032137544937171245>
  %91 = getelementptr inbounds nuw i8, ptr %72, i64 144
  store <2 x i64> %90, ptr %91, align 16
  %92 = add <2 x i64> %71, <i64 -242834301215959509, i64 -3588858202114426737>
  %93 = getelementptr inbounds nuw i8, ptr %72, i64 160
  store <2 x i64> %92, ptr %93, align 16
  %94 = add <2 x i64> %71, <i64 2883454493032893253, i64 9097354517224871855>
  %95 = getelementptr inbounds nuw i8, ptr %72, i64 176
  store <2 x i64> %94, ptr %95, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !81
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull readonly %8, i64 noundef 192)
  %96 = mul i64 %1, -7046029288634856825
  %97 = getelementptr inbounds nuw i8, ptr %8, i64 11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %98 = load i64, ptr %6, align 16, !alias.scope !83, !noalias !88
  %99 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %100 = load i64, ptr %99, align 8, !alias.scope !83, !noalias !88
  %101 = load i64, ptr %97, align 1, !alias.scope !89, !noalias !90
  %102 = getelementptr inbounds nuw i8, ptr %8, i64 19
  %103 = load i64, ptr %102, align 1, !alias.scope !89, !noalias !90
  %104 = xor i64 %103, %100
  %105 = xor i64 %101, %98
  %106 = zext i64 %105 to i128
  %107 = zext i64 %104 to i128
  %108 = mul nuw i128 %107, %106
  %109 = lshr i128 %108, 64
  %110 = xor i128 %109, %108
  %111 = trunc i128 %110 to i64
  %112 = add i64 %96, %111
  %113 = getelementptr inbounds nuw i8, ptr %8, i64 27
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %115 = load i64, ptr %114, align 16, !alias.scope !83, !noalias !88
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %117 = load i64, ptr %116, align 8, !alias.scope !83, !noalias !88
  %118 = load i64, ptr %113, align 1, !alias.scope !89, !noalias !90
  %119 = getelementptr inbounds nuw i8, ptr %8, i64 35
  %120 = load i64, ptr %119, align 1, !alias.scope !89, !noalias !90
  %121 = xor i64 %120, %117
  %122 = xor i64 %118, %115
  %123 = zext i64 %122 to i128
  %124 = zext i64 %121 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %112, %128
  %130 = getelementptr inbounds nuw i8, ptr %8, i64 43
  %131 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %132 = load i64, ptr %131, align 16, !alias.scope !83, !noalias !88
  %133 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %134 = load i64, ptr %133, align 8, !alias.scope !83, !noalias !88
  %135 = load i64, ptr %130, align 1, !alias.scope !89, !noalias !90
  %136 = getelementptr inbounds nuw i8, ptr %8, i64 51
  %137 = load i64, ptr %136, align 1, !alias.scope !89, !noalias !90
  %138 = xor i64 %137, %134
  %139 = xor i64 %135, %132
  %140 = zext i64 %139 to i128
  %141 = zext i64 %138 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %129, %145
  %147 = getelementptr inbounds nuw i8, ptr %8, i64 59
  %148 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %149 = load i64, ptr %148, align 16, !alias.scope !83, !noalias !88
  %150 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %151 = load i64, ptr %150, align 8, !alias.scope !83, !noalias !88
  %152 = load i64, ptr %147, align 1, !alias.scope !89, !noalias !90
  %153 = getelementptr inbounds nuw i8, ptr %8, i64 67
  %154 = load i64, ptr %153, align 1, !alias.scope !89, !noalias !90
  %155 = xor i64 %154, %151
  %156 = xor i64 %152, %149
  %157 = zext i64 %156 to i128
  %158 = zext i64 %155 to i128
  %159 = mul nuw i128 %158, %157
  %160 = lshr i128 %159, 64
  %161 = xor i128 %160, %159
  %162 = trunc i128 %161 to i64
  %163 = add i64 %146, %162
  %164 = lshr i64 %163, 37
  %165 = xor i64 %164, %163
  %166 = mul i64 %165, 1609587791953885689
  %167 = lshr i64 %166, 32
  %168 = xor i64 %167, %166
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !81
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #13
  br label %169

169:                                              ; preds = %10, %68
  %170 = phi i64 [ %67, %10 ], [ %168, %68 ]
  ret i64 %170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr nocapture noundef readonly %0, i64 noundef range(i64 4, 9) %1, i64 %2, i64 %3, i64 noundef %4) unnamed_addr #6 {
  %6 = trunc i64 %4 to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = xor i64 %9, %4
  %11 = load i32, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = xor i64 %3, %2
  %16 = sub i64 %15, %10
  %17 = zext i32 %14 to i64
  %18 = zext i32 %11 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or disjoint i64 %19, %17
  %21 = xor i64 %20, %16
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 49)
  %23 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 24)
  %24 = xor i64 %22, %23
  %25 = xor i64 %24, %21
  %26 = mul i64 %25, -6939452855193903323
  %27 = lshr i64 %26, 35
  %28 = add nuw nsw i64 %27, %1
  %29 = xor i64 %28, %26
  %30 = mul i64 %29, -6939452855193903323
  %31 = lshr i64 %30, 28
  %32 = xor i64 %31, %30
  ret i64 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_1to3_64b(ptr nocapture noundef readonly %0, i64 noundef range(i64 1, 4) %1, i32 %2, i32 %3, i64 noundef %4) unnamed_addr #6 {
  %6 = load i8, ptr %0, align 1
  %7 = lshr i64 %1, 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i64 %1
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %6 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = zext i8 %9 to i64
  %16 = shl nuw nsw i64 %15, 24
  %17 = or disjoint i64 %16, %14
  %18 = zext i8 %12 to i64
  %19 = or disjoint i64 %17, %18
  %20 = shl nuw nsw i64 %1, 8
  %21 = or disjoint i64 %19, %20
  %22 = xor i32 %3, %2
  %23 = zext i32 %22 to i64
  %24 = add i64 %4, %23
  %25 = xor i64 %21, %24
  %26 = lshr i64 %25, 33
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, -4417276706812531889
  %29 = lshr i64 %28, 29
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, 1609587929392839161
  %32 = lshr i64 %31, 32
  %33 = xor i64 %32, %31
  ret i64 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #7 {
  %6 = add i64 %4, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %2, -1
  %10 = udiv i64 %9, %8
  %11 = urem i64 %9, %8
  %12 = icmp ugt i64 %8, %9
  %13 = load <2 x i64>, ptr %0, align 16, !alias.scope !91, !noalias !94
  br i1 %12, label %154, label %14

14:                                               ; preds = %5
  %15 = icmp ult i64 %6, 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %20 = getelementptr inbounds i8, ptr %19, i64 -64
  %21 = load <2 x i64>, ptr %20, align 1, !alias.scope !97, !noalias !100
  %22 = getelementptr inbounds i8, ptr %19, i64 -48
  %23 = load <2 x i64>, ptr %22, align 1, !alias.scope !97, !noalias !100
  %24 = getelementptr inbounds i8, ptr %19, i64 -32
  %25 = load <2 x i64>, ptr %24, align 1, !alias.scope !97, !noalias !100
  %26 = getelementptr inbounds i8, ptr %19, i64 -16
  %27 = load <2 x i64>, ptr %26, align 1, !alias.scope !97, !noalias !100
  %28 = load <2 x i64>, ptr %16, align 16, !noalias !102
  %29 = load <2 x i64>, ptr %17, align 16, !noalias !102
  %30 = load <2 x i64>, ptr %18, align 16, !noalias !102
  br label %31

31:                                               ; preds = %14, %106
  %32 = phi <2 x i64> [ %30, %14 ], [ %150, %106 ]
  %33 = phi <2 x i64> [ %29, %14 ], [ %140, %106 ]
  %34 = phi <2 x i64> [ %28, %14 ], [ %130, %106 ]
  %35 = phi <2 x i64> [ %13, %14 ], [ %120, %106 ]
  %36 = phi i64 [ 0, %14 ], [ %151, %106 ]
  %37 = mul i64 %36, %8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 %37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  br i1 %15, label %106, label %39

39:                                               ; preds = %31, %39
  %40 = phi <2 x i64> [ %103, %39 ], [ %32, %31 ]
  %41 = phi <2 x i64> [ %89, %39 ], [ %33, %31 ]
  %42 = phi <2 x i64> [ %75, %39 ], [ %34, %31 ]
  %43 = phi <2 x i64> [ %61, %39 ], [ %35, %31 ]
  %44 = phi i64 [ %104, %39 ], [ 0, %31 ]
  %45 = shl i64 %44, 6
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %47, i32 0, i32 3, i32 1), !noalias !108
  %48 = shl nuw i64 %44, 3
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 %48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %50 = load <2 x i64>, ptr %46, align 1, !alias.scope !115, !noalias !116
  %51 = load <2 x i64>, ptr %49, align 1, !alias.scope !118, !noalias !119
  %52 = xor <2 x i64> %51, %50
  %53 = bitcast <2 x i64> %52 to <4 x i32>
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %55 = bitcast <4 x i32> %54 to <2 x i64>
  %56 = and <2 x i64> %52, splat (i64 4294967295)
  %57 = and <2 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <2 x i64> %57, %56
  %59 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %60 = add <2 x i64> %43, %59
  %61 = add <2 x i64> %60, %58
  %62 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %63 = load <2 x i64>, ptr %62, align 1, !alias.scope !115, !noalias !116
  %64 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %65 = load <2 x i64>, ptr %64, align 1, !alias.scope !118, !noalias !119
  %66 = xor <2 x i64> %65, %63
  %67 = bitcast <2 x i64> %66 to <4 x i32>
  %68 = shufflevector <4 x i32> %67, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %69 = bitcast <4 x i32> %68 to <2 x i64>
  %70 = and <2 x i64> %66, splat (i64 4294967295)
  %71 = and <2 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <2 x i64> %71, %70
  %73 = shufflevector <2 x i64> %63, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %74 = add <2 x i64> %42, %73
  %75 = add <2 x i64> %74, %72
  %76 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %77 = load <2 x i64>, ptr %76, align 1, !alias.scope !115, !noalias !116
  %78 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %79 = load <2 x i64>, ptr %78, align 1, !alias.scope !118, !noalias !119
  %80 = xor <2 x i64> %79, %77
  %81 = bitcast <2 x i64> %80 to <4 x i32>
  %82 = shufflevector <4 x i32> %81, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %83 = bitcast <4 x i32> %82 to <2 x i64>
  %84 = and <2 x i64> %80, splat (i64 4294967295)
  %85 = and <2 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <2 x i64> %85, %84
  %87 = shufflevector <2 x i64> %77, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %88 = add <2 x i64> %41, %87
  %89 = add <2 x i64> %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %91 = load <2 x i64>, ptr %90, align 1, !alias.scope !115, !noalias !116
  %92 = getelementptr inbounds nuw i8, ptr %49, i64 48
  %93 = load <2 x i64>, ptr %92, align 1, !alias.scope !118, !noalias !119
  %94 = xor <2 x i64> %93, %91
  %95 = bitcast <2 x i64> %94 to <4 x i32>
  %96 = shufflevector <4 x i32> %95, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %97 = bitcast <4 x i32> %96 to <2 x i64>
  %98 = and <2 x i64> %94, splat (i64 4294967295)
  %99 = and <2 x i64> %97, splat (i64 4294967295)
  %100 = mul nuw <2 x i64> %99, %98
  %101 = shufflevector <2 x i64> %91, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %102 = add <2 x i64> %40, %101
  %103 = add <2 x i64> %102, %100
  %104 = add nuw nsw i64 %44, 1
  %105 = icmp eq i64 %104, %7
  br i1 %105, label %106, label %39, !llvm.loop !120

106:                                              ; preds = %39, %31
  %107 = phi <2 x i64> [ %32, %31 ], [ %103, %39 ]
  %108 = phi <2 x i64> [ %33, %31 ], [ %89, %39 ]
  %109 = phi <2 x i64> [ %34, %31 ], [ %75, %39 ]
  %110 = phi <2 x i64> [ %35, %31 ], [ %61, %39 ]
  %111 = lshr <2 x i64> %110, splat (i64 47)
  %112 = xor <2 x i64> %111, %21
  %113 = xor <2 x i64> %112, %110
  %114 = bitcast <2 x i64> %113 to <4 x i32>
  %115 = shufflevector <4 x i32> %114, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %116 = bitcast <4 x i32> %115 to <2 x i64>
  %117 = and <2 x i64> %113, splat (i64 4294967295)
  %118 = mul nuw <2 x i64> %117, splat (i64 2654435761)
  %119 = mul <2 x i64> %116, splat (i64 -7046029290881679360)
  %120 = add <2 x i64> %119, %118
  %121 = lshr <2 x i64> %109, splat (i64 47)
  %122 = xor <2 x i64> %121, %23
  %123 = xor <2 x i64> %122, %109
  %124 = bitcast <2 x i64> %123 to <4 x i32>
  %125 = shufflevector <4 x i32> %124, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %126 = bitcast <4 x i32> %125 to <2 x i64>
  %127 = and <2 x i64> %123, splat (i64 4294967295)
  %128 = mul nuw <2 x i64> %127, splat (i64 2654435761)
  %129 = mul <2 x i64> %126, splat (i64 -7046029290881679360)
  %130 = add <2 x i64> %129, %128
  %131 = lshr <2 x i64> %108, splat (i64 47)
  %132 = xor <2 x i64> %131, %25
  %133 = xor <2 x i64> %132, %108
  %134 = bitcast <2 x i64> %133 to <4 x i32>
  %135 = shufflevector <4 x i32> %134, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %136 = bitcast <4 x i32> %135 to <2 x i64>
  %137 = and <2 x i64> %133, splat (i64 4294967295)
  %138 = mul nuw <2 x i64> %137, splat (i64 2654435761)
  %139 = mul <2 x i64> %136, splat (i64 -7046029290881679360)
  %140 = add <2 x i64> %139, %138
  %141 = lshr <2 x i64> %107, splat (i64 47)
  %142 = xor <2 x i64> %141, %27
  %143 = xor <2 x i64> %142, %107
  %144 = bitcast <2 x i64> %143 to <4 x i32>
  %145 = shufflevector <4 x i32> %144, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %146 = bitcast <4 x i32> %145 to <2 x i64>
  %147 = and <2 x i64> %143, splat (i64 4294967295)
  %148 = mul nuw <2 x i64> %147, splat (i64 2654435761)
  %149 = mul <2 x i64> %146, splat (i64 -7046029290881679360)
  %150 = add <2 x i64> %149, %148
  %151 = add nuw i64 %36, 1
  %152 = icmp ult i64 %151, %10
  br i1 %152, label %31, label %153, !llvm.loop !121

153:                                              ; preds = %106
  store <2 x i64> %130, ptr %16, align 16, !noalias !102
  store <2 x i64> %140, ptr %17, align 16, !noalias !102
  store <2 x i64> %150, ptr %18, align 16, !noalias !102
  br label %154

154:                                              ; preds = %153, %5
  %155 = phi <2 x i64> [ %120, %153 ], [ %13, %5 ]
  %156 = mul i64 %10, %8
  %157 = lshr i64 %11, 6
  %158 = getelementptr inbounds nuw i8, ptr %1, i64 %156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %159 = icmp ult i64 %11, 64
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %159, label %161, label %167

161:                                              ; preds = %154
  %162 = load <2 x i64>, ptr %160, align 16, !alias.scope !91, !noalias !94
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %164 = load <2 x i64>, ptr %163, align 16, !alias.scope !91, !noalias !94
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %166 = load <2 x i64>, ptr %165, align 16, !alias.scope !91, !noalias !94
  br label %240

167:                                              ; preds = %154
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %170 = load <2 x i64>, ptr %160, align 16, !alias.scope !129, !noalias !132
  %171 = load <2 x i64>, ptr %168, align 16, !alias.scope !129, !noalias !132
  %172 = load <2 x i64>, ptr %169, align 16, !alias.scope !129, !noalias !132
  br label %173

173:                                              ; preds = %173, %167
  %174 = phi <2 x i64> [ %172, %167 ], [ %237, %173 ]
  %175 = phi <2 x i64> [ %171, %167 ], [ %223, %173 ]
  %176 = phi <2 x i64> [ %170, %167 ], [ %209, %173 ]
  %177 = phi <2 x i64> [ %155, %167 ], [ %195, %173 ]
  %178 = phi i64 [ 0, %167 ], [ %238, %173 ]
  %179 = shl i64 %178, 6
  %180 = getelementptr inbounds nuw i8, ptr %158, i64 %179
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %181, i32 0, i32 3, i32 1), !noalias !135
  %182 = shl nuw i64 %178, 3
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 %182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %184 = load <2 x i64>, ptr %180, align 1, !alias.scope !139, !noalias !140
  %185 = load <2 x i64>, ptr %183, align 1, !alias.scope !141, !noalias !142
  %186 = xor <2 x i64> %185, %184
  %187 = bitcast <2 x i64> %186 to <4 x i32>
  %188 = shufflevector <4 x i32> %187, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %189 = bitcast <4 x i32> %188 to <2 x i64>
  %190 = and <2 x i64> %186, splat (i64 4294967295)
  %191 = and <2 x i64> %189, splat (i64 4294967295)
  %192 = mul nuw <2 x i64> %191, %190
  %193 = shufflevector <2 x i64> %184, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %194 = add <2 x i64> %177, %193
  %195 = add <2 x i64> %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %180, i64 16
  %197 = load <2 x i64>, ptr %196, align 1, !alias.scope !139, !noalias !140
  %198 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %199 = load <2 x i64>, ptr %198, align 1, !alias.scope !141, !noalias !142
  %200 = xor <2 x i64> %199, %197
  %201 = bitcast <2 x i64> %200 to <4 x i32>
  %202 = shufflevector <4 x i32> %201, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %203 = bitcast <4 x i32> %202 to <2 x i64>
  %204 = and <2 x i64> %200, splat (i64 4294967295)
  %205 = and <2 x i64> %203, splat (i64 4294967295)
  %206 = mul nuw <2 x i64> %205, %204
  %207 = shufflevector <2 x i64> %197, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %208 = add <2 x i64> %176, %207
  %209 = add <2 x i64> %208, %206
  %210 = getelementptr inbounds nuw i8, ptr %180, i64 32
  %211 = load <2 x i64>, ptr %210, align 1, !alias.scope !139, !noalias !140
  %212 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %213 = load <2 x i64>, ptr %212, align 1, !alias.scope !141, !noalias !142
  %214 = xor <2 x i64> %213, %211
  %215 = bitcast <2 x i64> %214 to <4 x i32>
  %216 = shufflevector <4 x i32> %215, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %217 = bitcast <4 x i32> %216 to <2 x i64>
  %218 = and <2 x i64> %214, splat (i64 4294967295)
  %219 = and <2 x i64> %217, splat (i64 4294967295)
  %220 = mul nuw <2 x i64> %219, %218
  %221 = shufflevector <2 x i64> %211, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %222 = add <2 x i64> %175, %221
  %223 = add <2 x i64> %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %180, i64 48
  %225 = load <2 x i64>, ptr %224, align 1, !alias.scope !139, !noalias !140
  %226 = getelementptr inbounds nuw i8, ptr %183, i64 48
  %227 = load <2 x i64>, ptr %226, align 1, !alias.scope !141, !noalias !142
  %228 = xor <2 x i64> %227, %225
  %229 = bitcast <2 x i64> %228 to <4 x i32>
  %230 = shufflevector <4 x i32> %229, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %231 = bitcast <4 x i32> %230 to <2 x i64>
  %232 = and <2 x i64> %228, splat (i64 4294967295)
  %233 = and <2 x i64> %231, splat (i64 4294967295)
  %234 = mul nuw <2 x i64> %233, %232
  %235 = shufflevector <2 x i64> %225, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %236 = add <2 x i64> %174, %235
  %237 = add <2 x i64> %236, %234
  %238 = add nuw nsw i64 %178, 1
  %239 = icmp eq i64 %238, %157
  br i1 %239, label %240, label %173, !llvm.loop !120

240:                                              ; preds = %173, %161
  %241 = phi <2 x i64> [ %166, %161 ], [ %237, %173 ]
  %242 = phi <2 x i64> [ %164, %161 ], [ %223, %173 ]
  %243 = phi <2 x i64> [ %162, %161 ], [ %209, %173 ]
  %244 = phi <2 x i64> [ %155, %161 ], [ %195, %173 ]
  %245 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %246 = getelementptr inbounds i8, ptr %245, i64 -64
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %248 = getelementptr inbounds i8, ptr %247, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %249 = load <2 x i64>, ptr %246, align 1, !alias.scope !143, !noalias !145
  %250 = load <2 x i64>, ptr %248, align 1, !alias.scope !144, !noalias !146
  %251 = xor <2 x i64> %250, %249
  %252 = bitcast <2 x i64> %251 to <4 x i32>
  %253 = shufflevector <4 x i32> %252, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %254 = bitcast <4 x i32> %253 to <2 x i64>
  %255 = and <2 x i64> %251, splat (i64 4294967295)
  %256 = and <2 x i64> %254, splat (i64 4294967295)
  %257 = mul nuw <2 x i64> %256, %255
  %258 = shufflevector <2 x i64> %249, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %259 = add <2 x i64> %244, %258
  %260 = add <2 x i64> %259, %257
  store <2 x i64> %260, ptr %0, align 16, !alias.scope !91, !noalias !94
  %261 = getelementptr inbounds i8, ptr %245, i64 -48
  %262 = load <2 x i64>, ptr %261, align 1, !alias.scope !143, !noalias !145
  %263 = getelementptr inbounds i8, ptr %247, i64 -55
  %264 = load <2 x i64>, ptr %263, align 1, !alias.scope !144, !noalias !146
  %265 = xor <2 x i64> %264, %262
  %266 = bitcast <2 x i64> %265 to <4 x i32>
  %267 = shufflevector <4 x i32> %266, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %268 = bitcast <4 x i32> %267 to <2 x i64>
  %269 = and <2 x i64> %265, splat (i64 4294967295)
  %270 = and <2 x i64> %268, splat (i64 4294967295)
  %271 = mul nuw <2 x i64> %270, %269
  %272 = shufflevector <2 x i64> %262, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %274 = add <2 x i64> %243, %272
  %275 = add <2 x i64> %274, %271
  store <2 x i64> %275, ptr %273, align 16, !alias.scope !91, !noalias !94
  %276 = getelementptr inbounds i8, ptr %245, i64 -32
  %277 = load <2 x i64>, ptr %276, align 1, !alias.scope !143, !noalias !145
  %278 = getelementptr inbounds i8, ptr %247, i64 -39
  %279 = load <2 x i64>, ptr %278, align 1, !alias.scope !144, !noalias !146
  %280 = xor <2 x i64> %279, %277
  %281 = bitcast <2 x i64> %280 to <4 x i32>
  %282 = shufflevector <4 x i32> %281, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %283 = bitcast <4 x i32> %282 to <2 x i64>
  %284 = and <2 x i64> %280, splat (i64 4294967295)
  %285 = and <2 x i64> %283, splat (i64 4294967295)
  %286 = mul nuw <2 x i64> %285, %284
  %287 = shufflevector <2 x i64> %277, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %289 = add <2 x i64> %242, %287
  %290 = add <2 x i64> %289, %286
  store <2 x i64> %290, ptr %288, align 16, !alias.scope !91, !noalias !94
  %291 = getelementptr inbounds i8, ptr %245, i64 -16
  %292 = load <2 x i64>, ptr %291, align 1, !alias.scope !143, !noalias !145
  %293 = getelementptr inbounds i8, ptr %247, i64 -23
  %294 = load <2 x i64>, ptr %293, align 1, !alias.scope !144, !noalias !146
  %295 = xor <2 x i64> %294, %292
  %296 = bitcast <2 x i64> %295 to <4 x i32>
  %297 = shufflevector <4 x i32> %296, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %298 = bitcast <4 x i32> %297 to <2 x i64>
  %299 = and <2 x i64> %295, splat (i64 4294967295)
  %300 = and <2 x i64> %298, splat (i64 4294967295)
  %301 = mul nuw <2 x i64> %300, %299
  %302 = shufflevector <2 x i64> %292, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %304 = add <2 x i64> %241, %302
  %305 = add <2 x i64> %304, %301
  store <2 x i64> %305, ptr %303, align 16, !alias.scope !91, !noalias !94
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #9 {
  %6 = alloca [8 x i64], align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !150
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %3, i64 noundef %4)
  %7 = mul i64 %1, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %9 = load i64, ptr %6, align 16, !alias.scope !152, !noalias !157
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !152, !noalias !157
  %12 = load i64, ptr %8, align 1, !alias.scope !158, !noalias !159
  %13 = getelementptr i8, ptr %3, i64 19
  %14 = load i64, ptr %13, align 1, !alias.scope !158, !noalias !159
  %15 = xor i64 %14, %11
  %16 = xor i64 %12, %9
  %17 = zext i64 %16 to i128
  %18 = zext i64 %15 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %7, %22
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %26 = load i64, ptr %25, align 16, !alias.scope !152, !noalias !157
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !152, !noalias !157
  %29 = load i64, ptr %24, align 1, !alias.scope !158, !noalias !159
  %30 = getelementptr i8, ptr %3, i64 35
  %31 = load i64, ptr %30, align 1, !alias.scope !158, !noalias !159
  %32 = xor i64 %31, %28
  %33 = xor i64 %29, %26
  %34 = zext i64 %33 to i128
  %35 = zext i64 %32 to i128
  %36 = mul nuw i128 %35, %34
  %37 = lshr i128 %36, 64
  %38 = xor i128 %37, %36
  %39 = trunc i128 %38 to i64
  %40 = add i64 %23, %39
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %43 = load i64, ptr %42, align 16, !alias.scope !152, !noalias !157
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !152, !noalias !157
  %46 = load i64, ptr %41, align 1, !alias.scope !158, !noalias !159
  %47 = getelementptr i8, ptr %3, i64 51
  %48 = load i64, ptr %47, align 1, !alias.scope !158, !noalias !159
  %49 = xor i64 %48, %45
  %50 = xor i64 %46, %43
  %51 = zext i64 %50 to i128
  %52 = zext i64 %49 to i128
  %53 = mul nuw i128 %52, %51
  %54 = lshr i128 %53, 64
  %55 = xor i128 %54, %53
  %56 = trunc i128 %55 to i64
  %57 = add i64 %40, %56
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %59 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %60 = load i64, ptr %59, align 16, !alias.scope !152, !noalias !157
  %61 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !152, !noalias !157
  %63 = load i64, ptr %58, align 1, !alias.scope !158, !noalias !159
  %64 = getelementptr i8, ptr %3, i64 67
  %65 = load i64, ptr %64, align 1, !alias.scope !158, !noalias !159
  %66 = xor i64 %65, %62
  %67 = xor i64 %63, %60
  %68 = zext i64 %67 to i128
  %69 = zext i64 %66 to i128
  %70 = mul nuw i128 %69, %68
  %71 = lshr i128 %70, 64
  %72 = xor i128 %71, %70
  %73 = trunc i128 %72 to i64
  %74 = add i64 %57, %73
  %75 = lshr i64 %74, 37
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, 1609587791953885689
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !150
  ret i64 %79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_128b_internal(ptr dead_on_unwind noalias nocapture writable writeonly align 8 initializes((0, 16)) %0, ptr noalias nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3) unnamed_addr #10 {
  %5 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %5, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef 192)
  %6 = mul i64 %2, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %8 = load i64, ptr %5, align 16, !alias.scope !160, !noalias !163
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !alias.scope !160, !noalias !163
  %11 = load i64, ptr %7, align 1, !alias.scope !163, !noalias !160
  %12 = getelementptr i8, ptr %3, i64 19
  %13 = load i64, ptr %12, align 1, !alias.scope !163, !noalias !160
  %14 = xor i64 %13, %10
  %15 = xor i64 %11, %8
  %16 = zext i64 %15 to i128
  %17 = zext i64 %14 to i128
  %18 = mul nuw i128 %17, %16
  %19 = lshr i128 %18, 64
  %20 = xor i128 %19, %18
  %21 = trunc i128 %20 to i64
  %22 = add i64 %6, %21
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %25 = load i64, ptr %24, align 16, !alias.scope !160, !noalias !163
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %27 = load i64, ptr %26, align 8, !alias.scope !160, !noalias !163
  %28 = load i64, ptr %23, align 1, !alias.scope !163, !noalias !160
  %29 = getelementptr i8, ptr %3, i64 35
  %30 = load i64, ptr %29, align 1, !alias.scope !163, !noalias !160
  %31 = xor i64 %30, %27
  %32 = xor i64 %28, %25
  %33 = zext i64 %32 to i128
  %34 = zext i64 %31 to i128
  %35 = mul nuw i128 %34, %33
  %36 = lshr i128 %35, 64
  %37 = xor i128 %36, %35
  %38 = trunc i128 %37 to i64
  %39 = add i64 %22, %38
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %42 = load i64, ptr %41, align 16, !alias.scope !160, !noalias !163
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %44 = load i64, ptr %43, align 8, !alias.scope !160, !noalias !163
  %45 = load i64, ptr %40, align 1, !alias.scope !163, !noalias !160
  %46 = getelementptr i8, ptr %3, i64 51
  %47 = load i64, ptr %46, align 1, !alias.scope !163, !noalias !160
  %48 = xor i64 %47, %44
  %49 = xor i64 %45, %42
  %50 = zext i64 %49 to i128
  %51 = zext i64 %48 to i128
  %52 = mul nuw i128 %51, %50
  %53 = lshr i128 %52, 64
  %54 = xor i128 %53, %52
  %55 = trunc i128 %54 to i64
  %56 = add i64 %39, %55
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %59 = load i64, ptr %58, align 16, !alias.scope !160, !noalias !163
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %61 = load i64, ptr %60, align 8, !alias.scope !160, !noalias !163
  %62 = load i64, ptr %57, align 1, !alias.scope !163, !noalias !160
  %63 = getelementptr i8, ptr %3, i64 67
  %64 = load i64, ptr %63, align 1, !alias.scope !163, !noalias !160
  %65 = xor i64 %64, %61
  %66 = xor i64 %62, %59
  %67 = zext i64 %66 to i128
  %68 = zext i64 %65 to i128
  %69 = mul nuw i128 %68, %67
  %70 = lshr i128 %69, 64
  %71 = xor i128 %70, %69
  %72 = trunc i128 %71 to i64
  %73 = add i64 %56, %72
  %74 = lshr i64 %73, 37
  %75 = xor i64 %74, %73
  %76 = mul i64 %75, 1609587791953885689
  %77 = lshr i64 %76, 32
  %78 = xor i64 %77, %76
  store i64 %78, ptr %0, align 8
  %79 = mul i64 %2, -4417276706812531889
  %80 = xor i64 %79, -1
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 117
  %82 = load i64, ptr %81, align 1, !alias.scope !165, !noalias !168
  %83 = getelementptr i8, ptr %3, i64 125
  %84 = load i64, ptr %83, align 1, !alias.scope !165, !noalias !168
  %85 = xor i64 %84, %10
  %86 = xor i64 %82, %8
  %87 = zext i64 %86 to i128
  %88 = zext i64 %85 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, %80
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 133
  %95 = load i64, ptr %94, align 1, !alias.scope !165, !noalias !168
  %96 = getelementptr i8, ptr %3, i64 141
  %97 = load i64, ptr %96, align 1, !alias.scope !165, !noalias !168
  %98 = xor i64 %97, %27
  %99 = xor i64 %95, %25
  %100 = zext i64 %99 to i128
  %101 = zext i64 %98 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %93, %105
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 149
  %108 = load i64, ptr %107, align 1, !alias.scope !165, !noalias !168
  %109 = getelementptr i8, ptr %3, i64 157
  %110 = load i64, ptr %109, align 1, !alias.scope !165, !noalias !168
  %111 = xor i64 %110, %44
  %112 = xor i64 %108, %42
  %113 = zext i64 %112 to i128
  %114 = zext i64 %111 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %106, %118
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 165
  %121 = load i64, ptr %120, align 1, !alias.scope !165, !noalias !168
  %122 = getelementptr i8, ptr %3, i64 173
  %123 = load i64, ptr %122, align 1, !alias.scope !165, !noalias !168
  %124 = xor i64 %123, %61
  %125 = xor i64 %121, %59
  %126 = zext i64 %125 to i128
  %127 = zext i64 %124 to i128
  %128 = mul nuw i128 %127, %126
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %119, %131
  %133 = lshr i64 %132, 37
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, 1609587791953885689
  %136 = lshr i64 %135, 32
  %137 = xor i64 %136, %135
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %137, ptr %138, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #12

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH_INLINE_XXH3_128bits_withSeed: argument 0"}
!10 = distinct !{!10, !"XXH_INLINE_XXH3_128bits_withSeed"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_128bits_internal: argument 0"}
!13 = distinct !{!13, !"XXH3_128bits_internal"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_len_0to16_128b: argument 0"}
!16 = distinct !{!16, !"XXH3_len_0to16_128b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_len_9to16_128b: argument 0"}
!19 = distinct !{!19, !"XXH3_len_9to16_128b"}
!20 = !{!18, !15, !12, !9}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_len_4to8_128b: argument 0"}
!23 = distinct !{!23, !"XXH3_len_4to8_128b"}
!24 = !{!22, !15, !12, !9}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_len_1to3_128b: argument 0"}
!27 = distinct !{!27, !"XXH3_len_1to3_128b"}
!28 = !{!26, !15, !12, !9}
!29 = !{!15, !12, !9}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_len_17to128_128b: argument 0"}
!32 = distinct !{!32, !"XXH3_len_17to128_128b"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"XXH3_len_17to128_128b: argument 1"}
!35 = !{!31, !12, !9}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_len_129to240_128b: argument 0"}
!38 = distinct !{!38, !"XXH3_len_129to240_128b"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"XXH3_len_129to240_128b: argument 1"}
!41 = !{!37, !12, !9}
!42 = !{!43, !37, !40, !12, !9}
!43 = distinct !{!43, !44, !"XXH128_mix32B: argument 0"}
!44 = distinct !{!44, !"XXH128_mix32B"}
!45 = distinct !{!45, !6}
!46 = !{!47, !49, !50, !12, !9}
!47 = distinct !{!47, !48, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!48 = distinct !{!48, !"XXH3_hashLong_128b_withSeed_internal"}
!49 = distinct !{!49, !48, !"XXH3_hashLong_128b_withSeed_internal: argument 1"}
!50 = distinct !{!50, !51, !"XXH3_hashLong_128b_withSeed: argument 0"}
!51 = distinct !{!51, !"XXH3_hashLong_128b_withSeed"}
!52 = !{i64 196250}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_len_17to128_64b: argument 0"}
!56 = distinct !{!56, !"XXH3_len_17to128_64b"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_len_17to128_64b: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"XXH3_len_129to240_64b: argument 0"}
!61 = distinct !{!61, !"XXH3_len_129to240_64b"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"XXH3_len_129to240_64b: argument 1"}
!64 = distinct !{!64, !6, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !6, !66, !65}
!68 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"XXH3_hashLong_64b_internal: argument 0"}
!71 = distinct !{!71, !"XXH3_hashLong_64b_internal"}
!72 = distinct !{!72, !71, !"XXH3_hashLong_64b_internal: argument 1"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_mergeAccs: argument 0"}
!75 = distinct !{!75, !"XXH3_mergeAccs"}
!76 = !{!77, !70, !72}
!77 = distinct !{!77, !75, !"XXH3_mergeAccs: argument 1"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_hashLong_64b_internal: argument 1"}
!80 = distinct !{!80, !"XXH3_hashLong_64b_internal"}
!81 = !{!82, !79}
!82 = distinct !{!82, !80, !"XXH3_hashLong_64b_internal: argument 0"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"XXH3_mergeAccs: argument 0"}
!85 = distinct !{!85, !"XXH3_mergeAccs"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"XXH3_mergeAccs: argument 1"}
!88 = !{!87, !82, !79}
!89 = !{!87, !79}
!90 = !{!84, !82}
!91 = !{!92}
!92 = distinct !{!92, !93, !"XXH3_accumulate_512_sse2: argument 0"}
!93 = distinct !{!93, !"XXH3_accumulate_512_sse2"}
!94 = !{!95, !96}
!95 = distinct !{!95, !93, !"XXH3_accumulate_512_sse2: argument 1"}
!96 = distinct !{!96, !93, !"XXH3_accumulate_512_sse2: argument 2"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"XXH3_scrambleAcc_sse2: argument 1"}
!99 = distinct !{!99, !"XXH3_scrambleAcc_sse2"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"XXH3_scrambleAcc_sse2: argument 0"}
!102 = !{}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_accumulate: argument 1"}
!105 = distinct !{!105, !"XXH3_accumulate"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"XXH3_accumulate: argument 2"}
!108 = !{!109, !107}
!109 = distinct !{!109, !105, !"XXH3_accumulate: argument 0"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"XXH3_accumulate_512_sse2: argument 1"}
!112 = distinct !{!112, !"XXH3_accumulate_512_sse2"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"XXH3_accumulate_512_sse2: argument 2"}
!115 = !{!111, !104}
!116 = !{!117, !114, !109, !107}
!117 = distinct !{!117, !112, !"XXH3_accumulate_512_sse2: argument 0"}
!118 = !{!114, !107}
!119 = !{!117, !111, !109, !104}
!120 = distinct !{!120, !6}
!121 = distinct !{!121, !6}
!122 = !{!123}
!123 = distinct !{!123, !124, !"XXH3_accumulate: argument 0"}
!124 = distinct !{!124, !"XXH3_accumulate"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"XXH3_accumulate: argument 1"}
!127 = !{!128}
!128 = distinct !{!128, !124, !"XXH3_accumulate: argument 2"}
!129 = !{!130, !123}
!130 = distinct !{!130, !131, !"XXH3_accumulate_512_sse2: argument 0"}
!131 = distinct !{!131, !"XXH3_accumulate_512_sse2"}
!132 = !{!133, !134, !126, !128}
!133 = distinct !{!133, !131, !"XXH3_accumulate_512_sse2: argument 1"}
!134 = distinct !{!134, !131, !"XXH3_accumulate_512_sse2: argument 2"}
!135 = !{!123, !128}
!136 = !{!130}
!137 = !{!133}
!138 = !{!134}
!139 = !{!133, !126}
!140 = !{!130, !134, !123, !128}
!141 = !{!134, !128}
!142 = !{!130, !133, !123, !126}
!143 = !{!95}
!144 = !{!96}
!145 = !{!92, !96}
!146 = !{!92, !95}
!147 = !{!148}
!148 = distinct !{!148, !149, !"XXH3_hashLong_64b_internal: argument 1"}
!149 = distinct !{!149, !"XXH3_hashLong_64b_internal"}
!150 = !{!151, !148}
!151 = distinct !{!151, !149, !"XXH3_hashLong_64b_internal: argument 0"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"XXH3_mergeAccs: argument 0"}
!154 = distinct !{!154, !"XXH3_mergeAccs"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"XXH3_mergeAccs: argument 1"}
!157 = !{!156, !151, !148}
!158 = !{!156, !148}
!159 = !{!153, !151}
!160 = !{!161}
!161 = distinct !{!161, !162, !"XXH3_mergeAccs: argument 0"}
!162 = distinct !{!162, !"XXH3_mergeAccs"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"XXH3_mergeAccs: argument 1"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"XXH3_mergeAccs: argument 1"}
!167 = distinct !{!167, !"XXH3_mergeAccs"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"XXH3_mergeAccs: argument 0"}
