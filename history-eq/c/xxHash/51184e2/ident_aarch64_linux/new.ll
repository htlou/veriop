; ModuleID = 'ident_aarch64_linux/wrapper.c'
source_filename = "ident_aarch64_linux/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %56

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -15
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
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %15
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = tail call i32 asm sideeffect "", "=r,0"(i32 %23) #12, !srcloc !6
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %16
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = tail call i32 asm sideeffect "", "=r,0"(i32 %30) #12, !srcloc !6
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %33 = load i32, ptr %32, align 1
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %17
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = tail call i32 asm sideeffect "", "=r,0"(i32 %37) #12, !srcloc !6
  %39 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %40 = load i32, ptr %39, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %18
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = tail call i32 asm sideeffect "", "=r,0"(i32 %44) #12, !srcloc !6
  %46 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %47 = icmp ult ptr %46, %9
  br i1 %47, label %13, label %48, !llvm.loop !7

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
  %61 = trunc i64 %1 to i32
  %62 = add i32 %59, %61
  %63 = and i64 %1, 15
  switch i64 %63, label %211 [
    i64 12, label %64
    i64 8, label %71
    i64 4, label %80
    i64 13, label %88
    i64 9, label %95
    i64 5, label %104
    i64 14, label %119
    i64 10, label %126
    i64 6, label %135
    i64 15, label %157
    i64 11, label %164
    i64 7, label %173
    i64 3, label %182
    i64 2, label %192
    i64 1, label %202
    i64 0, label %212
  ]

64:                                               ; preds = %58
  %65 = load i32, ptr %60, align 1
  %66 = mul i32 %65, -1028477379
  %67 = add i32 %66, %62
  %68 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 17)
  %70 = mul i32 %69, 668265263
  br label %71

71:                                               ; preds = %64, %58
  %72 = phi ptr [ %60, %58 ], [ %68, %64 ]
  %73 = phi i32 [ %62, %58 ], [ %70, %64 ]
  %74 = load i32, ptr %72, align 1
  %75 = mul i32 %74, -1028477379
  %76 = add i32 %75, %73
  %77 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %78 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 17)
  %79 = mul i32 %78, 668265263
  br label %80

80:                                               ; preds = %71, %58
  %81 = phi ptr [ %60, %58 ], [ %77, %71 ]
  %82 = phi i32 [ %62, %58 ], [ %79, %71 ]
  %83 = load i32, ptr %81, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %82
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %87 = mul i32 %86, 668265263
  br label %212

88:                                               ; preds = %58
  %89 = load i32, ptr %60, align 1
  %90 = mul i32 %89, -1028477379
  %91 = add i32 %90, %62
  %92 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %93 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 17)
  %94 = mul i32 %93, 668265263
  br label %95

95:                                               ; preds = %88, %58
  %96 = phi ptr [ %60, %58 ], [ %92, %88 ]
  %97 = phi i32 [ %62, %58 ], [ %94, %88 ]
  %98 = load i32, ptr %96, align 1
  %99 = mul i32 %98, -1028477379
  %100 = add i32 %99, %97
  %101 = getelementptr inbounds nuw i8, ptr %96, i64 4
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  br label %104

104:                                              ; preds = %95, %58
  %105 = phi ptr [ %60, %58 ], [ %101, %95 ]
  %106 = phi i32 [ %62, %58 ], [ %103, %95 ]
  %107 = load i32, ptr %105, align 1
  %108 = mul i32 %107, -1028477379
  %109 = add i32 %108, %106
  %110 = getelementptr inbounds nuw i8, ptr %105, i64 4
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = load i8, ptr %110, align 1
  %114 = zext i8 %113 to i32
  %115 = mul i32 %114, 374761393
  %116 = add i32 %112, %115
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 11)
  %118 = mul i32 %117, -1640531535
  br label %212

119:                                              ; preds = %58
  %120 = load i32, ptr %60, align 1
  %121 = mul i32 %120, -1028477379
  %122 = add i32 %121, %62
  %123 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %124 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 17)
  %125 = mul i32 %124, 668265263
  br label %126

126:                                              ; preds = %119, %58
  %127 = phi ptr [ %60, %58 ], [ %123, %119 ]
  %128 = phi i32 [ %62, %58 ], [ %125, %119 ]
  %129 = load i32, ptr %127, align 1
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %128
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 4
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  br label %135

135:                                              ; preds = %126, %58
  %136 = phi ptr [ %60, %58 ], [ %132, %126 ]
  %137 = phi i32 [ %62, %58 ], [ %134, %126 ]
  %138 = load i32, ptr %136, align 1
  %139 = mul i32 %138, -1028477379
  %140 = add i32 %139, %137
  %141 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %142 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 17)
  %143 = mul i32 %142, 668265263
  %144 = getelementptr inbounds nuw i8, ptr %136, i64 5
  %145 = load i8, ptr %141, align 1
  %146 = zext i8 %145 to i32
  %147 = mul i32 %146, 374761393
  %148 = add i32 %143, %147
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 11)
  %150 = mul i32 %149, -1640531535
  %151 = load i8, ptr %144, align 1
  %152 = zext i8 %151 to i32
  %153 = mul i32 %152, 374761393
  %154 = add i32 %150, %153
  %155 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 11)
  %156 = mul i32 %155, -1640531535
  br label %212

157:                                              ; preds = %58
  %158 = load i32, ptr %60, align 1
  %159 = mul i32 %158, -1028477379
  %160 = add i32 %159, %62
  %161 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %162 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 17)
  %163 = mul i32 %162, 668265263
  br label %164

164:                                              ; preds = %157, %58
  %165 = phi ptr [ %60, %58 ], [ %161, %157 ]
  %166 = phi i32 [ %62, %58 ], [ %163, %157 ]
  %167 = load i32, ptr %165, align 1
  %168 = mul i32 %167, -1028477379
  %169 = add i32 %168, %166
  %170 = getelementptr inbounds nuw i8, ptr %165, i64 4
  %171 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 17)
  %172 = mul i32 %171, 668265263
  br label %173

173:                                              ; preds = %164, %58
  %174 = phi ptr [ %60, %58 ], [ %170, %164 ]
  %175 = phi i32 [ %62, %58 ], [ %172, %164 ]
  %176 = load i32, ptr %174, align 1
  %177 = mul i32 %176, -1028477379
  %178 = add i32 %177, %175
  %179 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %180 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 17)
  %181 = mul i32 %180, 668265263
  br label %182

182:                                              ; preds = %173, %58
  %183 = phi ptr [ %60, %58 ], [ %179, %173 ]
  %184 = phi i32 [ %62, %58 ], [ %181, %173 ]
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %186 = load i8, ptr %183, align 1
  %187 = zext i8 %186 to i32
  %188 = mul i32 %187, 374761393
  %189 = add i32 %188, %184
  %190 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 11)
  %191 = mul i32 %190, -1640531535
  br label %192

192:                                              ; preds = %182, %58
  %193 = phi ptr [ %60, %58 ], [ %185, %182 ]
  %194 = phi i32 [ %62, %58 ], [ %191, %182 ]
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 1
  %196 = load i8, ptr %193, align 1
  %197 = zext i8 %196 to i32
  %198 = mul i32 %197, 374761393
  %199 = add i32 %198, %194
  %200 = tail call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 11)
  %201 = mul i32 %200, -1640531535
  br label %202

202:                                              ; preds = %192, %58
  %203 = phi ptr [ %60, %58 ], [ %195, %192 ]
  %204 = phi i32 [ %62, %58 ], [ %201, %192 ]
  %205 = load i8, ptr %203, align 1
  %206 = zext i8 %205 to i32
  %207 = mul i32 %206, 374761393
  %208 = add i32 %207, %204
  %209 = tail call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 11)
  %210 = mul i32 %209, -1640531535
  br label %212

211:                                              ; preds = %58
  unreachable

212:                                              ; preds = %58, %80, %104, %135, %202
  %213 = phi i32 [ %156, %135 ], [ %118, %104 ], [ %87, %80 ], [ %62, %58 ], [ %210, %202 ]
  %214 = lshr i32 %213, 15
  %215 = xor i32 %214, %213
  %216 = mul i32 %215, -2048144777
  %217 = lshr i32 %216, 13
  %218 = xor i32 %217, %216
  %219 = mul i32 %218, -1028477379
  %220 = lshr i32 %219, 16
  %221 = xor i32 %220, %219
  ret i32 %221
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i64 %1, 31
  br i1 %4, label %5, label %76

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -32
  %10 = add i64 %2, 6983438078262162902
  %11 = add i64 %2, -4417276706812531889
  %12 = add i64 %2, 7046029288634856825
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi ptr [ %0, %5 ], [ %42, %13 ]
  %15 = phi i64 [ %10, %5 ], [ %23, %13 ]
  %16 = phi i64 [ %11, %5 ], [ %29, %13 ]
  %17 = phi i64 [ %2, %5 ], [ %35, %13 ]
  %18 = phi i64 [ %12, %5 ], [ %41, %13 ]
  %19 = load i64, ptr %14, align 1
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, %15
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %25 = load i64, ptr %24, align 1
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %31 = load i64, ptr %30, align 1
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %17
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %37 = load i64, ptr %36, align 1
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %18
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %43 = icmp ugt ptr %42, %9
  br i1 %43, label %44, label %13, !llvm.loop !9

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
  br label %78

76:                                               ; preds = %3
  %77 = add i64 %2, 2870177450012600261
  br label %78

78:                                               ; preds = %76, %44
  %79 = phi i64 [ %75, %44 ], [ %77, %76 ]
  %80 = phi ptr [ %42, %44 ], [ %0, %76 ]
  %81 = add i64 %79, %1
  %82 = and i64 %1, 31
  %83 = icmp samesign ugt i64 %82, 7
  br i1 %83, label %84, label %99

84:                                               ; preds = %78, %84
  %85 = phi i64 [ %96, %84 ], [ %81, %78 ]
  %86 = phi ptr [ %92, %84 ], [ %80, %78 ]
  %87 = phi i64 [ %97, %84 ], [ %82, %78 ]
  %88 = load i64, ptr %86, align 1
  %89 = mul i64 %88, -4417276706812531889
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 31)
  %91 = mul i64 %90, -7046029288634856825
  %92 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %93 = xor i64 %91, %85
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 27)
  %95 = mul i64 %94, -7046029288634856825
  %96 = add i64 %95, -8796714831421723037
  %97 = add nsw i64 %87, -8
  %98 = icmp ugt i64 %97, 7
  br i1 %98, label %84, label %99, !llvm.loop !10

99:                                               ; preds = %84, %78
  %100 = phi i64 [ %82, %78 ], [ %97, %84 ]
  %101 = phi ptr [ %80, %78 ], [ %92, %84 ]
  %102 = phi i64 [ %81, %78 ], [ %96, %84 ]
  %103 = icmp samesign ugt i64 %100, 3
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, ptr %101, align 1
  %106 = zext i32 %105 to i64
  %107 = mul i64 %106, -7046029288634856825
  %108 = xor i64 %107, %102
  %109 = getelementptr inbounds nuw i8, ptr %101, i64 4
  %110 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 23)
  %111 = mul i64 %110, -4417276706812531889
  %112 = add i64 %111, 1609587929392839161
  %113 = add nsw i64 %100, -4
  br label %114

114:                                              ; preds = %104, %99
  %115 = phi i64 [ %113, %104 ], [ %100, %99 ]
  %116 = phi ptr [ %109, %104 ], [ %101, %99 ]
  %117 = phi i64 [ %112, %104 ], [ %102, %99 ]
  %118 = icmp eq i64 %115, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %114, %119
  %120 = phi i64 [ %129, %119 ], [ %117, %114 ]
  %121 = phi ptr [ %123, %119 ], [ %116, %114 ]
  %122 = phi i64 [ %130, %119 ], [ %115, %114 ]
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %124 = load i8, ptr %121, align 1
  %125 = zext i8 %124 to i64
  %126 = mul i64 %125, 2870177450012600261
  %127 = xor i64 %126, %120
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 11)
  %129 = mul i64 %128, -7046029288634856825
  %130 = add nsw i64 %122, -1
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %119, !llvm.loop !11

