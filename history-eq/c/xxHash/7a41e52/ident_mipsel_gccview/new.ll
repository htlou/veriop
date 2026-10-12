; ModuleID = 'ident_mipsel_gccview/wrapper.c'
source_filename = "ident_mipsel_gccview/wrapper.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mipsel-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i32 noundef signext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 15
  br i1 %4, label %5, label %52

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
  %14 = phi ptr [ %0, %5 ], [ %42, %13 ]
  %15 = phi i32 [ %10, %5 ], [ %23, %13 ]
  %16 = phi i32 [ %11, %5 ], [ %29, %13 ]
  %17 = phi i32 [ %2, %5 ], [ %35, %13 ]
  %18 = phi i32 [ %12, %5 ], [ %41, %13 ]
  %19 = load i32, ptr %14, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %15
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = getelementptr inbounds nuw i8, ptr %14, i32 4
  %25 = load i32, ptr %24, align 1
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds nuw i8, ptr %14, i32 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %17
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds nuw i8, ptr %14, i32 12
  %37 = load i32, ptr %36, align 1
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %18
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %43 = icmp ult ptr %42, %9
  br i1 %43, label %13, label %44, !llvm.loop !4

44:                                               ; preds = %13
  %45 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 1)
  %46 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %47 = add i32 %46, %45
  %48 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 12)
  %49 = add i32 %47, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 18)
  %51 = add i32 %49, %50
  br label %54

52:                                               ; preds = %3
  %53 = add i32 %2, 374761393
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi i32 [ %51, %44 ], [ %53, %52 ]
  %56 = phi ptr [ %42, %44 ], [ %0, %52 ]
  %57 = add i32 %55, %1
  %58 = and i32 %1, 15
  switch i32 %58, label %206 [
    i32 12, label %59
    i32 8, label %66
    i32 4, label %75
    i32 13, label %83
    i32 9, label %90
    i32 5, label %99
    i32 14, label %114
    i32 10, label %121
    i32 6, label %130
    i32 15, label %152
    i32 11, label %159
    i32 7, label %168
    i32 3, label %177
    i32 2, label %187
    i32 1, label %197
    i32 0, label %207
  ]

59:                                               ; preds = %54
  %60 = load i32, ptr %56, align 1
  %61 = mul i32 %60, -1028477379
  %62 = add i32 %61, %57
  %63 = getelementptr inbounds nuw i8, ptr %56, i32 4
  %64 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 17)
  %65 = mul i32 %64, 668265263
  br label %66

66:                                               ; preds = %59, %54
  %67 = phi ptr [ %56, %54 ], [ %63, %59 ]
  %68 = phi i32 [ %57, %54 ], [ %65, %59 ]
  %69 = load i32, ptr %67, align 1
  %70 = mul i32 %69, -1028477379
  %71 = add i32 %70, %68
  %72 = getelementptr inbounds nuw i8, ptr %67, i32 4
  %73 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 17)
  %74 = mul i32 %73, 668265263
  br label %75

75:                                               ; preds = %66, %54
  %76 = phi ptr [ %56, %54 ], [ %72, %66 ]
  %77 = phi i32 [ %57, %54 ], [ %74, %66 ]
  %78 = load i32, ptr %76, align 1
  %79 = mul i32 %78, -1028477379
  %80 = add i32 %79, %77
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 17)
  %82 = mul i32 %81, 668265263
  br label %207

83:                                               ; preds = %54
  %84 = load i32, ptr %56, align 1
  %85 = mul i32 %84, -1028477379
  %86 = add i32 %85, %57
  %87 = getelementptr inbounds nuw i8, ptr %56, i32 4
  %88 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 17)
  %89 = mul i32 %88, 668265263
  br label %90

90:                                               ; preds = %83, %54
  %91 = phi ptr [ %56, %54 ], [ %87, %83 ]
  %92 = phi i32 [ %57, %54 ], [ %89, %83 ]
  %93 = load i32, ptr %91, align 1
  %94 = mul i32 %93, -1028477379
  %95 = add i32 %94, %92
  %96 = getelementptr inbounds nuw i8, ptr %91, i32 4
  %97 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 17)
  %98 = mul i32 %97, 668265263
  br label %99

99:                                               ; preds = %90, %54
  %100 = phi ptr [ %56, %54 ], [ %96, %90 ]
  %101 = phi i32 [ %57, %54 ], [ %98, %90 ]
  %102 = load i32, ptr %100, align 1
  %103 = mul i32 %102, -1028477379
  %104 = add i32 %103, %101
  %105 = getelementptr inbounds nuw i8, ptr %100, i32 4
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 17)
  %107 = mul i32 %106, 668265263
  %108 = load i8, ptr %105, align 1
  %109 = zext i8 %108 to i32
  %110 = mul i32 %109, 374761393
  %111 = add i32 %107, %110
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 11)
  %113 = mul i32 %112, -1640531535
  br label %207

114:                                              ; preds = %54
  %115 = load i32, ptr %56, align 1
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %57
  %118 = getelementptr inbounds nuw i8, ptr %56, i32 4
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  br label %121

121:                                              ; preds = %114, %54
  %122 = phi ptr [ %56, %54 ], [ %118, %114 ]
  %123 = phi i32 [ %57, %54 ], [ %120, %114 ]
  %124 = load i32, ptr %122, align 1
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %123
  %127 = getelementptr inbounds nuw i8, ptr %122, i32 4
  %128 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  br label %130

130:                                              ; preds = %121, %54
  %131 = phi ptr [ %56, %54 ], [ %127, %121 ]
  %132 = phi i32 [ %57, %54 ], [ %129, %121 ]
  %133 = load i32, ptr %131, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %131, i32 4
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  %139 = getelementptr inbounds nuw i8, ptr %131, i32 5
  %140 = load i8, ptr %136, align 1
  %141 = zext i8 %140 to i32
  %142 = mul i32 %141, 374761393
  %143 = add i32 %138, %142
  %144 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 11)
  %145 = mul i32 %144, -1640531535
  %146 = load i8, ptr %139, align 1
  %147 = zext i8 %146 to i32
  %148 = mul i32 %147, 374761393
  %149 = add i32 %145, %148
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 11)
  %151 = mul i32 %150, -1640531535
  br label %207

152:                                              ; preds = %54
  %153 = load i32, ptr %56, align 1
  %154 = mul i32 %153, -1028477379
  %155 = add i32 %154, %57
  %156 = getelementptr inbounds nuw i8, ptr %56, i32 4
  %157 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 17)
  %158 = mul i32 %157, 668265263
  br label %159

159:                                              ; preds = %152, %54
  %160 = phi ptr [ %56, %54 ], [ %156, %152 ]
  %161 = phi i32 [ %57, %54 ], [ %158, %152 ]
  %162 = load i32, ptr %160, align 1
  %163 = mul i32 %162, -1028477379
  %164 = add i32 %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %160, i32 4
  %166 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 17)
  %167 = mul i32 %166, 668265263
  br label %168

168:                                              ; preds = %159, %54
  %169 = phi ptr [ %56, %54 ], [ %165, %159 ]
  %170 = phi i32 [ %57, %54 ], [ %167, %159 ]
  %171 = load i32, ptr %169, align 1
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %170
  %174 = getelementptr inbounds nuw i8, ptr %169, i32 4
  %175 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %176 = mul i32 %175, 668265263
  br label %177

177:                                              ; preds = %168, %54
  %178 = phi ptr [ %56, %54 ], [ %174, %168 ]
  %179 = phi i32 [ %57, %54 ], [ %176, %168 ]
  %180 = getelementptr inbounds nuw i8, ptr %178, i32 1
  %181 = load i8, ptr %178, align 1
  %182 = zext i8 %181 to i32
  %183 = mul i32 %182, 374761393
  %184 = add i32 %183, %179
  %185 = tail call i32 @llvm.fshl.i32(i32 %184, i32 %184, i32 11)
  %186 = mul i32 %185, -1640531535
  br label %187

187:                                              ; preds = %177, %54
  %188 = phi ptr [ %56, %54 ], [ %180, %177 ]
  %189 = phi i32 [ %57, %54 ], [ %186, %177 ]
  %190 = getelementptr inbounds nuw i8, ptr %188, i32 1
  %191 = load i8, ptr %188, align 1
  %192 = zext i8 %191 to i32
  %193 = mul i32 %192, 374761393
  %194 = add i32 %193, %189
  %195 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 11)
  %196 = mul i32 %195, -1640531535
  br label %197

197:                                              ; preds = %187, %54
  %198 = phi ptr [ %56, %54 ], [ %190, %187 ]
  %199 = phi i32 [ %57, %54 ], [ %196, %187 ]
  %200 = load i8, ptr %198, align 1
  %201 = zext i8 %200 to i32
  %202 = mul i32 %201, 374761393
  %203 = add i32 %202, %199
  %204 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 11)
  %205 = mul i32 %204, -1640531535
  br label %207

206:                                              ; preds = %54
  unreachable

207:                                              ; preds = %54, %75, %99, %130, %197
  %208 = phi i32 [ %151, %130 ], [ %113, %99 ], [ %82, %75 ], [ %57, %54 ], [ %205, %197 ]
  %209 = lshr i32 %208, 15
  %210 = xor i32 %209, %208
  %211 = mul i32 %210, -2048144777
  %212 = lshr i32 %211, 13
  %213 = xor i32 %212, %211
  %214 = mul i32 %213, -1028477379
  %215 = lshr i32 %214, 16
  %216 = xor i32 %215, %214
  ret i32 %216
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i32 noundef signext %1, i64 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %5, label %76

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
  %24 = getelementptr inbounds nuw i8, ptr %14, i32 8
  %25 = load i64, ptr %24, align 1
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %31 = load i64, ptr %30, align 1
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %17
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %14, i32 24
  %37 = load i64, ptr %36, align 1
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %18
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %14, i32 32
  %43 = icmp ugt ptr %42, %9
  br i1 %43, label %44, label %13, !llvm.loop !6

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
  %81 = zext i32 %1 to i64
  %82 = add i64 %79, %81
  %83 = and i32 %1, 31
  %84 = icmp samesign ugt i32 %83, 7
  br i1 %84, label %85, label %100

85:                                               ; preds = %78, %85
  %86 = phi i64 [ %97, %85 ], [ %82, %78 ]
  %87 = phi ptr [ %93, %85 ], [ %80, %78 ]
  %88 = phi i32 [ %98, %85 ], [ %83, %78 ]
  %89 = load i64, ptr %87, align 1
  %90 = mul i64 %89, -4417276706812531889
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = getelementptr inbounds nuw i8, ptr %87, i32 8
  %94 = xor i64 %92, %86
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 27)
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  %98 = add nsw i32 %88, -8
  %99 = icmp ugt i32 %98, 7
  br i1 %99, label %85, label %100, !llvm.loop !7

100:                                              ; preds = %85, %78
  %101 = phi i32 [ %83, %78 ], [ %98, %85 ]
  %102 = phi ptr [ %80, %78 ], [ %93, %85 ]
  %103 = phi i64 [ %82, %78 ], [ %97, %85 ]
  %104 = icmp samesign ugt i32 %101, 3
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, ptr %102, align 1
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, -7046029288634856825
  %109 = xor i64 %108, %103
  %110 = getelementptr inbounds nuw i8, ptr %102, i32 4
  %111 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 23)
  %112 = mul i64 %111, -4417276706812531889
  %113 = add i64 %112, 1609587929392839161
  %114 = add nsw i32 %101, -4
  br label %115

115:                                              ; preds = %105, %100
  %116 = phi i32 [ %114, %105 ], [ %101, %100 ]
  %117 = phi ptr [ %110, %105 ], [ %102, %100 ]
  %118 = phi i64 [ %113, %105 ], [ %103, %100 ]
  %119 = icmp eq i32 %116, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %115, %120
  %121 = phi i64 [ %130, %120 ], [ %118, %115 ]
  %122 = phi ptr [ %124, %120 ], [ %117, %115 ]
  %123 = phi i32 [ %131, %120 ], [ %116, %115 ]
  %124 = getelementptr inbounds nuw i8, ptr %122, i32 1
  %125 = load i8, ptr %122, align 1
  %126 = zext i8 %125 to i64
  %127 = mul i64 %126, 2870177450012600261
  %128 = xor i64 %127, %121
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 11)
  %130 = mul i64 %129, -7046029288634856825
  %131 = add nsw i32 %123, -1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %120, !llvm.loop !8

133:                                              ; preds = %120, %115
  %134 = phi i64 [ %118, %115 ], [ %130, %120 ]
  %135 = lshr i64 %134, 33
  %136 = xor i64 %135, %134
  %137 = mul i64 %136, -4417276706812531889
  %138 = lshr i64 %137, 29
  %139 = xor i64 %138, %137
  %140 = mul i64 %139, 1609587929392839161
  %141 = lshr i64 %140, 32
  %142 = xor i64 %141, %140
  ret i64 %142
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
  br i1 %8, label %9, label %192

9:                                                ; preds = %4
  %10 = icmp samesign ugt i32 %2, 8
  br i1 %10, label %11, label %78

11:                                               ; preds = %9
  %12 = sub i64 6455697860950631241, %3
  %13 = add i64 %3, -4466874330221494952
  %14 = load i64, ptr %1, align 1, !noalias !9
  %15 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %16 = getelementptr inbounds i8, ptr %15, i32 -8
  %17 = load i64, ptr %16, align 1, !noalias !9
  %18 = xor i64 %14, %12
  %19 = xor i64 %18, %17
  %20 = and i64 %19, 4294967295
  %21 = mul nuw i64 %20, 2246822535
  %22 = lshr i64 %19, 32
  %23 = mul nuw i64 %22, 2246822535
  %24 = mul nuw i64 %20, 2654435761
  %25 = mul nuw i64 %22, 2654435761
  %26 = lshr i64 %21, 32
  %27 = and i64 %23, 4294967295
  %28 = add nuw i64 %27, %24
  %29 = add nuw i64 %28, %26
  %30 = lshr i64 %23, 32
  %31 = lshr i64 %29, 32
  %32 = shl i64 %29, 32
  %33 = and i64 %21, 4294967295
  %34 = add nsw i32 %2, -1
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 54
  %37 = or disjoint i64 %33, %36
  %38 = add i64 %37, %32
  %39 = xor i64 %17, %13
  %40 = and i64 %39, -4294967296
  %41 = and i64 %39, 4294967295
  %42 = mul nuw i64 %41, 2246822519
  %43 = add i64 %42, %40
  %44 = add i64 %43, %25
  %45 = add i64 %44, %30
  %46 = add i64 %45, %31
  %47 = tail call noundef i64 @llvm.bswap.i64(i64 %46)
  %48 = xor i64 %47, %38
  %49 = and i64 %48, 4294967295
  %50 = mul nuw nsw i64 %49, 668265295
  %51 = lshr i64 %48, 32
  %52 = mul nuw nsw i64 %51, 668265295
  %53 = mul nuw i64 %49, 3266489917
  %54 = mul nuw i64 %51, 3266489917
  %55 = lshr i64 %50, 32
  %56 = and i64 %52, 4294967295
  %57 = add nuw i64 %56, %53
  %58 = add nuw i64 %57, %55
  %59 = lshr i64 %52, 32
  %60 = lshr i64 %58, 32
  %61 = shl i64 %58, 32
  %62 = and i64 %50, 4294967295
  %63 = or disjoint i64 %61, %62
  %64 = mul i64 %46, -4417276706812531889
  %65 = add i64 %54, %64
  %66 = add i64 %65, %59
  %67 = add i64 %66, %60
  %68 = lshr i64 %61, 37
  %69 = xor i64 %68, %63
  %70 = mul i64 %69, 1609587791953885689
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  %73 = lshr i64 %67, 37
  %74 = xor i64 %73, %67
  %75 = mul i64 %74, 1609587791953885689
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  br label %1050

78:                                               ; preds = %9
  %79 = icmp samesign ugt i32 %2, 3
  br i1 %79, label %80, label %130

