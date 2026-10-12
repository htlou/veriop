; ModuleID = 'x86_ident_v3/wrapper.c'
source_filename = "x86_ident_v3/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

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
  %24 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %23) #11, !srcloc !5
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %16
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %30) #11, !srcloc !5
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %33 = load i32, ptr %32, align 1
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %17
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %37) #11, !srcloc !5
  %39 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %40 = load i32, ptr %39, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %18
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %44) #11, !srcloc !5
  %46 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %47 = icmp ult ptr %46, %9
  br i1 %47, label %13, label %48, !llvm.loop !6

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
  br i1 %43, label %44, label %13, !llvm.loop !8

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
  br i1 %83, label %84, label %158

84:                                               ; preds = %78
  %85 = add nsw i64 %82, -8
  %86 = lshr i64 %85, 3
  %87 = add nuw nsw i64 %86, 1
  %88 = and i64 %87, 3
  %89 = and i64 %85, 24
  %90 = icmp eq i64 %89, 24
  br i1 %90, label %108, label %91

91:                                               ; preds = %84, %91
  %92 = phi i64 [ %104, %91 ], [ %81, %84 ]
  %93 = phi ptr [ %100, %91 ], [ %80, %84 ]
  %94 = phi i64 [ %105, %91 ], [ %82, %84 ]
  %95 = phi i64 [ %106, %91 ], [ 0, %84 ]
  %96 = load i64, ptr %93, align 1
  %97 = mul i64 %96, -4417276706812531889
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 31)
  %99 = mul i64 %98, -7046029288634856825
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %101 = xor i64 %99, %92
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 27)
  %103 = mul i64 %102, -7046029288634856825
  %104 = add i64 %103, -8796714831421723037
  %105 = add nsw i64 %94, -8
  %106 = add i64 %95, 1
  %107 = icmp eq i64 %106, %88
  br i1 %107, label %108, label %91, !llvm.loop !9

108:                                              ; preds = %91, %84
  %109 = phi i64 [ %81, %84 ], [ %104, %91 ]
  %110 = phi ptr [ %80, %84 ], [ %100, %91 ]
  %111 = phi i64 [ %82, %84 ], [ %105, %91 ]
  %112 = phi ptr [ poison, %84 ], [ %100, %91 ]
  %113 = phi i64 [ poison, %84 ], [ %104, %91 ]
  %114 = phi i64 [ poison, %84 ], [ %105, %91 ]
  %115 = icmp ult i64 %85, 24
  br i1 %115, label %158, label %116

116:                                              ; preds = %108, %116
  %117 = phi i64 [ %155, %116 ], [ %109, %108 ]
  %118 = phi ptr [ %151, %116 ], [ %110, %108 ]
  %119 = phi i64 [ %156, %116 ], [ %111, %108 ]
  %120 = load i64, ptr %118, align 1
  %121 = mul i64 %120, -4417276706812531889
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 31)
  %123 = mul i64 %122, -7046029288634856825
  %124 = getelementptr inbounds nuw i8, ptr %118, i64 8
  %125 = xor i64 %123, %117
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 27)
  %127 = mul i64 %126, -7046029288634856825
  %128 = add i64 %127, -8796714831421723037
  %129 = load i64, ptr %124, align 1
  %130 = mul i64 %129, -4417276706812531889
  %131 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 31)
  %132 = mul i64 %131, -7046029288634856825
  %133 = getelementptr inbounds nuw i8, ptr %118, i64 16
  %134 = xor i64 %132, %128
  %135 = tail call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 27)
  %136 = mul i64 %135, -7046029288634856825
  %137 = add i64 %136, -8796714831421723037
  %138 = load i64, ptr %133, align 1
  %139 = mul i64 %138, -4417276706812531889
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 31)
  %141 = mul i64 %140, -7046029288634856825
  %142 = getelementptr inbounds nuw i8, ptr %118, i64 24
  %143 = xor i64 %141, %137
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 27)
  %145 = mul i64 %144, -7046029288634856825
  %146 = add i64 %145, -8796714831421723037
  %147 = load i64, ptr %142, align 1
  %148 = mul i64 %147, -4417276706812531889
  %149 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %148, i64 31)
  %150 = mul i64 %149, -7046029288634856825
  %151 = getelementptr inbounds nuw i8, ptr %118, i64 32
  %152 = xor i64 %150, %146
  %153 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 27)
  %154 = mul i64 %153, -7046029288634856825
  %155 = add i64 %154, -8796714831421723037
  %156 = add nsw i64 %119, -32
  %157 = icmp ugt i64 %156, 7
  br i1 %157, label %116, label %158, !llvm.loop !11

158:                                              ; preds = %108, %116, %78
  %159 = phi i64 [ %82, %78 ], [ %114, %108 ], [ %156, %116 ]
  %160 = phi ptr [ %80, %78 ], [ %112, %108 ], [ %151, %116 ]
  %161 = phi i64 [ %81, %78 ], [ %113, %108 ], [ %155, %116 ]
  %162 = icmp samesign ugt i64 %159, 3
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load i32, ptr %160, align 1
  %165 = zext i32 %164 to i64
  %166 = mul i64 %165, -7046029288634856825
  %167 = xor i64 %166, %161
  %168 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %169 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 23)
  %170 = mul i64 %169, -4417276706812531889
  %171 = add i64 %170, 1609587929392839161
  %172 = add nsw i64 %159, -4
  br label %173

173:                                              ; preds = %163, %158
  %174 = phi i64 [ %172, %163 ], [ %159, %158 ]
  %175 = phi ptr [ %168, %163 ], [ %160, %158 ]
  %176 = phi i64 [ %171, %163 ], [ %161, %158 ]
  %177 = icmp eq i64 %174, 0
  br i1 %177, label %264, label %178

178:                                              ; preds = %173
  %179 = and i64 %174, 7
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %178, %181
  %182 = phi i64 [ %192, %181 ], [ %176, %178 ]
  %183 = phi ptr [ %186, %181 ], [ %175, %178 ]
  %184 = phi i64 [ %193, %181 ], [ %174, %178 ]
  %185 = phi i64 [ %194, %181 ], [ 0, %178 ]
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %187 = load i8, ptr %183, align 1
  %188 = zext i8 %187 to i64
  %189 = mul i64 %188, 2870177450012600261
  %190 = xor i64 %189, %182
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 11)
  %192 = mul i64 %191, -7046029288634856825
  %193 = add nsw i64 %184, -1
  %194 = add i64 %185, 1
  %195 = icmp eq i64 %194, %179
  br i1 %195, label %196, label %181, !llvm.loop !12

196:                                              ; preds = %181, %178
  %197 = phi i64 [ poison, %178 ], [ %192, %181 ]
  %198 = phi i64 [ %176, %178 ], [ %192, %181 ]
  %199 = phi ptr [ %175, %178 ], [ %186, %181 ]
  %200 = phi i64 [ %174, %178 ], [ %193, %181 ]
  %201 = icmp ult i64 %174, 8
  br i1 %201, label %264, label %202

