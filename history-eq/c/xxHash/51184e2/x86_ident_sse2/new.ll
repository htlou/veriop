; ModuleID = 'x86_ident_sse2/wrapper.c'
source_filename = "x86_ident_sse2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  %81 = add i64 %79, %1
  %82 = and i64 %1, 31
  %83 = icmp samesign ugt i64 %82, 7
  br i1 %83, label %84, label %131

84:                                               ; preds = %78
  %85 = add nsw i64 %82, -8
  %86 = and i64 %85, 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i64, ptr %80, align 1
  %90 = mul i64 %89, -4417276706812531889
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %94 = xor i64 %92, %81
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 27)
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  %98 = add nsw i64 %82, -8
  br label %99

99:                                               ; preds = %88, %84
  %100 = phi i64 [ %81, %84 ], [ %97, %88 ]
  %101 = phi ptr [ %80, %84 ], [ %93, %88 ]
  %102 = phi i64 [ %82, %84 ], [ %98, %88 ]
  %103 = phi ptr [ poison, %84 ], [ %93, %88 ]
  %104 = phi i64 [ poison, %84 ], [ %97, %88 ]
  %105 = phi i64 [ poison, %84 ], [ %98, %88 ]
  %106 = icmp ult i64 %85, 8
  br i1 %106, label %131, label %107

107:                                              ; preds = %99, %107
  %108 = phi i64 [ %128, %107 ], [ %100, %99 ]
  %109 = phi ptr [ %124, %107 ], [ %101, %99 ]
  %110 = phi i64 [ %129, %107 ], [ %102, %99 ]
  %111 = load i64, ptr %109, align 1
  %112 = mul i64 %111, -4417276706812531889
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 31)
  %114 = mul i64 %113, -7046029288634856825
  %115 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %116 = xor i64 %114, %108
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 27)
  %118 = mul i64 %117, -7046029288634856825
  %119 = add i64 %118, -8796714831421723037
  %120 = load i64, ptr %115, align 1
  %121 = mul i64 %120, -4417276706812531889
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 31)
  %123 = mul i64 %122, -7046029288634856825
  %124 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %125 = xor i64 %123, %119
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 27)
  %127 = mul i64 %126, -7046029288634856825
  %128 = add i64 %127, -8796714831421723037
  %129 = add nsw i64 %110, -16
  %130 = icmp ugt i64 %129, 7
  br i1 %130, label %107, label %131, !llvm.loop !8

131:                                              ; preds = %99, %107, %78
  %132 = phi i64 [ %82, %78 ], [ %105, %99 ], [ %129, %107 ]
  %133 = phi ptr [ %80, %78 ], [ %103, %99 ], [ %124, %107 ]
  %134 = phi i64 [ %81, %78 ], [ %104, %99 ], [ %128, %107 ]
  %135 = icmp samesign ugt i64 %132, 3
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load i32, ptr %133, align 1
  %138 = zext i32 %137 to i64
  %139 = mul i64 %138, -7046029288634856825
  %140 = xor i64 %139, %134
  %141 = getelementptr inbounds nuw i8, ptr %133, i64 4
  %142 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 23)
  %143 = mul i64 %142, -4417276706812531889
  %144 = add i64 %143, 1609587929392839161
  %145 = add nsw i64 %132, -4
  br label %146

146:                                              ; preds = %136, %131
  %147 = phi i64 [ %145, %136 ], [ %132, %131 ]
  %148 = phi ptr [ %141, %136 ], [ %133, %131 ]
  %149 = phi i64 [ %144, %136 ], [ %134, %131 ]
  %150 = icmp eq i64 %147, 0
  br i1 %150, label %209, label %151

151:                                              ; preds = %146
  %152 = and i64 %147, 3
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %151, %154
  %155 = phi i64 [ %165, %154 ], [ %149, %151 ]
  %156 = phi ptr [ %159, %154 ], [ %148, %151 ]
  %157 = phi i64 [ %166, %154 ], [ %147, %151 ]
  %158 = phi i64 [ %167, %154 ], [ 0, %151 ]
  %159 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %160 = load i8, ptr %156, align 1
  %161 = zext i8 %160 to i64
  %162 = mul i64 %161, 2870177450012600261
  %163 = xor i64 %162, %155
  %164 = tail call i64 @llvm.fshl.i64(i64 %163, i64 %163, i64 11)
  %165 = mul i64 %164, -7046029288634856825
  %166 = add nsw i64 %157, -1
  %167 = add i64 %158, 1
  %168 = icmp eq i64 %167, %152
  br i1 %168, label %169, label %154, !llvm.loop !9

169:                                              ; preds = %154, %151
  %170 = phi i64 [ poison, %151 ], [ %165, %154 ]
  %171 = phi i64 [ %149, %151 ], [ %165, %154 ]
  %172 = phi ptr [ %148, %151 ], [ %159, %154 ]
  %173 = phi i64 [ %147, %151 ], [ %166, %154 ]
  %174 = icmp ult i64 %147, 4
  br i1 %174, label %209, label %175

