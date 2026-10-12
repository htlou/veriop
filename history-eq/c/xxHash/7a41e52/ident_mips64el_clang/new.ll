; ModuleID = 'ident_mips64el_clang/wrapper.c'
source_filename = "ident_mips64el_clang/wrapper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "mips64el-unknown-linux-gnuabi64"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local signext i32 @target_xxh32(ptr noundef readonly %0, i64 noundef zeroext %1, i32 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %52

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
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %25 = load i32, ptr %24, align 1
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %17
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %37 = load i32, ptr %36, align 1
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %18
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 16
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
  %57 = trunc i64 %1 to i32
  %58 = add i32 %55, %57
  %59 = and i64 %1, 15
  switch i64 %59, label %207 [
    i64 12, label %60
    i64 8, label %67
    i64 4, label %76
    i64 13, label %84
    i64 9, label %91
    i64 5, label %100
    i64 14, label %115
    i64 10, label %122
    i64 6, label %131
    i64 15, label %153
    i64 11, label %160
    i64 7, label %169
    i64 3, label %178
    i64 2, label %188
    i64 1, label %198
    i64 0, label %208
  ]

60:                                               ; preds = %54
  %61 = load i32, ptr %56, align 1
  %62 = mul i32 %61, -1028477379
  %63 = add i32 %62, %58
  %64 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %65 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 17)
  %66 = mul i32 %65, 668265263
  br label %67

67:                                               ; preds = %60, %54
  %68 = phi ptr [ %56, %54 ], [ %64, %60 ]
  %69 = phi i32 [ %58, %54 ], [ %66, %60 ]
  %70 = load i32, ptr %68, align 1
  %71 = mul i32 %70, -1028477379
  %72 = add i32 %71, %69
  %73 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %74 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 17)
  %75 = mul i32 %74, 668265263
  br label %76

76:                                               ; preds = %67, %54
  %77 = phi ptr [ %56, %54 ], [ %73, %67 ]
  %78 = phi i32 [ %58, %54 ], [ %75, %67 ]
  %79 = load i32, ptr %77, align 1
  %80 = mul i32 %79, -1028477379
  %81 = add i32 %80, %78
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 17)
  %83 = mul i32 %82, 668265263
  br label %208

84:                                               ; preds = %54
  %85 = load i32, ptr %56, align 1
  %86 = mul i32 %85, -1028477379
  %87 = add i32 %86, %58
  %88 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %89 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 17)
  %90 = mul i32 %89, 668265263
  br label %91

91:                                               ; preds = %84, %54
  %92 = phi ptr [ %56, %54 ], [ %88, %84 ]
  %93 = phi i32 [ %58, %54 ], [ %90, %84 ]
  %94 = load i32, ptr %92, align 1
  %95 = mul i32 %94, -1028477379
  %96 = add i32 %95, %93
  %97 = getelementptr inbounds nuw i8, ptr %92, i64 4
  %98 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 17)
  %99 = mul i32 %98, 668265263
  br label %100

100:                                              ; preds = %91, %54
  %101 = phi ptr [ %56, %54 ], [ %97, %91 ]
  %102 = phi i32 [ %58, %54 ], [ %99, %91 ]
  %103 = load i32, ptr %101, align 1
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %101, i64 4
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %108 = mul i32 %107, 668265263
  %109 = load i8, ptr %106, align 1
  %110 = zext i8 %109 to i32
  %111 = mul i32 %110, 374761393
  %112 = add i32 %108, %111
  %113 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 11)
  %114 = mul i32 %113, -1640531535
  br label %208

115:                                              ; preds = %54
  %116 = load i32, ptr %56, align 1
  %117 = mul i32 %116, -1028477379
  %118 = add i32 %117, %58
  %119 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %120 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 17)
  %121 = mul i32 %120, 668265263
  br label %122

122:                                              ; preds = %115, %54
  %123 = phi ptr [ %56, %54 ], [ %119, %115 ]
  %124 = phi i32 [ %58, %54 ], [ %121, %115 ]
  %125 = load i32, ptr %123, align 1
  %126 = mul i32 %125, -1028477379
  %127 = add i32 %126, %124
  %128 = getelementptr inbounds nuw i8, ptr %123, i64 4
  %129 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 17)
  %130 = mul i32 %129, 668265263
  br label %131

131:                                              ; preds = %122, %54
  %132 = phi ptr [ %56, %54 ], [ %128, %122 ]
  %133 = phi i32 [ %58, %54 ], [ %130, %122 ]
  %134 = load i32, ptr %132, align 1
  %135 = mul i32 %134, -1028477379
  %136 = add i32 %135, %133
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 4
  %138 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 17)
  %139 = mul i32 %138, 668265263
  %140 = getelementptr inbounds nuw i8, ptr %132, i64 5
  %141 = load i8, ptr %137, align 1
  %142 = zext i8 %141 to i32
  %143 = mul i32 %142, 374761393
  %144 = add i32 %139, %143
  %145 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 11)
  %146 = mul i32 %145, -1640531535
  %147 = load i8, ptr %140, align 1
  %148 = zext i8 %147 to i32
  %149 = mul i32 %148, 374761393
  %150 = add i32 %146, %149
  %151 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 11)
  %152 = mul i32 %151, -1640531535
  br label %208

153:                                              ; preds = %54
  %154 = load i32, ptr %56, align 1
  %155 = mul i32 %154, -1028477379
  %156 = add i32 %155, %58
  %157 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %158 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 17)
  %159 = mul i32 %158, 668265263
  br label %160

160:                                              ; preds = %153, %54
  %161 = phi ptr [ %56, %54 ], [ %157, %153 ]
  %162 = phi i32 [ %58, %54 ], [ %159, %153 ]
  %163 = load i32, ptr %161, align 1
  %164 = mul i32 %163, -1028477379
  %165 = add i32 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %161, i64 4
  %167 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 17)
  %168 = mul i32 %167, 668265263
  br label %169

169:                                              ; preds = %160, %54
  %170 = phi ptr [ %56, %54 ], [ %166, %160 ]
  %171 = phi i32 [ %58, %54 ], [ %168, %160 ]
  %172 = load i32, ptr %170, align 1
  %173 = mul i32 %172, -1028477379
  %174 = add i32 %173, %171
  %175 = getelementptr inbounds nuw i8, ptr %170, i64 4
  %176 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 17)
  %177 = mul i32 %176, 668265263
  br label %178

178:                                              ; preds = %169, %54
  %179 = phi ptr [ %56, %54 ], [ %175, %169 ]
  %180 = phi i32 [ %58, %54 ], [ %177, %169 ]
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %182 = load i8, ptr %179, align 1
  %183 = zext i8 %182 to i32
  %184 = mul i32 %183, 374761393
  %185 = add i32 %184, %180
  %186 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 11)
  %187 = mul i32 %186, -1640531535
  br label %188

188:                                              ; preds = %178, %54
  %189 = phi ptr [ %56, %54 ], [ %181, %178 ]
  %190 = phi i32 [ %58, %54 ], [ %187, %178 ]
  %191 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %192 = load i8, ptr %189, align 1
  %193 = zext i8 %192 to i32
  %194 = mul i32 %193, 374761393
  %195 = add i32 %194, %190
  %196 = tail call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 11)
  %197 = mul i32 %196, -1640531535
  br label %198

198:                                              ; preds = %188, %54
  %199 = phi ptr [ %56, %54 ], [ %191, %188 ]
  %200 = phi i32 [ %58, %54 ], [ %197, %188 ]
  %201 = load i8, ptr %199, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %203, %200
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  br label %208

207:                                              ; preds = %54
  unreachable

