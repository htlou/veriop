; ModuleID = 'ident_thumbv7_msvc/wrapper.c'
source_filename = "ident_thumbv7_msvc/wrapper.c"
target datalayout = "e-m:w-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7-pc-windows-msvc19.33.0"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local arm_aapcs_vfpcc i32 @target_xxh32(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  br i1 %43, label %13, label %44, !llvm.loop !5

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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local arm_aapcs_vfpcc i64 @target_xxh64(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
  br i1 %43, label %44, label %13, !llvm.loop !7

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
  %86 = phi i32 [ %98, %85 ], [ %83, %78 ]
  %87 = phi i64 [ %97, %85 ], [ %82, %78 ]
  %88 = phi ptr [ %93, %85 ], [ %80, %78 ]
  %89 = load i64, ptr %88, align 1
  %90 = mul i64 %89, -4417276706812531889
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = getelementptr inbounds nuw i8, ptr %88, i32 8
  %94 = xor i64 %92, %87
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 27)
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  %98 = add nsw i32 %86, -8
  %99 = icmp ugt i32 %98, 7
  br i1 %99, label %85, label %100, !llvm.loop !8

100:                                              ; preds = %85, %78
  %101 = phi ptr [ %80, %78 ], [ %93, %85 ]
  %102 = phi i64 [ %82, %78 ], [ %97, %85 ]
  %103 = phi i32 [ %83, %78 ], [ %98, %85 ]
  %104 = icmp samesign ugt i32 %103, 3
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, ptr %101, align 1
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, -7046029288634856825
  %109 = xor i64 %108, %102
  %110 = getelementptr inbounds nuw i8, ptr %101, i32 4
  %111 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 23)
  %112 = mul i64 %111, -4417276706812531889
  %113 = add i64 %112, 1609587929392839161
  %114 = add nsw i32 %103, -4
  br label %115

115:                                              ; preds = %105, %100
  %116 = phi ptr [ %110, %105 ], [ %101, %100 ]
  %117 = phi i64 [ %113, %105 ], [ %102, %100 ]
  %118 = phi i32 [ %114, %105 ], [ %103, %100 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %115, %120
  %121 = phi i32 [ %131, %120 ], [ %118, %115 ]
  %122 = phi i64 [ %130, %120 ], [ %117, %115 ]
  %123 = phi ptr [ %124, %120 ], [ %116, %115 ]
  %124 = getelementptr inbounds nuw i8, ptr %123, i32 1
  %125 = load i8, ptr %123, align 1
  %126 = zext i8 %125 to i64
  %127 = mul i64 %126, 2870177450012600261
  %128 = xor i64 %127, %122
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 11)
  %130 = mul i64 %129, -7046029288634856825
  %131 = add nsw i32 %121, -1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %120, !llvm.loop !9

133:                                              ; preds = %120, %115
  %134 = phi i64 [ %117, %115 ], [ %130, %120 ]
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