175:                                              ; preds = %169, %175
  %176 = phi i64 [ %206, %175 ], [ %171, %169 ]
  %177 = phi ptr [ %200, %175 ], [ %172, %169 ]
  %178 = phi i64 [ %207, %175 ], [ %173, %169 ]
  %179 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %180 = load i8, ptr %177, align 1
  %181 = zext i8 %180 to i64
  %182 = mul i64 %181, 2870177450012600261
  %183 = xor i64 %182, %176
  %184 = tail call i64 @llvm.fshl.i64(i64 %183, i64 %183, i64 11)
  %185 = mul i64 %184, -7046029288634856825
  %186 = getelementptr inbounds nuw i8, ptr %177, i64 2
  %187 = load i8, ptr %179, align 1
  %188 = zext i8 %187 to i64
  %189 = mul i64 %188, 2870177450012600261
  %190 = xor i64 %189, %185
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 11)
  %192 = mul i64 %191, -7046029288634856825
  %193 = getelementptr inbounds nuw i8, ptr %177, i64 3
  %194 = load i8, ptr %186, align 1
  %195 = zext i8 %194 to i64
  %196 = mul i64 %195, 2870177450012600261
  %197 = xor i64 %196, %192
  %198 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 11)
  %199 = mul i64 %198, -7046029288634856825
  %200 = getelementptr inbounds nuw i8, ptr %177, i64 4
  %201 = load i8, ptr %193, align 1
  %202 = zext i8 %201 to i64
  %203 = mul i64 %202, 2870177450012600261
  %204 = xor i64 %203, %199
  %205 = tail call i64 @llvm.fshl.i64(i64 %204, i64 %204, i64 11)
  %206 = mul i64 %205, -7046029288634856825
  %207 = add nsw i64 %178, -4
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %175, !llvm.loop !11

209:                                              ; preds = %169, %175, %146
  %210 = phi i64 [ %149, %146 ], [ %170, %169 ], [ %206, %175 ]
  %211 = lshr i64 %210, 33
  %212 = xor i64 %211, %210
  %213 = mul i64 %212, -4417276706812531889
  %214 = lshr i64 %213, 29
  %215 = xor i64 %214, %213
  %216 = mul i64 %215, 1609587929392839161
  %217 = lshr i64 %216, 32
  %218 = xor i64 %217, %216
  ret i64 %218
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_seed(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, ptr noundef nonnull @XXH3_hashLong_64b_withSeed)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_secret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
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
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [192 x i8], align 16
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
  br label %623

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
  %327 = insertvalue { i64, i64 } poison, i64 %320, 0
  %328 = insertvalue { i64, i64 } %327, i64 %326, 1
  br label %623

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
  %588 = insertvalue { i64, i64 } poison, i64 %581, 0
  %589 = insertvalue { i64, i64 } %588, i64 %587, 1
  br label %623

590:                                              ; preds = %329
  %591 = icmp eq i64 %3, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %590
  %593 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %623

594:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #13, !noalias !19
  %595 = sub i64 0, %3
  %596 = insertelement <2 x i64> poison, i64 %3, i64 0
  %597 = insertelement <2 x i64> %596, i64 %595, i64 1
  %598 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %5) #13, !noalias !19, !srcloc !22
  %599 = add <2 x i64> %597, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %599, ptr %598, align 16, !noalias !19
  %600 = add <2 x i64> %597, <i64 -2623469361688619810, i64 2262974939099578482>
  %601 = getelementptr inbounds nuw i8, ptr %598, i64 16
  store <2 x i64> %600, ptr %601, align 16, !noalias !19
  %602 = add <2 x i64> %597, <i64 8711581037947681227, i64 2410270004345854594>
  %603 = getelementptr inbounds nuw i8, ptr %598, i64 32
  store <2 x i64> %602, ptr %603, align 16, !noalias !19
  %604 = add <2 x i64> %597, <i64 -8204357891075471176, i64 5487137525590930912>
  %605 = getelementptr inbounds nuw i8, ptr %598, i64 48
  store <2 x i64> %604, ptr %605, align 16, !noalias !19
  %606 = add <2 x i64> %597, <i64 -3818837453329782724, i64 -6688317018830679928>
  %607 = getelementptr inbounds nuw i8, ptr %598, i64 64
  store <2 x i64> %606, ptr %607, align 16, !noalias !19
  %608 = add <2 x i64> %597, <i64 5690594596133299313, i64 -2833645246901970632>
  %609 = getelementptr inbounds nuw i8, ptr %598, i64 80
  store <2 x i64> %608, ptr %609, align 16, !noalias !19
  %610 = add <2 x i64> %597, <i64 4554437623014685352, i64 2111919702937427193>
  %611 = getelementptr inbounds nuw i8, ptr %598, i64 96
  store <2 x i64> %610, ptr %611, align 16, !noalias !19
  %612 = add <2 x i64> %597, <i64 3556072174620004746, i64 7238261902898274248>
  %613 = getelementptr inbounds nuw i8, ptr %598, i64 112
  store <2 x i64> %612, ptr %613, align 16, !noalias !19
  %614 = add <2 x i64> %597, <i64 -4329134394285701654, i64 -1485321483350670907>
  %615 = getelementptr inbounds nuw i8, ptr %598, i64 128
  store <2 x i64> %614, ptr %615, align 16, !noalias !19
  %616 = add <2 x i64> %597, <i64 5321830579834785047, i64 -7032137544937171245>
  %617 = getelementptr inbounds nuw i8, ptr %598, i64 144
  store <2 x i64> %616, ptr %617, align 16, !noalias !19
  %618 = add <2 x i64> %597, <i64 -242834301215959509, i64 -3588858202114426737>
  %619 = getelementptr inbounds nuw i8, ptr %598, i64 160
  store <2 x i64> %618, ptr %619, align 16, !noalias !19
  %620 = add <2 x i64> %597, <i64 2883454493032893253, i64 9097354517224871855>
  %621 = getelementptr inbounds nuw i8, ptr %598, i64 176
  store <2 x i64> %620, ptr %621, align 16, !noalias !19
  %622 = call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #13, !noalias !19
  br label %623