208:                                              ; preds = %54, %76, %100, %131, %198
  %209 = phi i32 [ %152, %131 ], [ %114, %100 ], [ %83, %76 ], [ %58, %54 ], [ %206, %198 ]
  %210 = lshr i32 %209, 15
  %211 = xor i32 %210, %209
  %212 = mul i32 %211, -2048144777
  %213 = lshr i32 %212, 13
  %214 = xor i32 %213, %212
  %215 = mul i32 %214, -1028477379
  %216 = lshr i32 %215, 16
  %217 = xor i32 %216, %215
  ret i32 %217
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i64 noundef zeroext %1, i64 noundef zeroext %2) local_unnamed_addr #1 {
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
  br i1 %98, label %84, label %99, !llvm.loop !7

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
  br i1 %131, label %132, label %119, !llvm.loop !8

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

; Function Attrs: nounwind
define dso_local i64 @target_xxh3_64_seed(ptr noundef %0, i64 noundef zeroext %1, i64 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef zeroext %1, i64 noundef zeroext %2, ptr noundef nonnull @XXH3_kSecret, i64 noundef zeroext 192, ptr noundef nonnull @XXH3_hashLong_64b_withSeed)
  ret i64 %4
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh3_64_secret(ptr noundef %0, i64 noundef zeroext %1, ptr noundef %2, i64 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 %3, 136
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef zeroext %1, i64 noundef zeroext 0, ptr noundef %2, i64 noundef zeroext range(i64 136, 0) %3, ptr noundef nonnull @XXH3_hashLong_64b_withSecret)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i64 [ %7, %6 ], [ 0, %4 ]
  ret i64 %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef zeroext %2, i64 noundef zeroext %3) local_unnamed_addr #3 {
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
  %150 = insertvalue { i64, i64 } poison, i64 %147, 0
  %151 = insertvalue { i64, i64 } %150, i64 %149, 1
  br label %643

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
  %165 = load i64, ptr %162, align 1, !alias.scope !9
  %166 = getelementptr i8, ptr %1, i64 56
  %167 = load i64, ptr %166, align 1, !alias.scope !9
  %168 = load i64, ptr %164, align 1, !alias.scope !9
  %169 = getelementptr i8, ptr %163, i64 -56
  %170 = load i64, ptr %169, align 1, !alias.scope !9
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
  %202 = load i64, ptr %199, align 1, !alias.scope !9
  %203 = getelementptr i8, ptr %1, i64 40
  %204 = load i64, ptr %203, align 1, !alias.scope !9
  %205 = load i64, ptr %201, align 1, !alias.scope !9
  %206 = getelementptr i8, ptr %200, i64 -40
  %207 = load i64, ptr %206, align 1, !alias.scope !9
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
  %240 = load i64, ptr %237, align 1, !alias.scope !9
  %241 = getelementptr i8, ptr %1, i64 24
  %242 = load i64, ptr %241, align 1, !alias.scope !9
  %243 = load i64, ptr %239, align 1, !alias.scope !9
  %244 = getelementptr i8, ptr %238, i64 -24
  %245 = load i64, ptr %244, align 1, !alias.scope !9
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
  %277 = load i64, ptr %1, align 1, !alias.scope !9
  %278 = getelementptr i8, ptr %1, i64 8
  %279 = load i64, ptr %278, align 1, !alias.scope !9
  %280 = load i64, ptr %276, align 1, !alias.scope !9
  %281 = getelementptr i8, ptr %275, i64 -8
  %282 = load i64, ptr %281, align 1, !alias.scope !9
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
  %327 = insertvalue { i64, i64 } poison, i64 %320, 0
  %328 = insertvalue { i64, i64 } %327, i64 %326, 1
  br label %643

329:                                              ; preds = %152
  %330 = icmp ult i64 %2, 241
  br i1 %330, label %331, label %590

331:                                              ; preds = %329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %332 = trunc nuw nsw i64 %2 to i32
  %333 = mul i64 %2, -7046029288634856825
  %334 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %335 = load i64, ptr %1, align 1, !alias.scope !12
  %336 = getelementptr i8, ptr %1, i64 8
  %337 = load i64, ptr %336, align 1, !alias.scope !12
  %338 = load i64, ptr %334, align 1, !alias.scope !12
  %339 = getelementptr i8, ptr %1, i64 24
  %340 = load i64, ptr %339, align 1, !alias.scope !12
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
  %368 = load i64, ptr %366, align 1, !alias.scope !12
  %369 = getelementptr i8, ptr %1, i64 40
  %370 = load i64, ptr %369, align 1, !alias.scope !12
  %371 = load i64, ptr %367, align 1, !alias.scope !12
  %372 = getelementptr i8, ptr %1, i64 56
  %373 = load i64, ptr %372, align 1, !alias.scope !12
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
  %402 = load i64, ptr %400, align 1, !alias.scope !12
  %403 = getelementptr i8, ptr %1, i64 72
  %404 = load i64, ptr %403, align 1, !alias.scope !12
  %405 = load i64, ptr %401, align 1, !alias.scope !12
  %406 = getelementptr i8, ptr %1, i64 88
  %407 = load i64, ptr %406, align 1, !alias.scope !12
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
  %436 = load i64, ptr %434, align 1, !alias.scope !12
  %437 = getelementptr i8, ptr %1, i64 104
  %438 = load i64, ptr %437, align 1, !alias.scope !12
  %439 = load i64, ptr %435, align 1, !alias.scope !12
  %440 = getelementptr i8, ptr %1, i64 120
  %441 = load i64, ptr %440, align 1, !alias.scope !12
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
  %491 = load i64, ptr %487, align 1, !alias.scope !12
  %492 = getelementptr i8, ptr %487, i64 8
  %493 = load i64, ptr %492, align 1, !alias.scope !12
  %494 = load i64, ptr %488, align 1, !alias.scope !12
  %495 = getelementptr i8, ptr %487, i64 24
  %496 = load i64, ptr %495, align 1, !alias.scope !12
  %497 = load i64, ptr %490, align 1, !noalias !12
  %498 = getelementptr i8, ptr %489, i64 -120
  %499 = load i64, ptr %498, align 1, !noalias !12
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
  %514 = load i64, ptr %513, align 1, !noalias !12
  %515 = getelementptr i8, ptr %489, i64 -104
  %516 = load i64, ptr %515, align 1, !noalias !12
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
  br i1 %531, label %532, label %482, !llvm.loop !15

532:                                              ; preds = %482, %331
  %533 = phi i64 [ %473, %331 ], [ %512, %482 ]
  %534 = phi i64 [ %478, %331 ], [ %529, %482 ]
  %535 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %536 = getelementptr inbounds i8, ptr %535, i64 -16
  %537 = getelementptr inbounds i8, ptr %535, i64 -32
  %538 = load i64, ptr %536, align 1, !alias.scope !12
  %539 = getelementptr i8, ptr %535, i64 -8
  %540 = load i64, ptr %539, align 1, !alias.scope !12
  %541 = load i64, ptr %537, align 1, !alias.scope !12
  %542 = getelementptr i8, ptr %535, i64 -24
  %543 = load i64, ptr %542, align 1, !alias.scope !12
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
  %588 = insertvalue { i64, i64 } poison, i64 %581, 0
  %589 = insertvalue { i64, i64 } %588, i64 %587, 1
  br label %643

590:                                              ; preds = %329
  %591 = icmp eq i64 %3, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %590
  %593 = tail call fastcc inreg { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef zeroext %2, ptr noundef nonnull @XXH3_kSecret)
  br label %643

594:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #12, !noalias !16
  %595 = add i64 %3, -4734510112055689544
  %596 = sub i64 2066345149520216444, %3
  store i64 %595, ptr %5, align 8, !alias.scope !19, !noalias !16
  %597 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %596, ptr %597, align 8, !alias.scope !19, !noalias !16
  %598 = add i64 %3, -2623469361688619810
  %599 = sub i64 2262974939099578482, %3
  %600 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %598, ptr %600, align 8, !alias.scope !19, !noalias !16
  %601 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %599, ptr %601, align 8, !alias.scope !19, !noalias !16
  %602 = add i64 %3, 8711581037947681227
  %603 = sub i64 2410270004345854594, %3
  %604 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %602, ptr %604, align 8, !alias.scope !19, !noalias !16
  %605 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %603, ptr %605, align 8, !alias.scope !19, !noalias !16
  %606 = add i64 %3, -8204357891075471176
  %607 = sub i64 5487137525590930912, %3
  %608 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %606, ptr %608, align 8, !alias.scope !19, !noalias !16
  %609 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %607, ptr %609, align 8, !alias.scope !19, !noalias !16
  %610 = add i64 %3, -3818837453329782724
  %611 = sub i64 -6688317018830679928, %3
  %612 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %610, ptr %612, align 8, !alias.scope !19, !noalias !16
  %613 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %611, ptr %613, align 8, !alias.scope !19, !noalias !16
  %614 = add i64 %3, 5690594596133299313
  %615 = sub i64 -2833645246901970632, %3
  %616 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %614, ptr %616, align 8, !alias.scope !19, !noalias !16
  %617 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %615, ptr %617, align 8, !alias.scope !19, !noalias !16
  %618 = add i64 %3, 4554437623014685352
  %619 = sub i64 2111919702937427193, %3
  %620 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %618, ptr %620, align 8, !alias.scope !19, !noalias !16
  %621 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %619, ptr %621, align 8, !alias.scope !19, !noalias !16
  %622 = add i64 %3, 3556072174620004746
  %623 = sub i64 7238261902898274248, %3
  %624 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %622, ptr %624, align 8, !alias.scope !19, !noalias !16
  %625 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %623, ptr %625, align 8, !alias.scope !19, !noalias !16
  %626 = add i64 %3, -4329134394285701654
  %627 = sub i64 -1485321483350670907, %3
  %628 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %626, ptr %628, align 8, !alias.scope !19, !noalias !16
  %629 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %627, ptr %629, align 8, !alias.scope !19, !noalias !16
  %630 = add i64 %3, 5321830579834785047
  %631 = sub i64 -7032137544937171245, %3
  %632 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %630, ptr %632, align 8, !alias.scope !19, !noalias !16
  %633 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %631, ptr %633, align 8, !alias.scope !19, !noalias !16
  %634 = add i64 %3, -242834301215959509
  %635 = sub i64 -3588858202114426737, %3
  %636 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %634, ptr %636, align 8, !alias.scope !19, !noalias !16
  %637 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %635, ptr %637, align 8, !alias.scope !19, !noalias !16
  %638 = add i64 %3, 2883454493032893253
  %639 = sub i64 9097354517224871855, %3
  %640 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %638, ptr %640, align 8, !alias.scope !19, !noalias !16
  %641 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %639, ptr %641, align 8, !alias.scope !19, !noalias !16
  %642 = call fastcc inreg { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef zeroext %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #12, !noalias !16
  br label %643

643:                                              ; preds = %145, %272, %532, %592, %594
  %644 = phi { i64, i64 } [ %151, %145 ], [ %328, %272 ], [ %589, %532 ], [ %593, %592 ], [ %642, %594 ]
  %645 = extractvalue { i64, i64 } %644, 0
  %646 = extractvalue { i64, i64 } %644, 1
  store i64 %645, ptr %0, align 8
  %647 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %646, ptr %647, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nounwind
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef zeroext %1, i64 noundef zeroext %2, ptr noalias noundef %3, i64 noundef zeroext range(i64 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #2 {
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %74

8:                                                ; preds = %6
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %44, !prof !22

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
  br i1 %45, label %46, label %52, !prof !22

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %3, i64 8
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %3, i64 16
  %50 = load i64, ptr %49, align 1
  %51 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef zeroext range(i64 0, 17) %1, i64 %48, i64 %50, i64 noundef zeroext %2)
  br label %468

52:                                               ; preds = %44
  %53 = icmp eq i64 %1, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %3, align 1
  %56 = getelementptr i8, ptr %3, i64 4
  %57 = load i32, ptr %56, align 1
  %58 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef zeroext range(i64 0, 17) %1, i32 %55, i32 %57, i64 noundef zeroext %2)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
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
  %86 = load i64, ptr %84, align 1, !alias.scope !23, !noalias !26
  %87 = getelementptr i8, ptr %0, i64 56
  %88 = load i64, ptr %87, align 1, !alias.scope !23, !noalias !26
  %89 = load i64, ptr %85, align 1, !alias.scope !26, !noalias !23
  %90 = getelementptr i8, ptr %3, i64 104
  %91 = load i64, ptr %90, align 1, !alias.scope !26, !noalias !23
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
  %106 = load i64, ptr %104, align 1, !alias.scope !23, !noalias !26
  %107 = getelementptr i8, ptr %103, i64 -56
  %108 = load i64, ptr %107, align 1, !alias.scope !23, !noalias !26
  %109 = load i64, ptr %105, align 1, !alias.scope !26, !noalias !23
  %110 = getelementptr i8, ptr %3, i64 120
  %111 = load i64, ptr %110, align 1, !alias.scope !26, !noalias !23
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
  %127 = load i64, ptr %125, align 1, !alias.scope !23, !noalias !26
  %128 = getelementptr i8, ptr %0, i64 40
  %129 = load i64, ptr %128, align 1, !alias.scope !23, !noalias !26
  %130 = load i64, ptr %126, align 1, !alias.scope !26, !noalias !23
  %131 = getelementptr i8, ptr %3, i64 72
  %132 = load i64, ptr %131, align 1, !alias.scope !26, !noalias !23
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
  %147 = load i64, ptr %145, align 1, !alias.scope !23, !noalias !26
  %148 = getelementptr i8, ptr %144, i64 -40
  %149 = load i64, ptr %148, align 1, !alias.scope !23, !noalias !26
  %150 = load i64, ptr %146, align 1, !alias.scope !26, !noalias !23
  %151 = getelementptr i8, ptr %3, i64 88
  %152 = load i64, ptr %151, align 1, !alias.scope !26, !noalias !23
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
  %168 = load i64, ptr %166, align 1, !alias.scope !23, !noalias !26
  %169 = getelementptr i8, ptr %0, i64 24
  %170 = load i64, ptr %169, align 1, !alias.scope !23, !noalias !26
  %171 = load i64, ptr %167, align 1, !alias.scope !26, !noalias !23
  %172 = getelementptr i8, ptr %3, i64 40
  %173 = load i64, ptr %172, align 1, !alias.scope !26, !noalias !23
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
  %188 = load i64, ptr %186, align 1, !alias.scope !23, !noalias !26
  %189 = getelementptr i8, ptr %185, i64 -24
  %190 = load i64, ptr %189, align 1, !alias.scope !23, !noalias !26
  %191 = load i64, ptr %187, align 1, !alias.scope !26, !noalias !23
  %192 = getelementptr i8, ptr %3, i64 56
  %193 = load i64, ptr %192, align 1, !alias.scope !26, !noalias !23
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
  %207 = load i64, ptr %0, align 1, !alias.scope !23, !noalias !26
  %208 = getelementptr i8, ptr %0, i64 8
  %209 = load i64, ptr %208, align 1, !alias.scope !23, !noalias !26
  %210 = load i64, ptr %3, align 1, !alias.scope !26, !noalias !23
  %211 = getelementptr i8, ptr %3, i64 8
  %212 = load i64, ptr %211, align 1, !alias.scope !26, !noalias !23
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
  %227 = load i64, ptr %225, align 1, !alias.scope !23, !noalias !26
  %228 = getelementptr i8, ptr %224, i64 -8
  %229 = load i64, ptr %228, align 1, !alias.scope !23, !noalias !26
  %230 = load i64, ptr %226, align 1, !alias.scope !26, !noalias !23
  %231 = getelementptr i8, ptr %3, i64 24
  %232 = load i64, ptr %231, align 1, !alias.scope !26, !noalias !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %252 = mul i64 %1, -7046029288634856825
  %253 = trunc nuw nsw i64 %1 to i32
  %254 = load i64, ptr %0, align 1, !alias.scope !28, !noalias !31
  %255 = getelementptr i8, ptr %0, i64 8
  %256 = load i64, ptr %255, align 1, !alias.scope !28, !noalias !31
  %257 = load i64, ptr %3, align 1, !alias.scope !31, !noalias !28
  %258 = getelementptr i8, ptr %3, i64 8
  %259 = load i64, ptr %258, align 1, !alias.scope !31, !noalias !28
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
  %273 = load i64, ptr %271, align 1, !alias.scope !28, !noalias !31
  %274 = getelementptr i8, ptr %0, i64 24
  %275 = load i64, ptr %274, align 1, !alias.scope !28, !noalias !31
  %276 = load i64, ptr %272, align 1, !alias.scope !31, !noalias !28
  %277 = getelementptr i8, ptr %3, i64 24
  %278 = load i64, ptr %277, align 1, !alias.scope !31, !noalias !28
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
  %292 = load i64, ptr %290, align 1, !alias.scope !28, !noalias !31
  %293 = getelementptr i8, ptr %0, i64 40
  %294 = load i64, ptr %293, align 1, !alias.scope !28, !noalias !31
  %295 = load i64, ptr %291, align 1, !alias.scope !31, !noalias !28
  %296 = getelementptr i8, ptr %3, i64 40
  %297 = load i64, ptr %296, align 1, !alias.scope !31, !noalias !28
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
  %311 = load i64, ptr %309, align 1, !alias.scope !28, !noalias !31
  %312 = getelementptr i8, ptr %0, i64 56
  %313 = load i64, ptr %312, align 1, !alias.scope !28, !noalias !31
  %314 = load i64, ptr %310, align 1, !alias.scope !31, !noalias !28
  %315 = getelementptr i8, ptr %3, i64 56
  %316 = load i64, ptr %315, align 1, !alias.scope !31, !noalias !28
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
  %330 = load i64, ptr %328, align 1, !alias.scope !28, !noalias !31
  %331 = getelementptr i8, ptr %0, i64 72
  %332 = load i64, ptr %331, align 1, !alias.scope !28, !noalias !31
  %333 = load i64, ptr %329, align 1, !alias.scope !31, !noalias !28
  %334 = getelementptr i8, ptr %3, i64 72
  %335 = load i64, ptr %334, align 1, !alias.scope !31, !noalias !28
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
  %349 = load i64, ptr %347, align 1, !alias.scope !28, !noalias !31
  %350 = getelementptr i8, ptr %0, i64 88
  %351 = load i64, ptr %350, align 1, !alias.scope !28, !noalias !31
  %352 = load i64, ptr %348, align 1, !alias.scope !31, !noalias !28
  %353 = getelementptr i8, ptr %3, i64 88
  %354 = load i64, ptr %353, align 1, !alias.scope !31, !noalias !28
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
  %368 = load i64, ptr %366, align 1, !alias.scope !28, !noalias !31
  %369 = getelementptr i8, ptr %0, i64 104
  %370 = load i64, ptr %369, align 1, !alias.scope !28, !noalias !31
  %371 = load i64, ptr %367, align 1, !alias.scope !31, !noalias !28
  %372 = getelementptr i8, ptr %3, i64 104
  %373 = load i64, ptr %372, align 1, !alias.scope !31, !noalias !28
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
  %387 = load i64, ptr %385, align 1, !alias.scope !28, !noalias !31
  %388 = getelementptr i8, ptr %0, i64 120
  %389 = load i64, ptr %388, align 1, !alias.scope !28, !noalias !31
  %390 = load i64, ptr %386, align 1, !alias.scope !31, !noalias !28
  %391 = getelementptr i8, ptr %3, i64 120
  %392 = load i64, ptr %391, align 1, !alias.scope !31, !noalias !28
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
  %420 = load i64, ptr %417, align 1, !alias.scope !28, !noalias !31
  %421 = getelementptr i8, ptr %417, i64 8
  %422 = load i64, ptr %421, align 1, !alias.scope !28, !noalias !31
  %423 = load i64, ptr %419, align 1, !alias.scope !31, !noalias !28
  %424 = getelementptr i8, ptr %418, i64 -117
  %425 = load i64, ptr %424, align 1, !alias.scope !31, !noalias !28
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
  br i1 %438, label %439, label %413, !llvm.loop !33