; Function Attrs: nounwind uwtable
define dso_local arm_aapcs_vfpcc i64 @target_xxh3_64_seed(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = tail call arm_aapcs_vfpcc i64 @XXH3_64bits_internal(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret, i32 noundef 192, ptr noundef nonnull @XXH3_hashLong_64b_withSeed)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local arm_aapcs_vfpcc i64 @target_xxh3_64_secret(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i32 %3, 136
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call arm_aapcs_vfpcc i64 @XXH3_64bits_internal(ptr noundef %0, i32 noundef %1, i64 noundef 0, ptr noundef %2, i32 noundef range(i32 136, 0) %3, ptr noundef nonnull @XXH3_hashLong_64b_withSecret)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i64 [ %7, %6 ], [ 0, %4 ]
  ret i64 %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local arm_aapcs_vfpcc void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [8 x i64], align 16
  %6 = alloca [8 x i64], align 16
  %7 = alloca [192 x i8], align 8
  %8 = icmp ult i32 %2, 17
  br i1 %8, label %9, label %192

9:                                                ; preds = %4
  %10 = icmp samesign ugt i32 %2, 8
  br i1 %10, label %11, label %78

11:                                               ; preds = %9
  %12 = sub i64 6455697860950631241, %3
  %13 = add i64 %3, -4466874330221494952
  %14 = load i64, ptr %1, align 1, !noalias !10
  %15 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %16 = getelementptr inbounds i8, ptr %15, i32 -8
  %17 = load i64, ptr %16, align 1, !noalias !10
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
  %47 = tail call i64 @llvm.bswap.i64(i64 %46)
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
  br label %947

78:                                               ; preds = %9
  %79 = icmp samesign ugt i32 %2, 3
  br i1 %79, label %80, label %130

80:                                               ; preds = %78
  %81 = trunc i64 %3 to i32
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = zext i32 %82 to i64
  %84 = shl nuw i64 %83, 32
  %85 = xor i64 %84, %3
  %86 = load i32, ptr %1, align 1, !noalias !19
  %87 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %88 = getelementptr inbounds i8, ptr %87, i32 -4
  %89 = load i32, ptr %88, align 1, !noalias !19
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
  br label %947

130:                                              ; preds = %78
  %131 = icmp eq i32 %2, 0
  br i1 %131, label %173, label %132

132:                                              ; preds = %130
  %133 = load i8, ptr %1, align 1, !noalias !22
  %134 = lshr i32 %2, 1
  %135 = getelementptr inbounds nuw i8, ptr %1, i32 %134
  %136 = load i8, ptr %135, align 1, !noalias !22
  %137 = getelementptr i8, ptr %1, i32 %2
  %138 = getelementptr i8, ptr %137, i32 -1
  %139 = load i8, ptr %138, align 1, !noalias !22
  %140 = zext i8 %133 to i32
  %141 = shl nuw nsw i32 %140, 16
  %142 = zext i8 %136 to i32
  %143 = shl nuw i32 %142, 24
  %144 = or disjoint i32 %143, %141
  %145 = zext i8 %139 to i32
  %146 = or disjoint i32 %144, %145
  %147 = shl nuw nsw i32 %2, 8
  %148 = or disjoint i32 %146, %147
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
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
  br label %947

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
  br label %947

192:                                              ; preds = %4
  %193 = icmp ult i32 %2, 129
  br i1 %193, label %194, label %480

194:                                              ; preds = %192
  %195 = zext nneg i32 %2 to i64
  %196 = mul i64 %195, -7046029288634856825
  %197 = icmp samesign ugt i32 %2, 32
  br i1 %197, label %198, label %397

198:                                              ; preds = %194
  %199 = icmp samesign ugt i32 %2, 64
  br i1 %199, label %200, label %331

200:                                              ; preds = %198
  %201 = icmp samesign ugt i32 %2, 96
  br i1 %201, label %202, label %265

202:                                              ; preds = %200
  %203 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %204 = getelementptr inbounds i8, ptr %203, i32 -64
  %205 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %206 = load i64, ptr %205, align 1, !alias.scope !25, !noalias !28
  %207 = getelementptr i8, ptr %1, i32 56
  %208 = load i64, ptr %207, align 1, !alias.scope !25, !noalias !28
  %209 = load i64, ptr %204, align 1, !alias.scope !25, !noalias !28
  %210 = getelementptr i8, ptr %203, i32 -56
  %211 = load i64, ptr %210, align 1, !alias.scope !25, !noalias !28
  %212 = sub i64 2111919702937427193, %3
  %213 = xor i64 %208, %212
  %214 = add i64 %3, 4554437623014685352
  %215 = xor i64 %206, %214
  %216 = and i64 %215, 4294967295
  %217 = and i64 %213, 4294967295
  %218 = mul nuw i64 %217, %216
  %219 = lshr i64 %215, 32
  %220 = mul nuw i64 %217, %219
  %221 = lshr i64 %213, 32
  %222 = mul nuw i64 %221, %216
  %223 = mul nuw i64 %221, %219
  %224 = lshr i64 %218, 32
  %225 = and i64 %220, 4294967295
  %226 = add nuw i64 %225, %222
  %227 = add nuw i64 %226, %224
  %228 = lshr i64 %220, 32
  %229 = lshr i64 %227, 32
  %230 = add nuw i64 %228, %223
  %231 = add nuw i64 %230, %229
  %232 = shl i64 %227, 32
  %233 = and i64 %218, 4294967295
  %234 = or disjoint i64 %232, %233
  %235 = xor i64 %234, %231
  %236 = add i64 %235, %196
  %237 = add i64 %211, %209
  %238 = xor i64 %236, %237
  %239 = sub i64 7238261902898274248, %3
  %240 = xor i64 %211, %239
  %241 = add i64 %3, 3556072174620004746
  %242 = xor i64 %209, %241
  %243 = and i64 %242, 4294967295
  %244 = and i64 %240, 4294967295
  %245 = mul nuw i64 %244, %243
  %246 = lshr i64 %242, 32
  %247 = mul nuw i64 %244, %246
  %248 = lshr i64 %240, 32
  %249 = mul nuw i64 %248, %243
  %250 = mul nuw i64 %248, %246
  %251 = lshr i64 %245, 32
  %252 = and i64 %247, 4294967295
  %253 = add nuw i64 %252, %249
  %254 = add nuw i64 %253, %251
  %255 = lshr i64 %247, 32
  %256 = lshr i64 %254, 32
  %257 = add nuw i64 %255, %250
  %258 = add nuw i64 %257, %256
  %259 = shl i64 %254, 32
  %260 = and i64 %245, 4294967295
  %261 = or disjoint i64 %259, %260
  %262 = add i64 %208, %206
  %263 = xor i64 %258, %262
  %264 = xor i64 %263, %261
  br label %265

265:                                              ; preds = %202, %200
  %266 = phi i64 [ %264, %202 ], [ 0, %200 ]
  %267 = phi i64 [ %238, %202 ], [ %196, %200 ]
  %268 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %269 = getelementptr inbounds i8, ptr %268, i32 -48
  %270 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %271 = load i64, ptr %270, align 1, !alias.scope !25, !noalias !28
  %272 = getelementptr i8, ptr %1, i32 40
  %273 = load i64, ptr %272, align 1, !alias.scope !25, !noalias !28
  %274 = load i64, ptr %269, align 1, !alias.scope !25, !noalias !28
  %275 = getelementptr i8, ptr %268, i32 -40
  %276 = load i64, ptr %275, align 1, !alias.scope !25, !noalias !28
  %277 = sub i64 -6688317018830679928, %3
  %278 = xor i64 %273, %277
  %279 = add i64 %3, -3818837453329782724
  %280 = xor i64 %271, %279
  %281 = and i64 %280, 4294967295
  %282 = and i64 %278, 4294967295
  %283 = mul nuw i64 %282, %281
  %284 = lshr i64 %280, 32
  %285 = mul nuw i64 %282, %284
  %286 = lshr i64 %278, 32
  %287 = mul nuw i64 %286, %281
  %288 = mul nuw i64 %286, %284
  %289 = lshr i64 %283, 32
  %290 = and i64 %285, 4294967295
  %291 = add nuw i64 %290, %287
  %292 = add nuw i64 %291, %289
  %293 = lshr i64 %285, 32
  %294 = lshr i64 %292, 32
  %295 = add nuw i64 %293, %288
  %296 = add nuw i64 %295, %294
  %297 = shl i64 %292, 32
  %298 = and i64 %283, 4294967295
  %299 = or disjoint i64 %297, %298
  %300 = xor i64 %299, %296
  %301 = add i64 %300, %267
  %302 = add i64 %276, %274
  %303 = xor i64 %301, %302
  %304 = sub i64 -2833645246901970632, %3
  %305 = xor i64 %276, %304
  %306 = add i64 %3, 5690594596133299313
  %307 = xor i64 %274, %306
  %308 = and i64 %307, 4294967295
  %309 = and i64 %305, 4294967295
  %310 = mul nuw i64 %309, %308
  %311 = lshr i64 %307, 32
  %312 = mul nuw i64 %309, %311
  %313 = lshr i64 %305, 32
  %314 = mul nuw i64 %313, %308
  %315 = mul nuw i64 %313, %311
  %316 = lshr i64 %310, 32
  %317 = and i64 %312, 4294967295
  %318 = add nuw i64 %317, %314
  %319 = add nuw i64 %318, %316
  %320 = lshr i64 %312, 32
  %321 = lshr i64 %319, 32
  %322 = add nuw i64 %320, %315
  %323 = add nuw i64 %322, %321
  %324 = shl i64 %319, 32
  %325 = and i64 %310, 4294967295
  %326 = or disjoint i64 %324, %325
  %327 = xor i64 %326, %323
  %328 = add i64 %327, %266
  %329 = add i64 %273, %271
  %330 = xor i64 %328, %329
  br label %331

331:                                              ; preds = %265, %198
  %332 = phi i64 [ %330, %265 ], [ 0, %198 ]
  %333 = phi i64 [ %303, %265 ], [ %196, %198 ]
  %334 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %335 = getelementptr inbounds i8, ptr %334, i32 -32
  %336 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %337 = load i64, ptr %336, align 1, !alias.scope !25, !noalias !28
  %338 = getelementptr i8, ptr %1, i32 24
  %339 = load i64, ptr %338, align 1, !alias.scope !25, !noalias !28
  %340 = load i64, ptr %335, align 1, !alias.scope !25, !noalias !28
  %341 = getelementptr i8, ptr %334, i32 -24
  %342 = load i64, ptr %341, align 1, !alias.scope !25, !noalias !28
  %343 = sub i64 2410270004345854594, %3
  %344 = xor i64 %339, %343
  %345 = add i64 %3, 8711581037947681227
  %346 = xor i64 %337, %345
  %347 = and i64 %346, 4294967295
  %348 = and i64 %344, 4294967295
  %349 = mul nuw i64 %348, %347
  %350 = lshr i64 %346, 32
  %351 = mul nuw i64 %348, %350
  %352 = lshr i64 %344, 32
  %353 = mul nuw i64 %352, %347
  %354 = mul nuw i64 %352, %350
  %355 = lshr i64 %349, 32
  %356 = and i64 %351, 4294967295
  %357 = add nuw i64 %356, %353
  %358 = add nuw i64 %357, %355
  %359 = lshr i64 %351, 32
  %360 = lshr i64 %358, 32
  %361 = add nuw i64 %359, %354
  %362 = add nuw i64 %361, %360
  %363 = shl i64 %358, 32
  %364 = and i64 %349, 4294967295
  %365 = or disjoint i64 %363, %364
  %366 = xor i64 %365, %362
  %367 = add i64 %366, %333
  %368 = add i64 %342, %340
  %369 = xor i64 %367, %368
  %370 = sub i64 5487137525590930912, %3
  %371 = xor i64 %342, %370
  %372 = add i64 %3, -8204357891075471176
  %373 = xor i64 %340, %372
  %374 = and i64 %373, 4294967295
  %375 = and i64 %371, 4294967295
  %376 = mul nuw i64 %375, %374
  %377 = lshr i64 %373, 32
  %378 = mul nuw i64 %375, %377
  %379 = lshr i64 %371, 32
  %380 = mul nuw i64 %379, %374
  %381 = mul nuw i64 %379, %377
  %382 = lshr i64 %376, 32
  %383 = and i64 %378, 4294967295
  %384 = add nuw i64 %383, %380
  %385 = add nuw i64 %384, %382
  %386 = lshr i64 %378, 32
  %387 = lshr i64 %385, 32
  %388 = add nuw i64 %386, %381
  %389 = add nuw i64 %388, %387
  %390 = shl i64 %385, 32
  %391 = and i64 %376, 4294967295
  %392 = or disjoint i64 %390, %391
  %393 = xor i64 %392, %389
  %394 = add i64 %393, %332
  %395 = add i64 %339, %337
  %396 = xor i64 %394, %395
  br label %397

397:                                              ; preds = %331, %194
  %398 = phi i64 [ %396, %331 ], [ 0, %194 ]
  %399 = phi i64 [ %369, %331 ], [ %196, %194 ]
  %400 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %401 = getelementptr inbounds i8, ptr %400, i32 -16
  %402 = load i64, ptr %1, align 1, !alias.scope !25, !noalias !28
  %403 = getelementptr i8, ptr %1, i32 8
  %404 = load i64, ptr %403, align 1, !alias.scope !25, !noalias !28
  %405 = load i64, ptr %401, align 1, !alias.scope !25, !noalias !28
  %406 = getelementptr i8, ptr %400, i32 -8
  %407 = load i64, ptr %406, align 1, !alias.scope !25, !noalias !28
  %408 = sub i64 2066345149520216444, %3
  %409 = xor i64 %404, %408
  %410 = add i64 %3, -4734510112055689544
  %411 = xor i64 %402, %410
  %412 = and i64 %411, 4294967295
  %413 = and i64 %409, 4294967295
  %414 = mul nuw i64 %413, %412
  %415 = lshr i64 %411, 32
  %416 = mul nuw i64 %413, %415
  %417 = lshr i64 %409, 32
  %418 = mul nuw i64 %417, %412
  %419 = mul nuw i64 %417, %415
  %420 = lshr i64 %414, 32
  %421 = and i64 %416, 4294967295
  %422 = add nuw i64 %421, %418
  %423 = add nuw i64 %422, %420
  %424 = lshr i64 %416, 32
  %425 = lshr i64 %423, 32
  %426 = add nuw i64 %424, %419
  %427 = add nuw i64 %426, %425
  %428 = shl i64 %423, 32
  %429 = and i64 %414, 4294967295
  %430 = or disjoint i64 %428, %429
  %431 = xor i64 %430, %427
  %432 = add i64 %431, %399
  %433 = add i64 %407, %405
  %434 = xor i64 %432, %433
  %435 = sub i64 2262974939099578482, %3
  %436 = xor i64 %407, %435
  %437 = add i64 %3, -2623469361688619810
  %438 = xor i64 %405, %437
  %439 = and i64 %438, 4294967295
  %440 = and i64 %436, 4294967295
  %441 = mul nuw i64 %440, %439
  %442 = lshr i64 %438, 32
  %443 = mul nuw i64 %440, %442
  %444 = lshr i64 %436, 32
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
  %459 = add i64 %458, %398
  %460 = add i64 %404, %402
  %461 = xor i64 %459, %460
  %462 = add i64 %461, %434
  %463 = mul i64 %434, -7046029288634856825
  %464 = mul i64 %461, -8796714831421723037
  %465 = sub i64 %195, %3
  %466 = mul i64 %465, -4417276706812531889
  %467 = add i64 %463, %466
  %468 = add i64 %467, %464
  %469 = lshr i64 %462, 37
  %470 = xor i64 %469, %462
  %471 = mul i64 %470, 1609587791953885689
  %472 = lshr i64 %471, 32
  %473 = xor i64 %472, %471
  %474 = lshr i64 %468, 37
  %475 = xor i64 %474, %468
  %476 = mul i64 %475, 1609587791953885689
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  %479 = sub i64 0, %478
  br label %947

480:                                              ; preds = %192
  %481 = icmp ult i32 %2, 241
  br i1 %481, label %482, label %904

482:                                              ; preds = %480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %483 = zext nneg i32 %2 to i64
  %484 = mul i64 %483, -7046029288634856825
  %485 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %486 = load i64, ptr %1, align 1, !alias.scope !30, !noalias !33
  %487 = getelementptr i8, ptr %1, i32 8
  %488 = load i64, ptr %487, align 1, !alias.scope !30, !noalias !33
  %489 = load i64, ptr %485, align 1, !alias.scope !30, !noalias !33
  %490 = getelementptr i8, ptr %1, i32 24
  %491 = load i64, ptr %490, align 1, !alias.scope !30, !noalias !33
  %492 = sub i64 2066345149520216444, %3
  %493 = xor i64 %488, %492
  %494 = add i64 %3, -4734510112055689544
  %495 = xor i64 %486, %494
  %496 = and i64 %495, 4294967295
  %497 = and i64 %493, 4294967295
  %498 = mul nuw i64 %497, %496
  %499 = lshr i64 %495, 32
  %500 = mul nuw i64 %497, %499
  %501 = lshr i64 %493, 32
  %502 = mul nuw i64 %501, %496
  %503 = mul nuw i64 %501, %499
  %504 = lshr i64 %498, 32
  %505 = and i64 %500, 4294967295
  %506 = add nuw i64 %505, %502
  %507 = add nuw i64 %506, %504
  %508 = lshr i64 %500, 32
  %509 = lshr i64 %507, 32
  %510 = add nuw i64 %508, %503
  %511 = add nuw i64 %510, %509
  %512 = shl i64 %507, 32
  %513 = and i64 %498, 4294967295
  %514 = or disjoint i64 %512, %513
  %515 = xor i64 %514, %511
  %516 = add i64 %515, %484
  %517 = add i64 %491, %489
  %518 = xor i64 %516, %517
  %519 = sub i64 2262974939099578482, %3
  %520 = xor i64 %491, %519
  %521 = add i64 %3, -2623469361688619810
  %522 = xor i64 %489, %521
  %523 = and i64 %522, 4294967295
  %524 = and i64 %520, 4294967295
  %525 = mul nuw i64 %524, %523
  %526 = lshr i64 %522, 32
  %527 = mul nuw i64 %524, %526
  %528 = lshr i64 %520, 32
  %529 = mul nuw i64 %528, %523
  %530 = mul nuw i64 %528, %526
  %531 = lshr i64 %525, 32
  %532 = and i64 %527, 4294967295
  %533 = add nuw i64 %532, %529
  %534 = add nuw i64 %533, %531
  %535 = lshr i64 %527, 32
  %536 = lshr i64 %534, 32
  %537 = add nuw i64 %535, %530
  %538 = add nuw i64 %537, %536
  %539 = shl i64 %534, 32
  %540 = and i64 %525, 4294967295
  %541 = or disjoint i64 %539, %540
  %542 = add i64 %488, %486
  %543 = xor i64 %538, %542
  %544 = xor i64 %543, %541
  %545 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %546 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %547 = load i64, ptr %545, align 1, !alias.scope !30, !noalias !33
  %548 = getelementptr i8, ptr %1, i32 40
  %549 = load i64, ptr %548, align 1, !alias.scope !30, !noalias !33
  %550 = load i64, ptr %546, align 1, !alias.scope !30, !noalias !33
  %551 = getelementptr i8, ptr %1, i32 56
  %552 = load i64, ptr %551, align 1, !alias.scope !30, !noalias !33
  %553 = sub i64 2410270004345854594, %3
  %554 = xor i64 %549, %553
  %555 = add i64 %3, 8711581037947681227
  %556 = xor i64 %547, %555
  %557 = and i64 %556, 4294967295
  %558 = and i64 %554, 4294967295
  %559 = mul nuw i64 %558, %557
  %560 = lshr i64 %556, 32
  %561 = mul nuw i64 %558, %560
  %562 = lshr i64 %554, 32
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
  %577 = add i64 %576, %518
  %578 = add i64 %552, %550
  %579 = xor i64 %577, %578
  %580 = sub i64 5487137525590930912, %3
  %581 = xor i64 %552, %580
  %582 = add i64 %3, -8204357891075471176
  %583 = xor i64 %550, %582
  %584 = and i64 %583, 4294967295
  %585 = and i64 %581, 4294967295
  %586 = mul nuw i64 %585, %584
  %587 = lshr i64 %583, 32
  %588 = mul nuw i64 %585, %587
  %589 = lshr i64 %581, 32
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
  %604 = add i64 %603, %544
  %605 = add i64 %549, %547
  %606 = xor i64 %604, %605
  %607 = getelementptr inbounds nuw i8, ptr %1, i32 64
  %608 = getelementptr inbounds nuw i8, ptr %1, i32 80
  %609 = load i64, ptr %607, align 1, !alias.scope !30, !noalias !33
  %610 = getelementptr i8, ptr %1, i32 72
  %611 = load i64, ptr %610, align 1, !alias.scope !30, !noalias !33
  %612 = load i64, ptr %608, align 1, !alias.scope !30, !noalias !33
  %613 = getelementptr i8, ptr %1, i32 88
  %614 = load i64, ptr %613, align 1, !alias.scope !30, !noalias !33
  %615 = sub i64 -6688317018830679928, %3
  %616 = xor i64 %611, %615
  %617 = add i64 %3, -3818837453329782724
  %618 = xor i64 %609, %617
  %619 = and i64 %618, 4294967295
  %620 = and i64 %616, 4294967295
  %621 = mul nuw i64 %620, %619
  %622 = lshr i64 %618, 32
  %623 = mul nuw i64 %620, %622
  %624 = lshr i64 %616, 32
  %625 = mul nuw i64 %624, %619
  %626 = mul nuw i64 %624, %622
  %627 = lshr i64 %621, 32
  %628 = and i64 %623, 4294967295
  %629 = add nuw i64 %628, %625
  %630 = add nuw i64 %629, %627
  %631 = lshr i64 %623, 32
  %632 = lshr i64 %630, 32
  %633 = add nuw i64 %631, %626
  %634 = add nuw i64 %633, %632
  %635 = shl i64 %630, 32
  %636 = and i64 %621, 4294967295
  %637 = or disjoint i64 %635, %636
  %638 = xor i64 %637, %634
  %639 = add i64 %638, %579
  %640 = add i64 %614, %612
  %641 = xor i64 %639, %640
  %642 = sub i64 -2833645246901970632, %3
  %643 = xor i64 %614, %642
  %644 = add i64 %3, 5690594596133299313
  %645 = xor i64 %612, %644
  %646 = and i64 %645, 4294967295
  %647 = and i64 %643, 4294967295
  %648 = mul nuw i64 %647, %646
  %649 = lshr i64 %645, 32
  %650 = mul nuw i64 %647, %649
  %651 = lshr i64 %643, 32
  %652 = mul nuw i64 %651, %646
  %653 = mul nuw i64 %651, %649
  %654 = lshr i64 %648, 32
  %655 = and i64 %650, 4294967295
  %656 = add nuw i64 %655, %652
  %657 = add nuw i64 %656, %654
  %658 = lshr i64 %650, 32
  %659 = lshr i64 %657, 32
  %660 = add nuw i64 %658, %653
  %661 = add nuw i64 %660, %659
  %662 = shl i64 %657, 32
  %663 = and i64 %648, 4294967295
  %664 = or disjoint i64 %662, %663
  %665 = xor i64 %664, %661
  %666 = add i64 %665, %606
  %667 = add i64 %611, %609
  %668 = xor i64 %666, %667
  %669 = getelementptr inbounds nuw i8, ptr %1, i32 96
  %670 = getelementptr inbounds nuw i8, ptr %1, i32 112
  %671 = load i64, ptr %669, align 1, !alias.scope !30, !noalias !33
  %672 = getelementptr i8, ptr %1, i32 104
  %673 = load i64, ptr %672, align 1, !alias.scope !30, !noalias !33
  %674 = load i64, ptr %670, align 1, !alias.scope !30, !noalias !33
  %675 = getelementptr i8, ptr %1, i32 120
  %676 = load i64, ptr %675, align 1, !alias.scope !30, !noalias !33
  %677 = sub i64 2111919702937427193, %3
  %678 = xor i64 %673, %677
  %679 = add i64 %3, 4554437623014685352
  %680 = xor i64 %671, %679
  %681 = and i64 %680, 4294967295
  %682 = and i64 %678, 4294967295
  %683 = mul nuw i64 %682, %681
  %684 = lshr i64 %680, 32
  %685 = mul nuw i64 %682, %684
  %686 = lshr i64 %678, 32
  %687 = mul nuw i64 %686, %681
  %688 = mul nuw i64 %686, %684
  %689 = lshr i64 %683, 32
  %690 = and i64 %685, 4294967295
  %691 = add nuw i64 %690, %687
  %692 = add nuw i64 %691, %689
  %693 = lshr i64 %685, 32
  %694 = lshr i64 %692, 32
  %695 = add nuw i64 %693, %688
  %696 = add nuw i64 %695, %694
  %697 = shl i64 %692, 32
  %698 = and i64 %683, 4294967295
  %699 = or disjoint i64 %697, %698
  %700 = xor i64 %699, %696
  %701 = add i64 %700, %641
  %702 = add i64 %676, %674
  %703 = xor i64 %701, %702
  %704 = sub i64 7238261902898274248, %3
  %705 = xor i64 %676, %704
  %706 = add i64 %3, 3556072174620004746
  %707 = xor i64 %674, %706
  %708 = and i64 %707, 4294967295
  %709 = and i64 %705, 4294967295
  %710 = mul nuw i64 %709, %708
  %711 = lshr i64 %707, 32
  %712 = mul nuw i64 %709, %711
  %713 = lshr i64 %705, 32
  %714 = mul nuw i64 %713, %708
  %715 = mul nuw i64 %713, %711
  %716 = lshr i64 %710, 32
  %717 = and i64 %712, 4294967295
  %718 = add nuw i64 %717, %714
  %719 = add nuw i64 %718, %716
  %720 = lshr i64 %712, 32
  %721 = lshr i64 %719, 32
  %722 = add nuw i64 %720, %715
  %723 = add nuw i64 %722, %721
  %724 = shl i64 %719, 32
  %725 = and i64 %710, 4294967295
  %726 = or disjoint i64 %724, %725
  %727 = xor i64 %726, %723
  %728 = add i64 %727, %668
  %729 = add i64 %673, %671
  %730 = xor i64 %728, %729
  %731 = lshr i32 %2, 5
  %732 = lshr i64 %703, 37
  %733 = xor i64 %732, %703
  %734 = mul i64 %733, 1609587791953885689
  %735 = lshr i64 %734, 32
  %736 = xor i64 %735, %734
  %737 = lshr i64 %730, 37
  %738 = xor i64 %737, %730
  %739 = mul i64 %738, 1609587791953885689
  %740 = lshr i64 %739, 32
  %741 = xor i64 %740, %739
  %742 = icmp eq i32 %731, 4
  br i1 %742, label %820, label %743

743:                                              ; preds = %482, %743
  %744 = phi i32 [ %818, %743 ], [ 4, %482 ]
  %745 = phi i64 [ %817, %743 ], [ %741, %482 ]
  %746 = phi i64 [ %786, %743 ], [ %736, %482 ]
  %747 = shl i32 %744, 5
  %748 = getelementptr i8, ptr getelementptr (i8, ptr @XXH3_kSecret, i32 -125), i32 %747
  %749 = getelementptr inbounds nuw i8, ptr %1, i32 %747
  %750 = getelementptr inbounds nuw i8, ptr %749, i32 16
  %751 = load i64, ptr %749, align 1, !alias.scope !30, !noalias !33
  %752 = getelementptr i8, ptr %749, i32 8
  %753 = load i64, ptr %752, align 1, !alias.scope !30, !noalias !33
  %754 = load i64, ptr %750, align 1, !alias.scope !30, !noalias !33
  %755 = getelementptr i8, ptr %749, i32 24
  %756 = load i64, ptr %755, align 1, !alias.scope !30, !noalias !33
  %757 = load i64, ptr %748, align 1, !noalias !35
  %758 = getelementptr i8, ptr %748, i32 8
  %759 = load i64, ptr %758, align 1, !noalias !35
  %760 = sub i64 %759, %3
  %761 = xor i64 %760, %753
  %762 = add i64 %757, %3
  %763 = xor i64 %762, %751
  %764 = and i64 %763, 4294967295
  %765 = and i64 %761, 4294967295
  %766 = mul nuw i64 %765, %764
  %767 = lshr i64 %763, 32
  %768 = mul nuw i64 %765, %767
  %769 = lshr i64 %761, 32
  %770 = mul nuw i64 %769, %764
  %771 = mul nuw i64 %769, %767
  %772 = lshr i64 %766, 32
  %773 = and i64 %768, 4294967295
  %774 = add nuw i64 %773, %770
  %775 = add nuw i64 %774, %772
  %776 = lshr i64 %768, 32
  %777 = lshr i64 %775, 32
  %778 = add nuw i64 %776, %771
  %779 = add nuw i64 %778, %777
  %780 = shl i64 %775, 32
  %781 = and i64 %766, 4294967295
  %782 = or disjoint i64 %780, %781
  %783 = xor i64 %782, %779
  %784 = add i64 %783, %746
  %785 = add i64 %756, %754
  %786 = xor i64 %784, %785
  %787 = getelementptr inbounds nuw i8, ptr %748, i32 16
  %788 = load i64, ptr %787, align 1, !noalias !35
  %789 = getelementptr i8, ptr %748, i32 24
  %790 = load i64, ptr %789, align 1, !noalias !35
  %791 = sub i64 %790, %3
  %792 = xor i64 %791, %756
  %793 = add i64 %788, %3
  %794 = xor i64 %793, %754
  %795 = and i64 %794, 4294967295
  %796 = and i64 %792, 4294967295
  %797 = mul nuw i64 %796, %795
  %798 = lshr i64 %794, 32
  %799 = mul nuw i64 %796, %798
  %800 = lshr i64 %792, 32
  %801 = mul nuw i64 %800, %795
  %802 = mul nuw i64 %800, %798
  %803 = lshr i64 %797, 32
  %804 = and i64 %799, 4294967295
  %805 = add nuw i64 %804, %801
  %806 = add nuw i64 %805, %803
  %807 = lshr i64 %799, 32
  %808 = lshr i64 %806, 32
  %809 = add nuw i64 %807, %802
  %810 = add nuw i64 %809, %808
  %811 = shl i64 %806, 32
  %812 = and i64 %797, 4294967295
  %813 = or disjoint i64 %811, %812
  %814 = xor i64 %813, %810
  %815 = add i64 %814, %745
  %816 = add i64 %753, %751
  %817 = xor i64 %815, %816
  %818 = add nuw nsw i32 %744, 1
  %819 = icmp eq i32 %818, %731
  br i1 %819, label %820, label %743, !llvm.loop !38

820:                                              ; preds = %743, %482
  %821 = phi i64 [ %736, %482 ], [ %786, %743 ]
  %822 = phi i64 [ %741, %482 ], [ %817, %743 ]
  %823 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %824 = getelementptr inbounds i8, ptr %823, i32 -32
  %825 = getelementptr inbounds i8, ptr %823, i32 -16
  %826 = load i64, ptr %825, align 1, !alias.scope !30, !noalias !33
  %827 = getelementptr i8, ptr %823, i32 -8
  %828 = load i64, ptr %827, align 1, !alias.scope !30, !noalias !33
  %829 = load i64, ptr %824, align 1, !alias.scope !30, !noalias !33
  %830 = getelementptr i8, ptr %823, i32 -24
  %831 = load i64, ptr %830, align 1, !alias.scope !30, !noalias !33
  %832 = add i64 %3, 6464017090953185821
  %833 = xor i64 %828, %832
  %834 = sub i64 5695865814404364607, %3
  %835 = xor i64 %826, %834
  %836 = and i64 %835, 4294967295
  %837 = and i64 %833, 4294967295
  %838 = mul nuw i64 %837, %836
  %839 = lshr i64 %835, 32
  %840 = mul nuw i64 %837, %839
  %841 = lshr i64 %833, 32
  %842 = mul nuw i64 %841, %836
  %843 = mul nuw i64 %841, %839
  %844 = lshr i64 %838, 32
  %845 = and i64 %840, 4294967295
  %846 = add nuw i64 %845, %842
  %847 = add nuw i64 %846, %844
  %848 = lshr i64 %840, 32
  %849 = lshr i64 %847, 32
  %850 = add nuw i64 %848, %843
  %851 = add nuw i64 %850, %849
  %852 = shl i64 %847, 32
  %853 = and i64 %838, 4294967295
  %854 = or disjoint i64 %852, %853
  %855 = xor i64 %854, %851
  %856 = add i64 %855, %821
  %857 = add i64 %831, %829
  %858 = xor i64 %856, %857
  %859 = add i64 %3, -1453760514566526364
  %860 = xor i64 %831, %859
  %861 = sub i64 8320639771003045937, %3
  %862 = xor i64 %829, %861
  %863 = and i64 %862, 4294967295
  %864 = and i64 %860, 4294967295
  %865 = mul nuw i64 %864, %863
  %866 = lshr i64 %862, 32
  %867 = mul nuw i64 %864, %866
  %868 = lshr i64 %860, 32
  %869 = mul nuw i64 %868, %863
  %870 = mul nuw i64 %868, %866
  %871 = lshr i64 %865, 32
  %872 = and i64 %867, 4294967295
  %873 = add nuw i64 %872, %869
  %874 = add nuw i64 %873, %871
  %875 = lshr i64 %867, 32
  %876 = lshr i64 %874, 32
  %877 = add nuw i64 %875, %870
  %878 = add nuw i64 %877, %876
  %879 = shl i64 %874, 32
  %880 = and i64 %865, 4294967295
  %881 = or disjoint i64 %879, %880
  %882 = xor i64 %881, %878
  %883 = add i64 %882, %822
  %884 = add i64 %828, %826
  %885 = xor i64 %883, %884
  %886 = add i64 %885, %858
  %887 = mul i64 %858, -7046029288634856825
  %888 = mul i64 %885, -8796714831421723037
  %889 = sub i64 %483, %3
  %890 = mul i64 %889, -4417276706812531889
  %891 = add i64 %887, %890
  %892 = add i64 %891, %888
  %893 = lshr i64 %886, 37
  %894 = xor i64 %893, %886
  %895 = mul i64 %894, 1609587791953885689
  %896 = lshr i64 %895, 32
  %897 = xor i64 %896, %895
  %898 = lshr i64 %892, 37
  %899 = xor i64 %898, %892
  %900 = mul i64 %899, 1609587791953885689
  %901 = lshr i64 %900, 32
  %902 = xor i64 %901, %900
  %903 = sub i64 0, %902
  br label %947

904:                                              ; preds = %480
  %905 = icmp eq i64 %3, 0
  br i1 %905, label %906, label %913

906:                                              ; preds = %904
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !39
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !39
  call arm_aapcs_vfpcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %1, i32 noundef %2, ptr noundef nonnull @XXH3_kSecret, i32 noundef 192), !noalias !49
  %907 = zext i32 %2 to i64
  %908 = mul i64 %907, -7046029288634856825
  %909 = call arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 11), i64 noundef %908), !noalias !50
  %910 = mul i64 %907, -4417276706812531889
  %911 = xor i64 %910, -1
  %912 = call arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 117), i64 noundef %911), !noalias !50
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !39
  br label %947