80:                                               ; preds = %78
  %81 = trunc i64 %3 to i32
  %82 = tail call noundef i32 @llvm.bswap.i32(i32 %81)
  %83 = zext i32 %82 to i64
  %84 = shl nuw i64 %83, 32
  %85 = xor i64 %84, %3
  %86 = load i32, ptr %1, align 1, !noalias !18
  %87 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %88 = getelementptr inbounds i8, ptr %87, i32 -4
  %89 = load i32, ptr %88, align 1, !noalias !18
  %90 = zext i32 %86 to i64
  %91 = zext i32 %89 to i64
  %92 = shl nuw i64 %91, 32
  %93 = or disjoint i64 %92, %90
  %94 = add i64 %85, -4255862940314790740
  %95 = xor i64 %93, %94
  %96 = shl nuw nsw i32 %2, 2
  %97 = add nuw nsw i32 %96, -2048144761
  %98 = zext i32 %97 to i64
  %99 = and i64 %95, 4294967295
  %100 = mul nuw i64 %99, %98
  %101 = lshr i64 %95, 32
  %102 = mul nuw i64 %101, %98
  %103 = mul nuw i64 %99, 2654435761
  %104 = mul nuw i64 %101, 2654435761
  %105 = lshr i64 %100, 32
  %106 = and i64 %102, 4294967295
  %107 = add nuw i64 %106, %103
  %108 = add nuw i64 %107, %105
  %109 = lshr i64 %102, 32
  %110 = lshr i64 %108, 32
  %111 = add nuw i64 %109, %104
  %112 = add nuw i64 %111, %110
  %113 = shl i64 %108, 32
  %114 = and i64 %100, 4294967295
  %115 = or disjoint i64 %113, %114
  %116 = shl i64 %115, 1
  %117 = add i64 %112, %116
  %118 = lshr i64 %117, 3
  %119 = xor i64 %118, %115
  %120 = lshr i64 %119, 35
  %121 = xor i64 %120, %119
  %122 = mul i64 %121, -6939452855193903323
  %123 = lshr i64 %122, 28
  %124 = xor i64 %123, %122
  %125 = lshr i64 %117, 37
  %126 = xor i64 %125, %117
  %127 = mul i64 %126, 1609587791953885689
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  br label %1050

130:                                              ; preds = %78
  %131 = icmp eq i32 %2, 0
  br i1 %131, label %173, label %132

132:                                              ; preds = %130
  %133 = load i8, ptr %1, align 1, !noalias !21
  %134 = lshr i32 %2, 1
  %135 = getelementptr inbounds nuw i8, ptr %1, i32 %134
  %136 = load i8, ptr %135, align 1, !noalias !21
  %137 = getelementptr i8, ptr %1, i32 %2
  %138 = getelementptr i8, ptr %137, i32 -1
  %139 = load i8, ptr %138, align 1, !noalias !21
  %140 = zext i8 %133 to i32
  %141 = shl nuw nsw i32 %140, 16
  %142 = zext i8 %136 to i32
  %143 = shl nuw i32 %142, 24
  %144 = or disjoint i32 %143, %141
  %145 = zext i8 %139 to i32
  %146 = or disjoint i32 %144, %145
  %147 = shl nuw nsw i32 %2, 8
  %148 = or disjoint i32 %146, %147
  %149 = tail call noundef i32 @llvm.bswap.i32(i32 %148)
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 13)
  %151 = add i64 %3, 2267503259
  %152 = sub i64 808198283, %3
  %153 = zext i32 %148 to i64
  %154 = zext nneg i32 %150 to i64
  %155 = lshr i64 %151, 33
  %156 = xor i64 %155, %153
  %157 = xor i64 %156, %151
  %158 = mul i64 %157, -4417276706812531889
  %159 = lshr i64 %158, 29
  %160 = xor i64 %159, %158
  %161 = mul i64 %160, 1609587929392839161
  %162 = lshr i64 %161, 32
  %163 = xor i64 %162, %161
  %164 = lshr i64 %152, 33
  %165 = xor i64 %164, %154
  %166 = xor i64 %165, %152
  %167 = mul i64 %166, -4417276706812531889
  %168 = lshr i64 %167, 29
  %169 = xor i64 %168, %167
  %170 = mul i64 %169, 1609587929392839161
  %171 = lshr i64 %170, 32
  %172 = xor i64 %171, %170
  br label %1050

173:                                              ; preds = %130
  %174 = xor i64 %3, 7507096552062056628
  %175 = lshr i64 %174, 33
  %176 = xor i64 %175, %174
  %177 = mul i64 %176, -4417276706812531889
  %178 = lshr i64 %177, 29
  %179 = xor i64 %178, %177
  %180 = mul i64 %179, 1609587929392839161
  %181 = lshr i64 %180, 32
  %182 = xor i64 %181, %180
  %183 = xor i64 %3, -7613947547284439735
  %184 = lshr i64 %183, 33
  %185 = xor i64 %184, %183
  %186 = mul i64 %185, -4417276706812531889
  %187 = lshr i64 %186, 29
  %188 = xor i64 %187, %186
  %189 = mul i64 %188, 1609587929392839161
  %190 = lshr i64 %189, 32
  %191 = xor i64 %190, %189
  br label %1050

192:                                              ; preds = %4
  %193 = icmp ult i32 %2, 129
  br i1 %193, label %194, label %531

194:                                              ; preds = %192
  %195 = zext nneg i32 %2 to i64
  %196 = mul i64 %195, -7046029288634856825
  %197 = trunc i64 %196 to i32
  %198 = lshr i64 %196, 32
  %199 = trunc nuw i64 %198 to i32
  %200 = icmp samesign ugt i32 %2, 32
  br i1 %200, label %201, label %438

201:                                              ; preds = %194
  %202 = icmp samesign ugt i32 %2, 64
  br i1 %202, label %203, label %356

203:                                              ; preds = %201
  %204 = icmp samesign ugt i32 %2, 96
  br i1 %204, label %205, label %274

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %207 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %208 = getelementptr inbounds i8, ptr %207, i32 -64
  %209 = load i64, ptr %206, align 1, !alias.scope !24, !noalias !27
  %210 = getelementptr i8, ptr %1, i32 56
  %211 = load i64, ptr %210, align 1, !alias.scope !24, !noalias !27
  %212 = load i64, ptr %208, align 1, !alias.scope !24, !noalias !27
  %213 = getelementptr i8, ptr %207, i32 -56
  %214 = load i64, ptr %213, align 1, !alias.scope !24, !noalias !27
  %215 = add i64 %3, 4554437623014685352
  %216 = xor i64 %209, %215
  %217 = sub i64 2111919702937427193, %3
  %218 = xor i64 %211, %217
  %219 = and i64 %216, 4294967295
  %220 = and i64 %218, 4294967295
  %221 = mul nuw i64 %220, %219
  %222 = lshr i64 %216, 32
  %223 = mul nuw i64 %220, %222
  %224 = lshr i64 %218, 32
  %225 = mul nuw i64 %224, %219
  %226 = mul nuw i64 %224, %222
  %227 = lshr i64 %221, 32
  %228 = and i64 %223, 4294967295
  %229 = add nuw i64 %228, %225
  %230 = add nuw i64 %229, %227
  %231 = lshr i64 %223, 32
  %232 = lshr i64 %230, 32
  %233 = add nuw i64 %231, %226
  %234 = add nuw i64 %233, %232
  %235 = shl i64 %230, 32
  %236 = and i64 %221, 4294967295
  %237 = or disjoint i64 %235, %236
  %238 = xor i64 %237, %234
  %239 = add i64 %238, %196
  %240 = add i64 %214, %212
  %241 = xor i64 %239, %240
  %242 = add i64 %3, 3556072174620004746
  %243 = xor i64 %212, %242
  %244 = sub i64 7238261902898274248, %3
  %245 = xor i64 %214, %244
  %246 = and i64 %243, 4294967295
  %247 = and i64 %245, 4294967295
  %248 = mul nuw i64 %247, %246
  %249 = lshr i64 %243, 32
  %250 = mul nuw i64 %247, %249
  %251 = lshr i64 %245, 32
  %252 = mul nuw i64 %251, %246
  %253 = mul nuw i64 %251, %249
  %254 = lshr i64 %248, 32
  %255 = and i64 %250, 4294967295
  %256 = add nuw i64 %255, %252
  %257 = add nuw i64 %256, %254
  %258 = lshr i64 %250, 32
  %259 = lshr i64 %257, 32
  %260 = add nuw i64 %258, %253
  %261 = add nuw i64 %260, %259
  %262 = shl i64 %257, 32
  %263 = and i64 %248, 4294967295
  %264 = or disjoint i64 %262, %263
  %265 = add i64 %211, %209
  %266 = xor i64 %261, %265
  %267 = xor i64 %266, %264
  %268 = trunc i64 %241 to i32
  %269 = lshr i64 %241, 32
  %270 = trunc nuw i64 %269 to i32
  %271 = trunc i64 %267 to i32
  %272 = lshr i64 %267, 32
  %273 = trunc nuw i64 %272 to i32
  br label %274

274:                                              ; preds = %205, %203
  %275 = phi i32 [ %270, %205 ], [ %199, %203 ]
  %276 = phi i32 [ %268, %205 ], [ %197, %203 ]
  %277 = phi i32 [ %271, %205 ], [ 0, %203 ]
  %278 = phi i32 [ %273, %205 ], [ 0, %203 ]
  %279 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %280 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %281 = getelementptr inbounds i8, ptr %280, i32 -48
  %282 = load i64, ptr %279, align 1, !alias.scope !24, !noalias !27
  %283 = getelementptr i8, ptr %1, i32 40
  %284 = load i64, ptr %283, align 1, !alias.scope !24, !noalias !27
  %285 = load i64, ptr %281, align 1, !alias.scope !24, !noalias !27
  %286 = getelementptr i8, ptr %280, i32 -40
  %287 = load i64, ptr %286, align 1, !alias.scope !24, !noalias !27
  %288 = zext i32 %277 to i64
  %289 = zext i32 %278 to i64
  %290 = shl nuw i64 %289, 32
  %291 = or disjoint i64 %290, %288
  %292 = add i64 %3, -3818837453329782724
  %293 = xor i64 %282, %292
  %294 = sub i64 -6688317018830679928, %3
  %295 = xor i64 %284, %294
  %296 = and i64 %293, 4294967295
  %297 = and i64 %295, 4294967295
  %298 = mul nuw i64 %297, %296
  %299 = lshr i64 %293, 32
  %300 = mul nuw i64 %297, %299
  %301 = lshr i64 %295, 32
  %302 = mul nuw i64 %301, %296
  %303 = mul nuw i64 %301, %299
  %304 = lshr i64 %298, 32
  %305 = and i64 %300, 4294967295
  %306 = add nuw i64 %305, %302
  %307 = add nuw i64 %306, %304
  %308 = lshr i64 %300, 32
  %309 = lshr i64 %307, 32
  %310 = add nuw i64 %308, %303
  %311 = add nuw i64 %310, %309
  %312 = shl i64 %307, 32
  %313 = and i64 %298, 4294967295
  %314 = or disjoint i64 %312, %313
  %315 = xor i64 %314, %311
  %316 = zext i32 %275 to i64
  %317 = shl nuw i64 %316, 32
  %318 = zext i32 %276 to i64
  %319 = or disjoint i64 %317, %318
  %320 = add i64 %319, %315
  %321 = add i64 %287, %285
  %322 = xor i64 %320, %321
  %323 = add i64 %3, 5690594596133299313
  %324 = xor i64 %285, %323
  %325 = sub i64 -2833645246901970632, %3
  %326 = xor i64 %287, %325
  %327 = and i64 %324, 4294967295
  %328 = and i64 %326, 4294967295
  %329 = mul nuw i64 %328, %327
  %330 = lshr i64 %324, 32
  %331 = mul nuw i64 %328, %330
  %332 = lshr i64 %326, 32
  %333 = mul nuw i64 %332, %327
  %334 = mul nuw i64 %332, %330
  %335 = lshr i64 %329, 32
  %336 = and i64 %331, 4294967295
  %337 = add nuw i64 %336, %333
  %338 = add nuw i64 %337, %335
  %339 = lshr i64 %331, 32
  %340 = lshr i64 %338, 32
  %341 = add nuw i64 %339, %334
  %342 = add nuw i64 %341, %340
  %343 = shl i64 %338, 32
  %344 = and i64 %329, 4294967295
  %345 = or disjoint i64 %343, %344
  %346 = xor i64 %345, %342
  %347 = add i64 %291, %346
  %348 = add i64 %284, %282
  %349 = xor i64 %347, %348
  %350 = trunc i64 %322 to i32
  %351 = lshr i64 %322, 32
  %352 = trunc nuw i64 %351 to i32
  %353 = trunc i64 %349 to i32
  %354 = lshr i64 %349, 32
  %355 = trunc nuw i64 %354 to i32
  br label %356

356:                                              ; preds = %274, %201
  %357 = phi i32 [ %352, %274 ], [ %199, %201 ]
  %358 = phi i32 [ %350, %274 ], [ %197, %201 ]
  %359 = phi i32 [ %353, %274 ], [ 0, %201 ]
  %360 = phi i32 [ %355, %274 ], [ 0, %201 ]
  %361 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %362 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %363 = getelementptr inbounds i8, ptr %362, i32 -32
  %364 = load i64, ptr %361, align 1, !alias.scope !24, !noalias !27
  %365 = getelementptr i8, ptr %1, i32 24
  %366 = load i64, ptr %365, align 1, !alias.scope !24, !noalias !27
  %367 = load i64, ptr %363, align 1, !alias.scope !24, !noalias !27
  %368 = getelementptr i8, ptr %362, i32 -24
  %369 = load i64, ptr %368, align 1, !alias.scope !24, !noalias !27
  %370 = zext i32 %359 to i64
  %371 = zext i32 %360 to i64
  %372 = shl nuw i64 %371, 32
  %373 = or disjoint i64 %372, %370
  %374 = add i64 %3, 8711581037947681227
  %375 = xor i64 %364, %374
  %376 = sub i64 2410270004345854594, %3
  %377 = xor i64 %366, %376
  %378 = and i64 %375, 4294967295
  %379 = and i64 %377, 4294967295
  %380 = mul nuw i64 %379, %378
  %381 = lshr i64 %375, 32
  %382 = mul nuw i64 %379, %381
  %383 = lshr i64 %377, 32
  %384 = mul nuw i64 %383, %378
  %385 = mul nuw i64 %383, %381
  %386 = lshr i64 %380, 32
  %387 = and i64 %382, 4294967295
  %388 = add nuw i64 %387, %384
  %389 = add nuw i64 %388, %386
  %390 = lshr i64 %382, 32
  %391 = lshr i64 %389, 32
  %392 = add nuw i64 %390, %385
  %393 = add nuw i64 %392, %391
  %394 = shl i64 %389, 32
  %395 = and i64 %380, 4294967295
  %396 = or disjoint i64 %394, %395
  %397 = xor i64 %396, %393
  %398 = zext i32 %357 to i64
  %399 = shl nuw i64 %398, 32
  %400 = zext i32 %358 to i64
  %401 = or disjoint i64 %399, %400
  %402 = add i64 %401, %397
  %403 = add i64 %369, %367
  %404 = xor i64 %402, %403
  %405 = add i64 %3, -8204357891075471176
  %406 = xor i64 %367, %405
  %407 = sub i64 5487137525590930912, %3
  %408 = xor i64 %369, %407
  %409 = and i64 %406, 4294967295
  %410 = and i64 %408, 4294967295
  %411 = mul nuw i64 %410, %409
  %412 = lshr i64 %406, 32
  %413 = mul nuw i64 %410, %412
  %414 = lshr i64 %408, 32
  %415 = mul nuw i64 %414, %409
  %416 = mul nuw i64 %414, %412
  %417 = lshr i64 %411, 32
  %418 = and i64 %413, 4294967295
  %419 = add nuw i64 %418, %415
  %420 = add nuw i64 %419, %417
  %421 = lshr i64 %413, 32
  %422 = lshr i64 %420, 32
  %423 = add nuw i64 %421, %416
  %424 = add nuw i64 %423, %422
  %425 = shl i64 %420, 32
  %426 = and i64 %411, 4294967295
  %427 = or disjoint i64 %425, %426
  %428 = xor i64 %427, %424
  %429 = add i64 %373, %428
  %430 = add i64 %366, %364
  %431 = xor i64 %429, %430
  %432 = trunc i64 %404 to i32
  %433 = lshr i64 %404, 32
  %434 = trunc nuw i64 %433 to i32
  %435 = trunc i64 %431 to i32
  %436 = lshr i64 %431, 32
  %437 = trunc nuw i64 %436 to i32
  br label %438

