; ModuleID = 'x86_ident_v3/wrapper.c'
source_filename = "x86_ident_v3/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %54

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -15
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %44, %11 ]
  %13 = phi i32 [ %8, %5 ], [ %22, %11 ]
  %14 = phi i32 [ %9, %5 ], [ %29, %11 ]
  %15 = phi i32 [ %2, %5 ], [ %36, %11 ]
  %16 = phi i32 [ %10, %5 ], [ %43, %11 ]
  %17 = load i32, ptr %12, align 1
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #12, !srcloc !5
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) #12, !srcloc !5
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #12, !srcloc !5
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %42) #12, !srcloc !5
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %45 = icmp ult ptr %44, %7
  br i1 %45, label %11, label %46, !llvm.loop !6

46:                                               ; preds = %11
  %47 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %49 = add i32 %48, %47
  %50 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 12)
  %51 = add i32 %49, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 18)
  %53 = add i32 %51, %52
  br label %56

54:                                               ; preds = %3
  %55 = add i32 %2, 374761393
  br label %56

56:                                               ; preds = %54, %46
  %57 = phi i32 [ %53, %46 ], [ %55, %54 ]
  %58 = phi ptr [ %44, %46 ], [ %0, %54 ]
  %59 = trunc i64 %1 to i32
  %60 = add i32 %57, %59
  %61 = and i64 %1, 15
  switch i64 %61, label %209 [
    i64 12, label %62
    i64 8, label %69
    i64 4, label %78
    i64 13, label %86
    i64 9, label %93
    i64 5, label %102
    i64 14, label %117
    i64 10, label %124
    i64 6, label %133
    i64 15, label %155
    i64 11, label %162
    i64 7, label %171
    i64 3, label %180
    i64 2, label %190
    i64 1, label %200
    i64 0, label %210
  ]

62:                                               ; preds = %56
  %63 = load i32, ptr %58, align 1
  %64 = mul i32 %63, -1028477379
  %65 = add i32 %64, %60
  %66 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %67 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 17)
  %68 = mul i32 %67, 668265263
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi ptr [ %58, %56 ], [ %66, %62 ]
  %71 = phi i32 [ %60, %56 ], [ %68, %62 ]
  %72 = load i32, ptr %70, align 1
  %73 = mul i32 %72, -1028477379
  %74 = add i32 %73, %71
  %75 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %77 = mul i32 %76, 668265263
  br label %78

78:                                               ; preds = %69, %56
  %79 = phi ptr [ %58, %56 ], [ %75, %69 ]
  %80 = phi i32 [ %60, %56 ], [ %77, %69 ]
  %81 = load i32, ptr %79, align 1
  %82 = mul i32 %81, -1028477379
  %83 = add i32 %82, %80
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 17)
  %85 = mul i32 %84, 668265263
  br label %210

86:                                               ; preds = %56
  %87 = load i32, ptr %58, align 1
  %88 = mul i32 %87, -1028477379
  %89 = add i32 %88, %60
  %90 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 17)
  %92 = mul i32 %91, 668265263
  br label %93

93:                                               ; preds = %86, %56
  %94 = phi ptr [ %58, %56 ], [ %90, %86 ]
  %95 = phi i32 [ %60, %56 ], [ %92, %86 ]
  %96 = load i32, ptr %94, align 1
  %97 = mul i32 %96, -1028477379
  %98 = add i32 %97, %95
  %99 = getelementptr inbounds nuw i8, ptr %94, i64 4
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %101 = mul i32 %100, 668265263
  br label %102

102:                                              ; preds = %93, %56
  %103 = phi ptr [ %58, %56 ], [ %99, %93 ]
  %104 = phi i32 [ %60, %56 ], [ %101, %93 ]
  %105 = load i32, ptr %103, align 1
  %106 = mul i32 %105, -1028477379
  %107 = add i32 %106, %104
  %108 = getelementptr inbounds nuw i8, ptr %103, i64 4
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 17)
  %110 = mul i32 %109, 668265263
  %111 = load i8, ptr %108, align 1
  %112 = zext i8 %111 to i32
  %113 = mul i32 %112, 374761393
  %114 = add i32 %110, %113
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 11)
  %116 = mul i32 %115, -1640531535
  br label %210

117:                                              ; preds = %56
  %118 = load i32, ptr %58, align 1
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %119, %60
  %121 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %123 = mul i32 %122, 668265263
  br label %124

124:                                              ; preds = %117, %56
  %125 = phi ptr [ %58, %56 ], [ %121, %117 ]
  %126 = phi i32 [ %60, %56 ], [ %123, %117 ]
  %127 = load i32, ptr %125, align 1
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %125, i64 4
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  br label %133

133:                                              ; preds = %124, %56
  %134 = phi ptr [ %58, %56 ], [ %130, %124 ]
  %135 = phi i32 [ %60, %56 ], [ %132, %124 ]
  %136 = load i32, ptr %134, align 1
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %135
  %139 = getelementptr inbounds nuw i8, ptr %134, i64 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  %142 = getelementptr inbounds nuw i8, ptr %134, i64 5
  %143 = load i8, ptr %139, align 1
  %144 = zext i8 %143 to i32
  %145 = mul i32 %144, 374761393
  %146 = add i32 %141, %145
  %147 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 11)
  %148 = mul i32 %147, -1640531535
  %149 = load i8, ptr %142, align 1
  %150 = zext i8 %149 to i32
  %151 = mul i32 %150, 374761393
  %152 = add i32 %148, %151
  %153 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 11)
  %154 = mul i32 %153, -1640531535
  br label %210

155:                                              ; preds = %56
  %156 = load i32, ptr %58, align 1
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %60
  %159 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %155, %56
  %163 = phi ptr [ %58, %56 ], [ %159, %155 ]
  %164 = phi i32 [ %60, %56 ], [ %161, %155 ]
  %165 = load i32, ptr %163, align 1
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %169 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = mul i32 %169, 668265263
  br label %171