439:                                              ; preds = %413, %251
  %440 = phi i64 [ %409, %251 ], [ %436, %413 ]
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %442 = getelementptr inbounds i8, ptr %441, i64 -16
  %443 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %444 = load i64, ptr %442, align 1, !alias.scope !28, !noalias !31
  %445 = getelementptr i8, ptr %441, i64 -8
  %446 = load i64, ptr %445, align 1, !alias.scope !28, !noalias !31
  %447 = load i64, ptr %443, align 1, !alias.scope !31, !noalias !28
  %448 = getelementptr i8, ptr %3, i64 127
  %449 = load i64, ptr %448, align 1, !alias.scope !31, !noalias !28
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
  %467 = tail call i64 %5(ptr noundef %0, i64 noundef zeroext %1, i64 noundef zeroext %2, ptr noundef %3, i64 noundef zeroext %4) #12, !callees !34
  br label %468

468:                                              ; preds = %59, %54, %46, %10, %466, %439, %205
  %469 = phi i64 [ %248, %205 ], [ %465, %439 ], [ %467, %466 ], [ %43, %10 ], [ %51, %46 ], [ %58, %54 ], [ %73, %59 ]
  ret i64 %469
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef zeroext %1, i64 noundef zeroext %2, ptr nocapture readnone %3, i64 zeroext %4) #3 {
  %6 = alloca [8 x i64], align 8
  %7 = alloca [8 x i64], align 8
  %8 = alloca [192 x i8], align 8
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12, !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !35
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i64 noundef zeroext %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef zeroext 192)
  %11 = mul i64 %1, -7046029288634856825
  %12 = load i64, ptr %7, align 8, !alias.scope !39, !noalias !42
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !alias.scope !39, !noalias !42
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
  %25 = load i64, ptr %24, align 8, !alias.scope !39, !noalias !42
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %27 = load i64, ptr %26, align 8, !alias.scope !39, !noalias !42
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
  %38 = load i64, ptr %37, align 8, !alias.scope !39, !noalias !42
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %40 = load i64, ptr %39, align 8, !alias.scope !39, !noalias !42
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
  %51 = load i64, ptr %50, align 8, !alias.scope !39, !noalias !42
  %52 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %53 = load i64, ptr %52, align 8, !alias.scope !39, !noalias !42
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12, !noalias !35
  br label %189

68:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #12
  %69 = add i64 %2, -4734510112055689544
  %70 = sub i64 2066345149520216444, %2
  store i64 %69, ptr %8, align 8, !alias.scope !44
  %71 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %70, ptr %71, align 8, !alias.scope !44
  %72 = add i64 %2, -2623469361688619810
  %73 = sub i64 2262974939099578482, %2
  %74 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %72, ptr %74, align 8, !alias.scope !44
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %73, ptr %75, align 8, !alias.scope !44
  %76 = add i64 %2, 8711581037947681227
  %77 = sub i64 2410270004345854594, %2
  %78 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %76, ptr %78, align 8, !alias.scope !44
  %79 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %77, ptr %79, align 8, !alias.scope !44
  %80 = add i64 %2, -8204357891075471176
  %81 = sub i64 5487137525590930912, %2
  %82 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %80, ptr %82, align 8, !alias.scope !44
  %83 = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %81, ptr %83, align 8, !alias.scope !44
  %84 = add i64 %2, -3818837453329782724
  %85 = sub i64 -6688317018830679928, %2
  %86 = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %84, ptr %86, align 8, !alias.scope !44
  %87 = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 %85, ptr %87, align 8, !alias.scope !44
  %88 = add i64 %2, 5690594596133299313
  %89 = sub i64 -2833645246901970632, %2
  %90 = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 %88, ptr %90, align 8, !alias.scope !44
  %91 = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 %89, ptr %91, align 8, !alias.scope !44
  %92 = add i64 %2, 4554437623014685352
  %93 = sub i64 2111919702937427193, %2
  %94 = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 %92, ptr %94, align 8, !alias.scope !44
  %95 = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i64 %93, ptr %95, align 8, !alias.scope !44
  %96 = add i64 %2, 3556072174620004746
  %97 = sub i64 7238261902898274248, %2
  %98 = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i64 %96, ptr %98, align 8, !alias.scope !44
  %99 = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 %97, ptr %99, align 8, !alias.scope !44
  %100 = add i64 %2, -4329134394285701654
  %101 = sub i64 -1485321483350670907, %2
  %102 = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %100, ptr %102, align 8, !alias.scope !44
  %103 = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i64 %101, ptr %103, align 8, !alias.scope !44
  %104 = add i64 %2, 5321830579834785047
  %105 = sub i64 -7032137544937171245, %2
  %106 = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i64 %104, ptr %106, align 8, !alias.scope !44
  %107 = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i64 %105, ptr %107, align 8, !alias.scope !44
  %108 = add i64 %2, -242834301215959509
  %109 = sub i64 -3588858202114426737, %2
  %110 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i64 %108, ptr %110, align 8, !alias.scope !44
  %111 = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i64 %109, ptr %111, align 8, !alias.scope !44
  %112 = add i64 %2, 2883454493032893253
  %113 = sub i64 9097354517224871855, %2
  %114 = getelementptr inbounds nuw i8, ptr %8, i64 176
  store i64 %112, ptr %114, align 8, !alias.scope !44
  %115 = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i64 %113, ptr %115, align 8, !alias.scope !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !50
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef zeroext %1, ptr noundef nonnull readonly %8, i64 noundef zeroext 192)
  %116 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %117 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %118 = load i64, ptr %6, align 8, !alias.scope !52, !noalias !57
  %119 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %120 = load i64, ptr %119, align 8, !alias.scope !52, !noalias !57
  %121 = load i64, ptr %116, align 1, !alias.scope !58, !noalias !59
  %122 = getelementptr inbounds nuw i8, ptr %8, i64 19
  %123 = load i64, ptr %122, align 1, !alias.scope !58, !noalias !59
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
  %135 = load i64, ptr %133, align 8, !alias.scope !52, !noalias !57
  %136 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %137 = load i64, ptr %136, align 8, !alias.scope !52, !noalias !57
  %138 = load i64, ptr %134, align 1, !alias.scope !58, !noalias !59
  %139 = getelementptr inbounds nuw i8, ptr %8, i64 35
  %140 = load i64, ptr %139, align 1, !alias.scope !58, !noalias !59
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
  %152 = load i64, ptr %150, align 8, !alias.scope !52, !noalias !57
  %153 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %154 = load i64, ptr %153, align 8, !alias.scope !52, !noalias !57
  %155 = load i64, ptr %151, align 1, !alias.scope !58, !noalias !59
  %156 = getelementptr inbounds nuw i8, ptr %8, i64 51
  %157 = load i64, ptr %156, align 1, !alias.scope !58, !noalias !59
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
  %169 = load i64, ptr %167, align 8, !alias.scope !52, !noalias !57
  %170 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %171 = load i64, ptr %170, align 8, !alias.scope !52, !noalias !57
  %172 = load i64, ptr %168, align 1, !alias.scope !58, !noalias !59
  %173 = getelementptr inbounds nuw i8, ptr %8, i64 67
  %174 = load i64, ptr %173, align 1, !alias.scope !58, !noalias !59
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !50
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #12
  br label %189

189:                                              ; preds = %10, %68
  %190 = phi i64 [ %67, %10 ], [ %188, %68 ]
  ret i64 %190
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i64 @XXH3_len_4to8_64b(ptr nocapture noundef readonly %0, i64 noundef zeroext range(i64 4, 9) %1, i64 %2, i64 %3, i64 noundef zeroext %4) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i64 @XXH3_len_1to3_64b(ptr nocapture noundef readonly %0, i64 noundef zeroext range(i64 1, 4) %1, i32 %2, i32 %3, i64 noundef zeroext %4) unnamed_addr #7 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i64 noundef zeroext %2, ptr noalias nocapture noundef readonly %3, i64 noundef zeroext %4) unnamed_addr #3 {
  %6 = add i64 %4, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %2, -1
  %10 = udiv i64 %9, %8
  %11 = urem i64 %9, %8
  %12 = icmp ugt i64 %8, %9
  br i1 %12, label %84, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = getelementptr inbounds i8, ptr %14, i64 -56
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = getelementptr inbounds i8, ptr %14, i64 -48
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = getelementptr inbounds i8, ptr %14, i64 -40
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %22 = getelementptr inbounds i8, ptr %14, i64 -32
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = getelementptr inbounds i8, ptr %14, i64 -24
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds i8, ptr %14, i64 -16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = getelementptr inbounds i8, ptr %14, i64 -8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %30