202:                                              ; preds = %196, %202
  %203 = phi i64 [ %261, %202 ], [ %198, %196 ]
  %204 = phi ptr [ %255, %202 ], [ %199, %196 ]
  %205 = phi i64 [ %262, %202 ], [ %200, %196 ]
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 1
  %207 = load i8, ptr %204, align 1
  %208 = zext i8 %207 to i64
  %209 = mul i64 %208, 2870177450012600261
  %210 = xor i64 %209, %203
  %211 = tail call i64 @llvm.fshl.i64(i64 %210, i64 %210, i64 11)
  %212 = mul i64 %211, -7046029288634856825
  %213 = getelementptr inbounds nuw i8, ptr %204, i64 2
  %214 = load i8, ptr %206, align 1
  %215 = zext i8 %214 to i64
  %216 = mul i64 %215, 2870177450012600261
  %217 = xor i64 %216, %212
  %218 = tail call i64 @llvm.fshl.i64(i64 %217, i64 %217, i64 11)
  %219 = mul i64 %218, -7046029288634856825
  %220 = getelementptr inbounds nuw i8, ptr %204, i64 3
  %221 = load i8, ptr %213, align 1
  %222 = zext i8 %221 to i64
  %223 = mul i64 %222, 2870177450012600261
  %224 = xor i64 %223, %219
  %225 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 11)
  %226 = mul i64 %225, -7046029288634856825
  %227 = getelementptr inbounds nuw i8, ptr %204, i64 4
  %228 = load i8, ptr %220, align 1
  %229 = zext i8 %228 to i64
  %230 = mul i64 %229, 2870177450012600261
  %231 = xor i64 %230, %226
  %232 = tail call i64 @llvm.fshl.i64(i64 %231, i64 %231, i64 11)
  %233 = mul i64 %232, -7046029288634856825
  %234 = getelementptr inbounds nuw i8, ptr %204, i64 5
  %235 = load i8, ptr %227, align 1
  %236 = zext i8 %235 to i64
  %237 = mul i64 %236, 2870177450012600261
  %238 = xor i64 %237, %233
  %239 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 11)
  %240 = mul i64 %239, -7046029288634856825
  %241 = getelementptr inbounds nuw i8, ptr %204, i64 6
  %242 = load i8, ptr %234, align 1
  %243 = zext i8 %242 to i64
  %244 = mul i64 %243, 2870177450012600261
  %245 = xor i64 %244, %240
  %246 = tail call i64 @llvm.fshl.i64(i64 %245, i64 %245, i64 11)
  %247 = mul i64 %246, -7046029288634856825
  %248 = getelementptr inbounds nuw i8, ptr %204, i64 7
  %249 = load i8, ptr %241, align 1
  %250 = zext i8 %249 to i64
  %251 = mul i64 %250, 2870177450012600261
  %252 = xor i64 %251, %247
  %253 = tail call i64 @llvm.fshl.i64(i64 %252, i64 %252, i64 11)
  %254 = mul i64 %253, -7046029288634856825
  %255 = getelementptr inbounds nuw i8, ptr %204, i64 8
  %256 = load i8, ptr %248, align 1
  %257 = zext i8 %256 to i64
  %258 = mul i64 %257, 2870177450012600261
  %259 = xor i64 %258, %254
  %260 = tail call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 11)
  %261 = mul i64 %260, -7046029288634856825
  %262 = add nsw i64 %205, -8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %202, !llvm.loop !13

264:                                              ; preds = %196, %202, %173
  %265 = phi i64 [ %176, %173 ], [ %197, %196 ], [ %261, %202 ]
  %266 = lshr i64 %265, 33
  %267 = xor i64 %266, %265
  %268 = mul i64 %267, -4417276706812531889
  %269 = lshr i64 %268, 29
  %270 = xor i64 %269, %268
  %271 = mul i64 %270, 1609587929392839161
  %272 = lshr i64 %271, 32
  %273 = xor i64 %272, %271
  ret i64 %273
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
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [192 x i8], align 32
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
  br label %613

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
  %165 = load i64, ptr %162, align 1, !alias.scope !14
  %166 = getelementptr i8, ptr %1, i64 56
  %167 = load i64, ptr %166, align 1, !alias.scope !14
  %168 = load i64, ptr %164, align 1, !alias.scope !14
  %169 = getelementptr i8, ptr %163, i64 -56
  %170 = load i64, ptr %169, align 1, !alias.scope !14
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
  %202 = load i64, ptr %199, align 1, !alias.scope !14
  %203 = getelementptr i8, ptr %1, i64 40
  %204 = load i64, ptr %203, align 1, !alias.scope !14
  %205 = load i64, ptr %201, align 1, !alias.scope !14
  %206 = getelementptr i8, ptr %200, i64 -40
  %207 = load i64, ptr %206, align 1, !alias.scope !14
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
  %240 = load i64, ptr %237, align 1, !alias.scope !14
  %241 = getelementptr i8, ptr %1, i64 24
  %242 = load i64, ptr %241, align 1, !alias.scope !14
  %243 = load i64, ptr %239, align 1, !alias.scope !14
  %244 = getelementptr i8, ptr %238, i64 -24
  %245 = load i64, ptr %244, align 1, !alias.scope !14
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
  %277 = load i64, ptr %1, align 1, !alias.scope !14
  %278 = getelementptr i8, ptr %1, i64 8
  %279 = load i64, ptr %278, align 1, !alias.scope !14
  %280 = load i64, ptr %276, align 1, !alias.scope !14
  %281 = getelementptr i8, ptr %275, i64 -8
  %282 = load i64, ptr %281, align 1, !alias.scope !14
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
  br label %613

329:                                              ; preds = %152
  %330 = icmp ult i64 %2, 241
  br i1 %330, label %331, label %590