623:                                              ; preds = %145, %272, %532, %592, %594
  %624 = phi { i64, i64 } [ %151, %145 ], [ %328, %272 ], [ %589, %532 ], [ %593, %592 ], [ %622, %594 ]
  %625 = extractvalue { i64, i64 } %624, 0
  %626 = extractvalue { i64, i64 } %624, 1
  store i64 %625, ptr %0, align 8
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %626, ptr %627, align 8
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

; Function Attrs: nounwind uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef range(i64 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #2 {
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %74

8:                                                ; preds = %6
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %44, !prof !23

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
  br label %379

44:                                               ; preds = %8
  %45 = icmp samesign ugt i64 %1, 3
  br i1 %45, label %46, label %52, !prof !23

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
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
  %86 = load i64, ptr %84, align 1, !alias.scope !24, !noalias !27
  %87 = getelementptr i8, ptr %0, i64 56
  %88 = load i64, ptr %87, align 1, !alias.scope !24, !noalias !27
  %89 = load i64, ptr %85, align 1, !alias.scope !27, !noalias !24
  %90 = getelementptr i8, ptr %3, i64 104
  %91 = load i64, ptr %90, align 1, !alias.scope !27, !noalias !24
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
  %106 = load i64, ptr %104, align 1, !alias.scope !24, !noalias !27
  %107 = getelementptr i8, ptr %103, i64 -56
  %108 = load i64, ptr %107, align 1, !alias.scope !24, !noalias !27
  %109 = load i64, ptr %105, align 1, !alias.scope !27, !noalias !24
  %110 = getelementptr i8, ptr %3, i64 120
  %111 = load i64, ptr %110, align 1, !alias.scope !27, !noalias !24
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
  %127 = load i64, ptr %125, align 1, !alias.scope !24, !noalias !27
  %128 = getelementptr i8, ptr %0, i64 40
  %129 = load i64, ptr %128, align 1, !alias.scope !24, !noalias !27
  %130 = load i64, ptr %126, align 1, !alias.scope !27, !noalias !24
  %131 = getelementptr i8, ptr %3, i64 72
  %132 = load i64, ptr %131, align 1, !alias.scope !27, !noalias !24
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
  %147 = load i64, ptr %145, align 1, !alias.scope !24, !noalias !27
  %148 = getelementptr i8, ptr %144, i64 -40
  %149 = load i64, ptr %148, align 1, !alias.scope !24, !noalias !27
  %150 = load i64, ptr %146, align 1, !alias.scope !27, !noalias !24
  %151 = getelementptr i8, ptr %3, i64 88
  %152 = load i64, ptr %151, align 1, !alias.scope !27, !noalias !24
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
  %168 = load i64, ptr %166, align 1, !alias.scope !24, !noalias !27
  %169 = getelementptr i8, ptr %0, i64 24
  %170 = load i64, ptr %169, align 1, !alias.scope !24, !noalias !27
  %171 = load i64, ptr %167, align 1, !alias.scope !27, !noalias !24
  %172 = getelementptr i8, ptr %3, i64 40
  %173 = load i64, ptr %172, align 1, !alias.scope !27, !noalias !24
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
  %188 = load i64, ptr %186, align 1, !alias.scope !24, !noalias !27
  %189 = getelementptr i8, ptr %185, i64 -24
  %190 = load i64, ptr %189, align 1, !alias.scope !24, !noalias !27
  %191 = load i64, ptr %187, align 1, !alias.scope !27, !noalias !24
  %192 = getelementptr i8, ptr %3, i64 56
  %193 = load i64, ptr %192, align 1, !alias.scope !27, !noalias !24
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
  %207 = load i64, ptr %0, align 1, !alias.scope !24, !noalias !27
  %208 = getelementptr i8, ptr %0, i64 8
  %209 = load i64, ptr %208, align 1, !alias.scope !24, !noalias !27
  %210 = load i64, ptr %3, align 1, !alias.scope !27, !noalias !24
  %211 = getelementptr i8, ptr %3, i64 8
  %212 = load i64, ptr %211, align 1, !alias.scope !27, !noalias !24
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
  %227 = load i64, ptr %225, align 1, !alias.scope !24, !noalias !27
  %228 = getelementptr i8, ptr %224, i64 -8
  %229 = load i64, ptr %228, align 1, !alias.scope !24, !noalias !27
  %230 = load i64, ptr %226, align 1, !alias.scope !27, !noalias !24
  %231 = getelementptr i8, ptr %3, i64 24
  %232 = load i64, ptr %231, align 1, !alias.scope !27, !noalias !24
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
  br label %379

249:                                              ; preds = %74
  %250 = icmp ult i64 %1, 241
  br i1 %250, label %251, label %377

251:                                              ; preds = %249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %252 = mul i64 %1, -7046029288634856825
  %253 = trunc nuw nsw i64 %1 to i32
  %254 = load <16 x i64>, ptr %0, align 1, !alias.scope !29, !noalias !32
  %255 = load <16 x i64>, ptr %3, align 1, !alias.scope !32, !noalias !29
  %256 = shufflevector <16 x i64> %255, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %257 = insertelement <8 x i64> poison, i64 %2, i64 0
  %258 = shufflevector <8 x i64> %257, <8 x i64> poison, <8 x i32> zeroinitializer
  %259 = add <8 x i64> %256, %258
  %260 = shufflevector <16 x i64> %254, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %261 = xor <8 x i64> %259, %260
  %262 = shufflevector <16 x i64> %255, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %263 = sub <8 x i64> %262, %258
  %264 = shufflevector <16 x i64> %254, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %265 = xor <8 x i64> %263, %264
  %266 = zext <8 x i64> %261 to <8 x i128>
  %267 = zext <8 x i64> %265 to <8 x i128>
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
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 %296
  %298 = getelementptr i8, ptr %291, i64 %296
  %299 = load <4 x i64>, ptr %297, align 1, !alias.scope !29, !noalias !32
  %300 = shufflevector <4 x i64> %299, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %301 = shufflevector <4 x i64> %299, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %302 = load <4 x i64>, ptr %298, align 1, !alias.scope !32, !noalias !29
  %303 = shufflevector <4 x i64> %302, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %304 = shufflevector <4 x i64> %302, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %305 = add <2 x i64> %303, %290
  %306 = xor <2 x i64> %305, %300
  %307 = sub <2 x i64> %304, %290
  %308 = xor <2 x i64> %307, %301
  %309 = zext <2 x i64> %306 to <2 x i128>
  %310 = zext <2 x i64> %308 to <2 x i128>
  %311 = mul nuw <2 x i128> %310, %309
  %312 = lshr <2 x i128> %311, splat (i128 64)
  %313 = xor <2 x i128> %312, %311
  %314 = trunc <2 x i128> %313 to <2 x i64>
  %315 = add <2 x i64> %294, %314
  %316 = add nuw i64 %293, 2
  %317 = icmp eq i64 %316, %286
  br i1 %317, label %318, label %292, !llvm.loop !34

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
  %327 = shl nsw i64 %325, 4
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 %327
  %329 = getelementptr i8, ptr %3, i64 %327
  %330 = getelementptr i8, ptr %329, i64 -125
  %331 = load i64, ptr %328, align 1, !alias.scope !29, !noalias !32
  %332 = getelementptr i8, ptr %328, i64 8
  %333 = load i64, ptr %332, align 1, !alias.scope !29, !noalias !32
  %334 = load i64, ptr %330, align 1, !alias.scope !32, !noalias !29
  %335 = getelementptr i8, ptr %329, i64 -117
  %336 = load i64, ptr %335, align 1, !alias.scope !32, !noalias !29
  %337 = add i64 %334, %2
  %338 = xor i64 %337, %331
  %339 = sub i64 %336, %2
  %340 = xor i64 %339, %333
  %341 = zext i64 %338 to i128
  %342 = zext i64 %340 to i128
  %343 = mul nuw i128 %342, %341
  %344 = lshr i128 %343, 64
  %345 = xor i128 %344, %343
  %346 = trunc i128 %345 to i64
  %347 = add i64 %326, %346
  %348 = add nuw nsw i64 %325, 1
  %349 = icmp eq i64 %348, %282
  br i1 %349, label %350, label %324, !llvm.loop !37

350:                                              ; preds = %324, %318, %251
  %351 = phi i64 [ %279, %251 ], [ %319, %318 ], [ %347, %324 ]
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %353 = getelementptr inbounds i8, ptr %352, i64 -16
  %354 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %355 = load i64, ptr %353, align 1, !alias.scope !29, !noalias !32
  %356 = getelementptr i8, ptr %352, i64 -8
  %357 = load i64, ptr %356, align 1, !alias.scope !29, !noalias !32
  %358 = load i64, ptr %354, align 1, !alias.scope !32, !noalias !29
  %359 = getelementptr i8, ptr %3, i64 127
  %360 = load i64, ptr %359, align 1, !alias.scope !32, !noalias !29
  %361 = add i64 %358, %2
  %362 = xor i64 %361, %355
  %363 = sub i64 %360, %2
  %364 = xor i64 %363, %357
  %365 = zext i64 %362 to i128
  %366 = zext i64 %364 to i128
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
  %378 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #13, !callees !38
  br label %379

379:                                              ; preds = %59, %54, %46, %10, %377, %350, %205
  %380 = phi i64 [ %248, %205 ], [ %376, %350 ], [ %378, %377 ], [ %43, %10 ], [ %51, %46 ], [ %58, %54 ], [ %73, %59 ]
  ret i64 %380
}