438:                                              ; preds = %356, %194
  %439 = phi i32 [ %434, %356 ], [ %199, %194 ]
  %440 = phi i32 [ %432, %356 ], [ %197, %194 ]
  %441 = phi i32 [ %435, %356 ], [ 0, %194 ]
  %442 = phi i32 [ %437, %356 ], [ 0, %194 ]
  %443 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %444 = getelementptr inbounds i8, ptr %443, i32 -16
  %445 = load i64, ptr %1, align 1, !alias.scope !24, !noalias !27
  %446 = getelementptr i8, ptr %1, i32 8
  %447 = load i64, ptr %446, align 1, !alias.scope !24, !noalias !27
  %448 = load i64, ptr %444, align 1, !alias.scope !24, !noalias !27
  %449 = getelementptr i8, ptr %443, i32 -8
  %450 = load i64, ptr %449, align 1, !alias.scope !24, !noalias !27
  %451 = zext i32 %441 to i64
  %452 = zext i32 %442 to i64
  %453 = shl nuw i64 %452, 32
  %454 = or disjoint i64 %453, %451
  %455 = add i64 %3, -4734510112055689544
  %456 = xor i64 %445, %455
  %457 = sub i64 2066345149520216444, %3
  %458 = xor i64 %447, %457
  %459 = and i64 %456, 4294967295
  %460 = and i64 %458, 4294967295
  %461 = mul nuw i64 %460, %459
  %462 = lshr i64 %456, 32
  %463 = mul nuw i64 %460, %462
  %464 = lshr i64 %458, 32
  %465 = mul nuw i64 %464, %459
  %466 = mul nuw i64 %464, %462
  %467 = lshr i64 %461, 32
  %468 = and i64 %463, 4294967295
  %469 = add nuw i64 %468, %465
  %470 = add nuw i64 %469, %467
  %471 = lshr i64 %463, 32
  %472 = lshr i64 %470, 32
  %473 = add nuw i64 %471, %466
  %474 = add nuw i64 %473, %472
  %475 = shl i64 %470, 32
  %476 = and i64 %461, 4294967295
  %477 = or disjoint i64 %475, %476
  %478 = xor i64 %477, %474
  %479 = zext i32 %439 to i64
  %480 = shl nuw i64 %479, 32
  %481 = zext i32 %440 to i64
  %482 = or disjoint i64 %480, %481
  %483 = add i64 %482, %478
  %484 = add i64 %450, %448
  %485 = xor i64 %483, %484
  %486 = add i64 %3, -2623469361688619810
  %487 = xor i64 %448, %486
  %488 = sub i64 2262974939099578482, %3
  %489 = xor i64 %450, %488
  %490 = and i64 %487, 4294967295
  %491 = and i64 %489, 4294967295
  %492 = mul nuw i64 %491, %490
  %493 = lshr i64 %487, 32
  %494 = mul nuw i64 %491, %493
  %495 = lshr i64 %489, 32
  %496 = mul nuw i64 %495, %490
  %497 = mul nuw i64 %495, %493
  %498 = lshr i64 %492, 32
  %499 = and i64 %494, 4294967295
  %500 = add nuw i64 %499, %496
  %501 = add nuw i64 %500, %498
  %502 = lshr i64 %494, 32
  %503 = lshr i64 %501, 32
  %504 = add nuw i64 %502, %497
  %505 = add nuw i64 %504, %503
  %506 = shl i64 %501, 32
  %507 = and i64 %492, 4294967295
  %508 = or disjoint i64 %506, %507
  %509 = xor i64 %508, %505
  %510 = add i64 %454, %509
  %511 = add i64 %447, %445
  %512 = xor i64 %510, %511
  %513 = add i64 %512, %485
  %514 = mul i64 %485, -7046029288634856825
  %515 = mul i64 %512, -8796714831421723037
  %516 = sub i64 %195, %3
  %517 = mul i64 %516, -4417276706812531889
  %518 = add i64 %514, %517
  %519 = add i64 %518, %515
  %520 = lshr i64 %513, 37
  %521 = xor i64 %520, %513
  %522 = mul i64 %521, 1609587791953885689
  %523 = lshr i64 %522, 32
  %524 = xor i64 %523, %522
  %525 = lshr i64 %519, 37
  %526 = xor i64 %525, %519
  %527 = mul i64 %526, 1609587791953885689
  %528 = lshr i64 %527, 32
  %529 = xor i64 %528, %527
  %530 = sub i64 0, %529
  br label %1050

531:                                              ; preds = %192
  %532 = icmp ult i32 %2, 241
  br i1 %532, label %533, label %985

533:                                              ; preds = %531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %534 = zext nneg i32 %2 to i64
  %535 = mul i64 %534, -7046029288634856825
  %536 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %537 = load i64, ptr %1, align 1, !alias.scope !29, !noalias !32
  %538 = getelementptr i8, ptr %1, i32 8
  %539 = load i64, ptr %538, align 1, !alias.scope !29, !noalias !32
  %540 = load i64, ptr %536, align 1, !alias.scope !29, !noalias !32
  %541 = getelementptr i8, ptr %1, i32 24
  %542 = load i64, ptr %541, align 1, !alias.scope !29, !noalias !32
  %543 = add i64 %3, -4734510112055689544
  %544 = xor i64 %537, %543
  %545 = sub i64 2066345149520216444, %3
  %546 = xor i64 %539, %545
  %547 = and i64 %544, 4294967295
  %548 = and i64 %546, 4294967295
  %549 = mul nuw i64 %548, %547
  %550 = lshr i64 %544, 32
  %551 = mul nuw i64 %548, %550
  %552 = lshr i64 %546, 32
  %553 = mul nuw i64 %552, %547
  %554 = mul nuw i64 %552, %550
  %555 = lshr i64 %549, 32
  %556 = and i64 %551, 4294967295
  %557 = add nuw i64 %556, %553
  %558 = add nuw i64 %557, %555
  %559 = lshr i64 %551, 32
  %560 = lshr i64 %558, 32
  %561 = add nuw i64 %559, %554
  %562 = add nuw i64 %561, %560
  %563 = shl i64 %558, 32
  %564 = and i64 %549, 4294967295
  %565 = or disjoint i64 %563, %564
  %566 = xor i64 %565, %562
  %567 = add i64 %566, %535
  %568 = add i64 %542, %540
  %569 = xor i64 %567, %568
  %570 = add i64 %3, -2623469361688619810
  %571 = xor i64 %540, %570
  %572 = sub i64 2262974939099578482, %3
  %573 = xor i64 %542, %572
  %574 = and i64 %571, 4294967295
  %575 = and i64 %573, 4294967295
  %576 = mul nuw i64 %575, %574
  %577 = lshr i64 %571, 32
  %578 = mul nuw i64 %575, %577
  %579 = lshr i64 %573, 32
  %580 = mul nuw i64 %579, %574
  %581 = mul nuw i64 %579, %577
  %582 = lshr i64 %576, 32
  %583 = and i64 %578, 4294967295
  %584 = add nuw i64 %583, %580
  %585 = add nuw i64 %584, %582
  %586 = lshr i64 %578, 32
  %587 = lshr i64 %585, 32
  %588 = add nuw i64 %586, %581
  %589 = add nuw i64 %588, %587
  %590 = shl i64 %585, 32
  %591 = and i64 %576, 4294967295
  %592 = or disjoint i64 %590, %591
  %593 = add i64 %539, %537
  %594 = xor i64 %589, %593
  %595 = xor i64 %594, %592
  %596 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %597 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %598 = load i64, ptr %596, align 1, !alias.scope !29, !noalias !32
  %599 = getelementptr i8, ptr %1, i32 40
  %600 = load i64, ptr %599, align 1, !alias.scope !29, !noalias !32
  %601 = load i64, ptr %597, align 1, !alias.scope !29, !noalias !32
  %602 = getelementptr i8, ptr %1, i32 56
  %603 = load i64, ptr %602, align 1, !alias.scope !29, !noalias !32
  %604 = add i64 %3, 8711581037947681227
  %605 = xor i64 %598, %604
  %606 = sub i64 2410270004345854594, %3
  %607 = xor i64 %600, %606
  %608 = and i64 %605, 4294967295
  %609 = and i64 %607, 4294967295
  %610 = mul nuw i64 %609, %608
  %611 = lshr i64 %605, 32
  %612 = mul nuw i64 %609, %611
  %613 = lshr i64 %607, 32
  %614 = mul nuw i64 %613, %608
  %615 = mul nuw i64 %613, %611
  %616 = lshr i64 %610, 32
  %617 = and i64 %612, 4294967295
  %618 = add nuw i64 %617, %614
  %619 = add nuw i64 %618, %616
  %620 = lshr i64 %612, 32
  %621 = lshr i64 %619, 32
  %622 = add nuw i64 %620, %615
  %623 = add nuw i64 %622, %621
  %624 = shl i64 %619, 32
  %625 = and i64 %610, 4294967295
  %626 = or disjoint i64 %624, %625
  %627 = xor i64 %626, %623
  %628 = add i64 %627, %569
  %629 = add i64 %603, %601
  %630 = xor i64 %628, %629
  %631 = add i64 %3, -8204357891075471176
  %632 = xor i64 %601, %631
  %633 = sub i64 5487137525590930912, %3
  %634 = xor i64 %603, %633
  %635 = and i64 %632, 4294967295
  %636 = and i64 %634, 4294967295
  %637 = mul nuw i64 %636, %635
  %638 = lshr i64 %632, 32
  %639 = mul nuw i64 %636, %638
  %640 = lshr i64 %634, 32
  %641 = mul nuw i64 %640, %635
  %642 = mul nuw i64 %640, %638
  %643 = lshr i64 %637, 32
  %644 = and i64 %639, 4294967295
  %645 = add nuw i64 %644, %641
  %646 = add nuw i64 %645, %643
  %647 = lshr i64 %639, 32
  %648 = lshr i64 %646, 32
  %649 = add nuw i64 %647, %642
  %650 = add nuw i64 %649, %648
  %651 = shl i64 %646, 32
  %652 = and i64 %637, 4294967295
  %653 = or disjoint i64 %651, %652
  %654 = xor i64 %653, %650
  %655 = add i64 %654, %595
  %656 = add i64 %600, %598
  %657 = xor i64 %655, %656
  %658 = getelementptr inbounds nuw i8, ptr %1, i32 64
  %659 = getelementptr inbounds nuw i8, ptr %1, i32 80
  %660 = load i64, ptr %658, align 1, !alias.scope !29, !noalias !32
  %661 = getelementptr i8, ptr %1, i32 72
  %662 = load i64, ptr %661, align 1, !alias.scope !29, !noalias !32
  %663 = load i64, ptr %659, align 1, !alias.scope !29, !noalias !32
  %664 = getelementptr i8, ptr %1, i32 88
  %665 = load i64, ptr %664, align 1, !alias.scope !29, !noalias !32
  %666 = add i64 %3, -3818837453329782724
  %667 = xor i64 %660, %666
  %668 = sub i64 -6688317018830679928, %3
  %669 = xor i64 %662, %668
  %670 = and i64 %667, 4294967295
  %671 = and i64 %669, 4294967295
  %672 = mul nuw i64 %671, %670
  %673 = lshr i64 %667, 32
  %674 = mul nuw i64 %671, %673
  %675 = lshr i64 %669, 32
  %676 = mul nuw i64 %675, %670
  %677 = mul nuw i64 %675, %673
  %678 = lshr i64 %672, 32
  %679 = and i64 %674, 4294967295
  %680 = add nuw i64 %679, %676
  %681 = add nuw i64 %680, %678
  %682 = lshr i64 %674, 32
  %683 = lshr i64 %681, 32
  %684 = add nuw i64 %682, %677
  %685 = add nuw i64 %684, %683
  %686 = shl i64 %681, 32
  %687 = and i64 %672, 4294967295
  %688 = or disjoint i64 %686, %687
  %689 = xor i64 %688, %685
  %690 = add i64 %689, %630
  %691 = add i64 %665, %663
  %692 = xor i64 %690, %691
  %693 = add i64 %3, 5690594596133299313
  %694 = xor i64 %663, %693
  %695 = sub i64 -2833645246901970632, %3
  %696 = xor i64 %665, %695
  %697 = and i64 %694, 4294967295
  %698 = and i64 %696, 4294967295
  %699 = mul nuw i64 %698, %697
  %700 = lshr i64 %694, 32
  %701 = mul nuw i64 %698, %700
  %702 = lshr i64 %696, 32
  %703 = mul nuw i64 %702, %697
  %704 = mul nuw i64 %702, %700
  %705 = lshr i64 %699, 32
  %706 = and i64 %701, 4294967295
  %707 = add nuw i64 %706, %703
  %708 = add nuw i64 %707, %705
  %709 = lshr i64 %701, 32
  %710 = lshr i64 %708, 32
  %711 = add nuw i64 %709, %704
  %712 = add nuw i64 %711, %710
  %713 = shl i64 %708, 32
  %714 = and i64 %699, 4294967295
  %715 = or disjoint i64 %713, %714
  %716 = xor i64 %715, %712
  %717 = add i64 %716, %657
  %718 = add i64 %662, %660
  %719 = xor i64 %717, %718
  %720 = getelementptr inbounds nuw i8, ptr %1, i32 96
  %721 = getelementptr inbounds nuw i8, ptr %1, i32 112
  %722 = load i64, ptr %720, align 1, !alias.scope !29, !noalias !32
  %723 = getelementptr i8, ptr %1, i32 104
  %724 = load i64, ptr %723, align 1, !alias.scope !29, !noalias !32
  %725 = load i64, ptr %721, align 1, !alias.scope !29, !noalias !32
  %726 = getelementptr i8, ptr %1, i32 120
  %727 = load i64, ptr %726, align 1, !alias.scope !29, !noalias !32
  %728 = add i64 %3, 4554437623014685352
  %729 = xor i64 %722, %728
  %730 = sub i64 2111919702937427193, %3
  %731 = xor i64 %724, %730
  %732 = and i64 %729, 4294967295
  %733 = and i64 %731, 4294967295
  %734 = mul nuw i64 %733, %732
  %735 = lshr i64 %729, 32
  %736 = mul nuw i64 %733, %735
  %737 = lshr i64 %731, 32
  %738 = mul nuw i64 %737, %732
  %739 = mul nuw i64 %737, %735
  %740 = lshr i64 %734, 32
  %741 = and i64 %736, 4294967295
  %742 = add nuw i64 %741, %738
  %743 = add nuw i64 %742, %740
  %744 = lshr i64 %736, 32
  %745 = lshr i64 %743, 32
  %746 = add nuw i64 %744, %739
  %747 = add nuw i64 %746, %745
  %748 = shl i64 %743, 32
  %749 = and i64 %734, 4294967295
  %750 = or disjoint i64 %748, %749
  %751 = xor i64 %750, %747
  %752 = add i64 %751, %692
  %753 = add i64 %727, %725
  %754 = xor i64 %752, %753
  %755 = add i64 %3, 3556072174620004746
  %756 = xor i64 %725, %755
  %757 = sub i64 7238261902898274248, %3
  %758 = xor i64 %727, %757
  %759 = and i64 %756, 4294967295
  %760 = and i64 %758, 4294967295
  %761 = mul nuw i64 %760, %759
  %762 = lshr i64 %756, 32
  %763 = mul nuw i64 %760, %762
  %764 = lshr i64 %758, 32
  %765 = mul nuw i64 %764, %759
  %766 = mul nuw i64 %764, %762
  %767 = lshr i64 %761, 32
  %768 = and i64 %763, 4294967295
  %769 = add nuw i64 %768, %765
  %770 = add nuw i64 %769, %767
  %771 = lshr i64 %763, 32
  %772 = lshr i64 %770, 32
  %773 = add nuw i64 %771, %766
  %774 = add nuw i64 %773, %772
  %775 = shl i64 %770, 32
  %776 = and i64 %761, 4294967295
  %777 = or disjoint i64 %775, %776
  %778 = xor i64 %777, %774
  %779 = add i64 %778, %719
  %780 = add i64 %724, %722
  %781 = xor i64 %779, %780
  %782 = lshr i32 %2, 5
  %783 = lshr i64 %754, 37
  %784 = xor i64 %783, %754
  %785 = mul i64 %784, 1609587791953885689
  %786 = lshr i64 %785, 32
  %787 = xor i64 %786, %785
  %788 = trunc i64 %787 to i32
  %789 = trunc nuw i64 %786 to i32
  %790 = lshr i64 %781, 37
  %791 = xor i64 %790, %781
  %792 = mul i64 %791, 1609587791953885689
  %793 = lshr i64 %792, 32
  %794 = xor i64 %793, %792
  %795 = trunc i64 %794 to i32
  %796 = trunc nuw i64 %793 to i32
  %797 = icmp eq i32 %782, 4
  br i1 %797, label %891, label %798