132:                                              ; preds = %119, %114
  %133 = phi i64 [ %117, %114 ], [ %129, %119 ]
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  ret i64 %141
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_seed(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, ptr noundef nonnull @XXH3_hashLong_64b_withSeed)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_secret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %3, 136
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef 0, ptr noundef %2, i64 noundef range(i64 136, 0) %3, ptr noundef nonnull @XXH3_hashLong_64b_withSecret)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i64 [ %7, %6 ], [ 0, %4 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [192 x i8], align 8
  %6 = icmp ult i64 %2, 17
  br i1 %6, label %7, label %152

7:                                                ; preds = %4
  %8 = icmp samesign ugt i64 %2, 8
  br i1 %8, label %9, label %48

9:                                                ; preds = %7
  %10 = sub i64 6455697860950631241, %3
  %11 = add i64 %3, -4466874330221494952
  %12 = load i64, ptr %1, align 1
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = xor i64 %12, %10
  %17 = xor i64 %16, %15
  %18 = zext i64 %17 to i128
  %19 = mul nuw i128 %18, 11400714785074694791
  %20 = trunc i128 %19 to i64
  %21 = lshr i128 %19, 64
  %22 = trunc nuw i128 %21 to i64
  %23 = shl nuw nsw i64 %2, 54
  %24 = add nsw i64 %23, -18014398509481984
  %25 = add i64 %24, %20
  %26 = xor i64 %15, %11
  %27 = and i64 %26, 4294967295
  %28 = mul nuw i64 %27, 2246822518
  %29 = add i64 %28, %26
  %30 = add i64 %29, %22
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  %32 = xor i64 %31, %25
  %33 = zext i64 %32 to i128
  %34 = mul nuw i128 %33, 14029467366897019727
  %35 = trunc i128 %34 to i64
  %36 = lshr i128 %34, 64
  %37 = trunc nuw i128 %36 to i64
  %38 = mul i64 %30, -4417276706812531889
  %39 = add i64 %38, %37
  %40 = lshr i64 %35, 37
  %41 = xor i64 %40, %35
  %42 = mul i64 %41, 1609587791953885689
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  %45 = lshr i64 %39, 37
  %46 = xor i64 %45, %39
  %47 = mul i64 %46, 1609587791953885689
  br label %145

48:                                               ; preds = %7
  %49 = icmp samesign ugt i64 %2, 3
  br i1 %49, label %50, label %86

50:                                               ; preds = %48
  %51 = trunc i64 %3 to i32
  %52 = tail call noundef i32 @llvm.bswap.i32(i32 %51)
  %53 = zext i32 %52 to i64
  %54 = shl nuw i64 %53, 32
  %55 = xor i64 %54, %3
  %56 = load i32, ptr %1, align 1
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %58 = getelementptr inbounds i8, ptr %57, i64 -4
  %59 = load i32, ptr %58, align 1
  %60 = zext i32 %56 to i64
  %61 = zext i32 %59 to i64
  %62 = shl nuw i64 %61, 32
  %63 = or disjoint i64 %62, %60
  %64 = add i64 %55, -4255862940314790740
  %65 = xor i64 %63, %64
  %66 = shl nuw nsw i64 %2, 2
  %67 = add nuw nsw i64 %66, -7046029288634856825
  %68 = zext i64 %65 to i128
  %69 = zext i64 %67 to i128
  %70 = mul nuw i128 %68, %69
  %71 = trunc i128 %70 to i64
  %72 = lshr i128 %70, 64
  %73 = trunc nuw i128 %72 to i64
  %74 = shl i64 %71, 1
  %75 = add i64 %74, %73
  %76 = lshr i64 %75, 3
  %77 = xor i64 %76, %71
  %78 = lshr i64 %77, 35
  %79 = xor i64 %78, %77
  %80 = mul i64 %79, -6939452855193903323
  %81 = lshr i64 %80, 28
  %82 = xor i64 %81, %80
  %83 = lshr i64 %75, 37
  %84 = xor i64 %83, %75
  %85 = mul i64 %84, 1609587791953885689
  br label %145

86:                                               ; preds = %48
  %87 = icmp eq i64 %2, 0
  br i1 %87, label %128, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %1, align 1
  %90 = lshr i64 %2, 1
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr i8, ptr %1, i64 %2
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %89 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = zext i8 %92 to i32
  %99 = shl nuw i32 %98, 24
  %100 = or disjoint i32 %99, %97
  %101 = zext i8 %95 to i32
  %102 = or disjoint i32 %100, %101
  %103 = trunc nuw nsw i64 %2 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = or disjoint i32 %102, %104
  %106 = tail call noundef i32 @llvm.bswap.i32(i32 %105)
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = add i64 %3, 2267503259
  %109 = sub i64 808198283, %3
  %110 = zext i32 %105 to i64
  %111 = zext nneg i32 %107 to i64
  %112 = lshr i64 %108, 33
  %113 = xor i64 %112, %110
  %114 = xor i64 %113, %108
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  %121 = lshr i64 %109, 33
  %122 = xor i64 %121, %111
  %123 = xor i64 %122, %109
  %124 = mul i64 %123, -4417276706812531889
  %125 = lshr i64 %124, 29
  %126 = xor i64 %125, %124
  %127 = mul i64 %126, 1609587929392839161
  br label %145

128:                                              ; preds = %86
  %129 = xor i64 %3, 7507096552062056628
  %130 = lshr i64 %129, 33
  %131 = xor i64 %130, %129
  %132 = mul i64 %131, -4417276706812531889
  %133 = lshr i64 %132, 29
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, 1609587929392839161
  %136 = lshr i64 %135, 32
  %137 = xor i64 %136, %135
  %138 = xor i64 %3, -7613947547284439735
  %139 = lshr i64 %138, 33
  %140 = xor i64 %139, %138
  %141 = mul i64 %140, -4417276706812531889
  %142 = lshr i64 %141, 29
  %143 = xor i64 %142, %141
  %144 = mul i64 %143, 1609587929392839161
  br label %145

145:                                              ; preds = %128, %88, %50, %9
  %146 = phi i64 [ %144, %128 ], [ %127, %88 ], [ %85, %50 ], [ %47, %9 ]
  %147 = phi i64 [ %137, %128 ], [ %120, %88 ], [ %82, %50 ], [ %44, %9 ]
  %148 = lshr i64 %146, 32
  %149 = xor i64 %148, %146
  %150 = insertvalue [2 x i64] poison, i64 %147, 0
  %151 = insertvalue [2 x i64] %150, i64 %149, 1
  br label %691

152:                                              ; preds = %4
  %153 = icmp ult i64 %2, 129
  br i1 %153, label %154, label %329

154:                                              ; preds = %152
  %155 = mul i64 %2, -7046029288634856825
  %156 = icmp samesign ugt i64 %2, 32
  br i1 %156, label %157, label %272

157:                                              ; preds = %154
  %158 = icmp samesign ugt i64 %2, 64
  br i1 %158, label %159, label %234

159:                                              ; preds = %157
  %160 = icmp samesign ugt i64 %2, 96
  br i1 %160, label %161, label %196

161:                                              ; preds = %159
  %162 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %164 = getelementptr inbounds i8, ptr %163, i64 -64
  %165 = load i64, ptr %162, align 1, !alias.scope !12
  %166 = getelementptr i8, ptr %1, i64 56
  %167 = load i64, ptr %166, align 1, !alias.scope !12
  %168 = load i64, ptr %164, align 1, !alias.scope !12
  %169 = getelementptr i8, ptr %163, i64 -56
  %170 = load i64, ptr %169, align 1, !alias.scope !12
  %171 = add i64 %3, 4554437623014685352
  %172 = xor i64 %165, %171
  %173 = sub i64 2111919702937427193, %3
  %174 = xor i64 %167, %173
  %175 = zext i64 %172 to i128
  %176 = zext i64 %174 to i128
  %177 = mul nuw i128 %176, %175
  %178 = lshr i128 %177, 64
  %179 = xor i128 %178, %177
  %180 = trunc i128 %179 to i64
  %181 = add i64 %155, %180
  %182 = add i64 %170, %168
  %183 = xor i64 %181, %182
  %184 = add i64 %3, 3556072174620004746
  %185 = xor i64 %168, %184
  %186 = sub i64 7238261902898274248, %3
  %187 = xor i64 %170, %186
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %167, %165
  %195 = xor i64 %194, %193
  br label %196

196:                                              ; preds = %161, %159
  %197 = phi i64 [ %183, %161 ], [ %155, %159 ]
  %198 = phi i64 [ %195, %161 ], [ 0, %159 ]
  %199 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %200 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %201 = getelementptr inbounds i8, ptr %200, i64 -48
  %202 = load i64, ptr %199, align 1, !alias.scope !12
  %203 = getelementptr i8, ptr %1, i64 40
  %204 = load i64, ptr %203, align 1, !alias.scope !12
  %205 = load i64, ptr %201, align 1, !alias.scope !12
  %206 = getelementptr i8, ptr %200, i64 -40
  %207 = load i64, ptr %206, align 1, !alias.scope !12
  %208 = add i64 %3, -3818837453329782724
  %209 = xor i64 %202, %208
  %210 = sub i64 -6688317018830679928, %3
  %211 = xor i64 %204, %210
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %197, %217
  %219 = add i64 %207, %205
  %220 = xor i64 %218, %219
  %221 = add i64 %3, 5690594596133299313
  %222 = xor i64 %205, %221
  %223 = sub i64 -2833645246901970632, %3
  %224 = xor i64 %207, %223
  %225 = zext i64 %222 to i128
  %226 = zext i64 %224 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %198, %230
  %232 = add i64 %204, %202
  %233 = xor i64 %231, %232
  br label %234

234:                                              ; preds = %196, %157
  %235 = phi i64 [ %220, %196 ], [ %155, %157 ]
  %236 = phi i64 [ %233, %196 ], [ 0, %157 ]
  %237 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %238 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %239 = getelementptr inbounds i8, ptr %238, i64 -32
  %240 = load i64, ptr %237, align 1, !alias.scope !12
  %241 = getelementptr i8, ptr %1, i64 24
  %242 = load i64, ptr %241, align 1, !alias.scope !12
  %243 = load i64, ptr %239, align 1, !alias.scope !12
  %244 = getelementptr i8, ptr %238, i64 -24
  %245 = load i64, ptr %244, align 1, !alias.scope !12
  %246 = add i64 %3, 8711581037947681227
  %247 = xor i64 %240, %246
  %248 = sub i64 2410270004345854594, %3
  %249 = xor i64 %242, %248
  %250 = zext i64 %247 to i128
  %251 = zext i64 %249 to i128
  %252 = mul nuw i128 %251, %250
  %253 = lshr i128 %252, 64
  %254 = xor i128 %253, %252
  %255 = trunc i128 %254 to i64
  %256 = add i64 %235, %255
  %257 = add i64 %245, %243
  %258 = xor i64 %256, %257
  %259 = add i64 %3, -8204357891075471176
  %260 = xor i64 %243, %259
  %261 = sub i64 5487137525590930912, %3
  %262 = xor i64 %245, %261
  %263 = zext i64 %260 to i128
  %264 = zext i64 %262 to i128
  %265 = mul nuw i128 %264, %263
  %266 = lshr i128 %265, 64
  %267 = xor i128 %266, %265
  %268 = trunc i128 %267 to i64
  %269 = add i64 %236, %268
  %270 = add i64 %242, %240
  %271 = xor i64 %269, %270
  br label %272

272:                                              ; preds = %234, %154
  %273 = phi i64 [ %258, %234 ], [ %155, %154 ]
  %274 = phi i64 [ %271, %234 ], [ 0, %154 ]
  %275 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %276 = getelementptr inbounds i8, ptr %275, i64 -16
  %277 = load i64, ptr %1, align 1, !alias.scope !12
  %278 = getelementptr i8, ptr %1, i64 8
  %279 = load i64, ptr %278, align 1, !alias.scope !12
  %280 = load i64, ptr %276, align 1, !alias.scope !12
  %281 = getelementptr i8, ptr %275, i64 -8
  %282 = load i64, ptr %281, align 1, !alias.scope !12
  %283 = add i64 %3, -4734510112055689544
  %284 = xor i64 %277, %283
  %285 = sub i64 2066345149520216444, %3
  %286 = xor i64 %279, %285
  %287 = zext i64 %284 to i128
  %288 = zext i64 %286 to i128
  %289 = mul nuw i128 %288, %287
  %290 = lshr i128 %289, 64
  %291 = xor i128 %290, %289
  %292 = trunc i128 %291 to i64
  %293 = add i64 %273, %292
  %294 = add i64 %282, %280
  %295 = xor i64 %293, %294
  %296 = add i64 %3, -2623469361688619810
  %297 = xor i64 %280, %296
  %298 = sub i64 2262974939099578482, %3
  %299 = xor i64 %282, %298
  %300 = zext i64 %297 to i128
  %301 = zext i64 %299 to i128
  %302 = mul nuw i128 %301, %300
  %303 = lshr i128 %302, 64
  %304 = xor i128 %303, %302
  %305 = trunc i128 %304 to i64
  %306 = add i64 %274, %305
  %307 = add i64 %279, %277
  %308 = xor i64 %306, %307
  %309 = add i64 %308, %295
  %310 = mul i64 %295, -7046029288634856825
  %311 = mul i64 %308, -8796714831421723037
  %312 = sub i64 %2, %3
  %313 = mul i64 %312, -4417276706812531889
  %314 = add i64 %310, %313
  %315 = add i64 %314, %311
  %316 = lshr i64 %309, 37
  %317 = xor i64 %316, %309
  %318 = mul i64 %317, 1609587791953885689
  %319 = lshr i64 %318, 32
  %320 = xor i64 %319, %318
  %321 = lshr i64 %315, 37
  %322 = xor i64 %321, %315
  %323 = mul i64 %322, 1609587791953885689
  %324 = lshr i64 %323, 32
  %325 = xor i64 %324, %323
  %326 = sub i64 0, %325
  %327 = insertvalue [2 x i64] poison, i64 %320, 0
  %328 = insertvalue [2 x i64] %327, i64 %326, 1
  br label %691

329:                                              ; preds = %152
  %330 = icmp ult i64 %2, 241
  br i1 %330, label %331, label %590

331:                                              ; preds = %329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %332 = trunc nuw nsw i64 %2 to i32
  %333 = mul i64 %2, -7046029288634856825
  %334 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %335 = load i64, ptr %1, align 1, !alias.scope !15
  %336 = getelementptr i8, ptr %1, i64 8
  %337 = load i64, ptr %336, align 1, !alias.scope !15
  %338 = load i64, ptr %334, align 1, !alias.scope !15
  %339 = getelementptr i8, ptr %1, i64 24
  %340 = load i64, ptr %339, align 1, !alias.scope !15
  %341 = add i64 %3, -4734510112055689544
  %342 = xor i64 %335, %341
  %343 = sub i64 2066345149520216444, %3
  %344 = xor i64 %337, %343
  %345 = zext i64 %342 to i128
  %346 = zext i64 %344 to i128
  %347 = mul nuw i128 %346, %345
  %348 = lshr i128 %347, 64
  %349 = xor i128 %348, %347
  %350 = trunc i128 %349 to i64
  %351 = add i64 %333, %350
  %352 = add i64 %340, %338
  %353 = xor i64 %351, %352
  %354 = add i64 %3, -2623469361688619810
  %355 = xor i64 %338, %354
  %356 = sub i64 2262974939099578482, %3
  %357 = xor i64 %340, %356
  %358 = zext i64 %355 to i128
  %359 = zext i64 %357 to i128
  %360 = mul nuw i128 %359, %358
  %361 = lshr i128 %360, 64
  %362 = xor i128 %361, %360
  %363 = trunc i128 %362 to i64
  %364 = add i64 %337, %335
  %365 = xor i64 %364, %363
  %366 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %367 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %368 = load i64, ptr %366, align 1, !alias.scope !15
  %369 = getelementptr i8, ptr %1, i64 40
  %370 = load i64, ptr %369, align 1, !alias.scope !15
  %371 = load i64, ptr %367, align 1, !alias.scope !15
  %372 = getelementptr i8, ptr %1, i64 56
  %373 = load i64, ptr %372, align 1, !alias.scope !15
  %374 = add i64 %3, 8711581037947681227
  %375 = xor i64 %368, %374
  %376 = sub i64 2410270004345854594, %3
  %377 = xor i64 %370, %376
  %378 = zext i64 %375 to i128
  %379 = zext i64 %377 to i128
  %380 = mul nuw i128 %379, %378
  %381 = lshr i128 %380, 64
  %382 = xor i128 %381, %380
  %383 = trunc i128 %382 to i64
  %384 = add i64 %353, %383
  %385 = add i64 %373, %371
  %386 = xor i64 %384, %385
  %387 = add i64 %3, -8204357891075471176
  %388 = xor i64 %371, %387
  %389 = sub i64 5487137525590930912, %3
  %390 = xor i64 %373, %389
  %391 = zext i64 %388 to i128
  %392 = zext i64 %390 to i128
  %393 = mul nuw i128 %392, %391
  %394 = lshr i128 %393, 64
  %395 = xor i128 %394, %393
  %396 = trunc i128 %395 to i64
  %397 = add i64 %365, %396
  %398 = add i64 %370, %368
  %399 = xor i64 %397, %398
  %400 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %401 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %402 = load i64, ptr %400, align 1, !alias.scope !15
  %403 = getelementptr i8, ptr %1, i64 72
  %404 = load i64, ptr %403, align 1, !alias.scope !15
  %405 = load i64, ptr %401, align 1, !alias.scope !15
  %406 = getelementptr i8, ptr %1, i64 88
  %407 = load i64, ptr %406, align 1, !alias.scope !15
  %408 = add i64 %3, -3818837453329782724
  %409 = xor i64 %402, %408
  %410 = sub i64 -6688317018830679928, %3
  %411 = xor i64 %404, %410
  %412 = zext i64 %409 to i128
  %413 = zext i64 %411 to i128
  %414 = mul nuw i128 %413, %412
  %415 = lshr i128 %414, 64
  %416 = xor i128 %415, %414
  %417 = trunc i128 %416 to i64
  %418 = add i64 %386, %417
  %419 = add i64 %407, %405
  %420 = xor i64 %418, %419
  %421 = add i64 %3, 5690594596133299313
  %422 = xor i64 %405, %421
  %423 = sub i64 -2833645246901970632, %3
  %424 = xor i64 %407, %423
  %425 = zext i64 %422 to i128
  %426 = zext i64 %424 to i128
  %427 = mul nuw i128 %426, %425
  %428 = lshr i128 %427, 64
  %429 = xor i128 %428, %427
  %430 = trunc i128 %429 to i64
  %431 = add i64 %399, %430
  %432 = add i64 %404, %402
  %433 = xor i64 %431, %432
  %434 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %435 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %436 = load i64, ptr %434, align 1, !alias.scope !15
  %437 = getelementptr i8, ptr %1, i64 104
  %438 = load i64, ptr %437, align 1, !alias.scope !15
  %439 = load i64, ptr %435, align 1, !alias.scope !15
  %440 = getelementptr i8, ptr %1, i64 120
  %441 = load i64, ptr %440, align 1, !alias.scope !15
  %442 = add i64 %3, 4554437623014685352
  %443 = xor i64 %436, %442
  %444 = sub i64 2111919702937427193, %3
  %445 = xor i64 %438, %444
  %446 = zext i64 %443 to i128
  %447 = zext i64 %445 to i128
  %448 = mul nuw i128 %447, %446
  %449 = lshr i128 %448, 64
  %450 = xor i128 %449, %448
  %451 = trunc i128 %450 to i64
  %452 = add i64 %420, %451
  %453 = add i64 %441, %439
  %454 = xor i64 %452, %453
  %455 = add i64 %3, 3556072174620004746
  %456 = xor i64 %439, %455
  %457 = sub i64 7238261902898274248, %3
  %458 = xor i64 %441, %457
  %459 = zext i64 %456 to i128
  %460 = zext i64 %458 to i128
  %461 = mul nuw i128 %460, %459
  %462 = lshr i128 %461, 64
  %463 = xor i128 %462, %461
  %464 = trunc i128 %463 to i64
  %465 = add i64 %433, %464
  %466 = add i64 %438, %436
  %467 = xor i64 %465, %466
  %468 = lshr i32 %332, 5
  %469 = lshr i64 %454, 37
  %470 = xor i64 %469, %454
  %471 = mul i64 %470, 1609587791953885689
  %472 = lshr i64 %471, 32
  %473 = xor i64 %472, %471
  %474 = lshr i64 %467, 37
  %475 = xor i64 %474, %467
  %476 = mul i64 %475, 1609587791953885689
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  %479 = icmp eq i32 %468, 4
  br i1 %479, label %532, label %480

480:                                              ; preds = %331
  %481 = zext nneg i32 %468 to i64
  br label %482

482:                                              ; preds = %482, %480
  %483 = phi i64 [ 4, %480 ], [ %530, %482 ]
  %484 = phi i64 [ %478, %480 ], [ %529, %482 ]
  %485 = phi i64 [ %473, %480 ], [ %512, %482 ]
  %486 = shl nsw i64 %483, 5
  %487 = getelementptr inbounds nuw i8, ptr %1, i64 %486
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 16
  %489 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 3), i64 %486
  %490 = getelementptr i8, ptr %489, i64 -128
  %491 = load i64, ptr %487, align 1, !alias.scope !15
  %492 = getelementptr i8, ptr %487, i64 8
  %493 = load i64, ptr %492, align 1, !alias.scope !15
  %494 = load i64, ptr %488, align 1, !alias.scope !15
  %495 = getelementptr i8, ptr %487, i64 24
  %496 = load i64, ptr %495, align 1, !alias.scope !15
  %497 = load i64, ptr %490, align 1, !noalias !15
  %498 = getelementptr i8, ptr %489, i64 -120
  %499 = load i64, ptr %498, align 1, !noalias !15
  %500 = add i64 %497, %3
  %501 = xor i64 %500, %491
  %502 = sub i64 %499, %3
  %503 = xor i64 %502, %493
  %504 = zext i64 %501 to i128
  %505 = zext i64 %503 to i128
  %506 = mul nuw i128 %505, %504
  %507 = lshr i128 %506, 64
  %508 = xor i128 %507, %506
  %509 = trunc i128 %508 to i64
  %510 = add i64 %485, %509
  %511 = add i64 %496, %494
  %512 = xor i64 %510, %511
  %513 = getelementptr i8, ptr %489, i64 -112
  %514 = load i64, ptr %513, align 1, !noalias !15
  %515 = getelementptr i8, ptr %489, i64 -104
  %516 = load i64, ptr %515, align 1, !noalias !15
  %517 = add i64 %514, %3
  %518 = xor i64 %517, %494
  %519 = sub i64 %516, %3
  %520 = xor i64 %519, %496
  %521 = zext i64 %518 to i128
  %522 = zext i64 %520 to i128
  %523 = mul nuw i128 %522, %521
  %524 = lshr i128 %523, 64
  %525 = xor i128 %524, %523
  %526 = trunc i128 %525 to i64
  %527 = add i64 %484, %526
  %528 = add i64 %493, %491
  %529 = xor i64 %527, %528
  %530 = add nuw nsw i64 %483, 1
  %531 = icmp eq i64 %530, %481
  br i1 %531, label %532, label %482, !llvm.loop !18