171:                                              ; preds = %162, %56
  %172 = phi ptr [ %58, %56 ], [ %168, %162 ]
  %173 = phi i32 [ %60, %56 ], [ %170, %162 ]
  %174 = load i32, ptr %172, align 1
  %175 = mul i32 %174, -1028477379
  %176 = add i32 %175, %173
  %177 = getelementptr inbounds nuw i8, ptr %172, i64 4
  %178 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17)
  %179 = mul i32 %178, 668265263
  br label %180

180:                                              ; preds = %171, %56
  %181 = phi ptr [ %58, %56 ], [ %177, %171 ]
  %182 = phi i32 [ %60, %56 ], [ %179, %171 ]
  %183 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %184 = load i8, ptr %181, align 1
  %185 = zext i8 %184 to i32
  %186 = mul i32 %185, 374761393
  %187 = add i32 %186, %182
  %188 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 11)
  %189 = mul i32 %188, -1640531535
  br label %190

190:                                              ; preds = %180, %56
  %191 = phi ptr [ %58, %56 ], [ %183, %180 ]
  %192 = phi i32 [ %60, %56 ], [ %189, %180 ]
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %194 = load i8, ptr %191, align 1
  %195 = zext i8 %194 to i32
  %196 = mul i32 %195, 374761393
  %197 = add i32 %196, %192
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 11)
  %199 = mul i32 %198, -1640531535
  br label %200

200:                                              ; preds = %190, %56
  %201 = phi ptr [ %58, %56 ], [ %193, %190 ]
  %202 = phi i32 [ %60, %56 ], [ %199, %190 ]
  %203 = load i8, ptr %201, align 1
  %204 = zext i8 %203 to i32
  %205 = mul i32 %204, 374761393
  %206 = add i32 %205, %202
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 11)
  %208 = mul i32 %207, -1640531535
  br label %210

209:                                              ; preds = %56
  unreachable

210:                                              ; preds = %56, %78, %102, %133, %200
  %211 = phi i32 [ %154, %133 ], [ %116, %102 ], [ %85, %78 ], [ %60, %56 ], [ %208, %200 ]
  %212 = lshr i32 %211, 15
  %213 = xor i32 %212, %211
  %214 = mul i32 %213, -2048144777
  %215 = lshr i32 %214, 13
  %216 = xor i32 %215, %214
  %217 = mul i32 %216, -1028477379
  %218 = lshr i32 %217, 16
  %219 = xor i32 %218, %217
  ret i32 %219
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
  br i1 %41, label %42, label %11, !llvm.loop !8

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
  %92 = phi ptr [ %78, %76 ], [ %86, %81 ]
  %93 = phi i64 [ %79, %76 ], [ %90, %81 ]
  %94 = load i64, ptr %92, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %92, i64 8
  %99 = xor i64 %97, %93
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  br label %103

103:                                              ; preds = %91, %76
  %104 = phi ptr [ %78, %76 ], [ %98, %91 ]
  %105 = phi i64 [ %79, %76 ], [ %102, %91 ]
  %106 = load i64, ptr %104, align 1
  %107 = mul i64 %106, -4417276706812531889
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 31)
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %109, %105
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
  %125 = phi ptr [ %78, %76 ], [ %119, %114 ]
  %126 = phi i64 [ %79, %76 ], [ %123, %114 ]
  %127 = load i64, ptr %125, align 1
  %128 = mul i64 %127, -4417276706812531889
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 31)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %125, i64 8
  %132 = xor i64 %130, %126
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 27)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add i64 %134, -8796714831421723037
  br label %136

136:                                              ; preds = %124, %76
  %137 = phi ptr [ %78, %76 ], [ %131, %124 ]
  %138 = phi i64 [ %79, %76 ], [ %135, %124 ]
  %139 = load i64, ptr %137, align 1
  %140 = mul i64 %139, -4417276706812531889
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 31)
  %142 = mul i64 %141, -7046029288634856825
  %143 = getelementptr inbounds nuw i8, ptr %137, i64 8
  %144 = xor i64 %142, %138
  %145 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 27)
  %146 = mul i64 %145, -7046029288634856825
  %147 = add i64 %146, -8796714831421723037
  br label %148

148:                                              ; preds = %136, %76
  %149 = phi ptr [ %78, %76 ], [ %143, %136 ]
  %150 = phi i64 [ %79, %76 ], [ %147, %136 ]
  %151 = load i32, ptr %149, align 1
  %152 = zext i32 %151 to i64
  %153 = mul i64 %152, -7046029288634856825
  %154 = xor i64 %153, %150
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
  %169 = phi ptr [ %78, %76 ], [ %163, %158 ]
  %170 = phi i64 [ %79, %76 ], [ %167, %158 ]
  %171 = load i64, ptr %169, align 1
  %172 = mul i64 %171, -4417276706812531889
  %173 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 31)
  %174 = mul i64 %173, -7046029288634856825
  %175 = getelementptr inbounds nuw i8, ptr %169, i64 8
  %176 = xor i64 %174, %170
  %177 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 27)
  %178 = mul i64 %177, -7046029288634856825
  %179 = add i64 %178, -8796714831421723037
  br label %180

180:                                              ; preds = %168, %76
  %181 = phi ptr [ %78, %76 ], [ %175, %168 ]
  %182 = phi i64 [ %79, %76 ], [ %179, %168 ]
  %183 = load i64, ptr %181, align 1
  %184 = mul i64 %183, -4417276706812531889
  %185 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 31)
  %186 = mul i64 %185, -7046029288634856825
  %187 = getelementptr inbounds nuw i8, ptr %181, i64 8
  %188 = xor i64 %186, %182
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
  %209 = phi ptr [ %78, %76 ], [ %203, %198 ]
  %210 = phi i64 [ %79, %76 ], [ %207, %198 ]
  %211 = load i64, ptr %209, align 1
  %212 = mul i64 %211, -4417276706812531889
  %213 = tail call i64 @llvm.fshl.i64(i64 %212, i64 %212, i64 31)
  %214 = mul i64 %213, -7046029288634856825
  %215 = getelementptr inbounds nuw i8, ptr %209, i64 8
  %216 = xor i64 %214, %210
  %217 = tail call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 27)
  %218 = mul i64 %217, -7046029288634856825
  %219 = add i64 %218, -8796714831421723037
  br label %220

