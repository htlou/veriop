; ModuleID = 'ident_mips_gccview/wrapper.c'
source_filename = "ident_mips_gccview/wrapper.c"
target datalayout = "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mips-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 15
  br i1 %4, label %5, label %56

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds i8, ptr %8, i32 -15
  %10 = add i32 %2, 606290984
  %11 = add i32 %2, -2048144777
  %12 = add i32 %2, 1640531535
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi ptr [ %0, %5 ], [ %46, %13 ]
  %15 = phi i32 [ %10, %5 ], [ %24, %13 ]
  %16 = phi i32 [ %11, %5 ], [ %31, %13 ]
  %17 = phi i32 [ %2, %5 ], [ %38, %13 ]
  %18 = phi i32 [ %12, %5 ], [ %45, %13 ]
  %19 = load i32, ptr %14, align 1
  %20 = tail call noundef i32 @llvm.bswap.i32(i32 %19)
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %15
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = getelementptr inbounds nuw i8, ptr %14, i32 4
  %26 = load i32, ptr %25, align 1
  %27 = tail call noundef i32 @llvm.bswap.i32(i32 %26)
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %16
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = getelementptr inbounds nuw i8, ptr %14, i32 8
  %33 = load i32, ptr %32, align 1
  %34 = tail call noundef i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %17
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = getelementptr inbounds nuw i8, ptr %14, i32 12
  %40 = load i32, ptr %39, align 1
  %41 = tail call noundef i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %47 = icmp ult ptr %46, %9
  br i1 %47, label %13, label %48, !llvm.loop !4

48:                                               ; preds = %13
  %49 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 1)
  %50 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %51 = add i32 %50, %49
  %52 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 12)
  %53 = add i32 %51, %52
  %54 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %55 = add i32 %53, %54
  br label %58

56:                                               ; preds = %3
  %57 = add i32 %2, 374761393
  br label %58

58:                                               ; preds = %56, %48
  %59 = phi i32 [ %55, %48 ], [ %57, %56 ]
  %60 = phi ptr [ %46, %48 ], [ %0, %56 ]
  %61 = add i32 %59, %1
  %62 = and i32 %1, 15
  switch i32 %62, label %222 [
    i32 12, label %63
    i32 8, label %71
    i32 4, label %81
    i32 13, label %90
    i32 9, label %98
    i32 5, label %108
    i32 14, label %124
    i32 10, label %132
    i32 6, label %142
    i32 15, label %165
    i32 11, label %173
    i32 7, label %183
    i32 3, label %193
    i32 2, label %203
    i32 1, label %213
    i32 0, label %223
  ]

63:                                               ; preds = %58
  %64 = load i32, ptr %60, align 1
  %65 = tail call noundef i32 @llvm.bswap.i32(i32 %64)
  %66 = mul i32 %65, -1028477379
  %67 = add i32 %66, %61
  %68 = getelementptr inbounds nuw i8, ptr %60, i32 4
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 17)
  %70 = mul i32 %69, 668265263
  br label %71

71:                                               ; preds = %63, %58
  %72 = phi ptr [ %60, %58 ], [ %68, %63 ]
  %73 = phi i32 [ %61, %58 ], [ %70, %63 ]
  %74 = load i32, ptr %72, align 1
  %75 = tail call noundef i32 @llvm.bswap.i32(i32 %74)
  %76 = mul i32 %75, -1028477379
  %77 = add i32 %76, %73
  %78 = getelementptr inbounds nuw i8, ptr %72, i32 4
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 17)
  %80 = mul i32 %79, 668265263
  br label %81

81:                                               ; preds = %71, %58
  %82 = phi ptr [ %60, %58 ], [ %78, %71 ]
  %83 = phi i32 [ %61, %58 ], [ %80, %71 ]
  %84 = load i32, ptr %82, align 1
  %85 = tail call noundef i32 @llvm.bswap.i32(i32 %84)
  %86 = mul i32 %85, -1028477379
  %87 = add i32 %86, %83
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 17)
  %89 = mul i32 %88, 668265263
  br label %223

90:                                               ; preds = %58
  %91 = load i32, ptr %60, align 1
  %92 = tail call noundef i32 @llvm.bswap.i32(i32 %91)
  %93 = mul i32 %92, -1028477379
  %94 = add i32 %93, %61
  %95 = getelementptr inbounds nuw i8, ptr %60, i32 4
  %96 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 17)
  %97 = mul i32 %96, 668265263
  br label %98

98:                                               ; preds = %90, %58
  %99 = phi ptr [ %60, %58 ], [ %95, %90 ]
  %100 = phi i32 [ %61, %58 ], [ %97, %90 ]
  %101 = load i32, ptr %99, align 1
  %102 = tail call noundef i32 @llvm.bswap.i32(i32 %101)
  %103 = mul i32 %102, -1028477379
  %104 = add i32 %103, %100
  %105 = getelementptr inbounds nuw i8, ptr %99, i32 4
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 17)
  %107 = mul i32 %106, 668265263
  br label %108

108:                                              ; preds = %98, %58
  %109 = phi ptr [ %60, %58 ], [ %105, %98 ]
  %110 = phi i32 [ %61, %58 ], [ %107, %98 ]
  %111 = load i32, ptr %109, align 1
  %112 = tail call noundef i32 @llvm.bswap.i32(i32 %111)
  %113 = mul i32 %112, -1028477379
  %114 = add i32 %113, %110
  %115 = getelementptr inbounds nuw i8, ptr %109, i32 4
  %116 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 17)
  %117 = mul i32 %116, 668265263
  %118 = load i8, ptr %115, align 1
  %119 = zext i8 %118 to i32
  %120 = mul i32 %119, 374761393
  %121 = add i32 %117, %120
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 11)
  %123 = mul i32 %122, -1640531535
  br label %223

124:                                              ; preds = %58
  %125 = load i32, ptr %60, align 1
  %126 = tail call noundef i32 @llvm.bswap.i32(i32 %125)
  %127 = mul i32 %126, -1028477379
  %128 = add i32 %127, %61
  %129 = getelementptr inbounds nuw i8, ptr %60, i32 4
  %130 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 17)
  %131 = mul i32 %130, 668265263
  br label %132

132:                                              ; preds = %124, %58
  %133 = phi ptr [ %60, %58 ], [ %129, %124 ]
  %134 = phi i32 [ %61, %58 ], [ %131, %124 ]
  %135 = load i32, ptr %133, align 1
  %136 = tail call noundef i32 @llvm.bswap.i32(i32 %135)
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds nuw i8, ptr %133, i32 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  br label %142

142:                                              ; preds = %132, %58
  %143 = phi ptr [ %60, %58 ], [ %139, %132 ]
  %144 = phi i32 [ %61, %58 ], [ %141, %132 ]
  %145 = load i32, ptr %143, align 1
  %146 = tail call noundef i32 @llvm.bswap.i32(i32 %145)
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %144
  %149 = getelementptr inbounds nuw i8, ptr %143, i32 4
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  %152 = getelementptr inbounds nuw i8, ptr %143, i32 5
  %153 = load i8, ptr %149, align 1
  %154 = zext i8 %153 to i32
  %155 = mul i32 %154, 374761393
  %156 = add i32 %151, %155
  %157 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 11)
  %158 = mul i32 %157, -1640531535
  %159 = load i8, ptr %152, align 1
  %160 = zext i8 %159 to i32
  %161 = mul i32 %160, 374761393
  %162 = add i32 %158, %161
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 11)
  %164 = mul i32 %163, -1640531535
  br label %223

165:                                              ; preds = %58
  %166 = load i32, ptr %60, align 1
  %167 = tail call noundef i32 @llvm.bswap.i32(i32 %166)
  %168 = mul i32 %167, -1028477379
  %169 = add i32 %168, %61
  %170 = getelementptr inbounds nuw i8, ptr %60, i32 4
  %171 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 17)
  %172 = mul i32 %171, 668265263
  br label %173

173:                                              ; preds = %165, %58
  %174 = phi ptr [ %60, %58 ], [ %170, %165 ]
  %175 = phi i32 [ %61, %58 ], [ %172, %165 ]
  %176 = load i32, ptr %174, align 1
  %177 = tail call noundef i32 @llvm.bswap.i32(i32 %176)
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %175
  %180 = getelementptr inbounds nuw i8, ptr %174, i32 4
  %181 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  br label %183

183:                                              ; preds = %173, %58
  %184 = phi ptr [ %60, %58 ], [ %180, %173 ]
  %185 = phi i32 [ %61, %58 ], [ %182, %173 ]
  %186 = load i32, ptr %184, align 1
  %187 = tail call noundef i32 @llvm.bswap.i32(i32 %186)
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %185
  %190 = getelementptr inbounds nuw i8, ptr %184, i32 4
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  br label %193

193:                                              ; preds = %183, %58
  %194 = phi ptr [ %60, %58 ], [ %190, %183 ]
  %195 = phi i32 [ %61, %58 ], [ %192, %183 ]
  %196 = getelementptr inbounds nuw i8, ptr %194, i32 1
  %197 = load i8, ptr %194, align 1
  %198 = zext i8 %197 to i32
  %199 = mul i32 %198, 374761393
  %200 = add i32 %199, %195
  %201 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 11)
  %202 = mul i32 %201, -1640531535
  br label %203

203:                                              ; preds = %193, %58
  %204 = phi ptr [ %60, %58 ], [ %196, %193 ]
  %205 = phi i32 [ %61, %58 ], [ %202, %193 ]
  %206 = getelementptr inbounds nuw i8, ptr %204, i32 1
  %207 = load i8, ptr %204, align 1
  %208 = zext i8 %207 to i32
  %209 = mul i32 %208, 374761393
  %210 = add i32 %209, %205
  %211 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 11)
  %212 = mul i32 %211, -1640531535
  br label %213

213:                                              ; preds = %203, %58
  %214 = phi ptr [ %60, %58 ], [ %206, %203 ]
  %215 = phi i32 [ %61, %58 ], [ %212, %203 ]
  %216 = load i8, ptr %214, align 1
  %217 = zext i8 %216 to i32
  %218 = mul i32 %217, 374761393
  %219 = add i32 %218, %215
  %220 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 11)
  %221 = mul i32 %220, -1640531535
  br label %223

222:                                              ; preds = %58
  unreachable

223:                                              ; preds = %58, %81, %108, %142, %213
  %224 = phi i32 [ %164, %142 ], [ %123, %108 ], [ %89, %81 ], [ %61, %58 ], [ %221, %213 ]
  %225 = lshr i32 %224, 15
  %226 = xor i32 %225, %224
  %227 = mul i32 %226, -2048144777
  %228 = lshr i32 %227, 13
  %229 = xor i32 %228, %227
  %230 = mul i32 %229, -1028477379
  %231 = lshr i32 %230, 16
  %232 = xor i32 %231, %230
  ret i32 %232
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i32 noundef signext %1, i64 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %5, label %80

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds i8, ptr %8, i32 -32
  %10 = add i64 %2, 6983438078262162902
  %11 = add i64 %2, -4417276706812531889
  %12 = add i64 %2, 7046029288634856825
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi ptr [ %0, %5 ], [ %46, %13 ]
  %15 = phi i64 [ %10, %5 ], [ %24, %13 ]
  %16 = phi i64 [ %11, %5 ], [ %31, %13 ]
  %17 = phi i64 [ %2, %5 ], [ %38, %13 ]
  %18 = phi i64 [ %12, %5 ], [ %45, %13 ]
  %19 = load i64, ptr %14, align 1
  %20 = tail call noundef i64 @llvm.bswap.i64(i64 %19)
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, %15
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = getelementptr inbounds nuw i8, ptr %14, i32 8
  %26 = load i64, ptr %25, align 1
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %16
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %33 = load i64, ptr %32, align 1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  %35 = mul i64 %34, -4417276706812531889
  %36 = add i64 %35, %17
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = getelementptr inbounds nuw i8, ptr %14, i32 24
  %40 = load i64, ptr %39, align 1
  %41 = tail call noundef i64 @llvm.bswap.i64(i64 %40)
  %42 = mul i64 %41, -4417276706812531889
  %43 = add i64 %42, %18
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  %46 = getelementptr inbounds nuw i8, ptr %14, i32 32
  %47 = icmp ugt ptr %46, %9
  br i1 %47, label %48, label %13, !llvm.loop !6

48:                                               ; preds = %13
  %49 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 1)
  %50 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 7)
  %51 = add i64 %50, %49
  %52 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 12)
  %53 = add i64 %51, %52
  %54 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 18)
  %55 = add i64 %53, %54
  %56 = mul i64 %23, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  %62 = mul i64 %30, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %37, -2381459717836149591
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  %74 = mul i64 %44, -2381459717836149591
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = xor i64 %73, %76
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  br label %82

80:                                               ; preds = %3
  %81 = add i64 %2, 2870177450012600261
  br label %82

82:                                               ; preds = %80, %48
  %83 = phi i64 [ %79, %48 ], [ %81, %80 ]
  %84 = phi ptr [ %46, %48 ], [ %0, %80 ]
  %85 = zext i32 %1 to i64
  %86 = add i64 %83, %85
  %87 = and i32 %1, 31
  %88 = icmp samesign ugt i32 %87, 7
  br i1 %88, label %89, label %105

89:                                               ; preds = %82, %89
  %90 = phi i64 [ %102, %89 ], [ %86, %82 ]
  %91 = phi ptr [ %98, %89 ], [ %84, %82 ]
  %92 = phi i32 [ %103, %89 ], [ %87, %82 ]
  %93 = load i64, ptr %91, align 1
  %94 = tail call noundef i64 @llvm.bswap.i64(i64 %93)
  %95 = mul i64 %94, -4417276706812531889
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %91, i32 8
  %99 = xor i64 %97, %90
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = add nsw i32 %92, -8
  %104 = icmp ugt i32 %103, 7
  br i1 %104, label %89, label %105, !llvm.loop !7

105:                                              ; preds = %89, %82
  %106 = phi i32 [ %87, %82 ], [ %103, %89 ]
  %107 = phi ptr [ %84, %82 ], [ %98, %89 ]
  %108 = phi i64 [ %86, %82 ], [ %102, %89 ]
  %109 = icmp samesign ugt i32 %106, 3
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load i32, ptr %107, align 1
  %112 = tail call noundef i32 @llvm.bswap.i32(i32 %111)
  %113 = zext i32 %112 to i64
  %114 = mul i64 %113, -7046029288634856825
  %115 = xor i64 %114, %108
  %116 = getelementptr inbounds nuw i8, ptr %107, i32 4
  %117 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 23)
  %118 = mul i64 %117, -4417276706812531889
  %119 = add i64 %118, 1609587929392839161
  %120 = add nsw i32 %106, -4
  br label %121

121:                                              ; preds = %110, %105
  %122 = phi i32 [ %120, %110 ], [ %106, %105 ]
  %123 = phi ptr [ %116, %110 ], [ %107, %105 ]
  %124 = phi i64 [ %119, %110 ], [ %108, %105 ]
  %125 = icmp eq i32 %122, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %121, %126
  %127 = phi i64 [ %136, %126 ], [ %124, %121 ]
  %128 = phi ptr [ %130, %126 ], [ %123, %121 ]
  %129 = phi i32 [ %137, %126 ], [ %122, %121 ]
  %130 = getelementptr inbounds nuw i8, ptr %128, i32 1
  %131 = load i8, ptr %128, align 1
  %132 = zext i8 %131 to i64
  %133 = mul i64 %132, 2870177450012600261
  %134 = xor i64 %133, %127
  %135 = tail call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 11)
  %136 = mul i64 %135, -7046029288634856825
  %137 = add nsw i32 %129, -1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %126, !llvm.loop !8