532:                                              ; preds = %482, %331
  %533 = phi i64 [ %473, %331 ], [ %512, %482 ]
  %534 = phi i64 [ %478, %331 ], [ %529, %482 ]
  %535 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %536 = getelementptr inbounds i8, ptr %535, i64 -16
  %537 = getelementptr inbounds i8, ptr %535, i64 -32
  %538 = load i64, ptr %536, align 1, !alias.scope !15
  %539 = getelementptr i8, ptr %535, i64 -8
  %540 = load i64, ptr %539, align 1, !alias.scope !15
  %541 = load i64, ptr %537, align 1, !alias.scope !15
  %542 = getelementptr i8, ptr %535, i64 -24
  %543 = load i64, ptr %542, align 1, !alias.scope !15
  %544 = sub i64 5695865814404364607, %3
  %545 = xor i64 %538, %544
  %546 = add i64 %3, 6464017090953185821
  %547 = xor i64 %540, %546
  %548 = zext i64 %545 to i128
  %549 = zext i64 %547 to i128
  %550 = mul nuw i128 %549, %548
  %551 = lshr i128 %550, 64
  %552 = xor i128 %551, %550
  %553 = trunc i128 %552 to i64
  %554 = add i64 %533, %553
  %555 = add i64 %543, %541
  %556 = xor i64 %554, %555
  %557 = sub i64 8320639771003045937, %3
  %558 = xor i64 %541, %557
  %559 = add i64 %3, -1453760514566526364
  %560 = xor i64 %543, %559
  %561 = zext i64 %558 to i128
  %562 = zext i64 %560 to i128
  %563 = mul nuw i128 %562, %561
  %564 = lshr i128 %563, 64
  %565 = xor i128 %564, %563
  %566 = trunc i128 %565 to i64
  %567 = add i64 %534, %566
  %568 = add i64 %540, %538
  %569 = xor i64 %567, %568
  %570 = add i64 %569, %556
  %571 = mul i64 %556, -7046029288634856825
  %572 = mul i64 %569, -8796714831421723037
  %573 = sub i64 %2, %3
  %574 = mul i64 %573, -4417276706812531889
  %575 = add i64 %571, %574
  %576 = add i64 %575, %572
  %577 = lshr i64 %570, 37
  %578 = xor i64 %577, %570
  %579 = mul i64 %578, 1609587791953885689
  %580 = lshr i64 %579, 32
  %581 = xor i64 %580, %579
  %582 = lshr i64 %576, 37
  %583 = xor i64 %582, %576
  %584 = mul i64 %583, 1609587791953885689
  %585 = lshr i64 %584, 32
  %586 = xor i64 %585, %584
  %587 = sub i64 0, %586
  %588 = insertvalue [2 x i64] poison, i64 %581, 0
  %589 = insertvalue [2 x i64] %588, i64 %587, 1
  br label %691

590:                                              ; preds = %329
  %591 = icmp eq i64 %3, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %590
  %593 = tail call fastcc [2 x i64] @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %691

594:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #12, !noalias !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %595 = tail call ptr asm sideeffect "", "=r,0"(ptr nonnull @XXH3_kSecret) #12, !noalias !25, !srcloc !26
  %596 = load i64, ptr %595, align 1, !noalias !25
  %597 = add i64 %596, %3
  %598 = getelementptr inbounds nuw i8, ptr %595, i64 8
  %599 = load i64, ptr %598, align 1, !noalias !25
  %600 = sub i64 %599, %3
  store i64 %597, ptr %5, align 8, !alias.scope !22, !noalias !19
  %601 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %600, ptr %601, align 8, !alias.scope !22, !noalias !19
  %602 = getelementptr inbounds nuw i8, ptr %595, i64 16
  %603 = load i64, ptr %602, align 1, !noalias !25
  %604 = add i64 %603, %3
  %605 = getelementptr inbounds nuw i8, ptr %595, i64 24
  %606 = load i64, ptr %605, align 1, !noalias !25
  %607 = sub i64 %606, %3
  %608 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %604, ptr %608, align 8, !alias.scope !22, !noalias !19
  %609 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %607, ptr %609, align 8, !alias.scope !22, !noalias !19
  %610 = getelementptr inbounds nuw i8, ptr %595, i64 32
  %611 = load i64, ptr %610, align 1, !noalias !25
  %612 = add i64 %611, %3
  %613 = getelementptr inbounds nuw i8, ptr %595, i64 40
  %614 = load i64, ptr %613, align 1, !noalias !25
  %615 = sub i64 %614, %3
  %616 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %612, ptr %616, align 8, !alias.scope !22, !noalias !19
  %617 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %615, ptr %617, align 8, !alias.scope !22, !noalias !19
  %618 = getelementptr inbounds nuw i8, ptr %595, i64 48
  %619 = load i64, ptr %618, align 1, !noalias !25
  %620 = add i64 %619, %3
  %621 = getelementptr inbounds nuw i8, ptr %595, i64 56
  %622 = load i64, ptr %621, align 1, !noalias !25
  %623 = sub i64 %622, %3
  %624 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %620, ptr %624, align 8, !alias.scope !22, !noalias !19
  %625 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %623, ptr %625, align 8, !alias.scope !22, !noalias !19
  %626 = getelementptr inbounds nuw i8, ptr %595, i64 64
  %627 = load i64, ptr %626, align 1, !noalias !25
  %628 = add i64 %627, %3
  %629 = getelementptr inbounds nuw i8, ptr %595, i64 72
  %630 = load i64, ptr %629, align 1, !noalias !25
  %631 = sub i64 %630, %3
  %632 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %628, ptr %632, align 8, !alias.scope !22, !noalias !19
  %633 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %631, ptr %633, align 8, !alias.scope !22, !noalias !19
  %634 = getelementptr inbounds nuw i8, ptr %595, i64 80
  %635 = load i64, ptr %634, align 1, !noalias !25
  %636 = add i64 %635, %3
  %637 = getelementptr inbounds nuw i8, ptr %595, i64 88
  %638 = load i64, ptr %637, align 1, !noalias !25
  %639 = sub i64 %638, %3
  %640 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %636, ptr %640, align 8, !alias.scope !22, !noalias !19
  %641 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %639, ptr %641, align 8, !alias.scope !22, !noalias !19
  %642 = getelementptr inbounds nuw i8, ptr %595, i64 96
  %643 = load i64, ptr %642, align 1, !noalias !25
  %644 = add i64 %643, %3
  %645 = getelementptr inbounds nuw i8, ptr %595, i64 104
  %646 = load i64, ptr %645, align 1, !noalias !25
  %647 = sub i64 %646, %3
  %648 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %644, ptr %648, align 8, !alias.scope !22, !noalias !19
  %649 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %647, ptr %649, align 8, !alias.scope !22, !noalias !19
  %650 = getelementptr inbounds nuw i8, ptr %595, i64 112
  %651 = load i64, ptr %650, align 1, !noalias !25
  %652 = add i64 %651, %3
  %653 = getelementptr inbounds nuw i8, ptr %595, i64 120
  %654 = load i64, ptr %653, align 1, !noalias !25
  %655 = sub i64 %654, %3
  %656 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %652, ptr %656, align 8, !alias.scope !22, !noalias !19
  %657 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %655, ptr %657, align 8, !alias.scope !22, !noalias !19
  %658 = getelementptr inbounds nuw i8, ptr %595, i64 128
  %659 = load i64, ptr %658, align 1, !noalias !25
  %660 = add i64 %659, %3
  %661 = getelementptr inbounds nuw i8, ptr %595, i64 136
  %662 = load i64, ptr %661, align 1, !noalias !25
  %663 = sub i64 %662, %3
  %664 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %660, ptr %664, align 8, !alias.scope !22, !noalias !19
  %665 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %663, ptr %665, align 8, !alias.scope !22, !noalias !19
  %666 = getelementptr inbounds nuw i8, ptr %595, i64 144
  %667 = load i64, ptr %666, align 1, !noalias !25
  %668 = add i64 %667, %3
  %669 = getelementptr inbounds nuw i8, ptr %595, i64 152
  %670 = load i64, ptr %669, align 1, !noalias !25
  %671 = sub i64 %670, %3
  %672 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %668, ptr %672, align 8, !alias.scope !22, !noalias !19
  %673 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %671, ptr %673, align 8, !alias.scope !22, !noalias !19
  %674 = getelementptr inbounds nuw i8, ptr %595, i64 160
  %675 = load i64, ptr %674, align 1, !noalias !25
  %676 = add i64 %675, %3
  %677 = getelementptr inbounds nuw i8, ptr %595, i64 168
  %678 = load i64, ptr %677, align 1, !noalias !25
  %679 = sub i64 %678, %3
  %680 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %676, ptr %680, align 8, !alias.scope !22, !noalias !19
  %681 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %679, ptr %681, align 8, !alias.scope !22, !noalias !19
  %682 = getelementptr inbounds nuw i8, ptr %595, i64 176
  %683 = load i64, ptr %682, align 1, !noalias !25
  %684 = add i64 %683, %3
  %685 = getelementptr inbounds nuw i8, ptr %595, i64 184
  %686 = load i64, ptr %685, align 1, !noalias !25
  %687 = sub i64 %686, %3
  %688 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %684, ptr %688, align 8, !alias.scope !22, !noalias !19
  %689 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %687, ptr %689, align 8, !alias.scope !22, !noalias !19
  %690 = call fastcc [2 x i64] @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #12, !noalias !19
  br label %691

691:                                              ; preds = %145, %272, %532, %592, %594
  %692 = phi [2 x i64] [ %151, %145 ], [ %328, %272 ], [ %589, %532 ], [ %593, %592 ], [ %690, %594 ]
  %693 = extractvalue [2 x i64] %692, 0
  %694 = extractvalue [2 x i64] %692, 1
  store i64 %693, ptr %0, align 8
  %695 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %694, ptr %695, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef range(i64 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %74

8:                                                ; preds = %6
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %44, !prof !27

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
  br label %468

44:                                               ; preds = %8
  %45 = icmp samesign ugt i64 %1, 3
  br i1 %45, label %46, label %52, !prof !27

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %3, i64 8
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %3, i64 16
  %50 = load i64, ptr %49, align 1
  %51 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, i64 %48, i64 %50, i64 noundef %2)
  br label %468

52:                                               ; preds = %44
  %53 = icmp eq i64 %1, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %3, align 1
  %56 = getelementptr i8, ptr %3, i64 4
  %57 = load i32, ptr %56, align 1
  %58 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, i32 %55, i32 %57, i64 noundef %2)
  br label %468

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
  br label %468

74:                                               ; preds = %6
  %75 = icmp ult i64 %1, 129
  br i1 %75, label %76, label %249

76:                                               ; preds = %74
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
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
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %86 = load i64, ptr %84, align 1, !alias.scope !28, !noalias !31
  %87 = getelementptr i8, ptr %0, i64 56
  %88 = load i64, ptr %87, align 1, !alias.scope !28, !noalias !31
  %89 = load i64, ptr %85, align 1, !alias.scope !31, !noalias !28
  %90 = getelementptr i8, ptr %3, i64 104
  %91 = load i64, ptr %90, align 1, !alias.scope !31, !noalias !28
  %92 = add i64 %89, %2
  %93 = xor i64 %92, %86
  %94 = sub i64 %91, %2
  %95 = xor i64 %94, %88
  %96 = zext i64 %93 to i128
  %97 = zext i64 %95 to i128
  %98 = mul nuw i128 %97, %96
  %99 = lshr i128 %98, 64
  %100 = xor i128 %99, %98
  %101 = trunc i128 %100 to i64
  %102 = add i64 %77, %101
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %104 = getelementptr inbounds i8, ptr %103, i64 -64
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %106 = load i64, ptr %104, align 1, !alias.scope !28, !noalias !31
  %107 = getelementptr i8, ptr %103, i64 -56
  %108 = load i64, ptr %107, align 1, !alias.scope !28, !noalias !31
  %109 = load i64, ptr %105, align 1, !alias.scope !31, !noalias !28
  %110 = getelementptr i8, ptr %3, i64 120
  %111 = load i64, ptr %110, align 1, !alias.scope !31, !noalias !28
  %112 = add i64 %109, %2
  %113 = xor i64 %112, %106
  %114 = sub i64 %111, %2
  %115 = xor i64 %114, %108
  %116 = zext i64 %113 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %102, %121
  br label %123