220:                                              ; preds = %208, %76
  %221 = phi ptr [ %78, %76 ], [ %215, %208 ]
  %222 = phi i64 [ %79, %76 ], [ %219, %208 ]
  %223 = load i64, ptr %221, align 1
  %224 = mul i64 %223, -4417276706812531889
  %225 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 31)
  %226 = mul i64 %225, -7046029288634856825
  %227 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %228 = xor i64 %226, %222
  %229 = tail call i64 @llvm.fshl.i64(i64 %228, i64 %228, i64 27)
  %230 = mul i64 %229, -7046029288634856825
  %231 = add i64 %230, -8796714831421723037
  br label %232

232:                                              ; preds = %220, %76
  %233 = phi ptr [ %78, %76 ], [ %227, %220 ]
  %234 = phi i64 [ %79, %76 ], [ %231, %220 ]
  %235 = load i32, ptr %233, align 1
  %236 = zext i32 %235 to i64
  %237 = mul i64 %236, -7046029288634856825
  %238 = xor i64 %237, %234
  %239 = getelementptr inbounds nuw i8, ptr %233, i64 4
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
  %260 = phi ptr [ %78, %76 ], [ %254, %249 ]
  %261 = phi i64 [ %79, %76 ], [ %258, %249 ]
  %262 = load i64, ptr %260, align 1
  %263 = mul i64 %262, -4417276706812531889
  %264 = tail call i64 @llvm.fshl.i64(i64 %263, i64 %263, i64 31)
  %265 = mul i64 %264, -7046029288634856825
  %266 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %267 = xor i64 %265, %261
  %268 = tail call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 27)
  %269 = mul i64 %268, -7046029288634856825
  %270 = add i64 %269, -8796714831421723037
  br label %271

271:                                              ; preds = %259, %76
  %272 = phi ptr [ %78, %76 ], [ %266, %259 ]
  %273 = phi i64 [ %79, %76 ], [ %270, %259 ]
  %274 = load i64, ptr %272, align 1
  %275 = mul i64 %274, -4417276706812531889
  %276 = tail call i64 @llvm.fshl.i64(i64 %275, i64 %275, i64 31)
  %277 = mul i64 %276, -7046029288634856825
  %278 = getelementptr inbounds nuw i8, ptr %272, i64 8
  %279 = xor i64 %277, %273
  %280 = tail call i64 @llvm.fshl.i64(i64 %279, i64 %279, i64 27)
  %281 = mul i64 %280, -7046029288634856825
  %282 = add i64 %281, -8796714831421723037
  %283 = getelementptr inbounds nuw i8, ptr %272, i64 9
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
  %307 = phi ptr [ %78, %76 ], [ %301, %296 ]
  %308 = phi i64 [ %79, %76 ], [ %305, %296 ]
  %309 = load i64, ptr %307, align 1
  %310 = mul i64 %309, -4417276706812531889
  %311 = tail call i64 @llvm.fshl.i64(i64 %310, i64 %310, i64 31)
  %312 = mul i64 %311, -7046029288634856825
  %313 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %314 = xor i64 %312, %308
  %315 = tail call i64 @llvm.fshl.i64(i64 %314, i64 %314, i64 27)
  %316 = mul i64 %315, -7046029288634856825
  %317 = add i64 %316, -8796714831421723037
  br label %318

318:                                              ; preds = %306, %76
  %319 = phi ptr [ %78, %76 ], [ %313, %306 ]
  %320 = phi i64 [ %79, %76 ], [ %317, %306 ]
  %321 = load i64, ptr %319, align 1
  %322 = mul i64 %321, -4417276706812531889
  %323 = tail call i64 @llvm.fshl.i64(i64 %322, i64 %322, i64 31)
  %324 = mul i64 %323, -7046029288634856825
  %325 = getelementptr inbounds nuw i8, ptr %319, i64 8
  %326 = xor i64 %324, %320
  %327 = tail call i64 @llvm.fshl.i64(i64 %326, i64 %326, i64 27)
  %328 = mul i64 %327, -7046029288634856825
  %329 = add i64 %328, -8796714831421723037
  br label %330

330:                                              ; preds = %318, %76
  %331 = phi ptr [ %78, %76 ], [ %325, %318 ]
  %332 = phi i64 [ %79, %76 ], [ %329, %318 ]
  %333 = load i32, ptr %331, align 1
  %334 = zext i32 %333 to i64
  %335 = mul i64 %334, -7046029288634856825
  %336 = xor i64 %335, %332
  %337 = getelementptr inbounds nuw i8, ptr %331, i64 4
  %338 = tail call i64 @llvm.fshl.i64(i64 %336, i64 %336, i64 23)
  %339 = mul i64 %338, -4417276706812531889
  %340 = add i64 %339, 1609587929392839161
  %341 = getelementptr inbounds nuw i8, ptr %331, i64 5
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
  %365 = phi ptr [ %78, %76 ], [ %359, %354 ]
  %366 = phi i64 [ %79, %76 ], [ %363, %354 ]
  %367 = load i64, ptr %365, align 1
  %368 = mul i64 %367, -4417276706812531889
  %369 = tail call i64 @llvm.fshl.i64(i64 %368, i64 %368, i64 31)
  %370 = mul i64 %369, -7046029288634856825
  %371 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %372 = xor i64 %370, %366
  %373 = tail call i64 @llvm.fshl.i64(i64 %372, i64 %372, i64 27)
  %374 = mul i64 %373, -7046029288634856825
  %375 = add i64 %374, -8796714831421723037
  br label %376