139:                                              ; preds = %126, %121
  %140 = phi i64 [ %124, %121 ], [ %136, %126 ]
  %141 = lshr i64 %140, 33
  %142 = xor i64 %141, %140
  %143 = mul i64 %142, -4417276706812531889
  %144 = lshr i64 %143, 29
  %145 = xor i64 %144, %143
  %146 = mul i64 %145, 1609587929392839161
  %147 = lshr i64 %146, 32
  %148 = xor i64 %147, %146
  ret i64 %148
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh3_64_seed(ptr noundef %0, i32 noundef signext %1, i64 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i32 noundef signext %1, i64 noundef zeroext %2, ptr noundef nonnull @XXH3_kSecret, i32 noundef signext 192, ptr noundef nonnull @XXH3_hashLong_64b_withSeed)
  ret i64 %4
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh3_64_secret(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) local_unnamed_addr #2 {
  %5 = icmp ult i32 %3, 136
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i32 noundef signext %1, i64 noundef zeroext 0, ptr noundef %2, i32 noundef signext range(i32 136, 0) %3, ptr noundef nonnull @XXH3_hashLong_64b_withSecret)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i64 [ %7, %6 ], [ 0, %4 ]
  ret i64 %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i64 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = alloca [8 x i64], align 8
  %6 = alloca [8 x i64], align 8
  %7 = alloca [192 x i8], align 8
  %8 = icmp ult i32 %2, 17
  br i1 %8, label %9, label %195

9:                                                ; preds = %4
  %10 = icmp samesign ugt i32 %2, 8
  br i1 %10, label %11, label %80

11:                                               ; preds = %9
  %12 = sub i64 6455697860950631241, %3
  %13 = add i64 %3, -4466874330221494952
  %14 = load i64, ptr %1, align 1, !noalias !9
  %15 = tail call noundef i64 @llvm.bswap.i64(i64 %14)
  %16 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %17 = getelementptr inbounds i8, ptr %16, i32 -8
  %18 = load i64, ptr %17, align 1, !noalias !9
  %19 = tail call noundef i64 @llvm.bswap.i64(i64 %18)
  %20 = xor i64 %15, %12
  %21 = xor i64 %20, %19
  %22 = and i64 %21, 4294967295
  %23 = mul nuw i64 %22, 2246822535
  %24 = lshr i64 %21, 32
  %25 = mul nuw i64 %24, 2246822535
  %26 = mul nuw i64 %22, 2654435761
  %27 = mul nuw i64 %24, 2654435761
  %28 = lshr i64 %23, 32
  %29 = and i64 %25, 4294967295
  %30 = add nuw i64 %29, %26
  %31 = add nuw i64 %30, %28
  %32 = lshr i64 %25, 32
  %33 = lshr i64 %31, 32
  %34 = shl i64 %31, 32
  %35 = and i64 %23, 4294967295
  %36 = add nsw i32 %2, -1
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 54
  %39 = or disjoint i64 %35, %38
  %40 = add i64 %39, %34
  %41 = xor i64 %19, %13
  %42 = and i64 %41, -4294967296
  %43 = and i64 %41, 4294967295
  %44 = mul nuw i64 %43, 2246822519
  %45 = add i64 %44, %42
  %46 = add i64 %45, %27
  %47 = add i64 %46, %32
  %48 = add i64 %47, %33
  %49 = tail call noundef i64 @llvm.bswap.i64(i64 %48)
  %50 = xor i64 %49, %40
  %51 = and i64 %50, 4294967295
  %52 = mul nuw nsw i64 %51, 668265295
  %53 = lshr i64 %50, 32
  %54 = mul nuw nsw i64 %53, 668265295
  %55 = mul nuw i64 %51, 3266489917
  %56 = mul nuw i64 %53, 3266489917
  %57 = lshr i64 %52, 32
  %58 = and i64 %54, 4294967295
  %59 = add nuw i64 %58, %55
  %60 = add nuw i64 %59, %57
  %61 = lshr i64 %54, 32
  %62 = lshr i64 %60, 32
  %63 = shl i64 %60, 32
  %64 = and i64 %52, 4294967295
  %65 = or disjoint i64 %63, %64
  %66 = mul i64 %48, -4417276706812531889
  %67 = add i64 %56, %66
  %68 = add i64 %67, %61
  %69 = add i64 %68, %62
  %70 = lshr i64 %63, 37
  %71 = xor i64 %70, %65
  %72 = mul i64 %71, 1609587791953885689
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  %75 = lshr i64 %69, 37
  %76 = xor i64 %75, %69
  %77 = mul i64 %76, 1609587791953885689
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  br label %903

80:                                               ; preds = %9
  %81 = icmp samesign ugt i32 %2, 3
  br i1 %81, label %82, label %133

82:                                               ; preds = %80
  %83 = trunc i64 %3 to i32
  %84 = tail call noundef i32 @llvm.bswap.i32(i32 %83)
  %85 = zext i32 %84 to i64
  %86 = shl nuw i64 %85, 32
  %87 = xor i64 %86, %3
  %88 = load i32, ptr %1, align 1, !noalias !18
  %89 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %90 = getelementptr inbounds i8, ptr %89, i32 -4
  %91 = load i32, ptr %90, align 1, !noalias !18
  %92 = zext i32 %91 to i64
  %93 = zext i32 %88 to i64
  %94 = shl nuw i64 %93, 32
  %95 = or disjoint i64 %94, %92
  %96 = tail call i64 @llvm.bswap.i64(i64 %95)
  %97 = add i64 %87, -4255862940314790740
  %98 = xor i64 %96, %97
  %99 = shl nuw nsw i32 %2, 2
  %100 = add nuw nsw i32 %99, -2048144761
  %101 = zext i32 %100 to i64
  %102 = and i64 %98, 4294967295
  %103 = mul nuw i64 %102, %101
  %104 = lshr i64 %98, 32
  %105 = mul nuw i64 %104, %101
  %106 = mul nuw i64 %102, 2654435761
  %107 = mul nuw i64 %104, 2654435761
  %108 = lshr i64 %103, 32
  %109 = and i64 %105, 4294967295
  %110 = add nuw i64 %109, %106
  %111 = add nuw i64 %110, %108
  %112 = lshr i64 %105, 32
  %113 = lshr i64 %111, 32
  %114 = add nuw i64 %112, %107
  %115 = add nuw i64 %114, %113
  %116 = shl i64 %111, 32
  %117 = and i64 %103, 4294967295
  %118 = or disjoint i64 %116, %117
  %119 = shl i64 %118, 1
  %120 = add i64 %115, %119
  %121 = lshr i64 %120, 3
  %122 = xor i64 %121, %118
  %123 = lshr i64 %122, 35
  %124 = xor i64 %123, %122
  %125 = mul i64 %124, -6939452855193903323
  %126 = lshr i64 %125, 28
  %127 = xor i64 %126, %125
  %128 = lshr i64 %120, 37
  %129 = xor i64 %128, %120
  %130 = mul i64 %129, 1609587791953885689
  %131 = lshr i64 %130, 32
  %132 = xor i64 %131, %130
  br label %903

133:                                              ; preds = %80
  %134 = icmp eq i32 %2, 0
  br i1 %134, label %176, label %135

135:                                              ; preds = %133
  %136 = load i8, ptr %1, align 1, !noalias !21
  %137 = lshr i32 %2, 1
  %138 = getelementptr inbounds nuw i8, ptr %1, i32 %137
  %139 = load i8, ptr %138, align 1, !noalias !21
  %140 = getelementptr i8, ptr %1, i32 %2
  %141 = getelementptr i8, ptr %140, i32 -1
  %142 = load i8, ptr %141, align 1, !noalias !21
  %143 = zext i8 %136 to i32
  %144 = shl nuw nsw i32 %143, 16
  %145 = zext i8 %139 to i32
  %146 = shl nuw i32 %145, 24
  %147 = or disjoint i32 %146, %144
  %148 = zext i8 %142 to i32
  %149 = or disjoint i32 %147, %148
  %150 = shl nuw nsw i32 %2, 8
  %151 = or disjoint i32 %149, %150
  %152 = tail call noundef i32 @llvm.bswap.i32(i32 %151)
  %153 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 13)
  %154 = add i64 %3, 2267503259
  %155 = sub i64 808198283, %3
  %156 = zext i32 %151 to i64
  %157 = zext nneg i32 %153 to i64
  %158 = lshr i64 %154, 33
  %159 = xor i64 %158, %156
  %160 = xor i64 %159, %154
  %161 = mul i64 %160, -4417276706812531889
  %162 = lshr i64 %161, 29
  %163 = xor i64 %162, %161
  %164 = mul i64 %163, 1609587929392839161
  %165 = lshr i64 %164, 32
  %166 = xor i64 %165, %164
  %167 = lshr i64 %155, 33
  %168 = xor i64 %167, %157
  %169 = xor i64 %168, %155
  %170 = mul i64 %169, -4417276706812531889
  %171 = lshr i64 %170, 29
  %172 = xor i64 %171, %170
  %173 = mul i64 %172, 1609587929392839161
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  br label %903

176:                                              ; preds = %133
  %177 = xor i64 %3, 7507096552062056628
  %178 = lshr i64 %177, 33
  %179 = xor i64 %178, %177
  %180 = mul i64 %179, -4417276706812531889
  %181 = lshr i64 %180, 29
  %182 = xor i64 %181, %180
  %183 = mul i64 %182, 1609587929392839161
  %184 = lshr i64 %183, 32
  %185 = xor i64 %184, %183
  %186 = xor i64 %3, -7613947547284439735
  %187 = lshr i64 %186, 33
  %188 = xor i64 %187, %186
  %189 = mul i64 %188, -4417276706812531889
  %190 = lshr i64 %189, 29
  %191 = xor i64 %190, %189
  %192 = mul i64 %191, 1609587929392839161
  %193 = lshr i64 %192, 32
  %194 = xor i64 %193, %192
  br label %903

195:                                              ; preds = %4
  %196 = icmp ult i32 %2, 129
  br i1 %196, label %197, label %550

197:                                              ; preds = %195
  %198 = zext nneg i32 %2 to i64
  %199 = mul i64 %198, -7046029288634856825
  %200 = lshr i64 %199, 32
  %201 = trunc nuw i64 %200 to i32
  %202 = trunc i64 %199 to i32
  %203 = icmp samesign ugt i32 %2, 32
  br i1 %203, label %204, label %453

204:                                              ; preds = %197
  %205 = icmp samesign ugt i32 %2, 64
  br i1 %205, label %206, label %367

206:                                              ; preds = %204
  %207 = icmp samesign ugt i32 %2, 96
  br i1 %207, label %208, label %281

208:                                              ; preds = %206
  %209 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %210 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %211 = getelementptr inbounds i8, ptr %210, i32 -64
  %212 = load i64, ptr %209, align 1, !alias.scope !24, !noalias !27
  %213 = getelementptr i8, ptr %1, i32 56
  %214 = load i64, ptr %213, align 1, !alias.scope !24, !noalias !27
  %215 = load i64, ptr %211, align 1, !alias.scope !24, !noalias !27
  %216 = getelementptr i8, ptr %210, i32 -56
  %217 = load i64, ptr %216, align 1, !alias.scope !24, !noalias !27
  %218 = tail call noundef i64 @llvm.bswap.i64(i64 %212)
  %219 = tail call noundef i64 @llvm.bswap.i64(i64 %214)
  %220 = add i64 %3, 4554437623014685352
  %221 = xor i64 %218, %220
  %222 = sub i64 2111919702937427193, %3
  %223 = xor i64 %219, %222
  %224 = and i64 %221, 4294967295
  %225 = and i64 %223, 4294967295
  %226 = mul nuw i64 %225, %224
  %227 = lshr i64 %221, 32
  %228 = mul nuw i64 %225, %227
  %229 = lshr i64 %223, 32
  %230 = mul nuw i64 %229, %224
  %231 = mul nuw i64 %229, %227
  %232 = lshr i64 %226, 32
  %233 = and i64 %228, 4294967295
  %234 = add nuw i64 %233, %230
  %235 = add nuw i64 %234, %232
  %236 = lshr i64 %228, 32
  %237 = lshr i64 %235, 32
  %238 = add nuw i64 %236, %231
  %239 = add nuw i64 %238, %237
  %240 = shl i64 %235, 32
  %241 = and i64 %226, 4294967295
  %242 = or disjoint i64 %240, %241
  %243 = xor i64 %242, %239
  %244 = add i64 %243, %199
  %245 = tail call noundef i64 @llvm.bswap.i64(i64 %215)
  %246 = tail call noundef i64 @llvm.bswap.i64(i64 %217)
  %247 = add i64 %246, %245
  %248 = xor i64 %244, %247
  %249 = add i64 %3, 3556072174620004746
  %250 = xor i64 %245, %249
  %251 = sub i64 7238261902898274248, %3
  %252 = xor i64 %246, %251
  %253 = and i64 %250, 4294967295
  %254 = and i64 %252, 4294967295
  %255 = mul nuw i64 %254, %253
  %256 = lshr i64 %250, 32
  %257 = mul nuw i64 %254, %256
  %258 = lshr i64 %252, 32
  %259 = mul nuw i64 %258, %253
  %260 = mul nuw i64 %258, %256
  %261 = lshr i64 %255, 32
  %262 = and i64 %257, 4294967295
  %263 = add nuw i64 %262, %259
  %264 = add nuw i64 %263, %261
  %265 = lshr i64 %257, 32
  %266 = lshr i64 %264, 32
  %267 = add nuw i64 %265, %260
  %268 = add nuw i64 %267, %266
  %269 = shl i64 %264, 32
  %270 = and i64 %255, 4294967295
  %271 = or disjoint i64 %269, %270
  %272 = add i64 %219, %218
  %273 = xor i64 %268, %272
  %274 = xor i64 %273, %271
  %275 = lshr i64 %248, 32
  %276 = trunc nuw i64 %275 to i32
  %277 = trunc i64 %248 to i32
  %278 = trunc i64 %274 to i32
  %279 = lshr i64 %274, 32
  %280 = trunc nuw i64 %279 to i32
  br label %281

281:                                              ; preds = %208, %206
  %282 = phi i32 [ %277, %208 ], [ %202, %206 ]
  %283 = phi i32 [ %276, %208 ], [ %201, %206 ]
  %284 = phi i32 [ %278, %208 ], [ 0, %206 ]
  %285 = phi i32 [ %280, %208 ], [ 0, %206 ]
  %286 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %287 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %288 = getelementptr inbounds i8, ptr %287, i32 -48
  %289 = load i64, ptr %286, align 1, !alias.scope !24, !noalias !27
  %290 = getelementptr i8, ptr %1, i32 40
  %291 = load i64, ptr %290, align 1, !alias.scope !24, !noalias !27
  %292 = load i64, ptr %288, align 1, !alias.scope !24, !noalias !27
  %293 = getelementptr i8, ptr %287, i32 -40
  %294 = load i64, ptr %293, align 1, !alias.scope !24, !noalias !27
  %295 = zext i32 %285 to i64
  %296 = shl nuw i64 %295, 32
  %297 = zext i32 %284 to i64
  %298 = or disjoint i64 %296, %297
  %299 = tail call noundef i64 @llvm.bswap.i64(i64 %289)
  %300 = tail call noundef i64 @llvm.bswap.i64(i64 %291)
  %301 = add i64 %3, -3818837453329782724
  %302 = xor i64 %299, %301
  %303 = sub i64 -6688317018830679928, %3
  %304 = xor i64 %300, %303
  %305 = and i64 %302, 4294967295
  %306 = and i64 %304, 4294967295
  %307 = mul nuw i64 %306, %305
  %308 = lshr i64 %302, 32
  %309 = mul nuw i64 %306, %308
  %310 = lshr i64 %304, 32
  %311 = mul nuw i64 %310, %305
  %312 = mul nuw i64 %310, %308
  %313 = lshr i64 %307, 32
  %314 = and i64 %309, 4294967295
  %315 = add nuw i64 %314, %311
  %316 = add nuw i64 %315, %313
  %317 = lshr i64 %309, 32
  %318 = lshr i64 %316, 32
  %319 = add nuw i64 %317, %312
  %320 = add nuw i64 %319, %318
  %321 = shl i64 %316, 32
  %322 = and i64 %307, 4294967295
  %323 = or disjoint i64 %321, %322
  %324 = xor i64 %323, %320
  %325 = zext i32 %282 to i64
  %326 = zext i32 %283 to i64
  %327 = shl nuw i64 %326, 32
  %328 = or disjoint i64 %327, %325
  %329 = add i64 %328, %324
  %330 = tail call noundef i64 @llvm.bswap.i64(i64 %292)
  %331 = tail call noundef i64 @llvm.bswap.i64(i64 %294)
  %332 = add i64 %331, %330
  %333 = xor i64 %329, %332
  %334 = add i64 %3, 5690594596133299313
  %335 = xor i64 %330, %334
  %336 = sub i64 -2833645246901970632, %3
  %337 = xor i64 %331, %336
  %338 = and i64 %335, 4294967295
  %339 = and i64 %337, 4294967295
  %340 = mul nuw i64 %339, %338
  %341 = lshr i64 %335, 32
  %342 = mul nuw i64 %339, %341
  %343 = lshr i64 %337, 32
  %344 = mul nuw i64 %343, %338
  %345 = mul nuw i64 %343, %341
  %346 = lshr i64 %340, 32
  %347 = and i64 %342, 4294967295
  %348 = add nuw i64 %347, %344
  %349 = add nuw i64 %348, %346
  %350 = lshr i64 %342, 32
  %351 = lshr i64 %349, 32
  %352 = add nuw i64 %350, %345
  %353 = add nuw i64 %352, %351
  %354 = shl i64 %349, 32
  %355 = and i64 %340, 4294967295
  %356 = or disjoint i64 %354, %355
  %357 = xor i64 %356, %353
  %358 = add i64 %298, %357
  %359 = add i64 %300, %299
  %360 = xor i64 %358, %359
  %361 = lshr i64 %333, 32
  %362 = trunc nuw i64 %361 to i32
  %363 = trunc i64 %333 to i32
  %364 = trunc i64 %360 to i32
  %365 = lshr i64 %360, 32
  %366 = trunc nuw i64 %365 to i32
  br label %367