798:                                              ; preds = %533, %798
  %799 = phi i32 [ %886, %798 ], [ 4, %533 ]
  %800 = phi i32 [ %885, %798 ], [ %789, %533 ]
  %801 = phi i32 [ %889, %798 ], [ %796, %533 ]
  %802 = phi i32 [ %887, %798 ], [ %795, %533 ]
  %803 = phi i32 [ %883, %798 ], [ %788, %533 ]
  %804 = shl nsw i32 %799, 5
  %805 = getelementptr inbounds nuw i8, ptr %1, i32 %804
  %806 = getelementptr inbounds nuw i8, ptr %805, i32 16
  %807 = getelementptr i8, ptr getelementptr (i8, ptr @XXH3_kSecret, i32 -125), i32 %804
  %808 = load i64, ptr %805, align 1, !alias.scope !29, !noalias !32
  %809 = getelementptr i8, ptr %805, i32 8
  %810 = load i64, ptr %809, align 1, !alias.scope !29, !noalias !32
  %811 = load i64, ptr %806, align 1, !alias.scope !29, !noalias !32
  %812 = getelementptr i8, ptr %805, i32 24
  %813 = load i64, ptr %812, align 1, !alias.scope !29, !noalias !32
  %814 = zext i32 %802 to i64
  %815 = zext i32 %801 to i64
  %816 = shl nuw i64 %815, 32
  %817 = or disjoint i64 %816, %814
  %818 = load i64, ptr %807, align 1, !noalias !34
  %819 = getelementptr i8, ptr %807, i32 8
  %820 = load i64, ptr %819, align 1, !noalias !34
  %821 = add i64 %818, %3
  %822 = xor i64 %821, %808
  %823 = sub i64 %820, %3
  %824 = xor i64 %823, %810
  %825 = and i64 %822, 4294967295
  %826 = and i64 %824, 4294967295
  %827 = mul nuw i64 %826, %825
  %828 = lshr i64 %822, 32
  %829 = mul nuw i64 %826, %828
  %830 = lshr i64 %824, 32
  %831 = mul nuw i64 %830, %825
  %832 = mul nuw i64 %830, %828
  %833 = lshr i64 %827, 32
  %834 = and i64 %829, 4294967295
  %835 = add nuw i64 %834, %831
  %836 = add nuw i64 %835, %833
  %837 = lshr i64 %829, 32
  %838 = lshr i64 %836, 32
  %839 = add nuw i64 %837, %832
  %840 = add nuw i64 %839, %838
  %841 = shl i64 %836, 32
  %842 = and i64 %827, 4294967295
  %843 = or disjoint i64 %841, %842
  %844 = xor i64 %843, %840
  %845 = zext i32 %800 to i64
  %846 = shl nuw i64 %845, 32
  %847 = zext i32 %803 to i64
  %848 = or disjoint i64 %846, %847
  %849 = add i64 %848, %844
  %850 = add i64 %813, %811
  %851 = xor i64 %849, %850
  %852 = getelementptr inbounds nuw i8, ptr %807, i32 16
  %853 = load i64, ptr %852, align 1, !noalias !34
  %854 = getelementptr i8, ptr %807, i32 24
  %855 = load i64, ptr %854, align 1, !noalias !34
  %856 = add i64 %853, %3
  %857 = xor i64 %856, %811
  %858 = sub i64 %855, %3
  %859 = xor i64 %858, %813
  %860 = and i64 %857, 4294967295
  %861 = and i64 %859, 4294967295
  %862 = mul nuw i64 %861, %860
  %863 = lshr i64 %857, 32
  %864 = mul nuw i64 %861, %863
  %865 = lshr i64 %859, 32
  %866 = mul nuw i64 %865, %860
  %867 = mul nuw i64 %865, %863
  %868 = lshr i64 %862, 32
  %869 = and i64 %864, 4294967295
  %870 = add nuw i64 %869, %866
  %871 = add nuw i64 %870, %868
  %872 = lshr i64 %864, 32
  %873 = lshr i64 %871, 32
  %874 = add nuw i64 %872, %867
  %875 = add nuw i64 %874, %873
  %876 = shl i64 %871, 32
  %877 = and i64 %862, 4294967295
  %878 = or disjoint i64 %876, %877
  %879 = xor i64 %878, %875
  %880 = add i64 %817, %879
  %881 = add i64 %810, %808
  %882 = xor i64 %880, %881
  %883 = trunc i64 %851 to i32
  %884 = lshr i64 %851, 32
  %885 = trunc nuw i64 %884 to i32
  %886 = add nuw nsw i32 %799, 1
  %887 = trunc i64 %882 to i32
  %888 = lshr i64 %882, 32
  %889 = trunc nuw i64 %888 to i32
  %890 = icmp eq i32 %886, %782
  br i1 %890, label %891, label %798, !llvm.loop !37

891:                                              ; preds = %798, %533
  %892 = phi i32 [ %788, %533 ], [ %883, %798 ]
  %893 = phi i32 [ %795, %533 ], [ %887, %798 ]
  %894 = phi i32 [ %796, %533 ], [ %889, %798 ]
  %895 = phi i32 [ %789, %533 ], [ %885, %798 ]
  %896 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %897 = getelementptr inbounds i8, ptr %896, i32 -16
  %898 = getelementptr inbounds i8, ptr %896, i32 -32
  %899 = load i64, ptr %897, align 1, !alias.scope !29, !noalias !32
  %900 = getelementptr i8, ptr %896, i32 -8
  %901 = load i64, ptr %900, align 1, !alias.scope !29, !noalias !32
  %902 = load i64, ptr %898, align 1, !alias.scope !29, !noalias !32
  %903 = getelementptr i8, ptr %896, i32 -24
  %904 = load i64, ptr %903, align 1, !alias.scope !29, !noalias !32
  %905 = zext i32 %893 to i64
  %906 = zext i32 %894 to i64
  %907 = shl nuw i64 %906, 32
  %908 = or disjoint i64 %907, %905
  %909 = sub i64 5695865814404364607, %3
  %910 = xor i64 %899, %909
  %911 = add i64 %3, 6464017090953185821
  %912 = xor i64 %901, %911
  %913 = and i64 %910, 4294967295
  %914 = and i64 %912, 4294967295
  %915 = mul nuw i64 %914, %913
  %916 = lshr i64 %910, 32
  %917 = mul nuw i64 %914, %916
  %918 = lshr i64 %912, 32
  %919 = mul nuw i64 %918, %913
  %920 = mul nuw i64 %918, %916
  %921 = lshr i64 %915, 32
  %922 = and i64 %917, 4294967295
  %923 = add nuw i64 %922, %919
  %924 = add nuw i64 %923, %921
  %925 = lshr i64 %917, 32
  %926 = lshr i64 %924, 32
  %927 = add nuw i64 %925, %920
  %928 = add nuw i64 %927, %926
  %929 = shl i64 %924, 32
  %930 = and i64 %915, 4294967295
  %931 = or disjoint i64 %929, %930
  %932 = xor i64 %931, %928
  %933 = zext i32 %895 to i64
  %934 = shl nuw i64 %933, 32
  %935 = zext i32 %892 to i64
  %936 = or disjoint i64 %934, %935
  %937 = add i64 %936, %932
  %938 = add i64 %904, %902
  %939 = xor i64 %937, %938
  %940 = sub i64 8320639771003045937, %3
  %941 = xor i64 %902, %940
  %942 = add i64 %3, -1453760514566526364
  %943 = xor i64 %904, %942
  %944 = and i64 %941, 4294967295
  %945 = and i64 %943, 4294967295
  %946 = mul nuw i64 %945, %944
  %947 = lshr i64 %941, 32
  %948 = mul nuw i64 %945, %947
  %949 = lshr i64 %943, 32
  %950 = mul nuw i64 %949, %944
  %951 = mul nuw i64 %949, %947
  %952 = lshr i64 %946, 32
  %953 = and i64 %948, 4294967295
  %954 = add nuw i64 %953, %950
  %955 = add nuw i64 %954, %952
  %956 = lshr i64 %948, 32
  %957 = lshr i64 %955, 32
  %958 = add nuw i64 %956, %951
  %959 = add nuw i64 %958, %957
  %960 = shl i64 %955, 32
  %961 = and i64 %946, 4294967295
  %962 = or disjoint i64 %960, %961
  %963 = xor i64 %962, %959
  %964 = add i64 %908, %963
  %965 = add i64 %901, %899
  %966 = xor i64 %964, %965
  %967 = add i64 %966, %939
  %968 = mul i64 %939, -7046029288634856825
  %969 = mul i64 %966, -8796714831421723037
  %970 = sub i64 %534, %3
  %971 = mul i64 %970, -4417276706812531889
  %972 = add i64 %968, %971
  %973 = add i64 %972, %969
  %974 = lshr i64 %967, 37
  %975 = xor i64 %974, %967
  %976 = mul i64 %975, 1609587791953885689
  %977 = lshr i64 %976, 32
  %978 = xor i64 %977, %976
  %979 = lshr i64 %973, 37
  %980 = xor i64 %979, %973
  %981 = mul i64 %980, 1609587791953885689
  %982 = lshr i64 %981, 32
  %983 = xor i64 %982, %981
  %984 = sub i64 0, %983
  br label %1050

985:                                              ; preds = %531
  %986 = icmp eq i64 %3, 0
  br i1 %986, label %987, label %994

987:                                              ; preds = %985
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !38
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %1, i32 noundef signext %2, ptr noundef nonnull @XXH3_kSecret, i32 noundef signext 192), !noalias !48
  %988 = zext i32 %2 to i64
  %989 = mul i64 %988, -7046029288634856825
  %990 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 11), i64 noundef zeroext %989), !noalias !49
  %991 = mul i64 %988, -4417276706812531889
  %992 = xor i64 %991, -1
  %993 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 117), i64 noundef zeroext %992), !noalias !49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !38
  br label %1050

994:                                              ; preds = %985
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #12, !noalias !50
  %995 = add i64 %3, -4734510112055689544
  %996 = sub i64 2066345149520216444, %3
  store i64 %995, ptr %7, align 8, !alias.scope !51, !noalias !50
  %997 = getelementptr inbounds nuw i8, ptr %7, i32 8
  store i64 %996, ptr %997, align 8, !alias.scope !51, !noalias !50
  %998 = add i64 %3, -2623469361688619810
  %999 = sub i64 2262974939099578482, %3
  %1000 = getelementptr inbounds nuw i8, ptr %7, i32 16
  store i64 %998, ptr %1000, align 8, !alias.scope !51, !noalias !50
  %1001 = getelementptr inbounds nuw i8, ptr %7, i32 24
  store i64 %999, ptr %1001, align 8, !alias.scope !51, !noalias !50
  %1002 = add i64 %3, 8711581037947681227
  %1003 = sub i64 2410270004345854594, %3
  %1004 = getelementptr inbounds nuw i8, ptr %7, i32 32
  store i64 %1002, ptr %1004, align 8, !alias.scope !51, !noalias !50
  %1005 = getelementptr inbounds nuw i8, ptr %7, i32 40
  store i64 %1003, ptr %1005, align 8, !alias.scope !51, !noalias !50
  %1006 = add i64 %3, -8204357891075471176
  %1007 = sub i64 5487137525590930912, %3
  %1008 = getelementptr inbounds nuw i8, ptr %7, i32 48
  store i64 %1006, ptr %1008, align 8, !alias.scope !51, !noalias !50
  %1009 = getelementptr inbounds nuw i8, ptr %7, i32 56
  store i64 %1007, ptr %1009, align 8, !alias.scope !51, !noalias !50
  %1010 = add i64 %3, -3818837453329782724
  %1011 = sub i64 -6688317018830679928, %3
  %1012 = getelementptr inbounds nuw i8, ptr %7, i32 64
  store i64 %1010, ptr %1012, align 8, !alias.scope !51, !noalias !50
  %1013 = getelementptr inbounds nuw i8, ptr %7, i32 72
  store i64 %1011, ptr %1013, align 8, !alias.scope !51, !noalias !50
  %1014 = add i64 %3, 5690594596133299313
  %1015 = sub i64 -2833645246901970632, %3
  %1016 = getelementptr inbounds nuw i8, ptr %7, i32 80
  store i64 %1014, ptr %1016, align 8, !alias.scope !51, !noalias !50
  %1017 = getelementptr inbounds nuw i8, ptr %7, i32 88
  store i64 %1015, ptr %1017, align 8, !alias.scope !51, !noalias !50
  %1018 = add i64 %3, 4554437623014685352
  %1019 = sub i64 2111919702937427193, %3
  %1020 = getelementptr inbounds nuw i8, ptr %7, i32 96
  store i64 %1018, ptr %1020, align 8, !alias.scope !51, !noalias !50
  %1021 = getelementptr inbounds nuw i8, ptr %7, i32 104
  store i64 %1019, ptr %1021, align 8, !alias.scope !51, !noalias !50
  %1022 = add i64 %3, 3556072174620004746
  %1023 = sub i64 7238261902898274248, %3
  %1024 = getelementptr inbounds nuw i8, ptr %7, i32 112
  store i64 %1022, ptr %1024, align 8, !alias.scope !51, !noalias !50
  %1025 = getelementptr inbounds nuw i8, ptr %7, i32 120
  store i64 %1023, ptr %1025, align 8, !alias.scope !51, !noalias !50
  %1026 = add i64 %3, -4329134394285701654
  %1027 = sub i64 -1485321483350670907, %3
  %1028 = getelementptr inbounds nuw i8, ptr %7, i32 128
  store i64 %1026, ptr %1028, align 8, !alias.scope !51, !noalias !50
  %1029 = getelementptr inbounds nuw i8, ptr %7, i32 136
  store i64 %1027, ptr %1029, align 8, !alias.scope !51, !noalias !50
  %1030 = add i64 %3, 5321830579834785047
  %1031 = sub i64 -7032137544937171245, %3
  %1032 = getelementptr inbounds nuw i8, ptr %7, i32 144
  store i64 %1030, ptr %1032, align 8, !alias.scope !51, !noalias !50
  %1033 = getelementptr inbounds nuw i8, ptr %7, i32 152
  store i64 %1031, ptr %1033, align 8, !alias.scope !51, !noalias !50
  %1034 = add i64 %3, -242834301215959509
  %1035 = sub i64 -3588858202114426737, %3
  %1036 = getelementptr inbounds nuw i8, ptr %7, i32 160
  store i64 %1034, ptr %1036, align 8, !alias.scope !51, !noalias !50
  %1037 = getelementptr inbounds nuw i8, ptr %7, i32 168
  store i64 %1035, ptr %1037, align 8, !alias.scope !51, !noalias !50
  %1038 = add i64 %3, 2883454493032893253
  %1039 = sub i64 9097354517224871855, %3
  %1040 = getelementptr inbounds nuw i8, ptr %7, i32 176
  store i64 %1038, ptr %1040, align 8, !alias.scope !51, !noalias !50
  %1041 = getelementptr inbounds nuw i8, ptr %7, i32 184
  store i64 %1039, ptr %1041, align 8, !alias.scope !51, !noalias !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12, !noalias !54
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !54
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %5, ptr noundef readonly %1, i32 noundef signext %2, ptr noundef nonnull readonly %7, i32 noundef signext 192), !noalias !59
  %1042 = getelementptr inbounds nuw i8, ptr %7, i32 11
  %1043 = zext i32 %2 to i64
  %1044 = mul i64 %1043, -7046029288634856825
  %1045 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %5, ptr noundef nonnull readonly %1042, i64 noundef zeroext %1044), !noalias !60
  %1046 = getelementptr inbounds nuw i8, ptr %7, i32 117
  %1047 = mul i64 %1043, -4417276706812531889
  %1048 = xor i64 %1047, -1
  %1049 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %5, ptr noundef nonnull readonly %1046, i64 noundef zeroext %1048), !noalias !60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12, !noalias !54
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #12, !noalias !50
  br label %1050

1050:                                             ; preds = %987, %994, %11, %80, %132, %173, %438, %891
  %1051 = phi i64 [ %77, %11 ], [ %129, %80 ], [ %191, %173 ], [ %172, %132 ], [ %530, %438 ], [ %984, %891 ], [ %993, %987 ], [ %1049, %994 ]
  %1052 = phi i64 [ %72, %11 ], [ %124, %80 ], [ %182, %173 ], [ %163, %132 ], [ %524, %438 ], [ %978, %891 ], [ %990, %987 ], [ %1045, %994 ]
  store i64 %1052, ptr %0, align 8
  %1053 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %1051, ptr %1053, align 8
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
  br i1 %7, label %8, label %89