123:                                              ; preds = %83, %81
  %124 = phi i64 [ %122, %83 ], [ %77, %81 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %127 = load i64, ptr %125, align 1, !alias.scope !28, !noalias !31
  %128 = getelementptr i8, ptr %0, i64 40
  %129 = load i64, ptr %128, align 1, !alias.scope !28, !noalias !31
  %130 = load i64, ptr %126, align 1, !alias.scope !31, !noalias !28
  %131 = getelementptr i8, ptr %3, i64 72
  %132 = load i64, ptr %131, align 1, !alias.scope !31, !noalias !28
  %133 = add i64 %130, %2
  %134 = xor i64 %133, %127
  %135 = sub i64 %132, %2
  %136 = xor i64 %135, %129
  %137 = zext i64 %134 to i128
  %138 = zext i64 %136 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %124, %142
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %145 = getelementptr inbounds i8, ptr %144, i64 -48
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %147 = load i64, ptr %145, align 1, !alias.scope !28, !noalias !31
  %148 = getelementptr i8, ptr %144, i64 -40
  %149 = load i64, ptr %148, align 1, !alias.scope !28, !noalias !31
  %150 = load i64, ptr %146, align 1, !alias.scope !31, !noalias !28
  %151 = getelementptr i8, ptr %3, i64 88
  %152 = load i64, ptr %151, align 1, !alias.scope !31, !noalias !28
  %153 = add i64 %150, %2
  %154 = xor i64 %153, %147
  %155 = sub i64 %152, %2
  %156 = xor i64 %155, %149
  %157 = zext i64 %154 to i128
  %158 = zext i64 %156 to i128
  %159 = mul nuw i128 %158, %157
  %160 = lshr i128 %159, 64
  %161 = xor i128 %160, %159
  %162 = trunc i128 %161 to i64
  %163 = add i64 %143, %162
  br label %164

164:                                              ; preds = %123, %79
  %165 = phi i64 [ %163, %123 ], [ %77, %79 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %167 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %168 = load i64, ptr %166, align 1, !alias.scope !28, !noalias !31
  %169 = getelementptr i8, ptr %0, i64 24
  %170 = load i64, ptr %169, align 1, !alias.scope !28, !noalias !31
  %171 = load i64, ptr %167, align 1, !alias.scope !31, !noalias !28
  %172 = getelementptr i8, ptr %3, i64 40
  %173 = load i64, ptr %172, align 1, !alias.scope !31, !noalias !28
  %174 = add i64 %171, %2
  %175 = xor i64 %174, %168
  %176 = sub i64 %173, %2
  %177 = xor i64 %176, %170
  %178 = zext i64 %175 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %165, %183
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %186 = getelementptr inbounds i8, ptr %185, i64 -32
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %188 = load i64, ptr %186, align 1, !alias.scope !28, !noalias !31
  %189 = getelementptr i8, ptr %185, i64 -24
  %190 = load i64, ptr %189, align 1, !alias.scope !28, !noalias !31
  %191 = load i64, ptr %187, align 1, !alias.scope !31, !noalias !28
  %192 = getelementptr i8, ptr %3, i64 56
  %193 = load i64, ptr %192, align 1, !alias.scope !31, !noalias !28
  %194 = add i64 %191, %2
  %195 = xor i64 %194, %188
  %196 = sub i64 %193, %2
  %197 = xor i64 %196, %190
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %184, %203
  br label %205

205:                                              ; preds = %76, %164
  %206 = phi i64 [ %204, %164 ], [ %77, %76 ]
  %207 = load i64, ptr %0, align 1, !alias.scope !28, !noalias !31
  %208 = getelementptr i8, ptr %0, i64 8
  %209 = load i64, ptr %208, align 1, !alias.scope !28, !noalias !31
  %210 = load i64, ptr %3, align 1, !alias.scope !31, !noalias !28
  %211 = getelementptr i8, ptr %3, i64 8
  %212 = load i64, ptr %211, align 1, !alias.scope !31, !noalias !28
  %213 = add i64 %210, %2
  %214 = xor i64 %213, %207
  %215 = sub i64 %212, %2
  %216 = xor i64 %215, %209
  %217 = zext i64 %214 to i128
  %218 = zext i64 %216 to i128
  %219 = mul nuw i128 %218, %217
  %220 = lshr i128 %219, 64
  %221 = xor i128 %220, %219
  %222 = trunc i128 %221 to i64
  %223 = add i64 %206, %222
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %225 = getelementptr inbounds i8, ptr %224, i64 -16
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %227 = load i64, ptr %225, align 1, !alias.scope !28, !noalias !31
  %228 = getelementptr i8, ptr %224, i64 -8
  %229 = load i64, ptr %228, align 1, !alias.scope !28, !noalias !31
  %230 = load i64, ptr %226, align 1, !alias.scope !31, !noalias !28
  %231 = getelementptr i8, ptr %3, i64 24
  %232 = load i64, ptr %231, align 1, !alias.scope !31, !noalias !28
  %233 = add i64 %230, %2
  %234 = xor i64 %233, %227
  %235 = sub i64 %232, %2
  %236 = xor i64 %235, %229
  %237 = zext i64 %234 to i128
  %238 = zext i64 %236 to i128
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
  br label %468

249:                                              ; preds = %74
  %250 = icmp ult i64 %1, 241
  br i1 %250, label %251, label %466

251:                                              ; preds = %249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %252 = mul i64 %1, -7046029288634856825
  %253 = trunc nuw nsw i64 %1 to i32
  %254 = load i64, ptr %0, align 1, !alias.scope !33, !noalias !36
  %255 = getelementptr i8, ptr %0, i64 8
  %256 = load i64, ptr %255, align 1, !alias.scope !33, !noalias !36
  %257 = load i64, ptr %3, align 1, !alias.scope !36, !noalias !33
  %258 = getelementptr i8, ptr %3, i64 8
  %259 = load i64, ptr %258, align 1, !alias.scope !36, !noalias !33
  %260 = add i64 %257, %2
  %261 = xor i64 %260, %254
  %262 = sub i64 %259, %2
  %263 = xor i64 %262, %256
  %264 = zext i64 %261 to i128
  %265 = zext i64 %263 to i128
  %266 = mul nuw i128 %265, %264
  %267 = lshr i128 %266, 64
  %268 = xor i128 %267, %266
  %269 = trunc i128 %268 to i64
  %270 = add i64 %252, %269
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %272 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %273 = load i64, ptr %271, align 1, !alias.scope !33, !noalias !36
  %274 = getelementptr i8, ptr %0, i64 24
  %275 = load i64, ptr %274, align 1, !alias.scope !33, !noalias !36
  %276 = load i64, ptr %272, align 1, !alias.scope !36, !noalias !33
  %277 = getelementptr i8, ptr %3, i64 24
  %278 = load i64, ptr %277, align 1, !alias.scope !36, !noalias !33
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
  %289 = add i64 %270, %288
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %291 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %292 = load i64, ptr %290, align 1, !alias.scope !33, !noalias !36
  %293 = getelementptr i8, ptr %0, i64 40
  %294 = load i64, ptr %293, align 1, !alias.scope !33, !noalias !36
  %295 = load i64, ptr %291, align 1, !alias.scope !36, !noalias !33
  %296 = getelementptr i8, ptr %3, i64 40
  %297 = load i64, ptr %296, align 1, !alias.scope !36, !noalias !33
  %298 = add i64 %295, %2
  %299 = xor i64 %298, %292
  %300 = sub i64 %297, %2
  %301 = xor i64 %300, %294
  %302 = zext i64 %299 to i128
  %303 = zext i64 %301 to i128
  %304 = mul nuw i128 %303, %302
  %305 = lshr i128 %304, 64
  %306 = xor i128 %305, %304
  %307 = trunc i128 %306 to i64
  %308 = add i64 %289, %307
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %310 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %311 = load i64, ptr %309, align 1, !alias.scope !33, !noalias !36
  %312 = getelementptr i8, ptr %0, i64 56
  %313 = load i64, ptr %312, align 1, !alias.scope !33, !noalias !36
  %314 = load i64, ptr %310, align 1, !alias.scope !36, !noalias !33
  %315 = getelementptr i8, ptr %3, i64 56
  %316 = load i64, ptr %315, align 1, !alias.scope !36, !noalias !33
  %317 = add i64 %314, %2
  %318 = xor i64 %317, %311
  %319 = sub i64 %316, %2
  %320 = xor i64 %319, %313
  %321 = zext i64 %318 to i128
  %322 = zext i64 %320 to i128
  %323 = mul nuw i128 %322, %321
  %324 = lshr i128 %323, 64
  %325 = xor i128 %324, %323
  %326 = trunc i128 %325 to i64
  %327 = add i64 %308, %326
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %329 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %330 = load i64, ptr %328, align 1, !alias.scope !33, !noalias !36
  %331 = getelementptr i8, ptr %0, i64 72
  %332 = load i64, ptr %331, align 1, !alias.scope !33, !noalias !36
  %333 = load i64, ptr %329, align 1, !alias.scope !36, !noalias !33
  %334 = getelementptr i8, ptr %3, i64 72
  %335 = load i64, ptr %334, align 1, !alias.scope !36, !noalias !33
  %336 = add i64 %333, %2
  %337 = xor i64 %336, %330
  %338 = sub i64 %335, %2
  %339 = xor i64 %338, %332
  %340 = zext i64 %337 to i128
  %341 = zext i64 %339 to i128
  %342 = mul nuw i128 %341, %340
  %343 = lshr i128 %342, 64
  %344 = xor i128 %343, %342
  %345 = trunc i128 %344 to i64
  %346 = add i64 %327, %345
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %348 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %349 = load i64, ptr %347, align 1, !alias.scope !33, !noalias !36
  %350 = getelementptr i8, ptr %0, i64 88
  %351 = load i64, ptr %350, align 1, !alias.scope !33, !noalias !36
  %352 = load i64, ptr %348, align 1, !alias.scope !36, !noalias !33
  %353 = getelementptr i8, ptr %3, i64 88
  %354 = load i64, ptr %353, align 1, !alias.scope !36, !noalias !33
  %355 = add i64 %352, %2
  %356 = xor i64 %355, %349
  %357 = sub i64 %354, %2
  %358 = xor i64 %357, %351
  %359 = zext i64 %356 to i128
  %360 = zext i64 %358 to i128
  %361 = mul nuw i128 %360, %359
  %362 = lshr i128 %361, 64
  %363 = xor i128 %362, %361
  %364 = trunc i128 %363 to i64
  %365 = add i64 %346, %364
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %367 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %368 = load i64, ptr %366, align 1, !alias.scope !33, !noalias !36
  %369 = getelementptr i8, ptr %0, i64 104
  %370 = load i64, ptr %369, align 1, !alias.scope !33, !noalias !36
  %371 = load i64, ptr %367, align 1, !alias.scope !36, !noalias !33
  %372 = getelementptr i8, ptr %3, i64 104
  %373 = load i64, ptr %372, align 1, !alias.scope !36, !noalias !33
  %374 = add i64 %371, %2
  %375 = xor i64 %374, %368
  %376 = sub i64 %373, %2
  %377 = xor i64 %376, %370
  %378 = zext i64 %375 to i128
  %379 = zext i64 %377 to i128
  %380 = mul nuw i128 %379, %378
  %381 = lshr i128 %380, 64
  %382 = xor i128 %381, %380
  %383 = trunc i128 %382 to i64
  %384 = add i64 %365, %383
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %386 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %387 = load i64, ptr %385, align 1, !alias.scope !33, !noalias !36
  %388 = getelementptr i8, ptr %0, i64 120
  %389 = load i64, ptr %388, align 1, !alias.scope !33, !noalias !36
  %390 = load i64, ptr %386, align 1, !alias.scope !36, !noalias !33
  %391 = getelementptr i8, ptr %3, i64 120
  %392 = load i64, ptr %391, align 1, !alias.scope !36, !noalias !33
  %393 = add i64 %390, %2
  %394 = xor i64 %393, %387
  %395 = sub i64 %392, %2
  %396 = xor i64 %395, %389
  %397 = zext i64 %394 to i128
  %398 = zext i64 %396 to i128
  %399 = mul nuw i128 %398, %397
  %400 = lshr i128 %399, 64
  %401 = xor i128 %400, %399
  %402 = trunc i128 %401 to i64
  %403 = add i64 %384, %402
  %404 = lshr i32 %253, 4
  %405 = lshr i64 %403, 37
  %406 = xor i64 %405, %403
  %407 = mul i64 %406, 1609587791953885689
  %408 = lshr i64 %407, 32
  %409 = xor i64 %408, %407
  %410 = icmp eq i32 %404, 8
  br i1 %410, label %439, label %411

411:                                              ; preds = %251
  %412 = zext nneg i32 %404 to i64
  br label %413

413:                                              ; preds = %413, %411
  %414 = phi i64 [ 8, %411 ], [ %437, %413 ]
  %415 = phi i64 [ %409, %411 ], [ %436, %413 ]
  %416 = shl nsw i64 %414, 4
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 %416
  %418 = getelementptr i8, ptr %3, i64 %416
  %419 = getelementptr i8, ptr %418, i64 -125
  %420 = load i64, ptr %417, align 1, !alias.scope !33, !noalias !36
  %421 = getelementptr i8, ptr %417, i64 8
  %422 = load i64, ptr %421, align 1, !alias.scope !33, !noalias !36
  %423 = load i64, ptr %419, align 1, !alias.scope !36, !noalias !33
  %424 = getelementptr i8, ptr %418, i64 -117
  %425 = load i64, ptr %424, align 1, !alias.scope !36, !noalias !33
  %426 = add i64 %423, %2
  %427 = xor i64 %426, %420
  %428 = sub i64 %425, %2
  %429 = xor i64 %428, %422
  %430 = zext i64 %427 to i128
  %431 = zext i64 %429 to i128
  %432 = mul nuw i128 %431, %430
  %433 = lshr i128 %432, 64
  %434 = xor i128 %433, %432
  %435 = trunc i128 %434 to i64
  %436 = add i64 %415, %435
  %437 = add nuw nsw i64 %414, 1
  %438 = icmp eq i64 %437, %412
  br i1 %438, label %439, label %413, !llvm.loop !38

439:                                              ; preds = %413, %251
  %440 = phi i64 [ %409, %251 ], [ %436, %413 ]
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %442 = getelementptr inbounds i8, ptr %441, i64 -16
  %443 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %444 = load i64, ptr %442, align 1, !alias.scope !33, !noalias !36
  %445 = getelementptr i8, ptr %441, i64 -8
  %446 = load i64, ptr %445, align 1, !alias.scope !33, !noalias !36
  %447 = load i64, ptr %443, align 1, !alias.scope !36, !noalias !33
  %448 = getelementptr i8, ptr %3, i64 127
  %449 = load i64, ptr %448, align 1, !alias.scope !36, !noalias !33
  %450 = add i64 %447, %2
  %451 = xor i64 %450, %444
  %452 = sub i64 %449, %2
  %453 = xor i64 %452, %446
  %454 = zext i64 %451 to i128
  %455 = zext i64 %453 to i128
  %456 = mul nuw i128 %455, %454
  %457 = lshr i128 %456, 64
  %458 = xor i128 %457, %456
  %459 = trunc i128 %458 to i64
  %460 = add i64 %440, %459
  %461 = lshr i64 %460, 37
  %462 = xor i64 %461, %460
  %463 = mul i64 %462, 1609587791953885689
  %464 = lshr i64 %463, 32
  %465 = xor i64 %464, %463
  br label %468

466:                                              ; preds = %249
  %467 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #12, !callees !40
  br label %468

468:                                              ; preds = %59, %54, %46, %10, %466, %439, %205
  %469 = phi i64 [ %248, %205 ], [ %465, %439 ], [ %467, %466 ], [ %43, %10 ], [ %51, %46 ], [ %58, %54 ], [ %73, %59 ]
  ret i64 %469
}

; Function Attrs: nounwind uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture readnone %3, i64 %4) #0 {
  %6 = alloca [8 x i64], align 16
  %7 = alloca [8 x i64], align 16
  %8 = alloca [192 x i8], align 8
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12, !noalias !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !41
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  %11 = mul i64 %1, -7046029288634856825
  %12 = load i64, ptr %7, align 16, !alias.scope !45, !noalias !48
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !alias.scope !45, !noalias !48
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
  %25 = load i64, ptr %24, align 16, !alias.scope !45, !noalias !48
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %27 = load i64, ptr %26, align 8, !alias.scope !45, !noalias !48
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
  %38 = load i64, ptr %37, align 16, !alias.scope !45, !noalias !48
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %40 = load i64, ptr %39, align 8, !alias.scope !45, !noalias !48
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
  %51 = load i64, ptr %50, align 16, !alias.scope !45, !noalias !48
  %52 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %53 = load i64, ptr %52, align 8, !alias.scope !45, !noalias !48
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12, !noalias !41
  br label %225

68:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %69 = tail call ptr asm sideeffect "", "=r,0"(ptr nonnull @XXH3_kSecret) #12, !noalias !50, !srcloc !26
  %70 = load i64, ptr %69, align 1, !noalias !50
  %71 = add i64 %70, %2
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %73 = load i64, ptr %72, align 1, !noalias !50
  %74 = sub i64 %73, %2
  store i64 %71, ptr %8, align 8, !alias.scope !50
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %74, ptr %75, align 8, !alias.scope !50
  %76 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %77 = load i64, ptr %76, align 1, !noalias !50
  %78 = add i64 %77, %2
  %79 = getelementptr inbounds nuw i8, ptr %69, i64 24
  %80 = load i64, ptr %79, align 1, !noalias !50
  %81 = sub i64 %80, %2
  %82 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %78, ptr %82, align 8, !alias.scope !50
  %83 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %81, ptr %83, align 8, !alias.scope !50
  %84 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %85 = load i64, ptr %84, align 1, !noalias !50
  %86 = add i64 %85, %2
  %87 = getelementptr inbounds nuw i8, ptr %69, i64 40
  %88 = load i64, ptr %87, align 1, !noalias !50
  %89 = sub i64 %88, %2
  %90 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %86, ptr %90, align 8, !alias.scope !50
  %91 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %89, ptr %91, align 8, !alias.scope !50
  %92 = getelementptr inbounds nuw i8, ptr %69, i64 48
  %93 = load i64, ptr %92, align 1, !noalias !50
  %94 = add i64 %93, %2
  %95 = getelementptr inbounds nuw i8, ptr %69, i64 56
  %96 = load i64, ptr %95, align 1, !noalias !50
  %97 = sub i64 %96, %2
  %98 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %94, ptr %98, align 8, !alias.scope !50
  %99 = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %97, ptr %99, align 8, !alias.scope !50
  %100 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %101 = load i64, ptr %100, align 1, !noalias !50
  %102 = add i64 %101, %2
  %103 = getelementptr inbounds nuw i8, ptr %69, i64 72
  %104 = load i64, ptr %103, align 1, !noalias !50
  %105 = sub i64 %104, %2
  %106 = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %102, ptr %106, align 8, !alias.scope !50
  %107 = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 %105, ptr %107, align 8, !alias.scope !50
  %108 = getelementptr inbounds nuw i8, ptr %69, i64 80
  %109 = load i64, ptr %108, align 1, !noalias !50
  %110 = add i64 %109, %2
  %111 = getelementptr inbounds nuw i8, ptr %69, i64 88
  %112 = load i64, ptr %111, align 1, !noalias !50
  %113 = sub i64 %112, %2
  %114 = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 %110, ptr %114, align 8, !alias.scope !50
  %115 = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 %113, ptr %115, align 8, !alias.scope !50
  %116 = getelementptr inbounds nuw i8, ptr %69, i64 96
  %117 = load i64, ptr %116, align 1, !noalias !50
  %118 = add i64 %117, %2
  %119 = getelementptr inbounds nuw i8, ptr %69, i64 104
  %120 = load i64, ptr %119, align 1, !noalias !50
  %121 = sub i64 %120, %2
  %122 = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 %118, ptr %122, align 8, !alias.scope !50
  %123 = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i64 %121, ptr %123, align 8, !alias.scope !50
  %124 = getelementptr inbounds nuw i8, ptr %69, i64 112
  %125 = load i64, ptr %124, align 1, !noalias !50
  %126 = add i64 %125, %2
  %127 = getelementptr inbounds nuw i8, ptr %69, i64 120
  %128 = load i64, ptr %127, align 1, !noalias !50
  %129 = sub i64 %128, %2
  %130 = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i64 %126, ptr %130, align 8, !alias.scope !50
  %131 = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 %129, ptr %131, align 8, !alias.scope !50
  %132 = getelementptr inbounds nuw i8, ptr %69, i64 128
  %133 = load i64, ptr %132, align 1, !noalias !50
  %134 = add i64 %133, %2
  %135 = getelementptr inbounds nuw i8, ptr %69, i64 136
  %136 = load i64, ptr %135, align 1, !noalias !50
  %137 = sub i64 %136, %2
  %138 = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %134, ptr %138, align 8, !alias.scope !50
  %139 = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i64 %137, ptr %139, align 8, !alias.scope !50
  %140 = getelementptr inbounds nuw i8, ptr %69, i64 144
  %141 = load i64, ptr %140, align 1, !noalias !50
  %142 = add i64 %141, %2
  %143 = getelementptr inbounds nuw i8, ptr %69, i64 152
  %144 = load i64, ptr %143, align 1, !noalias !50
  %145 = sub i64 %144, %2
  %146 = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i64 %142, ptr %146, align 8, !alias.scope !50
  %147 = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i64 %145, ptr %147, align 8, !alias.scope !50
  %148 = getelementptr inbounds nuw i8, ptr %69, i64 160
  %149 = load i64, ptr %148, align 1, !noalias !50
  %150 = add i64 %149, %2
  %151 = getelementptr inbounds nuw i8, ptr %69, i64 168
  %152 = load i64, ptr %151, align 1, !noalias !50
  %153 = sub i64 %152, %2
  %154 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i64 %150, ptr %154, align 8, !alias.scope !50
  %155 = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i64 %153, ptr %155, align 8, !alias.scope !50
  %156 = getelementptr inbounds nuw i8, ptr %69, i64 176
  %157 = load i64, ptr %156, align 1, !noalias !50
  %158 = add i64 %157, %2
  %159 = getelementptr inbounds nuw i8, ptr %69, i64 184
  %160 = load i64, ptr %159, align 1, !noalias !50
  %161 = sub i64 %160, %2
  %162 = getelementptr inbounds nuw i8, ptr %8, i64 176
  store i64 %158, ptr %162, align 8, !alias.scope !50
  %163 = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i64 %161, ptr %163, align 8, !alias.scope !50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !56
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull readonly %8, i64 noundef 192)
  %164 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %165 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %166 = load <2 x i64>, ptr %6, align 16, !alias.scope !58, !noalias !63
  %167 = load <2 x i64>, ptr %164, align 1, !alias.scope !64, !noalias !65
  %168 = xor <2 x i64> %167, %166
  %169 = extractelement <2 x i64> %168, i64 0
  %170 = zext i64 %169 to i128
  %171 = extractelement <2 x i64> %168, i64 1
  %172 = zext i64 %171 to i128
  %173 = mul nuw i128 %172, %170
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %165, %176
  %178 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %179 = getelementptr inbounds nuw i8, ptr %8, i64 27
  %180 = load <2 x i64>, ptr %178, align 16, !alias.scope !58, !noalias !63
  %181 = load <2 x i64>, ptr %179, align 1, !alias.scope !64, !noalias !65
  %182 = xor <2 x i64> %181, %180
  %183 = extractelement <2 x i64> %182, i64 0
  %184 = zext i64 %183 to i128
  %185 = extractelement <2 x i64> %182, i64 1
  %186 = zext i64 %185 to i128
  %187 = mul nuw i128 %186, %184
  %188 = lshr i128 %187, 64
  %189 = xor i128 %188, %187
  %190 = trunc i128 %189 to i64
  %191 = add i64 %177, %190
  %192 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %193 = getelementptr inbounds nuw i8, ptr %8, i64 43
  %194 = load <2 x i64>, ptr %192, align 16, !alias.scope !58, !noalias !63
  %195 = load <2 x i64>, ptr %193, align 1, !alias.scope !64, !noalias !65
  %196 = xor <2 x i64> %195, %194
  %197 = extractelement <2 x i64> %196, i64 0
  %198 = zext i64 %197 to i128
  %199 = extractelement <2 x i64> %196, i64 1
  %200 = zext i64 %199 to i128
  %201 = mul nuw i128 %200, %198
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %191, %204
  %206 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %207 = getelementptr inbounds nuw i8, ptr %8, i64 59
  %208 = load <2 x i64>, ptr %206, align 16, !alias.scope !58, !noalias !63
  %209 = load <2 x i64>, ptr %207, align 1, !alias.scope !64, !noalias !65
  %210 = xor <2 x i64> %209, %208
  %211 = extractelement <2 x i64> %210, i64 0
  %212 = zext i64 %211 to i128
  %213 = extractelement <2 x i64> %210, i64 1
  %214 = zext i64 %213 to i128
  %215 = mul nuw i128 %214, %212
  %216 = lshr i128 %215, 64
  %217 = xor i128 %216, %215
  %218 = trunc i128 %217 to i64
  %219 = add i64 %205, %218
  %220 = lshr i64 %219, 37
  %221 = xor i64 %220, %219
  %222 = mul i64 %221, 1609587791953885689
  %223 = lshr i64 %222, 32
  %224 = xor i64 %223, %222
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !56
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #12
  br label %225

225:                                              ; preds = %10, %68
  %226 = phi i64 [ %67, %10 ], [ %224, %68 ]
  ret i64 %226
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr nocapture noundef readonly %0, i64 noundef range(i64 4, 9) %1, i64 %2, i64 %3, i64 noundef %4) unnamed_addr #5 {
  %6 = trunc i64 %4 to i32
  %7 = tail call noundef i32 @llvm.bswap.i32(i32 %6)
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
define internal fastcc i64 @XXH3_len_1to3_64b(ptr nocapture noundef readonly %0, i64 noundef range(i64 1, 4) %1, i32 %2, i32 %3, i64 noundef %4) unnamed_addr #5 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #6 {
  %6 = add i64 %4, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %2, -1
  %10 = udiv i64 %9, %8
  %11 = icmp ugt i64 %8, %9
  %12 = load <2 x i64>, ptr %0, align 16, !alias.scope !66, !noalias !69
  br i1 %11, label %201, label %13

13:                                               ; preds = %5
  %14 = icmp ult i64 %6, 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %19 = getelementptr inbounds i8, ptr %18, i64 -64
  %20 = load <2 x i64>, ptr %19, align 1, !alias.scope !72, !noalias !75
  %21 = getelementptr inbounds i8, ptr %18, i64 -48
  %22 = load <2 x i64>, ptr %21, align 1, !alias.scope !72, !noalias !75
  %23 = getelementptr inbounds i8, ptr %18, i64 -32
  %24 = load <2 x i64>, ptr %23, align 1, !alias.scope !72, !noalias !75
  %25 = getelementptr inbounds i8, ptr %18, i64 -16
  %26 = load <2 x i64>, ptr %25, align 1, !alias.scope !72, !noalias !75
  %27 = load <2 x i64>, ptr %15, align 16, !noalias !77
  %28 = load <2 x i64>, ptr %16, align 16, !noalias !77
  %29 = load <2 x i64>, ptr %17, align 16, !noalias !77
  br i1 %14, label %30, label %78

30:                                               ; preds = %13, %30
  %31 = phi <2 x i64> [ %75, %30 ], [ %29, %13 ]
  %32 = phi <2 x i64> [ %65, %30 ], [ %28, %13 ]
  %33 = phi <2 x i64> [ %55, %30 ], [ %27, %13 ]
  %34 = phi <2 x i64> [ %45, %30 ], [ %12, %13 ]
  %35 = phi i64 [ %76, %30 ], [ 0, %13 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %36 = lshr <2 x i64> %34, splat (i64 47)
  %37 = xor <2 x i64> %36, %34
  %38 = xor <2 x i64> %37, %20
  %39 = trunc <2 x i64> %38 to <2 x i32>
  %40 = lshr <2 x i64> %38, splat (i64 32)
  %41 = trunc nuw <2 x i64> %40 to <2 x i32>
  %42 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %41, <2 x i32> splat (i32 -1640531535))
  %43 = shl <2 x i64> %42, splat (i64 32)
  %44 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %39, <2 x i32> splat (i32 -1640531535))
  %45 = add <2 x i64> %43, %44
  %46 = lshr <2 x i64> %33, splat (i64 47)
  %47 = xor <2 x i64> %46, %33
  %48 = xor <2 x i64> %47, %22
  %49 = trunc <2 x i64> %48 to <2 x i32>
  %50 = lshr <2 x i64> %48, splat (i64 32)
  %51 = trunc nuw <2 x i64> %50 to <2 x i32>
  %52 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %51, <2 x i32> splat (i32 -1640531535))
  %53 = shl <2 x i64> %52, splat (i64 32)
  %54 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %49, <2 x i32> splat (i32 -1640531535))
  %55 = add <2 x i64> %53, %54
  %56 = lshr <2 x i64> %32, splat (i64 47)
  %57 = xor <2 x i64> %56, %32
  %58 = xor <2 x i64> %57, %24
  %59 = trunc <2 x i64> %58 to <2 x i32>
  %60 = lshr <2 x i64> %58, splat (i64 32)
  %61 = trunc nuw <2 x i64> %60 to <2 x i32>
  %62 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %61, <2 x i32> splat (i32 -1640531535))
  %63 = shl <2 x i64> %62, splat (i64 32)
  %64 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %59, <2 x i32> splat (i32 -1640531535))
  %65 = add <2 x i64> %63, %64
  %66 = lshr <2 x i64> %31, splat (i64 47)
  %67 = xor <2 x i64> %66, %31
  %68 = xor <2 x i64> %67, %26
  %69 = trunc <2 x i64> %68 to <2 x i32>
  %70 = lshr <2 x i64> %68, splat (i64 32)
  %71 = trunc nuw <2 x i64> %70 to <2 x i32>
  %72 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %71, <2 x i32> splat (i32 -1640531535))
  %73 = shl <2 x i64> %72, splat (i64 32)
  %74 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %69, <2 x i32> splat (i32 -1640531535))
  %75 = add <2 x i64> %73, %74
  %76 = add nuw i64 %35, 1
  %77 = icmp ult i64 %76, %10
  br i1 %77, label %30, label %196, !llvm.loop !83

78:                                               ; preds = %13, %153
  %79 = phi <2 x i64> [ %193, %153 ], [ %29, %13 ]
  %80 = phi <2 x i64> [ %183, %153 ], [ %28, %13 ]
  %81 = phi <2 x i64> [ %173, %153 ], [ %27, %13 ]
  %82 = phi <2 x i64> [ %163, %153 ], [ %12, %13 ]
  %83 = phi i64 [ %194, %153 ], [ 0, %13 ]
  %84 = mul i64 %83, %8
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 %84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  br label %86