331:                                              ; preds = %329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %332 = trunc nuw nsw i64 %2 to i32
  %333 = mul i64 %2, -7046029288634856825
  %334 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %335 = load i64, ptr %1, align 1, !alias.scope !17
  %336 = getelementptr i8, ptr %1, i64 8
  %337 = load i64, ptr %336, align 1, !alias.scope !17
  %338 = load i64, ptr %334, align 1, !alias.scope !17
  %339 = getelementptr i8, ptr %1, i64 24
  %340 = load i64, ptr %339, align 1, !alias.scope !17
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
  %368 = load i64, ptr %366, align 1, !alias.scope !17
  %369 = getelementptr i8, ptr %1, i64 40
  %370 = load i64, ptr %369, align 1, !alias.scope !17
  %371 = load i64, ptr %367, align 1, !alias.scope !17
  %372 = getelementptr i8, ptr %1, i64 56
  %373 = load i64, ptr %372, align 1, !alias.scope !17
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
  %402 = load i64, ptr %400, align 1, !alias.scope !17
  %403 = getelementptr i8, ptr %1, i64 72
  %404 = load i64, ptr %403, align 1, !alias.scope !17
  %405 = load i64, ptr %401, align 1, !alias.scope !17
  %406 = getelementptr i8, ptr %1, i64 88
  %407 = load i64, ptr %406, align 1, !alias.scope !17
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
  %436 = load i64, ptr %434, align 1, !alias.scope !17
  %437 = getelementptr i8, ptr %1, i64 104
  %438 = load i64, ptr %437, align 1, !alias.scope !17
  %439 = load i64, ptr %435, align 1, !alias.scope !17
  %440 = getelementptr i8, ptr %1, i64 120
  %441 = load i64, ptr %440, align 1, !alias.scope !17
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
  %491 = load i64, ptr %487, align 1, !alias.scope !17
  %492 = getelementptr i8, ptr %487, i64 8
  %493 = load i64, ptr %492, align 1, !alias.scope !17
  %494 = load i64, ptr %488, align 1, !alias.scope !17
  %495 = getelementptr i8, ptr %487, i64 24
  %496 = load i64, ptr %495, align 1, !alias.scope !17
  %497 = load i64, ptr %490, align 1, !noalias !17
  %498 = getelementptr i8, ptr %489, i64 -120
  %499 = load i64, ptr %498, align 1, !noalias !17
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
  %514 = load i64, ptr %513, align 1, !noalias !17
  %515 = getelementptr i8, ptr %489, i64 -104
  %516 = load i64, ptr %515, align 1, !noalias !17
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
  br i1 %531, label %532, label %482, !llvm.loop !20

532:                                              ; preds = %482, %331
  %533 = phi i64 [ %473, %331 ], [ %512, %482 ]
  %534 = phi i64 [ %478, %331 ], [ %529, %482 ]
  %535 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %536 = getelementptr inbounds i8, ptr %535, i64 -16
  %537 = getelementptr inbounds i8, ptr %535, i64 -32
  %538 = load i64, ptr %536, align 1, !alias.scope !17
  %539 = getelementptr i8, ptr %535, i64 -8
  %540 = load i64, ptr %539, align 1, !alias.scope !17
  %541 = load i64, ptr %537, align 1, !alias.scope !17
  %542 = getelementptr i8, ptr %535, i64 -24
  %543 = load i64, ptr %542, align 1, !alias.scope !17
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
  br label %613

590:                                              ; preds = %329
  %591 = icmp eq i64 %3, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %590
  %593 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %613

594:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #11, !noalias !21
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 0, i32 3, i32 1), !noalias !21
  %595 = sub i64 0, %3
  %596 = insertelement <4 x i64> poison, i64 %3, i64 0
  %597 = insertelement <4 x i64> %596, i64 %595, i64 1
  %598 = insertelement <4 x i64> %597, i64 %3, i64 2
  %599 = insertelement <4 x i64> %598, i64 %595, i64 3
  %600 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %5) #11, !noalias !21, !srcloc !24
  %601 = add <4 x i64> %599, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %601, ptr %600, align 32, !noalias !21
  %602 = add <4 x i64> %599, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %603 = getelementptr inbounds nuw i8, ptr %600, i64 32
  store <4 x i64> %602, ptr %603, align 32, !noalias !21
  %604 = add <4 x i64> %599, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %605 = getelementptr inbounds nuw i8, ptr %600, i64 64
  store <4 x i64> %604, ptr %605, align 32, !noalias !21
  %606 = add <4 x i64> %599, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %607 = getelementptr inbounds nuw i8, ptr %600, i64 96
  store <4 x i64> %606, ptr %607, align 32, !noalias !21
  %608 = add <4 x i64> %599, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %609 = getelementptr inbounds nuw i8, ptr %600, i64 128
  store <4 x i64> %608, ptr %609, align 32, !noalias !21
  %610 = add <4 x i64> %599, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %611 = getelementptr inbounds nuw i8, ptr %600, i64 160
  store <4 x i64> %610, ptr %611, align 32, !noalias !21
  %612 = call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #11, !noalias !21
  br label %613

613:                                              ; preds = %145, %272, %532, %592, %594
  %614 = phi { i64, i64 } [ %151, %145 ], [ %328, %272 ], [ %589, %532 ], [ %593, %592 ], [ %612, %594 ]
  %615 = extractvalue { i64, i64 } %614, 0
  %616 = extractvalue { i64, i64 } %614, 1
  store i64 %615, ptr %0, align 8
  %617 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %616, ptr %617, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
  br i1 %9, label %10, label %44, !prof !25

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
  br i1 %45, label %46, label %52, !prof !25

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
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
  %86 = load i64, ptr %84, align 1, !alias.scope !26, !noalias !29
  %87 = getelementptr i8, ptr %0, i64 56
  %88 = load i64, ptr %87, align 1, !alias.scope !26, !noalias !29
  %89 = load i64, ptr %85, align 1, !alias.scope !29, !noalias !26
  %90 = getelementptr i8, ptr %3, i64 104
  %91 = load i64, ptr %90, align 1, !alias.scope !29, !noalias !26
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
  %106 = load i64, ptr %104, align 1, !alias.scope !26, !noalias !29
  %107 = getelementptr i8, ptr %103, i64 -56
  %108 = load i64, ptr %107, align 1, !alias.scope !26, !noalias !29
  %109 = load i64, ptr %105, align 1, !alias.scope !29, !noalias !26
  %110 = getelementptr i8, ptr %3, i64 120
  %111 = load i64, ptr %110, align 1, !alias.scope !29, !noalias !26
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
  %127 = load i64, ptr %125, align 1, !alias.scope !26, !noalias !29
  %128 = getelementptr i8, ptr %0, i64 40
  %129 = load i64, ptr %128, align 1, !alias.scope !26, !noalias !29
  %130 = load i64, ptr %126, align 1, !alias.scope !29, !noalias !26
  %131 = getelementptr i8, ptr %3, i64 72
  %132 = load i64, ptr %131, align 1, !alias.scope !29, !noalias !26
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
  %147 = load i64, ptr %145, align 1, !alias.scope !26, !noalias !29
  %148 = getelementptr i8, ptr %144, i64 -40
  %149 = load i64, ptr %148, align 1, !alias.scope !26, !noalias !29
  %150 = load i64, ptr %146, align 1, !alias.scope !29, !noalias !26
  %151 = getelementptr i8, ptr %3, i64 88
  %152 = load i64, ptr %151, align 1, !alias.scope !29, !noalias !26
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
  %168 = load i64, ptr %166, align 1, !alias.scope !26, !noalias !29
  %169 = getelementptr i8, ptr %0, i64 24
  %170 = load i64, ptr %169, align 1, !alias.scope !26, !noalias !29
  %171 = load i64, ptr %167, align 1, !alias.scope !29, !noalias !26
  %172 = getelementptr i8, ptr %3, i64 40
  %173 = load i64, ptr %172, align 1, !alias.scope !29, !noalias !26
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
  %188 = load i64, ptr %186, align 1, !alias.scope !26, !noalias !29
  %189 = getelementptr i8, ptr %185, i64 -24
  %190 = load i64, ptr %189, align 1, !alias.scope !26, !noalias !29
  %191 = load i64, ptr %187, align 1, !alias.scope !29, !noalias !26
  %192 = getelementptr i8, ptr %3, i64 56
  %193 = load i64, ptr %192, align 1, !alias.scope !29, !noalias !26
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
  %207 = load i64, ptr %0, align 1, !alias.scope !26, !noalias !29
  %208 = getelementptr i8, ptr %0, i64 8
  %209 = load i64, ptr %208, align 1, !alias.scope !26, !noalias !29
  %210 = load i64, ptr %3, align 1, !alias.scope !29, !noalias !26
  %211 = getelementptr i8, ptr %3, i64 8
  %212 = load i64, ptr %211, align 1, !alias.scope !29, !noalias !26
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
  %227 = load i64, ptr %225, align 1, !alias.scope !26, !noalias !29
  %228 = getelementptr i8, ptr %224, i64 -8
  %229 = load i64, ptr %228, align 1, !alias.scope !26, !noalias !29
  %230 = load i64, ptr %226, align 1, !alias.scope !29, !noalias !26
  %231 = getelementptr i8, ptr %3, i64 24
  %232 = load i64, ptr %231, align 1, !alias.scope !29, !noalias !26
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %252 = mul i64 %1, -7046029288634856825
  %253 = trunc nuw nsw i64 %1 to i32
  %254 = load <16 x i64>, ptr %0, align 1, !alias.scope !31, !noalias !34
  %255 = load <16 x i64>, ptr %3, align 1, !alias.scope !34, !noalias !31
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
  %284 = icmp ult i64 %283, 4
  br i1 %284, label %321, label %285