8:                                                ; preds = %6
  %9 = icmp samesign ugt i32 %1, 8
  br i1 %9, label %10, label %59, !prof !61

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %3, i32 24
  %12 = load i64, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %14, %12
  %16 = add i64 %15, %2
  %17 = getelementptr inbounds nuw i8, ptr %3, i32 40
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %20, %18
  %22 = sub i64 %21, %2
  %23 = load i64, ptr %0, align 1
  %24 = xor i64 %23, %16
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %26 = getelementptr inbounds i8, ptr %25, i32 -8
  %27 = load i64, ptr %26, align 1
  %28 = xor i64 %27, %22
  %29 = zext nneg i32 %1 to i64
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %24)
  %31 = add i64 %30, %29
  %32 = add i64 %31, %28
  %33 = and i64 %24, 4294967295
  %34 = and i64 %28, 4294967295
  %35 = mul nuw i64 %34, %33
  %36 = lshr i64 %24, 32
  %37 = mul nuw i64 %34, %36
  %38 = lshr i64 %28, 32
  %39 = mul nuw i64 %38, %33
  %40 = mul nuw i64 %38, %36
  %41 = lshr i64 %35, 32
  %42 = and i64 %37, 4294967295
  %43 = add nuw i64 %42, %39
  %44 = add nuw i64 %43, %41
  %45 = lshr i64 %37, 32
  %46 = lshr i64 %44, 32
  %47 = add nuw i64 %45, %40
  %48 = add nuw i64 %47, %46
  %49 = shl i64 %44, 32
  %50 = and i64 %35, 4294967295
  %51 = or disjoint i64 %49, %50
  %52 = xor i64 %51, %48
  %53 = add i64 %32, %52
  %54 = lshr i64 %53, 37
  %55 = xor i64 %54, %53
  %56 = mul i64 %55, 1609587791953885689
  %57 = lshr i64 %56, 32
  %58 = xor i64 %57, %56
  br label %734

59:                                               ; preds = %8
  %60 = icmp samesign ugt i32 %1, 3
  br i1 %60, label %61, label %67, !prof !61

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %3, i32 8
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr i8, ptr %3, i32 16
  %65 = load i64, ptr %64, align 1
  %66 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i32 noundef signext range(i32 0, 17) %1, i64 %63, i64 %65, i64 noundef zeroext %2)
  br label %734

67:                                               ; preds = %59
  %68 = icmp eq i32 %1, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %3, align 1
  %71 = getelementptr i8, ptr %3, i32 4
  %72 = load i32, ptr %71, align 1
  %73 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i32 noundef signext range(i32 0, 17) %1, i32 %70, i32 %72, i64 noundef zeroext %2)
  br label %734

74:                                               ; preds = %67
  %75 = getelementptr inbounds nuw i8, ptr %3, i32 56
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %78 = load i64, ptr %77, align 1
  %79 = xor i64 %76, %78
  %80 = xor i64 %79, %2
  %81 = lshr i64 %80, 33
  %82 = xor i64 %81, %80
  %83 = mul i64 %82, -4417276706812531889
  %84 = lshr i64 %83, 29
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, 1609587929392839161
  %87 = lshr i64 %86, 32
  %88 = xor i64 %87, %86
  br label %734

89:                                               ; preds = %6
  %90 = icmp ult i32 %1, 129
  br i1 %90, label %91, label %377

91:                                               ; preds = %89
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %92 = zext nneg i32 %1 to i64
  %93 = mul i64 %92, -7046029288634856825
  %94 = icmp samesign ugt i32 %1, 32
  br i1 %94, label %95, label %305

95:                                               ; preds = %91
  %96 = icmp samesign ugt i32 %1, 64
  br i1 %96, label %97, label %236

97:                                               ; preds = %95
  %98 = icmp samesign ugt i32 %1, 96
  br i1 %98, label %99, label %167

99:                                               ; preds = %97
  %100 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %101 = getelementptr inbounds nuw i8, ptr %3, i32 96
  %102 = load i64, ptr %100, align 1, !alias.scope !62, !noalias !65
  %103 = getelementptr i8, ptr %0, i32 56
  %104 = load i64, ptr %103, align 1, !alias.scope !62, !noalias !65
  %105 = load i64, ptr %101, align 1, !alias.scope !65, !noalias !62
  %106 = getelementptr i8, ptr %3, i32 104
  %107 = load i64, ptr %106, align 1, !alias.scope !65, !noalias !62
  %108 = add i64 %105, %2
  %109 = xor i64 %108, %102
  %110 = sub i64 %107, %2
  %111 = xor i64 %110, %104
  %112 = and i64 %109, 4294967295
  %113 = and i64 %111, 4294967295
  %114 = mul nuw i64 %113, %112
  %115 = lshr i64 %109, 32
  %116 = mul nuw i64 %113, %115
  %117 = lshr i64 %111, 32
  %118 = mul nuw i64 %117, %112
  %119 = mul nuw i64 %117, %115
  %120 = lshr i64 %114, 32
  %121 = and i64 %116, 4294967295
  %122 = add nuw i64 %121, %118
  %123 = add nuw i64 %122, %120
  %124 = lshr i64 %116, 32
  %125 = lshr i64 %123, 32
  %126 = add nuw i64 %124, %119
  %127 = add nuw i64 %126, %125
  %128 = shl i64 %123, 32
  %129 = and i64 %114, 4294967295
  %130 = or disjoint i64 %128, %129
  %131 = xor i64 %130, %127
  %132 = add i64 %131, %93
  %133 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %134 = getelementptr inbounds i8, ptr %133, i32 -64
  %135 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %136 = load i64, ptr %134, align 1, !alias.scope !62, !noalias !65
  %137 = getelementptr i8, ptr %133, i32 -56
  %138 = load i64, ptr %137, align 1, !alias.scope !62, !noalias !65
  %139 = load i64, ptr %135, align 1, !alias.scope !65, !noalias !62
  %140 = getelementptr i8, ptr %3, i32 120
  %141 = load i64, ptr %140, align 1, !alias.scope !65, !noalias !62
  %142 = add i64 %139, %2
  %143 = xor i64 %142, %136
  %144 = sub i64 %141, %2
  %145 = xor i64 %144, %138
  %146 = and i64 %143, 4294967295
  %147 = and i64 %145, 4294967295
  %148 = mul nuw i64 %147, %146
  %149 = lshr i64 %143, 32
  %150 = mul nuw i64 %147, %149
  %151 = lshr i64 %145, 32
  %152 = mul nuw i64 %151, %146
  %153 = mul nuw i64 %151, %149
  %154 = lshr i64 %148, 32
  %155 = and i64 %150, 4294967295
  %156 = add nuw i64 %155, %152
  %157 = add nuw i64 %156, %154
  %158 = lshr i64 %150, 32
  %159 = lshr i64 %157, 32
  %160 = add nuw i64 %158, %153
  %161 = add nuw i64 %160, %159
  %162 = shl i64 %157, 32
  %163 = and i64 %148, 4294967295
  %164 = or disjoint i64 %162, %163
  %165 = xor i64 %164, %161
  %166 = add i64 %132, %165
  br label %167

167:                                              ; preds = %99, %97
  %168 = phi i64 [ %166, %99 ], [ %93, %97 ]
  %169 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %170 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %171 = load i64, ptr %169, align 1, !alias.scope !62, !noalias !65
  %172 = getelementptr i8, ptr %0, i32 40
  %173 = load i64, ptr %172, align 1, !alias.scope !62, !noalias !65
  %174 = load i64, ptr %170, align 1, !alias.scope !65, !noalias !62
  %175 = getelementptr i8, ptr %3, i32 72
  %176 = load i64, ptr %175, align 1, !alias.scope !65, !noalias !62
  %177 = add i64 %174, %2
  %178 = xor i64 %177, %171
  %179 = sub i64 %176, %2
  %180 = xor i64 %179, %173
  %181 = and i64 %178, 4294967295
  %182 = and i64 %180, 4294967295
  %183 = mul nuw i64 %182, %181
  %184 = lshr i64 %178, 32
  %185 = mul nuw i64 %182, %184
  %186 = lshr i64 %180, 32
  %187 = mul nuw i64 %186, %181
  %188 = mul nuw i64 %186, %184
  %189 = lshr i64 %183, 32
  %190 = and i64 %185, 4294967295
  %191 = add nuw i64 %190, %187
  %192 = add nuw i64 %191, %189
  %193 = lshr i64 %185, 32
  %194 = lshr i64 %192, 32
  %195 = add nuw i64 %193, %188
  %196 = add nuw i64 %195, %194
  %197 = shl i64 %192, 32
  %198 = and i64 %183, 4294967295
  %199 = or disjoint i64 %197, %198
  %200 = xor i64 %199, %196
  %201 = add i64 %200, %168
  %202 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %203 = getelementptr inbounds i8, ptr %202, i32 -48
  %204 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %205 = load i64, ptr %203, align 1, !alias.scope !62, !noalias !65
  %206 = getelementptr i8, ptr %202, i32 -40
  %207 = load i64, ptr %206, align 1, !alias.scope !62, !noalias !65
  %208 = load i64, ptr %204, align 1, !alias.scope !65, !noalias !62
  %209 = getelementptr i8, ptr %3, i32 88
  %210 = load i64, ptr %209, align 1, !alias.scope !65, !noalias !62
  %211 = add i64 %208, %2
  %212 = xor i64 %211, %205
  %213 = sub i64 %210, %2
  %214 = xor i64 %213, %207
  %215 = and i64 %212, 4294967295
  %216 = and i64 %214, 4294967295
  %217 = mul nuw i64 %216, %215
  %218 = lshr i64 %212, 32
  %219 = mul nuw i64 %216, %218
  %220 = lshr i64 %214, 32
  %221 = mul nuw i64 %220, %215
  %222 = mul nuw i64 %220, %218
  %223 = lshr i64 %217, 32
  %224 = and i64 %219, 4294967295
  %225 = add nuw i64 %224, %221
  %226 = add nuw i64 %225, %223
  %227 = lshr i64 %219, 32
  %228 = lshr i64 %226, 32
  %229 = add nuw i64 %227, %222
  %230 = add nuw i64 %229, %228
  %231 = shl i64 %226, 32
  %232 = and i64 %217, 4294967295
  %233 = or disjoint i64 %231, %232
  %234 = xor i64 %233, %230
  %235 = add i64 %201, %234
  br label %236

236:                                              ; preds = %167, %95
  %237 = phi i64 [ %235, %167 ], [ %93, %95 ]
  %238 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %239 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %240 = load i64, ptr %238, align 1, !alias.scope !62, !noalias !65
  %241 = getelementptr i8, ptr %0, i32 24
  %242 = load i64, ptr %241, align 1, !alias.scope !62, !noalias !65
  %243 = load i64, ptr %239, align 1, !alias.scope !65, !noalias !62
  %244 = getelementptr i8, ptr %3, i32 40
  %245 = load i64, ptr %244, align 1, !alias.scope !65, !noalias !62
  %246 = add i64 %243, %2
  %247 = xor i64 %246, %240
  %248 = sub i64 %245, %2
  %249 = xor i64 %248, %242
  %250 = and i64 %247, 4294967295
  %251 = and i64 %249, 4294967295
  %252 = mul nuw i64 %251, %250
  %253 = lshr i64 %247, 32
  %254 = mul nuw i64 %251, %253
  %255 = lshr i64 %249, 32
  %256 = mul nuw i64 %255, %250
  %257 = mul nuw i64 %255, %253
  %258 = lshr i64 %252, 32
  %259 = and i64 %254, 4294967295
  %260 = add nuw i64 %259, %256
  %261 = add nuw i64 %260, %258
  %262 = lshr i64 %254, 32
  %263 = lshr i64 %261, 32
  %264 = add nuw i64 %262, %257
  %265 = add nuw i64 %264, %263
  %266 = shl i64 %261, 32
  %267 = and i64 %252, 4294967295
  %268 = or disjoint i64 %266, %267
  %269 = xor i64 %268, %265
  %270 = add i64 %269, %237
  %271 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %272 = getelementptr inbounds i8, ptr %271, i32 -32
  %273 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %274 = load i64, ptr %272, align 1, !alias.scope !62, !noalias !65
  %275 = getelementptr i8, ptr %271, i32 -24
  %276 = load i64, ptr %275, align 1, !alias.scope !62, !noalias !65
  %277 = load i64, ptr %273, align 1, !alias.scope !65, !noalias !62
  %278 = getelementptr i8, ptr %3, i32 56
  %279 = load i64, ptr %278, align 1, !alias.scope !65, !noalias !62
  %280 = add i64 %277, %2
  %281 = xor i64 %280, %274
  %282 = sub i64 %279, %2
  %283 = xor i64 %282, %276
  %284 = and i64 %281, 4294967295
  %285 = and i64 %283, 4294967295
  %286 = mul nuw i64 %285, %284
  %287 = lshr i64 %281, 32
  %288 = mul nuw i64 %285, %287
  %289 = lshr i64 %283, 32
  %290 = mul nuw i64 %289, %284
  %291 = mul nuw i64 %289, %287
  %292 = lshr i64 %286, 32
  %293 = and i64 %288, 4294967295
  %294 = add nuw i64 %293, %290
  %295 = add nuw i64 %294, %292
  %296 = lshr i64 %288, 32
  %297 = lshr i64 %295, 32
  %298 = add nuw i64 %296, %291
  %299 = add nuw i64 %298, %297
  %300 = shl i64 %295, 32
  %301 = and i64 %286, 4294967295
  %302 = or disjoint i64 %300, %301
  %303 = xor i64 %302, %299
  %304 = add i64 %270, %303
  br label %305

305:                                              ; preds = %91, %236
  %306 = phi i64 [ %304, %236 ], [ %93, %91 ]
  %307 = load i64, ptr %0, align 1, !alias.scope !62, !noalias !65
  %308 = getelementptr i8, ptr %0, i32 8
  %309 = load i64, ptr %308, align 1, !alias.scope !62, !noalias !65
  %310 = load i64, ptr %3, align 1, !alias.scope !65, !noalias !62
  %311 = getelementptr i8, ptr %3, i32 8
  %312 = load i64, ptr %311, align 1, !alias.scope !65, !noalias !62
  %313 = add i64 %310, %2
  %314 = xor i64 %313, %307
  %315 = sub i64 %312, %2
  %316 = xor i64 %315, %309
  %317 = and i64 %314, 4294967295
  %318 = and i64 %316, 4294967295
  %319 = mul nuw i64 %318, %317
  %320 = lshr i64 %314, 32
  %321 = mul nuw i64 %318, %320
  %322 = lshr i64 %316, 32
  %323 = mul nuw i64 %322, %317
  %324 = mul nuw i64 %322, %320
  %325 = lshr i64 %319, 32
  %326 = and i64 %321, 4294967295
  %327 = add nuw i64 %326, %323
  %328 = add nuw i64 %327, %325
  %329 = lshr i64 %321, 32
  %330 = lshr i64 %328, 32
  %331 = add nuw i64 %329, %324
  %332 = add nuw i64 %331, %330
  %333 = shl i64 %328, 32
  %334 = and i64 %319, 4294967295
  %335 = or disjoint i64 %333, %334
  %336 = xor i64 %335, %332
  %337 = add i64 %336, %306
  %338 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %339 = getelementptr inbounds i8, ptr %338, i32 -16
  %340 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %341 = load i64, ptr %339, align 1, !alias.scope !62, !noalias !65
  %342 = getelementptr i8, ptr %338, i32 -8
  %343 = load i64, ptr %342, align 1, !alias.scope !62, !noalias !65
  %344 = load i64, ptr %340, align 1, !alias.scope !65, !noalias !62
  %345 = getelementptr i8, ptr %3, i32 24
  %346 = load i64, ptr %345, align 1, !alias.scope !65, !noalias !62
  %347 = add i64 %344, %2
  %348 = xor i64 %347, %341
  %349 = sub i64 %346, %2
  %350 = xor i64 %349, %343
  %351 = and i64 %348, 4294967295
  %352 = and i64 %350, 4294967295
  %353 = mul nuw i64 %352, %351
  %354 = lshr i64 %348, 32
  %355 = mul nuw i64 %352, %354
  %356 = lshr i64 %350, 32
  %357 = mul nuw i64 %356, %351
  %358 = mul nuw i64 %356, %354
  %359 = lshr i64 %353, 32
  %360 = and i64 %355, 4294967295
  %361 = add nuw i64 %360, %357
  %362 = add nuw i64 %361, %359
  %363 = lshr i64 %355, 32
  %364 = lshr i64 %362, 32
  %365 = add nuw i64 %363, %358
  %366 = add nuw i64 %365, %364
  %367 = shl i64 %362, 32
  %368 = and i64 %353, 4294967295
  %369 = or disjoint i64 %367, %368
  %370 = xor i64 %369, %366
  %371 = add i64 %337, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %734

377:                                              ; preds = %89
  %378 = icmp ult i32 %1, 241
  br i1 %378, label %379, label %732