30:                                               ; preds = %13, %30
  %31 = phi i64 [ 0, %13 ], [ %82, %30 ]
  %32 = mul i64 %31, %8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %32
  tail call fastcc void @XXH3_accumulate(ptr noundef %0, ptr noundef %33, ptr noundef %3, i64 noundef zeroext %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %34 = load i64, ptr %15, align 1, !alias.scope !63, !noalias !60
  %35 = load i64, ptr %0, align 8, !alias.scope !60, !noalias !63
  %36 = lshr i64 %35, 47
  %37 = xor i64 %34, %36
  %38 = xor i64 %37, %35
  %39 = mul i64 %38, 2654435761
  store i64 %39, ptr %0, align 8, !alias.scope !60, !noalias !63
  %40 = load i64, ptr %16, align 1, !alias.scope !63, !noalias !60
  %41 = load i64, ptr %17, align 8, !alias.scope !60, !noalias !63
  %42 = lshr i64 %41, 47
  %43 = xor i64 %40, %42
  %44 = xor i64 %43, %41
  %45 = mul i64 %44, 2654435761
  store i64 %45, ptr %17, align 8, !alias.scope !60, !noalias !63
  %46 = load i64, ptr %18, align 1, !alias.scope !63, !noalias !60
  %47 = load i64, ptr %19, align 8, !alias.scope !60, !noalias !63
  %48 = lshr i64 %47, 47
  %49 = xor i64 %46, %48
  %50 = xor i64 %49, %47
  %51 = mul i64 %50, 2654435761
  store i64 %51, ptr %19, align 8, !alias.scope !60, !noalias !63
  %52 = load i64, ptr %20, align 1, !alias.scope !63, !noalias !60
  %53 = load i64, ptr %21, align 8, !alias.scope !60, !noalias !63
  %54 = lshr i64 %53, 47
  %55 = xor i64 %52, %54
  %56 = xor i64 %55, %53
  %57 = mul i64 %56, 2654435761
  store i64 %57, ptr %21, align 8, !alias.scope !60, !noalias !63
  %58 = load i64, ptr %22, align 1, !alias.scope !63, !noalias !60
  %59 = load i64, ptr %23, align 8, !alias.scope !60, !noalias !63
  %60 = lshr i64 %59, 47
  %61 = xor i64 %58, %60
  %62 = xor i64 %61, %59
  %63 = mul i64 %62, 2654435761
  store i64 %63, ptr %23, align 8, !alias.scope !60, !noalias !63
  %64 = load i64, ptr %24, align 1, !alias.scope !63, !noalias !60
  %65 = load i64, ptr %25, align 8, !alias.scope !60, !noalias !63
  %66 = lshr i64 %65, 47
  %67 = xor i64 %64, %66
  %68 = xor i64 %67, %65
  %69 = mul i64 %68, 2654435761
  store i64 %69, ptr %25, align 8, !alias.scope !60, !noalias !63
  %70 = load i64, ptr %26, align 1, !alias.scope !63, !noalias !60
  %71 = load i64, ptr %27, align 8, !alias.scope !60, !noalias !63
  %72 = lshr i64 %71, 47
  %73 = xor i64 %70, %72
  %74 = xor i64 %73, %71
  %75 = mul i64 %74, 2654435761
  store i64 %75, ptr %27, align 8, !alias.scope !60, !noalias !63
  %76 = load i64, ptr %28, align 1, !alias.scope !63, !noalias !60
  %77 = load i64, ptr %29, align 8, !alias.scope !60, !noalias !63
  %78 = lshr i64 %77, 47
  %79 = xor i64 %76, %78
  %80 = xor i64 %79, %77
  %81 = mul i64 %80, 2654435761
  store i64 %81, ptr %29, align 8, !alias.scope !60, !noalias !63
  %82 = add nuw i64 %31, 1
  %83 = icmp ult i64 %82, %10
  br i1 %83, label %30, label %84, !llvm.loop !65

84:                                               ; preds = %30, %5
  %85 = mul i64 %10, %8
  %86 = lshr i64 %11, 6
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 %85
  tail call fastcc void @XXH3_accumulate(ptr noundef %0, ptr noundef %87, ptr noundef %3, i64 noundef zeroext %86)
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %89 = getelementptr inbounds i8, ptr %88, i64 -64
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %91 = getelementptr inbounds i8, ptr %90, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %92 = load i64, ptr %89, align 1, !alias.scope !69, !noalias !73
  %93 = load i64, ptr %91, align 1, !alias.scope !71, !noalias !74
  %94 = xor i64 %93, %92
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %96 = load i64, ptr %95, align 8, !alias.scope !66, !noalias !75
  %97 = add i64 %96, %92
  %98 = and i64 %94, 4294967295
  %99 = lshr i64 %94, 32
  %100 = mul nuw i64 %98, %99
  %101 = load i64, ptr %0, align 8, !alias.scope !66, !noalias !75
  %102 = add i64 %100, %101
  %103 = getelementptr inbounds i8, ptr %88, i64 -56
  %104 = load i64, ptr %103, align 1, !alias.scope !69, !noalias !73
  %105 = getelementptr inbounds i8, ptr %90, i64 -63
  %106 = load i64, ptr %105, align 1, !alias.scope !71, !noalias !74
  %107 = xor i64 %106, %104
  %108 = add i64 %102, %104
  store i64 %108, ptr %0, align 8, !alias.scope !66, !noalias !75
  %109 = and i64 %107, 4294967295
  %110 = lshr i64 %107, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %97, %111
  store i64 %112, ptr %95, align 8, !alias.scope !66, !noalias !75
  %113 = getelementptr inbounds i8, ptr %88, i64 -48
  %114 = load i64, ptr %113, align 1, !alias.scope !69, !noalias !73
  %115 = getelementptr inbounds i8, ptr %90, i64 -55
  %116 = load i64, ptr %115, align 1, !alias.scope !71, !noalias !74
  %117 = xor i64 %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %119 = load i64, ptr %118, align 8, !alias.scope !66, !noalias !75
  %120 = add i64 %119, %114
  %121 = and i64 %117, 4294967295
  %122 = lshr i64 %117, 32
  %123 = mul nuw i64 %121, %122
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %125 = load i64, ptr %124, align 8, !alias.scope !66, !noalias !75
  %126 = add i64 %123, %125
  %127 = getelementptr inbounds i8, ptr %88, i64 -40
  %128 = load i64, ptr %127, align 1, !alias.scope !69, !noalias !73
  %129 = getelementptr inbounds i8, ptr %90, i64 -47
  %130 = load i64, ptr %129, align 1, !alias.scope !71, !noalias !74
  %131 = xor i64 %130, %128
  %132 = add i64 %126, %128
  store i64 %132, ptr %124, align 8, !alias.scope !66, !noalias !75
  %133 = and i64 %131, 4294967295
  %134 = lshr i64 %131, 32
  %135 = mul nuw i64 %133, %134
  %136 = add i64 %120, %135
  store i64 %136, ptr %118, align 8, !alias.scope !66, !noalias !75
  %137 = getelementptr inbounds i8, ptr %88, i64 -32
  %138 = load i64, ptr %137, align 1, !alias.scope !69, !noalias !73
  %139 = getelementptr inbounds i8, ptr %90, i64 -39
  %140 = load i64, ptr %139, align 1, !alias.scope !71, !noalias !74
  %141 = xor i64 %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %143 = load i64, ptr %142, align 8, !alias.scope !66, !noalias !75
  %144 = add i64 %143, %138
  %145 = and i64 %141, 4294967295
  %146 = lshr i64 %141, 32
  %147 = mul nuw i64 %145, %146
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %149 = load i64, ptr %148, align 8, !alias.scope !66, !noalias !75
  %150 = add i64 %147, %149
  %151 = getelementptr inbounds i8, ptr %88, i64 -24
  %152 = load i64, ptr %151, align 1, !alias.scope !69, !noalias !73
  %153 = getelementptr inbounds i8, ptr %90, i64 -31
  %154 = load i64, ptr %153, align 1, !alias.scope !71, !noalias !74
  %155 = xor i64 %154, %152
  %156 = add i64 %150, %152
  store i64 %156, ptr %148, align 8, !alias.scope !66, !noalias !75
  %157 = and i64 %155, 4294967295
  %158 = lshr i64 %155, 32
  %159 = mul nuw i64 %157, %158
  %160 = add i64 %144, %159
  store i64 %160, ptr %142, align 8, !alias.scope !66, !noalias !75
  %161 = getelementptr inbounds i8, ptr %88, i64 -16
  %162 = load i64, ptr %161, align 1, !alias.scope !69, !noalias !73
  %163 = getelementptr inbounds i8, ptr %90, i64 -23
  %164 = load i64, ptr %163, align 1, !alias.scope !71, !noalias !74
  %165 = xor i64 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %167 = load i64, ptr %166, align 8, !alias.scope !66, !noalias !75
  %168 = add i64 %167, %162
  %169 = and i64 %165, 4294967295
  %170 = lshr i64 %165, 32
  %171 = mul nuw i64 %169, %170
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = load i64, ptr %172, align 8, !alias.scope !66, !noalias !75
  %174 = add i64 %171, %173
  %175 = getelementptr inbounds i8, ptr %88, i64 -8
  %176 = load i64, ptr %175, align 1, !alias.scope !69, !noalias !73
  %177 = getelementptr inbounds i8, ptr %90, i64 -15
  %178 = load i64, ptr %177, align 1, !alias.scope !71, !noalias !74
  %179 = xor i64 %178, %176
  %180 = add i64 %174, %176
  store i64 %180, ptr %172, align 8, !alias.scope !66, !noalias !75
  %181 = and i64 %179, 4294967295
  %182 = lshr i64 %179, 32
  %183 = mul nuw i64 %181, %182
  %184 = add i64 %168, %183
  store i64 %184, ptr %166, align 8, !alias.scope !66, !noalias !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_accumulate(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, i64 noundef zeroext range(i64 0, 2305843009213693952) %3) unnamed_addr #3 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %118, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i64, ptr %7, align 8, !alias.scope !76, !noalias !79
  %15 = load i64, ptr %0, align 8, !alias.scope !76, !noalias !79
  %16 = load i64, ptr %8, align 8, !alias.scope !76, !noalias !79
  %17 = load i64, ptr %9, align 8, !alias.scope !76, !noalias !79
  %18 = load i64, ptr %10, align 8, !alias.scope !76, !noalias !79
  %19 = load i64, ptr %11, align 8, !alias.scope !76, !noalias !79
  %20 = load i64, ptr %12, align 8, !alias.scope !76, !noalias !79
  %21 = load i64, ptr %13, align 8, !alias.scope !76, !noalias !79
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
  %31 = phi i64 [ 0, %6 ], [ %115, %22 ]
  %32 = shl i64 %31, 6
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %34, i32 0, i32 3, i32 1)
  %35 = shl nuw i64 %31, 3
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %37 = load i64, ptr %33, align 1, !alias.scope !82, !noalias !84
  %38 = load i64, ptr %36, align 1, !alias.scope !83, !noalias !85
  %39 = xor i64 %38, %37
  %40 = add i64 %30, %37
  %41 = and i64 %39, 4294967295
  %42 = lshr i64 %39, 32
  %43 = mul nuw i64 %41, %42
  %44 = add i64 %43, %29
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %46 = load i64, ptr %45, align 1, !alias.scope !82, !noalias !84
  %47 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %48 = load i64, ptr %47, align 1, !alias.scope !83, !noalias !85
  %49 = xor i64 %48, %46
  %50 = add i64 %44, %46
  %51 = and i64 %49, 4294967295
  %52 = lshr i64 %49, 32
  %53 = mul nuw i64 %51, %52
  %54 = add i64 %40, %53
  %55 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %56 = load i64, ptr %55, align 1, !alias.scope !82, !noalias !84
  %57 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %58 = load i64, ptr %57, align 1, !alias.scope !83, !noalias !85
  %59 = xor i64 %58, %56
  %60 = add i64 %28, %56
  %61 = and i64 %59, 4294967295
  %62 = lshr i64 %59, 32
  %63 = mul nuw i64 %61, %62
  %64 = add i64 %63, %27
  %65 = getelementptr inbounds nuw i8, ptr %33, i64 24
  %66 = load i64, ptr %65, align 1, !alias.scope !82, !noalias !84
  %67 = getelementptr inbounds nuw i8, ptr %36, i64 24
  %68 = load i64, ptr %67, align 1, !alias.scope !83, !noalias !85
  %69 = xor i64 %68, %66
  %70 = add i64 %64, %66
  %71 = and i64 %69, 4294967295
  %72 = lshr i64 %69, 32
  %73 = mul nuw i64 %71, %72
  %74 = add i64 %60, %73
  %75 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %76 = load i64, ptr %75, align 1, !alias.scope !82, !noalias !84
  %77 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %78 = load i64, ptr %77, align 1, !alias.scope !83, !noalias !85
  %79 = xor i64 %78, %76
  %80 = add i64 %26, %76
  %81 = and i64 %79, 4294967295
  %82 = lshr i64 %79, 32
  %83 = mul nuw i64 %81, %82
  %84 = add i64 %83, %25
  %85 = getelementptr inbounds nuw i8, ptr %33, i64 40
  %86 = load i64, ptr %85, align 1, !alias.scope !82, !noalias !84
  %87 = getelementptr inbounds nuw i8, ptr %36, i64 40
  %88 = load i64, ptr %87, align 1, !alias.scope !83, !noalias !85
  %89 = xor i64 %88, %86
  %90 = add i64 %84, %86
  %91 = and i64 %89, 4294967295
  %92 = lshr i64 %89, 32
  %93 = mul nuw i64 %91, %92
  %94 = add i64 %80, %93
  %95 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %96 = load i64, ptr %95, align 1, !alias.scope !82, !noalias !84
  %97 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %98 = load i64, ptr %97, align 1, !alias.scope !83, !noalias !85
  %99 = xor i64 %98, %96
  %100 = add i64 %24, %96
  %101 = and i64 %99, 4294967295
  %102 = lshr i64 %99, 32
  %103 = mul nuw i64 %101, %102
  %104 = add i64 %103, %23
  %105 = getelementptr inbounds nuw i8, ptr %33, i64 56
  %106 = load i64, ptr %105, align 1, !alias.scope !82, !noalias !84
  %107 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %108 = load i64, ptr %107, align 1, !alias.scope !83, !noalias !85
  %109 = xor i64 %108, %106
  %110 = add i64 %104, %106
  %111 = and i64 %109, 4294967295
  %112 = lshr i64 %109, 32
  %113 = mul nuw i64 %111, %112
  %114 = add i64 %100, %113
  %115 = add nuw nsw i64 %31, 1
  %116 = icmp eq i64 %115, %3
  br i1 %116, label %117, label %22, !llvm.loop !86