376:                                              ; preds = %364, %76
  %377 = phi ptr [ %78, %76 ], [ %371, %364 ]
  %378 = phi i64 [ %79, %76 ], [ %375, %364 ]
  %379 = load i64, ptr %377, align 1
  %380 = mul i64 %379, -4417276706812531889
  %381 = tail call i64 @llvm.fshl.i64(i64 %380, i64 %380, i64 31)
  %382 = mul i64 %381, -7046029288634856825
  %383 = getelementptr inbounds nuw i8, ptr %377, i64 8
  %384 = xor i64 %382, %378
  %385 = tail call i64 @llvm.fshl.i64(i64 %384, i64 %384, i64 27)
  %386 = mul i64 %385, -7046029288634856825
  %387 = add i64 %386, -8796714831421723037
  %388 = getelementptr inbounds nuw i8, ptr %377, i64 9
  %389 = load i8, ptr %383, align 1
  %390 = zext i8 %389 to i64
  %391 = mul i64 %390, 2870177450012600261
  %392 = xor i64 %387, %391
  %393 = tail call i64 @llvm.fshl.i64(i64 %392, i64 %392, i64 11)
  %394 = mul i64 %393, -7046029288634856825
  %395 = getelementptr inbounds nuw i8, ptr %377, i64 10
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
  %419 = phi ptr [ %78, %76 ], [ %413, %408 ]
  %420 = phi i64 [ %79, %76 ], [ %417, %408 ]
  %421 = load i64, ptr %419, align 1
  %422 = mul i64 %421, -4417276706812531889
  %423 = tail call i64 @llvm.fshl.i64(i64 %422, i64 %422, i64 31)
  %424 = mul i64 %423, -7046029288634856825
  %425 = getelementptr inbounds nuw i8, ptr %419, i64 8
  %426 = xor i64 %424, %420
  %427 = tail call i64 @llvm.fshl.i64(i64 %426, i64 %426, i64 27)
  %428 = mul i64 %427, -7046029288634856825
  %429 = add i64 %428, -8796714831421723037
  br label %430

430:                                              ; preds = %418, %76
  %431 = phi ptr [ %78, %76 ], [ %425, %418 ]
  %432 = phi i64 [ %79, %76 ], [ %429, %418 ]
  %433 = load i64, ptr %431, align 1
  %434 = mul i64 %433, -4417276706812531889
  %435 = tail call i64 @llvm.fshl.i64(i64 %434, i64 %434, i64 31)
  %436 = mul i64 %435, -7046029288634856825
  %437 = getelementptr inbounds nuw i8, ptr %431, i64 8
  %438 = xor i64 %436, %432
  %439 = tail call i64 @llvm.fshl.i64(i64 %438, i64 %438, i64 27)
  %440 = mul i64 %439, -7046029288634856825
  %441 = add i64 %440, -8796714831421723037
  br label %442

442:                                              ; preds = %430, %76
  %443 = phi ptr [ %78, %76 ], [ %437, %430 ]
  %444 = phi i64 [ %79, %76 ], [ %441, %430 ]
  %445 = load i32, ptr %443, align 1
  %446 = zext i32 %445 to i64
  %447 = mul i64 %446, -7046029288634856825
  %448 = xor i64 %447, %444
  %449 = getelementptr inbounds nuw i8, ptr %443, i64 4
  %450 = tail call i64 @llvm.fshl.i64(i64 %448, i64 %448, i64 23)
  %451 = mul i64 %450, -4417276706812531889
  %452 = add i64 %451, 1609587929392839161
  br label %453

453:                                              ; preds = %442, %76
  %454 = phi ptr [ %78, %76 ], [ %449, %442 ]
  %455 = phi i64 [ %79, %76 ], [ %452, %442 ]
  %456 = getelementptr inbounds nuw i8, ptr %454, i64 1
  %457 = load i8, ptr %454, align 1
  %458 = zext i8 %457 to i64
  %459 = mul i64 %458, 2870177450012600261
  %460 = xor i64 %459, %455
  %461 = tail call i64 @llvm.fshl.i64(i64 %460, i64 %460, i64 11)
  %462 = mul i64 %461, -7046029288634856825
  br label %463

463:                                              ; preds = %453, %76
  %464 = phi ptr [ %78, %76 ], [ %456, %453 ]
  %465 = phi i64 [ %79, %76 ], [ %462, %453 ]
  %466 = getelementptr inbounds nuw i8, ptr %464, i64 1
  %467 = load i8, ptr %464, align 1
  %468 = zext i8 %467 to i64
  %469 = mul i64 %468, 2870177450012600261
  %470 = xor i64 %469, %465
  %471 = tail call i64 @llvm.fshl.i64(i64 %470, i64 %470, i64 11)
  %472 = mul i64 %471, -7046029288634856825
  br label %473

473:                                              ; preds = %463, %76
  %474 = phi ptr [ %78, %76 ], [ %466, %463 ]
  %475 = phi i64 [ %79, %76 ], [ %472, %463 ]
  %476 = load i8, ptr %474, align 1
  %477 = zext i8 %476 to i64
  %478 = mul i64 %477, 2870177450012600261
  %479 = xor i64 %478, %475
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

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %613

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
  br label %613

590:                                              ; preds = %329
  %591 = icmp eq i64 %3, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %590
  %593 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %613

594:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #13, !noalias !16
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 0, i32 3, i32 1), !noalias !16
  %595 = sub nsw i64 0, %3
  %596 = insertelement <4 x i64> poison, i64 %3, i64 0
  %597 = insertelement <4 x i64> %596, i64 %595, i64 1
  %598 = insertelement <4 x i64> %597, i64 %3, i64 2
  %599 = insertelement <4 x i64> %598, i64 %595, i64 3
  %600 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %5) #12, !srcloc !19
  %601 = add <4 x i64> %599, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %601, ptr %600, align 32, !noalias !16
  %602 = add <4 x i64> %599, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %603 = getelementptr inbounds nuw i8, ptr %600, i64 32
  store <4 x i64> %602, ptr %603, align 32, !noalias !16
  %604 = add <4 x i64> %599, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %605 = getelementptr inbounds nuw i8, ptr %600, i64 64
  store <4 x i64> %604, ptr %605, align 32, !noalias !16
  %606 = add <4 x i64> %599, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %607 = getelementptr inbounds nuw i8, ptr %600, i64 96
  store <4 x i64> %606, ptr %607, align 32, !noalias !16
  %608 = add <4 x i64> %599, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %609 = getelementptr inbounds nuw i8, ptr %600, i64 128
  store <4 x i64> %608, ptr %609, align 32, !noalias !16
  %610 = add <4 x i64> %599, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %611 = getelementptr inbounds nuw i8, ptr %600, i64 160
  store <4 x i64> %610, ptr %611, align 32, !noalias !16
  %612 = call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #13, !noalias !16
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef range(i64 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #2 {
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %74

8:                                                ; preds = %6
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %44, !prof !20

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
  br i1 %45, label %46, label %52, !prof !20

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
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
  %86 = load i64, ptr %84, align 1, !alias.scope !21, !noalias !24
  %87 = getelementptr i8, ptr %0, i64 56
  %88 = load i64, ptr %87, align 1, !alias.scope !21, !noalias !24
  %89 = load i64, ptr %85, align 1, !alias.scope !24, !noalias !21
  %90 = getelementptr i8, ptr %3, i64 104
  %91 = load i64, ptr %90, align 1, !alias.scope !24, !noalias !21
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
  %106 = load i64, ptr %104, align 1, !alias.scope !21, !noalias !24
  %107 = getelementptr i8, ptr %103, i64 -56
  %108 = load i64, ptr %107, align 1, !alias.scope !21, !noalias !24
  %109 = load i64, ptr %105, align 1, !alias.scope !24, !noalias !21
  %110 = getelementptr i8, ptr %3, i64 120
  %111 = load i64, ptr %110, align 1, !alias.scope !24, !noalias !21
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
  %127 = load i64, ptr %125, align 1, !alias.scope !21, !noalias !24
  %128 = getelementptr i8, ptr %0, i64 40
  %129 = load i64, ptr %128, align 1, !alias.scope !21, !noalias !24
  %130 = load i64, ptr %126, align 1, !alias.scope !24, !noalias !21
  %131 = getelementptr i8, ptr %3, i64 72
  %132 = load i64, ptr %131, align 1, !alias.scope !24, !noalias !21
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
  %147 = load i64, ptr %145, align 1, !alias.scope !21, !noalias !24
  %148 = getelementptr i8, ptr %144, i64 -40
  %149 = load i64, ptr %148, align 1, !alias.scope !21, !noalias !24
  %150 = load i64, ptr %146, align 1, !alias.scope !24, !noalias !21
  %151 = getelementptr i8, ptr %3, i64 88
  %152 = load i64, ptr %151, align 1, !alias.scope !24, !noalias !21
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
  %168 = load i64, ptr %166, align 1, !alias.scope !21, !noalias !24
  %169 = getelementptr i8, ptr %0, i64 24
  %170 = load i64, ptr %169, align 1, !alias.scope !21, !noalias !24
  %171 = load i64, ptr %167, align 1, !alias.scope !24, !noalias !21
  %172 = getelementptr i8, ptr %3, i64 40
  %173 = load i64, ptr %172, align 1, !alias.scope !24, !noalias !21
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
  %188 = load i64, ptr %186, align 1, !alias.scope !21, !noalias !24
  %189 = getelementptr i8, ptr %185, i64 -24
  %190 = load i64, ptr %189, align 1, !alias.scope !21, !noalias !24
  %191 = load i64, ptr %187, align 1, !alias.scope !24, !noalias !21
  %192 = getelementptr i8, ptr %3, i64 56
  %193 = load i64, ptr %192, align 1, !alias.scope !24, !noalias !21
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
  %207 = load i64, ptr %0, align 1, !alias.scope !21, !noalias !24
  %208 = getelementptr i8, ptr %0, i64 8
  %209 = load i64, ptr %208, align 1, !alias.scope !21, !noalias !24
  %210 = load i64, ptr %3, align 1, !alias.scope !24, !noalias !21
  %211 = getelementptr i8, ptr %3, i64 8
  %212 = load i64, ptr %211, align 1, !alias.scope !24, !noalias !21
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
  %227 = load i64, ptr %225, align 1, !alias.scope !21, !noalias !24
  %228 = getelementptr i8, ptr %224, i64 -8
  %229 = load i64, ptr %228, align 1, !alias.scope !21, !noalias !24
  %230 = load i64, ptr %226, align 1, !alias.scope !24, !noalias !21
  %231 = getelementptr i8, ptr %3, i64 24
  %232 = load i64, ptr %231, align 1, !alias.scope !24, !noalias !21
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %252 = mul i64 %1, -7046029288634856825
  %253 = trunc nuw nsw i64 %1 to i32
  %254 = load <16 x i64>, ptr %0, align 1, !alias.scope !26, !noalias !29
  %255 = load <16 x i64>, ptr %3, align 1, !alias.scope !29, !noalias !26
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
  %299 = load <8 x i64>, ptr %297, align 1, !alias.scope !26, !noalias !29
  %300 = shufflevector <8 x i64> %299, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %301 = shufflevector <8 x i64> %299, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %302 = load <8 x i64>, ptr %298, align 1, !alias.scope !29, !noalias !26
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
  br i1 %317, label %318, label %292, !llvm.loop !31

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
  %331 = load i64, ptr %328, align 1, !alias.scope !26, !noalias !29
  %332 = getelementptr i8, ptr %328, i64 8
  %333 = load i64, ptr %332, align 1, !alias.scope !26, !noalias !29
  %334 = load i64, ptr %330, align 1, !alias.scope !29, !noalias !26
  %335 = getelementptr i8, ptr %329, i64 -117
  %336 = load i64, ptr %335, align 1, !alias.scope !29, !noalias !26
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
  br i1 %349, label %350, label %324, !llvm.loop !34

350:                                              ; preds = %324, %318, %251
  %351 = phi i64 [ %279, %251 ], [ %319, %318 ], [ %347, %324 ]
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %353 = getelementptr inbounds i8, ptr %352, i64 -16
  %354 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %355 = load i64, ptr %353, align 1, !alias.scope !26, !noalias !29
  %356 = getelementptr i8, ptr %352, i64 -8
  %357 = load i64, ptr %356, align 1, !alias.scope !26, !noalias !29
  %358 = load i64, ptr %354, align 1, !alias.scope !29, !noalias !26
  %359 = getelementptr i8, ptr %3, i64 127
  %360 = load i64, ptr %359, align 1, !alias.scope !29, !noalias !26
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
  %378 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #13, !callees !35
  br label %379

379:                                              ; preds = %59, %54, %46, %10, %377, %350, %205
  %380 = phi i64 [ %248, %205 ], [ %376, %350 ], [ %378, %377 ], [ %43, %10 ], [ %51, %46 ], [ %58, %54 ], [ %73, %59 ]
  ret i64 %380
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture readnone %3, i64 %4) #3 {
  %6 = alloca [192 x i8], align 32
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  br label %29

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #13
  call void @llvm.prefetch.p0(ptr nonnull %6, i32 0, i32 3, i32 1)
  %11 = sub nsw i64 0, %2
  %12 = insertelement <4 x i64> poison, i64 %2, i64 0
  %13 = insertelement <4 x i64> %12, i64 %11, i64 1
  %14 = insertelement <4 x i64> %13, i64 %2, i64 2
  %15 = insertelement <4 x i64> %14, i64 %11, i64 3
  %16 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6) #12, !srcloc !19
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
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #13
  br label %29