86:                                               ; preds = %86, %78
  %87 = phi <2 x i64> [ %79, %78 ], [ %150, %86 ]
  %88 = phi <2 x i64> [ %80, %78 ], [ %136, %86 ]
  %89 = phi <2 x i64> [ %81, %78 ], [ %122, %86 ]
  %90 = phi <2 x i64> [ %82, %78 ], [ %108, %86 ]
  %91 = phi i64 [ 0, %78 ], [ %151, %86 ]
  %92 = shl i64 %91, 6
  %93 = getelementptr inbounds nuw i8, ptr %85, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %94, i32 0, i32 3, i32 1), !noalias !84
  %95 = shl nuw i64 %91, 3
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 %95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %97 = load <16 x i8>, ptr %93, align 1, !alias.scope !91, !noalias !92
  %98 = load <16 x i8>, ptr %96, align 1, !alias.scope !94, !noalias !95
  %99 = bitcast <16 x i8> %97 to <2 x i64>
  %100 = shufflevector <2 x i64> %99, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %101 = add <2 x i64> %100, %90
  %102 = xor <16 x i8> %98, %97
  %103 = bitcast <16 x i8> %102 to <2 x i64>
  %104 = trunc <2 x i64> %103 to <2 x i32>
  %105 = lshr <2 x i64> %103, splat (i64 32)
  %106 = trunc nuw <2 x i64> %105 to <2 x i32>
  %107 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %104, <2 x i32> %106)
  %108 = add <2 x i64> %101, %107
  %109 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %110 = load <16 x i8>, ptr %109, align 1, !alias.scope !91, !noalias !92
  %111 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %112 = load <16 x i8>, ptr %111, align 1, !alias.scope !94, !noalias !95
  %113 = bitcast <16 x i8> %110 to <2 x i64>
  %114 = shufflevector <2 x i64> %113, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %115 = add <2 x i64> %114, %89
  %116 = xor <16 x i8> %112, %110
  %117 = bitcast <16 x i8> %116 to <2 x i64>
  %118 = trunc <2 x i64> %117 to <2 x i32>
  %119 = lshr <2 x i64> %117, splat (i64 32)
  %120 = trunc nuw <2 x i64> %119 to <2 x i32>
  %121 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %118, <2 x i32> %120)
  %122 = add <2 x i64> %115, %121
  %123 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %124 = load <16 x i8>, ptr %123, align 1, !alias.scope !91, !noalias !92
  %125 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %126 = load <16 x i8>, ptr %125, align 1, !alias.scope !94, !noalias !95
  %127 = bitcast <16 x i8> %124 to <2 x i64>
  %128 = shufflevector <2 x i64> %127, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %129 = add <2 x i64> %128, %88
  %130 = xor <16 x i8> %126, %124
  %131 = bitcast <16 x i8> %130 to <2 x i64>
  %132 = trunc <2 x i64> %131 to <2 x i32>
  %133 = lshr <2 x i64> %131, splat (i64 32)
  %134 = trunc nuw <2 x i64> %133 to <2 x i32>
  %135 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %132, <2 x i32> %134)
  %136 = add <2 x i64> %129, %135
  %137 = getelementptr inbounds nuw i8, ptr %93, i64 48
  %138 = load <16 x i8>, ptr %137, align 1, !alias.scope !91, !noalias !92
  %139 = getelementptr inbounds nuw i8, ptr %96, i64 48
  %140 = load <16 x i8>, ptr %139, align 1, !alias.scope !94, !noalias !95
  %141 = bitcast <16 x i8> %138 to <2 x i64>
  %142 = shufflevector <2 x i64> %141, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %143 = add <2 x i64> %142, %87
  %144 = xor <16 x i8> %140, %138
  %145 = bitcast <16 x i8> %144 to <2 x i64>
  %146 = trunc <2 x i64> %145 to <2 x i32>
  %147 = lshr <2 x i64> %145, splat (i64 32)
  %148 = trunc nuw <2 x i64> %147 to <2 x i32>
  %149 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %146, <2 x i32> %148)
  %150 = add <2 x i64> %143, %149
  %151 = add nuw nsw i64 %91, 1
  %152 = icmp eq i64 %151, %7
  br i1 %152, label %153, label %86, !llvm.loop !96

153:                                              ; preds = %86
  %154 = lshr <2 x i64> %108, splat (i64 47)
  %155 = xor <2 x i64> %154, %108
  %156 = xor <2 x i64> %155, %20
  %157 = trunc <2 x i64> %156 to <2 x i32>
  %158 = lshr <2 x i64> %156, splat (i64 32)
  %159 = trunc nuw <2 x i64> %158 to <2 x i32>
  %160 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %159, <2 x i32> splat (i32 -1640531535))
  %161 = shl <2 x i64> %160, splat (i64 32)
  %162 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %157, <2 x i32> splat (i32 -1640531535))
  %163 = add <2 x i64> %161, %162
  %164 = lshr <2 x i64> %122, splat (i64 47)
  %165 = xor <2 x i64> %164, %122
  %166 = xor <2 x i64> %165, %22
  %167 = trunc <2 x i64> %166 to <2 x i32>
  %168 = lshr <2 x i64> %166, splat (i64 32)
  %169 = trunc nuw <2 x i64> %168 to <2 x i32>
  %170 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %169, <2 x i32> splat (i32 -1640531535))
  %171 = shl <2 x i64> %170, splat (i64 32)
  %172 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %167, <2 x i32> splat (i32 -1640531535))
  %173 = add <2 x i64> %171, %172
  %174 = lshr <2 x i64> %136, splat (i64 47)
  %175 = xor <2 x i64> %174, %136
  %176 = xor <2 x i64> %175, %24
  %177 = trunc <2 x i64> %176 to <2 x i32>
  %178 = lshr <2 x i64> %176, splat (i64 32)
  %179 = trunc nuw <2 x i64> %178 to <2 x i32>
  %180 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %179, <2 x i32> splat (i32 -1640531535))
  %181 = shl <2 x i64> %180, splat (i64 32)
  %182 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %177, <2 x i32> splat (i32 -1640531535))
  %183 = add <2 x i64> %181, %182
  %184 = lshr <2 x i64> %150, splat (i64 47)
  %185 = xor <2 x i64> %184, %150
  %186 = xor <2 x i64> %185, %26
  %187 = trunc <2 x i64> %186 to <2 x i32>
  %188 = lshr <2 x i64> %186, splat (i64 32)
  %189 = trunc nuw <2 x i64> %188 to <2 x i32>
  %190 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %189, <2 x i32> splat (i32 -1640531535))
  %191 = shl <2 x i64> %190, splat (i64 32)
  %192 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %187, <2 x i32> splat (i32 -1640531535))
  %193 = add <2 x i64> %191, %192
  %194 = add nuw i64 %83, 1
  %195 = icmp ult i64 %194, %10
  br i1 %195, label %78, label %196, !llvm.loop !83

196:                                              ; preds = %153, %30
  %197 = phi <2 x i64> [ %75, %30 ], [ %193, %153 ]
  %198 = phi <2 x i64> [ %65, %30 ], [ %183, %153 ]
  %199 = phi <2 x i64> [ %55, %30 ], [ %173, %153 ]
  %200 = phi <2 x i64> [ %45, %30 ], [ %163, %153 ]
  store <2 x i64> %199, ptr %15, align 16, !noalias !77
  store <2 x i64> %198, ptr %16, align 16, !noalias !77
  store <2 x i64> %197, ptr %17, align 16, !noalias !77
  br label %201

201:                                              ; preds = %196, %5
  %202 = phi <2 x i64> [ %200, %196 ], [ %12, %5 ]
  %203 = mul i64 %10, %8
  %204 = sub i64 %9, %203
  %205 = lshr i64 %204, 6
  %206 = getelementptr inbounds nuw i8, ptr %1, i64 %203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %207 = icmp ult i64 %204, 64
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %207, label %209, label %215

209:                                              ; preds = %201
  %210 = load <2 x i64>, ptr %208, align 16, !alias.scope !66, !noalias !69
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %212 = load <2 x i64>, ptr %211, align 16, !alias.scope !66, !noalias !69
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %214 = load <2 x i64>, ptr %213, align 16, !alias.scope !66, !noalias !69
  br label %288

215:                                              ; preds = %201
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %218 = load <2 x i64>, ptr %208, align 16, !alias.scope !104, !noalias !107
  %219 = load <2 x i64>, ptr %216, align 16, !alias.scope !104, !noalias !107
  %220 = load <2 x i64>, ptr %217, align 16, !alias.scope !104, !noalias !107
  br label %221

221:                                              ; preds = %221, %215
  %222 = phi <2 x i64> [ %220, %215 ], [ %285, %221 ]
  %223 = phi <2 x i64> [ %219, %215 ], [ %271, %221 ]
  %224 = phi <2 x i64> [ %218, %215 ], [ %257, %221 ]
  %225 = phi <2 x i64> [ %202, %215 ], [ %243, %221 ]
  %226 = phi i64 [ 0, %215 ], [ %286, %221 ]
  %227 = shl i64 %226, 6
  %228 = getelementptr inbounds nuw i8, ptr %206, i64 %227
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %229, i32 0, i32 3, i32 1), !noalias !110
  %230 = shl nuw i64 %226, 3
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 %230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %232 = load <16 x i8>, ptr %228, align 1, !alias.scope !114, !noalias !115
  %233 = load <16 x i8>, ptr %231, align 1, !alias.scope !116, !noalias !117
  %234 = bitcast <16 x i8> %232 to <2 x i64>
  %235 = shufflevector <2 x i64> %234, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %236 = add <2 x i64> %235, %225
  %237 = xor <16 x i8> %233, %232
  %238 = bitcast <16 x i8> %237 to <2 x i64>
  %239 = trunc <2 x i64> %238 to <2 x i32>
  %240 = lshr <2 x i64> %238, splat (i64 32)
  %241 = trunc nuw <2 x i64> %240 to <2 x i32>
  %242 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %239, <2 x i32> %241)
  %243 = add <2 x i64> %236, %242
  %244 = getelementptr inbounds nuw i8, ptr %228, i64 16
  %245 = load <16 x i8>, ptr %244, align 1, !alias.scope !114, !noalias !115
  %246 = getelementptr inbounds nuw i8, ptr %231, i64 16
  %247 = load <16 x i8>, ptr %246, align 1, !alias.scope !116, !noalias !117
  %248 = bitcast <16 x i8> %245 to <2 x i64>
  %249 = shufflevector <2 x i64> %248, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %250 = add <2 x i64> %249, %224
  %251 = xor <16 x i8> %247, %245
  %252 = bitcast <16 x i8> %251 to <2 x i64>
  %253 = trunc <2 x i64> %252 to <2 x i32>
  %254 = lshr <2 x i64> %252, splat (i64 32)
  %255 = trunc nuw <2 x i64> %254 to <2 x i32>
  %256 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %253, <2 x i32> %255)
  %257 = add <2 x i64> %250, %256
  %258 = getelementptr inbounds nuw i8, ptr %228, i64 32
  %259 = load <16 x i8>, ptr %258, align 1, !alias.scope !114, !noalias !115
  %260 = getelementptr inbounds nuw i8, ptr %231, i64 32
  %261 = load <16 x i8>, ptr %260, align 1, !alias.scope !116, !noalias !117
  %262 = bitcast <16 x i8> %259 to <2 x i64>
  %263 = shufflevector <2 x i64> %262, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %264 = add <2 x i64> %263, %223
  %265 = xor <16 x i8> %261, %259
  %266 = bitcast <16 x i8> %265 to <2 x i64>
  %267 = trunc <2 x i64> %266 to <2 x i32>
  %268 = lshr <2 x i64> %266, splat (i64 32)
  %269 = trunc nuw <2 x i64> %268 to <2 x i32>
  %270 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %267, <2 x i32> %269)
  %271 = add <2 x i64> %264, %270
  %272 = getelementptr inbounds nuw i8, ptr %228, i64 48
  %273 = load <16 x i8>, ptr %272, align 1, !alias.scope !114, !noalias !115
  %274 = getelementptr inbounds nuw i8, ptr %231, i64 48
  %275 = load <16 x i8>, ptr %274, align 1, !alias.scope !116, !noalias !117
  %276 = bitcast <16 x i8> %273 to <2 x i64>
  %277 = shufflevector <2 x i64> %276, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %278 = add <2 x i64> %277, %222
  %279 = xor <16 x i8> %275, %273
  %280 = bitcast <16 x i8> %279 to <2 x i64>
  %281 = trunc <2 x i64> %280 to <2 x i32>
  %282 = lshr <2 x i64> %280, splat (i64 32)
  %283 = trunc nuw <2 x i64> %282 to <2 x i32>
  %284 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %281, <2 x i32> %283)
  %285 = add <2 x i64> %278, %284
  %286 = add nuw nsw i64 %226, 1
  %287 = icmp eq i64 %286, %205
  br i1 %287, label %288, label %221, !llvm.loop !96