117:                                              ; preds = %22
  store i64 %54, ptr %7, align 8, !alias.scope !76, !noalias !79
  store i64 %50, ptr %0, align 8, !alias.scope !76, !noalias !79
  store i64 %74, ptr %8, align 8, !alias.scope !76, !noalias !79
  store i64 %70, ptr %9, align 8, !alias.scope !76, !noalias !79
  store i64 %94, ptr %10, align 8, !alias.scope !76, !noalias !79
  store i64 %90, ptr %11, align 8, !alias.scope !76, !noalias !79
  store i64 %114, ptr %12, align 8, !alias.scope !76, !noalias !79
  store i64 %110, ptr %13, align 8, !alias.scope !76, !noalias !79
  br label %118

118:                                              ; preds = %117, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite)
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef zeroext %1, i64 zeroext %2, ptr noalias nocapture noundef readonly %3, i64 noundef zeroext %4) #9 {
  %6 = alloca [8 x i64], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12, !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !90
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef zeroext %1, ptr noundef readonly %3, i64 noundef zeroext %4)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %8 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %9 = load i64, ptr %6, align 8, !alias.scope !92, !noalias !97
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !92, !noalias !97
  %12 = load i64, ptr %7, align 1, !alias.scope !98, !noalias !99
  %13 = getelementptr i8, ptr %3, i64 19
  %14 = load i64, ptr %13, align 1, !alias.scope !98, !noalias !99
  %15 = xor i64 %12, %9
  %16 = xor i64 %14, %11
  %17 = zext i64 %15 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %8, %22
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %26 = load i64, ptr %24, align 8, !alias.scope !92, !noalias !97
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !92, !noalias !97
  %29 = load i64, ptr %25, align 1, !alias.scope !98, !noalias !99
  %30 = getelementptr i8, ptr %3, i64 35
  %31 = load i64, ptr %30, align 1, !alias.scope !98, !noalias !99
  %32 = xor i64 %29, %26
  %33 = xor i64 %31, %28
  %34 = zext i64 %32 to i128
  %35 = zext i64 %33 to i128
  %36 = mul nuw i128 %35, %34
  %37 = lshr i128 %36, 64
  %38 = xor i128 %37, %36
  %39 = trunc i128 %38 to i64
  %40 = add i64 %23, %39
  %41 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %43 = load i64, ptr %41, align 8, !alias.scope !92, !noalias !97
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !92, !noalias !97
  %46 = load i64, ptr %42, align 1, !alias.scope !98, !noalias !99
  %47 = getelementptr i8, ptr %3, i64 51
  %48 = load i64, ptr %47, align 1, !alias.scope !98, !noalias !99
  %49 = xor i64 %46, %43
  %50 = xor i64 %48, %45
  %51 = zext i64 %49 to i128
  %52 = zext i64 %50 to i128
  %53 = mul nuw i128 %52, %51
  %54 = lshr i128 %53, 64
  %55 = xor i128 %54, %53
  %56 = trunc i128 %55 to i64
  %57 = add i64 %40, %56
  %58 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %60 = load i64, ptr %58, align 8, !alias.scope !92, !noalias !97
  %61 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !92, !noalias !97
  %63 = load i64, ptr %59, align 1, !alias.scope !98, !noalias !99
  %64 = getelementptr i8, ptr %3, i64 67
  %65 = load i64, ptr %64, align 1, !alias.scope !98, !noalias !99
  %66 = xor i64 %63, %60
  %67 = xor i64 %65, %62
  %68 = zext i64 %66 to i128
  %69 = zext i64 %67 to i128
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12, !noalias !90
  ret i64 %79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite)