367:                                              ; preds = %281, %204
  %368 = phi i32 [ %363, %281 ], [ %202, %204 ]
  %369 = phi i32 [ %362, %281 ], [ %201, %204 ]
  %370 = phi i32 [ %364, %281 ], [ 0, %204 ]
  %371 = phi i32 [ %366, %281 ], [ 0, %204 ]
  %372 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %373 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %374 = getelementptr inbounds i8, ptr %373, i32 -32
  %375 = load i64, ptr %372, align 1, !alias.scope !24, !noalias !27
  %376 = getelementptr i8, ptr %1, i32 24
  %377 = load i64, ptr %376, align 1, !alias.scope !24, !noalias !27
  %378 = load i64, ptr %374, align 1, !alias.scope !24, !noalias !27
  %379 = getelementptr i8, ptr %373, i32 -24
  %380 = load i64, ptr %379, align 1, !alias.scope !24, !noalias !27
  %381 = zext i32 %371 to i64
  %382 = shl nuw i64 %381, 32
  %383 = zext i32 %370 to i64
  %384 = or disjoint i64 %382, %383
  %385 = tail call noundef i64 @llvm.bswap.i64(i64 %375)
  %386 = tail call noundef i64 @llvm.bswap.i64(i64 %377)
  %387 = add i64 %3, 8711581037947681227
  %388 = xor i64 %385, %387
  %389 = sub i64 2410270004345854594, %3
  %390 = xor i64 %386, %389
  %391 = and i64 %388, 4294967295
  %392 = and i64 %390, 4294967295
  %393 = mul nuw i64 %392, %391
  %394 = lshr i64 %388, 32
  %395 = mul nuw i64 %392, %394
  %396 = lshr i64 %390, 32
  %397 = mul nuw i64 %396, %391
  %398 = mul nuw i64 %396, %394
  %399 = lshr i64 %393, 32
  %400 = and i64 %395, 4294967295
  %401 = add nuw i64 %400, %397
  %402 = add nuw i64 %401, %399
  %403 = lshr i64 %395, 32
  %404 = lshr i64 %402, 32
  %405 = add nuw i64 %403, %398
  %406 = add nuw i64 %405, %404
  %407 = shl i64 %402, 32
  %408 = and i64 %393, 4294967295
  %409 = or disjoint i64 %407, %408
  %410 = xor i64 %409, %406
  %411 = zext i32 %368 to i64
  %412 = zext i32 %369 to i64
  %413 = shl nuw i64 %412, 32
  %414 = or disjoint i64 %413, %411
  %415 = add i64 %414, %410
  %416 = tail call noundef i64 @llvm.bswap.i64(i64 %378)
  %417 = tail call noundef i64 @llvm.bswap.i64(i64 %380)
  %418 = add i64 %417, %416
  %419 = xor i64 %415, %418
  %420 = add i64 %3, -8204357891075471176
  %421 = xor i64 %416, %420
  %422 = sub i64 5487137525590930912, %3
  %423 = xor i64 %417, %422
  %424 = and i64 %421, 4294967295
  %425 = and i64 %423, 4294967295
  %426 = mul nuw i64 %425, %424
  %427 = lshr i64 %421, 32
  %428 = mul nuw i64 %425, %427
  %429 = lshr i64 %423, 32
  %430 = mul nuw i64 %429, %424
  %431 = mul nuw i64 %429, %427
  %432 = lshr i64 %426, 32
  %433 = and i64 %428, 4294967295
  %434 = add nuw i64 %433, %430
  %435 = add nuw i64 %434, %432
  %436 = lshr i64 %428, 32
  %437 = lshr i64 %435, 32
  %438 = add nuw i64 %436, %431
  %439 = add nuw i64 %438, %437
  %440 = shl i64 %435, 32
  %441 = and i64 %426, 4294967295
  %442 = or disjoint i64 %440, %441
  %443 = xor i64 %442, %439
  %444 = add i64 %384, %443
  %445 = add i64 %386, %385
  %446 = xor i64 %444, %445
  %447 = lshr i64 %419, 32
  %448 = trunc nuw i64 %447 to i32
  %449 = trunc i64 %419 to i32
  %450 = trunc i64 %446 to i32
  %451 = lshr i64 %446, 32
  %452 = trunc nuw i64 %451 to i32
  br label %453

453:                                              ; preds = %367, %197
  %454 = phi i32 [ %449, %367 ], [ %202, %197 ]
  %455 = phi i32 [ %448, %367 ], [ %201, %197 ]
  %456 = phi i32 [ %450, %367 ], [ 0, %197 ]
  %457 = phi i32 [ %452, %367 ], [ 0, %197 ]
  %458 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %459 = getelementptr inbounds i8, ptr %458, i32 -16
  %460 = load i64, ptr %1, align 1, !alias.scope !24, !noalias !27
  %461 = getelementptr i8, ptr %1, i32 8
  %462 = load i64, ptr %461, align 1, !alias.scope !24, !noalias !27
  %463 = load i64, ptr %459, align 1, !alias.scope !24, !noalias !27
  %464 = getelementptr i8, ptr %458, i32 -8
  %465 = load i64, ptr %464, align 1, !alias.scope !24, !noalias !27
  %466 = zext i32 %457 to i64
  %467 = shl nuw i64 %466, 32
  %468 = zext i32 %456 to i64
  %469 = or disjoint i64 %467, %468
  %470 = tail call noundef i64 @llvm.bswap.i64(i64 %460)
  %471 = tail call noundef i64 @llvm.bswap.i64(i64 %462)
  %472 = add i64 %3, -4734510112055689544
  %473 = xor i64 %470, %472
  %474 = sub i64 2066345149520216444, %3
  %475 = xor i64 %471, %474
  %476 = and i64 %473, 4294967295
  %477 = and i64 %475, 4294967295
  %478 = mul nuw i64 %477, %476
  %479 = lshr i64 %473, 32
  %480 = mul nuw i64 %477, %479
  %481 = lshr i64 %475, 32
  %482 = mul nuw i64 %481, %476
  %483 = mul nuw i64 %481, %479
  %484 = lshr i64 %478, 32
  %485 = and i64 %480, 4294967295
  %486 = add nuw i64 %485, %482
  %487 = add nuw i64 %486, %484
  %488 = lshr i64 %480, 32
  %489 = lshr i64 %487, 32
  %490 = add nuw i64 %488, %483
  %491 = add nuw i64 %490, %489
  %492 = shl i64 %487, 32
  %493 = and i64 %478, 4294967295
  %494 = or disjoint i64 %492, %493
  %495 = xor i64 %494, %491
  %496 = zext i32 %454 to i64
  %497 = zext i32 %455 to i64
  %498 = shl nuw i64 %497, 32
  %499 = or disjoint i64 %498, %496
  %500 = add i64 %499, %495
  %501 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %502 = tail call noundef i64 @llvm.bswap.i64(i64 %465)
  %503 = add i64 %502, %501
  %504 = xor i64 %500, %503
  %505 = add i64 %3, -2623469361688619810
  %506 = xor i64 %501, %505
  %507 = sub i64 2262974939099578482, %3
  %508 = xor i64 %502, %507
  %509 = and i64 %506, 4294967295
  %510 = and i64 %508, 4294967295
  %511 = mul nuw i64 %510, %509
  %512 = lshr i64 %506, 32
  %513 = mul nuw i64 %510, %512
  %514 = lshr i64 %508, 32
  %515 = mul nuw i64 %514, %509
  %516 = mul nuw i64 %514, %512
  %517 = lshr i64 %511, 32
  %518 = and i64 %513, 4294967295
  %519 = add nuw i64 %518, %515
  %520 = add nuw i64 %519, %517
  %521 = lshr i64 %513, 32
  %522 = lshr i64 %520, 32
  %523 = add nuw i64 %521, %516
  %524 = add nuw i64 %523, %522
  %525 = shl i64 %520, 32
  %526 = and i64 %511, 4294967295
  %527 = or disjoint i64 %525, %526
  %528 = xor i64 %527, %524
  %529 = add i64 %469, %528
  %530 = add i64 %471, %470
  %531 = xor i64 %529, %530
  %532 = add i64 %531, %504
  %533 = mul i64 %504, -7046029288634856825
  %534 = mul i64 %531, -8796714831421723037
  %535 = sub i64 %198, %3
  %536 = mul i64 %535, -4417276706812531889
  %537 = add i64 %533, %536
  %538 = add i64 %537, %534
  %539 = lshr i64 %532, 37
  %540 = xor i64 %539, %532
  %541 = mul i64 %540, 1609587791953885689
  %542 = lshr i64 %541, 32
  %543 = xor i64 %542, %541
  %544 = lshr i64 %538, 37
  %545 = xor i64 %544, %538
  %546 = mul i64 %545, 1609587791953885689
  %547 = lshr i64 %546, 32
  %548 = xor i64 %547, %546
  %549 = sub i64 0, %548
  br label %903

550:                                              ; preds = %195
  %551 = icmp ult i32 %2, 241
  br i1 %551, label %552, label %867

552:                                              ; preds = %550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %553 = zext nneg i32 %2 to i64
  %554 = mul i64 %553, -7046029288634856825
  %555 = lshr i64 %554, 32
  %556 = trunc nuw i64 %555 to i32
  %557 = trunc i64 %554 to i32
  br label %558

558:                                              ; preds = %558, %552
  %559 = phi i32 [ 0, %552 ], [ %649, %558 ]
  %560 = phi i32 [ %557, %552 ], [ %648, %558 ]
  %561 = phi i64 [ 0, %552 ], [ %645, %558 ]
  %562 = phi i32 [ %556, %552 ], [ %647, %558 ]
  %563 = shl nuw nsw i32 %559, 5
  %564 = getelementptr inbounds nuw i8, ptr %1, i32 %563
  %565 = getelementptr inbounds nuw i8, ptr %564, i32 16
  %566 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i32 %563
  %567 = load i64, ptr %564, align 1, !alias.scope !29, !noalias !32
  %568 = getelementptr i8, ptr %564, i32 8
  %569 = load i64, ptr %568, align 1, !alias.scope !29, !noalias !32
  %570 = load i64, ptr %565, align 1, !alias.scope !29, !noalias !32
  %571 = getelementptr i8, ptr %564, i32 24
  %572 = load i64, ptr %571, align 1, !alias.scope !29, !noalias !32
  %573 = load i64, ptr %566, align 32, !noalias !34
  %574 = getelementptr i8, ptr %566, i32 8
  %575 = load i64, ptr %574, align 8, !noalias !34
  %576 = tail call noundef i64 @llvm.bswap.i64(i64 %567)
  %577 = tail call noundef i64 @llvm.bswap.i64(i64 %569)
  %578 = tail call noundef i64 @llvm.bswap.i64(i64 %573)
  %579 = add i64 %578, %3
  %580 = xor i64 %579, %576
  %581 = tail call noundef i64 @llvm.bswap.i64(i64 %575)
  %582 = sub i64 %581, %3
  %583 = xor i64 %582, %577
  %584 = and i64 %580, 4294967295
  %585 = and i64 %583, 4294967295
  %586 = mul nuw i64 %585, %584
  %587 = lshr i64 %580, 32
  %588 = mul nuw i64 %585, %587
  %589 = lshr i64 %583, 32
  %590 = mul nuw i64 %589, %584
  %591 = mul nuw i64 %589, %587
  %592 = lshr i64 %586, 32
  %593 = and i64 %588, 4294967295
  %594 = add nuw i64 %593, %590
  %595 = add nuw i64 %594, %592
  %596 = lshr i64 %588, 32
  %597 = lshr i64 %595, 32
  %598 = add nuw i64 %596, %591
  %599 = add nuw i64 %598, %597
  %600 = shl i64 %595, 32
  %601 = and i64 %586, 4294967295
  %602 = or disjoint i64 %600, %601
  %603 = xor i64 %602, %599
  %604 = zext i32 %560 to i64
  %605 = zext i32 %562 to i64
  %606 = shl nuw i64 %605, 32
  %607 = or disjoint i64 %606, %604
  %608 = add i64 %607, %603
  %609 = tail call noundef i64 @llvm.bswap.i64(i64 %570)
  %610 = tail call noundef i64 @llvm.bswap.i64(i64 %572)
  %611 = add i64 %610, %609
  %612 = xor i64 %608, %611
  %613 = getelementptr inbounds nuw i8, ptr %566, i32 16
  %614 = load i64, ptr %613, align 16, !noalias !34
  %615 = getelementptr i8, ptr %566, i32 24
  %616 = load i64, ptr %615, align 8, !noalias !34
  %617 = tail call noundef i64 @llvm.bswap.i64(i64 %614)
  %618 = add i64 %617, %3
  %619 = xor i64 %618, %609
  %620 = tail call noundef i64 @llvm.bswap.i64(i64 %616)
  %621 = sub i64 %620, %3
  %622 = xor i64 %621, %610
  %623 = and i64 %619, 4294967295
  %624 = and i64 %622, 4294967295
  %625 = mul nuw i64 %624, %623
  %626 = lshr i64 %619, 32
  %627 = mul nuw i64 %624, %626
  %628 = lshr i64 %622, 32
  %629 = mul nuw i64 %628, %623
  %630 = mul nuw i64 %628, %626
  %631 = lshr i64 %625, 32
  %632 = and i64 %627, 4294967295
  %633 = add nuw i64 %632, %629
  %634 = add nuw i64 %633, %631
  %635 = lshr i64 %627, 32
  %636 = lshr i64 %634, 32
  %637 = add nuw i64 %635, %630
  %638 = add nuw i64 %637, %636
  %639 = shl i64 %634, 32
  %640 = and i64 %625, 4294967295
  %641 = or disjoint i64 %639, %640
  %642 = xor i64 %641, %638
  %643 = add i64 %642, %561
  %644 = add i64 %577, %576
  %645 = xor i64 %643, %644
  %646 = lshr i64 %612, 32
  %647 = trunc nuw i64 %646 to i32
  %648 = trunc i64 %612 to i32
  %649 = add nuw nsw i32 %559, 1
  %650 = icmp eq i32 %649, 4
  br i1 %650, label %651, label %558, !llvm.loop !37

651:                                              ; preds = %558
  %652 = lshr i32 %2, 5
  %653 = lshr i64 %612, 37
  %654 = xor i64 %653, %612
  %655 = mul i64 %654, 1609587791953885689
  %656 = lshr i64 %655, 32
  %657 = xor i64 %656, %655
  %658 = trunc nuw i64 %656 to i32
  %659 = trunc i64 %657 to i32
  %660 = lshr i64 %645, 37
  %661 = xor i64 %660, %645
  %662 = mul i64 %661, 1609587791953885689
  %663 = lshr i64 %662, 32
  %664 = xor i64 %663, %662
  %665 = trunc i64 %664 to i32
  %666 = trunc nuw i64 %663 to i32
  %667 = icmp eq i32 %652, 4
  br i1 %667, label %769, label %668