; Function Attrs: nounwind uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture readnone %3, i64 %4) #3 {
  %6 = alloca [8 x i64], align 16
  %7 = alloca [8 x i64], align 16
  %8 = alloca [192 x i8], align 16
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13, !noalias !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !39
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %7, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  %11 = mul i64 %1, -7046029288634856825
  %12 = load i64, ptr %7, align 16, !alias.scope !43, !noalias !46
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !alias.scope !43, !noalias !46
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
  %25 = load i64, ptr %24, align 16, !alias.scope !43, !noalias !46
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %27 = load i64, ptr %26, align 8, !alias.scope !43, !noalias !46
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
  %38 = load i64, ptr %37, align 16, !alias.scope !43, !noalias !46
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %40 = load i64, ptr %39, align 8, !alias.scope !43, !noalias !46
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
  %51 = load i64, ptr %50, align 16, !alias.scope !43, !noalias !46
  %52 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %53 = load i64, ptr %52, align 8, !alias.scope !43, !noalias !46
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13, !noalias !39
  br label %169

68:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #13
  %69 = sub i64 0, %2
  %70 = insertelement <2 x i64> poison, i64 %2, i64 0
  %71 = insertelement <2 x i64> %70, i64 %69, i64 1
  %72 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %8) #13, !srcloc !22
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
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !51
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull readonly %8, i64 noundef 192)
  %96 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %97 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %98 = load i64, ptr %6, align 16, !alias.scope !53, !noalias !58
  %99 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %100 = load i64, ptr %99, align 8, !alias.scope !53, !noalias !58
  %101 = load i64, ptr %96, align 1, !alias.scope !59, !noalias !60
  %102 = getelementptr inbounds nuw i8, ptr %8, i64 19
  %103 = load i64, ptr %102, align 1, !alias.scope !59, !noalias !60
  %104 = xor i64 %101, %98
  %105 = xor i64 %103, %100
  %106 = zext i64 %104 to i128
  %107 = zext i64 %105 to i128
  %108 = mul nuw i128 %107, %106
  %109 = lshr i128 %108, 64
  %110 = xor i128 %109, %108
  %111 = trunc i128 %110 to i64
  %112 = add i64 %97, %111
  %113 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %114 = getelementptr inbounds nuw i8, ptr %8, i64 27
  %115 = load i64, ptr %113, align 16, !alias.scope !53, !noalias !58
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %117 = load i64, ptr %116, align 8, !alias.scope !53, !noalias !58
  %118 = load i64, ptr %114, align 1, !alias.scope !59, !noalias !60
  %119 = getelementptr inbounds nuw i8, ptr %8, i64 35
  %120 = load i64, ptr %119, align 1, !alias.scope !59, !noalias !60
  %121 = xor i64 %118, %115
  %122 = xor i64 %120, %117
  %123 = zext i64 %121 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %112, %128
  %130 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %131 = getelementptr inbounds nuw i8, ptr %8, i64 43
  %132 = load i64, ptr %130, align 16, !alias.scope !53, !noalias !58
  %133 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %134 = load i64, ptr %133, align 8, !alias.scope !53, !noalias !58
  %135 = load i64, ptr %131, align 1, !alias.scope !59, !noalias !60
  %136 = getelementptr inbounds nuw i8, ptr %8, i64 51
  %137 = load i64, ptr %136, align 1, !alias.scope !59, !noalias !60
  %138 = xor i64 %135, %132
  %139 = xor i64 %137, %134
  %140 = zext i64 %138 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %129, %145
  %147 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %148 = getelementptr inbounds nuw i8, ptr %8, i64 59
  %149 = load i64, ptr %147, align 16, !alias.scope !53, !noalias !58
  %150 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %151 = load i64, ptr %150, align 8, !alias.scope !53, !noalias !58
  %152 = load i64, ptr %148, align 1, !alias.scope !59, !noalias !60
  %153 = getelementptr inbounds nuw i8, ptr %8, i64 67
  %154 = load i64, ptr %153, align 1, !alias.scope !59, !noalias !60
  %155 = xor i64 %152, %149
  %156 = xor i64 %154, %151
  %157 = zext i64 %155 to i128
  %158 = zext i64 %156 to i128
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !51
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #13
  br label %169