913:                                              ; preds = %904
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #12, !noalias !51
  %914 = insertelement <4 x i64> poison, i64 %3, i64 0
  %915 = shufflevector <4 x i64> %914, <4 x i64> poison, <4 x i32> zeroinitializer
  %916 = add <4 x i64> %915, <i64 -4734510112055689544, i64 poison, i64 -2623469361688619810, i64 poison>
  %917 = sub <4 x i64> <i64 poison, i64 2066345149520216444, i64 poison, i64 2262974939099578482>, %915
  %918 = shufflevector <4 x i64> %916, <4 x i64> %917, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %918, ptr %7, align 8, !alias.scope !52, !noalias !51
  %919 = add <4 x i64> %915, <i64 8711581037947681227, i64 poison, i64 -8204357891075471176, i64 poison>
  %920 = sub <4 x i64> <i64 poison, i64 2410270004345854594, i64 poison, i64 5487137525590930912>, %915
  %921 = shufflevector <4 x i64> %919, <4 x i64> %920, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %922 = getelementptr inbounds nuw i8, ptr %7, i32 32
  store <4 x i64> %921, ptr %922, align 8, !alias.scope !52, !noalias !51
  %923 = add <4 x i64> %915, <i64 -3818837453329782724, i64 poison, i64 5690594596133299313, i64 poison>
  %924 = sub <4 x i64> <i64 poison, i64 -6688317018830679928, i64 poison, i64 -2833645246901970632>, %915
  %925 = shufflevector <4 x i64> %923, <4 x i64> %924, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %926 = getelementptr inbounds nuw i8, ptr %7, i32 64
  store <4 x i64> %925, ptr %926, align 8, !alias.scope !52, !noalias !51
  %927 = add <4 x i64> %915, <i64 4554437623014685352, i64 poison, i64 3556072174620004746, i64 poison>
  %928 = sub <4 x i64> <i64 poison, i64 2111919702937427193, i64 poison, i64 7238261902898274248>, %915
  %929 = shufflevector <4 x i64> %927, <4 x i64> %928, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %930 = getelementptr inbounds nuw i8, ptr %7, i32 96
  store <4 x i64> %929, ptr %930, align 8, !alias.scope !52, !noalias !51
  %931 = add <4 x i64> %915, <i64 -4329134394285701654, i64 poison, i64 5321830579834785047, i64 poison>
  %932 = sub <4 x i64> <i64 poison, i64 -1485321483350670907, i64 poison, i64 -7032137544937171245>, %915
  %933 = shufflevector <4 x i64> %931, <4 x i64> %932, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %934 = getelementptr inbounds nuw i8, ptr %7, i32 128
  store <4 x i64> %933, ptr %934, align 8, !alias.scope !52, !noalias !51
  %935 = add <4 x i64> %915, <i64 -242834301215959509, i64 poison, i64 2883454493032893253, i64 poison>
  %936 = sub <4 x i64> <i64 poison, i64 -3588858202114426737, i64 poison, i64 9097354517224871855>, %915
  %937 = shufflevector <4 x i64> %935, <4 x i64> %936, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %938 = getelementptr inbounds nuw i8, ptr %7, i32 160
  store <4 x i64> %937, ptr %938, align 8, !alias.scope !52, !noalias !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12, !noalias !55
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !55
  call arm_aapcs_vfpcc void @XXH3_hashLong_internal_loop(ptr noundef %5, ptr noundef readonly %1, i32 noundef %2, ptr noundef nonnull readonly %7, i32 noundef 192), !noalias !60
  %939 = zext i32 %2 to i64
  %940 = mul i64 %939, -7046029288634856825
  %941 = getelementptr inbounds nuw i8, ptr %7, i32 11
  %942 = call arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noundef %5, ptr noundef nonnull readonly %941, i64 noundef %940), !noalias !61
  %943 = mul i64 %939, -4417276706812531889
  %944 = xor i64 %943, -1
  %945 = getelementptr inbounds nuw i8, ptr %7, i32 117
  %946 = call arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noundef %5, ptr noundef nonnull readonly %945, i64 noundef %944), !noalias !61
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12, !noalias !55
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #12, !noalias !51
  br label %947