668:                                              ; preds = %651, %668
  %669 = phi i32 [ %764, %668 ], [ 4, %651 ]
  %670 = phi i32 [ %763, %668 ], [ %659, %651 ]
  %671 = phi i32 [ %767, %668 ], [ %666, %651 ]
  %672 = phi i32 [ %765, %668 ], [ %665, %651 ]
  %673 = phi i32 [ %762, %668 ], [ %658, %651 ]
  %674 = shl nsw i32 %669, 5
  %675 = getelementptr inbounds nuw i8, ptr %1, i32 %674
  %676 = getelementptr inbounds nuw i8, ptr %675, i32 16
  %677 = getelementptr i8, ptr getelementptr (i8, ptr @XXH3_kSecret, i32 -125), i32 %674
  %678 = load i64, ptr %675, align 1, !alias.scope !29, !noalias !32
  %679 = getelementptr i8, ptr %675, i32 8
  %680 = load i64, ptr %679, align 1, !alias.scope !29, !noalias !32
  %681 = load i64, ptr %676, align 1, !alias.scope !29, !noalias !32
  %682 = getelementptr i8, ptr %675, i32 24
  %683 = load i64, ptr %682, align 1, !alias.scope !29, !noalias !32
  %684 = zext i32 %671 to i64
  %685 = shl nuw i64 %684, 32
  %686 = zext i32 %672 to i64
  %687 = or disjoint i64 %685, %686
  %688 = load i64, ptr %677, align 1, !noalias !38
  %689 = getelementptr i8, ptr %677, i32 8
  %690 = load i64, ptr %689, align 1, !noalias !38
  %691 = tail call noundef i64 @llvm.bswap.i64(i64 %678)
  %692 = tail call noundef i64 @llvm.bswap.i64(i64 %680)
  %693 = tail call noundef i64 @llvm.bswap.i64(i64 %688)
  %694 = add i64 %693, %3
  %695 = xor i64 %694, %691
  %696 = tail call noundef i64 @llvm.bswap.i64(i64 %690)
  %697 = sub i64 %696, %3
  %698 = xor i64 %697, %692
  %699 = and i64 %695, 4294967295
  %700 = and i64 %698, 4294967295
  %701 = mul nuw i64 %700, %699
  %702 = lshr i64 %695, 32
  %703 = mul nuw i64 %700, %702
  %704 = lshr i64 %698, 32
  %705 = mul nuw i64 %704, %699
  %706 = mul nuw i64 %704, %702
  %707 = lshr i64 %701, 32
  %708 = and i64 %703, 4294967295
  %709 = add nuw i64 %708, %705
  %710 = add nuw i64 %709, %707
  %711 = lshr i64 %703, 32
  %712 = lshr i64 %710, 32
  %713 = add nuw i64 %711, %706
  %714 = add nuw i64 %713, %712
  %715 = shl i64 %710, 32
  %716 = and i64 %701, 4294967295
  %717 = or disjoint i64 %715, %716
  %718 = xor i64 %717, %714
  %719 = zext i32 %670 to i64
  %720 = zext i32 %673 to i64
  %721 = shl nuw i64 %720, 32
  %722 = or disjoint i64 %721, %719
  %723 = add i64 %722, %718
  %724 = tail call noundef i64 @llvm.bswap.i64(i64 %681)
  %725 = tail call noundef i64 @llvm.bswap.i64(i64 %683)
  %726 = add i64 %725, %724
  %727 = xor i64 %723, %726
  %728 = getelementptr inbounds nuw i8, ptr %677, i32 16
  %729 = load i64, ptr %728, align 1, !noalias !38
  %730 = getelementptr i8, ptr %677, i32 24
  %731 = load i64, ptr %730, align 1, !noalias !38
  %732 = tail call noundef i64 @llvm.bswap.i64(i64 %729)
  %733 = add i64 %732, %3
  %734 = xor i64 %733, %724
  %735 = tail call noundef i64 @llvm.bswap.i64(i64 %731)
  %736 = sub i64 %735, %3
  %737 = xor i64 %736, %725
  %738 = and i64 %734, 4294967295
  %739 = and i64 %737, 4294967295
  %740 = mul nuw i64 %739, %738
  %741 = lshr i64 %734, 32
  %742 = mul nuw i64 %739, %741
  %743 = lshr i64 %737, 32
  %744 = mul nuw i64 %743, %738
  %745 = mul nuw i64 %743, %741
  %746 = lshr i64 %740, 32
  %747 = and i64 %742, 4294967295
  %748 = add nuw i64 %747, %744
  %749 = add nuw i64 %748, %746
  %750 = lshr i64 %742, 32
  %751 = lshr i64 %749, 32
  %752 = add nuw i64 %750, %745
  %753 = add nuw i64 %752, %751
  %754 = shl i64 %749, 32
  %755 = and i64 %740, 4294967295
  %756 = or disjoint i64 %754, %755
  %757 = xor i64 %756, %753
  %758 = add i64 %687, %757
  %759 = add i64 %692, %691
  %760 = xor i64 %758, %759
  %761 = lshr i64 %727, 32
  %762 = trunc nuw i64 %761 to i32
  %763 = trunc i64 %727 to i32
  %764 = add nuw nsw i32 %669, 1
  %765 = trunc i64 %760 to i32
  %766 = lshr i64 %760, 32
  %767 = trunc nuw i64 %766 to i32
  %768 = icmp eq i32 %764, %652
  br i1 %768, label %769, label %668, !llvm.loop !41

769:                                              ; preds = %668, %651
  %770 = phi i32 [ %658, %651 ], [ %762, %668 ]
  %771 = phi i32 [ %665, %651 ], [ %765, %668 ]
  %772 = phi i32 [ %666, %651 ], [ %767, %668 ]
  %773 = phi i32 [ %659, %651 ], [ %763, %668 ]
  %774 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %775 = getelementptr inbounds i8, ptr %774, i32 -16
  %776 = getelementptr inbounds i8, ptr %774, i32 -32
  %777 = load i64, ptr %775, align 1, !alias.scope !29, !noalias !32
  %778 = getelementptr i8, ptr %774, i32 -8
  %779 = load i64, ptr %778, align 1, !alias.scope !29, !noalias !32
  %780 = load i64, ptr %776, align 1, !alias.scope !29, !noalias !32
  %781 = getelementptr i8, ptr %774, i32 -24
  %782 = load i64, ptr %781, align 1, !alias.scope !29, !noalias !32
  %783 = zext i32 %772 to i64
  %784 = shl nuw i64 %783, 32
  %785 = zext i32 %771 to i64
  %786 = or disjoint i64 %784, %785
  %787 = tail call noundef i64 @llvm.bswap.i64(i64 %777)
  %788 = tail call noundef i64 @llvm.bswap.i64(i64 %779)
  %789 = sub i64 5695865814404364607, %3
  %790 = xor i64 %787, %789
  %791 = add i64 %3, 6464017090953185821
  %792 = xor i64 %788, %791
  %793 = and i64 %790, 4294967295
  %794 = and i64 %792, 4294967295
  %795 = mul nuw i64 %794, %793
  %796 = lshr i64 %790, 32
  %797 = mul nuw i64 %794, %796
  %798 = lshr i64 %792, 32
  %799 = mul nuw i64 %798, %793
  %800 = mul nuw i64 %798, %796
  %801 = lshr i64 %795, 32
  %802 = and i64 %797, 4294967295
  %803 = add nuw i64 %802, %799
  %804 = add nuw i64 %803, %801
  %805 = lshr i64 %797, 32
  %806 = lshr i64 %804, 32
  %807 = add nuw i64 %805, %800
  %808 = add nuw i64 %807, %806
  %809 = shl i64 %804, 32
  %810 = and i64 %795, 4294967295
  %811 = or disjoint i64 %809, %810
  %812 = xor i64 %811, %808
  %813 = zext i32 %773 to i64
  %814 = zext i32 %770 to i64
  %815 = shl nuw i64 %814, 32
  %816 = or disjoint i64 %815, %813
  %817 = add i64 %816, %812
  %818 = tail call noundef i64 @llvm.bswap.i64(i64 %780)
  %819 = tail call noundef i64 @llvm.bswap.i64(i64 %782)
  %820 = add i64 %819, %818
  %821 = xor i64 %817, %820
  %822 = sub i64 8320639771003045937, %3
  %823 = xor i64 %818, %822
  %824 = add i64 %3, -1453760514566526364
  %825 = xor i64 %819, %824
  %826 = and i64 %823, 4294967295
  %827 = and i64 %825, 4294967295
  %828 = mul nuw i64 %827, %826
  %829 = lshr i64 %823, 32
  %830 = mul nuw i64 %827, %829
  %831 = lshr i64 %825, 32
  %832 = mul nuw i64 %831, %826
  %833 = mul nuw i64 %831, %829
  %834 = lshr i64 %828, 32
  %835 = and i64 %830, 4294967295
  %836 = add nuw i64 %835, %832
  %837 = add nuw i64 %836, %834
  %838 = lshr i64 %830, 32
  %839 = lshr i64 %837, 32
  %840 = add nuw i64 %838, %833
  %841 = add nuw i64 %840, %839
  %842 = shl i64 %837, 32
  %843 = and i64 %828, 4294967295
  %844 = or disjoint i64 %842, %843
  %845 = xor i64 %844, %841
  %846 = add i64 %786, %845
  %847 = add i64 %788, %787
  %848 = xor i64 %846, %847
  %849 = add i64 %848, %821
  %850 = mul i64 %821, -7046029288634856825
  %851 = mul i64 %848, -8796714831421723037
  %852 = sub i64 %553, %3
  %853 = mul i64 %852, -4417276706812531889
  %854 = add i64 %850, %853
  %855 = add i64 %854, %851
  %856 = lshr i64 %849, 37
  %857 = xor i64 %856, %849
  %858 = mul i64 %857, 1609587791953885689
  %859 = lshr i64 %858, 32
  %860 = xor i64 %859, %858
  %861 = lshr i64 %855, 37
  %862 = xor i64 %861, %855
  %863 = mul i64 %862, 1609587791953885689
  %864 = lshr i64 %863, 32
  %865 = xor i64 %864, %863
  %866 = sub i64 0, %865
  br label %903

867:                                              ; preds = %550
  %868 = icmp eq i64 %3, 0
  br i1 %868, label %869, label %876

869:                                              ; preds = %867
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !42
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !42
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %1, i32 noundef signext %2, ptr noundef nonnull @XXH3_kSecret, i32 noundef signext 192), !noalias !52
  %870 = zext i32 %2 to i64
  %871 = mul i64 %870, -7046029288634856825
  %872 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 11), i64 noundef zeroext %871), !noalias !53
  %873 = mul i64 %870, -4417276706812531889
  %874 = xor i64 %873, -1
  %875 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 117), i64 noundef zeroext %874), !noalias !53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !42
  br label %903

876:                                              ; preds = %867
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #13, !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  br label %877

877:                                              ; preds = %877, %876
  %878 = phi i32 [ 0, %876 ], [ %892, %877 ]
  %879 = shl nuw nsw i32 %878, 4
  %880 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i32 %879
  %881 = load i64, ptr %880, align 16, !noalias !58
  %882 = tail call noundef i64 @llvm.bswap.i64(i64 %881)
  %883 = add i64 %882, %3
  %884 = getelementptr inbounds nuw i8, ptr %880, i32 8
  %885 = load i64, ptr %884, align 8, !noalias !58
  %886 = tail call noundef i64 @llvm.bswap.i64(i64 %885)
  %887 = sub i64 %886, %3
  %888 = getelementptr inbounds nuw i8, ptr %7, i32 %879
  %889 = tail call noundef i64 @llvm.bswap.i64(i64 %883)
  store i64 %889, ptr %888, align 8, !alias.scope !55, !noalias !54
  %890 = getelementptr inbounds nuw i8, ptr %888, i32 8
  %891 = tail call noundef i64 @llvm.bswap.i64(i64 %887)
  store i64 %891, ptr %890, align 8, !alias.scope !55, !noalias !54
  %892 = add nuw nsw i32 %878, 1
  %893 = icmp eq i32 %892, 12
  br i1 %893, label %894, label %877, !llvm.loop !59

894:                                              ; preds = %877
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13, !noalias !60
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !60
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %5, ptr noundef readonly %1, i32 noundef signext %2, ptr noundef nonnull readonly %7, i32 noundef signext 192), !noalias !65
  %895 = getelementptr inbounds nuw i8, ptr %7, i32 11
  %896 = zext i32 %2 to i64
  %897 = mul i64 %896, -7046029288634856825
  %898 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %5, ptr noundef nonnull readonly %895, i64 noundef zeroext %897), !noalias !66
  %899 = getelementptr inbounds nuw i8, ptr %7, i32 117
  %900 = mul i64 %896, -4417276706812531889
  %901 = xor i64 %900, -1
  %902 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %5, ptr noundef nonnull readonly %899, i64 noundef zeroext %901), !noalias !66
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13, !noalias !60
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #13, !noalias !54
  br label %903

903:                                              ; preds = %11, %82, %135, %176, %453, %769, %869, %894
  %904 = phi i64 [ %79, %11 ], [ %132, %82 ], [ %194, %176 ], [ %175, %135 ], [ %549, %453 ], [ %866, %769 ], [ %875, %869 ], [ %902, %894 ]
  %905 = phi i64 [ %74, %11 ], [ %127, %82 ], [ %185, %176 ], [ %166, %135 ], [ %543, %453 ], [ %860, %769 ], [ %872, %869 ], [ %898, %894 ]
  store i64 %905, ptr %0, align 8
  %906 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %904, ptr %906, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nounwind
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i32 noundef signext %1, i64 noundef zeroext %2, ptr noalias noundef %3, i32 noundef signext range(i32 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #2 {
  %7 = icmp ult i32 %1, 17
  br i1 %7, label %8, label %94

8:                                                ; preds = %6
  %9 = icmp samesign ugt i32 %1, 8
  br i1 %9, label %10, label %63, !prof !67

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %3, i32 24
  %12 = load i64, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %17 = add i64 %16, %2
  %18 = getelementptr inbounds nuw i8, ptr %3, i32 40
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %24 = sub i64 %23, %2
  %25 = load i64, ptr %0, align 1
  %26 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  %27 = xor i64 %26, %17
  %28 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %29 = getelementptr inbounds i8, ptr %28, i32 -8
  %30 = load i64, ptr %29, align 1
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  %32 = xor i64 %31, %24
  %33 = zext nneg i32 %1 to i64
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  %35 = add i64 %34, %33
  %36 = add i64 %35, %32
  %37 = and i64 %27, 4294967295
  %38 = and i64 %32, 4294967295
  %39 = mul nuw i64 %38, %37
  %40 = lshr i64 %27, 32
  %41 = mul nuw i64 %38, %40
  %42 = lshr i64 %32, 32
  %43 = mul nuw i64 %42, %37
  %44 = mul nuw i64 %42, %40
  %45 = lshr i64 %39, 32
  %46 = and i64 %41, 4294967295
  %47 = add nuw i64 %46, %43
  %48 = add nuw i64 %47, %45
  %49 = lshr i64 %41, 32
  %50 = lshr i64 %48, 32
  %51 = add nuw i64 %49, %44
  %52 = add nuw i64 %51, %50
  %53 = shl i64 %48, 32
  %54 = and i64 %39, 4294967295
  %55 = or disjoint i64 %53, %54
  %56 = xor i64 %55, %52
  %57 = add i64 %36, %56
  %58 = lshr i64 %57, 37
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587791953885689
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %561

63:                                               ; preds = %8
  %64 = icmp samesign ugt i32 %1, 3
  br i1 %64, label %65, label %71, !prof !67

65:                                               ; preds = %63
  %66 = getelementptr i8, ptr %3, i32 8
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr i8, ptr %3, i32 16
  %69 = load i64, ptr %68, align 1
  %70 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i32 noundef signext range(i32 0, 17) %1, i64 %67, i64 %69, i64 noundef zeroext %2)
  br label %561

71:                                               ; preds = %63
  %72 = icmp eq i32 %1, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %3, align 1
  %75 = getelementptr i8, ptr %3, i32 4
  %76 = load i32, ptr %75, align 1
  %77 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i32 noundef signext range(i32 0, 17) %1, i32 %74, i32 %76, i64 noundef zeroext %2)
  br label %561