169:                                              ; preds = %10, %68
  %170 = phi i64 [ %67, %10 ], [ %168, %68 ]
  ret i64 %170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr nocapture noundef readonly %0, i64 noundef range(i64 4, 9) %1, i64 %2, i64 %3, i64 noundef %4) unnamed_addr #7 {
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
define internal fastcc i64 @XXH3_len_1to3_64b(ptr nocapture noundef readonly %0, i64 noundef range(i64 1, 4) %1, i32 %2, i32 %3, i64 noundef %4) unnamed_addr #7 {
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
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias nocapture noundef nonnull %0, ptr noalias nocapture noundef readonly %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #8 {
  %6 = add i64 %4, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = add i64 %2, -1
  %10 = udiv i64 %9, %8
  %11 = urem i64 %9, %8
  %12 = icmp ugt i64 %8, %9
  %13 = load <2 x i64>, ptr %0, align 16, !alias.scope !61, !noalias !64
  br i1 %12, label %154, label %14

14:                                               ; preds = %5
  %15 = icmp ult i64 %6, 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %20 = getelementptr inbounds i8, ptr %19, i64 -64
  %21 = load <2 x i64>, ptr %20, align 1, !alias.scope !67, !noalias !70
  %22 = getelementptr inbounds i8, ptr %19, i64 -48
  %23 = load <2 x i64>, ptr %22, align 1, !alias.scope !67, !noalias !70
  %24 = getelementptr inbounds i8, ptr %19, i64 -32
  %25 = load <2 x i64>, ptr %24, align 1, !alias.scope !67, !noalias !70
  %26 = getelementptr inbounds i8, ptr %19, i64 -16
  %27 = load <2 x i64>, ptr %26, align 1, !alias.scope !67, !noalias !70
  %28 = load <2 x i64>, ptr %16, align 16, !noalias !72
  %29 = load <2 x i64>, ptr %17, align 16, !noalias !72
  %30 = load <2 x i64>, ptr %18, align 16, !noalias !72
  br label %31