947:                                              ; preds = %906, %913, %11, %80, %132, %173, %397, %820
  %948 = phi i64 [ %77, %11 ], [ %129, %80 ], [ %191, %173 ], [ %172, %132 ], [ %479, %397 ], [ %903, %820 ], [ %912, %906 ], [ %946, %913 ]
  %949 = phi i64 [ %72, %11 ], [ %124, %80 ], [ %182, %173 ], [ %163, %132 ], [ %473, %397 ], [ %897, %820 ], [ %909, %906 ], [ %942, %913 ]
  store i64 %949, ptr %0, align 8
  %950 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %948, ptr %950, align 8
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

; Function Attrs: nounwind uwtable
define internal arm_aapcs_vfpcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i32 noundef %1, i64 noundef %2, ptr noalias noundef %3, i32 noundef range(i32 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #2 {
  %7 = icmp ult i32 %1, 17
  br i1 %7, label %8, label %89

8:                                                ; preds = %6
  %9 = icmp samesign ugt i32 %1, 8
  br i1 %9, label %10, label %59, !prof !62

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
  %30 = tail call i64 @llvm.bswap.i64(i64 %24)
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
  br label %506

59:                                               ; preds = %8
  %60 = icmp samesign ugt i32 %1, 3
  br i1 %60, label %61, label %67, !prof !62

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %3, i32 8
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr i8, ptr %3, i32 16
  %65 = load i64, ptr %64, align 1
  %66 = tail call arm_aapcs_vfpcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i32 noundef range(i32 0, 17) %1, i64 %63, i64 %65, i64 noundef %2)
  br label %506

67:                                               ; preds = %59
  %68 = icmp eq i32 %1, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %3, align 1
  %71 = getelementptr i8, ptr %3, i32 4
  %72 = load i32, ptr %71, align 1
  %73 = tail call arm_aapcs_vfpcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i32 noundef range(i32 0, 17) %1, i32 %70, i32 %72, i64 noundef %2)
  br label %506

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
  br label %506

89:                                               ; preds = %6
  %90 = icmp ult i32 %1, 129
  br i1 %90, label %91, label %377