78:                                               ; preds = %71
  %79 = getelementptr inbounds nuw i8, ptr %3, i32 56
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %82 = load i64, ptr %81, align 1
  %83 = xor i64 %82, %80
  %84 = tail call i64 @llvm.bswap.i64(i64 %83)
  %85 = xor i64 %84, %2
  %86 = lshr i64 %85, 33
  %87 = xor i64 %86, %85
  %88 = mul i64 %87, -4417276706812531889
  %89 = lshr i64 %88, 29
  %90 = xor i64 %89, %88
  %91 = mul i64 %90, 1609587929392839161
  %92 = lshr i64 %91, 32
  %93 = xor i64 %92, %91
  br label %561

94:                                               ; preds = %6
  %95 = icmp ult i32 %1, 129
  br i1 %95, label %96, label %414

96:                                               ; preds = %94
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %97 = zext nneg i32 %1 to i64
  %98 = mul i64 %97, -7046029288634856825
  %99 = icmp samesign ugt i32 %1, 32
  br i1 %99, label %100, label %334

100:                                              ; preds = %96
  %101 = icmp samesign ugt i32 %1, 64
  br i1 %101, label %102, label %257

102:                                              ; preds = %100
  %103 = icmp samesign ugt i32 %1, 96
  br i1 %103, label %104, label %180

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %106 = getelementptr inbounds nuw i8, ptr %3, i32 96
  %107 = load i64, ptr %105, align 1, !alias.scope !68, !noalias !71
  %108 = getelementptr i8, ptr %0, i32 56
  %109 = load i64, ptr %108, align 1, !alias.scope !68, !noalias !71
  %110 = load i64, ptr %106, align 1, !alias.scope !71, !noalias !68
  %111 = getelementptr i8, ptr %3, i32 104
  %112 = load i64, ptr %111, align 1, !alias.scope !71, !noalias !68
  %113 = tail call noundef i64 @llvm.bswap.i64(i64 %107)
  %114 = tail call noundef i64 @llvm.bswap.i64(i64 %109)
  %115 = tail call noundef i64 @llvm.bswap.i64(i64 %110)
  %116 = add i64 %115, %2
  %117 = xor i64 %116, %113
  %118 = tail call noundef i64 @llvm.bswap.i64(i64 %112)
  %119 = sub i64 %118, %2
  %120 = xor i64 %119, %114
  %121 = and i64 %117, 4294967295
  %122 = and i64 %120, 4294967295
  %123 = mul nuw i64 %122, %121
  %124 = lshr i64 %117, 32
  %125 = mul nuw i64 %122, %124
  %126 = lshr i64 %120, 32
  %127 = mul nuw i64 %126, %121
  %128 = mul nuw i64 %126, %124
  %129 = lshr i64 %123, 32
  %130 = and i64 %125, 4294967295
  %131 = add nuw i64 %130, %127
  %132 = add nuw i64 %131, %129
  %133 = lshr i64 %125, 32
  %134 = lshr i64 %132, 32
  %135 = add nuw i64 %133, %128
  %136 = add nuw i64 %135, %134
  %137 = shl i64 %132, 32
  %138 = and i64 %123, 4294967295
  %139 = or disjoint i64 %137, %138
  %140 = xor i64 %139, %136
  %141 = add i64 %140, %98
  %142 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %143 = getelementptr inbounds i8, ptr %142, i32 -64
  %144 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %145 = load i64, ptr %143, align 1, !alias.scope !68, !noalias !71
  %146 = getelementptr i8, ptr %142, i32 -56
  %147 = load i64, ptr %146, align 1, !alias.scope !68, !noalias !71
  %148 = load i64, ptr %144, align 1, !alias.scope !71, !noalias !68
  %149 = getelementptr i8, ptr %3, i32 120
  %150 = load i64, ptr %149, align 1, !alias.scope !71, !noalias !68
  %151 = tail call noundef i64 @llvm.bswap.i64(i64 %145)
  %152 = tail call noundef i64 @llvm.bswap.i64(i64 %147)
  %153 = tail call noundef i64 @llvm.bswap.i64(i64 %148)
  %154 = add i64 %153, %2
  %155 = xor i64 %154, %151
  %156 = tail call noundef i64 @llvm.bswap.i64(i64 %150)
  %157 = sub i64 %156, %2
  %158 = xor i64 %157, %152
  %159 = and i64 %155, 4294967295
  %160 = and i64 %158, 4294967295
  %161 = mul nuw i64 %160, %159
  %162 = lshr i64 %155, 32
  %163 = mul nuw i64 %160, %162
  %164 = lshr i64 %158, 32
  %165 = mul nuw i64 %164, %159
  %166 = mul nuw i64 %164, %162
  %167 = lshr i64 %161, 32
  %168 = and i64 %163, 4294967295
  %169 = add nuw i64 %168, %165
  %170 = add nuw i64 %169, %167
  %171 = lshr i64 %163, 32
  %172 = lshr i64 %170, 32
  %173 = add nuw i64 %171, %166
  %174 = add nuw i64 %173, %172
  %175 = shl i64 %170, 32
  %176 = and i64 %161, 4294967295
  %177 = or disjoint i64 %175, %176
  %178 = xor i64 %177, %174
  %179 = add i64 %141, %178
  br label %180

180:                                              ; preds = %104, %102
  %181 = phi i64 [ %179, %104 ], [ %98, %102 ]
  %182 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %183 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %184 = load i64, ptr %182, align 1, !alias.scope !68, !noalias !71
  %185 = getelementptr i8, ptr %0, i32 40
  %186 = load i64, ptr %185, align 1, !alias.scope !68, !noalias !71
  %187 = load i64, ptr %183, align 1, !alias.scope !71, !noalias !68
  %188 = getelementptr i8, ptr %3, i32 72
  %189 = load i64, ptr %188, align 1, !alias.scope !71, !noalias !68
  %190 = tail call noundef i64 @llvm.bswap.i64(i64 %184)
  %191 = tail call noundef i64 @llvm.bswap.i64(i64 %186)
  %192 = tail call noundef i64 @llvm.bswap.i64(i64 %187)
  %193 = add i64 %192, %2
  %194 = xor i64 %193, %190
  %195 = tail call noundef i64 @llvm.bswap.i64(i64 %189)
  %196 = sub i64 %195, %2
  %197 = xor i64 %196, %191
  %198 = and i64 %194, 4294967295
  %199 = and i64 %197, 4294967295
  %200 = mul nuw i64 %199, %198
  %201 = lshr i64 %194, 32
  %202 = mul nuw i64 %199, %201
  %203 = lshr i64 %197, 32
  %204 = mul nuw i64 %203, %198
  %205 = mul nuw i64 %203, %201
  %206 = lshr i64 %200, 32
  %207 = and i64 %202, 4294967295
  %208 = add nuw i64 %207, %204
  %209 = add nuw i64 %208, %206
  %210 = lshr i64 %202, 32
  %211 = lshr i64 %209, 32
  %212 = add nuw i64 %210, %205
  %213 = add nuw i64 %212, %211
  %214 = shl i64 %209, 32
  %215 = and i64 %200, 4294967295
  %216 = or disjoint i64 %214, %215
  %217 = xor i64 %216, %213
  %218 = add i64 %217, %181
  %219 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %220 = getelementptr inbounds i8, ptr %219, i32 -48
  %221 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %222 = load i64, ptr %220, align 1, !alias.scope !68, !noalias !71
  %223 = getelementptr i8, ptr %219, i32 -40
  %224 = load i64, ptr %223, align 1, !alias.scope !68, !noalias !71
  %225 = load i64, ptr %221, align 1, !alias.scope !71, !noalias !68
  %226 = getelementptr i8, ptr %3, i32 88
  %227 = load i64, ptr %226, align 1, !alias.scope !71, !noalias !68
  %228 = tail call noundef i64 @llvm.bswap.i64(i64 %222)
  %229 = tail call noundef i64 @llvm.bswap.i64(i64 %224)
  %230 = tail call noundef i64 @llvm.bswap.i64(i64 %225)
  %231 = add i64 %230, %2
  %232 = xor i64 %231, %228
  %233 = tail call noundef i64 @llvm.bswap.i64(i64 %227)
  %234 = sub i64 %233, %2
  %235 = xor i64 %234, %229
  %236 = and i64 %232, 4294967295
  %237 = and i64 %235, 4294967295
  %238 = mul nuw i64 %237, %236
  %239 = lshr i64 %232, 32
  %240 = mul nuw i64 %237, %239
  %241 = lshr i64 %235, 32
  %242 = mul nuw i64 %241, %236
  %243 = mul nuw i64 %241, %239
  %244 = lshr i64 %238, 32
  %245 = and i64 %240, 4294967295
  %246 = add nuw i64 %245, %242
  %247 = add nuw i64 %246, %244
  %248 = lshr i64 %240, 32
  %249 = lshr i64 %247, 32
  %250 = add nuw i64 %248, %243
  %251 = add nuw i64 %250, %249
  %252 = shl i64 %247, 32
  %253 = and i64 %238, 4294967295
  %254 = or disjoint i64 %252, %253
  %255 = xor i64 %254, %251
  %256 = add i64 %218, %255
  br label %257

257:                                              ; preds = %180, %100
  %258 = phi i64 [ %256, %180 ], [ %98, %100 ]
  %259 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %260 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %261 = load i64, ptr %259, align 1, !alias.scope !68, !noalias !71
  %262 = getelementptr i8, ptr %0, i32 24
  %263 = load i64, ptr %262, align 1, !alias.scope !68, !noalias !71
  %264 = load i64, ptr %260, align 1, !alias.scope !71, !noalias !68
  %265 = getelementptr i8, ptr %3, i32 40
  %266 = load i64, ptr %265, align 1, !alias.scope !71, !noalias !68
  %267 = tail call noundef i64 @llvm.bswap.i64(i64 %261)
  %268 = tail call noundef i64 @llvm.bswap.i64(i64 %263)
  %269 = tail call noundef i64 @llvm.bswap.i64(i64 %264)
  %270 = add i64 %269, %2
  %271 = xor i64 %270, %267
  %272 = tail call noundef i64 @llvm.bswap.i64(i64 %266)
  %273 = sub i64 %272, %2
  %274 = xor i64 %273, %268
  %275 = and i64 %271, 4294967295
  %276 = and i64 %274, 4294967295
  %277 = mul nuw i64 %276, %275
  %278 = lshr i64 %271, 32
  %279 = mul nuw i64 %276, %278
  %280 = lshr i64 %274, 32
  %281 = mul nuw i64 %280, %275
  %282 = mul nuw i64 %280, %278
  %283 = lshr i64 %277, 32
  %284 = and i64 %279, 4294967295
  %285 = add nuw i64 %284, %281
  %286 = add nuw i64 %285, %283
  %287 = lshr i64 %279, 32
  %288 = lshr i64 %286, 32
  %289 = add nuw i64 %287, %282
  %290 = add nuw i64 %289, %288
  %291 = shl i64 %286, 32
  %292 = and i64 %277, 4294967295
  %293 = or disjoint i64 %291, %292
  %294 = xor i64 %293, %290
  %295 = add i64 %294, %258
  %296 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %297 = getelementptr inbounds i8, ptr %296, i32 -32
  %298 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %299 = load i64, ptr %297, align 1, !alias.scope !68, !noalias !71
  %300 = getelementptr i8, ptr %296, i32 -24
  %301 = load i64, ptr %300, align 1, !alias.scope !68, !noalias !71
  %302 = load i64, ptr %298, align 1, !alias.scope !71, !noalias !68
  %303 = getelementptr i8, ptr %3, i32 56
  %304 = load i64, ptr %303, align 1, !alias.scope !71, !noalias !68
  %305 = tail call noundef i64 @llvm.bswap.i64(i64 %299)
  %306 = tail call noundef i64 @llvm.bswap.i64(i64 %301)
  %307 = tail call noundef i64 @llvm.bswap.i64(i64 %302)
  %308 = add i64 %307, %2
  %309 = xor i64 %308, %305
  %310 = tail call noundef i64 @llvm.bswap.i64(i64 %304)
  %311 = sub i64 %310, %2
  %312 = xor i64 %311, %306
  %313 = and i64 %309, 4294967295
  %314 = and i64 %312, 4294967295
  %315 = mul nuw i64 %314, %313
  %316 = lshr i64 %309, 32
  %317 = mul nuw i64 %314, %316
  %318 = lshr i64 %312, 32
  %319 = mul nuw i64 %318, %313
  %320 = mul nuw i64 %318, %316
  %321 = lshr i64 %315, 32
  %322 = and i64 %317, 4294967295
  %323 = add nuw i64 %322, %319
  %324 = add nuw i64 %323, %321
  %325 = lshr i64 %317, 32
  %326 = lshr i64 %324, 32
  %327 = add nuw i64 %325, %320
  %328 = add nuw i64 %327, %326
  %329 = shl i64 %324, 32
  %330 = and i64 %315, 4294967295
  %331 = or disjoint i64 %329, %330
  %332 = xor i64 %331, %328
  %333 = add i64 %295, %332
  br label %334

334:                                              ; preds = %96, %257
  %335 = phi i64 [ %333, %257 ], [ %98, %96 ]
  %336 = load i64, ptr %0, align 1, !alias.scope !68, !noalias !71
  %337 = getelementptr i8, ptr %0, i32 8
  %338 = load i64, ptr %337, align 1, !alias.scope !68, !noalias !71
  %339 = load i64, ptr %3, align 1, !alias.scope !71, !noalias !68
  %340 = getelementptr i8, ptr %3, i32 8
  %341 = load i64, ptr %340, align 1, !alias.scope !71, !noalias !68
  %342 = tail call noundef i64 @llvm.bswap.i64(i64 %336)
  %343 = tail call noundef i64 @llvm.bswap.i64(i64 %338)
  %344 = tail call noundef i64 @llvm.bswap.i64(i64 %339)
  %345 = add i64 %344, %2
  %346 = xor i64 %345, %342
  %347 = tail call noundef i64 @llvm.bswap.i64(i64 %341)
  %348 = sub i64 %347, %2
  %349 = xor i64 %348, %343
  %350 = and i64 %346, 4294967295
  %351 = and i64 %349, 4294967295
  %352 = mul nuw i64 %351, %350
  %353 = lshr i64 %346, 32
  %354 = mul nuw i64 %351, %353
  %355 = lshr i64 %349, 32
  %356 = mul nuw i64 %355, %350
  %357 = mul nuw i64 %355, %353
  %358 = lshr i64 %352, 32
  %359 = and i64 %354, 4294967295
  %360 = add nuw i64 %359, %356
  %361 = add nuw i64 %360, %358
  %362 = lshr i64 %354, 32
  %363 = lshr i64 %361, 32
  %364 = add nuw i64 %362, %357
  %365 = add nuw i64 %364, %363
  %366 = shl i64 %361, 32
  %367 = and i64 %352, 4294967295
  %368 = or disjoint i64 %366, %367
  %369 = xor i64 %368, %365
  %370 = add i64 %369, %335
  %371 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %372 = getelementptr inbounds i8, ptr %371, i32 -16
  %373 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %374 = load i64, ptr %372, align 1, !alias.scope !68, !noalias !71
  %375 = getelementptr i8, ptr %371, i32 -8
  %376 = load i64, ptr %375, align 1, !alias.scope !68, !noalias !71
  %377 = load i64, ptr %373, align 1, !alias.scope !71, !noalias !68
  %378 = getelementptr i8, ptr %3, i32 24
  %379 = load i64, ptr %378, align 1, !alias.scope !71, !noalias !68
  %380 = tail call noundef i64 @llvm.bswap.i64(i64 %374)
  %381 = tail call noundef i64 @llvm.bswap.i64(i64 %376)
  %382 = tail call noundef i64 @llvm.bswap.i64(i64 %377)
  %383 = add i64 %382, %2
  %384 = xor i64 %383, %380
  %385 = tail call noundef i64 @llvm.bswap.i64(i64 %379)
  %386 = sub i64 %385, %2
  %387 = xor i64 %386, %381
  %388 = and i64 %384, 4294967295
  %389 = and i64 %387, 4294967295
  %390 = mul nuw i64 %389, %388
  %391 = lshr i64 %384, 32
  %392 = mul nuw i64 %389, %391
  %393 = lshr i64 %387, 32
  %394 = mul nuw i64 %393, %388
  %395 = mul nuw i64 %393, %391
  %396 = lshr i64 %390, 32
  %397 = and i64 %392, 4294967295
  %398 = add nuw i64 %397, %394
  %399 = add nuw i64 %398, %396
  %400 = lshr i64 %392, 32
  %401 = lshr i64 %399, 32
  %402 = add nuw i64 %400, %395
  %403 = add nuw i64 %402, %401
  %404 = shl i64 %399, 32
  %405 = and i64 %390, 4294967295
  %406 = or disjoint i64 %404, %405
  %407 = xor i64 %406, %403
  %408 = add i64 %370, %407
  %409 = lshr i64 %408, 37
  %410 = xor i64 %409, %408
  %411 = mul i64 %410, 1609587791953885689
  %412 = lshr i64 %411, 32
  %413 = xor i64 %412, %411
  br label %561