379:                                              ; preds = %377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %380 = zext nneg i32 %1 to i64
  %381 = mul i64 %380, -7046029288634856825
  %382 = load i64, ptr %0, align 1, !alias.scope !67, !noalias !70
  %383 = getelementptr i8, ptr %0, i32 8
  %384 = load i64, ptr %383, align 1, !alias.scope !67, !noalias !70
  %385 = load i64, ptr %3, align 1, !alias.scope !70, !noalias !67
  %386 = getelementptr i8, ptr %3, i32 8
  %387 = load i64, ptr %386, align 1, !alias.scope !70, !noalias !67
  %388 = add i64 %385, %2
  %389 = xor i64 %388, %382
  %390 = sub i64 %387, %2
  %391 = xor i64 %390, %384
  %392 = and i64 %389, 4294967295
  %393 = and i64 %391, 4294967295
  %394 = mul nuw i64 %393, %392
  %395 = lshr i64 %389, 32
  %396 = mul nuw i64 %393, %395
  %397 = lshr i64 %391, 32
  %398 = mul nuw i64 %397, %392
  %399 = mul nuw i64 %397, %395
  %400 = lshr i64 %394, 32
  %401 = and i64 %396, 4294967295
  %402 = add nuw i64 %401, %398
  %403 = add nuw i64 %402, %400
  %404 = lshr i64 %396, 32
  %405 = lshr i64 %403, 32
  %406 = add nuw i64 %404, %399
  %407 = add nuw i64 %406, %405
  %408 = shl i64 %403, 32
  %409 = and i64 %394, 4294967295
  %410 = or disjoint i64 %408, %409
  %411 = xor i64 %410, %407
  %412 = add i64 %411, %381
  %413 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %414 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %415 = load i64, ptr %413, align 1, !alias.scope !67, !noalias !70
  %416 = getelementptr i8, ptr %0, i32 24
  %417 = load i64, ptr %416, align 1, !alias.scope !67, !noalias !70
  %418 = load i64, ptr %414, align 1, !alias.scope !70, !noalias !67
  %419 = getelementptr i8, ptr %3, i32 24
  %420 = load i64, ptr %419, align 1, !alias.scope !70, !noalias !67
  %421 = add i64 %418, %2
  %422 = xor i64 %421, %415
  %423 = sub i64 %420, %2
  %424 = xor i64 %423, %417
  %425 = and i64 %422, 4294967295
  %426 = and i64 %424, 4294967295
  %427 = mul nuw i64 %426, %425
  %428 = lshr i64 %422, 32
  %429 = mul nuw i64 %426, %428
  %430 = lshr i64 %424, 32
  %431 = mul nuw i64 %430, %425
  %432 = mul nuw i64 %430, %428
  %433 = lshr i64 %427, 32
  %434 = and i64 %429, 4294967295
  %435 = add nuw i64 %434, %431
  %436 = add nuw i64 %435, %433
  %437 = lshr i64 %429, 32
  %438 = lshr i64 %436, 32
  %439 = add nuw i64 %437, %432
  %440 = add nuw i64 %439, %438
  %441 = shl i64 %436, 32
  %442 = and i64 %427, 4294967295
  %443 = or disjoint i64 %441, %442
  %444 = xor i64 %443, %440
  %445 = add i64 %412, %444
  %446 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %447 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %448 = load i64, ptr %446, align 1, !alias.scope !67, !noalias !70
  %449 = getelementptr i8, ptr %0, i32 40
  %450 = load i64, ptr %449, align 1, !alias.scope !67, !noalias !70
  %451 = load i64, ptr %447, align 1, !alias.scope !70, !noalias !67
  %452 = getelementptr i8, ptr %3, i32 40
  %453 = load i64, ptr %452, align 1, !alias.scope !70, !noalias !67
  %454 = add i64 %451, %2
  %455 = xor i64 %454, %448
  %456 = sub i64 %453, %2
  %457 = xor i64 %456, %450
  %458 = and i64 %455, 4294967295
  %459 = and i64 %457, 4294967295
  %460 = mul nuw i64 %459, %458
  %461 = lshr i64 %455, 32
  %462 = mul nuw i64 %459, %461
  %463 = lshr i64 %457, 32
  %464 = mul nuw i64 %463, %458
  %465 = mul nuw i64 %463, %461
  %466 = lshr i64 %460, 32
  %467 = and i64 %462, 4294967295
  %468 = add nuw i64 %467, %464
  %469 = add nuw i64 %468, %466
  %470 = lshr i64 %462, 32
  %471 = lshr i64 %469, 32
  %472 = add nuw i64 %470, %465
  %473 = add nuw i64 %472, %471
  %474 = shl i64 %469, 32
  %475 = and i64 %460, 4294967295
  %476 = or disjoint i64 %474, %475
  %477 = xor i64 %476, %473
  %478 = add i64 %445, %477
  %479 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %480 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %481 = load i64, ptr %479, align 1, !alias.scope !67, !noalias !70
  %482 = getelementptr i8, ptr %0, i32 56
  %483 = load i64, ptr %482, align 1, !alias.scope !67, !noalias !70
  %484 = load i64, ptr %480, align 1, !alias.scope !70, !noalias !67
  %485 = getelementptr i8, ptr %3, i32 56
  %486 = load i64, ptr %485, align 1, !alias.scope !70, !noalias !67
  %487 = add i64 %484, %2
  %488 = xor i64 %487, %481
  %489 = sub i64 %486, %2
  %490 = xor i64 %489, %483
  %491 = and i64 %488, 4294967295
  %492 = and i64 %490, 4294967295
  %493 = mul nuw i64 %492, %491
  %494 = lshr i64 %488, 32
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
  %511 = add i64 %478, %510
  %512 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %513 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %514 = load i64, ptr %512, align 1, !alias.scope !67, !noalias !70
  %515 = getelementptr i8, ptr %0, i32 72
  %516 = load i64, ptr %515, align 1, !alias.scope !67, !noalias !70
  %517 = load i64, ptr %513, align 1, !alias.scope !70, !noalias !67
  %518 = getelementptr i8, ptr %3, i32 72
  %519 = load i64, ptr %518, align 1, !alias.scope !70, !noalias !67
  %520 = add i64 %517, %2
  %521 = xor i64 %520, %514
  %522 = sub i64 %519, %2
  %523 = xor i64 %522, %516
  %524 = and i64 %521, 4294967295
  %525 = and i64 %523, 4294967295
  %526 = mul nuw i64 %525, %524
  %527 = lshr i64 %521, 32
  %528 = mul nuw i64 %525, %527
  %529 = lshr i64 %523, 32
  %530 = mul nuw i64 %529, %524
  %531 = mul nuw i64 %529, %527
  %532 = lshr i64 %526, 32
  %533 = and i64 %528, 4294967295
  %534 = add nuw i64 %533, %530
  %535 = add nuw i64 %534, %532
  %536 = lshr i64 %528, 32
  %537 = lshr i64 %535, 32
  %538 = add nuw i64 %536, %531
  %539 = add nuw i64 %538, %537
  %540 = shl i64 %535, 32
  %541 = and i64 %526, 4294967295
  %542 = or disjoint i64 %540, %541
  %543 = xor i64 %542, %539
  %544 = add i64 %511, %543
  %545 = getelementptr inbounds nuw i8, ptr %0, i32 80
  %546 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %547 = load i64, ptr %545, align 1, !alias.scope !67, !noalias !70
  %548 = getelementptr i8, ptr %0, i32 88
  %549 = load i64, ptr %548, align 1, !alias.scope !67, !noalias !70
  %550 = load i64, ptr %546, align 1, !alias.scope !70, !noalias !67
  %551 = getelementptr i8, ptr %3, i32 88
  %552 = load i64, ptr %551, align 1, !alias.scope !70, !noalias !67
  %553 = add i64 %550, %2
  %554 = xor i64 %553, %547
  %555 = sub i64 %552, %2
  %556 = xor i64 %555, %549
  %557 = and i64 %554, 4294967295
  %558 = and i64 %556, 4294967295
  %559 = mul nuw i64 %558, %557
  %560 = lshr i64 %554, 32
  %561 = mul nuw i64 %558, %560
  %562 = lshr i64 %556, 32
  %563 = mul nuw i64 %562, %557
  %564 = mul nuw i64 %562, %560
  %565 = lshr i64 %559, 32
  %566 = and i64 %561, 4294967295
  %567 = add nuw i64 %566, %563
  %568 = add nuw i64 %567, %565
  %569 = lshr i64 %561, 32
  %570 = lshr i64 %568, 32
  %571 = add nuw i64 %569, %564
  %572 = add nuw i64 %571, %570
  %573 = shl i64 %568, 32
  %574 = and i64 %559, 4294967295
  %575 = or disjoint i64 %573, %574
  %576 = xor i64 %575, %572
  %577 = add i64 %544, %576
  %578 = getelementptr inbounds nuw i8, ptr %0, i32 96
  %579 = getelementptr inbounds nuw i8, ptr %3, i32 96
  %580 = load i64, ptr %578, align 1, !alias.scope !67, !noalias !70
  %581 = getelementptr i8, ptr %0, i32 104
  %582 = load i64, ptr %581, align 1, !alias.scope !67, !noalias !70
  %583 = load i64, ptr %579, align 1, !alias.scope !70, !noalias !67
  %584 = getelementptr i8, ptr %3, i32 104
  %585 = load i64, ptr %584, align 1, !alias.scope !70, !noalias !67
  %586 = add i64 %583, %2
  %587 = xor i64 %586, %580
  %588 = sub i64 %585, %2
  %589 = xor i64 %588, %582
  %590 = and i64 %587, 4294967295
  %591 = and i64 %589, 4294967295
  %592 = mul nuw i64 %591, %590
  %593 = lshr i64 %587, 32
  %594 = mul nuw i64 %591, %593
  %595 = lshr i64 %589, 32
  %596 = mul nuw i64 %595, %590
  %597 = mul nuw i64 %595, %593
  %598 = lshr i64 %592, 32
  %599 = and i64 %594, 4294967295
  %600 = add nuw i64 %599, %596
  %601 = add nuw i64 %600, %598
  %602 = lshr i64 %594, 32
  %603 = lshr i64 %601, 32
  %604 = add nuw i64 %602, %597
  %605 = add nuw i64 %604, %603
  %606 = shl i64 %601, 32
  %607 = and i64 %592, 4294967295
  %608 = or disjoint i64 %606, %607
  %609 = xor i64 %608, %605
  %610 = add i64 %577, %609
  %611 = getelementptr inbounds nuw i8, ptr %0, i32 112
  %612 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %613 = load i64, ptr %611, align 1, !alias.scope !67, !noalias !70
  %614 = getelementptr i8, ptr %0, i32 120
  %615 = load i64, ptr %614, align 1, !alias.scope !67, !noalias !70
  %616 = load i64, ptr %612, align 1, !alias.scope !70, !noalias !67
  %617 = getelementptr i8, ptr %3, i32 120
  %618 = load i64, ptr %617, align 1, !alias.scope !70, !noalias !67
  %619 = add i64 %616, %2
  %620 = xor i64 %619, %613
  %621 = sub i64 %618, %2
  %622 = xor i64 %621, %615
  %623 = and i64 %620, 4294967295
  %624 = and i64 %622, 4294967295
  %625 = mul nuw i64 %624, %623
  %626 = lshr i64 %620, 32
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
  %643 = add i64 %610, %642
  %644 = lshr i32 %1, 4
  %645 = lshr i64 %643, 37
  %646 = xor i64 %645, %643
  %647 = mul i64 %646, 1609587791953885689
  %648 = lshr i64 %647, 32
  %649 = xor i64 %648, %647
  %650 = icmp eq i32 %644, 8
  br i1 %650, label %691, label %651

651:                                              ; preds = %379, %651
  %652 = phi i32 [ %689, %651 ], [ 8, %379 ]
  %653 = phi i64 [ %688, %651 ], [ %649, %379 ]
  %654 = shl nsw i32 %652, 4
  %655 = getelementptr inbounds nuw i8, ptr %0, i32 %654
  %656 = getelementptr i8, ptr %3, i32 %654
  %657 = getelementptr i8, ptr %656, i32 -125
  %658 = load i64, ptr %655, align 1, !alias.scope !67, !noalias !70
  %659 = getelementptr i8, ptr %655, i32 8
  %660 = load i64, ptr %659, align 1, !alias.scope !67, !noalias !70
  %661 = load i64, ptr %657, align 1, !alias.scope !70, !noalias !67
  %662 = getelementptr i8, ptr %656, i32 -117
  %663 = load i64, ptr %662, align 1, !alias.scope !70, !noalias !67
  %664 = add i64 %661, %2
  %665 = xor i64 %664, %658
  %666 = sub i64 %663, %2
  %667 = xor i64 %666, %660
  %668 = and i64 %665, 4294967295
  %669 = and i64 %667, 4294967295
  %670 = mul nuw i64 %669, %668
  %671 = lshr i64 %665, 32
  %672 = mul nuw i64 %669, %671
  %673 = lshr i64 %667, 32
  %674 = mul nuw i64 %673, %668
  %675 = mul nuw i64 %673, %671
  %676 = lshr i64 %670, 32
  %677 = and i64 %672, 4294967295
  %678 = add nuw i64 %677, %674
  %679 = add nuw i64 %678, %676
  %680 = lshr i64 %672, 32
  %681 = lshr i64 %679, 32
  %682 = add nuw i64 %680, %675
  %683 = add nuw i64 %682, %681
  %684 = shl i64 %679, 32
  %685 = and i64 %670, 4294967295
  %686 = or disjoint i64 %684, %685
  %687 = xor i64 %686, %683
  %688 = add i64 %687, %653
  %689 = add nuw nsw i32 %652, 1
  %690 = icmp eq i32 %689, %644
  br i1 %690, label %691, label %651, !llvm.loop !72

691:                                              ; preds = %651, %379
  %692 = phi i64 [ %649, %379 ], [ %688, %651 ]
  %693 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %694 = getelementptr inbounds i8, ptr %693, i32 -16
  %695 = getelementptr inbounds nuw i8, ptr %3, i32 119
  %696 = load i64, ptr %694, align 1, !alias.scope !67, !noalias !70
  %697 = getelementptr i8, ptr %693, i32 -8
  %698 = load i64, ptr %697, align 1, !alias.scope !67, !noalias !70
  %699 = load i64, ptr %695, align 1, !alias.scope !70, !noalias !67
  %700 = getelementptr i8, ptr %3, i32 127
  %701 = load i64, ptr %700, align 1, !alias.scope !70, !noalias !67
  %702 = add i64 %699, %2
  %703 = xor i64 %702, %696
  %704 = sub i64 %701, %2
  %705 = xor i64 %704, %698
  %706 = and i64 %703, 4294967295
  %707 = and i64 %705, 4294967295
  %708 = mul nuw i64 %707, %706
  %709 = lshr i64 %703, 32
  %710 = mul nuw i64 %707, %709
  %711 = lshr i64 %705, 32
  %712 = mul nuw i64 %711, %706
  %713 = mul nuw i64 %711, %709
  %714 = lshr i64 %708, 32
  %715 = and i64 %710, 4294967295
  %716 = add nuw i64 %715, %712
  %717 = add nuw i64 %716, %714
  %718 = lshr i64 %710, 32
  %719 = lshr i64 %717, 32
  %720 = add nuw i64 %718, %713
  %721 = add nuw i64 %720, %719
  %722 = shl i64 %717, 32
  %723 = and i64 %708, 4294967295
  %724 = or disjoint i64 %722, %723
  %725 = xor i64 %724, %721
  %726 = add i64 %725, %692
  %727 = lshr i64 %726, 37
  %728 = xor i64 %727, %726
  %729 = mul i64 %728, 1609587791953885689
  %730 = lshr i64 %729, 32
  %731 = xor i64 %730, %729
  br label %734

732:                                              ; preds = %377
  %733 = tail call i64 %5(ptr noundef %0, i32 noundef signext %1, i64 noundef zeroext %2, ptr noundef %3, i32 noundef signext %4) #12, !callees !73
  br label %734