29:                                               ; preds = %8, %10
  %30 = phi i64 [ %9, %8 ], [ %28, %10 ]
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr nocapture noundef readonly %0, i64 noundef range(i64 4, 9) %1, i64 %2, i64 %3, i64 noundef %4) unnamed_addr #6 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #7 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
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
  %16 = load <4 x i64>, ptr %15, align 1, !alias.scope !41, !noalias !44
  %17 = getelementptr inbounds i8, ptr %14, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1, !alias.scope !41, !noalias !44
  br label %19

19:                                               ; preds = %62, %12
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %12 ], [ %84, %62 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %12 ], [ %74, %62 ]
  %22 = phi i64 [ 0, %12 ], [ %85, %62 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  br i1 %13, label %62, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %59, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %45, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %60, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %31, i32 0, i32 3, i32 1), !noalias !52
  %32 = shl nuw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %34 = load <4 x i64>, ptr %30, align 1, !alias.scope !59, !noalias !60
  %35 = load <4 x i64>, ptr %33, align 1, !alias.scope !62, !noalias !63
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
  %47 = load <4 x i64>, ptr %46, align 1, !alias.scope !59, !noalias !60
  %48 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %49 = load <4 x i64>, ptr %48, align 1, !alias.scope !62, !noalias !63
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
  br i1 %61, label %62, label %25, !llvm.loop !64

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
  br i1 %86, label %19, label %87, !llvm.loop !65

87:                                               ; preds = %62, %4
  %88 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %84, %62 ]
  %89 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %74, %62 ]
  %90 = mul i64 %9, %7
  %91 = lshr i64 %10, 6
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %93 = icmp ult i64 %10, 64
  br i1 %93, label %131, label %94

94:                                               ; preds = %87, %94
  %95 = phi <4 x i64> [ %128, %94 ], [ %88, %87 ]
  %96 = phi <4 x i64> [ %114, %94 ], [ %89, %87 ]
  %97 = phi i64 [ %129, %94 ], [ 0, %87 ]
  %98 = shl i64 %97, 6
  %99 = getelementptr inbounds nuw i8, ptr %92, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %100, i32 0, i32 3, i32 1), !noalias !71
  %101 = shl nuw i64 %97, 3
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %103 = load <4 x i64>, ptr %99, align 1, !alias.scope !78, !noalias !79
  %104 = load <4 x i64>, ptr %102, align 1, !alias.scope !81, !noalias !82
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
  %116 = load <4 x i64>, ptr %115, align 1, !alias.scope !78, !noalias !79
  %117 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %118 = load <4 x i64>, ptr %117, align 1, !alias.scope !81, !noalias !82
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
  br i1 %130, label %131, label %94, !llvm.loop !64

131:                                              ; preds = %94, %87
  %132 = phi <4 x i64> [ %88, %87 ], [ %128, %94 ]
  %133 = phi <4 x i64> [ %89, %87 ], [ %114, %94 ]
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %135 = getelementptr inbounds i8, ptr %134, i64 -64
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %137 = getelementptr inbounds i8, ptr %136, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %138 = load <4 x i64>, ptr %135, align 1, !alias.scope !88, !noalias !89
  %139 = load <4 x i64>, ptr %137, align 1, !alias.scope !91, !noalias !92
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
  %151 = load <4 x i64>, ptr %150, align 1, !alias.scope !88, !noalias !89
  %152 = getelementptr inbounds i8, ptr %136, i64 -39
  %153 = load <4 x i64>, ptr %152, align 1, !alias.scope !91, !noalias !92
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
  %166 = load <8 x i64>, ptr %164, align 1, !alias.scope !93, !noalias !96
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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #9 {
  %6 = tail call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #7 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %78, label %6

6:                                                ; preds = %3
  %7 = lshr i64 %4, 10
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 128
  %9 = load <4 x i64>, ptr %8, align 1, !alias.scope !103, !noalias !106
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %11 = load <4 x i64>, ptr %10, align 1, !alias.scope !103, !noalias !106
  br label %12

12:                                               ; preds = %55, %6
  %13 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %75, %55 ]
  %14 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %65, %55 ]
  %15 = phi i64 [ 0, %6 ], [ %76, %55 ]
  %16 = shl i64 %15, 10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  br label %18