414:                                              ; preds = %94
  %415 = icmp ult i32 %1, 241
  br i1 %415, label %416, label %559

416:                                              ; preds = %414
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %417 = zext nneg i32 %1 to i64
  %418 = mul i64 %417, -7046029288634856825
  br label %419

419:                                              ; preds = %419, %416
  %420 = phi i32 [ 0, %416 ], [ %460, %419 ]
  %421 = phi i64 [ %418, %416 ], [ %459, %419 ]
  %422 = shl nuw nsw i32 %420, 4
  %423 = getelementptr inbounds nuw i8, ptr %0, i32 %422
  %424 = getelementptr inbounds nuw i8, ptr %3, i32 %422
  %425 = load i64, ptr %423, align 1, !alias.scope !73, !noalias !76
  %426 = getelementptr i8, ptr %423, i32 8
  %427 = load i64, ptr %426, align 1, !alias.scope !73, !noalias !76
  %428 = load i64, ptr %424, align 1, !alias.scope !76, !noalias !73
  %429 = getelementptr i8, ptr %424, i32 8
  %430 = load i64, ptr %429, align 1, !alias.scope !76, !noalias !73
  %431 = tail call noundef i64 @llvm.bswap.i64(i64 %425)
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %427)
  %433 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %434 = add i64 %433, %2
  %435 = xor i64 %434, %431
  %436 = tail call noundef i64 @llvm.bswap.i64(i64 %430)
  %437 = sub i64 %436, %2
  %438 = xor i64 %437, %432
  %439 = and i64 %435, 4294967295
  %440 = and i64 %438, 4294967295
  %441 = mul nuw i64 %440, %439
  %442 = lshr i64 %435, 32
  %443 = mul nuw i64 %440, %442
  %444 = lshr i64 %438, 32
  %445 = mul nuw i64 %444, %439
  %446 = mul nuw i64 %444, %442
  %447 = lshr i64 %441, 32
  %448 = and i64 %443, 4294967295
  %449 = add nuw i64 %448, %445
  %450 = add nuw i64 %449, %447
  %451 = lshr i64 %443, 32
  %452 = lshr i64 %450, 32
  %453 = add nuw i64 %451, %446
  %454 = add nuw i64 %453, %452
  %455 = shl i64 %450, 32
  %456 = and i64 %441, 4294967295
  %457 = or disjoint i64 %455, %456
  %458 = xor i64 %457, %454
  %459 = add i64 %458, %421
  %460 = add nuw nsw i32 %420, 1
  %461 = icmp eq i32 %460, 8
  br i1 %461, label %462, label %419, !llvm.loop !78

462:                                              ; preds = %419
  %463 = lshr i32 %1, 4
  %464 = lshr i64 %459, 37
  %465 = xor i64 %464, %459
  %466 = mul i64 %465, 1609587791953885689
  %467 = lshr i64 %466, 32
  %468 = xor i64 %467, %466
  %469 = icmp eq i32 %463, 8
  br i1 %469, label %514, label %470

470:                                              ; preds = %462, %470
  %471 = phi i32 [ %512, %470 ], [ 8, %462 ]
  %472 = phi i64 [ %511, %470 ], [ %468, %462 ]
  %473 = shl nsw i32 %471, 4
  %474 = getelementptr inbounds nuw i8, ptr %0, i32 %473
  %475 = getelementptr i8, ptr %3, i32 %473
  %476 = getelementptr i8, ptr %475, i32 -125
  %477 = load i64, ptr %474, align 1, !alias.scope !73, !noalias !76
  %478 = getelementptr i8, ptr %474, i32 8
  %479 = load i64, ptr %478, align 1, !alias.scope !73, !noalias !76
  %480 = load i64, ptr %476, align 1, !alias.scope !76, !noalias !73
  %481 = getelementptr i8, ptr %475, i32 -117
  %482 = load i64, ptr %481, align 1, !alias.scope !76, !noalias !73
  %483 = tail call noundef i64 @llvm.bswap.i64(i64 %477)
  %484 = tail call noundef i64 @llvm.bswap.i64(i64 %479)
  %485 = tail call noundef i64 @llvm.bswap.i64(i64 %480)
  %486 = add i64 %485, %2
  %487 = xor i64 %486, %483
  %488 = tail call noundef i64 @llvm.bswap.i64(i64 %482)
  %489 = sub i64 %488, %2
  %490 = xor i64 %489, %484
  %491 = and i64 %487, 4294967295
  %492 = and i64 %490, 4294967295
  %493 = mul nuw i64 %492, %491
  %494 = lshr i64 %487, 32
  %495 = mul nuw i64 %492, %494
  %496 = lshr i64 %490, 32
  %497 = mul nuw i64 %496, %491
  %498 = mul nuw i64 %496, %494
  %499 = lshr i64 %493, 32
  %500 = and i64 %495, 4294967295
  %501 = add nuw i64 %500, %497
  %502 = add nuw i64 %501, %499
  %503 = lshr i64 %495, 32
  %504 = lshr i64 %502, 32
  %505 = add nuw i64 %503, %498
  %506 = add nuw i64 %505, %504
  %507 = shl i64 %502, 32
  %508 = and i64 %493, 4294967295
  %509 = or disjoint i64 %507, %508
  %510 = xor i64 %509, %506
  %511 = add i64 %510, %472
  %512 = add nuw nsw i32 %471, 1
  %513 = icmp eq i32 %512, %463
  br i1 %513, label %514, label %470, !llvm.loop !79

514:                                              ; preds = %470, %462
  %515 = phi i64 [ %468, %462 ], [ %511, %470 ]
  %516 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %517 = getelementptr inbounds i8, ptr %516, i32 -16
  %518 = getelementptr inbounds nuw i8, ptr %3, i32 119
  %519 = load i64, ptr %517, align 1, !alias.scope !73, !noalias !76
  %520 = getelementptr i8, ptr %516, i32 -8
  %521 = load i64, ptr %520, align 1, !alias.scope !73, !noalias !76
  %522 = load i64, ptr %518, align 1, !alias.scope !76, !noalias !73
  %523 = getelementptr i8, ptr %3, i32 127
  %524 = load i64, ptr %523, align 1, !alias.scope !76, !noalias !73
  %525 = tail call noundef i64 @llvm.bswap.i64(i64 %519)
  %526 = tail call noundef i64 @llvm.bswap.i64(i64 %521)
  %527 = tail call noundef i64 @llvm.bswap.i64(i64 %522)
  %528 = add i64 %527, %2
  %529 = xor i64 %528, %525
  %530 = tail call noundef i64 @llvm.bswap.i64(i64 %524)
  %531 = sub i64 %530, %2
  %532 = xor i64 %531, %526
  %533 = and i64 %529, 4294967295
  %534 = and i64 %532, 4294967295
  %535 = mul nuw i64 %534, %533
  %536 = lshr i64 %529, 32
  %537 = mul nuw i64 %534, %536
  %538 = lshr i64 %532, 32
  %539 = mul nuw i64 %538, %533
  %540 = mul nuw i64 %538, %536
  %541 = lshr i64 %535, 32
  %542 = and i64 %537, 4294967295
  %543 = add nuw i64 %542, %539
  %544 = add nuw i64 %543, %541
  %545 = lshr i64 %537, 32
  %546 = lshr i64 %544, 32
  %547 = add nuw i64 %545, %540
  %548 = add nuw i64 %547, %546
  %549 = shl i64 %544, 32
  %550 = and i64 %535, 4294967295
  %551 = or disjoint i64 %549, %550
  %552 = xor i64 %551, %548
  %553 = add i64 %552, %515
  %554 = lshr i64 %553, 37
  %555 = xor i64 %554, %553
  %556 = mul i64 %555, 1609587791953885689
  %557 = lshr i64 %556, 32
  %558 = xor i64 %557, %556
  br label %561

559:                                              ; preds = %414
  %560 = tail call i64 %5(ptr noundef %0, i32 noundef signext %1, i64 noundef zeroext %2, ptr noundef %3, i32 noundef signext %4) #13, !callees !80
  br label %561

561:                                              ; preds = %78, %73, %65, %10, %559, %514, %334
  %562 = phi i64 [ %413, %334 ], [ %558, %514 ], [ %560, %559 ], [ %62, %10 ], [ %70, %65 ], [ %77, %73 ], [ %93, %78 ]
  ret i64 %562
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i32 noundef signext %1, i64 noundef zeroext %2, ptr nocapture readnone %3, i32 signext %4) #3 {
  %6 = alloca [8 x i64], align 8
  %7 = alloca [8 x i64], align 8
  %8 = alloca [192 x i8], align 8
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13, !noalias !81
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !81
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i32 noundef signext %1, ptr noundef nonnull @XXH3_kSecret, i32 noundef signext 192)
  %11 = zext i32 %1 to i64
  %12 = mul i64 %11, -7046029288634856825
  %13 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %7, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 11), i64 noundef zeroext %12), !noalias !85
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13, !noalias !81
  br label %37

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  br label %15

15:                                               ; preds = %15, %14
  %16 = phi i32 [ 0, %14 ], [ %30, %15 ]
  %17 = shl nuw nsw i32 %16, 4
  %18 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i32 %17
  %19 = load i64, ptr %18, align 16, !noalias !86
  %20 = tail call noundef i64 @llvm.bswap.i64(i64 %19)
  %21 = add i64 %20, %2
  %22 = getelementptr inbounds nuw i8, ptr %18, i32 8
  %23 = load i64, ptr %22, align 8, !noalias !86
  %24 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %25 = sub i64 %24, %2
  %26 = getelementptr inbounds nuw i8, ptr %8, i32 %17
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  store i64 %27, ptr %26, align 8, !alias.scope !86
  %28 = getelementptr inbounds nuw i8, ptr %26, i32 8
  %29 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  store i64 %29, ptr %28, align 8, !alias.scope !86
  %30 = add nuw nsw i32 %16, 1
  %31 = icmp eq i32 %30, 12
  br i1 %31, label %32, label %15, !llvm.loop !59

32:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !89
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !89
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i32 noundef signext %1, ptr noundef nonnull readonly %8, i32 noundef signext 192)
  %33 = getelementptr inbounds nuw i8, ptr %8, i32 11
  %34 = zext i32 %1 to i64
  %35 = mul i64 %34, -7046029288634856825
  %36 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %33, i64 noundef zeroext %35), !noalias !93
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !89
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #13
  br label %37

37:                                               ; preds = %10, %32
  %38 = phi i64 [ %13, %10 ], [ %36, %32 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i64 @XXH3_len_4to8_64b(ptr nocapture noundef readonly %0, i32 noundef signext range(i32 4, 9) %1, i64 %2, i64 %3, i64 noundef zeroext %4) unnamed_addr #7 {
  %6 = trunc i64 %4 to i32
  %7 = tail call noundef i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = xor i64 %9, %4
  %11 = load i32, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %13 = getelementptr inbounds i8, ptr %12, i32 -4
  %14 = load i32, ptr %13, align 1
  %15 = xor i64 %3, %2
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %17 = sub i64 %16, %10
  %18 = zext i32 %11 to i64
  %19 = zext i32 %14 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %18
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %23 = xor i64 %22, %17
  %24 = zext nneg i32 %1 to i64
  %25 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %26 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %27 = xor i64 %25, %26
  %28 = xor i64 %27, %23
  %29 = mul i64 %28, -6939452855193903323
  %30 = lshr i64 %29, 35
  %31 = add nuw nsw i64 %30, %24
  %32 = xor i64 %31, %29
  %33 = mul i64 %32, -6939452855193903323
  %34 = lshr i64 %33, 28
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i64 @XXH3_len_1to3_64b(ptr nocapture noundef readonly %0, i32 noundef signext range(i32 1, 4) %1, i32 %2, i32 %3, i64 noundef zeroext %4) unnamed_addr #7 {
  %6 = load i8, ptr %0, align 1
  %7 = lshr i32 %1, 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 %1
  %11 = getelementptr i8, ptr %10, i32 -1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %6 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = zext i8 %9 to i32
  %16 = shl nuw i32 %15, 24
  %17 = or disjoint i32 %16, %14
  %18 = zext i8 %12 to i32
  %19 = or disjoint i32 %17, %18
  %20 = shl nuw nsw i32 %1, 8
  %21 = or disjoint i32 %19, %20
  %22 = xor i32 %3, %2
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = zext i32 %23 to i64
  %25 = add i64 %4, %24
  %26 = zext i32 %21 to i64
  %27 = lshr i64 %25, 33
  %28 = xor i64 %27, %26
  %29 = xor i64 %28, %25
  %30 = mul i64 %29, -4417276706812531889
  %31 = lshr i64 %30, 29
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587929392839161
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @XXH3_accumulate_512_scalar(ptr noalias nocapture noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #8 {
  %4 = load i64, ptr %1, align 1
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %4)
  %6 = load i64, ptr %2, align 1
  %7 = tail call noundef i64 @llvm.bswap.i64(i64 %6)
  %8 = xor i64 %7, %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %5
  %12 = and i64 %8, 4294967295
  %13 = lshr i64 %8, 32
  %14 = mul nuw i64 %12, %13
  %15 = load i64, ptr %0, align 8
  %16 = add i64 %14, %15
  %17 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %18 = load i64, ptr %17, align 1
  %19 = tail call noundef i64 @llvm.bswap.i64(i64 %18)
  %20 = getelementptr inbounds nuw i8, ptr %2, i32 8
  %21 = load i64, ptr %20, align 1
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  %23 = xor i64 %22, %19
  %24 = add i64 %16, %19
  store i64 %24, ptr %0, align 8
  %25 = and i64 %23, 4294967295
  %26 = lshr i64 %23, 32
  %27 = mul nuw i64 %25, %26
  %28 = add i64 %27, %11
  store i64 %28, ptr %9, align 8
  %29 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %30 = load i64, ptr %29, align 1
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  %32 = getelementptr inbounds nuw i8, ptr %2, i32 16
  %33 = load i64, ptr %32, align 1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  %35 = xor i64 %34, %31
  %36 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %37, %31
  %39 = and i64 %35, 4294967295
  %40 = lshr i64 %35, 32
  %41 = mul nuw i64 %39, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %41, %43
  %45 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %46 = load i64, ptr %45, align 1
  %47 = tail call noundef i64 @llvm.bswap.i64(i64 %46)
  %48 = getelementptr inbounds nuw i8, ptr %2, i32 24
  %49 = load i64, ptr %48, align 1
  %50 = tail call noundef i64 @llvm.bswap.i64(i64 %49)
  %51 = xor i64 %50, %47
  %52 = add i64 %44, %47
  store i64 %52, ptr %42, align 8
  %53 = and i64 %51, 4294967295
  %54 = lshr i64 %51, 32
  %55 = mul nuw i64 %53, %54
  %56 = add i64 %55, %38
  store i64 %56, ptr %36, align 8
  %57 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %58 = load i64, ptr %57, align 1
  %59 = tail call noundef i64 @llvm.bswap.i64(i64 %58)
  %60 = getelementptr inbounds nuw i8, ptr %2, i32 32
  %61 = load i64, ptr %60, align 1
  %62 = tail call noundef i64 @llvm.bswap.i64(i64 %61)
  %63 = xor i64 %62, %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, %59
  %67 = and i64 %63, 4294967295
  %68 = lshr i64 %63, 32
  %69 = mul nuw i64 %67, %68
  %70 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %69, %71
  %73 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %74 = load i64, ptr %73, align 1
  %75 = tail call noundef i64 @llvm.bswap.i64(i64 %74)
  %76 = getelementptr inbounds nuw i8, ptr %2, i32 40
  %77 = load i64, ptr %76, align 1
  %78 = tail call noundef i64 @llvm.bswap.i64(i64 %77)
  %79 = xor i64 %78, %75
  %80 = add i64 %72, %75
  store i64 %80, ptr %70, align 8
  %81 = and i64 %79, 4294967295
  %82 = lshr i64 %79, 32
  %83 = mul nuw i64 %81, %82
  %84 = add i64 %83, %66
  store i64 %84, ptr %64, align 8
  %85 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %86 = load i64, ptr %85, align 1
  %87 = tail call noundef i64 @llvm.bswap.i64(i64 %86)
  %88 = getelementptr inbounds nuw i8, ptr %2, i32 48
  %89 = load i64, ptr %88, align 1
  %90 = tail call noundef i64 @llvm.bswap.i64(i64 %89)
  %91 = xor i64 %90, %87
  %92 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %93 = load i64, ptr %92, align 8
  %94 = add i64 %93, %87
  %95 = and i64 %91, 4294967295
  %96 = lshr i64 %91, 32
  %97 = mul nuw i64 %95, %96
  %98 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %99 = load i64, ptr %98, align 8
  %100 = add i64 %97, %99
  %101 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %102 = load i64, ptr %101, align 1
  %103 = tail call noundef i64 @llvm.bswap.i64(i64 %102)
  %104 = getelementptr inbounds nuw i8, ptr %2, i32 56
  %105 = load i64, ptr %104, align 1
  %106 = tail call noundef i64 @llvm.bswap.i64(i64 %105)
  %107 = xor i64 %106, %103
  %108 = add i64 %100, %103
  store i64 %108, ptr %98, align 8
  %109 = and i64 %107, 4294967295
  %110 = lshr i64 %107, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %111, %94
  store i64 %112, ptr %92, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i32 noundef signext %2, ptr noalias nocapture noundef readonly %3, i32 noundef signext %4) unnamed_addr #3 {
  %6 = add i32 %4, -64
  %7 = lshr i32 %6, 3
  %8 = shl i32 %7, 6
  %9 = add i32 %2, -1
  %10 = udiv i32 %9, %8
  %11 = urem i32 %9, %8
  %12 = icmp ugt i32 %8, %9
  br i1 %12, label %266, label %13