31:                                               ; preds = %14, %106
  %32 = phi <2 x i64> [ %30, %14 ], [ %150, %106 ]
  %33 = phi <2 x i64> [ %29, %14 ], [ %140, %106 ]
  %34 = phi <2 x i64> [ %28, %14 ], [ %130, %106 ]
  %35 = phi <2 x i64> [ %13, %14 ], [ %120, %106 ]
  %36 = phi i64 [ 0, %14 ], [ %151, %106 ]
  %37 = mul i64 %36, %8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 %37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
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
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %47, i32 0, i32 3, i32 1), !noalias !78
  %48 = shl nuw i64 %44, 3
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 %48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %50 = load <2 x i64>, ptr %46, align 1, !alias.scope !85, !noalias !86
  %51 = load <2 x i64>, ptr %49, align 1, !alias.scope !88, !noalias !89
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
  %63 = load <2 x i64>, ptr %62, align 1, !alias.scope !85, !noalias !86
  %64 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %65 = load <2 x i64>, ptr %64, align 1, !alias.scope !88, !noalias !89
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
  %77 = load <2 x i64>, ptr %76, align 1, !alias.scope !85, !noalias !86
  %78 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %79 = load <2 x i64>, ptr %78, align 1, !alias.scope !88, !noalias !89
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
  %91 = load <2 x i64>, ptr %90, align 1, !alias.scope !85, !noalias !86
  %92 = getelementptr inbounds nuw i8, ptr %49, i64 48
  %93 = load <2 x i64>, ptr %92, align 1, !alias.scope !88, !noalias !89
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
  br i1 %105, label %106, label %39, !llvm.loop !90

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
  br i1 %152, label %31, label %153, !llvm.loop !91

153:                                              ; preds = %106
  store <2 x i64> %130, ptr %16, align 16, !noalias !72
  store <2 x i64> %140, ptr %17, align 16, !noalias !72
  store <2 x i64> %150, ptr %18, align 16, !noalias !72
  br label %154

154:                                              ; preds = %153, %5
  %155 = phi <2 x i64> [ %120, %153 ], [ %13, %5 ]
  %156 = mul i64 %10, %8
  %157 = lshr i64 %11, 6
  %158 = getelementptr inbounds nuw i8, ptr %1, i64 %156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %159 = icmp ult i64 %11, 64
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %159, label %161, label %167

161:                                              ; preds = %154
  %162 = load <2 x i64>, ptr %160, align 16, !alias.scope !61, !noalias !64
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %164 = load <2 x i64>, ptr %163, align 16, !alias.scope !61, !noalias !64
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %166 = load <2 x i64>, ptr %165, align 16, !alias.scope !61, !noalias !64
  br label %240

167:                                              ; preds = %154
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %170 = load <2 x i64>, ptr %160, align 16, !alias.scope !99, !noalias !102
  %171 = load <2 x i64>, ptr %168, align 16, !alias.scope !99, !noalias !102
  %172 = load <2 x i64>, ptr %169, align 16, !alias.scope !99, !noalias !102
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
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %181, i32 0, i32 3, i32 1), !noalias !105
  %182 = shl nuw i64 %178, 3
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 %182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %184 = load <2 x i64>, ptr %180, align 1, !alias.scope !109, !noalias !110
  %185 = load <2 x i64>, ptr %183, align 1, !alias.scope !111, !noalias !112
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
  %197 = load <2 x i64>, ptr %196, align 1, !alias.scope !109, !noalias !110
  %198 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %199 = load <2 x i64>, ptr %198, align 1, !alias.scope !111, !noalias !112
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
  %211 = load <2 x i64>, ptr %210, align 1, !alias.scope !109, !noalias !110
  %212 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %213 = load <2 x i64>, ptr %212, align 1, !alias.scope !111, !noalias !112
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
  %225 = load <2 x i64>, ptr %224, align 1, !alias.scope !109, !noalias !110
  %226 = getelementptr inbounds nuw i8, ptr %183, i64 48
  %227 = load <2 x i64>, ptr %226, align 1, !alias.scope !111, !noalias !112
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
  br i1 %239, label %240, label %173, !llvm.loop !90