285:                                              ; preds = %281
  %286 = and i64 %283, -4
  %287 = add nsw i64 %286, 8
  %288 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %279, i64 0
  %289 = insertelement <4 x i64> poison, i64 %2, i64 0
  %290 = shufflevector <4 x i64> %289, <4 x i64> poison, <4 x i32> zeroinitializer
  %291 = getelementptr i8, ptr %3, i64 -125
  br label %292

292:                                              ; preds = %292, %285
  %293 = phi i64 [ 0, %285 ], [ %316, %292 ]
  %294 = phi <4 x i64> [ %288, %285 ], [ %315, %292 ]
  %295 = shl i64 %293, 4
  %296 = add i64 %295, 128
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 %296
  %298 = getelementptr i8, ptr %291, i64 %296
  %299 = load <8 x i64>, ptr %297, align 1, !alias.scope !31, !noalias !34
  %300 = shufflevector <8 x i64> %299, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %301 = shufflevector <8 x i64> %299, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %302 = load <8 x i64>, ptr %298, align 1, !alias.scope !34, !noalias !31
  %303 = shufflevector <8 x i64> %302, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %304 = shufflevector <8 x i64> %302, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %305 = add <4 x i64> %303, %290
  %306 = xor <4 x i64> %305, %300
  %307 = sub <4 x i64> %304, %290
  %308 = xor <4 x i64> %307, %301
  %309 = zext <4 x i64> %306 to <4 x i128>
  %310 = zext <4 x i64> %308 to <4 x i128>
  %311 = mul nuw <4 x i128> %310, %309
  %312 = lshr <4 x i128> %311, splat (i128 64)
  %313 = xor <4 x i128> %312, %311
  %314 = trunc <4 x i128> %313 to <4 x i64>
  %315 = add <4 x i64> %294, %314
  %316 = add nuw i64 %293, 4
  %317 = icmp eq i64 %316, %286
  br i1 %317, label %318, label %292, !llvm.loop !36

318:                                              ; preds = %292
  %319 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %315)
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
  %331 = load i64, ptr %328, align 1, !alias.scope !31, !noalias !34
  %332 = getelementptr i8, ptr %328, i64 8
  %333 = load i64, ptr %332, align 1, !alias.scope !31, !noalias !34
  %334 = load i64, ptr %330, align 1, !alias.scope !34, !noalias !31
  %335 = getelementptr i8, ptr %329, i64 -117
  %336 = load i64, ptr %335, align 1, !alias.scope !34, !noalias !31
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
  br i1 %349, label %350, label %324, !llvm.loop !39

350:                                              ; preds = %324, %318, %251
  %351 = phi i64 [ %279, %251 ], [ %319, %318 ], [ %347, %324 ]
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %353 = getelementptr inbounds i8, ptr %352, i64 -16
  %354 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %355 = load i64, ptr %353, align 1, !alias.scope !31, !noalias !34
  %356 = getelementptr i8, ptr %352, i64 -8
  %357 = load i64, ptr %356, align 1, !alias.scope !31, !noalias !34
  %358 = load i64, ptr %354, align 1, !alias.scope !34, !noalias !31
  %359 = getelementptr i8, ptr %3, i64 127
  %360 = load i64, ptr %359, align 1, !alias.scope !34, !noalias !31
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
  %378 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #11, !callees !40
  br label %379

379:                                              ; preds = %59, %54, %46, %10, %377, %350, %205
  %380 = phi i64 [ %248, %205 ], [ %376, %350 ], [ %378, %377 ], [ %43, %10 ], [ %51, %46 ], [ %58, %54 ], [ %73, %59 ]
  ret i64 %380
}

; Function Attrs: nounwind uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture readnone %3, i64 %4) #2 {
  %6 = alloca [192 x i8], align 32
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  br label %29

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #11
  call void @llvm.prefetch.p0(ptr nonnull %6, i32 0, i32 3, i32 1)
  %11 = sub i64 0, %2
  %12 = insertelement <4 x i64> poison, i64 %2, i64 0
  %13 = insertelement <4 x i64> %12, i64 %11, i64 1
  %14 = insertelement <4 x i64> %13, i64 %2, i64 2
  %15 = insertelement <4 x i64> %14, i64 %11, i64 3
  %16 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6) #11, !srcloc !24
  %17 = add <4 x i64> %15, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %17, ptr %16, align 32
  %18 = add <4 x i64> %15, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store <4 x i64> %18, ptr %19, align 32
  %20 = add <4 x i64> %15, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 64
  store <4 x i64> %20, ptr %21, align 32
  %22 = add <4 x i64> %15, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %23 = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <4 x i64> %22, ptr %23, align 32
  %24 = add <4 x i64> %15, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %25 = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <4 x i64> %24, ptr %25, align 32
  %26 = add <4 x i64> %15, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 160
  store <4 x i64> %26, ptr %27, align 32
  %28 = call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %6, i64 noundef 192)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #11
  br label %29

29:                                               ; preds = %8, %10
  %30 = phi i64 [ %9, %8 ], [ %28, %10 ]
  ret i64 %30
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #6 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %7, %8
  br i1 %11, label %87, label %12