13:                                               ; preds = %5
  %14 = icmp ult i32 %6, 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %16 = getelementptr inbounds i8, ptr %15, i32 -64
  %17 = load i64, ptr %16, align 1, !alias.scope !94, !noalias !97
  %18 = tail call noundef i64 @llvm.bswap.i64(i64 %17)
  %19 = getelementptr inbounds i8, ptr %15, i32 -56
  %20 = load i64, ptr %19, align 1, !alias.scope !94, !noalias !97
  %21 = tail call noundef i64 @llvm.bswap.i64(i64 %20)
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %23 = getelementptr inbounds i8, ptr %15, i32 -48
  %24 = load i64, ptr %23, align 1, !alias.scope !94, !noalias !97
  %25 = tail call noundef i64 @llvm.bswap.i64(i64 %24)
  %26 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %27 = getelementptr inbounds i8, ptr %15, i32 -40
  %28 = load i64, ptr %27, align 1, !alias.scope !94, !noalias !97
  %29 = tail call noundef i64 @llvm.bswap.i64(i64 %28)
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %31 = getelementptr inbounds i8, ptr %15, i32 -32
  %32 = load i64, ptr %31, align 1, !alias.scope !94, !noalias !97
  %33 = tail call noundef i64 @llvm.bswap.i64(i64 %32)
  %34 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %35 = getelementptr inbounds i8, ptr %15, i32 -24
  %36 = load i64, ptr %35, align 1, !alias.scope !94, !noalias !97
  %37 = tail call noundef i64 @llvm.bswap.i64(i64 %36)
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %39 = getelementptr inbounds i8, ptr %15, i32 -16
  %40 = load i64, ptr %39, align 1, !alias.scope !94, !noalias !97
  %41 = tail call noundef i64 @llvm.bswap.i64(i64 %40)
  %42 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %43 = getelementptr inbounds i8, ptr %15, i32 -8
  %44 = load i64, ptr %43, align 1, !alias.scope !94, !noalias !97
  %45 = tail call noundef i64 @llvm.bswap.i64(i64 %44)
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %47 = load i64, ptr %0, align 8, !noalias !99
  %48 = load i64, ptr %22, align 8, !noalias !99
  %49 = load i64, ptr %26, align 8, !noalias !99
  %50 = load i64, ptr %30, align 8, !noalias !99
  %51 = load i64, ptr %34, align 8, !noalias !99
  %52 = load i64, ptr %38, align 8, !noalias !99
  %53 = load i64, ptr %42, align 8, !noalias !99
  %54 = load i64, ptr %46, align 8, !noalias !99
  br i1 %14, label %55, label %99

55:                                               ; preds = %13, %55
  %56 = phi i64 [ %96, %55 ], [ %54, %13 ]
  %57 = phi i64 [ %92, %55 ], [ %53, %13 ]
  %58 = phi i64 [ %88, %55 ], [ %52, %13 ]
  %59 = phi i64 [ %84, %55 ], [ %51, %13 ]
  %60 = phi i64 [ %80, %55 ], [ %50, %13 ]
  %61 = phi i64 [ %76, %55 ], [ %49, %13 ]
  %62 = phi i64 [ %72, %55 ], [ %48, %13 ]
  %63 = phi i64 [ %68, %55 ], [ %47, %13 ]
  %64 = phi i32 [ %97, %55 ], [ 0, %13 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %65 = lshr i64 %63, 47
  %66 = xor i64 %18, %65
  %67 = xor i64 %66, %63
  %68 = mul i64 %67, 2654435761
  %69 = lshr i64 %62, 47
  %70 = xor i64 %21, %69
  %71 = xor i64 %70, %62
  %72 = mul i64 %71, 2654435761
  %73 = lshr i64 %61, 47
  %74 = xor i64 %25, %73
  %75 = xor i64 %74, %61
  %76 = mul i64 %75, 2654435761
  %77 = lshr i64 %60, 47
  %78 = xor i64 %29, %77
  %79 = xor i64 %78, %60
  %80 = mul i64 %79, 2654435761
  %81 = lshr i64 %59, 47
  %82 = xor i64 %33, %81
  %83 = xor i64 %82, %59
  %84 = mul i64 %83, 2654435761
  %85 = lshr i64 %58, 47
  %86 = xor i64 %37, %85
  %87 = xor i64 %86, %58
  %88 = mul i64 %87, 2654435761
  %89 = lshr i64 %57, 47
  %90 = xor i64 %41, %89
  %91 = xor i64 %90, %57
  %92 = mul i64 %91, 2654435761
  %93 = lshr i64 %56, 47
  %94 = xor i64 %45, %93
  %95 = xor i64 %94, %56
  %96 = mul i64 %95, 2654435761
  %97 = add nuw i32 %64, 1
  %98 = icmp ult i32 %97, %10
  br i1 %98, label %55, label %257, !llvm.loop !105

99:                                               ; preds = %13, %222
  %100 = phi i64 [ %254, %222 ], [ %54, %13 ]
  %101 = phi i64 [ %250, %222 ], [ %53, %13 ]
  %102 = phi i64 [ %246, %222 ], [ %52, %13 ]
  %103 = phi i64 [ %242, %222 ], [ %51, %13 ]
  %104 = phi i64 [ %238, %222 ], [ %50, %13 ]
  %105 = phi i64 [ %234, %222 ], [ %49, %13 ]
  %106 = phi i64 [ %230, %222 ], [ %48, %13 ]
  %107 = phi i64 [ %226, %222 ], [ %47, %13 ]
  %108 = phi i32 [ %255, %222 ], [ 0, %13 ]
  %109 = mul i32 %108, %8
  %110 = getelementptr inbounds nuw i8, ptr %1, i32 %109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  br label %111

111:                                              ; preds = %99, %111
  %112 = phi i64 [ %215, %111 ], [ %101, %99 ]
  %113 = phi i64 [ %219, %111 ], [ %100, %99 ]
  %114 = phi i64 [ %191, %111 ], [ %103, %99 ]
  %115 = phi i64 [ %195, %111 ], [ %102, %99 ]
  %116 = phi i64 [ %167, %111 ], [ %105, %99 ]
  %117 = phi i64 [ %171, %111 ], [ %104, %99 ]
  %118 = phi i64 [ %143, %111 ], [ %107, %99 ]
  %119 = phi i64 [ %147, %111 ], [ %106, %99 ]
  %120 = phi i32 [ %220, %111 ], [ 0, %99 ]
  %121 = shl i32 %120, 6
  %122 = getelementptr inbounds nuw i8, ptr %110, i32 %121
  %123 = getelementptr inbounds nuw i8, ptr %122, i32 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %123, i32 0, i32 3, i32 1), !noalias !106
  %124 = shl nuw i32 %120, 3
  %125 = getelementptr inbounds nuw i8, ptr %3, i32 %124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %126 = load i64, ptr %122, align 1, !alias.scope !112, !noalias !114
  %127 = tail call noundef i64 @llvm.bswap.i64(i64 %126)
  %128 = load i64, ptr %125, align 1, !alias.scope !116, !noalias !117
  %129 = tail call noundef i64 @llvm.bswap.i64(i64 %128)
  %130 = xor i64 %129, %127
  %131 = add i64 %119, %127
  %132 = and i64 %130, 4294967295
  %133 = lshr i64 %130, 32
  %134 = mul nuw i64 %132, %133
  %135 = add i64 %134, %118
  %136 = getelementptr inbounds nuw i8, ptr %122, i32 8
  %137 = load i64, ptr %136, align 1, !alias.scope !112, !noalias !114
  %138 = tail call noundef i64 @llvm.bswap.i64(i64 %137)
  %139 = getelementptr inbounds nuw i8, ptr %125, i32 8
  %140 = load i64, ptr %139, align 1, !alias.scope !116, !noalias !117
  %141 = tail call noundef i64 @llvm.bswap.i64(i64 %140)
  %142 = xor i64 %141, %138
  %143 = add i64 %135, %138
  %144 = and i64 %142, 4294967295
  %145 = lshr i64 %142, 32
  %146 = mul nuw i64 %144, %145
  %147 = add i64 %131, %146
  %148 = getelementptr inbounds nuw i8, ptr %122, i32 16
  %149 = load i64, ptr %148, align 1, !alias.scope !112, !noalias !114
  %150 = tail call noundef i64 @llvm.bswap.i64(i64 %149)
  %151 = getelementptr inbounds nuw i8, ptr %125, i32 16
  %152 = load i64, ptr %151, align 1, !alias.scope !116, !noalias !117
  %153 = tail call noundef i64 @llvm.bswap.i64(i64 %152)
  %154 = xor i64 %153, %150
  %155 = add i64 %117, %150
  %156 = and i64 %154, 4294967295
  %157 = lshr i64 %154, 32
  %158 = mul nuw i64 %156, %157
  %159 = add i64 %158, %116
  %160 = getelementptr inbounds nuw i8, ptr %122, i32 24
  %161 = load i64, ptr %160, align 1, !alias.scope !112, !noalias !114
  %162 = tail call noundef i64 @llvm.bswap.i64(i64 %161)
  %163 = getelementptr inbounds nuw i8, ptr %125, i32 24
  %164 = load i64, ptr %163, align 1, !alias.scope !116, !noalias !117
  %165 = tail call noundef i64 @llvm.bswap.i64(i64 %164)
  %166 = xor i64 %165, %162
  %167 = add i64 %159, %162
  %168 = and i64 %166, 4294967295
  %169 = lshr i64 %166, 32
  %170 = mul nuw i64 %168, %169
  %171 = add i64 %155, %170
  %172 = getelementptr inbounds nuw i8, ptr %122, i32 32
  %173 = load i64, ptr %172, align 1, !alias.scope !112, !noalias !114
  %174 = tail call noundef i64 @llvm.bswap.i64(i64 %173)
  %175 = getelementptr inbounds nuw i8, ptr %125, i32 32
  %176 = load i64, ptr %175, align 1, !alias.scope !116, !noalias !117
  %177 = tail call noundef i64 @llvm.bswap.i64(i64 %176)
  %178 = xor i64 %177, %174
  %179 = add i64 %115, %174
  %180 = and i64 %178, 4294967295
  %181 = lshr i64 %178, 32
  %182 = mul nuw i64 %180, %181
  %183 = add i64 %182, %114
  %184 = getelementptr inbounds nuw i8, ptr %122, i32 40
  %185 = load i64, ptr %184, align 1, !alias.scope !112, !noalias !114
  %186 = tail call noundef i64 @llvm.bswap.i64(i64 %185)
  %187 = getelementptr inbounds nuw i8, ptr %125, i32 40
  %188 = load i64, ptr %187, align 1, !alias.scope !116, !noalias !117
  %189 = tail call noundef i64 @llvm.bswap.i64(i64 %188)
  %190 = xor i64 %189, %186
  %191 = add i64 %183, %186
  %192 = and i64 %190, 4294967295
  %193 = lshr i64 %190, 32
  %194 = mul nuw i64 %192, %193
  %195 = add i64 %179, %194
  %196 = getelementptr inbounds nuw i8, ptr %122, i32 48
  %197 = load i64, ptr %196, align 1, !alias.scope !112, !noalias !114
  %198 = tail call noundef i64 @llvm.bswap.i64(i64 %197)
  %199 = getelementptr inbounds nuw i8, ptr %125, i32 48
  %200 = load i64, ptr %199, align 1, !alias.scope !116, !noalias !117
  %201 = tail call noundef i64 @llvm.bswap.i64(i64 %200)
  %202 = xor i64 %201, %198
  %203 = add i64 %113, %198
  %204 = and i64 %202, 4294967295
  %205 = lshr i64 %202, 32
  %206 = mul nuw i64 %204, %205
  %207 = add i64 %206, %112
  %208 = getelementptr inbounds nuw i8, ptr %122, i32 56
  %209 = load i64, ptr %208, align 1, !alias.scope !112, !noalias !114
  %210 = tail call noundef i64 @llvm.bswap.i64(i64 %209)
  %211 = getelementptr inbounds nuw i8, ptr %125, i32 56
  %212 = load i64, ptr %211, align 1, !alias.scope !116, !noalias !117
  %213 = tail call noundef i64 @llvm.bswap.i64(i64 %212)
  %214 = xor i64 %213, %210
  %215 = add i64 %207, %210
  %216 = and i64 %214, 4294967295
  %217 = lshr i64 %214, 32
  %218 = mul nuw i64 %216, %217
  %219 = add i64 %203, %218
  %220 = add nuw nsw i32 %120, 1
  %221 = icmp eq i32 %220, %7
  br i1 %221, label %222, label %111, !llvm.loop !118

222:                                              ; preds = %111
  %223 = lshr i64 %143, 47
  %224 = xor i64 %18, %223
  %225 = xor i64 %224, %143
  %226 = mul i64 %225, 2654435761
  %227 = lshr i64 %147, 47
  %228 = xor i64 %21, %227
  %229 = xor i64 %228, %147
  %230 = mul i64 %229, 2654435761
  %231 = lshr i64 %167, 47
  %232 = xor i64 %25, %231
  %233 = xor i64 %232, %167
  %234 = mul i64 %233, 2654435761
  %235 = lshr i64 %171, 47
  %236 = xor i64 %29, %235
  %237 = xor i64 %236, %171
  %238 = mul i64 %237, 2654435761
  %239 = lshr i64 %191, 47
  %240 = xor i64 %33, %239
  %241 = xor i64 %240, %191
  %242 = mul i64 %241, 2654435761
  %243 = lshr i64 %195, 47
  %244 = xor i64 %37, %243
  %245 = xor i64 %244, %195
  %246 = mul i64 %245, 2654435761
  %247 = lshr i64 %215, 47
  %248 = xor i64 %41, %247
  %249 = xor i64 %248, %215
  %250 = mul i64 %249, 2654435761
  %251 = lshr i64 %219, 47
  %252 = xor i64 %45, %251
  %253 = xor i64 %252, %219
  %254 = mul i64 %253, 2654435761
  %255 = add nuw i32 %108, 1
  %256 = icmp ult i32 %255, %10
  br i1 %256, label %99, label %257, !llvm.loop !105