240:                                              ; preds = %173, %161
  %241 = phi <2 x i64> [ %166, %161 ], [ %237, %173 ]
  %242 = phi <2 x i64> [ %164, %161 ], [ %223, %173 ]
  %243 = phi <2 x i64> [ %162, %161 ], [ %209, %173 ]
  %244 = phi <2 x i64> [ %155, %161 ], [ %195, %173 ]
  %245 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %246 = getelementptr inbounds i8, ptr %245, i64 -64
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %248 = getelementptr inbounds i8, ptr %247, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %249 = load <2 x i64>, ptr %246, align 1, !alias.scope !113, !noalias !115
  %250 = load <2 x i64>, ptr %248, align 1, !alias.scope !114, !noalias !116
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
  store <2 x i64> %260, ptr %0, align 16, !alias.scope !61, !noalias !64
  %261 = getelementptr inbounds i8, ptr %245, i64 -48
  %262 = load <2 x i64>, ptr %261, align 1, !alias.scope !113, !noalias !115
  %263 = getelementptr inbounds i8, ptr %247, i64 -55
  %264 = load <2 x i64>, ptr %263, align 1, !alias.scope !114, !noalias !116
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
  store <2 x i64> %275, ptr %273, align 16, !alias.scope !61, !noalias !64
  %276 = getelementptr inbounds i8, ptr %245, i64 -32
  %277 = load <2 x i64>, ptr %276, align 1, !alias.scope !113, !noalias !115
  %278 = getelementptr inbounds i8, ptr %247, i64 -39
  %279 = load <2 x i64>, ptr %278, align 1, !alias.scope !114, !noalias !116
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
  store <2 x i64> %290, ptr %288, align 16, !alias.scope !61, !noalias !64
  %291 = getelementptr inbounds i8, ptr %245, i64 -16
  %292 = load <2 x i64>, ptr %291, align 1, !alias.scope !113, !noalias !115
  %293 = getelementptr inbounds i8, ptr %247, i64 -23
  %294 = load <2 x i64>, ptr %293, align 1, !alias.scope !114, !noalias !116
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
  store <2 x i64> %305, ptr %303, align 16, !alias.scope !61, !noalias !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #10 {
  %6 = alloca [8 x i64], align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13, !noalias !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !120
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %3, i64 noundef %4)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %8 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %9 = load i64, ptr %6, align 16, !alias.scope !122, !noalias !127
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !122, !noalias !127
  %12 = load i64, ptr %7, align 1, !alias.scope !128, !noalias !129
  %13 = getelementptr i8, ptr %3, i64 19
  %14 = load i64, ptr %13, align 1, !alias.scope !128, !noalias !129
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
  %26 = load i64, ptr %24, align 16, !alias.scope !122, !noalias !127
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !122, !noalias !127
  %29 = load i64, ptr %25, align 1, !alias.scope !128, !noalias !129
  %30 = getelementptr i8, ptr %3, i64 35
  %31 = load i64, ptr %30, align 1, !alias.scope !128, !noalias !129
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
  %43 = load i64, ptr %41, align 16, !alias.scope !122, !noalias !127
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !122, !noalias !127
  %46 = load i64, ptr %42, align 1, !alias.scope !128, !noalias !129
  %47 = getelementptr i8, ptr %3, i64 51
  %48 = load i64, ptr %47, align 1, !alias.scope !128, !noalias !129
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
  %60 = load i64, ptr %58, align 16, !alias.scope !122, !noalias !127
  %61 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !122, !noalias !127
  %63 = load i64, ptr %59, align 1, !alias.scope !128, !noalias !129
  %64 = getelementptr i8, ptr %3, i64 67
  %65 = load i64, ptr %64, align 1, !alias.scope !128, !noalias !129
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13, !noalias !120
  ret i64 %79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %4, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 192)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %6 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %7 = load i64, ptr %4, align 16, !alias.scope !130, !noalias !133
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8, !alias.scope !130, !noalias !133
  %10 = load i64, ptr %5, align 1, !alias.scope !133, !noalias !130
  %11 = getelementptr i8, ptr %2, i64 19
  %12 = load i64, ptr %11, align 1, !alias.scope !133, !noalias !130
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
  %24 = load i64, ptr %22, align 16, !alias.scope !130, !noalias !133
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %26 = load i64, ptr %25, align 8, !alias.scope !130, !noalias !133
  %27 = load i64, ptr %23, align 1, !alias.scope !133, !noalias !130
  %28 = getelementptr i8, ptr %2, i64 35
  %29 = load i64, ptr %28, align 1, !alias.scope !133, !noalias !130
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
  %41 = load i64, ptr %39, align 16, !alias.scope !130, !noalias !133
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %43 = load i64, ptr %42, align 8, !alias.scope !130, !noalias !133
  %44 = load i64, ptr %40, align 1, !alias.scope !133, !noalias !130
  %45 = getelementptr i8, ptr %2, i64 51
  %46 = load i64, ptr %45, align 1, !alias.scope !133, !noalias !130
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
  %58 = load i64, ptr %56, align 16, !alias.scope !130, !noalias !133
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %60 = load i64, ptr %59, align 8, !alias.scope !130, !noalias !133
  %61 = load i64, ptr %57, align 1, !alias.scope !133, !noalias !130
  %62 = getelementptr i8, ptr %2, i64 67
  %63 = load i64, ptr %62, align 1, !alias.scope !133, !noalias !130
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
  %81 = load i64, ptr %78, align 1, !alias.scope !135, !noalias !138
  %82 = getelementptr i8, ptr %2, i64 125
  %83 = load i64, ptr %82, align 1, !alias.scope !135, !noalias !138
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
  %94 = load i64, ptr %93, align 1, !alias.scope !135, !noalias !138
  %95 = getelementptr i8, ptr %2, i64 141
  %96 = load i64, ptr %95, align 1, !alias.scope !135, !noalias !138
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
  %107 = load i64, ptr %106, align 1, !alias.scope !135, !noalias !138
  %108 = getelementptr i8, ptr %2, i64 157
  %109 = load i64, ptr %108, align 1, !alias.scope !135, !noalias !138
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
  %120 = load i64, ptr %119, align 1, !alias.scope !135, !noalias !138
  %121 = getelementptr i8, ptr %2, i64 173
  %122 = load i64, ptr %121, align 1, !alias.scope !135, !noalias !138
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %137 = insertvalue { i64, i64 } poison, i64 %77, 0
  %138 = insertvalue { i64, i64 } %137, i64 %136, 1
  ret { i64, i64 } %138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !6}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_len_17to128_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_17to128_128b"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_len_129to240_128b: argument 0"}