734:                                              ; preds = %74, %69, %61, %10, %732, %691, %305
  %735 = phi i64 [ %376, %305 ], [ %731, %691 ], [ %733, %732 ], [ %58, %10 ], [ %66, %61 ], [ %73, %69 ], [ %88, %74 ]
  ret i64 %735
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i32 noundef signext %1, i64 noundef zeroext %2, ptr nocapture readnone %3, i32 signext %4) #3 {
  %6 = alloca [8 x i64], align 8
  %7 = alloca [8 x i64], align 8
  %8 = alloca [192 x i8], align 8
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12, !noalias !74
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !74
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i32 noundef signext %1, ptr noundef nonnull @XXH3_kSecret, i32 noundef signext 192)
  %11 = zext i32 %1 to i64
  %12 = mul i64 %11, -7046029288634856825
  %13 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %7, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 11), i64 noundef zeroext %12), !noalias !78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12, !noalias !74
  br label %66

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #12
  %15 = add i64 %2, -4734510112055689544
  %16 = sub i64 2066345149520216444, %2
  store i64 %15, ptr %8, align 8, !alias.scope !79
  %17 = getelementptr inbounds nuw i8, ptr %8, i32 8
  store i64 %16, ptr %17, align 8, !alias.scope !79
  %18 = add i64 %2, -2623469361688619810
  %19 = sub i64 2262974939099578482, %2
  %20 = getelementptr inbounds nuw i8, ptr %8, i32 16
  store i64 %18, ptr %20, align 8, !alias.scope !79
  %21 = getelementptr inbounds nuw i8, ptr %8, i32 24
  store i64 %19, ptr %21, align 8, !alias.scope !79
  %22 = add i64 %2, 8711581037947681227
  %23 = sub i64 2410270004345854594, %2
  %24 = getelementptr inbounds nuw i8, ptr %8, i32 32
  store i64 %22, ptr %24, align 8, !alias.scope !79
  %25 = getelementptr inbounds nuw i8, ptr %8, i32 40
  store i64 %23, ptr %25, align 8, !alias.scope !79
  %26 = add i64 %2, -8204357891075471176
  %27 = sub i64 5487137525590930912, %2
  %28 = getelementptr inbounds nuw i8, ptr %8, i32 48
  store i64 %26, ptr %28, align 8, !alias.scope !79
  %29 = getelementptr inbounds nuw i8, ptr %8, i32 56
  store i64 %27, ptr %29, align 8, !alias.scope !79
  %30 = add i64 %2, -3818837453329782724
  %31 = sub i64 -6688317018830679928, %2
  %32 = getelementptr inbounds nuw i8, ptr %8, i32 64
  store i64 %30, ptr %32, align 8, !alias.scope !79
  %33 = getelementptr inbounds nuw i8, ptr %8, i32 72
  store i64 %31, ptr %33, align 8, !alias.scope !79
  %34 = add i64 %2, 5690594596133299313
  %35 = sub i64 -2833645246901970632, %2
  %36 = getelementptr inbounds nuw i8, ptr %8, i32 80
  store i64 %34, ptr %36, align 8, !alias.scope !79
  %37 = getelementptr inbounds nuw i8, ptr %8, i32 88
  store i64 %35, ptr %37, align 8, !alias.scope !79
  %38 = add i64 %2, 4554437623014685352
  %39 = sub i64 2111919702937427193, %2
  %40 = getelementptr inbounds nuw i8, ptr %8, i32 96
  store i64 %38, ptr %40, align 8, !alias.scope !79
  %41 = getelementptr inbounds nuw i8, ptr %8, i32 104
  store i64 %39, ptr %41, align 8, !alias.scope !79
  %42 = add i64 %2, 3556072174620004746
  %43 = sub i64 7238261902898274248, %2
  %44 = getelementptr inbounds nuw i8, ptr %8, i32 112
  store i64 %42, ptr %44, align 8, !alias.scope !79
  %45 = getelementptr inbounds nuw i8, ptr %8, i32 120
  store i64 %43, ptr %45, align 8, !alias.scope !79
  %46 = add i64 %2, -4329134394285701654
  %47 = sub i64 -1485321483350670907, %2
  %48 = getelementptr inbounds nuw i8, ptr %8, i32 128
  store i64 %46, ptr %48, align 8, !alias.scope !79
  %49 = getelementptr inbounds nuw i8, ptr %8, i32 136
  store i64 %47, ptr %49, align 8, !alias.scope !79
  %50 = add i64 %2, 5321830579834785047
  %51 = sub i64 -7032137544937171245, %2
  %52 = getelementptr inbounds nuw i8, ptr %8, i32 144
  store i64 %50, ptr %52, align 8, !alias.scope !79
  %53 = getelementptr inbounds nuw i8, ptr %8, i32 152
  store i64 %51, ptr %53, align 8, !alias.scope !79
  %54 = add i64 %2, -242834301215959509
  %55 = sub i64 -3588858202114426737, %2
  %56 = getelementptr inbounds nuw i8, ptr %8, i32 160
  store i64 %54, ptr %56, align 8, !alias.scope !79
  %57 = getelementptr inbounds nuw i8, ptr %8, i32 168
  store i64 %55, ptr %57, align 8, !alias.scope !79
  %58 = add i64 %2, 2883454493032893253
  %59 = sub i64 9097354517224871855, %2
  %60 = getelementptr inbounds nuw i8, ptr %8, i32 176
  store i64 %58, ptr %60, align 8, !alias.scope !79
  %61 = getelementptr inbounds nuw i8, ptr %8, i32 184
  store i64 %59, ptr %61, align 8, !alias.scope !79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !82
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !82
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i32 noundef signext %1, ptr noundef nonnull readonly %8, i32 noundef signext 192)
  %62 = getelementptr inbounds nuw i8, ptr %8, i32 11
  %63 = zext i32 %1 to i64
  %64 = mul i64 %63, -7046029288634856825
  %65 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %62, i64 noundef zeroext %64), !noalias !86
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !82
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #12
  br label %66

66:                                               ; preds = %10, %14
  %67 = phi i64 [ %13, %10 ], [ %65, %14 ]
  ret i64 %67
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
  %16 = sub i64 %15, %10
  %17 = zext i32 %14 to i64
  %18 = zext i32 %11 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or disjoint i64 %19, %17
  %21 = xor i64 %20, %16
  %22 = zext nneg i32 %1 to i64
  %23 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 49)
  %24 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 24)
  %25 = xor i64 %23, %24
  %26 = xor i64 %25, %21
  %27 = mul i64 %26, -6939452855193903323
  %28 = lshr i64 %27, 35
  %29 = add nuw nsw i64 %28, %22
  %30 = xor i64 %29, %27
  %31 = mul i64 %30, -6939452855193903323
  %32 = lshr i64 %31, 28
  %33 = xor i64 %32, %31
  ret i64 %33
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
  %23 = zext i32 %22 to i64
  %24 = add i64 %4, %23
  %25 = zext i32 %21 to i64
  %26 = lshr i64 %24, 33
  %27 = xor i64 %26, %25
  %28 = xor i64 %27, %24
  %29 = mul i64 %28, -4417276706812531889
  %30 = lshr i64 %29, 29
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, 1609587929392839161
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  ret i64 %34
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
  br i1 %12, label %84, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %15 = getelementptr inbounds i8, ptr %14, i32 -64
  %16 = getelementptr inbounds i8, ptr %14, i32 -56
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %18 = getelementptr inbounds i8, ptr %14, i32 -48
  %19 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %20 = getelementptr inbounds i8, ptr %14, i32 -40
  %21 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %22 = getelementptr inbounds i8, ptr %14, i32 -32
  %23 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %24 = getelementptr inbounds i8, ptr %14, i32 -24
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %26 = getelementptr inbounds i8, ptr %14, i32 -16
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %28 = getelementptr inbounds i8, ptr %14, i32 -8
  %29 = getelementptr inbounds nuw i8, ptr %0, i32 56
  br label %30