257:                                              ; preds = %222, %55
  %258 = phi i64 [ %96, %55 ], [ %254, %222 ]
  %259 = phi i64 [ %92, %55 ], [ %250, %222 ]
  %260 = phi i64 [ %88, %55 ], [ %246, %222 ]
  %261 = phi i64 [ %84, %55 ], [ %242, %222 ]
  %262 = phi i64 [ %80, %55 ], [ %238, %222 ]
  %263 = phi i64 [ %76, %55 ], [ %234, %222 ]
  %264 = phi i64 [ %72, %55 ], [ %230, %222 ]
  %265 = phi i64 [ %68, %55 ], [ %226, %222 ]
  store i64 %265, ptr %0, align 8, !noalias !99
  store i64 %264, ptr %22, align 8, !noalias !99
  store i64 %263, ptr %26, align 8, !noalias !99
  store i64 %262, ptr %30, align 8, !noalias !99
  store i64 %261, ptr %34, align 8, !noalias !99
  store i64 %260, ptr %38, align 8, !noalias !99
  store i64 %259, ptr %42, align 8, !noalias !99
  store i64 %258, ptr %46, align 8, !noalias !99
  br label %266

266:                                              ; preds = %257, %5
  %267 = mul i32 %10, %8
  %268 = lshr i32 %11, 6
  %269 = getelementptr inbounds nuw i8, ptr %1, i32 %267
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %270 = icmp ult i32 %11, 64
  br i1 %270, label %280, label %271

271:                                              ; preds = %266, %271
  %272 = phi i32 [ %278, %271 ], [ 0, %266 ]
  %273 = shl i32 %272, 6
  %274 = getelementptr inbounds nuw i8, ptr %269, i32 %273
  %275 = getelementptr inbounds nuw i8, ptr %274, i32 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %275, i32 0, i32 3, i32 1), !noalias !124
  %276 = shl nuw i32 %272, 3
  %277 = getelementptr inbounds nuw i8, ptr %3, i32 %276
  tail call fastcc void @XXH3_accumulate_512_scalar(ptr noundef nonnull %0, ptr noundef readonly %274, ptr noundef readonly %277), !alias.scope !125
  %278 = add nuw nsw i32 %272, 1
  %279 = icmp eq i32 %278, %268
  br i1 %279, label %280, label %271, !llvm.loop !118

280:                                              ; preds = %271, %266
  %281 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %282 = getelementptr inbounds i8, ptr %281, i32 -64
  %283 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %284 = getelementptr inbounds i8, ptr %283, i32 -71
  tail call fastcc void @XXH3_accumulate_512_scalar(ptr noundef nonnull %0, ptr noundef nonnull %282, ptr noundef nonnull %284)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i64 @XXH3_mergeAccs(ptr noalias nocapture noundef nonnull readonly %0, ptr noalias nocapture noundef readonly %1, i64 noundef zeroext %2) unnamed_addr #7 {
  %4 = load i64, ptr %0, align 8
  %5 = getelementptr i8, ptr %0, i32 8
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %1, align 1
  %8 = getelementptr i8, ptr %1, i32 8
  %9 = load i64, ptr %8, align 1
  %10 = tail call noundef i64 @llvm.bswap.i64(i64 %7)
  %11 = xor i64 %10, %4
  %12 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  %13 = xor i64 %12, %6
  %14 = and i64 %11, 4294967295
  %15 = and i64 %13, 4294967295
  %16 = mul nuw i64 %15, %14
  %17 = lshr i64 %11, 32
  %18 = mul nuw i64 %15, %17
  %19 = lshr i64 %13, 32
  %20 = mul nuw i64 %19, %14
  %21 = mul nuw i64 %19, %17
  %22 = lshr i64 %16, 32
  %23 = and i64 %18, 4294967295
  %24 = add nuw i64 %23, %20
  %25 = add nuw i64 %24, %22
  %26 = lshr i64 %18, 32
  %27 = lshr i64 %25, 32
  %28 = add nuw i64 %26, %21
  %29 = add nuw i64 %28, %27
  %30 = shl i64 %25, 32
  %31 = and i64 %16, 4294967295
  %32 = or disjoint i64 %30, %31
  %33 = xor i64 %32, %29
  %34 = add i64 %33, %2
  %35 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %36 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %37 = load i64, ptr %35, align 8
  %38 = getelementptr i8, ptr %0, i32 24
  %39 = load i64, ptr %38, align 8
  %40 = load i64, ptr %36, align 1
  %41 = getelementptr i8, ptr %1, i32 24
  %42 = load i64, ptr %41, align 1
  %43 = tail call noundef i64 @llvm.bswap.i64(i64 %40)
  %44 = xor i64 %43, %37
  %45 = tail call noundef i64 @llvm.bswap.i64(i64 %42)
  %46 = xor i64 %45, %39
  %47 = and i64 %44, 4294967295
  %48 = and i64 %46, 4294967295
  %49 = mul nuw i64 %48, %47
  %50 = lshr i64 %44, 32
  %51 = mul nuw i64 %48, %50
  %52 = lshr i64 %46, 32
  %53 = mul nuw i64 %52, %47
  %54 = mul nuw i64 %52, %50
  %55 = lshr i64 %49, 32
  %56 = and i64 %51, 4294967295
  %57 = add nuw i64 %56, %53
  %58 = add nuw i64 %57, %55
  %59 = lshr i64 %51, 32
  %60 = lshr i64 %58, 32
  %61 = add nuw i64 %59, %54
  %62 = add nuw i64 %61, %60
  %63 = shl i64 %58, 32
  %64 = and i64 %49, 4294967295
  %65 = or disjoint i64 %63, %64
  %66 = xor i64 %65, %62
  %67 = add i64 %66, %34
  %68 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %69 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %70 = load i64, ptr %68, align 8
  %71 = getelementptr i8, ptr %0, i32 40
  %72 = load i64, ptr %71, align 8
  %73 = load i64, ptr %69, align 1
  %74 = getelementptr i8, ptr %1, i32 40
  %75 = load i64, ptr %74, align 1
  %76 = tail call noundef i64 @llvm.bswap.i64(i64 %73)
  %77 = xor i64 %76, %70
  %78 = tail call noundef i64 @llvm.bswap.i64(i64 %75)
  %79 = xor i64 %78, %72
  %80 = and i64 %77, 4294967295
  %81 = and i64 %79, 4294967295
  %82 = mul nuw i64 %81, %80
  %83 = lshr i64 %77, 32
  %84 = mul nuw i64 %81, %83
  %85 = lshr i64 %79, 32
  %86 = mul nuw i64 %85, %80
  %87 = mul nuw i64 %85, %83
  %88 = lshr i64 %82, 32
  %89 = and i64 %84, 4294967295
  %90 = add nuw i64 %89, %86
  %91 = add nuw i64 %90, %88
  %92 = lshr i64 %84, 32
  %93 = lshr i64 %91, 32
  %94 = add nuw i64 %92, %87
  %95 = add nuw i64 %94, %93
  %96 = shl i64 %91, 32
  %97 = and i64 %82, 4294967295
  %98 = or disjoint i64 %96, %97
  %99 = xor i64 %98, %95
  %100 = add i64 %99, %67
  %101 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %102 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %103 = load i64, ptr %101, align 8
  %104 = getelementptr i8, ptr %0, i32 56
  %105 = load i64, ptr %104, align 8
  %106 = load i64, ptr %102, align 1
  %107 = getelementptr i8, ptr %1, i32 56
  %108 = load i64, ptr %107, align 1
  %109 = tail call noundef i64 @llvm.bswap.i64(i64 %106)
  %110 = xor i64 %109, %103
  %111 = tail call noundef i64 @llvm.bswap.i64(i64 %108)
  %112 = xor i64 %111, %105
  %113 = and i64 %110, 4294967295
  %114 = and i64 %112, 4294967295
  %115 = mul nuw i64 %114, %113
  %116 = lshr i64 %110, 32
  %117 = mul nuw i64 %114, %116
  %118 = lshr i64 %112, 32
  %119 = mul nuw i64 %118, %113
  %120 = mul nuw i64 %118, %116
  %121 = lshr i64 %115, 32
  %122 = and i64 %117, 4294967295
  %123 = add nuw i64 %122, %119
  %124 = add nuw i64 %123, %121
  %125 = lshr i64 %117, 32
  %126 = lshr i64 %124, 32
  %127 = add nuw i64 %125, %120
  %128 = add nuw i64 %127, %126
  %129 = shl i64 %124, 32
  %130 = and i64 %115, 4294967295
  %131 = or disjoint i64 %129, %130
  %132 = xor i64 %131, %128
  %133 = add i64 %132, %100
  %134 = lshr i64 %133, 37
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, 1609587791953885689
  %137 = lshr i64 %136, 32
  %138 = xor i64 %137, %136
  ret i64 %138
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite)
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i32 noundef signext %1, i64 zeroext %2, ptr noalias nocapture noundef readonly %3, i32 noundef signext %4) #10 {
  %6 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !127
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !127
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i32 noundef signext %1, ptr noundef readonly %3, i32 noundef signext %4)
  %7 = getelementptr inbounds nuw i8, ptr %3, i32 11
  %8 = zext i32 %1 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %7, i64 noundef zeroext %9), !noalias !131
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !127
  ret i64 %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 1}
!2 = !{i32 7, !"PIE Level", i32 1}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = !{!10, !12, !14, !16}
!10 = distinct !{!10, !11, !"XXH3_len_9to16_128b: argument 0"}
!11 = distinct !{!11, !"XXH3_len_9to16_128b"}
!12 = distinct !{!12, !13, !"XXH3_len_0to16_128b: argument 0"}
!13 = distinct !{!13, !"XXH3_len_0to16_128b"}
!14 = distinct !{!14, !15, !"XXH3_128bits_internal: argument 0"}
!15 = distinct !{!15, !"XXH3_128bits_internal"}
!16 = distinct !{!16, !17, !"XXH_INLINE_XXH3_128bits_withSeed: argument 0"}
!17 = distinct !{!17, !"XXH_INLINE_XXH3_128bits_withSeed"}
!18 = !{!19, !12, !14, !16}
!19 = distinct !{!19, !20, !"XXH3_len_4to8_128b: argument 0"}
!20 = distinct !{!20, !"XXH3_len_4to8_128b"}
!21 = !{!22, !12, !14, !16}
!22 = distinct !{!22, !23, !"XXH3_len_1to3_128b: argument 0"}
!23 = distinct !{!23, !"XXH3_len_1to3_128b"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_len_17to128_128b: argument 1"}
!26 = distinct !{!26, !"XXH3_len_17to128_128b"}
!27 = !{!28, !14, !16}
!28 = distinct !{!28, !26, !"XXH3_len_17to128_128b: argument 0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_len_129to240_128b: argument 1"}
!31 = distinct !{!31, !"XXH3_len_129to240_128b"}
!32 = !{!33, !14, !16}
!33 = distinct !{!33, !31, !"XXH3_len_129to240_128b: argument 0"}
!34 = !{!35, !33, !30, !14, !16}
!35 = distinct !{!35, !36, !"XXH128_mix32B: argument 0"}
!36 = distinct !{!36, !"XXH128_mix32B"}
!37 = distinct !{!37, !5}
!38 = !{!39, !33, !30, !14, !16}
!39 = distinct !{!39, !40, !"XXH128_mix32B: argument 0"}
!40 = distinct !{!40, !"XXH128_mix32B"}
!41 = distinct !{!41, !5}
!42 = !{!43, !45, !46, !47, !49, !50, !16}
!43 = distinct !{!43, !44, !"XXH3_hashLong_128b_internal: argument 0"}
!44 = distinct !{!44, !"XXH3_hashLong_128b_internal"}
!45 = distinct !{!45, !44, !"XXH3_hashLong_128b_internal: argument 1"}
!46 = distinct !{!46, !44, !"XXH3_hashLong_128b_internal: argument 2"}
!47 = distinct !{!47, !48, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!48 = distinct !{!48, !"XXH3_hashLong_128b_withSeed_internal"}
!49 = distinct !{!49, !48, !"XXH3_hashLong_128b_withSeed_internal: argument 1"}
!50 = distinct !{!50, !51, !"XXH3_hashLong_128b_withSeed: argument 0"}
!51 = distinct !{!51, !"XXH3_hashLong_128b_withSeed"}
!52 = !{!43, !47, !50, !16}
!53 = !{!43, !45, !47, !49, !50, !16}
!54 = !{!47, !49, !50, !16}
!55 = !{!56}
!56 = distinct !{!56, !57, !"XXH3_initCustomSecret_scalar: argument 0"}
!57 = distinct !{!57, !"XXH3_initCustomSecret_scalar"}
!58 = !{!56, !47, !49, !50, !16}
!59 = distinct !{!59, !5}
!60 = !{!61, !63, !64, !47, !49, !50, !16}
!61 = distinct !{!61, !62, !"XXH3_hashLong_128b_internal: argument 0"}
!62 = distinct !{!62, !"XXH3_hashLong_128b_internal"}
!63 = distinct !{!63, !62, !"XXH3_hashLong_128b_internal: argument 1"}
!64 = distinct !{!64, !62, !"XXH3_hashLong_128b_internal: argument 2"}
!65 = !{!61, !47, !50, !16}
!66 = !{!61, !63, !47, !49, !50, !16}
!67 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!68 = !{!69}
!69 = distinct !{!69, !70, !"XXH3_len_17to128_64b: argument 0"}
!70 = distinct !{!70, !"XXH3_len_17to128_64b"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"XXH3_len_17to128_64b: argument 1"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_len_129to240_64b: argument 0"}
!75 = distinct !{!75, !"XXH3_len_129to240_64b"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_len_129to240_64b: argument 1"}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"XXH3_hashLong_64b_internal: argument 0"}
!83 = distinct !{!83, !"XXH3_hashLong_64b_internal"}
!84 = distinct !{!84, !83, !"XXH3_hashLong_64b_internal: argument 1"}
!85 = !{!82}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_initCustomSecret_scalar: argument 0"}
!88 = distinct !{!88, !"XXH3_initCustomSecret_scalar"}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"XXH3_hashLong_64b_internal: argument 0"}
!91 = distinct !{!91, !"XXH3_hashLong_64b_internal"}
!92 = distinct !{!92, !91, !"XXH3_hashLong_64b_internal: argument 1"}
!93 = !{!90}
!94 = !{!95}
!95 = distinct !{!95, !96, !"XXH3_scrambleAcc_scalar: argument 1"}
!96 = distinct !{!96, !"XXH3_scrambleAcc_scalar"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"XXH3_scrambleAcc_scalar: argument 0"}
!99 = !{}
!100 = !{!101}
!101 = distinct !{!101, !102, !"XXH3_accumulate: argument 0"}
!102 = distinct !{!102, !"XXH3_accumulate"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"XXH3_accumulate: argument 2"}
!105 = distinct !{!105, !5}
!106 = !{!101, !104}
!107 = !{!108}
!108 = distinct !{!108, !109, !"XXH3_accumulate_512_scalar: argument 1"}
!109 = distinct !{!109, !"XXH3_accumulate_512_scalar"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"XXH3_accumulate_512_scalar: argument 2"}
!112 = !{!108, !101, !113, !104}
!113 = distinct !{!113, !102, !"XXH3_accumulate: argument 1"}
!114 = !{!115, !111}
!115 = distinct !{!115, !109, !"XXH3_accumulate_512_scalar: argument 0"}
!116 = !{!111, !101, !113, !104}
!117 = !{!115, !108}
!118 = distinct !{!118, !5}
!119 = !{!120}
!120 = distinct !{!120, !121, !"XXH3_accumulate: argument 0"}
!121 = distinct !{!121, !"XXH3_accumulate"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"XXH3_accumulate: argument 2"}
!124 = !{!120, !123}
!125 = !{!120, !126, !123}
!126 = distinct !{!126, !121, !"XXH3_accumulate: argument 1"}
!127 = !{!128, !130}
!128 = distinct !{!128, !129, !"XXH3_hashLong_64b_internal: argument 0"}
!129 = distinct !{!129, !"XXH3_hashLong_64b_internal"}
!130 = distinct !{!130, !129, !"XXH3_hashLong_64b_internal: argument 1"}
!131 = !{!128}