91:                                               ; preds = %89
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
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
  %100 = getelementptr inbounds nuw i8, ptr %3, i32 96
  %101 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %102 = load i64, ptr %101, align 1, !alias.scope !63, !noalias !66
  %103 = getelementptr i8, ptr %0, i32 56
  %104 = load i64, ptr %103, align 1, !alias.scope !63, !noalias !66
  %105 = load i64, ptr %100, align 1, !alias.scope !66, !noalias !63
  %106 = getelementptr i8, ptr %3, i32 104
  %107 = load i64, ptr %106, align 1, !alias.scope !66, !noalias !63
  %108 = sub i64 %107, %2
  %109 = xor i64 %108, %104
  %110 = add i64 %105, %2
  %111 = xor i64 %110, %102
  %112 = and i64 %111, 4294967295
  %113 = and i64 %109, 4294967295
  %114 = mul nuw i64 %113, %112
  %115 = lshr i64 %111, 32
  %116 = mul nuw i64 %113, %115
  %117 = lshr i64 %109, 32
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
  %133 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %134 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %135 = getelementptr inbounds i8, ptr %134, i32 -64
  %136 = load i64, ptr %135, align 1, !alias.scope !63, !noalias !66
  %137 = getelementptr i8, ptr %134, i32 -56
  %138 = load i64, ptr %137, align 1, !alias.scope !63, !noalias !66
  %139 = load i64, ptr %133, align 1, !alias.scope !66, !noalias !63
  %140 = getelementptr i8, ptr %3, i32 120
  %141 = load i64, ptr %140, align 1, !alias.scope !66, !noalias !63
  %142 = sub i64 %141, %2
  %143 = xor i64 %142, %138
  %144 = add i64 %139, %2
  %145 = xor i64 %144, %136
  %146 = and i64 %145, 4294967295
  %147 = and i64 %143, 4294967295
  %148 = mul nuw i64 %147, %146
  %149 = lshr i64 %145, 32
  %150 = mul nuw i64 %147, %149
  %151 = lshr i64 %143, 32
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
  %169 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %170 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %171 = load i64, ptr %170, align 1, !alias.scope !63, !noalias !66
  %172 = getelementptr i8, ptr %0, i32 40
  %173 = load i64, ptr %172, align 1, !alias.scope !63, !noalias !66
  %174 = load i64, ptr %169, align 1, !alias.scope !66, !noalias !63
  %175 = getelementptr i8, ptr %3, i32 72
  %176 = load i64, ptr %175, align 1, !alias.scope !66, !noalias !63
  %177 = sub i64 %176, %2
  %178 = xor i64 %177, %173
  %179 = add i64 %174, %2
  %180 = xor i64 %179, %171
  %181 = and i64 %180, 4294967295
  %182 = and i64 %178, 4294967295
  %183 = mul nuw i64 %182, %181
  %184 = lshr i64 %180, 32
  %185 = mul nuw i64 %182, %184
  %186 = lshr i64 %178, 32
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
  %202 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %203 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %204 = getelementptr inbounds i8, ptr %203, i32 -48
  %205 = load i64, ptr %204, align 1, !alias.scope !63, !noalias !66
  %206 = getelementptr i8, ptr %203, i32 -40
  %207 = load i64, ptr %206, align 1, !alias.scope !63, !noalias !66
  %208 = load i64, ptr %202, align 1, !alias.scope !66, !noalias !63
  %209 = getelementptr i8, ptr %3, i32 88
  %210 = load i64, ptr %209, align 1, !alias.scope !66, !noalias !63
  %211 = sub i64 %210, %2
  %212 = xor i64 %211, %207
  %213 = add i64 %208, %2
  %214 = xor i64 %213, %205
  %215 = and i64 %214, 4294967295
  %216 = and i64 %212, 4294967295
  %217 = mul nuw i64 %216, %215
  %218 = lshr i64 %214, 32
  %219 = mul nuw i64 %216, %218
  %220 = lshr i64 %212, 32
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
  %238 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %239 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %240 = load i64, ptr %239, align 1, !alias.scope !63, !noalias !66
  %241 = getelementptr i8, ptr %0, i32 24
  %242 = load i64, ptr %241, align 1, !alias.scope !63, !noalias !66
  %243 = load i64, ptr %238, align 1, !alias.scope !66, !noalias !63
  %244 = getelementptr i8, ptr %3, i32 40
  %245 = load i64, ptr %244, align 1, !alias.scope !66, !noalias !63
  %246 = sub i64 %245, %2
  %247 = xor i64 %246, %242
  %248 = add i64 %243, %2
  %249 = xor i64 %248, %240
  %250 = and i64 %249, 4294967295
  %251 = and i64 %247, 4294967295
  %252 = mul nuw i64 %251, %250
  %253 = lshr i64 %249, 32
  %254 = mul nuw i64 %251, %253
  %255 = lshr i64 %247, 32
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
  %271 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %272 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %273 = getelementptr inbounds i8, ptr %272, i32 -32
  %274 = load i64, ptr %273, align 1, !alias.scope !63, !noalias !66
  %275 = getelementptr i8, ptr %272, i32 -24
  %276 = load i64, ptr %275, align 1, !alias.scope !63, !noalias !66
  %277 = load i64, ptr %271, align 1, !alias.scope !66, !noalias !63
  %278 = getelementptr i8, ptr %3, i32 56
  %279 = load i64, ptr %278, align 1, !alias.scope !66, !noalias !63
  %280 = sub i64 %279, %2
  %281 = xor i64 %280, %276
  %282 = add i64 %277, %2
  %283 = xor i64 %282, %274
  %284 = and i64 %283, 4294967295
  %285 = and i64 %281, 4294967295
  %286 = mul nuw i64 %285, %284
  %287 = lshr i64 %283, 32
  %288 = mul nuw i64 %285, %287
  %289 = lshr i64 %281, 32
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
  %307 = load i64, ptr %0, align 1, !alias.scope !63, !noalias !66
  %308 = getelementptr i8, ptr %0, i32 8
  %309 = load i64, ptr %308, align 1, !alias.scope !63, !noalias !66
  %310 = load i64, ptr %3, align 1, !alias.scope !66, !noalias !63
  %311 = getelementptr i8, ptr %3, i32 8
  %312 = load i64, ptr %311, align 1, !alias.scope !66, !noalias !63
  %313 = sub i64 %312, %2
  %314 = xor i64 %313, %309
  %315 = add i64 %310, %2
  %316 = xor i64 %315, %307
  %317 = and i64 %316, 4294967295
  %318 = and i64 %314, 4294967295
  %319 = mul nuw i64 %318, %317
  %320 = lshr i64 %316, 32
  %321 = mul nuw i64 %318, %320
  %322 = lshr i64 %314, 32
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
  %338 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %339 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %340 = getelementptr inbounds i8, ptr %339, i32 -16
  %341 = load i64, ptr %340, align 1, !alias.scope !63, !noalias !66
  %342 = getelementptr i8, ptr %339, i32 -8
  %343 = load i64, ptr %342, align 1, !alias.scope !63, !noalias !66
  %344 = load i64, ptr %338, align 1, !alias.scope !66, !noalias !63
  %345 = getelementptr i8, ptr %3, i32 24
  %346 = load i64, ptr %345, align 1, !alias.scope !66, !noalias !63
  %347 = sub i64 %346, %2
  %348 = xor i64 %347, %343
  %349 = add i64 %344, %2
  %350 = xor i64 %349, %341
  %351 = and i64 %350, 4294967295
  %352 = and i64 %348, 4294967295
  %353 = mul nuw i64 %352, %351
  %354 = lshr i64 %350, 32
  %355 = mul nuw i64 %352, %354
  %356 = lshr i64 %348, 32
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
  br label %506

377:                                              ; preds = %89
  %378 = icmp ult i32 %1, 241
  br i1 %378, label %379, label %504

379:                                              ; preds = %377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %380 = zext nneg i32 %1 to i64
  %381 = mul i64 %380, -7046029288634856825
  %382 = load <16 x i64>, ptr %0, align 1, !alias.scope !68, !noalias !71
  %383 = load <16 x i64>, ptr %3, align 1, !alias.scope !71, !noalias !68
  %384 = shufflevector <16 x i64> %383, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %385 = insertelement <8 x i64> poison, i64 %2, i64 0
  %386 = shufflevector <8 x i64> %385, <8 x i64> poison, <8 x i32> zeroinitializer
  %387 = sub <8 x i64> %384, %386
  %388 = shufflevector <16 x i64> %382, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %389 = xor <8 x i64> %387, %388
  %390 = shufflevector <16 x i64> %383, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %391 = add <8 x i64> %390, %386
  %392 = shufflevector <16 x i64> %382, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %393 = xor <8 x i64> %391, %392
  %394 = and <8 x i64> %393, splat (i64 4294967295)
  %395 = and <8 x i64> %389, splat (i64 4294967295)
  %396 = mul nuw <8 x i64> %395, %394
  %397 = lshr <8 x i64> %393, splat (i64 32)
  %398 = mul nuw <8 x i64> %395, %397
  %399 = lshr <8 x i64> %389, splat (i64 32)
  %400 = mul nuw <8 x i64> %399, %394
  %401 = mul nuw <8 x i64> %399, %397
  %402 = lshr <8 x i64> %396, splat (i64 32)
  %403 = and <8 x i64> %398, splat (i64 4294967295)
  %404 = add nuw <8 x i64> %403, %400
  %405 = add nuw <8 x i64> %404, %402
  %406 = lshr <8 x i64> %398, splat (i64 32)
  %407 = lshr <8 x i64> %405, splat (i64 32)
  %408 = add nuw <8 x i64> %406, %401
  %409 = add nuw <8 x i64> %408, %407
  %410 = shl <8 x i64> %405, splat (i64 32)
  %411 = and <8 x i64> %396, splat (i64 4294967295)
  %412 = or disjoint <8 x i64> %410, %411
  %413 = xor <8 x i64> %412, %409
  %414 = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %413)
  %415 = add i64 %414, %381
  %416 = lshr i32 %1, 4
  %417 = lshr i64 %415, 37
  %418 = xor i64 %417, %415
  %419 = mul i64 %418, 1609587791953885689
  %420 = lshr i64 %419, 32
  %421 = xor i64 %420, %419
  %422 = icmp eq i32 %416, 8
  br i1 %422, label %463, label %423

423:                                              ; preds = %379, %423
  %424 = phi i32 [ %461, %423 ], [ 8, %379 ]
  %425 = phi i64 [ %460, %423 ], [ %421, %379 ]
  %426 = shl i32 %424, 4
  %427 = getelementptr i8, ptr %3, i32 %426
  %428 = getelementptr i8, ptr %427, i32 -125
  %429 = getelementptr inbounds nuw i8, ptr %0, i32 %426
  %430 = load i64, ptr %429, align 1, !alias.scope !68, !noalias !71
  %431 = getelementptr i8, ptr %429, i32 8
  %432 = load i64, ptr %431, align 1, !alias.scope !68, !noalias !71
  %433 = load i64, ptr %428, align 1, !alias.scope !71, !noalias !68
  %434 = getelementptr i8, ptr %427, i32 -117
  %435 = load i64, ptr %434, align 1, !alias.scope !71, !noalias !68
  %436 = sub i64 %435, %2
  %437 = xor i64 %436, %432
  %438 = add i64 %433, %2
  %439 = xor i64 %438, %430
  %440 = and i64 %439, 4294967295
  %441 = and i64 %437, 4294967295
  %442 = mul nuw i64 %441, %440
  %443 = lshr i64 %439, 32
  %444 = mul nuw i64 %441, %443
  %445 = lshr i64 %437, 32
  %446 = mul nuw i64 %445, %440
  %447 = mul nuw i64 %445, %443
  %448 = lshr i64 %442, 32
  %449 = and i64 %444, 4294967295
  %450 = add nuw i64 %449, %446
  %451 = add nuw i64 %450, %448
  %452 = lshr i64 %444, 32
  %453 = lshr i64 %451, 32
  %454 = add nuw i64 %452, %447
  %455 = add nuw i64 %454, %453
  %456 = shl i64 %451, 32
  %457 = and i64 %442, 4294967295
  %458 = or disjoint i64 %456, %457
  %459 = xor i64 %458, %455
  %460 = add i64 %459, %425
  %461 = add nuw nsw i32 %424, 1
  %462 = icmp eq i32 %461, %416
  br i1 %462, label %463, label %423, !llvm.loop !73

463:                                              ; preds = %423, %379
  %464 = phi i64 [ %421, %379 ], [ %460, %423 ]
  %465 = getelementptr inbounds nuw i8, ptr %3, i32 119
  %466 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %467 = getelementptr inbounds i8, ptr %466, i32 -16
  %468 = load i64, ptr %467, align 1, !alias.scope !68, !noalias !71
  %469 = getelementptr i8, ptr %466, i32 -8
  %470 = load i64, ptr %469, align 1, !alias.scope !68, !noalias !71
  %471 = load i64, ptr %465, align 1, !alias.scope !71, !noalias !68
  %472 = getelementptr i8, ptr %3, i32 127
  %473 = load i64, ptr %472, align 1, !alias.scope !71, !noalias !68
  %474 = sub i64 %473, %2
  %475 = xor i64 %474, %470
  %476 = add i64 %471, %2
  %477 = xor i64 %476, %468
  %478 = and i64 %477, 4294967295
  %479 = and i64 %475, 4294967295
  %480 = mul nuw i64 %479, %478
  %481 = lshr i64 %477, 32
  %482 = mul nuw i64 %479, %481
  %483 = lshr i64 %475, 32
  %484 = mul nuw i64 %483, %478
  %485 = mul nuw i64 %483, %481
  %486 = lshr i64 %480, 32
  %487 = and i64 %482, 4294967295
  %488 = add nuw i64 %487, %484
  %489 = add nuw i64 %488, %486
  %490 = lshr i64 %482, 32
  %491 = lshr i64 %489, 32
  %492 = add nuw i64 %490, %485
  %493 = add nuw i64 %492, %491
  %494 = shl i64 %489, 32
  %495 = and i64 %480, 4294967295
  %496 = or disjoint i64 %494, %495
  %497 = xor i64 %496, %493
  %498 = add i64 %497, %464
  %499 = lshr i64 %498, 37
  %500 = xor i64 %499, %498
  %501 = mul i64 %500, 1609587791953885689
  %502 = lshr i64 %501, 32
  %503 = xor i64 %502, %501
  br label %506