30:                                               ; preds = %13, %30
  %31 = phi i32 [ 0, %13 ], [ %82, %30 ]
  %32 = mul i32 %31, %8
  %33 = getelementptr inbounds nuw i8, ptr %1, i32 %32
  tail call fastcc void @XXH3_accumulate(ptr noundef %0, ptr noundef %33, ptr noundef %3, i32 noundef signext %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %34 = load i64, ptr %15, align 1, !alias.scope !90, !noalias !87
  %35 = load i64, ptr %0, align 8, !alias.scope !87, !noalias !90
  %36 = lshr i64 %35, 47
  %37 = xor i64 %34, %36
  %38 = xor i64 %37, %35
  %39 = mul i64 %38, 2654435761
  store i64 %39, ptr %0, align 8, !alias.scope !87, !noalias !90
  %40 = load i64, ptr %16, align 1, !alias.scope !90, !noalias !87
  %41 = load i64, ptr %17, align 8, !alias.scope !87, !noalias !90
  %42 = lshr i64 %41, 47
  %43 = xor i64 %40, %42
  %44 = xor i64 %43, %41
  %45 = mul i64 %44, 2654435761
  store i64 %45, ptr %17, align 8, !alias.scope !87, !noalias !90
  %46 = load i64, ptr %18, align 1, !alias.scope !90, !noalias !87
  %47 = load i64, ptr %19, align 8, !alias.scope !87, !noalias !90
  %48 = lshr i64 %47, 47
  %49 = xor i64 %46, %48
  %50 = xor i64 %49, %47
  %51 = mul i64 %50, 2654435761
  store i64 %51, ptr %19, align 8, !alias.scope !87, !noalias !90
  %52 = load i64, ptr %20, align 1, !alias.scope !90, !noalias !87
  %53 = load i64, ptr %21, align 8, !alias.scope !87, !noalias !90
  %54 = lshr i64 %53, 47
  %55 = xor i64 %52, %54
  %56 = xor i64 %55, %53
  %57 = mul i64 %56, 2654435761
  store i64 %57, ptr %21, align 8, !alias.scope !87, !noalias !90
  %58 = load i64, ptr %22, align 1, !alias.scope !90, !noalias !87
  %59 = load i64, ptr %23, align 8, !alias.scope !87, !noalias !90
  %60 = lshr i64 %59, 47
  %61 = xor i64 %58, %60
  %62 = xor i64 %61, %59
  %63 = mul i64 %62, 2654435761
  store i64 %63, ptr %23, align 8, !alias.scope !87, !noalias !90
  %64 = load i64, ptr %24, align 1, !alias.scope !90, !noalias !87
  %65 = load i64, ptr %25, align 8, !alias.scope !87, !noalias !90
  %66 = lshr i64 %65, 47
  %67 = xor i64 %64, %66
  %68 = xor i64 %67, %65
  %69 = mul i64 %68, 2654435761
  store i64 %69, ptr %25, align 8, !alias.scope !87, !noalias !90
  %70 = load i64, ptr %26, align 1, !alias.scope !90, !noalias !87
  %71 = load i64, ptr %27, align 8, !alias.scope !87, !noalias !90
  %72 = lshr i64 %71, 47
  %73 = xor i64 %70, %72
  %74 = xor i64 %73, %71
  %75 = mul i64 %74, 2654435761
  store i64 %75, ptr %27, align 8, !alias.scope !87, !noalias !90
  %76 = load i64, ptr %28, align 1, !alias.scope !90, !noalias !87
  %77 = load i64, ptr %29, align 8, !alias.scope !87, !noalias !90
  %78 = lshr i64 %77, 47
  %79 = xor i64 %76, %78
  %80 = xor i64 %79, %77
  %81 = mul i64 %80, 2654435761
  store i64 %81, ptr %29, align 8, !alias.scope !87, !noalias !90
  %82 = add nuw i32 %31, 1
  %83 = icmp ult i32 %82, %10
  br i1 %83, label %30, label %84, !llvm.loop !92

84:                                               ; preds = %30, %5
  %85 = mul i32 %10, %8
  %86 = lshr i32 %11, 6
  %87 = getelementptr inbounds nuw i8, ptr %1, i32 %85
  tail call fastcc void @XXH3_accumulate(ptr noundef %0, ptr noundef %87, ptr noundef %3, i32 noundef signext %86)
  %88 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %89 = getelementptr inbounds i8, ptr %88, i32 -64
  %90 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %91 = getelementptr inbounds i8, ptr %90, i32 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %92 = load i64, ptr %89, align 1, !alias.scope !96, !noalias !100
  %93 = load i64, ptr %91, align 1, !alias.scope !98, !noalias !101
  %94 = xor i64 %93, %92
  %95 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %96 = load i64, ptr %95, align 8, !alias.scope !93, !noalias !102
  %97 = add i64 %96, %92
  %98 = and i64 %94, 4294967295
  %99 = lshr i64 %94, 32
  %100 = mul nuw i64 %98, %99
  %101 = load i64, ptr %0, align 8, !alias.scope !93, !noalias !102
  %102 = add i64 %100, %101
  %103 = getelementptr inbounds i8, ptr %88, i32 -56
  %104 = load i64, ptr %103, align 1, !alias.scope !96, !noalias !100
  %105 = getelementptr inbounds i8, ptr %90, i32 -63
  %106 = load i64, ptr %105, align 1, !alias.scope !98, !noalias !101
  %107 = xor i64 %106, %104
  %108 = add i64 %102, %104
  store i64 %108, ptr %0, align 8, !alias.scope !93, !noalias !102
  %109 = and i64 %107, 4294967295
  %110 = lshr i64 %107, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %97, %111
  store i64 %112, ptr %95, align 8, !alias.scope !93, !noalias !102
  %113 = getelementptr inbounds i8, ptr %88, i32 -48
  %114 = load i64, ptr %113, align 1, !alias.scope !96, !noalias !100
  %115 = getelementptr inbounds i8, ptr %90, i32 -55
  %116 = load i64, ptr %115, align 1, !alias.scope !98, !noalias !101
  %117 = xor i64 %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %119 = load i64, ptr %118, align 8, !alias.scope !93, !noalias !102
  %120 = add i64 %119, %114
  %121 = and i64 %117, 4294967295
  %122 = lshr i64 %117, 32
  %123 = mul nuw i64 %121, %122
  %124 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %125 = load i64, ptr %124, align 8, !alias.scope !93, !noalias !102
  %126 = add i64 %123, %125
  %127 = getelementptr inbounds i8, ptr %88, i32 -40
  %128 = load i64, ptr %127, align 1, !alias.scope !96, !noalias !100
  %129 = getelementptr inbounds i8, ptr %90, i32 -47
  %130 = load i64, ptr %129, align 1, !alias.scope !98, !noalias !101
  %131 = xor i64 %130, %128
  %132 = add i64 %126, %128
  store i64 %132, ptr %124, align 8, !alias.scope !93, !noalias !102
  %133 = and i64 %131, 4294967295
  %134 = lshr i64 %131, 32
  %135 = mul nuw i64 %133, %134
  %136 = add i64 %120, %135
  store i64 %136, ptr %118, align 8, !alias.scope !93, !noalias !102
  %137 = getelementptr inbounds i8, ptr %88, i32 -32
  %138 = load i64, ptr %137, align 1, !alias.scope !96, !noalias !100
  %139 = getelementptr inbounds i8, ptr %90, i32 -39
  %140 = load i64, ptr %139, align 1, !alias.scope !98, !noalias !101
  %141 = xor i64 %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %143 = load i64, ptr %142, align 8, !alias.scope !93, !noalias !102
  %144 = add i64 %143, %138
  %145 = and i64 %141, 4294967295
  %146 = lshr i64 %141, 32
  %147 = mul nuw i64 %145, %146
  %148 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %149 = load i64, ptr %148, align 8, !alias.scope !93, !noalias !102
  %150 = add i64 %147, %149
  %151 = getelementptr inbounds i8, ptr %88, i32 -24
  %152 = load i64, ptr %151, align 1, !alias.scope !96, !noalias !100
  %153 = getelementptr inbounds i8, ptr %90, i32 -31
  %154 = load i64, ptr %153, align 1, !alias.scope !98, !noalias !101
  %155 = xor i64 %154, %152
  %156 = add i64 %150, %152
  store i64 %156, ptr %148, align 8, !alias.scope !93, !noalias !102
  %157 = and i64 %155, 4294967295
  %158 = lshr i64 %155, 32
  %159 = mul nuw i64 %157, %158
  %160 = add i64 %144, %159
  store i64 %160, ptr %142, align 8, !alias.scope !93, !noalias !102
  %161 = getelementptr inbounds i8, ptr %88, i32 -16
  %162 = load i64, ptr %161, align 1, !alias.scope !96, !noalias !100
  %163 = getelementptr inbounds i8, ptr %90, i32 -23
  %164 = load i64, ptr %163, align 1, !alias.scope !98, !noalias !101
  %165 = xor i64 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %167 = load i64, ptr %166, align 8, !alias.scope !93, !noalias !102
  %168 = add i64 %167, %162
  %169 = and i64 %165, 4294967295
  %170 = lshr i64 %165, 32
  %171 = mul nuw i64 %169, %170
  %172 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %173 = load i64, ptr %172, align 8, !alias.scope !93, !noalias !102
  %174 = add i64 %171, %173
  %175 = getelementptr inbounds i8, ptr %88, i32 -8
  %176 = load i64, ptr %175, align 1, !alias.scope !96, !noalias !100
  %177 = getelementptr inbounds i8, ptr %90, i32 -15
  %178 = load i64, ptr %177, align 1, !alias.scope !98, !noalias !101
  %179 = xor i64 %178, %176
  %180 = add i64 %174, %176
  store i64 %180, ptr %172, align 8, !alias.scope !93, !noalias !102
  %181 = and i64 %179, 4294967295
  %182 = lshr i64 %179, 32
  %183 = mul nuw i64 %181, %182
  %184 = add i64 %168, %183
  store i64 %184, ptr %166, align 8, !alias.scope !93, !noalias !102
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
  %10 = xor i64 %7, %4
  %11 = xor i64 %9, %6
  %12 = and i64 %10, 4294967295
  %13 = and i64 %11, 4294967295
  %14 = mul nuw i64 %13, %12
  %15 = lshr i64 %10, 32
  %16 = mul nuw i64 %13, %15
  %17 = lshr i64 %11, 32
  %18 = mul nuw i64 %17, %12
  %19 = mul nuw i64 %17, %15
  %20 = lshr i64 %14, 32
  %21 = and i64 %16, 4294967295
  %22 = add nuw i64 %21, %18
  %23 = add nuw i64 %22, %20
  %24 = lshr i64 %16, 32
  %25 = lshr i64 %23, 32
  %26 = add nuw i64 %24, %19
  %27 = add nuw i64 %26, %25
  %28 = shl i64 %23, 32
  %29 = and i64 %14, 4294967295
  %30 = or disjoint i64 %28, %29
  %31 = xor i64 %30, %27
  %32 = add i64 %31, %2
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %34 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %35 = load i64, ptr %33, align 8
  %36 = getelementptr i8, ptr %0, i32 24
  %37 = load i64, ptr %36, align 8
  %38 = load i64, ptr %34, align 1
  %39 = getelementptr i8, ptr %1, i32 24
  %40 = load i64, ptr %39, align 1
  %41 = xor i64 %38, %35
  %42 = xor i64 %40, %37
  %43 = and i64 %41, 4294967295
  %44 = and i64 %42, 4294967295
  %45 = mul nuw i64 %44, %43
  %46 = lshr i64 %41, 32
  %47 = mul nuw i64 %44, %46
  %48 = lshr i64 %42, 32
  %49 = mul nuw i64 %48, %43
  %50 = mul nuw i64 %48, %46
  %51 = lshr i64 %45, 32
  %52 = and i64 %47, 4294967295
  %53 = add nuw i64 %52, %49
  %54 = add nuw i64 %53, %51
  %55 = lshr i64 %47, 32
  %56 = lshr i64 %54, 32
  %57 = add nuw i64 %55, %50
  %58 = add nuw i64 %57, %56
  %59 = shl i64 %54, 32
  %60 = and i64 %45, 4294967295
  %61 = or disjoint i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = add i64 %62, %32
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %65 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %66 = load i64, ptr %64, align 8
  %67 = getelementptr i8, ptr %0, i32 40
  %68 = load i64, ptr %67, align 8
  %69 = load i64, ptr %65, align 1
  %70 = getelementptr i8, ptr %1, i32 40
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %69, %66
  %73 = xor i64 %71, %68
  %74 = and i64 %72, 4294967295
  %75 = and i64 %73, 4294967295
  %76 = mul nuw i64 %75, %74
  %77 = lshr i64 %72, 32
  %78 = mul nuw i64 %75, %77
  %79 = lshr i64 %73, 32
  %80 = mul nuw i64 %79, %74
  %81 = mul nuw i64 %79, %77
  %82 = lshr i64 %76, 32
  %83 = and i64 %78, 4294967295
  %84 = add nuw i64 %83, %80
  %85 = add nuw i64 %84, %82
  %86 = lshr i64 %78, 32
  %87 = lshr i64 %85, 32
  %88 = add nuw i64 %86, %81
  %89 = add nuw i64 %88, %87
  %90 = shl i64 %85, 32
  %91 = and i64 %76, 4294967295
  %92 = or disjoint i64 %90, %91
  %93 = xor i64 %92, %89
  %94 = add i64 %93, %63
  %95 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %96 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %97 = load i64, ptr %95, align 8
  %98 = getelementptr i8, ptr %0, i32 56
  %99 = load i64, ptr %98, align 8
  %100 = load i64, ptr %96, align 1
  %101 = getelementptr i8, ptr %1, i32 56
  %102 = load i64, ptr %101, align 1
  %103 = xor i64 %100, %97
  %104 = xor i64 %102, %99
  %105 = and i64 %103, 4294967295
  %106 = and i64 %104, 4294967295
  %107 = mul nuw i64 %106, %105
  %108 = lshr i64 %103, 32
  %109 = mul nuw i64 %106, %108
  %110 = lshr i64 %104, 32
  %111 = mul nuw i64 %110, %105
  %112 = mul nuw i64 %110, %108
  %113 = lshr i64 %107, 32
  %114 = and i64 %109, 4294967295
  %115 = add nuw i64 %114, %111
  %116 = add nuw i64 %115, %113
  %117 = lshr i64 %109, 32
  %118 = lshr i64 %116, 32
  %119 = add nuw i64 %117, %112
  %120 = add nuw i64 %119, %118
  %121 = shl i64 %116, 32
  %122 = and i64 %107, 4294967295
  %123 = or disjoint i64 %121, %122
  %124 = xor i64 %123, %120
  %125 = add i64 %124, %94
  %126 = lshr i64 %125, 37
  %127 = xor i64 %126, %125
  %128 = mul i64 %127, 1609587791953885689
  %129 = lshr i64 %128, 32
  %130 = xor i64 %129, %128
  ret i64 %130
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_accumulate(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, i32 noundef signext range(i32 0, 536870912) %3) unnamed_addr #3 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %118, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %14 = load i64, ptr %7, align 8, !alias.scope !103, !noalias !106
  %15 = load i64, ptr %0, align 8, !alias.scope !103, !noalias !106
  %16 = load i64, ptr %8, align 8, !alias.scope !103, !noalias !106
  %17 = load i64, ptr %9, align 8, !alias.scope !103, !noalias !106
  %18 = load i64, ptr %10, align 8, !alias.scope !103, !noalias !106
  %19 = load i64, ptr %11, align 8, !alias.scope !103, !noalias !106
  %20 = load i64, ptr %12, align 8, !alias.scope !103, !noalias !106
  %21 = load i64, ptr %13, align 8, !alias.scope !103, !noalias !106
  br label %22

22:                                               ; preds = %6, %22
  %23 = phi i64 [ %21, %6 ], [ %110, %22 ]
  %24 = phi i64 [ %20, %6 ], [ %114, %22 ]
  %25 = phi i64 [ %19, %6 ], [ %90, %22 ]
  %26 = phi i64 [ %18, %6 ], [ %94, %22 ]
  %27 = phi i64 [ %17, %6 ], [ %70, %22 ]
  %28 = phi i64 [ %16, %6 ], [ %74, %22 ]
  %29 = phi i64 [ %15, %6 ], [ %50, %22 ]
  %30 = phi i64 [ %14, %6 ], [ %54, %22 ]
  %31 = phi i32 [ 0, %6 ], [ %115, %22 ]
  %32 = shl i32 %31, 6
  %33 = getelementptr inbounds nuw i8, ptr %1, i32 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 384
  tail call void @llvm.prefetch.p0(ptr nonnull %34, i32 0, i32 3, i32 1)
  %35 = shl nuw i32 %31, 3
  %36 = getelementptr inbounds nuw i8, ptr %2, i32 %35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %37 = load i64, ptr %33, align 1, !alias.scope !109, !noalias !111
  %38 = load i64, ptr %36, align 1, !alias.scope !110, !noalias !112
  %39 = xor i64 %38, %37
  %40 = add i64 %30, %37
  %41 = and i64 %39, 4294967295
  %42 = lshr i64 %39, 32
  %43 = mul nuw i64 %41, %42
  %44 = add i64 %43, %29
  %45 = getelementptr inbounds nuw i8, ptr %33, i32 8
  %46 = load i64, ptr %45, align 1, !alias.scope !109, !noalias !111
  %47 = getelementptr inbounds nuw i8, ptr %36, i32 8
  %48 = load i64, ptr %47, align 1, !alias.scope !110, !noalias !112
  %49 = xor i64 %48, %46
  %50 = add i64 %44, %46
  %51 = and i64 %49, 4294967295
  %52 = lshr i64 %49, 32
  %53 = mul nuw i64 %51, %52
  %54 = add i64 %40, %53
  %55 = getelementptr inbounds nuw i8, ptr %33, i32 16
  %56 = load i64, ptr %55, align 1, !alias.scope !109, !noalias !111
  %57 = getelementptr inbounds nuw i8, ptr %36, i32 16
  %58 = load i64, ptr %57, align 1, !alias.scope !110, !noalias !112
  %59 = xor i64 %58, %56
  %60 = add i64 %28, %56
  %61 = and i64 %59, 4294967295
  %62 = lshr i64 %59, 32
  %63 = mul nuw i64 %61, %62
  %64 = add i64 %63, %27
  %65 = getelementptr inbounds nuw i8, ptr %33, i32 24
  %66 = load i64, ptr %65, align 1, !alias.scope !109, !noalias !111
  %67 = getelementptr inbounds nuw i8, ptr %36, i32 24
  %68 = load i64, ptr %67, align 1, !alias.scope !110, !noalias !112
  %69 = xor i64 %68, %66
  %70 = add i64 %64, %66
  %71 = and i64 %69, 4294967295
  %72 = lshr i64 %69, 32
  %73 = mul nuw i64 %71, %72
  %74 = add i64 %60, %73
  %75 = getelementptr inbounds nuw i8, ptr %33, i32 32
  %76 = load i64, ptr %75, align 1, !alias.scope !109, !noalias !111
  %77 = getelementptr inbounds nuw i8, ptr %36, i32 32
  %78 = load i64, ptr %77, align 1, !alias.scope !110, !noalias !112
  %79 = xor i64 %78, %76
  %80 = add i64 %26, %76
  %81 = and i64 %79, 4294967295
  %82 = lshr i64 %79, 32
  %83 = mul nuw i64 %81, %82
  %84 = add i64 %83, %25
  %85 = getelementptr inbounds nuw i8, ptr %33, i32 40
  %86 = load i64, ptr %85, align 1, !alias.scope !109, !noalias !111
  %87 = getelementptr inbounds nuw i8, ptr %36, i32 40
  %88 = load i64, ptr %87, align 1, !alias.scope !110, !noalias !112
  %89 = xor i64 %88, %86
  %90 = add i64 %84, %86
  %91 = and i64 %89, 4294967295
  %92 = lshr i64 %89, 32
  %93 = mul nuw i64 %91, %92
  %94 = add i64 %80, %93
  %95 = getelementptr inbounds nuw i8, ptr %33, i32 48
  %96 = load i64, ptr %95, align 1, !alias.scope !109, !noalias !111
  %97 = getelementptr inbounds nuw i8, ptr %36, i32 48
  %98 = load i64, ptr %97, align 1, !alias.scope !110, !noalias !112
  %99 = xor i64 %98, %96
  %100 = add i64 %24, %96
  %101 = and i64 %99, 4294967295
  %102 = lshr i64 %99, 32
  %103 = mul nuw i64 %101, %102
  %104 = add i64 %103, %23
  %105 = getelementptr inbounds nuw i8, ptr %33, i32 56
  %106 = load i64, ptr %105, align 1, !alias.scope !109, !noalias !111
  %107 = getelementptr inbounds nuw i8, ptr %36, i32 56
  %108 = load i64, ptr %107, align 1, !alias.scope !110, !noalias !112
  %109 = xor i64 %108, %106
  %110 = add i64 %104, %106
  %111 = and i64 %109, 4294967295
  %112 = lshr i64 %109, 32
  %113 = mul nuw i64 %111, %112
  %114 = add i64 %100, %113
  %115 = add nuw nsw i32 %31, 1
  %116 = icmp eq i32 %115, %3
  br i1 %116, label %117, label %22, !llvm.loop !113

117:                                              ; preds = %22
  store i64 %54, ptr %7, align 8, !alias.scope !103, !noalias !106
  store i64 %50, ptr %0, align 8, !alias.scope !103, !noalias !106
  store i64 %74, ptr %8, align 8, !alias.scope !103, !noalias !106
  store i64 %70, ptr %9, align 8, !alias.scope !103, !noalias !106
  store i64 %94, ptr %10, align 8, !alias.scope !103, !noalias !106
  store i64 %90, ptr %11, align 8, !alias.scope !103, !noalias !106
  store i64 %114, ptr %12, align 8, !alias.scope !103, !noalias !106
  store i64 %110, ptr %13, align 8, !alias.scope !103, !noalias !106
  br label %118

118:                                              ; preds = %117, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite)
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i32 noundef signext %1, i64 zeroext %2, ptr noalias nocapture noundef readonly %3, i32 noundef signext %4) #9 {
  %6 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !114
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !114
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i32 noundef signext %1, ptr noundef readonly %3, i32 noundef signext %4)
  %7 = getelementptr inbounds nuw i8, ptr %3, i32 11
  %8 = zext i32 %1 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %7, i64 noundef zeroext %9), !noalias !118
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !114
  ret i64 %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+fpxx,+mips32r2,+nooddspreg,-noabicalls" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }

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
!38 = !{!39, !41, !42, !43, !45, !46, !16}
!39 = distinct !{!39, !40, !"XXH3_hashLong_128b_internal: argument 0"}
!40 = distinct !{!40, !"XXH3_hashLong_128b_internal"}
!41 = distinct !{!41, !40, !"XXH3_hashLong_128b_internal: argument 1"}
!42 = distinct !{!42, !40, !"XXH3_hashLong_128b_internal: argument 2"}
!43 = distinct !{!43, !44, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!44 = distinct !{!44, !"XXH3_hashLong_128b_withSeed_internal"}
!45 = distinct !{!45, !44, !"XXH3_hashLong_128b_withSeed_internal: argument 1"}
!46 = distinct !{!46, !47, !"XXH3_hashLong_128b_withSeed: argument 0"}
!47 = distinct !{!47, !"XXH3_hashLong_128b_withSeed"}
!48 = !{!39, !43, !46, !16}
!49 = !{!39, !41, !43, !45, !46, !16}
!50 = !{!43, !45, !46, !16}
!51 = !{!52}
!52 = distinct !{!52, !53, !"XXH3_initCustomSecret_scalar: argument 0"}
!53 = distinct !{!53, !"XXH3_initCustomSecret_scalar"}
!54 = !{!55, !57, !58, !43, !45, !46, !16}
!55 = distinct !{!55, !56, !"XXH3_hashLong_128b_internal: argument 0"}
!56 = distinct !{!56, !"XXH3_hashLong_128b_internal"}
!57 = distinct !{!57, !56, !"XXH3_hashLong_128b_internal: argument 1"}
!58 = distinct !{!58, !56, !"XXH3_hashLong_128b_internal: argument 2"}
!59 = !{!55, !43, !46, !16}
!60 = !{!55, !57, !43, !45, !46, !16}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH3_len_17to128_64b: argument 0"}
!64 = distinct !{!64, !"XXH3_len_17to128_64b"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"XXH3_len_17to128_64b: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"XXH3_len_129to240_64b: argument 0"}
!69 = distinct !{!69, !"XXH3_len_129to240_64b"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"XXH3_len_129to240_64b: argument 1"}
!72 = distinct !{!72, !5}
!73 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!74 = !{!75, !77}
!75 = distinct !{!75, !76, !"XXH3_hashLong_64b_internal: argument 0"}
!76 = distinct !{!76, !"XXH3_hashLong_64b_internal"}
!77 = distinct !{!77, !76, !"XXH3_hashLong_64b_internal: argument 1"}
!78 = !{!75}
!79 = !{!80}
!80 = distinct !{!80, !81, !"XXH3_initCustomSecret_scalar: argument 0"}
!81 = distinct !{!81, !"XXH3_initCustomSecret_scalar"}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"XXH3_hashLong_64b_internal: argument 0"}
!84 = distinct !{!84, !"XXH3_hashLong_64b_internal"}
!85 = distinct !{!85, !84, !"XXH3_hashLong_64b_internal: argument 1"}
!86 = !{!83}
!87 = !{!88}
!88 = distinct !{!88, !89, !"XXH3_scrambleAcc_scalar: argument 0"}
!89 = distinct !{!89, !"XXH3_scrambleAcc_scalar"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"XXH3_scrambleAcc_scalar: argument 1"}
!92 = distinct !{!92, !5}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_accumulate_512_scalar: argument 0"}
!95 = distinct !{!95, !"XXH3_accumulate_512_scalar"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_accumulate_512_scalar: argument 1"}
!98 = !{!99}
!99 = distinct !{!99, !95, !"XXH3_accumulate_512_scalar: argument 2"}
!100 = !{!94, !99}
!101 = !{!94, !97}
!102 = !{!97, !99}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_accumulate_512_scalar: argument 0"}
!105 = distinct !{!105, !"XXH3_accumulate_512_scalar"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"XXH3_accumulate_512_scalar: argument 1"}
!108 = distinct !{!108, !105, !"XXH3_accumulate_512_scalar: argument 2"}
!109 = !{!107}
!110 = !{!108}
!111 = !{!104, !108}
!112 = !{!104, !107}
!113 = distinct !{!113, !5}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"XXH3_hashLong_64b_internal: argument 0"}
!116 = distinct !{!116, !"XXH3_hashLong_64b_internal"}
!117 = distinct !{!117, !116, !"XXH3_hashLong_64b_internal: argument 1"}
!118 = !{!115}