12:                                               ; preds = %4
  %13 = icmp ult i64 %5, 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = load <4 x i64>, ptr %15, align 1, !alias.scope !46, !noalias !49
  %17 = getelementptr inbounds i8, ptr %14, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1, !alias.scope !46, !noalias !49
  br label %19

19:                                               ; preds = %62, %12
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %12 ], [ %84, %62 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %12 ], [ %74, %62 ]
  %22 = phi i64 [ 0, %12 ], [ %85, %62 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  br i1 %13, label %62, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %59, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %45, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %60, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %31, i32 0, i32 3, i32 1), !noalias !57
  %32 = shl nuw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %34 = load <4 x i64>, ptr %30, align 1, !alias.scope !64, !noalias !65
  %35 = load <4 x i64>, ptr %33, align 1, !alias.scope !67, !noalias !68
  %36 = xor <4 x i64> %35, %34
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %27, %43
  %45 = add <4 x i64> %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %47 = load <4 x i64>, ptr %46, align 1, !alias.scope !64, !noalias !65
  %48 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %49 = load <4 x i64>, ptr %48, align 1, !alias.scope !67, !noalias !68
  %50 = xor <4 x i64> %49, %47
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = and <4 x i64> %50, splat (i64 4294967295)
  %55 = and <4 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <4 x i64> %55, %54
  %57 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %58 = add <4 x i64> %26, %57
  %59 = add <4 x i64> %58, %56
  %60 = add nuw nsw i64 %28, 1
  %61 = icmp eq i64 %60, %6
  br i1 %61, label %62, label %25, !llvm.loop !69

62:                                               ; preds = %25, %19
  %63 = phi <4 x i64> [ %20, %19 ], [ %59, %25 ]
  %64 = phi <4 x i64> [ %21, %19 ], [ %45, %25 ]
  %65 = lshr <4 x i64> %64, splat (i64 47)
  %66 = xor <4 x i64> %16, %65
  %67 = xor <4 x i64> %66, %64
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, splat (i64 2654435761)
  %73 = mul <4 x i64> %70, splat (i64 -7046029290881679360)
  %74 = add <4 x i64> %73, %72
  %75 = lshr <4 x i64> %63, splat (i64 47)
  %76 = xor <4 x i64> %18, %75
  %77 = xor <4 x i64> %76, %63
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = bitcast <8 x i32> %79 to <4 x i64>
  %81 = and <4 x i64> %77, splat (i64 4294967295)
  %82 = mul nuw <4 x i64> %81, splat (i64 2654435761)
  %83 = mul <4 x i64> %80, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %83, %82
  %85 = add nuw i64 %22, 1
  %86 = icmp ult i64 %85, %9
  br i1 %86, label %19, label %87, !llvm.loop !70

87:                                               ; preds = %62, %4
  %88 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %84, %62 ]
  %89 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %74, %62 ]
  %90 = mul i64 %9, %7
  %91 = lshr i64 %10, 6
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %93 = icmp ult i64 %10, 64
  br i1 %93, label %131, label %94

94:                                               ; preds = %87, %94
  %95 = phi <4 x i64> [ %128, %94 ], [ %88, %87 ]
  %96 = phi <4 x i64> [ %114, %94 ], [ %89, %87 ]
  %97 = phi i64 [ %129, %94 ], [ 0, %87 ]
  %98 = shl i64 %97, 6
  %99 = getelementptr inbounds nuw i8, ptr %92, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %100, i32 0, i32 3, i32 1), !noalias !76
  %101 = shl nuw i64 %97, 3
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %103 = load <4 x i64>, ptr %99, align 1, !alias.scope !83, !noalias !84
  %104 = load <4 x i64>, ptr %102, align 1, !alias.scope !86, !noalias !87
  %105 = xor <4 x i64> %104, %103
  %106 = bitcast <4 x i64> %105 to <8 x i32>
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %108 = bitcast <8 x i32> %107 to <4 x i64>
  %109 = and <4 x i64> %105, splat (i64 4294967295)
  %110 = and <4 x i64> %108, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, %109
  %112 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %113 = add <4 x i64> %96, %112
  %114 = add <4 x i64> %113, %111
  %115 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %116 = load <4 x i64>, ptr %115, align 1, !alias.scope !83, !noalias !84
  %117 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %118 = load <4 x i64>, ptr %117, align 1, !alias.scope !86, !noalias !87
  %119 = xor <4 x i64> %118, %116
  %120 = bitcast <4 x i64> %119 to <8 x i32>
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %122 = bitcast <8 x i32> %121 to <4 x i64>
  %123 = and <4 x i64> %119, splat (i64 4294967295)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %116, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %95, %126
  %128 = add <4 x i64> %127, %125
  %129 = add nuw nsw i64 %97, 1
  %130 = icmp eq i64 %129, %91
  br i1 %130, label %131, label %94, !llvm.loop !69

131:                                              ; preds = %94, %87
  %132 = phi <4 x i64> [ %88, %87 ], [ %128, %94 ]
  %133 = phi <4 x i64> [ %89, %87 ], [ %114, %94 ]
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %135 = getelementptr inbounds i8, ptr %134, i64 -64
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %137 = getelementptr inbounds i8, ptr %136, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %138 = load <4 x i64>, ptr %135, align 1, !alias.scope !93, !noalias !94
  %139 = load <4 x i64>, ptr %137, align 1, !alias.scope !96, !noalias !97
  %140 = xor <4 x i64> %139, %138
  %141 = bitcast <4 x i64> %140 to <8 x i32>
  %142 = shufflevector <8 x i32> %141, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %143 = bitcast <8 x i32> %142 to <4 x i64>
  %144 = and <4 x i64> %140, splat (i64 4294967295)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %138, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %133, %147
  %149 = add <4 x i64> %148, %146
  %150 = getelementptr inbounds i8, ptr %134, i64 -32
  %151 = load <4 x i64>, ptr %150, align 1, !alias.scope !93, !noalias !94
  %152 = getelementptr inbounds i8, ptr %136, i64 -39
  %153 = load <4 x i64>, ptr %152, align 1, !alias.scope !96, !noalias !97
  %154 = xor <4 x i64> %153, %151
  %155 = bitcast <4 x i64> %154 to <8 x i32>
  %156 = shufflevector <8 x i32> %155, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %157 = bitcast <8 x i32> %156 to <4 x i64>
  %158 = and <4 x i64> %154, splat (i64 4294967295)
  %159 = and <4 x i64> %157, splat (i64 4294967295)
  %160 = mul nuw <4 x i64> %159, %158
  %161 = shufflevector <4 x i64> %151, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %162 = add <4 x i64> %132, %161
  %163 = add <4 x i64> %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %165 = mul i64 %1, -7046029288634856825
  %166 = load <8 x i64>, ptr %164, align 1, !alias.scope !98, !noalias !101
  %167 = shufflevector <4 x i64> %149, <4 x i64> %163, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %168 = shufflevector <8 x i64> %166, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %169 = xor <4 x i64> %167, %168
  %170 = shufflevector <8 x i64> %166, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %171 = shufflevector <4 x i64> %149, <4 x i64> %163, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %172 = xor <4 x i64> %170, %171
  %173 = zext <4 x i64> %169 to <4 x i128>
  %174 = zext <4 x i64> %172 to <4 x i128>
  %175 = mul nuw <4 x i128> %174, %173
  %176 = lshr <4 x i128> %175, splat (i128 64)
  %177 = xor <4 x i128> %176, %175
  %178 = trunc <4 x i128> %177 to <4 x i64>
  %179 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %178)
  %180 = add i64 %179, %165
  %181 = lshr i64 %180, 37
  %182 = xor i64 %181, %180
  %183 = mul i64 %182, 1609587791953885689
  %184 = lshr i64 %183, 32
  %185 = xor i64 %184, %183
  ret i64 %185
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #8 {
  %6 = tail call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #6 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %78, label %6