504:                                              ; preds = %377
  %505 = tail call arm_aapcs_vfpcc i64 %5(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #12, !callees !75
  br label %506

506:                                              ; preds = %74, %69, %61, %10, %504, %463, %305
  %507 = phi i64 [ %376, %305 ], [ %503, %463 ], [ %505, %504 ], [ %58, %10 ], [ %66, %61 ], [ %73, %69 ], [ %88, %74 ]
  ret i64 %507
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal arm_aapcs_vfpcc i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr nocapture readnone %3, i32 %4) #3 {
  %6 = alloca [8 x i64], align 16
  %7 = alloca [8 x i64], align 16
  %8 = alloca [192 x i8], align 8
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12, !noalias !76
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !76
  call arm_aapcs_vfpcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i32 noundef %1, ptr noundef nonnull @XXH3_kSecret, i32 noundef 192)
  %11 = zext i32 %1 to i64
  %12 = mul i64 %11, -7046029288634856825
  %13 = call arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noundef %7, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 11), i64 noundef %12), !noalias !80
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12, !noalias !76
  br label %44

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #12
  %15 = insertelement <4 x i64> poison, i64 %2, i64 0
  %16 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> zeroinitializer
  %17 = add <4 x i64> %16, <i64 -4734510112055689544, i64 poison, i64 -2623469361688619810, i64 poison>
  %18 = sub <4 x i64> <i64 poison, i64 2066345149520216444, i64 poison, i64 2262974939099578482>, %16
  %19 = shufflevector <4 x i64> %17, <4 x i64> %18, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %19, ptr %8, align 8, !alias.scope !81
  %20 = add <4 x i64> %16, <i64 8711581037947681227, i64 poison, i64 -8204357891075471176, i64 poison>
  %21 = sub <4 x i64> <i64 poison, i64 2410270004345854594, i64 poison, i64 5487137525590930912>, %16
  %22 = shufflevector <4 x i64> %20, <4 x i64> %21, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %23 = getelementptr inbounds nuw i8, ptr %8, i32 32
  store <4 x i64> %22, ptr %23, align 8, !alias.scope !81
  %24 = add <4 x i64> %16, <i64 -3818837453329782724, i64 poison, i64 5690594596133299313, i64 poison>
  %25 = sub <4 x i64> <i64 poison, i64 -6688317018830679928, i64 poison, i64 -2833645246901970632>, %16
  %26 = shufflevector <4 x i64> %24, <4 x i64> %25, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %27 = getelementptr inbounds nuw i8, ptr %8, i32 64
  store <4 x i64> %26, ptr %27, align 8, !alias.scope !81
  %28 = add <4 x i64> %16, <i64 4554437623014685352, i64 poison, i64 3556072174620004746, i64 poison>
  %29 = sub <4 x i64> <i64 poison, i64 2111919702937427193, i64 poison, i64 7238261902898274248>, %16
  %30 = shufflevector <4 x i64> %28, <4 x i64> %29, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %31 = getelementptr inbounds nuw i8, ptr %8, i32 96
  store <4 x i64> %30, ptr %31, align 8, !alias.scope !81
  %32 = add <4 x i64> %16, <i64 -4329134394285701654, i64 poison, i64 5321830579834785047, i64 poison>
  %33 = sub <4 x i64> <i64 poison, i64 -1485321483350670907, i64 poison, i64 -7032137544937171245>, %16
  %34 = shufflevector <4 x i64> %32, <4 x i64> %33, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %35 = getelementptr inbounds nuw i8, ptr %8, i32 128
  store <4 x i64> %34, ptr %35, align 8, !alias.scope !81
  %36 = add <4 x i64> %16, <i64 -242834301215959509, i64 poison, i64 2883454493032893253, i64 poison>
  %37 = sub <4 x i64> <i64 poison, i64 -3588858202114426737, i64 poison, i64 9097354517224871855>, %16
  %38 = shufflevector <4 x i64> %36, <4 x i64> %37, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %39 = getelementptr inbounds nuw i8, ptr %8, i32 160
  store <4 x i64> %38, ptr %39, align 8, !alias.scope !81
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !84
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !84
  call arm_aapcs_vfpcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i32 noundef %1, ptr noundef nonnull readonly %8, i32 noundef 192)
  %40 = zext i32 %1 to i64
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %8, i32 11
  %43 = call arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %42, i64 noundef %41), !noalias !88
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !84
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #12
  br label %44

44:                                               ; preds = %10, %14
  %45 = phi i64 [ %13, %10 ], [ %43, %14 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal arm_aapcs_vfpcc i64 @XXH3_len_4to8_64b(ptr nocapture noundef readonly %0, i32 noundef range(i32 4, 9) %1, i64 %2, i64 %3, i64 noundef %4) unnamed_addr #7 {
  %6 = trunc i64 %4 to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal arm_aapcs_vfpcc i64 @XXH3_len_1to3_64b(ptr nocapture noundef readonly %0, i32 noundef range(i32 1, 4) %1, i32 %2, i32 %3, i64 noundef %4) unnamed_addr #7 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal arm_aapcs_vfpcc void @XXH3_hashLong_internal_loop(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i32 noundef %2, ptr noalias nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #3 {
  %6 = add i32 %4, -64
  %7 = lshr i32 %6, 3
  %8 = shl i32 %7, 6
  %9 = add i32 %2, -1
  %10 = udiv i32 %9, %8
  %11 = icmp ugt i32 %8, %9
  %12 = load <2 x i64>, ptr %0, align 8, !alias.scope !89, !noalias !92
  br i1 %11, label %152, label %13

13:                                               ; preds = %5
  %14 = icmp ult i32 %6, 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %18 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %19 = getelementptr inbounds i8, ptr %18, i32 -64
  %20 = load <2 x i64>, ptr %19, align 1, !alias.scope !95, !noalias !98
  %21 = getelementptr inbounds i8, ptr %18, i32 -48
  %22 = load <2 x i64>, ptr %21, align 1, !alias.scope !95, !noalias !98
  %23 = getelementptr inbounds i8, ptr %18, i32 -32
  %24 = load <2 x i64>, ptr %23, align 1, !alias.scope !95, !noalias !98
  %25 = getelementptr inbounds i8, ptr %18, i32 -16
  %26 = load <2 x i64>, ptr %25, align 1, !alias.scope !95, !noalias !98
  %27 = load <2 x i64>, ptr %15, align 8, !noalias !100
  %28 = load <2 x i64>, ptr %16, align 8, !noalias !100
  %29 = load <2 x i64>, ptr %17, align 8, !noalias !100
  br label %30

30:                                               ; preds = %13, %104
  %31 = phi <2 x i64> [ %29, %13 ], [ %148, %104 ]
  %32 = phi <2 x i64> [ %28, %13 ], [ %138, %104 ]
  %33 = phi <2 x i64> [ %27, %13 ], [ %128, %104 ]
  %34 = phi <2 x i64> [ %12, %13 ], [ %118, %104 ]
  %35 = phi i32 [ 0, %13 ], [ %149, %104 ]
  %36 = mul i32 %35, %8
  %37 = getelementptr inbounds nuw i8, ptr %1, i32 %36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  br i1 %14, label %104, label %38

38:                                               ; preds = %30, %38
  %39 = phi <2 x i64> [ %101, %38 ], [ %31, %30 ]
  %40 = phi <2 x i64> [ %87, %38 ], [ %32, %30 ]
  %41 = phi <2 x i64> [ %73, %38 ], [ %33, %30 ]
  %42 = phi <2 x i64> [ %59, %38 ], [ %34, %30 ]
  %43 = phi i32 [ %102, %38 ], [ 0, %30 ]
  %44 = shl i32 %43, 6
  %45 = getelementptr inbounds nuw i8, ptr %37, i32 %44
  %46 = shl nuw i32 %43, 3
  %47 = getelementptr inbounds nuw i8, ptr %3, i32 %46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %48 = load <16 x i8>, ptr %45, align 1, !alias.scope !111, !noalias !112
  %49 = load <16 x i8>, ptr %47, align 1, !alias.scope !115, !noalias !116
  %50 = bitcast <16 x i8> %48 to <2 x i64>
  %51 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %52 = add <2 x i64> %51, %42
  %53 = xor <16 x i8> %49, %48
  %54 = bitcast <16 x i8> %53 to <2 x i64>
  %55 = trunc <2 x i64> %54 to <2 x i32>
  %56 = lshr <2 x i64> %54, splat (i64 32)
  %57 = trunc nuw <2 x i64> %56 to <2 x i32>
  %58 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %55, <2 x i32> %57)
  %59 = add <2 x i64> %52, %58
  %60 = getelementptr inbounds nuw i8, ptr %45, i32 16
  %61 = load <16 x i8>, ptr %60, align 1, !alias.scope !111, !noalias !112
  %62 = getelementptr inbounds nuw i8, ptr %47, i32 16
  %63 = load <16 x i8>, ptr %62, align 1, !alias.scope !115, !noalias !116
  %64 = bitcast <16 x i8> %61 to <2 x i64>
  %65 = shufflevector <2 x i64> %64, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %66 = add <2 x i64> %65, %41
  %67 = xor <16 x i8> %63, %61
  %68 = bitcast <16 x i8> %67 to <2 x i64>
  %69 = trunc <2 x i64> %68 to <2 x i32>
  %70 = lshr <2 x i64> %68, splat (i64 32)
  %71 = trunc nuw <2 x i64> %70 to <2 x i32>
  %72 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %69, <2 x i32> %71)
  %73 = add <2 x i64> %66, %72
  %74 = getelementptr inbounds nuw i8, ptr %45, i32 32
  %75 = load <16 x i8>, ptr %74, align 1, !alias.scope !111, !noalias !112
  %76 = getelementptr inbounds nuw i8, ptr %47, i32 32
  %77 = load <16 x i8>, ptr %76, align 1, !alias.scope !115, !noalias !116
  %78 = bitcast <16 x i8> %75 to <2 x i64>
  %79 = shufflevector <2 x i64> %78, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %80 = add <2 x i64> %79, %40
  %81 = xor <16 x i8> %77, %75
  %82 = bitcast <16 x i8> %81 to <2 x i64>
  %83 = trunc <2 x i64> %82 to <2 x i32>
  %84 = lshr <2 x i64> %82, splat (i64 32)
  %85 = trunc nuw <2 x i64> %84 to <2 x i32>
  %86 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %83, <2 x i32> %85)
  %87 = add <2 x i64> %80, %86
  %88 = getelementptr inbounds nuw i8, ptr %45, i32 48
  %89 = load <16 x i8>, ptr %88, align 1, !alias.scope !111, !noalias !112
  %90 = getelementptr inbounds nuw i8, ptr %47, i32 48
  %91 = load <16 x i8>, ptr %90, align 1, !alias.scope !115, !noalias !116
  %92 = bitcast <16 x i8> %89 to <2 x i64>
  %93 = shufflevector <2 x i64> %92, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %94 = add <2 x i64> %93, %39
  %95 = xor <16 x i8> %91, %89
  %96 = bitcast <16 x i8> %95 to <2 x i64>
  %97 = trunc <2 x i64> %96 to <2 x i32>
  %98 = lshr <2 x i64> %96, splat (i64 32)
  %99 = trunc nuw <2 x i64> %98 to <2 x i32>
  %100 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %97, <2 x i32> %99)
  %101 = add <2 x i64> %94, %100
  %102 = add nuw nsw i32 %43, 1
  %103 = icmp eq i32 %102, %7
  br i1 %103, label %104, label %38, !llvm.loop !117