define internal fastcc inreg { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef zeroext %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %4, ptr noundef %0, i64 noundef zeroext %1, ptr noundef %2, i64 noundef zeroext 192)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %6 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %7 = load i64, ptr %4, align 8, !alias.scope !100, !noalias !103
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8, !alias.scope !100, !noalias !103
  %10 = load i64, ptr %5, align 1, !alias.scope !103, !noalias !100
  %11 = getelementptr i8, ptr %2, i64 19
  %12 = load i64, ptr %11, align 1, !alias.scope !103, !noalias !100
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
  %24 = load i64, ptr %22, align 8, !alias.scope !100, !noalias !103
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %26 = load i64, ptr %25, align 8, !alias.scope !100, !noalias !103
  %27 = load i64, ptr %23, align 1, !alias.scope !103, !noalias !100
  %28 = getelementptr i8, ptr %2, i64 35
  %29 = load i64, ptr %28, align 1, !alias.scope !103, !noalias !100
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
  %41 = load i64, ptr %39, align 8, !alias.scope !100, !noalias !103
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %43 = load i64, ptr %42, align 8, !alias.scope !100, !noalias !103
  %44 = load i64, ptr %40, align 1, !alias.scope !103, !noalias !100
  %45 = getelementptr i8, ptr %2, i64 51
  %46 = load i64, ptr %45, align 1, !alias.scope !103, !noalias !100
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
  %58 = load i64, ptr %56, align 8, !alias.scope !100, !noalias !103
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %60 = load i64, ptr %59, align 8, !alias.scope !100, !noalias !103
  %61 = load i64, ptr %57, align 1, !alias.scope !103, !noalias !100
  %62 = getelementptr i8, ptr %2, i64 67
  %63 = load i64, ptr %62, align 1, !alias.scope !103, !noalias !100
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
  %81 = load i64, ptr %78, align 1, !alias.scope !105, !noalias !108
  %82 = getelementptr i8, ptr %2, i64 125
  %83 = load i64, ptr %82, align 1, !alias.scope !105, !noalias !108
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
  %94 = load i64, ptr %93, align 1, !alias.scope !105, !noalias !108
  %95 = getelementptr i8, ptr %2, i64 141
  %96 = load i64, ptr %95, align 1, !alias.scope !105, !noalias !108
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
  %107 = load i64, ptr %106, align 1, !alias.scope !105, !noalias !108
  %108 = getelementptr i8, ptr %2, i64 157
  %109 = load i64, ptr %108, align 1, !alias.scope !105, !noalias !108
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
  %120 = load i64, ptr %119, align 1, !alias.scope !105, !noalias !108
  %121 = getelementptr i8, ptr %2, i64 173
  %122 = load i64, ptr %121, align 1, !alias.scope !105, !noalias !108
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
  %137 = insertvalue { i64, i64 } poison, i64 %77, 0
  %138 = insertvalue { i64, i64 } %137, i64 %136, 1
  ret { i64, i64 } %138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips64r2" "target-features"="+mips64r2,-noabicalls" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips64r2" "target-features"="+mips64r2,-noabicalls" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips64r2" "target-features"="+mips64r2,-noabicalls" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips64r2" "target-features"="+mips64r2,-noabicalls" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips64r2" "target-features"="+mips64r2,-noabicalls" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips64r2" "target-features"="+mips64r2,-noabicalls" }
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
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_len_17to128_128b: argument 0"}
!11 = distinct !{!11, !"XXH3_len_17to128_128b"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_len_129to240_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_129to240_128b"}
!15 = distinct !{!15, !5}
!16 = !{!17}
!17 = distinct !{!17, !18, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!18 = distinct !{!18, !"XXH3_hashLong_128b_withSeed_internal"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_initCustomSecret_scalar: argument 0"}
!21 = distinct !{!21, !"XXH3_initCustomSecret_scalar"}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_len_17to128_64b: argument 0"}
!25 = distinct !{!25, !"XXH3_len_17to128_64b"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"XXH3_len_17to128_64b: argument 1"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_len_129to240_64b: argument 0"}
!30 = distinct !{!30, !"XXH3_len_129to240_64b"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"XXH3_len_129to240_64b: argument 1"}
!33 = distinct !{!33, !5}
!34 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"XXH3_hashLong_64b_internal: argument 0"}
!37 = distinct !{!37, !"XXH3_hashLong_64b_internal"}
!38 = distinct !{!38, !37, !"XXH3_hashLong_64b_internal: argument 1"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_mergeAccs: argument 0"}
!41 = distinct !{!41, !"XXH3_mergeAccs"}
!42 = !{!43, !36, !38}
!43 = distinct !{!43, !41, !"XXH3_mergeAccs: argument 1"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_initCustomSecret_scalar: argument 0"}
!46 = distinct !{!46, !"XXH3_initCustomSecret_scalar"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_hashLong_64b_internal: argument 1"}
!49 = distinct !{!49, !"XXH3_hashLong_64b_internal"}
!50 = !{!51, !48}
!51 = distinct !{!51, !49, !"XXH3_hashLong_64b_internal: argument 0"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_mergeAccs: argument 0"}
!54 = distinct !{!54, !"XXH3_mergeAccs"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"XXH3_mergeAccs: argument 1"}
!57 = !{!56, !51, !48}
!58 = !{!56, !48}
!59 = !{!53, !51}
!60 = !{!61}
!61 = distinct !{!61, !62, !"XXH3_scrambleAcc_scalar: argument 0"}
!62 = distinct !{!62, !"XXH3_scrambleAcc_scalar"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"XXH3_scrambleAcc_scalar: argument 1"}
!65 = distinct !{!65, !5}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_accumulate_512_scalar: argument 0"}
!68 = distinct !{!68, !"XXH3_accumulate_512_scalar"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"XXH3_accumulate_512_scalar: argument 1"}
!71 = !{!72}
!72 = distinct !{!72, !68, !"XXH3_accumulate_512_scalar: argument 2"}
!73 = !{!67, !72}
!74 = !{!67, !70}
!75 = !{!70, !72}
!76 = !{!77}
!77 = distinct !{!77, !78, !"XXH3_accumulate_512_scalar: argument 0"}
!78 = distinct !{!78, !"XXH3_accumulate_512_scalar"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"XXH3_accumulate_512_scalar: argument 1"}
!81 = distinct !{!81, !78, !"XXH3_accumulate_512_scalar: argument 2"}
!82 = !{!80}
!83 = !{!81}
!84 = !{!77, !81}
!85 = !{!77, !80}
!86 = distinct !{!86, !5}
!87 = !{!88}
!88 = distinct !{!88, !89, !"XXH3_hashLong_64b_internal: argument 1"}
!89 = distinct !{!89, !"XXH3_hashLong_64b_internal"}
!90 = !{!91, !88}
!91 = distinct !{!91, !89, !"XXH3_hashLong_64b_internal: argument 0"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"XXH3_mergeAccs: argument 0"}
!94 = distinct !{!94, !"XXH3_mergeAccs"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"XXH3_mergeAccs: argument 1"}
!97 = !{!96, !91, !88}
!98 = !{!96, !88}
!99 = !{!93, !91}
!100 = !{!101}
!101 = distinct !{!101, !102, !"XXH3_mergeAccs: argument 0"}
!102 = distinct !{!102, !"XXH3_mergeAccs"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"XXH3_mergeAccs: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"XXH3_mergeAccs: argument 1"}
!107 = distinct !{!107, !"XXH3_mergeAccs"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"XXH3_mergeAccs: argument 0"}