!17 = distinct !{!17, !"XXH3_len_129to240_128b"}
!18 = distinct !{!18, !6}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!21 = distinct !{!21, !"XXH3_hashLong_128b_withSeed_internal"}
!22 = !{i64 2148756060}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_len_17to128_64b: argument 0"}
!26 = distinct !{!26, !"XXH3_len_17to128_64b"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"XXH3_len_17to128_64b: argument 1"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_len_129to240_64b: argument 0"}
!31 = distinct !{!31, !"XXH3_len_129to240_64b"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_len_129to240_64b: argument 1"}
!34 = distinct !{!34, !6, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !6, !36, !35}
!38 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"XXH3_hashLong_64b_internal: argument 0"}
!41 = distinct !{!41, !"XXH3_hashLong_64b_internal"}
!42 = distinct !{!42, !41, !"XXH3_hashLong_64b_internal: argument 1"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_mergeAccs: argument 0"}
!45 = distinct !{!45, !"XXH3_mergeAccs"}
!46 = !{!47, !40, !42}
!47 = distinct !{!47, !45, !"XXH3_mergeAccs: argument 1"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"XXH3_hashLong_64b_internal: argument 1"}
!50 = distinct !{!50, !"XXH3_hashLong_64b_internal"}
!51 = !{!52, !49}
!52 = distinct !{!52, !50, !"XXH3_hashLong_64b_internal: argument 0"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"XXH3_mergeAccs: argument 0"}
!55 = distinct !{!55, !"XXH3_mergeAccs"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"XXH3_mergeAccs: argument 1"}
!58 = !{!57, !52, !49}
!59 = !{!57, !49}
!60 = !{!54, !52}
!61 = !{!62}
!62 = distinct !{!62, !63, !"XXH3_accumulate_512_sse2: argument 0"}
!63 = distinct !{!63, !"XXH3_accumulate_512_sse2"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"XXH3_accumulate_512_sse2: argument 1"}
!66 = distinct !{!66, !63, !"XXH3_accumulate_512_sse2: argument 2"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"XXH3_scrambleAcc_sse2: argument 1"}
!69 = distinct !{!69, !"XXH3_scrambleAcc_sse2"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"XXH3_scrambleAcc_sse2: argument 0"}
!72 = !{}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_accumulate: argument 1"}
!75 = distinct !{!75, !"XXH3_accumulate"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_accumulate: argument 2"}
!78 = !{!79, !77}
!79 = distinct !{!79, !75, !"XXH3_accumulate: argument 0"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"XXH3_accumulate_512_sse2: argument 1"}
!82 = distinct !{!82, !"XXH3_accumulate_512_sse2"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"XXH3_accumulate_512_sse2: argument 2"}
!85 = !{!81, !74}
!86 = !{!87, !84, !79, !77}
!87 = distinct !{!87, !82, !"XXH3_accumulate_512_sse2: argument 0"}
!88 = !{!84, !77}
!89 = !{!87, !81, !79, !74}
!90 = distinct !{!90, !6}
!91 = distinct !{!91, !6}
!92 = !{!93}
!93 = distinct !{!93, !94, !"XXH3_accumulate: argument 0"}
!94 = distinct !{!94, !"XXH3_accumulate"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"XXH3_accumulate: argument 1"}
!97 = !{!98}
!98 = distinct !{!98, !94, !"XXH3_accumulate: argument 2"}
!99 = !{!100, !93}
!100 = distinct !{!100, !101, !"XXH3_accumulate_512_sse2: argument 0"}
!101 = distinct !{!101, !"XXH3_accumulate_512_sse2"}
!102 = !{!103, !104, !96, !98}
!103 = distinct !{!103, !101, !"XXH3_accumulate_512_sse2: argument 1"}
!104 = distinct !{!104, !101, !"XXH3_accumulate_512_sse2: argument 2"}
!105 = !{!93, !98}
!106 = !{!100}
!107 = !{!103}
!108 = !{!104}
!109 = !{!103, !96}
!110 = !{!100, !104, !93, !98}
!111 = !{!104, !98}
!112 = !{!100, !103, !93, !96}
!113 = !{!65}
!114 = !{!66}
!115 = !{!62, !66}
!116 = !{!62, !65}
!117 = !{!118}
!118 = distinct !{!118, !119, !"XXH3_hashLong_64b_internal: argument 1"}
!119 = distinct !{!119, !"XXH3_hashLong_64b_internal"}
!120 = !{!121, !118}
!121 = distinct !{!121, !119, !"XXH3_hashLong_64b_internal: argument 0"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"XXH3_mergeAccs: argument 0"}
!124 = distinct !{!124, !"XXH3_mergeAccs"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"XXH3_mergeAccs: argument 1"}
!127 = !{!126, !121, !118}
!128 = !{!126, !118}
!129 = !{!123, !121}
!130 = !{!131}
!131 = distinct !{!131, !132, !"XXH3_mergeAccs: argument 0"}
!132 = distinct !{!132, !"XXH3_mergeAccs"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"XXH3_mergeAccs: argument 1"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"XXH3_mergeAccs: argument 1"}
!137 = distinct !{!137, !"XXH3_mergeAccs"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"XXH3_mergeAccs: argument 0"}