104:                                              ; preds = %38, %30
  %105 = phi <2 x i64> [ %31, %30 ], [ %101, %38 ]
  %106 = phi <2 x i64> [ %32, %30 ], [ %87, %38 ]
  %107 = phi <2 x i64> [ %33, %30 ], [ %73, %38 ]
  %108 = phi <2 x i64> [ %34, %30 ], [ %59, %38 ]
  %109 = lshr <2 x i64> %108, splat (i64 47)
  %110 = xor <2 x i64> %109, %20
  %111 = xor <2 x i64> %110, %108
  %112 = trunc <2 x i64> %111 to <2 x i32>
  %113 = lshr <2 x i64> %111, splat (i64 32)
  %114 = trunc nuw <2 x i64> %113 to <2 x i32>
  %115 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %114, <2 x i32> splat (i32 -1640531535))
  %116 = shl <2 x i64> %115, splat (i64 32)
  %117 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %112, <2 x i32> splat (i32 -1640531535))
  %118 = add <2 x i64> %116, %117
  %119 = lshr <2 x i64> %107, splat (i64 47)
  %120 = xor <2 x i64> %119, %22
  %121 = xor <2 x i64> %120, %107
  %122 = trunc <2 x i64> %121 to <2 x i32>
  %123 = lshr <2 x i64> %121, splat (i64 32)
  %124 = trunc nuw <2 x i64> %123 to <2 x i32>
  %125 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %124, <2 x i32> splat (i32 -1640531535))
  %126 = shl <2 x i64> %125, splat (i64 32)
  %127 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %122, <2 x i32> splat (i32 -1640531535))
  %128 = add <2 x i64> %126, %127
  %129 = lshr <2 x i64> %106, splat (i64 47)
  %130 = xor <2 x i64> %129, %24
  %131 = xor <2 x i64> %130, %106
  %132 = trunc <2 x i64> %131 to <2 x i32>
  %133 = lshr <2 x i64> %131, splat (i64 32)
  %134 = trunc nuw <2 x i64> %133 to <2 x i32>
  %135 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %134, <2 x i32> splat (i32 -1640531535))
  %136 = shl <2 x i64> %135, splat (i64 32)
  %137 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %132, <2 x i32> splat (i32 -1640531535))
  %138 = add <2 x i64> %136, %137
  %139 = lshr <2 x i64> %105, splat (i64 47)
  %140 = xor <2 x i64> %139, %26
  %141 = xor <2 x i64> %140, %105
  %142 = trunc <2 x i64> %141 to <2 x i32>
  %143 = lshr <2 x i64> %141, splat (i64 32)
  %144 = trunc nuw <2 x i64> %143 to <2 x i32>
  %145 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %144, <2 x i32> splat (i32 -1640531535))
  %146 = shl <2 x i64> %145, splat (i64 32)
  %147 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %142, <2 x i32> splat (i32 -1640531535))
  %148 = add <2 x i64> %146, %147
  %149 = add nuw i32 %35, 1
  %150 = icmp ult i32 %149, %10
  br i1 %150, label %30, label %151, !llvm.loop !118

151:                                              ; preds = %104
  store <2 x i64> %128, ptr %15, align 8, !noalias !100
  store <2 x i64> %138, ptr %16, align 8, !noalias !100
  store <2 x i64> %148, ptr %17, align 8, !noalias !100
  br label %152

152:                                              ; preds = %151, %5
  %153 = phi <2 x i64> [ %118, %151 ], [ %12, %5 ]
  %154 = mul i32 %10, %8
  %155 = sub i32 %9, %154
  %156 = lshr i32 %155, 6
  %157 = getelementptr inbounds nuw i8, ptr %1, i32 %154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %158 = icmp ult i32 %155, 64
  %159 = getelementptr inbounds nuw i8, ptr %0, i32 16
  br i1 %158, label %160, label %166

160:                                              ; preds = %152
  %161 = load <2 x i64>, ptr %159, align 8, !alias.scope !89, !noalias !92
  %162 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %163 = load <2 x i64>, ptr %162, align 8, !alias.scope !89, !noalias !92
  %164 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %165 = load <2 x i64>, ptr %164, align 8, !alias.scope !89, !noalias !92
  br label %238

166:                                              ; preds = %152
  %167 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %168 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %169 = load <2 x i64>, ptr %159, align 8, !alias.scope !126, !noalias !129
  %170 = load <2 x i64>, ptr %167, align 8, !alias.scope !126, !noalias !129
  %171 = load <2 x i64>, ptr %168, align 8, !alias.scope !126, !noalias !129
  br label %172

172:                                              ; preds = %172, %166
  %173 = phi <2 x i64> [ %171, %166 ], [ %235, %172 ]
  %174 = phi <2 x i64> [ %170, %166 ], [ %221, %172 ]
  %175 = phi <2 x i64> [ %169, %166 ], [ %207, %172 ]
  %176 = phi <2 x i64> [ %153, %166 ], [ %193, %172 ]
  %177 = phi i32 [ 0, %166 ], [ %236, %172 ]
  %178 = shl i32 %177, 6
  %179 = getelementptr inbounds nuw i8, ptr %157, i32 %178
  %180 = shl nuw i32 %177, 3
  %181 = getelementptr inbounds nuw i8, ptr %3, i32 %180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %182 = load <16 x i8>, ptr %179, align 1, !alias.scope !135, !noalias !136
  %183 = load <16 x i8>, ptr %181, align 1, !alias.scope !137, !noalias !138
  %184 = bitcast <16 x i8> %182 to <2 x i64>
  %185 = shufflevector <2 x i64> %184, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %186 = add <2 x i64> %185, %176
  %187 = xor <16 x i8> %183, %182
  %188 = bitcast <16 x i8> %187 to <2 x i64>
  %189 = trunc <2 x i64> %188 to <2 x i32>
  %190 = lshr <2 x i64> %188, splat (i64 32)
  %191 = trunc nuw <2 x i64> %190 to <2 x i32>
  %192 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %189, <2 x i32> %191)
  %193 = add <2 x i64> %186, %192
  %194 = getelementptr inbounds nuw i8, ptr %179, i32 16
  %195 = load <16 x i8>, ptr %194, align 1, !alias.scope !135, !noalias !136
  %196 = getelementptr inbounds nuw i8, ptr %181, i32 16
  %197 = load <16 x i8>, ptr %196, align 1, !alias.scope !137, !noalias !138
  %198 = bitcast <16 x i8> %195 to <2 x i64>
  %199 = shufflevector <2 x i64> %198, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %200 = add <2 x i64> %199, %175
  %201 = xor <16 x i8> %197, %195
  %202 = bitcast <16 x i8> %201 to <2 x i64>
  %203 = trunc <2 x i64> %202 to <2 x i32>
  %204 = lshr <2 x i64> %202, splat (i64 32)
  %205 = trunc nuw <2 x i64> %204 to <2 x i32>
  %206 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %203, <2 x i32> %205)
  %207 = add <2 x i64> %200, %206
  %208 = getelementptr inbounds nuw i8, ptr %179, i32 32
  %209 = load <16 x i8>, ptr %208, align 1, !alias.scope !135, !noalias !136
  %210 = getelementptr inbounds nuw i8, ptr %181, i32 32
  %211 = load <16 x i8>, ptr %210, align 1, !alias.scope !137, !noalias !138
  %212 = bitcast <16 x i8> %209 to <2 x i64>
  %213 = shufflevector <2 x i64> %212, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %214 = add <2 x i64> %213, %174
  %215 = xor <16 x i8> %211, %209
  %216 = bitcast <16 x i8> %215 to <2 x i64>
  %217 = trunc <2 x i64> %216 to <2 x i32>
  %218 = lshr <2 x i64> %216, splat (i64 32)
  %219 = trunc nuw <2 x i64> %218 to <2 x i32>
  %220 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %217, <2 x i32> %219)
  %221 = add <2 x i64> %214, %220
  %222 = getelementptr inbounds nuw i8, ptr %179, i32 48
  %223 = load <16 x i8>, ptr %222, align 1, !alias.scope !135, !noalias !136
  %224 = getelementptr inbounds nuw i8, ptr %181, i32 48
  %225 = load <16 x i8>, ptr %224, align 1, !alias.scope !137, !noalias !138
  %226 = bitcast <16 x i8> %223 to <2 x i64>
  %227 = shufflevector <2 x i64> %226, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %228 = add <2 x i64> %227, %173
  %229 = xor <16 x i8> %225, %223
  %230 = bitcast <16 x i8> %229 to <2 x i64>
  %231 = trunc <2 x i64> %230 to <2 x i32>
  %232 = lshr <2 x i64> %230, splat (i64 32)
  %233 = trunc nuw <2 x i64> %232 to <2 x i32>
  %234 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %231, <2 x i32> %233)
  %235 = add <2 x i64> %228, %234
  %236 = add nuw nsw i32 %177, 1
  %237 = icmp eq i32 %236, %156
  br i1 %237, label %238, label %172, !llvm.loop !117