6:                                                ; preds = %3
  %7 = lshr i64 %4, 10
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 128
  %9 = load <4 x i64>, ptr %8, align 1, !alias.scope !108, !noalias !111
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %11 = load <4 x i64>, ptr %10, align 1, !alias.scope !108, !noalias !111
  br label %12

12:                                               ; preds = %55, %6
  %13 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %75, %55 ]
  %14 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %65, %55 ]
  %15 = phi i64 [ 0, %6 ], [ %76, %55 ]
  %16 = shl i64 %15, 10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  br label %18

18:                                               ; preds = %18, %12
  %19 = phi <4 x i64> [ %52, %18 ], [ %13, %12 ]
  %20 = phi <4 x i64> [ %38, %18 ], [ %14, %12 ]
  %21 = phi i64 [ %53, %18 ], [ 0, %12 ]
  %22 = shl i64 %21, 6
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1), !noalias !119
  %25 = shl nuw i64 %21, 3
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %27 = load <4 x i64>, ptr %23, align 1, !alias.scope !126, !noalias !127
  %28 = load <4 x i64>, ptr %26, align 1, !alias.scope !129, !noalias !130
  %29 = xor <4 x i64> %28, %27
  %30 = bitcast <4 x i64> %29 to <8 x i32>
  %31 = shufflevector <8 x i32> %30, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %32 = bitcast <8 x i32> %31 to <4 x i64>
  %33 = and <4 x i64> %29, splat (i64 4294967295)
  %34 = and <4 x i64> %32, splat (i64 4294967295)
  %35 = mul nuw <4 x i64> %34, %33
  %36 = shufflevector <4 x i64> %27, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %37 = add <4 x i64> %20, %36
  %38 = add <4 x i64> %37, %35
  %39 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %40 = load <4 x i64>, ptr %39, align 1, !alias.scope !126, !noalias !127
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %42 = load <4 x i64>, ptr %41, align 1, !alias.scope !129, !noalias !130
  %43 = xor <4 x i64> %42, %40
  %44 = bitcast <4 x i64> %43 to <8 x i32>
  %45 = shufflevector <8 x i32> %44, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %46 = bitcast <8 x i32> %45 to <4 x i64>
  %47 = and <4 x i64> %43, splat (i64 4294967295)
  %48 = and <4 x i64> %46, splat (i64 4294967295)
  %49 = mul nuw <4 x i64> %48, %47
  %50 = shufflevector <4 x i64> %40, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %51 = add <4 x i64> %19, %50
  %52 = add <4 x i64> %51, %49
  %53 = add nuw nsw i64 %21, 1
  %54 = icmp eq i64 %53, 16
  br i1 %54, label %55, label %18, !llvm.loop !69

55:                                               ; preds = %18
  %56 = lshr <4 x i64> %38, splat (i64 47)
  %57 = xor <4 x i64> %9, %56
  %58 = xor <4 x i64> %57, %38
  %59 = bitcast <4 x i64> %58 to <8 x i32>
  %60 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %61 = bitcast <8 x i32> %60 to <4 x i64>
  %62 = and <4 x i64> %58, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, splat (i64 2654435761)
  %64 = mul <4 x i64> %61, splat (i64 -7046029290881679360)
  %65 = add <4 x i64> %64, %63
  %66 = lshr <4 x i64> %52, splat (i64 47)
  %67 = xor <4 x i64> %11, %66
  %68 = xor <4 x i64> %67, %52
  %69 = bitcast <4 x i64> %68 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = and <4 x i64> %68, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, splat (i64 2654435761)
  %74 = mul <4 x i64> %71, splat (i64 -7046029290881679360)
  %75 = add <4 x i64> %74, %73
  %76 = add nuw nsw i64 %15, 1
  %77 = icmp eq i64 %76, %7
  br i1 %77, label %78, label %12, !llvm.loop !70

78:                                               ; preds = %55, %3
  %79 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %3 ], [ %75, %55 ]
  %80 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %3 ], [ %65, %55 ]
  %81 = and i64 %4, -1024
  %82 = and i64 %4, 1023
  %83 = lshr i64 %82, 6
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %85 = icmp samesign ult i64 %82, 64
  br i1 %85, label %123, label %86

86:                                               ; preds = %78, %86
  %87 = phi <4 x i64> [ %120, %86 ], [ %79, %78 ]
  %88 = phi <4 x i64> [ %106, %86 ], [ %80, %78 ]
  %89 = phi i64 [ %121, %86 ], [ 0, %78 ]
  %90 = shl i64 %89, 6
  %91 = getelementptr inbounds nuw i8, ptr %84, i64 %90
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %92, i32 0, i32 3, i32 1), !noalias !136
  %93 = shl nuw i64 %89, 3
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %95 = load <4 x i64>, ptr %91, align 1, !alias.scope !143, !noalias !144
  %96 = load <4 x i64>, ptr %94, align 1, !alias.scope !146, !noalias !147
  %97 = xor <4 x i64> %96, %95
  %98 = bitcast <4 x i64> %97 to <8 x i32>
  %99 = shufflevector <8 x i32> %98, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %100 = bitcast <8 x i32> %99 to <4 x i64>
  %101 = and <4 x i64> %97, splat (i64 4294967295)
  %102 = and <4 x i64> %100, splat (i64 4294967295)
  %103 = mul nuw <4 x i64> %102, %101
  %104 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %105 = add <4 x i64> %88, %104
  %106 = add <4 x i64> %105, %103
  %107 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %108 = load <4 x i64>, ptr %107, align 1, !alias.scope !143, !noalias !144
  %109 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %110 = load <4 x i64>, ptr %109, align 1, !alias.scope !146, !noalias !147
  %111 = xor <4 x i64> %110, %108
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = shufflevector <4 x i64> %108, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %119 = add <4 x i64> %87, %118
  %120 = add <4 x i64> %119, %117
  %121 = add nuw nsw i64 %89, 1
  %122 = icmp eq i64 %121, %83
  br i1 %122, label %123, label %86, !llvm.loop !69