288:                                              ; preds = %221, %209
  %289 = phi <2 x i64> [ %214, %209 ], [ %285, %221 ]
  %290 = phi <2 x i64> [ %212, %209 ], [ %271, %221 ]
  %291 = phi <2 x i64> [ %210, %209 ], [ %257, %221 ]
  %292 = phi <2 x i64> [ %202, %209 ], [ %243, %221 ]
  %293 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %294 = getelementptr inbounds i8, ptr %293, i64 -64
  %295 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %296 = getelementptr inbounds i8, ptr %295, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %297 = load <16 x i8>, ptr %294, align 1, !alias.scope !118, !noalias !120
  %298 = load <16 x i8>, ptr %296, align 1, !alias.scope !119, !noalias !121
  %299 = bitcast <16 x i8> %297 to <2 x i64>
  %300 = shufflevector <2 x i64> %299, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %301 = add <2 x i64> %292, %300
  %302 = xor <16 x i8> %298, %297
  %303 = bitcast <16 x i8> %302 to <2 x i64>
  %304 = trunc <2 x i64> %303 to <2 x i32>
  %305 = lshr <2 x i64> %303, splat (i64 32)
  %306 = trunc nuw <2 x i64> %305 to <2 x i32>
  %307 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %304, <2 x i32> %306)
  %308 = add <2 x i64> %301, %307
  store <2 x i64> %308, ptr %0, align 16, !alias.scope !66, !noalias !69
  %309 = getelementptr inbounds i8, ptr %293, i64 -48
  %310 = load <16 x i8>, ptr %309, align 1, !alias.scope !118, !noalias !120
  %311 = getelementptr inbounds i8, ptr %295, i64 -55
  %312 = load <16 x i8>, ptr %311, align 1, !alias.scope !119, !noalias !121
  %313 = bitcast <16 x i8> %310 to <2 x i64>
  %314 = shufflevector <2 x i64> %313, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %316 = add <2 x i64> %291, %314
  %317 = xor <16 x i8> %312, %310
  %318 = bitcast <16 x i8> %317 to <2 x i64>
  %319 = trunc <2 x i64> %318 to <2 x i32>
  %320 = lshr <2 x i64> %318, splat (i64 32)
  %321 = trunc nuw <2 x i64> %320 to <2 x i32>
  %322 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %319, <2 x i32> %321)
  %323 = add <2 x i64> %316, %322
  store <2 x i64> %323, ptr %315, align 16, !alias.scope !66, !noalias !69
  %324 = getelementptr inbounds i8, ptr %293, i64 -32
  %325 = load <16 x i8>, ptr %324, align 1, !alias.scope !118, !noalias !120
  %326 = getelementptr inbounds i8, ptr %295, i64 -39
  %327 = load <16 x i8>, ptr %326, align 1, !alias.scope !119, !noalias !121
  %328 = bitcast <16 x i8> %325 to <2 x i64>
  %329 = shufflevector <2 x i64> %328, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %331 = add <2 x i64> %290, %329
  %332 = xor <16 x i8> %327, %325
  %333 = bitcast <16 x i8> %332 to <2 x i64>
  %334 = trunc <2 x i64> %333 to <2 x i32>
  %335 = lshr <2 x i64> %333, splat (i64 32)
  %336 = trunc nuw <2 x i64> %335 to <2 x i32>
  %337 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %334, <2 x i32> %336)
  %338 = add <2 x i64> %331, %337
  store <2 x i64> %338, ptr %330, align 16, !alias.scope !66, !noalias !69
  %339 = getelementptr inbounds i8, ptr %293, i64 -16
  %340 = load <16 x i8>, ptr %339, align 1, !alias.scope !118, !noalias !120
  %341 = getelementptr inbounds i8, ptr %295, i64 -23
  %342 = load <16 x i8>, ptr %341, align 1, !alias.scope !119, !noalias !121
  %343 = bitcast <16 x i8> %340 to <2 x i64>
  %344 = shufflevector <2 x i64> %343, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %345 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %346 = add <2 x i64> %289, %344
  %347 = xor <16 x i8> %342, %340
  %348 = bitcast <16 x i8> %347 to <2 x i64>
  %349 = trunc <2 x i64> %348 to <2 x i32>
  %350 = lshr <2 x i64> %348, splat (i64 32)
  %351 = trunc nuw <2 x i64> %350 to <2 x i32>
  %352 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %349, <2 x i32> %351)
  %353 = add <2 x i64> %346, %352
  store <2 x i64> %353, ptr %345, align 16, !alias.scope !66, !noalias !69
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #9 {
  %6 = alloca [8 x i64], align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !125
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %3, i64 noundef %4)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %8 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %9 = load <2 x i64>, ptr %6, align 16, !alias.scope !127, !noalias !132
  %10 = load <2 x i64>, ptr %7, align 1, !alias.scope !133, !noalias !134
  %11 = xor <2 x i64> %10, %9
  %12 = extractelement <2 x i64> %11, i64 0
  %13 = zext i64 %12 to i128
  %14 = extractelement <2 x i64> %11, i64 1
  %15 = zext i64 %14 to i128
  %16 = mul nuw i128 %15, %13
  %17 = lshr i128 %16, 64
  %18 = xor i128 %17, %16
  %19 = trunc i128 %18 to i64
  %20 = add i64 %8, %19
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %23 = load <2 x i64>, ptr %21, align 16, !alias.scope !127, !noalias !132
  %24 = load <2 x i64>, ptr %22, align 1, !alias.scope !133, !noalias !134
  %25 = xor <2 x i64> %24, %23
  %26 = extractelement <2 x i64> %25, i64 0
  %27 = zext i64 %26 to i128
  %28 = extractelement <2 x i64> %25, i64 1
  %29 = zext i64 %28 to i128
  %30 = mul nuw i128 %29, %27
  %31 = lshr i128 %30, 64
  %32 = xor i128 %31, %30
  %33 = trunc i128 %32 to i64
  %34 = add i64 %20, %33
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %37 = load <2 x i64>, ptr %35, align 16, !alias.scope !127, !noalias !132
  %38 = load <2 x i64>, ptr %36, align 1, !alias.scope !133, !noalias !134
  %39 = xor <2 x i64> %38, %37
  %40 = extractelement <2 x i64> %39, i64 0
  %41 = zext i64 %40 to i128
  %42 = extractelement <2 x i64> %39, i64 1
  %43 = zext i64 %42 to i128
  %44 = mul nuw i128 %43, %41
  %45 = lshr i128 %44, 64
  %46 = xor i128 %45, %44
  %47 = trunc i128 %46 to i64
  %48 = add i64 %34, %47
  %49 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %51 = load <2 x i64>, ptr %49, align 16, !alias.scope !127, !noalias !132
  %52 = load <2 x i64>, ptr %50, align 1, !alias.scope !133, !noalias !134
  %53 = xor <2 x i64> %52, %51
  %54 = extractelement <2 x i64> %53, i64 0
  %55 = zext i64 %54 to i128
  %56 = extractelement <2 x i64> %53, i64 1
  %57 = zext i64 %56 to i128
  %58 = mul nuw i128 %57, %55
  %59 = lshr i128 %58, 64
  %60 = xor i128 %59, %58
  %61 = trunc i128 %60 to i64
  %62 = add i64 %48, %61
  %63 = lshr i64 %62, 37
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587791953885689
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !125
  ret i64 %67
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc [2 x i64] @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %4, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 192)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %6 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %7 = load i64, ptr %4, align 16, !alias.scope !135, !noalias !138
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8, !alias.scope !135, !noalias !138
  %10 = load i64, ptr %5, align 1, !alias.scope !138, !noalias !135
  %11 = getelementptr i8, ptr %2, i64 19
  %12 = load i64, ptr %11, align 1, !alias.scope !138, !noalias !135
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
  %24 = load i64, ptr %22, align 16, !alias.scope !135, !noalias !138
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %26 = load i64, ptr %25, align 8, !alias.scope !135, !noalias !138
  %27 = load i64, ptr %23, align 1, !alias.scope !138, !noalias !135
  %28 = getelementptr i8, ptr %2, i64 35
  %29 = load i64, ptr %28, align 1, !alias.scope !138, !noalias !135
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
  %41 = load i64, ptr %39, align 16, !alias.scope !135, !noalias !138
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %43 = load i64, ptr %42, align 8, !alias.scope !135, !noalias !138
  %44 = load i64, ptr %40, align 1, !alias.scope !138, !noalias !135
  %45 = getelementptr i8, ptr %2, i64 51
  %46 = load i64, ptr %45, align 1, !alias.scope !138, !noalias !135
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
  %58 = load i64, ptr %56, align 16, !alias.scope !135, !noalias !138
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %60 = load i64, ptr %59, align 8, !alias.scope !135, !noalias !138
  %61 = load i64, ptr %57, align 1, !alias.scope !138, !noalias !135
  %62 = getelementptr i8, ptr %2, i64 67
  %63 = load i64, ptr %62, align 1, !alias.scope !138, !noalias !135
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
  %81 = load i64, ptr %78, align 1, !alias.scope !140, !noalias !143
  %82 = getelementptr i8, ptr %2, i64 125
  %83 = load i64, ptr %82, align 1, !alias.scope !140, !noalias !143
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
  %94 = load i64, ptr %93, align 1, !alias.scope !140, !noalias !143
  %95 = getelementptr i8, ptr %2, i64 141
  %96 = load i64, ptr %95, align 1, !alias.scope !140, !noalias !143
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
  %107 = load i64, ptr %106, align 1, !alias.scope !140, !noalias !143
  %108 = getelementptr i8, ptr %2, i64 157
  %109 = load i64, ptr %108, align 1, !alias.scope !140, !noalias !143
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
  %120 = load i64, ptr %119, align 1, !alias.scope !140, !noalias !143
  %121 = getelementptr i8, ptr %2, i64 173
  %122 = load i64, ptr %121, align 1, !alias.scope !140, !noalias !143
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  %137 = insertvalue [2 x i64] poison, i64 %77, 0
  %138 = insertvalue [2 x i64] %137, i64 %136, 1
  ret [2 x i64] %138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 2147794257}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_len_17to128_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_17to128_128b"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_len_129to240_128b: argument 0"}
!17 = distinct !{!17, !"XXH3_len_129to240_128b"}
!18 = distinct !{!18, !8}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!21 = distinct !{!21, !"XXH3_hashLong_128b_withSeed_internal"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_initCustomSecret_scalar: argument 0"}
!24 = distinct !{!24, !"XXH3_initCustomSecret_scalar"}
!25 = !{!23, !20}
!26 = !{i64 2150794332}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_len_17to128_64b: argument 0"}
!30 = distinct !{!30, !"XXH3_len_17to128_64b"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"XXH3_len_17to128_64b: argument 1"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_len_129to240_64b: argument 0"}
!35 = distinct !{!35, !"XXH3_len_129to240_64b"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"XXH3_len_129to240_64b: argument 1"}
!38 = distinct !{!38, !8, !39}
!39 = !{!"llvm.loop.vectorize.width", i32 1}
!40 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"XXH3_hashLong_64b_internal: argument 0"}
!43 = distinct !{!43, !"XXH3_hashLong_64b_internal"}
!44 = distinct !{!44, !43, !"XXH3_hashLong_64b_internal: argument 1"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_mergeAccs: argument 0"}
!47 = distinct !{!47, !"XXH3_mergeAccs"}
!48 = !{!49, !42, !44}
!49 = distinct !{!49, !47, !"XXH3_mergeAccs: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"XXH3_initCustomSecret_scalar: argument 0"}
!52 = distinct !{!52, !"XXH3_initCustomSecret_scalar"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"XXH3_hashLong_64b_internal: argument 1"}
!55 = distinct !{!55, !"XXH3_hashLong_64b_internal"}
!56 = !{!57, !54}
!57 = distinct !{!57, !55, !"XXH3_hashLong_64b_internal: argument 0"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_mergeAccs: argument 0"}
!60 = distinct !{!60, !"XXH3_mergeAccs"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"XXH3_mergeAccs: argument 1"}
!63 = !{!62, !57, !54}
!64 = !{!62, !54}
!65 = !{!59, !57}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_accumulate_512_neon: argument 0"}
!68 = distinct !{!68, !"XXH3_accumulate_512_neon"}
!69 = !{!70, !71}
!70 = distinct !{!70, !68, !"XXH3_accumulate_512_neon: argument 1"}
!71 = distinct !{!71, !68, !"XXH3_accumulate_512_neon: argument 2"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"XXH3_scrambleAcc_neon: argument 1"}
!74 = distinct !{!74, !"XXH3_scrambleAcc_neon"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"XXH3_scrambleAcc_neon: argument 0"}
!77 = !{}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_accumulate: argument 1"}
!80 = distinct !{!80, !"XXH3_accumulate"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"XXH3_accumulate: argument 2"}
!83 = distinct !{!83, !8}
!84 = !{!85, !82}
!85 = distinct !{!85, !80, !"XXH3_accumulate: argument 0"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_accumulate_512_neon: argument 1"}
!88 = distinct !{!88, !"XXH3_accumulate_512_neon"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"XXH3_accumulate_512_neon: argument 2"}
!91 = !{!87, !79}
!92 = !{!93, !90, !85, !82}
!93 = distinct !{!93, !88, !"XXH3_accumulate_512_neon: argument 0"}
!94 = !{!90, !82}
!95 = !{!93, !87, !85, !79}
!96 = distinct !{!96, !8}
!97 = !{!98}
!98 = distinct !{!98, !99, !"XXH3_accumulate: argument 0"}
!99 = distinct !{!99, !"XXH3_accumulate"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"XXH3_accumulate: argument 1"}
!102 = !{!103}
!103 = distinct !{!103, !99, !"XXH3_accumulate: argument 2"}
!104 = !{!105, !98}
!105 = distinct !{!105, !106, !"XXH3_accumulate_512_neon: argument 0"}
!106 = distinct !{!106, !"XXH3_accumulate_512_neon"}
!107 = !{!108, !109, !101, !103}
!108 = distinct !{!108, !106, !"XXH3_accumulate_512_neon: argument 1"}
!109 = distinct !{!109, !106, !"XXH3_accumulate_512_neon: argument 2"}
!110 = !{!98, !103}
!111 = !{!105}
!112 = !{!108}
!113 = !{!109}
!114 = !{!108, !101}
!115 = !{!105, !109, !98, !103}
!116 = !{!109, !103}
!117 = !{!105, !108, !98, !101}
!118 = !{!70}
!119 = !{!71}
!120 = !{!67, !71}
!121 = !{!67, !70}
!122 = !{!123}
!123 = distinct !{!123, !124, !"XXH3_hashLong_64b_internal: argument 1"}
!124 = distinct !{!124, !"XXH3_hashLong_64b_internal"}
!125 = !{!126, !123}
!126 = distinct !{!126, !124, !"XXH3_hashLong_64b_internal: argument 0"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"XXH3_mergeAccs: argument 0"}
!129 = distinct !{!129, !"XXH3_mergeAccs"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"XXH3_mergeAccs: argument 1"}
!132 = !{!131, !126, !123}
!133 = !{!131, !123}
!134 = !{!128, !126}
!135 = !{!136}
!136 = distinct !{!136, !137, !"XXH3_mergeAccs: argument 0"}
!137 = distinct !{!137, !"XXH3_mergeAccs"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"XXH3_mergeAccs: argument 1"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"XXH3_mergeAccs: argument 1"}
!142 = distinct !{!142, !"XXH3_mergeAccs"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"XXH3_mergeAccs: argument 0"}