238:                                              ; preds = %172, %160
  %239 = phi <2 x i64> [ %165, %160 ], [ %235, %172 ]
  %240 = phi <2 x i64> [ %163, %160 ], [ %221, %172 ]
  %241 = phi <2 x i64> [ %161, %160 ], [ %207, %172 ]
  %242 = phi <2 x i64> [ %153, %160 ], [ %193, %172 ]
  %243 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %244 = getelementptr inbounds i8, ptr %243, i32 -64
  %245 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %246 = getelementptr inbounds i8, ptr %245, i32 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %247 = load <16 x i8>, ptr %244, align 1, !alias.scope !139, !noalias !141
  %248 = load <16 x i8>, ptr %246, align 1, !alias.scope !140, !noalias !142
  %249 = bitcast <16 x i8> %247 to <2 x i64>
  %250 = shufflevector <2 x i64> %249, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %251 = add <2 x i64> %242, %250
  %252 = xor <16 x i8> %248, %247
  %253 = bitcast <16 x i8> %252 to <2 x i64>
  %254 = trunc <2 x i64> %253 to <2 x i32>
  %255 = lshr <2 x i64> %253, splat (i64 32)
  %256 = trunc nuw <2 x i64> %255 to <2 x i32>
  %257 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %254, <2 x i32> %256)
  %258 = add <2 x i64> %251, %257
  store <2 x i64> %258, ptr %0, align 8, !alias.scope !89, !noalias !92
  %259 = getelementptr inbounds i8, ptr %243, i32 -48
  %260 = load <16 x i8>, ptr %259, align 1, !alias.scope !139, !noalias !141
  %261 = getelementptr inbounds i8, ptr %245, i32 -55
  %262 = load <16 x i8>, ptr %261, align 1, !alias.scope !140, !noalias !142
  %263 = bitcast <16 x i8> %260 to <2 x i64>
  %264 = shufflevector <2 x i64> %263, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %265 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %266 = add <2 x i64> %241, %264
  %267 = xor <16 x i8> %262, %260
  %268 = bitcast <16 x i8> %267 to <2 x i64>
  %269 = trunc <2 x i64> %268 to <2 x i32>
  %270 = lshr <2 x i64> %268, splat (i64 32)
  %271 = trunc nuw <2 x i64> %270 to <2 x i32>
  %272 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %269, <2 x i32> %271)
  %273 = add <2 x i64> %266, %272
  store <2 x i64> %273, ptr %265, align 8, !alias.scope !89, !noalias !92
  %274 = getelementptr inbounds i8, ptr %243, i32 -32
  %275 = load <16 x i8>, ptr %274, align 1, !alias.scope !139, !noalias !141
  %276 = getelementptr inbounds i8, ptr %245, i32 -39
  %277 = load <16 x i8>, ptr %276, align 1, !alias.scope !140, !noalias !142
  %278 = bitcast <16 x i8> %275 to <2 x i64>
  %279 = shufflevector <2 x i64> %278, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %280 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %281 = add <2 x i64> %240, %279
  %282 = xor <16 x i8> %277, %275
  %283 = bitcast <16 x i8> %282 to <2 x i64>
  %284 = trunc <2 x i64> %283 to <2 x i32>
  %285 = lshr <2 x i64> %283, splat (i64 32)
  %286 = trunc nuw <2 x i64> %285 to <2 x i32>
  %287 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %284, <2 x i32> %286)
  %288 = add <2 x i64> %281, %287
  store <2 x i64> %288, ptr %280, align 8, !alias.scope !89, !noalias !92
  %289 = getelementptr inbounds i8, ptr %243, i32 -16
  %290 = load <16 x i8>, ptr %289, align 1, !alias.scope !139, !noalias !141
  %291 = getelementptr inbounds i8, ptr %245, i32 -23
  %292 = load <16 x i8>, ptr %291, align 1, !alias.scope !140, !noalias !142
  %293 = bitcast <16 x i8> %290 to <2 x i64>
  %294 = shufflevector <2 x i64> %293, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %295 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %296 = add <2 x i64> %239, %294
  %297 = xor <16 x i8> %292, %290
  %298 = bitcast <16 x i8> %297 to <2 x i64>
  %299 = trunc <2 x i64> %298 to <2 x i32>
  %300 = lshr <2 x i64> %298, splat (i64 32)
  %301 = trunc nuw <2 x i64> %300 to <2 x i32>
  %302 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %299, <2 x i32> %301)
  %303 = add <2 x i64> %296, %302
  store <2 x i64> %303, ptr %295, align 8, !alias.scope !89, !noalias !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noalias nocapture noundef nonnull readonly %0, ptr noalias nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #7 {
  %4 = load <8 x i64>, ptr %0, align 8
  %5 = load <8 x i64>, ptr %1, align 1
  %6 = xor <8 x i64> %5, %4
  %7 = shufflevector <8 x i64> %6, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %8 = xor <8 x i64> %5, %4
  %9 = shufflevector <8 x i64> %8, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %10 = and <4 x i64> %9, splat (i64 4294967295)
  %11 = and <4 x i64> %7, splat (i64 4294967295)
  %12 = mul nuw <4 x i64> %11, %10
  %13 = lshr <4 x i64> %9, splat (i64 32)
  %14 = mul nuw <4 x i64> %11, %13
  %15 = lshr <4 x i64> %7, splat (i64 32)
  %16 = mul nuw <4 x i64> %15, %10
  %17 = mul nuw <4 x i64> %15, %13
  %18 = lshr <4 x i64> %12, splat (i64 32)
  %19 = and <4 x i64> %14, splat (i64 4294967295)
  %20 = add nuw <4 x i64> %19, %16
  %21 = add nuw <4 x i64> %20, %18
  %22 = lshr <4 x i64> %14, splat (i64 32)
  %23 = lshr <4 x i64> %21, splat (i64 32)
  %24 = add nuw <4 x i64> %22, %17
  %25 = add nuw <4 x i64> %24, %23
  %26 = shl <4 x i64> %21, splat (i64 32)
  %27 = and <4 x i64> %12, splat (i64 4294967295)
  %28 = or disjoint <4 x i64> %26, %27
  %29 = xor <4 x i64> %28, %25
  %30 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %29)
  %31 = add i64 %30, %2
  %32 = lshr i64 %31, 37
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  ret i64 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32>, <2 x i32>) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal arm_aapcs_vfpcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i32 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i32 noundef %4) #9 {
  %6 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !143
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i32 64, i1 false), !noalias !143
  call arm_aapcs_vfpcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %3, i32 noundef %4)
  %7 = zext i32 %1 to i64
  %8 = mul i64 %7, -7046029288634856825
  %9 = getelementptr inbounds nuw i8, ptr %3, i32 11
  %10 = call arm_aapcs_vfpcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %9, i64 noundef %8), !noalias !147
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !143
  ret i64 %10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = !{!11, !13, !15, !17}
!11 = distinct !{!11, !12, !"XXH3_len_9to16_128b: argument 0"}
!12 = distinct !{!12, !"XXH3_len_9to16_128b"}
!13 = distinct !{!13, !14, !"XXH3_len_0to16_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_0to16_128b"}
!15 = distinct !{!15, !16, !"XXH3_128bits_internal: argument 0"}
!16 = distinct !{!16, !"XXH3_128bits_internal"}
!17 = distinct !{!17, !18, !"XXH_INLINE_XXH3_128bits_withSeed: argument 0"}
!18 = distinct !{!18, !"XXH_INLINE_XXH3_128bits_withSeed"}
!19 = !{!20, !13, !15, !17}
!20 = distinct !{!20, !21, !"XXH3_len_4to8_128b: argument 0"}
!21 = distinct !{!21, !"XXH3_len_4to8_128b"}
!22 = !{!23, !13, !15, !17}
!23 = distinct !{!23, !24, !"XXH3_len_1to3_128b: argument 0"}
!24 = distinct !{!24, !"XXH3_len_1to3_128b"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_len_17to128_128b: argument 1"}
!27 = distinct !{!27, !"XXH3_len_17to128_128b"}
!28 = !{!29, !15, !17}
!29 = distinct !{!29, !27, !"XXH3_len_17to128_128b: argument 0"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_len_129to240_128b: argument 1"}
!32 = distinct !{!32, !"XXH3_len_129to240_128b"}
!33 = !{!34, !15, !17}
!34 = distinct !{!34, !32, !"XXH3_len_129to240_128b: argument 0"}
!35 = !{!36, !34, !31, !15, !17}
!36 = distinct !{!36, !37, !"XXH128_mix32B: argument 0"}
!37 = distinct !{!37, !"XXH128_mix32B"}
!38 = distinct !{!38, !6}
!39 = !{!40, !42, !43, !44, !46, !47, !17}
!40 = distinct !{!40, !41, !"XXH3_hashLong_128b_internal: argument 0"}
!41 = distinct !{!41, !"XXH3_hashLong_128b_internal"}
!42 = distinct !{!42, !41, !"XXH3_hashLong_128b_internal: argument 1"}
!43 = distinct !{!43, !41, !"XXH3_hashLong_128b_internal: argument 2"}
!44 = distinct !{!44, !45, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!45 = distinct !{!45, !"XXH3_hashLong_128b_withSeed_internal"}
!46 = distinct !{!46, !45, !"XXH3_hashLong_128b_withSeed_internal: argument 1"}
!47 = distinct !{!47, !48, !"XXH3_hashLong_128b_withSeed: argument 0"}
!48 = distinct !{!48, !"XXH3_hashLong_128b_withSeed"}
!49 = !{!40, !44, !47, !17}
!50 = !{!40, !42, !44, !46, !47, !17}
!51 = !{!44, !46, !47, !17}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_initCustomSecret_scalar: argument 0"}
!54 = distinct !{!54, !"XXH3_initCustomSecret_scalar"}
!55 = !{!56, !58, !59, !44, !46, !47, !17}
!56 = distinct !{!56, !57, !"XXH3_hashLong_128b_internal: argument 0"}
!57 = distinct !{!57, !"XXH3_hashLong_128b_internal"}
!58 = distinct !{!58, !57, !"XXH3_hashLong_128b_internal: argument 1"}
!59 = distinct !{!59, !57, !"XXH3_hashLong_128b_internal: argument 2"}
!60 = !{!56, !44, !47, !17}
!61 = !{!56, !58, !44, !46, !47, !17}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_len_17to128_64b: argument 0"}
!65 = distinct !{!65, !"XXH3_len_17to128_64b"}
!66 = !{!67}
!67 = distinct !{!67, !65, !"XXH3_len_17to128_64b: argument 1"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"XXH3_len_129to240_64b: argument 0"}
!70 = distinct !{!70, !"XXH3_len_129to240_64b"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"XXH3_len_129to240_64b: argument 1"}
!73 = distinct !{!73, !6, !74}
!74 = !{!"llvm.loop.vectorize.width", i32 1}
!75 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"XXH3_hashLong_64b_internal: argument 0"}
!78 = distinct !{!78, !"XXH3_hashLong_64b_internal"}
!79 = distinct !{!79, !78, !"XXH3_hashLong_64b_internal: argument 1"}
!80 = !{!77}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_initCustomSecret_scalar: argument 0"}
!83 = distinct !{!83, !"XXH3_initCustomSecret_scalar"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"XXH3_hashLong_64b_internal: argument 0"}
!86 = distinct !{!86, !"XXH3_hashLong_64b_internal"}
!87 = distinct !{!87, !86, !"XXH3_hashLong_64b_internal: argument 1"}
!88 = !{!85}
!89 = !{!90}
!90 = distinct !{!90, !91, !"XXH3_accumulate_512_neon: argument 0"}
!91 = distinct !{!91, !"XXH3_accumulate_512_neon"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"XXH3_accumulate_512_neon: argument 1"}
!94 = distinct !{!94, !91, !"XXH3_accumulate_512_neon: argument 2"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"XXH3_scrambleAcc_neon: argument 1"}
!97 = distinct !{!97, !"XXH3_scrambleAcc_neon"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"XXH3_scrambleAcc_neon: argument 0"}
!100 = !{}
!101 = !{!102}
!102 = distinct !{!102, !103, !"XXH3_accumulate: argument 1"}
!103 = distinct !{!103, !"XXH3_accumulate"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"XXH3_accumulate: argument 2"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"XXH3_accumulate_512_neon: argument 1"}
!108 = distinct !{!108, !"XXH3_accumulate_512_neon"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"XXH3_accumulate_512_neon: argument 2"}
!111 = !{!107, !102}
!112 = !{!113, !110, !114, !105}
!113 = distinct !{!113, !108, !"XXH3_accumulate_512_neon: argument 0"}
!114 = distinct !{!114, !103, !"XXH3_accumulate: argument 0"}
!115 = !{!110, !105}
!116 = !{!113, !107, !114, !102}
!117 = distinct !{!117, !6}
!118 = distinct !{!118, !6}
!119 = !{!120}
!120 = distinct !{!120, !121, !"XXH3_accumulate: argument 0"}
!121 = distinct !{!121, !"XXH3_accumulate"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"XXH3_accumulate: argument 1"}
!124 = !{!125}
!125 = distinct !{!125, !121, !"XXH3_accumulate: argument 2"}
!126 = !{!127, !120}
!127 = distinct !{!127, !128, !"XXH3_accumulate_512_neon: argument 0"}
!128 = distinct !{!128, !"XXH3_accumulate_512_neon"}
!129 = !{!130, !131, !123, !125}
!130 = distinct !{!130, !128, !"XXH3_accumulate_512_neon: argument 1"}
!131 = distinct !{!131, !128, !"XXH3_accumulate_512_neon: argument 2"}
!132 = !{!127}
!133 = !{!130}
!134 = !{!131}
!135 = !{!130, !123}
!136 = !{!127, !131, !120, !125}
!137 = !{!131, !125}
!138 = !{!127, !130, !120, !123}
!139 = !{!93}
!140 = !{!94}
!141 = !{!90, !94}
!142 = !{!90, !93}
!143 = !{!144, !146}
!144 = distinct !{!144, !145, !"XXH3_hashLong_64b_internal: argument 0"}
!145 = distinct !{!145, !"XXH3_hashLong_64b_internal"}
!146 = distinct !{!146, !145, !"XXH3_hashLong_64b_internal: argument 1"}
!147 = !{!144}