18:                                               ; preds = %18, %12
  %19 = phi <4 x i64> [ %52, %18 ], [ %13, %12 ]
  %20 = phi <4 x i64> [ %38, %18 ], [ %14, %12 ]
  %21 = phi i64 [ %53, %18 ], [ 0, %12 ]
  %22 = shl i64 %21, 6
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1), !noalias !114
  %25 = shl nuw i64 %21, 3
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %27 = load <4 x i64>, ptr %23, align 1, !alias.scope !121, !noalias !122
  %28 = load <4 x i64>, ptr %26, align 1, !alias.scope !124, !noalias !125
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
  %40 = load <4 x i64>, ptr %39, align 1, !alias.scope !121, !noalias !122
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %42 = load <4 x i64>, ptr %41, align 1, !alias.scope !124, !noalias !125
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
  br i1 %54, label %55, label %18, !llvm.loop !64

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
  br i1 %77, label %78, label %12, !llvm.loop !65

78:                                               ; preds = %55, %3
  %79 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %3 ], [ %75, %55 ]
  %80 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %3 ], [ %65, %55 ]
  %81 = and i64 %4, -1024
  %82 = and i64 %4, 1023
  %83 = lshr i64 %82, 6
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %85 = icmp samesign ult i64 %82, 64
  br i1 %85, label %123, label %86

86:                                               ; preds = %78, %86
  %87 = phi <4 x i64> [ %120, %86 ], [ %79, %78 ]
  %88 = phi <4 x i64> [ %106, %86 ], [ %80, %78 ]
  %89 = phi i64 [ %121, %86 ], [ 0, %78 ]
  %90 = shl i64 %89, 6
  %91 = getelementptr inbounds nuw i8, ptr %84, i64 %90
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %92, i32 0, i32 3, i32 1), !noalias !131
  %93 = shl nuw i64 %89, 3
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %95 = load <4 x i64>, ptr %91, align 1, !alias.scope !138, !noalias !139
  %96 = load <4 x i64>, ptr %94, align 1, !alias.scope !141, !noalias !142
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
  %108 = load <4 x i64>, ptr %107, align 1, !alias.scope !138, !noalias !139
  %109 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %110 = load <4 x i64>, ptr %109, align 1, !alias.scope !141, !noalias !142
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
  br i1 %122, label %123, label %86, !llvm.loop !64

123:                                              ; preds = %86, %78
  %124 = phi <4 x i64> [ %79, %78 ], [ %120, %86 ]
  %125 = phi <4 x i64> [ %80, %78 ], [ %106, %86 ]
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %127 = getelementptr inbounds i8, ptr %126, i64 -64
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %129 = load <4 x i64>, ptr %127, align 1, !alias.scope !148, !noalias !149
  %130 = load <4 x i64>, ptr %128, align 1, !alias.scope !151, !noalias !152
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
  %142 = load <4 x i64>, ptr %141, align 1, !alias.scope !148, !noalias !149
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 153
  %144 = load <4 x i64>, ptr %143, align 1, !alias.scope !151, !noalias !152
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
  %159 = load i64, ptr %155, align 1, !alias.scope !153, !noalias !156
  %160 = getelementptr i8, ptr %2, i64 19
  %161 = load i64, ptr %160, align 1, !alias.scope !153, !noalias !156
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
  %174 = load i64, ptr %171, align 1, !alias.scope !153, !noalias !156
  %175 = getelementptr i8, ptr %2, i64 35
  %176 = load i64, ptr %175, align 1, !alias.scope !153, !noalias !156
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
  %189 = load i64, ptr %186, align 1, !alias.scope !153, !noalias !156
  %190 = getelementptr i8, ptr %2, i64 51
  %191 = load i64, ptr %190, align 1, !alias.scope !153, !noalias !156
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
  %204 = load i64, ptr %201, align 1, !alias.scope !153, !noalias !156
  %205 = getelementptr i8, ptr %2, i64 67
  %206 = load i64, ptr %205, align 1, !alias.scope !153, !noalias !156
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
  %224 = load i64, ptr %221, align 1, !alias.scope !158, !noalias !161
  %225 = getelementptr i8, ptr %2, i64 125
  %226 = load i64, ptr %225, align 1, !alias.scope !158, !noalias !161
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
  %237 = load i64, ptr %236, align 1, !alias.scope !158, !noalias !161
  %238 = getelementptr i8, ptr %2, i64 141
  %239 = load i64, ptr %238, align 1, !alias.scope !158, !noalias !161
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
  %250 = load i64, ptr %249, align 1, !alias.scope !158, !noalias !161
  %251 = getelementptr i8, ptr %2, i64 157
  %252 = load i64, ptr %251, align 1, !alias.scope !158, !noalias !161
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
  %263 = load i64, ptr %262, align 1, !alias.scope !158, !noalias !161
  %264 = getelementptr i8, ptr %2, i64 173
  %265 = load i64, ptr %264, align 1, !alias.scope !158, !noalias !161
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
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #10