123:                                              ; preds = %86, %78
  %124 = phi <4 x i64> [ %79, %78 ], [ %120, %86 ]
  %125 = phi <4 x i64> [ %80, %78 ], [ %106, %86 ]
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %127 = getelementptr inbounds i8, ptr %126, i64 -64
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %129 = load <4 x i64>, ptr %127, align 1, !alias.scope !153, !noalias !154
  %130 = load <4 x i64>, ptr %128, align 1, !alias.scope !156, !noalias !157
  %131 = xor <4 x i64> %130, %129
  %132 = bitcast <4 x i64> %131 to <8 x i32>
  %133 = shufflevector <8 x i32> %132, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %134 = bitcast <8 x i32> %133 to <4 x i64>
  %135 = and <4 x i64> %131, splat (i64 4294967295)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = shufflevector <4 x i64> %129, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %139 = add <4 x i64> %125, %138
  %140 = add <4 x i64> %139, %137
  %141 = getelementptr inbounds i8, ptr %126, i64 -32
  %142 = load <4 x i64>, ptr %141, align 1, !alias.scope !153, !noalias !154
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 153
  %144 = load <4 x i64>, ptr %143, align 1, !alias.scope !156, !noalias !157
  %145 = xor <4 x i64> %144, %142
  %146 = bitcast <4 x i64> %145 to <8 x i32>
  %147 = shufflevector <8 x i32> %146, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %148 = bitcast <8 x i32> %147 to <4 x i64>
  %149 = and <4 x i64> %145, splat (i64 4294967295)
  %150 = and <4 x i64> %148, splat (i64 4294967295)
  %151 = mul nuw <4 x i64> %150, %149
  %152 = shufflevector <4 x i64> %142, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %153 = add <4 x i64> %124, %152
  %154 = add <4 x i64> %153, %151
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %156 = mul i64 %1, -7046029288634856825
  %157 = extractelement <4 x i64> %140, i64 0
  %158 = extractelement <4 x i64> %140, i64 1
  %159 = load i64, ptr %155, align 1, !alias.scope !158, !noalias !161
  %160 = getelementptr i8, ptr %2, i64 19
  %161 = load i64, ptr %160, align 1, !alias.scope !158, !noalias !161
  %162 = xor i64 %157, %159
  %163 = xor i64 %158, %161
  %164 = zext i64 %162 to i128
  %165 = zext i64 %163 to i128
  %166 = mul nuw i128 %165, %164
  %167 = lshr i128 %166, 64
  %168 = xor i128 %167, %166
  %169 = trunc i128 %168 to i64
  %170 = add i64 %156, %169
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %172 = extractelement <4 x i64> %140, i64 2
  %173 = extractelement <4 x i64> %140, i64 3
  %174 = load i64, ptr %171, align 1, !alias.scope !158, !noalias !161
  %175 = getelementptr i8, ptr %2, i64 35
  %176 = load i64, ptr %175, align 1, !alias.scope !158, !noalias !161
  %177 = xor i64 %172, %174
  %178 = xor i64 %173, %176
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %170, %184
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %187 = extractelement <4 x i64> %154, i64 0
  %188 = extractelement <4 x i64> %154, i64 1
  %189 = load i64, ptr %186, align 1, !alias.scope !158, !noalias !161
  %190 = getelementptr i8, ptr %2, i64 51
  %191 = load i64, ptr %190, align 1, !alias.scope !158, !noalias !161
  %192 = xor i64 %187, %189
  %193 = xor i64 %188, %191
  %194 = zext i64 %192 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %185, %199
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %202 = extractelement <4 x i64> %154, i64 2
  %203 = extractelement <4 x i64> %154, i64 3
  %204 = load i64, ptr %201, align 1, !alias.scope !158, !noalias !161
  %205 = getelementptr i8, ptr %2, i64 67
  %206 = load i64, ptr %205, align 1, !alias.scope !158, !noalias !161
  %207 = xor i64 %202, %204
  %208 = xor i64 %206, %203
  %209 = zext i64 %207 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %200, %214
  %216 = lshr i64 %215, 37
  %217 = xor i64 %216, %215
  %218 = mul i64 %217, 1609587791953885689
  %219 = lshr i64 %218, 32
  %220 = xor i64 %219, %218
  %221 = getelementptr inbounds nuw i8, ptr %2, i64 117
  %222 = mul i64 %1, -4417276706812531889
  %223 = xor i64 %222, -1
  %224 = load i64, ptr %221, align 1, !alias.scope !163, !noalias !166
  %225 = getelementptr i8, ptr %2, i64 125
  %226 = load i64, ptr %225, align 1, !alias.scope !163, !noalias !166
  %227 = xor i64 %224, %157
  %228 = xor i64 %226, %158
  %229 = zext i64 %227 to i128
  %230 = zext i64 %228 to i128
  %231 = mul nuw i128 %230, %229
  %232 = lshr i128 %231, 64
  %233 = xor i128 %232, %231
  %234 = trunc i128 %233 to i64
  %235 = add i64 %234, %223
  %236 = getelementptr inbounds nuw i8, ptr %2, i64 133
  %237 = load i64, ptr %236, align 1, !alias.scope !163, !noalias !166
  %238 = getelementptr i8, ptr %2, i64 141
  %239 = load i64, ptr %238, align 1, !alias.scope !163, !noalias !166
  %240 = xor i64 %237, %172
  %241 = xor i64 %239, %173
  %242 = zext i64 %240 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %235, %247
  %249 = getelementptr inbounds nuw i8, ptr %2, i64 149
  %250 = load i64, ptr %249, align 1, !alias.scope !163, !noalias !166
  %251 = getelementptr i8, ptr %2, i64 157
  %252 = load i64, ptr %251, align 1, !alias.scope !163, !noalias !166
  %253 = xor i64 %250, %187
  %254 = xor i64 %252, %188
  %255 = zext i64 %253 to i128
  %256 = zext i64 %254 to i128
  %257 = mul nuw i128 %256, %255
  %258 = lshr i128 %257, 64
  %259 = xor i128 %258, %257
  %260 = trunc i128 %259 to i64
  %261 = add i64 %248, %260
  %262 = getelementptr inbounds nuw i8, ptr %2, i64 165
  %263 = load i64, ptr %262, align 1, !alias.scope !163, !noalias !166
  %264 = getelementptr i8, ptr %2, i64 173
  %265 = load i64, ptr %264, align 1, !alias.scope !163, !noalias !166
  %266 = xor i64 %263, %202
  %267 = xor i64 %265, %203
  %268 = zext i64 %266 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %261, %273
  %275 = lshr i64 %274, 37
  %276 = xor i64 %275, %274
  %277 = mul i64 %276, 1609587791953885689
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  %280 = insertvalue { i64, i64 } poison, i64 %220, 0
  %281 = insertvalue { i64, i64 } %280, i64 %279, 1
  ret { i64, i64 } %281
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148080126}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !7}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_len_17to128_128b: argument 0"}
!16 = distinct !{!16, !"XXH3_len_17to128_128b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_len_129to240_128b: argument 0"}
!19 = distinct !{!19, !"XXH3_len_129to240_128b"}
!20 = distinct !{!20, !7}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!23 = distinct !{!23, !"XXH3_hashLong_128b_withSeed_internal"}
!24 = !{i64 2152061473}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_len_17to128_64b: argument 0"}
!28 = distinct !{!28, !"XXH3_len_17to128_64b"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"XXH3_len_17to128_64b: argument 1"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"XXH3_len_129to240_64b: argument 0"}
!33 = distinct !{!33, !"XXH3_len_129to240_64b"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"XXH3_len_129to240_64b: argument 1"}
!36 = distinct !{!36, !7, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !7, !38, !37}
!40 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH3_hashLong_internal_loop: argument 1"}
!43 = distinct !{!43, !"XXH3_hashLong_internal_loop"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"XXH3_hashLong_internal_loop: argument 2"}
!46 = !{!47, !45}
!47 = distinct !{!47, !48, !"XXH3_scrambleAcc_avx2: argument 1"}
!48 = distinct !{!48, !"XXH3_scrambleAcc_avx2"}
!49 = !{!50, !51, !42}
!50 = distinct !{!50, !48, !"XXH3_scrambleAcc_avx2: argument 0"}
!51 = distinct !{!51, !43, !"XXH3_hashLong_internal_loop: argument 0"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_accumulate: argument 1"}
!54 = distinct !{!54, !"XXH3_accumulate"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"XXH3_accumulate: argument 2"}
!57 = !{!58, !56, !51, !45}
!58 = distinct !{!58, !54, !"XXH3_accumulate: argument 0"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"XXH3_accumulate_512_avx2: argument 1"}
!61 = distinct !{!61, !"XXH3_accumulate_512_avx2"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"XXH3_accumulate_512_avx2: argument 2"}
!64 = !{!60, !53, !42}
!65 = !{!66, !63, !58, !56, !51, !45}
!66 = distinct !{!66, !61, !"XXH3_accumulate_512_avx2: argument 0"}
!67 = !{!63, !56, !45}
!68 = !{!66, !60, !58, !53, !51, !42}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_accumulate: argument 1"}
!73 = distinct !{!73, !"XXH3_accumulate"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"XXH3_accumulate: argument 2"}
!76 = !{!77, !75, !51, !45}
!77 = distinct !{!77, !73, !"XXH3_accumulate: argument 0"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_accumulate_512_avx2: argument 1"}
!80 = distinct !{!80, !"XXH3_accumulate_512_avx2"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"XXH3_accumulate_512_avx2: argument 2"}
!83 = !{!79, !72, !42}
!84 = !{!85, !82, !77, !75, !51, !45}
!85 = distinct !{!85, !80, !"XXH3_accumulate_512_avx2: argument 0"}
!86 = !{!82, !75, !45}
!87 = !{!85, !79, !77, !72, !51, !42}
!88 = !{!89}
!89 = distinct !{!89, !90, !"XXH3_accumulate_512_avx2: argument 1"}
!90 = distinct !{!90, !"XXH3_accumulate_512_avx2"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"XXH3_accumulate_512_avx2: argument 2"}
!93 = !{!89, !42}
!94 = !{!95, !92, !51, !45}
!95 = distinct !{!95, !90, !"XXH3_accumulate_512_avx2: argument 0"}
!96 = !{!92, !45}
!97 = !{!95, !89, !51, !42}
!98 = !{!99}
!99 = distinct !{!99, !100, !"XXH3_mergeAccs: argument 1"}
!100 = distinct !{!100, !"XXH3_mergeAccs"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"XXH3_mergeAccs: argument 0"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_hashLong_internal_loop: argument 1"}
!105 = distinct !{!105, !"XXH3_hashLong_internal_loop"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"XXH3_hashLong_internal_loop: argument 2"}
!108 = !{!109, !107}
!109 = distinct !{!109, !110, !"XXH3_scrambleAcc_avx2: argument 1"}
!110 = distinct !{!110, !"XXH3_scrambleAcc_avx2"}
!111 = !{!112, !113, !104}
!112 = distinct !{!112, !110, !"XXH3_scrambleAcc_avx2: argument 0"}
!113 = distinct !{!113, !105, !"XXH3_hashLong_internal_loop: argument 0"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_accumulate: argument 1"}
!116 = distinct !{!116, !"XXH3_accumulate"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"XXH3_accumulate: argument 2"}
!119 = !{!120, !118, !113, !107}
!120 = distinct !{!120, !116, !"XXH3_accumulate: argument 0"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"XXH3_accumulate_512_avx2: argument 1"}
!123 = distinct !{!123, !"XXH3_accumulate_512_avx2"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"XXH3_accumulate_512_avx2: argument 2"}
!126 = !{!122, !115, !104}
!127 = !{!128, !125, !120, !118, !113, !107}
!128 = distinct !{!128, !123, !"XXH3_accumulate_512_avx2: argument 0"}
!129 = !{!125, !118, !107}
!130 = !{!128, !122, !120, !115, !113, !104}
!131 = !{!132}
!132 = distinct !{!132, !133, !"XXH3_accumulate: argument 1"}
!133 = distinct !{!133, !"XXH3_accumulate"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"XXH3_accumulate: argument 2"}
!136 = !{!137, !135, !113, !107}
!137 = distinct !{!137, !133, !"XXH3_accumulate: argument 0"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"XXH3_accumulate_512_avx2: argument 1"}
!140 = distinct !{!140, !"XXH3_accumulate_512_avx2"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"XXH3_accumulate_512_avx2: argument 2"}
!143 = !{!139, !132, !104}
!144 = !{!145, !142, !137, !135, !113, !107}
!145 = distinct !{!145, !140, !"XXH3_accumulate_512_avx2: argument 0"}
!146 = !{!142, !135, !107}
!147 = !{!145, !139, !137, !132, !113, !104}
!148 = !{!149}
!149 = distinct !{!149, !150, !"XXH3_accumulate_512_avx2: argument 1"}
!150 = distinct !{!150, !"XXH3_accumulate_512_avx2"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"XXH3_accumulate_512_avx2: argument 2"}
!153 = !{!149, !104}
!154 = !{!155, !152, !113, !107}
!155 = distinct !{!155, !150, !"XXH3_accumulate_512_avx2: argument 0"}
!156 = !{!152, !107}
!157 = !{!155, !149, !113, !104}
!158 = !{!159}
!159 = distinct !{!159, !160, !"XXH3_mergeAccs: argument 1"}
!160 = distinct !{!160, !"XXH3_mergeAccs"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"XXH3_mergeAccs: argument 0"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"XXH3_mergeAccs: argument 1"}
!165 = distinct !{!165, !"XXH3_mergeAccs"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"XXH3_mergeAccs: argument 0"}