attributes #0 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 252429}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_len_17to128_128b: argument 0"}
!11 = distinct !{!11, !"XXH3_len_17to128_128b"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_len_129to240_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_129to240_128b"}
!15 = distinct !{!15, !7}
!16 = !{!17}
!17 = distinct !{!17, !18, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!18 = distinct !{!18, !"XXH3_hashLong_128b_withSeed_internal"}
!19 = !{i64 324888}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_len_17to128_64b: argument 0"}
!23 = distinct !{!23, !"XXH3_len_17to128_64b"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"XXH3_len_17to128_64b: argument 1"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_len_129to240_64b: argument 0"}
!28 = distinct !{!28, !"XXH3_len_129to240_64b"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"XXH3_len_129to240_64b: argument 1"}
!31 = distinct !{!31, !7, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !7, !33, !32}
!35 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_hashLong_internal_loop: argument 1"}
!38 = distinct !{!38, !"XXH3_hashLong_internal_loop"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"XXH3_hashLong_internal_loop: argument 2"}
!41 = !{!42, !40}
!42 = distinct !{!42, !43, !"XXH3_scrambleAcc_avx2: argument 1"}
!43 = distinct !{!43, !"XXH3_scrambleAcc_avx2"}
!44 = !{!45, !46, !37}
!45 = distinct !{!45, !43, !"XXH3_scrambleAcc_avx2: argument 0"}
!46 = distinct !{!46, !38, !"XXH3_hashLong_internal_loop: argument 0"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_accumulate: argument 1"}
!49 = distinct !{!49, !"XXH3_accumulate"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"XXH3_accumulate: argument 2"}
!52 = !{!53, !51, !46, !40}
!53 = distinct !{!53, !49, !"XXH3_accumulate: argument 0"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate_512_avx2: argument 1"}
!56 = distinct !{!56, !"XXH3_accumulate_512_avx2"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_accumulate_512_avx2: argument 2"}
!59 = !{!55, !48, !37}
!60 = !{!61, !58, !53, !51, !46, !40}
!61 = distinct !{!61, !56, !"XXH3_accumulate_512_avx2: argument 0"}
!62 = !{!58, !51, !40}
!63 = !{!61, !55, !53, !48, !46, !37}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_accumulate: argument 1"}
!68 = distinct !{!68, !"XXH3_accumulate"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"XXH3_accumulate: argument 2"}
!71 = !{!72, !70, !46, !40}
!72 = distinct !{!72, !68, !"XXH3_accumulate: argument 0"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_accumulate_512_avx2: argument 1"}
!75 = distinct !{!75, !"XXH3_accumulate_512_avx2"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_accumulate_512_avx2: argument 2"}
!78 = !{!74, !67, !37}
!79 = !{!80, !77, !72, !70, !46, !40}
!80 = distinct !{!80, !75, !"XXH3_accumulate_512_avx2: argument 0"}
!81 = !{!77, !70, !40}
!82 = !{!80, !74, !72, !67, !46, !37}
!83 = !{!84}
!84 = distinct !{!84, !85, !"XXH3_accumulate_512_avx2: argument 1"}
!85 = distinct !{!85, !"XXH3_accumulate_512_avx2"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"XXH3_accumulate_512_avx2: argument 2"}
!88 = !{!84, !37}
!89 = !{!90, !87, !46, !40}
!90 = distinct !{!90, !85, !"XXH3_accumulate_512_avx2: argument 0"}
!91 = !{!87, !40}
!92 = !{!90, !84, !46, !37}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_mergeAccs: argument 1"}
!95 = distinct !{!95, !"XXH3_mergeAccs"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_mergeAccs: argument 0"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"XXH3_hashLong_internal_loop: argument 1"}
!100 = distinct !{!100, !"XXH3_hashLong_internal_loop"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"XXH3_hashLong_internal_loop: argument 2"}
!103 = !{!104, !102}
!104 = distinct !{!104, !105, !"XXH3_scrambleAcc_avx2: argument 1"}
!105 = distinct !{!105, !"XXH3_scrambleAcc_avx2"}
!106 = !{!107, !108, !99}
!107 = distinct !{!107, !105, !"XXH3_scrambleAcc_avx2: argument 0"}
!108 = distinct !{!108, !100, !"XXH3_hashLong_internal_loop: argument 0"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"XXH3_accumulate: argument 1"}
!111 = distinct !{!111, !"XXH3_accumulate"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"XXH3_accumulate: argument 2"}
!114 = !{!115, !113, !108, !102}
!115 = distinct !{!115, !111, !"XXH3_accumulate: argument 0"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"XXH3_accumulate_512_avx2: argument 1"}
!118 = distinct !{!118, !"XXH3_accumulate_512_avx2"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"XXH3_accumulate_512_avx2: argument 2"}
!121 = !{!117, !110, !99}
!122 = !{!123, !120, !115, !113, !108, !102}
!123 = distinct !{!123, !118, !"XXH3_accumulate_512_avx2: argument 0"}
!124 = !{!120, !113, !102}
!125 = !{!123, !117, !115, !110, !108, !99}
!126 = !{!127}
!127 = distinct !{!127, !128, !"XXH3_accumulate: argument 1"}
!128 = distinct !{!128, !"XXH3_accumulate"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"XXH3_accumulate: argument 2"}
!131 = !{!132, !130, !108, !102}
!132 = distinct !{!132, !128, !"XXH3_accumulate: argument 0"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"XXH3_accumulate_512_avx2: argument 1"}
!135 = distinct !{!135, !"XXH3_accumulate_512_avx2"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"XXH3_accumulate_512_avx2: argument 2"}
!138 = !{!134, !127, !99}
!139 = !{!140, !137, !132, !130, !108, !102}
!140 = distinct !{!140, !135, !"XXH3_accumulate_512_avx2: argument 0"}
!141 = !{!137, !130, !102}
!142 = !{!140, !134, !132, !127, !108, !99}
!143 = !{!144}
!144 = distinct !{!144, !145, !"XXH3_accumulate_512_avx2: argument 1"}
!145 = distinct !{!145, !"XXH3_accumulate_512_avx2"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"XXH3_accumulate_512_avx2: argument 2"}
!148 = !{!144, !99}
!149 = !{!150, !147, !108, !102}
!150 = distinct !{!150, !145, !"XXH3_accumulate_512_avx2: argument 0"}
!151 = !{!147, !102}
!152 = !{!150, !144, !108, !99}
!153 = !{!154}
!154 = distinct !{!154, !155, !"XXH3_mergeAccs: argument 1"}
!155 = distinct !{!155, !"XXH3_mergeAccs"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"XXH3_mergeAccs: argument 0"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"XXH3_mergeAccs: argument 1"}
!160 = distinct !{!160, !"XXH3_mergeAccs"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"XXH3_mergeAccs: argument 0"}
