; ModuleID = 'x86_ident_v3/wrapper.c'
source_filename = "x86_ident_v3/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %59

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -15
  %10 = add i32 %2, 606290984
  %11 = add i32 %2, -2048144777
  %12 = add i32 %2, 1640531535
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %0, %7 ], [ %46, %13 ]
  %15 = phi i32 [ %10, %7 ], [ %24, %13 ]
  %16 = phi i32 [ %11, %7 ], [ %31, %13 ]
  %17 = phi i32 [ %2, %7 ], [ %38, %13 ]
  %18 = phi i32 [ %12, %7 ], [ %45, %13 ]
  %19 = load i32, ptr %14, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %15
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %23) #13, !srcloc !5
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %16
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %30) #13, !srcloc !5
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %33 = load i32, ptr %32, align 1
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %17
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %37) #13, !srcloc !5
  %39 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %40 = load i32, ptr %39, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %18
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %44) #13, !srcloc !5
  %46 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %47 = icmp ult ptr %46, %9
  br i1 %47, label %13, label %48, !llvm.loop !6

48:                                               ; preds = %13
  %49 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 1)
  %50 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %51 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 12)
  %52 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %53 = trunc i64 %1 to i32
  %54 = add i32 %49, %53
  %55 = add i32 %54, %50
  %56 = add i32 %55, %51
  %57 = add i32 %56, %52
  %58 = and i64 %1, 15
  br label %66

59:                                               ; preds = %5
  %60 = add i32 %2, 374761393
  %61 = trunc nuw i64 %1 to i32
  %62 = add i32 %60, %61
  br label %66

63:                                               ; preds = %3
  %64 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %64)
  %65 = add i32 %2, 374761393
  br label %245

66:                                               ; preds = %59, %48
  %67 = phi i64 [ %58, %48 ], [ %1, %59 ]
  %68 = phi i32 [ %57, %48 ], [ %62, %59 ]
  %69 = phi ptr [ %46, %48 ], [ %0, %59 ]
  %70 = icmp samesign ugt i64 %67, 3
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = add nsw i64 %67, -4
  %73 = lshr i64 %72, 2
  %74 = add nuw nsw i64 %73, 1
  %75 = and i64 %74, 7
  %76 = and i64 %72, 28
  %77 = icmp eq i64 %76, 28
  br i1 %77, label %92, label %78

78:                                               ; preds = %71, %78
  %79 = phi i32 [ %88, %78 ], [ %68, %71 ]
  %80 = phi i64 [ %89, %78 ], [ %67, %71 ]
  %81 = phi ptr [ %86, %78 ], [ %69, %71 ]
  %82 = phi i64 [ %90, %78 ], [ 0, %71 ]
  %83 = load i32, ptr %81, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %79
  %86 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = add nsw i64 %80, -4
  %90 = add i64 %82, 1
  %91 = icmp eq i64 %90, %75
  br i1 %91, label %92, label %78, !llvm.loop !8

92:                                               ; preds = %78, %71
  %93 = phi i32 [ %68, %71 ], [ %88, %78 ]
  %94 = phi i64 [ %67, %71 ], [ %89, %78 ]
  %95 = phi ptr [ %69, %71 ], [ %86, %78 ]
  %96 = phi ptr [ poison, %71 ], [ %86, %78 ]
  %97 = phi i32 [ poison, %71 ], [ %88, %78 ]
  %98 = phi i64 [ poison, %71 ], [ %89, %78 ]
  %99 = icmp ult i64 %72, 28
  br i1 %99, label %100, label %129

100:                                              ; preds = %92, %129, %66
  %101 = phi ptr [ %69, %66 ], [ %96, %92 ], [ %178, %129 ]
  %102 = phi i64 [ %67, %66 ], [ %98, %92 ], [ %181, %129 ]
  %103 = phi i32 [ %68, %66 ], [ %97, %92 ], [ %180, %129 ]
  %104 = icmp eq i64 %102, 0
  br i1 %104, label %245, label %105

105:                                              ; preds = %100
  %106 = and i64 %102, 7
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %105, %108
  %109 = phi i32 [ %119, %108 ], [ %103, %105 ]
  %110 = phi i64 [ %120, %108 ], [ %102, %105 ]
  %111 = phi ptr [ %113, %108 ], [ %101, %105 ]
  %112 = phi i64 [ %121, %108 ], [ 0, %105 ]
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 1
  %114 = load i8, ptr %111, align 1
  %115 = zext i8 %114 to i32
  %116 = mul i32 %115, 374761393
  %117 = add i32 %116, %109
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 11)
  %119 = mul i32 %118, -1640531535
  %120 = add nsw i64 %110, -1
  %121 = add i64 %112, 1
  %122 = icmp eq i64 %121, %106
  br i1 %122, label %123, label %108, !llvm.loop !10

123:                                              ; preds = %108, %105
  %124 = phi i32 [ poison, %105 ], [ %119, %108 ]
  %125 = phi i32 [ %103, %105 ], [ %119, %108 ]
  %126 = phi i64 [ %102, %105 ], [ %120, %108 ]
  %127 = phi ptr [ %101, %105 ], [ %113, %108 ]
  %128 = icmp ult i64 %102, 8
  br i1 %128, label %245, label %183

129:                                              ; preds = %92, %129
  %130 = phi i32 [ %180, %129 ], [ %93, %92 ]
  %131 = phi i64 [ %181, %129 ], [ %94, %92 ]
  %132 = phi ptr [ %178, %129 ], [ %95, %92 ]
  %133 = load i32, ptr %132, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %130
  %136 = getelementptr inbounds nuw i8, ptr %132, i64 4
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  %139 = load i32, ptr %136, align 1
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  %145 = load i32, ptr %142, align 1
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %144
  %148 = getelementptr inbounds nuw i8, ptr %132, i64 12
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  %151 = load i32, ptr %148, align 1
  %152 = mul i32 %151, -1028477379
  %153 = add i32 %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 17)
  %156 = mul i32 %155, 668265263
  %157 = load i32, ptr %154, align 1
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  %163 = load i32, ptr %160, align 1
  %164 = mul i32 %163, -1028477379
  %165 = add i32 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %167 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 17)
  %168 = mul i32 %167, 668265263
  %169 = load i32, ptr %166, align 1
  %170 = mul i32 %169, -1028477379
  %171 = add i32 %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %173 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 17)
  %174 = mul i32 %173, 668265263
  %175 = load i32, ptr %172, align 1
  %176 = mul i32 %175, -1028477379
  %177 = add i32 %176, %174
  %178 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %179 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 17)
  %180 = mul i32 %179, 668265263
  %181 = add nsw i64 %131, -32
  %182 = icmp ugt i64 %181, 3
  br i1 %182, label %129, label %100, !llvm.loop !11

183:                                              ; preds = %123, %183
  %184 = phi i32 [ %242, %183 ], [ %125, %123 ]
  %185 = phi i64 [ %243, %183 ], [ %126, %123 ]
  %186 = phi ptr [ %236, %183 ], [ %127, %123 ]
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %188 = load i8, ptr %186, align 1
  %189 = zext i8 %188 to i32
  %190 = mul i32 %189, 374761393
  %191 = add i32 %190, %184
  %192 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 11)
  %193 = mul i32 %192, -1640531535
  %194 = getelementptr inbounds nuw i8, ptr %186, i64 2
  %195 = load i8, ptr %187, align 1
  %196 = zext i8 %195 to i32
  %197 = mul i32 %196, 374761393
  %198 = add i32 %197, %193
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 11)
  %200 = mul i32 %199, -1640531535
  %201 = getelementptr inbounds nuw i8, ptr %186, i64 3
  %202 = load i8, ptr %194, align 1
  %203 = zext i8 %202 to i32
  %204 = mul i32 %203, 374761393
  %205 = add i32 %204, %200
  %206 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 11)
  %207 = mul i32 %206, -1640531535
  %208 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %209 = load i8, ptr %201, align 1
  %210 = zext i8 %209 to i32
  %211 = mul i32 %210, 374761393
  %212 = add i32 %211, %207
  %213 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 11)
  %214 = mul i32 %213, -1640531535
  %215 = getelementptr inbounds nuw i8, ptr %186, i64 5
  %216 = load i8, ptr %208, align 1
  %217 = zext i8 %216 to i32
  %218 = mul i32 %217, 374761393
  %219 = add i32 %218, %214
  %220 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 11)
  %221 = mul i32 %220, -1640531535
  %222 = getelementptr inbounds nuw i8, ptr %186, i64 6
  %223 = load i8, ptr %215, align 1
  %224 = zext i8 %223 to i32
  %225 = mul i32 %224, 374761393
  %226 = add i32 %225, %221
  %227 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 11)
  %228 = mul i32 %227, -1640531535
  %229 = getelementptr inbounds nuw i8, ptr %186, i64 7
  %230 = load i8, ptr %222, align 1
  %231 = zext i8 %230 to i32
  %232 = mul i32 %231, 374761393
  %233 = add i32 %232, %228
  %234 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 11)
  %235 = mul i32 %234, -1640531535
  %236 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %237 = load i8, ptr %229, align 1
  %238 = zext i8 %237 to i32
  %239 = mul i32 %238, 374761393
  %240 = add i32 %239, %235
  %241 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 11)
  %242 = mul i32 %241, -1640531535
  %243 = add nsw i64 %185, -8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %183, !llvm.loop !12

245:                                              ; preds = %123, %183, %63, %100
  %246 = phi i32 [ %103, %100 ], [ %65, %63 ], [ %124, %123 ], [ %242, %183 ]
  %247 = lshr i32 %246, 15
  %248 = xor i32 %247, %246
  %249 = mul i32 %248, -2048144777
  %250 = lshr i32 %249, 13
  %251 = xor i32 %250, %249
  %252 = mul i32 %251, -1028477379
  %253 = lshr i32 %252, 16
  %254 = xor i32 %253, %252
  ret i32 %254
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %76

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -31
  %10 = add i64 %2, 6983438078262162902
  %11 = add i64 %2, -4417276706812531889
  %12 = add i64 %2, 7046029288634856825
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %0, %7 ], [ %42, %13 ]
  %15 = phi i64 [ %10, %7 ], [ %23, %13 ]
  %16 = phi i64 [ %11, %7 ], [ %29, %13 ]
  %17 = phi i64 [ %2, %7 ], [ %35, %13 ]
  %18 = phi i64 [ %12, %7 ], [ %41, %13 ]
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
  %43 = icmp ult ptr %42, %9
  br i1 %43, label %13, label %44, !llvm.loop !13

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
  br label %267

81:                                               ; preds = %76, %44
  %82 = phi i64 [ %75, %44 ], [ %77, %76 ]
  %83 = phi ptr [ %42, %44 ], [ %0, %76 ]
  %84 = add i64 %82, %1
  %85 = and i64 %1, 31
  %86 = icmp samesign ugt i64 %85, 7
  br i1 %86, label %87, label %161

87:                                               ; preds = %81
  %88 = add nsw i64 %85, -8
  %89 = lshr i64 %88, 3
  %90 = add nuw nsw i64 %89, 1
  %91 = and i64 %90, 3
  %92 = and i64 %88, 24
  %93 = icmp eq i64 %92, 24
  br i1 %93, label %111, label %94

94:                                               ; preds = %87, %94
  %95 = phi i64 [ %107, %94 ], [ %84, %87 ]
  %96 = phi ptr [ %103, %94 ], [ %83, %87 ]
  %97 = phi i64 [ %108, %94 ], [ %85, %87 ]
  %98 = phi i64 [ %109, %94 ], [ 0, %87 ]
  %99 = load i64, ptr %96, align 1
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %104 = xor i64 %102, %95
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 27)
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  %108 = add nsw i64 %97, -8
  %109 = add i64 %98, 1
  %110 = icmp eq i64 %109, %91
  br i1 %110, label %111, label %94, !llvm.loop !14

111:                                              ; preds = %94, %87
  %112 = phi i64 [ %84, %87 ], [ %107, %94 ]
  %113 = phi ptr [ %83, %87 ], [ %103, %94 ]
  %114 = phi i64 [ %85, %87 ], [ %108, %94 ]
  %115 = phi ptr [ poison, %87 ], [ %103, %94 ]
  %116 = phi i64 [ poison, %87 ], [ %107, %94 ]
  %117 = phi i64 [ poison, %87 ], [ %108, %94 ]
  %118 = icmp ult i64 %88, 24
  br i1 %118, label %161, label %119

119:                                              ; preds = %111, %119
  %120 = phi i64 [ %158, %119 ], [ %112, %111 ]
  %121 = phi ptr [ %154, %119 ], [ %113, %111 ]
  %122 = phi i64 [ %159, %119 ], [ %114, %111 ]
  %123 = load i64, ptr %121, align 1
  %124 = mul i64 %123, -4417276706812531889
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 31)
  %126 = mul i64 %125, -7046029288634856825
  %127 = getelementptr inbounds nuw i8, ptr %121, i64 8
  %128 = xor i64 %126, %120
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 27)
  %130 = mul i64 %129, -7046029288634856825
  %131 = add i64 %130, -8796714831421723037
  %132 = load i64, ptr %127, align 1
  %133 = mul i64 %132, -4417276706812531889
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 31)
  %135 = mul i64 %134, -7046029288634856825
  %136 = getelementptr inbounds nuw i8, ptr %121, i64 16
  %137 = xor i64 %135, %131
  %138 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 27)
  %139 = mul i64 %138, -7046029288634856825
  %140 = add i64 %139, -8796714831421723037
  %141 = load i64, ptr %136, align 1
  %142 = mul i64 %141, -4417276706812531889
  %143 = tail call i64 @llvm.fshl.i64(i64 %142, i64 %142, i64 31)
  %144 = mul i64 %143, -7046029288634856825
  %145 = getelementptr inbounds nuw i8, ptr %121, i64 24
  %146 = xor i64 %144, %140
  %147 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 27)
  %148 = mul i64 %147, -7046029288634856825
  %149 = add i64 %148, -8796714831421723037
  %150 = load i64, ptr %145, align 1
  %151 = mul i64 %150, -4417276706812531889
  %152 = tail call i64 @llvm.fshl.i64(i64 %151, i64 %151, i64 31)
  %153 = mul i64 %152, -7046029288634856825
  %154 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %155 = xor i64 %153, %149
  %156 = tail call i64 @llvm.fshl.i64(i64 %155, i64 %155, i64 27)
  %157 = mul i64 %156, -7046029288634856825
  %158 = add i64 %157, -8796714831421723037
  %159 = add nsw i64 %122, -32
  %160 = icmp ugt i64 %159, 7
  br i1 %160, label %119, label %161, !llvm.loop !15

161:                                              ; preds = %111, %119, %81
  %162 = phi i64 [ %85, %81 ], [ %117, %111 ], [ %159, %119 ]
  %163 = phi ptr [ %83, %81 ], [ %115, %111 ], [ %154, %119 ]
  %164 = phi i64 [ %84, %81 ], [ %116, %111 ], [ %158, %119 ]
  %165 = icmp samesign ugt i64 %162, 3
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load i32, ptr %163, align 1
  %168 = zext i32 %167 to i64
  %169 = mul i64 %168, -7046029288634856825
  %170 = xor i64 %169, %164
  %171 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %172 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 23)
  %173 = mul i64 %172, -4417276706812531889
  %174 = add i64 %173, 1609587929392839161
  %175 = add nsw i64 %162, -4
  br label %176

176:                                              ; preds = %166, %161
  %177 = phi i64 [ %175, %166 ], [ %162, %161 ]
  %178 = phi ptr [ %171, %166 ], [ %163, %161 ]
  %179 = phi i64 [ %174, %166 ], [ %164, %161 ]
  %180 = icmp eq i64 %177, 0
  br i1 %180, label %267, label %181

181:                                              ; preds = %176
  %182 = and i64 %177, 7
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %199, label %184

184:                                              ; preds = %181, %184
  %185 = phi i64 [ %195, %184 ], [ %179, %181 ]
  %186 = phi ptr [ %189, %184 ], [ %178, %181 ]
  %187 = phi i64 [ %196, %184 ], [ %177, %181 ]
  %188 = phi i64 [ %197, %184 ], [ 0, %181 ]
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %190 = load i8, ptr %186, align 1
  %191 = zext i8 %190 to i64
  %192 = mul i64 %191, 2870177450012600261
  %193 = xor i64 %192, %185
  %194 = tail call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 11)
  %195 = mul i64 %194, -7046029288634856825
  %196 = add nsw i64 %187, -1
  %197 = add i64 %188, 1
  %198 = icmp eq i64 %197, %182
  br i1 %198, label %199, label %184, !llvm.loop !16

199:                                              ; preds = %184, %181
  %200 = phi i64 [ poison, %181 ], [ %195, %184 ]
  %201 = phi i64 [ %179, %181 ], [ %195, %184 ]
  %202 = phi ptr [ %178, %181 ], [ %189, %184 ]
  %203 = phi i64 [ %177, %181 ], [ %196, %184 ]
  %204 = icmp ult i64 %177, 8
  br i1 %204, label %267, label %205

205:                                              ; preds = %199, %205
  %206 = phi i64 [ %264, %205 ], [ %201, %199 ]
  %207 = phi ptr [ %258, %205 ], [ %202, %199 ]
  %208 = phi i64 [ %265, %205 ], [ %203, %199 ]
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 1
  %210 = load i8, ptr %207, align 1
  %211 = zext i8 %210 to i64
  %212 = mul i64 %211, 2870177450012600261
  %213 = xor i64 %212, %206
  %214 = tail call i64 @llvm.fshl.i64(i64 %213, i64 %213, i64 11)
  %215 = mul i64 %214, -7046029288634856825
  %216 = getelementptr inbounds nuw i8, ptr %207, i64 2
  %217 = load i8, ptr %209, align 1
  %218 = zext i8 %217 to i64
  %219 = mul i64 %218, 2870177450012600261
  %220 = xor i64 %219, %215
  %221 = tail call i64 @llvm.fshl.i64(i64 %220, i64 %220, i64 11)
  %222 = mul i64 %221, -7046029288634856825
  %223 = getelementptr inbounds nuw i8, ptr %207, i64 3
  %224 = load i8, ptr %216, align 1
  %225 = zext i8 %224 to i64
  %226 = mul i64 %225, 2870177450012600261
  %227 = xor i64 %226, %222
  %228 = tail call i64 @llvm.fshl.i64(i64 %227, i64 %227, i64 11)
  %229 = mul i64 %228, -7046029288634856825
  %230 = getelementptr inbounds nuw i8, ptr %207, i64 4
  %231 = load i8, ptr %223, align 1
  %232 = zext i8 %231 to i64
  %233 = mul i64 %232, 2870177450012600261
  %234 = xor i64 %233, %229
  %235 = tail call i64 @llvm.fshl.i64(i64 %234, i64 %234, i64 11)
  %236 = mul i64 %235, -7046029288634856825
  %237 = getelementptr inbounds nuw i8, ptr %207, i64 5
  %238 = load i8, ptr %230, align 1
  %239 = zext i8 %238 to i64
  %240 = mul i64 %239, 2870177450012600261
  %241 = xor i64 %240, %236
  %242 = tail call i64 @llvm.fshl.i64(i64 %241, i64 %241, i64 11)
  %243 = mul i64 %242, -7046029288634856825
  %244 = getelementptr inbounds nuw i8, ptr %207, i64 6
  %245 = load i8, ptr %237, align 1
  %246 = zext i8 %245 to i64
  %247 = mul i64 %246, 2870177450012600261
  %248 = xor i64 %247, %243
  %249 = tail call i64 @llvm.fshl.i64(i64 %248, i64 %248, i64 11)
  %250 = mul i64 %249, -7046029288634856825
  %251 = getelementptr inbounds nuw i8, ptr %207, i64 7
  %252 = load i8, ptr %244, align 1
  %253 = zext i8 %252 to i64
  %254 = mul i64 %253, 2870177450012600261
  %255 = xor i64 %254, %250
  %256 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 11)
  %257 = mul i64 %256, -7046029288634856825
  %258 = getelementptr inbounds nuw i8, ptr %207, i64 8
  %259 = load i8, ptr %251, align 1
  %260 = zext i8 %259 to i64
  %261 = mul i64 %260, 2870177450012600261
  %262 = xor i64 %261, %257
  %263 = tail call i64 @llvm.fshl.i64(i64 %262, i64 %262, i64 11)
  %264 = mul i64 %263, -7046029288634856825
  %265 = add nsw i64 %208, -8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %205, !llvm.loop !17

267:                                              ; preds = %199, %205, %78, %176
  %268 = phi i64 [ %179, %176 ], [ %79, %78 ], [ %200, %199 ], [ %264, %205 ]
  %269 = lshr i64 %268, 33
  %270 = xor i64 %269, %268
  %271 = mul i64 %270, -4417276706812531889
  %272 = lshr i64 %271, 29
  %273 = xor i64 %272, %271
  %274 = mul i64 %273, 1609587929392839161
  %275 = lshr i64 %274, 32
  %276 = xor i64 %275, %274
  ret i64 %276
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
define dso_local void @target_xxh3_128_seed(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [192 x i8], align 32
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
  br label %615

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
  %168 = load i64, ptr %165, align 1, !alias.scope !18
  %169 = getelementptr i8, ptr %1, i64 56
  %170 = load i64, ptr %169, align 1, !alias.scope !18
  %171 = load i64, ptr %167, align 1, !alias.scope !18
  %172 = getelementptr i8, ptr %166, i64 -56
  %173 = load i64, ptr %172, align 1, !alias.scope !18
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
  %205 = load i64, ptr %202, align 1, !alias.scope !18
  %206 = getelementptr i8, ptr %1, i64 40
  %207 = load i64, ptr %206, align 1, !alias.scope !18
  %208 = load i64, ptr %204, align 1, !alias.scope !18
  %209 = getelementptr i8, ptr %203, i64 -40
  %210 = load i64, ptr %209, align 1, !alias.scope !18
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
  %243 = load i64, ptr %240, align 1, !alias.scope !18
  %244 = getelementptr i8, ptr %1, i64 24
  %245 = load i64, ptr %244, align 1, !alias.scope !18
  %246 = load i64, ptr %242, align 1, !alias.scope !18
  %247 = getelementptr i8, ptr %241, i64 -24
  %248 = load i64, ptr %247, align 1, !alias.scope !18
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
  %280 = load i64, ptr %1, align 1, !alias.scope !18
  %281 = getelementptr i8, ptr %1, i64 8
  %282 = load i64, ptr %281, align 1, !alias.scope !18
  %283 = load i64, ptr %279, align 1, !alias.scope !18
  %284 = getelementptr i8, ptr %278, i64 -8
  %285 = load i64, ptr %284, align 1, !alias.scope !18
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
  br label %615

332:                                              ; preds = %155
  %333 = icmp ult i64 %2, 241
  br i1 %333, label %334, label %589

334:                                              ; preds = %332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %335 = mul i64 %2, -7046029288634856825
  %336 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %337 = load i64, ptr %1, align 1, !alias.scope !21
  %338 = getelementptr i8, ptr %1, i64 8
  %339 = load i64, ptr %338, align 1, !alias.scope !21
  %340 = load i64, ptr %336, align 1, !alias.scope !21
  %341 = getelementptr i8, ptr %1, i64 24
  %342 = load i64, ptr %341, align 1, !alias.scope !21
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
  %370 = load i64, ptr %368, align 1, !alias.scope !21
  %371 = getelementptr i8, ptr %1, i64 40
  %372 = load i64, ptr %371, align 1, !alias.scope !21
  %373 = load i64, ptr %369, align 1, !alias.scope !21
  %374 = getelementptr i8, ptr %1, i64 56
  %375 = load i64, ptr %374, align 1, !alias.scope !21
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
  %404 = load i64, ptr %402, align 1, !alias.scope !21
  %405 = getelementptr i8, ptr %1, i64 72
  %406 = load i64, ptr %405, align 1, !alias.scope !21
  %407 = load i64, ptr %403, align 1, !alias.scope !21
  %408 = getelementptr i8, ptr %1, i64 88
  %409 = load i64, ptr %408, align 1, !alias.scope !21
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
  %438 = load i64, ptr %436, align 1, !alias.scope !21
  %439 = getelementptr i8, ptr %1, i64 104
  %440 = load i64, ptr %439, align 1, !alias.scope !21
  %441 = load i64, ptr %437, align 1, !alias.scope !21
  %442 = getelementptr i8, ptr %1, i64 120
  %443 = load i64, ptr %442, align 1, !alias.scope !21
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
  %490 = load i64, ptr %486, align 1, !alias.scope !21
  %491 = getelementptr i8, ptr %485, i64 -24
  %492 = load i64, ptr %491, align 1, !alias.scope !21
  %493 = load i64, ptr %487, align 1, !alias.scope !21
  %494 = getelementptr i8, ptr %485, i64 -8
  %495 = load i64, ptr %494, align 1, !alias.scope !21
  %496 = load i64, ptr %489, align 1, !noalias !21
  %497 = getelementptr i8, ptr %488, i64 -152
  %498 = load i64, ptr %497, align 1, !noalias !21
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
  %513 = load i64, ptr %512, align 1, !noalias !21
  %514 = getelementptr i8, ptr %488, i64 -136
  %515 = load i64, ptr %514, align 1, !noalias !21
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
  br i1 %530, label %531, label %481, !llvm.loop !24

531:                                              ; preds = %481, %334
  %532 = phi i64 [ %474, %334 ], [ %511, %481 ]
  %533 = phi i64 [ %479, %334 ], [ %528, %481 ]
  %534 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %535 = getelementptr inbounds i8, ptr %534, i64 -16
  %536 = getelementptr inbounds i8, ptr %534, i64 -32
  %537 = load i64, ptr %535, align 1, !alias.scope !21
  %538 = getelementptr i8, ptr %534, i64 -8
  %539 = load i64, ptr %538, align 1, !alias.scope !21
  %540 = load i64, ptr %536, align 1, !alias.scope !21
  %541 = getelementptr i8, ptr %534, i64 -24
  %542 = load i64, ptr %541, align 1, !alias.scope !21
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
  br label %615

589:                                              ; preds = %332
  %590 = icmp eq i64 %3, 0
  br i1 %590, label %591, label %593

591:                                              ; preds = %589
  %592 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret)
  br label %615

593:                                              ; preds = %589
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #14, !noalias !25
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 0, i32 3, i32 1), !noalias !25
  %594 = sub i64 0, %3
  %595 = insertelement <4 x i64> poison, i64 %3, i64 0
  %596 = insertelement <4 x i64> %595, i64 %594, i64 1
  %597 = insertelement <4 x i64> %596, i64 %3, i64 2
  %598 = insertelement <4 x i64> %597, i64 %594, i64 3
  %599 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %5) #13, !srcloc !28
  %600 = ptrtoint ptr %599 to i64
  %601 = and i64 %600, 31
  %602 = icmp eq i64 %601, 0
  call void @llvm.assume(i1 %602)
  %603 = add <4 x i64> %598, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %603, ptr %599, align 32, !noalias !25
  %604 = add <4 x i64> %598, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %605 = getelementptr inbounds nuw i8, ptr %599, i64 32
  store <4 x i64> %604, ptr %605, align 32, !noalias !25
  %606 = add <4 x i64> %598, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %607 = getelementptr inbounds nuw i8, ptr %599, i64 64
  store <4 x i64> %606, ptr %607, align 32, !noalias !25
  %608 = add <4 x i64> %598, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %609 = getelementptr inbounds nuw i8, ptr %599, i64 96
  store <4 x i64> %608, ptr %609, align 32, !noalias !25
  %610 = add <4 x i64> %598, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %611 = getelementptr inbounds nuw i8, ptr %599, i64 128
  store <4 x i64> %610, ptr %611, align 32, !noalias !25
  %612 = add <4 x i64> %598, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %613 = getelementptr inbounds nuw i8, ptr %599, i64 160
  store <4 x i64> %612, ptr %613, align 32, !noalias !25
  %614 = call fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #14, !noalias !25
  br label %615

615:                                              ; preds = %148, %275, %531, %591, %593
  %616 = phi { i64, i64 } [ %154, %148 ], [ %331, %275 ], [ %588, %531 ], [ %592, %591 ], [ %614, %593 ]
  %617 = extractvalue { i64, i64 } %616, 0
  %618 = extractvalue { i64, i64 } %616, 1
  store i64 %617, ptr %0, align 8
  %619 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %618, ptr %619, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef range(i64 136, 0) %4, ptr nocapture noundef readonly %5) unnamed_addr #2 {
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %69

8:                                                ; preds = %6
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %46, !prof !29

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
  br label %284

46:                                               ; preds = %8
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %50, !prof !29

48:                                               ; preds = %46
  %49 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #15
  br label %284

50:                                               ; preds = %46
  %51 = icmp eq i64 %1, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #15
  br label %284

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
  br label %284

69:                                               ; preds = %6
  %70 = icmp ult i64 %1, 129
  br i1 %70, label %71, label %192

71:                                               ; preds = %69
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %72 = mul i64 %1, -7046029288634856825
  %73 = load i64, ptr %0, align 1, !alias.scope !30, !noalias !33
  %74 = getelementptr i8, ptr %0, i64 8
  %75 = load i64, ptr %74, align 1, !alias.scope !30, !noalias !33
  %76 = load i64, ptr %3, align 1, !alias.scope !33, !noalias !30
  %77 = getelementptr i8, ptr %3, i64 8
  %78 = load i64, ptr %77, align 1, !alias.scope !33, !noalias !30
  %79 = add i64 %76, %2
  %80 = xor i64 %79, %73
  %81 = sub i64 %78, %2
  %82 = xor i64 %81, %75
  %83 = zext i64 %80 to i128
  %84 = zext i64 %82 to i128
  %85 = mul nuw i128 %84, %83
  %86 = lshr i128 %85, 64
  %87 = xor i128 %86, %85
  %88 = trunc i128 %87 to i64
  %89 = add i64 %72, %88
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %91 = getelementptr inbounds i8, ptr %90, i64 -16
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %93 = load i64, ptr %91, align 1, !alias.scope !30, !noalias !33
  %94 = getelementptr i8, ptr %90, i64 -8
  %95 = load i64, ptr %94, align 1, !alias.scope !30, !noalias !33
  %96 = load i64, ptr %92, align 1, !alias.scope !33, !noalias !30
  %97 = getelementptr i8, ptr %3, i64 24
  %98 = load i64, ptr %97, align 1, !alias.scope !33, !noalias !30
  %99 = add i64 %96, %2
  %100 = xor i64 %99, %93
  %101 = sub i64 %98, %2
  %102 = xor i64 %101, %95
  %103 = zext i64 %100 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = lshr i128 %105, 64
  %107 = xor i128 %106, %105
  %108 = trunc i128 %107 to i64
  %109 = icmp samesign ugt i64 %1, 32
  %110 = insertelement <2 x i64> poison, i64 %89, i64 0
  %111 = insertelement <2 x i64> %110, i64 %108, i64 1
  br i1 %109, label %112, label %182

112:                                              ; preds = %71
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %115 = getelementptr inbounds i8, ptr %90, i64 -32
  %116 = load <2 x i64>, ptr %113, align 1, !alias.scope !30, !noalias !33
  %117 = load <2 x i64>, ptr %115, align 1, !alias.scope !30, !noalias !33
  %118 = load <4 x i64>, ptr %114, align 1, !alias.scope !33, !noalias !30
  %119 = shufflevector <4 x i64> %118, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %120 = insertelement <2 x i64> poison, i64 %2, i64 0
  %121 = shufflevector <2 x i64> %120, <2 x i64> poison, <2 x i32> zeroinitializer
  %122 = add <2 x i64> %119, %121
  %123 = shufflevector <2 x i64> %116, <2 x i64> %117, <2 x i32> <i32 0, i32 2>
  %124 = xor <2 x i64> %122, %123
  %125 = shufflevector <4 x i64> %118, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %126 = sub <2 x i64> %125, %121
  %127 = shufflevector <2 x i64> %116, <2 x i64> %117, <2 x i32> <i32 1, i32 3>
  %128 = xor <2 x i64> %126, %127
  %129 = zext <2 x i64> %124 to <2 x i128>
  %130 = zext <2 x i64> %128 to <2 x i128>
  %131 = mul nuw <2 x i128> %130, %129
  %132 = lshr <2 x i128> %131, splat (i128 64)
  %133 = xor <2 x i128> %132, %131
  %134 = trunc <2 x i128> %133 to <2 x i64>
  %135 = add <2 x i64> %111, %134
  %136 = icmp samesign ugt i64 %1, 64
  br i1 %136, label %137, label %182

137:                                              ; preds = %112
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %140 = getelementptr inbounds i8, ptr %90, i64 -48
  %141 = load <2 x i64>, ptr %138, align 1, !alias.scope !30, !noalias !33
  %142 = load <2 x i64>, ptr %140, align 1, !alias.scope !30, !noalias !33
  %143 = load <4 x i64>, ptr %139, align 1, !alias.scope !33, !noalias !30
  %144 = shufflevector <4 x i64> %143, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %145 = add <2 x i64> %144, %121
  %146 = shufflevector <2 x i64> %141, <2 x i64> %142, <2 x i32> <i32 0, i32 2>
  %147 = xor <2 x i64> %145, %146
  %148 = shufflevector <4 x i64> %143, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %149 = sub <2 x i64> %148, %121
  %150 = shufflevector <2 x i64> %141, <2 x i64> %142, <2 x i32> <i32 1, i32 3>
  %151 = xor <2 x i64> %149, %150
  %152 = zext <2 x i64> %147 to <2 x i128>
  %153 = zext <2 x i64> %151 to <2 x i128>
  %154 = mul nuw <2 x i128> %153, %152
  %155 = lshr <2 x i128> %154, splat (i128 64)
  %156 = xor <2 x i128> %155, %154
  %157 = trunc <2 x i128> %156 to <2 x i64>
  %158 = add <2 x i64> %135, %157
  %159 = icmp samesign ugt i64 %1, 96
  br i1 %159, label %160, label %182

160:                                              ; preds = %137
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %163 = getelementptr inbounds i8, ptr %90, i64 -64
  %164 = load <2 x i64>, ptr %161, align 1, !alias.scope !30, !noalias !33
  %165 = load <2 x i64>, ptr %163, align 1, !alias.scope !30, !noalias !33
  %166 = load <4 x i64>, ptr %162, align 1, !alias.scope !33, !noalias !30
  %167 = shufflevector <4 x i64> %166, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %168 = add <2 x i64> %167, %121
  %169 = shufflevector <2 x i64> %164, <2 x i64> %165, <2 x i32> <i32 0, i32 2>
  %170 = xor <2 x i64> %168, %169
  %171 = shufflevector <4 x i64> %166, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %172 = sub <2 x i64> %171, %121
  %173 = shufflevector <2 x i64> %164, <2 x i64> %165, <2 x i32> <i32 1, i32 3>
  %174 = xor <2 x i64> %172, %173
  %175 = zext <2 x i64> %170 to <2 x i128>
  %176 = zext <2 x i64> %174 to <2 x i128>
  %177 = mul nuw <2 x i128> %176, %175
  %178 = lshr <2 x i128> %177, splat (i128 64)
  %179 = xor <2 x i128> %178, %177
  %180 = trunc <2 x i128> %179 to <2 x i64>
  %181 = add <2 x i64> %158, %180
  br label %182

182:                                              ; preds = %71, %112, %137, %160
  %183 = phi <2 x i64> [ %181, %160 ], [ %158, %137 ], [ %135, %112 ], [ %111, %71 ]
  %184 = shufflevector <2 x i64> %183, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %185 = add <2 x i64> %184, %183
  %186 = extractelement <2 x i64> %185, i64 0
  %187 = lshr i64 %186, 37
  %188 = xor i64 %187, %186
  %189 = mul i64 %188, 1609587791953885689
  %190 = lshr i64 %189, 32
  %191 = xor i64 %190, %189
  br label %284

192:                                              ; preds = %69
  %193 = icmp ult i64 %1, 241
  br i1 %193, label %194, label %282

194:                                              ; preds = %192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %195 = mul i64 %1, -7046029288634856825
  %196 = trunc nuw nsw i64 %1 to i32
  %197 = load <16 x i64>, ptr %0, align 1, !alias.scope !35, !noalias !38
  %198 = load <16 x i64>, ptr %3, align 1, !alias.scope !38, !noalias !35
  %199 = shufflevector <16 x i64> %198, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %200 = insertelement <8 x i64> poison, i64 %2, i64 0
  %201 = shufflevector <8 x i64> %200, <8 x i64> poison, <8 x i32> zeroinitializer
  %202 = add <8 x i64> %199, %201
  %203 = shufflevector <16 x i64> %197, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %204 = xor <8 x i64> %202, %203
  %205 = shufflevector <16 x i64> %198, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %206 = sub <8 x i64> %205, %201
  %207 = shufflevector <16 x i64> %197, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %208 = xor <8 x i64> %206, %207
  %209 = zext <8 x i64> %204 to <8 x i128>
  %210 = zext <8 x i64> %208 to <8 x i128>
  %211 = mul nuw <8 x i128> %210, %209
  %212 = lshr <8 x i128> %211, splat (i128 64)
  %213 = xor <8 x i128> %212, %211
  %214 = trunc <8 x i128> %213 to <8 x i64>
  %215 = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %214)
  %216 = add i64 %215, %195
  %217 = lshr i32 %196, 4
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %219 = getelementptr inbounds i8, ptr %218, i64 -16
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %221 = load i64, ptr %219, align 1, !alias.scope !35, !noalias !38
  %222 = getelementptr i8, ptr %218, i64 -8
  %223 = load i64, ptr %222, align 1, !alias.scope !35, !noalias !38
  %224 = load i64, ptr %220, align 1, !alias.scope !38, !noalias !35
  %225 = getelementptr i8, ptr %3, i64 127
  %226 = load i64, ptr %225, align 1, !alias.scope !38, !noalias !35
  %227 = add i64 %224, %2
  %228 = xor i64 %227, %221
  %229 = sub i64 %226, %2
  %230 = xor i64 %229, %223
  %231 = zext i64 %228 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = lshr i64 %216, 37
  %238 = xor i64 %237, %216
  %239 = mul i64 %238, 1609587791953885689
  %240 = lshr i64 %239, 32
  %241 = xor i64 %240, %239
  %242 = icmp eq i32 %217, 8
  br i1 %242, label %273, label %243

243:                                              ; preds = %194
  %244 = zext nneg i32 %217 to i64
  br label %245

245:                                              ; preds = %245, %243
  %246 = phi i64 [ 8, %243 ], [ %271, %245 ]
  %247 = phi i64 [ %241, %243 ], [ %249, %245 ]
  %248 = phi i64 [ %236, %243 ], [ %270, %245 ]
  %249 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %247) #13, !srcloc !40
  %250 = shl nuw nsw i64 %246, 4
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 %250
  %252 = getelementptr i8, ptr %3, i64 %250
  %253 = getelementptr i8, ptr %252, i64 -125
  %254 = load i64, ptr %251, align 1, !alias.scope !35, !noalias !38
  %255 = getelementptr i8, ptr %251, i64 8
  %256 = load i64, ptr %255, align 1, !alias.scope !35, !noalias !38
  %257 = load i64, ptr %253, align 1, !alias.scope !38, !noalias !35
  %258 = getelementptr i8, ptr %252, i64 -117
  %259 = load i64, ptr %258, align 1, !alias.scope !38, !noalias !35
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
  %270 = add i64 %248, %269
  %271 = add nuw nsw i64 %246, 1
  %272 = icmp eq i64 %271, %244
  br i1 %272, label %273, label %245, !llvm.loop !41

273:                                              ; preds = %245, %194
  %274 = phi i64 [ %236, %194 ], [ %270, %245 ]
  %275 = phi i64 [ %241, %194 ], [ %249, %245 ]
  %276 = add i64 %275, %274
  %277 = lshr i64 %276, 37
  %278 = xor i64 %277, %276
  %279 = mul i64 %278, 1609587791953885689
  %280 = lshr i64 %279, 32
  %281 = xor i64 %280, %279
  br label %284

282:                                              ; preds = %192
  %283 = tail call i64 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #14, !callees !42
  br label %284

284:                                              ; preds = %54, %52, %48, %10, %282, %273, %182
  %285 = phi i64 [ %191, %182 ], [ %281, %273 ], [ %283, %282 ], [ %45, %10 ], [ %49, %48 ], [ %53, %52 ], [ %68, %54 ]
  ret i64 %285
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture readnone %3, i64 %4) #3 {
  %6 = alloca [192 x i8], align 32
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  br label %32

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #14
  call void @llvm.prefetch.p0(ptr nonnull %6, i32 0, i32 3, i32 1)
  %11 = sub i64 0, %2
  %12 = insertelement <4 x i64> poison, i64 %2, i64 0
  %13 = insertelement <4 x i64> %12, i64 %11, i64 1
  %14 = insertelement <4 x i64> %13, i64 %2, i64 2
  %15 = insertelement <4 x i64> %14, i64 %11, i64 3
  %16 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6) #13, !srcloc !28
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 31
  %19 = icmp eq i64 %18, 0
  call void @llvm.assume(i1 %19)
  %20 = add <4 x i64> %15, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %20, ptr %16, align 32
  %21 = add <4 x i64> %15, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store <4 x i64> %21, ptr %22, align 32
  %23 = add <4 x i64> %15, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 64
  store <4 x i64> %23, ptr %24, align 32
  %25 = add <4 x i64> %15, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %26 = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <4 x i64> %25, ptr %26, align 32
  %27 = add <4 x i64> %15, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %28 = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <4 x i64> %27, ptr %28, align 32
  %29 = add <4 x i64> %15, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %30 = getelementptr inbounds nuw i8, ptr %16, i64 160
  store <4 x i64> %29, ptr %30, align 32
  %31 = call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %6, i64 noundef 192)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #14
  br label %32

32:                                               ; preds = %8, %10
  %33 = phi i64 [ %9, %8 ], [ %31, %10 ]
  ret i64 %33
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #8 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ugt i64 %7, %8
  br i1 %12, label %75, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = load <4 x i64>, ptr %15, align 1, !alias.scope !48, !noalias !51
  %17 = getelementptr inbounds i8, ptr %14, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1, !alias.scope !48, !noalias !51
  br label %19

19:                                               ; preds = %56, %13
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %13 ], [ %72, %56 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %13 ], [ %64, %56 ]
  %22 = phi i64 [ 0, %13 ], [ %73, %56 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  br label %25

25:                                               ; preds = %25, %19
  %26 = phi <4 x i64> [ %20, %19 ], [ %53, %25 ]
  %27 = phi <4 x i64> [ %21, %19 ], [ %42, %25 ]
  %28 = phi i64 [ 0, %19 ], [ %54, %25 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %31, i32 0, i32 3, i32 1), !noalias !59
  %32 = shl i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %34 = load <4 x i64>, ptr %30, align 1, !alias.scope !65, !noalias !66
  %35 = load <4 x i64>, ptr %33, align 1, !alias.scope !69, !noalias !70
  %36 = xor <4 x i64> %35, %34
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, %37
  %40 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %41 = add <4 x i64> %27, %40
  %42 = add <4 x i64> %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %44 = load <4 x i64>, ptr %43, align 1, !alias.scope !65, !noalias !66
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %46 = load <4 x i64>, ptr %45, align 1, !alias.scope !69, !noalias !70
  %47 = xor <4 x i64> %46, %44
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %52 = add <4 x i64> %26, %51
  %53 = add <4 x i64> %52, %50
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %25, !llvm.loop !71

56:                                               ; preds = %25
  %57 = lshr <4 x i64> %42, splat (i64 47)
  %58 = xor <4 x i64> %16, %57
  %59 = xor <4 x i64> %58, %42
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %62, %63
  %65 = lshr <4 x i64> %53, splat (i64 47)
  %66 = xor <4 x i64> %18, %65
  %67 = xor <4 x i64> %66, %53
  %68 = lshr <4 x i64> %67, splat (i64 32)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, splat (i64 2654435761)
  %71 = mul <4 x i64> %68, splat (i64 -7046029290881679360)
  %72 = add <4 x i64> %70, %71
  %73 = add nuw i64 %22, 1
  %74 = icmp ult i64 %73, %9
  br i1 %74, label %19, label %75, !llvm.loop !72

75:                                               ; preds = %56, %4
  %76 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %72, %56 ]
  %77 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %64, %56 ]
  %78 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %78)
  %79 = mul i64 %9, %7
  %80 = lshr i64 %10, 6
  %81 = lshr i64 %3, 3
  %82 = icmp samesign ule i64 %80, %81
  tail call void @llvm.assume(i1 %82)
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %84 = icmp ult i64 %10, 64
  br i1 %84, label %116, label %85

85:                                               ; preds = %75, %85
  %86 = phi <4 x i64> [ %113, %85 ], [ %76, %75 ]
  %87 = phi <4 x i64> [ %102, %85 ], [ %77, %75 ]
  %88 = phi i64 [ %114, %85 ], [ 0, %75 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %91, i32 0, i32 3, i32 1), !noalias !78
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %94 = load <4 x i64>, ptr %90, align 1, !alias.scope !84, !noalias !85
  %95 = load <4 x i64>, ptr %93, align 1, !alias.scope !88, !noalias !89
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %87, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %104 = load <4 x i64>, ptr %103, align 1, !alias.scope !84, !noalias !85
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %106 = load <4 x i64>, ptr %105, align 1, !alias.scope !88, !noalias !89
  %107 = xor <4 x i64> %106, %104
  %108 = lshr <4 x i64> %107, splat (i64 32)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %86, %111
  %113 = add <4 x i64> %112, %110
  %114 = add nuw i64 %88, 1
  %115 = icmp eq i64 %114, %80
  br i1 %115, label %116, label %85, !llvm.loop !71

116:                                              ; preds = %85, %75
  %117 = phi <4 x i64> [ %76, %75 ], [ %113, %85 ]
  %118 = phi <4 x i64> [ %77, %75 ], [ %102, %85 ]
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %120 = getelementptr inbounds i8, ptr %119, i64 -64
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %122 = getelementptr inbounds i8, ptr %121, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %123 = load <4 x i64>, ptr %120, align 1, !alias.scope !95, !noalias !96
  %124 = load <4 x i64>, ptr %122, align 1, !alias.scope !98, !noalias !99
  %125 = xor <4 x i64> %124, %123
  %126 = lshr <4 x i64> %125, splat (i64 32)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %130 = add <4 x i64> %118, %129
  %131 = add <4 x i64> %130, %128
  %132 = getelementptr inbounds i8, ptr %119, i64 -32
  %133 = load <4 x i64>, ptr %132, align 1, !alias.scope !95, !noalias !96
  %134 = getelementptr inbounds i8, ptr %121, i64 -39
  %135 = load <4 x i64>, ptr %134, align 1, !alias.scope !98, !noalias !99
  %136 = xor <4 x i64> %135, %133
  %137 = lshr <4 x i64> %136, splat (i64 32)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %133, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = add <4 x i64> %117, %140
  %142 = add <4 x i64> %141, %139
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %144 = mul i64 %1, -7046029288634856825
  %145 = load <8 x i64>, ptr %143, align 1, !alias.scope !100, !noalias !103
  %146 = shufflevector <8 x i64> %145, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %147 = shufflevector <4 x i64> %131, <4 x i64> %142, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %148 = xor <4 x i64> %146, %147
  %149 = shufflevector <8 x i64> %145, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %150 = shufflevector <4 x i64> %131, <4 x i64> %142, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %151 = xor <4 x i64> %149, %150
  %152 = zext <4 x i64> %148 to <4 x i128>
  %153 = zext <4 x i64> %151 to <4 x i128>
  %154 = mul nuw <4 x i128> %153, %152
  %155 = lshr <4 x i128> %154, splat (i128 64)
  %156 = xor <4 x i128> %155, %154
  %157 = trunc <4 x i128> %156 to <4 x i64>
  %158 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %157)
  %159 = add i64 %158, %144
  %160 = lshr i64 %159, 37
  %161 = xor i64 %160, %159
  %162 = mul i64 %161, 1609587791953885689
  %163 = lshr i64 %162, 32
  %164 = xor i64 %163, %162
  ret i64 %164
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias nocapture noundef readonly %3, i64 noundef %4) #10 {
  %6 = tail call fastcc i64 @XXH3_hashLong_64b_internal(ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) unnamed_addr #8 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = lshr i64 %4, 10
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 128
  %9 = load <4 x i64>, ptr %8, align 1, !alias.scope !110, !noalias !113
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %11 = load <4 x i64>, ptr %10, align 1, !alias.scope !110, !noalias !113
  br label %12

12:                                               ; preds = %49, %6
  %13 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %65, %49 ]
  %14 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %57, %49 ]
  %15 = phi i64 [ 0, %6 ], [ %66, %49 ]
  %16 = shl i64 %15, 10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  br label %18

18:                                               ; preds = %18, %12
  %19 = phi <4 x i64> [ %13, %12 ], [ %46, %18 ]
  %20 = phi <4 x i64> [ %14, %12 ], [ %35, %18 ]
  %21 = phi i64 [ 0, %12 ], [ %47, %18 ]
  %22 = shl i64 %21, 6
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1), !noalias !121
  %25 = shl i64 %21, 3
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %27 = load <4 x i64>, ptr %23, align 1, !alias.scope !127, !noalias !128
  %28 = load <4 x i64>, ptr %26, align 1, !alias.scope !131, !noalias !132
  %29 = xor <4 x i64> %28, %27
  %30 = lshr <4 x i64> %29, splat (i64 32)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = shufflevector <4 x i64> %27, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %34 = add <4 x i64> %20, %33
  %35 = add <4 x i64> %34, %32
  %36 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %37 = load <4 x i64>, ptr %36, align 1, !alias.scope !127, !noalias !128
  %38 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %39 = load <4 x i64>, ptr %38, align 1, !alias.scope !131, !noalias !132
  %40 = xor <4 x i64> %39, %37
  %41 = lshr <4 x i64> %40, splat (i64 32)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %37, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %19, %44
  %46 = add <4 x i64> %45, %43
  %47 = add nuw nsw i64 %21, 1
  %48 = icmp eq i64 %47, 16
  br i1 %48, label %49, label %18, !llvm.loop !71

49:                                               ; preds = %18
  %50 = lshr <4 x i64> %35, splat (i64 47)
  %51 = xor <4 x i64> %9, %50
  %52 = xor <4 x i64> %51, %35
  %53 = lshr <4 x i64> %52, splat (i64 32)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, splat (i64 2654435761)
  %56 = mul <4 x i64> %53, splat (i64 -7046029290881679360)
  %57 = add <4 x i64> %55, %56
  %58 = lshr <4 x i64> %46, splat (i64 47)
  %59 = xor <4 x i64> %11, %58
  %60 = xor <4 x i64> %59, %46
  %61 = lshr <4 x i64> %60, splat (i64 32)
  %62 = and <4 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, splat (i64 2654435761)
  %64 = mul <4 x i64> %61, splat (i64 -7046029290881679360)
  %65 = add <4 x i64> %63, %64
  %66 = add nuw nsw i64 %15, 1
  %67 = icmp eq i64 %66, %7
  br i1 %67, label %68, label %12, !llvm.loop !72

68:                                               ; preds = %49, %3
  %69 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %3 ], [ %65, %49 ]
  %70 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %3 ], [ %57, %49 ]
  %71 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %71)
  %72 = and i64 %4, -1024
  %73 = and i64 %4, 1023
  %74 = lshr i64 %73, 6
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 %72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %76 = icmp samesign ult i64 %73, 64
  br i1 %76, label %108, label %77

77:                                               ; preds = %68, %77
  %78 = phi <4 x i64> [ %105, %77 ], [ %69, %68 ]
  %79 = phi <4 x i64> [ %94, %77 ], [ %70, %68 ]
  %80 = phi i64 [ %106, %77 ], [ 0, %68 ]
  %81 = shl i64 %80, 6
  %82 = getelementptr inbounds nuw i8, ptr %75, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %83, i32 0, i32 3, i32 1), !noalias !138
  %84 = shl i64 %80, 3
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %86 = load <4 x i64>, ptr %82, align 1, !alias.scope !144, !noalias !145
  %87 = load <4 x i64>, ptr %85, align 1, !alias.scope !148, !noalias !149
  %88 = xor <4 x i64> %87, %86
  %89 = lshr <4 x i64> %88, splat (i64 32)
  %90 = and <4 x i64> %88, splat (i64 4294967295)
  %91 = mul nuw <4 x i64> %90, %89
  %92 = shufflevector <4 x i64> %86, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %93 = add <4 x i64> %79, %92
  %94 = add <4 x i64> %93, %91
  %95 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %96 = load <4 x i64>, ptr %95, align 1, !alias.scope !144, !noalias !145
  %97 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %98 = load <4 x i64>, ptr %97, align 1, !alias.scope !148, !noalias !149
  %99 = xor <4 x i64> %98, %96
  %100 = lshr <4 x i64> %99, splat (i64 32)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = shufflevector <4 x i64> %96, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %104 = add <4 x i64> %78, %103
  %105 = add <4 x i64> %104, %102
  %106 = add nuw nsw i64 %80, 1
  %107 = icmp eq i64 %106, %74
  br i1 %107, label %108, label %77, !llvm.loop !71

108:                                              ; preds = %77, %68
  %109 = phi <4 x i64> [ %69, %68 ], [ %105, %77 ]
  %110 = phi <4 x i64> [ %70, %68 ], [ %94, %77 ]
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %112 = getelementptr inbounds i8, ptr %111, i64 -64
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %114 = load <4 x i64>, ptr %112, align 1, !alias.scope !155, !noalias !156
  %115 = load <4 x i64>, ptr %113, align 1
  %116 = xor <4 x i64> %115, %114
  %117 = lshr <4 x i64> %116, splat (i64 32)
  %118 = and <4 x i64> %116, splat (i64 4294967295)
  %119 = mul nuw <4 x i64> %118, %117
  %120 = shufflevector <4 x i64> %114, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %121 = add <4 x i64> %110, %120
  %122 = add <4 x i64> %121, %119
  %123 = getelementptr inbounds i8, ptr %111, i64 -32
  %124 = load <4 x i64>, ptr %123, align 1, !alias.scope !155, !noalias !156
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 153
  %126 = load <4 x i64>, ptr %125, align 1, !alias.scope !158, !noalias !159
  %127 = xor <4 x i64> %126, %124
  %128 = lshr <4 x i64> %127, splat (i64 32)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = shufflevector <4 x i64> %124, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %132 = add <4 x i64> %109, %131
  %133 = add <4 x i64> %132, %130
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %135 = mul i64 %1, -7046029288634856825
  %136 = extractelement <4 x i64> %122, i64 0
  %137 = extractelement <4 x i64> %122, i64 1
  %138 = load i64, ptr %134, align 1, !alias.scope !160, !noalias !163
  %139 = getelementptr i8, ptr %2, i64 19
  %140 = load i64, ptr %139, align 1, !alias.scope !160, !noalias !163
  %141 = xor i64 %138, %136
  %142 = xor i64 %140, %137
  %143 = zext i64 %141 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %135, %148
  %150 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %151 = extractelement <4 x i64> %122, i64 2
  %152 = extractelement <4 x i64> %122, i64 3
  %153 = load i64, ptr %150, align 1, !alias.scope !160, !noalias !163
  %154 = getelementptr i8, ptr %2, i64 35
  %155 = load i64, ptr %154, align 1, !alias.scope !160, !noalias !163
  %156 = xor i64 %153, %151
  %157 = xor i64 %155, %152
  %158 = zext i64 %156 to i128
  %159 = zext i64 %157 to i128
  %160 = mul nuw i128 %159, %158
  %161 = lshr i128 %160, 64
  %162 = xor i128 %161, %160
  %163 = trunc i128 %162 to i64
  %164 = add i64 %149, %163
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %166 = extractelement <4 x i64> %133, i64 0
  %167 = extractelement <4 x i64> %133, i64 1
  %168 = load i64, ptr %165, align 1, !alias.scope !160, !noalias !163
  %169 = getelementptr i8, ptr %2, i64 51
  %170 = load i64, ptr %169, align 1, !alias.scope !160, !noalias !163
  %171 = xor i64 %168, %166
  %172 = xor i64 %170, %167
  %173 = zext i64 %171 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %164, %178
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %181 = extractelement <4 x i64> %133, i64 2
  %182 = extractelement <4 x i64> %133, i64 3
  %183 = load i64, ptr %180, align 1, !alias.scope !160, !noalias !163
  %184 = getelementptr i8, ptr %2, i64 67
  %185 = load i64, ptr %184, align 1, !alias.scope !160, !noalias !163
  %186 = xor i64 %183, %181
  %187 = xor i64 %185, %182
  %188 = zext i64 %186 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %179, %193
  %195 = lshr i64 %194, 37
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, 1609587791953885689
  %198 = lshr i64 %197, 32
  %199 = xor i64 %198, %197
  %200 = getelementptr inbounds nuw i8, ptr %2, i64 117
  %201 = mul i64 %1, -4417276706812531889
  %202 = xor i64 %201, -1
  %203 = load i64, ptr %200, align 1, !alias.scope !165, !noalias !168
  %204 = bitcast <4 x i64> %115 to i256
  %205 = lshr i256 %204, 32
  %206 = trunc i256 %205 to i64
  %207 = xor i64 %203, %136
  %208 = xor i64 %137, %206
  %209 = zext i64 %207 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %214, %202
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 133
  %217 = load i64, ptr %216, align 1, !alias.scope !165, !noalias !168
  %218 = getelementptr i8, ptr %2, i64 141
  %219 = load i64, ptr %218, align 1, !alias.scope !165, !noalias !168
  %220 = xor i64 %217, %151
  %221 = xor i64 %219, %152
  %222 = zext i64 %220 to i128
  %223 = zext i64 %221 to i128
  %224 = mul nuw i128 %223, %222
  %225 = lshr i128 %224, 64
  %226 = xor i128 %225, %224
  %227 = trunc i128 %226 to i64
  %228 = add i64 %215, %227
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 149
  %230 = load i64, ptr %229, align 1, !alias.scope !165, !noalias !168
  %231 = getelementptr i8, ptr %2, i64 157
  %232 = load i64, ptr %231, align 1, !alias.scope !165, !noalias !168
  %233 = xor i64 %230, %166
  %234 = xor i64 %232, %167
  %235 = zext i64 %233 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %228, %240
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 165
  %243 = load i64, ptr %242, align 1, !alias.scope !165, !noalias !168
  %244 = getelementptr i8, ptr %2, i64 173
  %245 = load i64, ptr %244, align 1, !alias.scope !165, !noalias !168
  %246 = xor i64 %243, %181
  %247 = xor i64 %245, %182
  %248 = zext i64 %246 to i128
  %249 = zext i64 %247 to i128
  %250 = mul nuw i128 %249, %248
  %251 = lshr i128 %250, 64
  %252 = xor i128 %251, %250
  %253 = trunc i128 %252 to i64
  %254 = add i64 %241, %253
  %255 = lshr i64 %254, 37
  %256 = xor i64 %255, %254
  %257 = mul i64 %256, 1609587791953885689
  %258 = lshr i64 %257, 32
  %259 = xor i64 %258, %257
  %260 = insertvalue { i64, i64 } poison, i64 %199, 0
  %261 = insertvalue { i64, i64 } %260, i64 %259, 1
  ret { i64, i64 } %261
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #11

attributes #0 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148125531}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !7}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_len_17to128_128b: argument 0"}
!20 = distinct !{!20, !"XXH3_len_17to128_128b"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_len_129to240_128b: argument 0"}
!23 = distinct !{!23, !"XXH3_len_129to240_128b"}
!24 = distinct !{!24, !7}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!27 = distinct !{!27, !"XXH3_hashLong_128b_withSeed_internal"}
!28 = !{i64 2152111048}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_len_17to128_64b: argument 0"}
!32 = distinct !{!32, !"XXH3_len_17to128_64b"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"XXH3_len_17to128_64b: argument 1"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_len_129to240_64b: argument 0"}
!37 = distinct !{!37, !"XXH3_len_129to240_64b"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"XXH3_len_129to240_64b: argument 1"}
!40 = !{i64 2152108620}
!41 = distinct !{!41, !7}
!42 = !{ptr @XXH3_hashLong_64b_withSecret, ptr @XXH3_hashLong_64b_withSeed}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_hashLong_internal_loop: argument 1"}
!45 = distinct !{!45, !"XXH3_hashLong_internal_loop"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"XXH3_hashLong_internal_loop: argument 2"}
!48 = !{!49, !47}
!49 = distinct !{!49, !50, !"XXH3_scrambleAcc_avx2: argument 1"}
!50 = distinct !{!50, !"XXH3_scrambleAcc_avx2"}
!51 = !{!52, !53, !44}
!52 = distinct !{!52, !50, !"XXH3_scrambleAcc_avx2: argument 0"}
!53 = distinct !{!53, !45, !"XXH3_hashLong_internal_loop: argument 0"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate_avx2: argument 1"}
!56 = distinct !{!56, !"XXH3_accumulate_avx2"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_accumulate_avx2: argument 2"}
!59 = !{!58, !47}
!60 = !{!61}
!61 = distinct !{!61, !62, !"XXH3_accumulate_512_avx2: argument 1"}
!62 = distinct !{!62, !"XXH3_accumulate_512_avx2"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"XXH3_accumulate_512_avx2: argument 2"}
!65 = !{!61, !55, !44}
!66 = !{!67, !64, !68, !58, !53, !47}
!67 = distinct !{!67, !62, !"XXH3_accumulate_512_avx2: argument 0"}
!68 = distinct !{!68, !56, !"XXH3_accumulate_avx2: argument 0"}
!69 = !{!64, !58, !47}
!70 = !{!67, !61, !68, !55, !53, !44}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_accumulate_avx2: argument 1"}
!75 = distinct !{!75, !"XXH3_accumulate_avx2"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"XXH3_accumulate_avx2: argument 2"}
!78 = !{!77, !47}
!79 = !{!80}
!80 = distinct !{!80, !81, !"XXH3_accumulate_512_avx2: argument 1"}
!81 = distinct !{!81, !"XXH3_accumulate_512_avx2"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"XXH3_accumulate_512_avx2: argument 2"}
!84 = !{!80, !74, !44}
!85 = !{!86, !83, !87, !77, !53, !47}
!86 = distinct !{!86, !81, !"XXH3_accumulate_512_avx2: argument 0"}
!87 = distinct !{!87, !75, !"XXH3_accumulate_avx2: argument 0"}
!88 = !{!83, !77, !47}
!89 = !{!86, !80, !87, !74, !53, !44}
!90 = !{!91}
!91 = distinct !{!91, !92, !"XXH3_accumulate_512_avx2: argument 1"}
!92 = distinct !{!92, !"XXH3_accumulate_512_avx2"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"XXH3_accumulate_512_avx2: argument 2"}
!95 = !{!91, !44}
!96 = !{!97, !94, !53, !47}
!97 = distinct !{!97, !92, !"XXH3_accumulate_512_avx2: argument 0"}
!98 = !{!94, !47}
!99 = !{!97, !91, !53, !44}
!100 = !{!101}
!101 = distinct !{!101, !102, !"XXH3_mergeAccs: argument 1"}
!102 = distinct !{!102, !"XXH3_mergeAccs"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"XXH3_mergeAccs: argument 0"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"XXH3_hashLong_internal_loop: argument 1"}
!107 = distinct !{!107, !"XXH3_hashLong_internal_loop"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"XXH3_hashLong_internal_loop: argument 2"}
!110 = !{!111, !109}
!111 = distinct !{!111, !112, !"XXH3_scrambleAcc_avx2: argument 1"}
!112 = distinct !{!112, !"XXH3_scrambleAcc_avx2"}
!113 = !{!114, !115, !106}
!114 = distinct !{!114, !112, !"XXH3_scrambleAcc_avx2: argument 0"}
!115 = distinct !{!115, !107, !"XXH3_hashLong_internal_loop: argument 0"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"XXH3_accumulate_avx2: argument 1"}
!118 = distinct !{!118, !"XXH3_accumulate_avx2"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"XXH3_accumulate_avx2: argument 2"}
!121 = !{!120, !109}
!122 = !{!123}
!123 = distinct !{!123, !124, !"XXH3_accumulate_512_avx2: argument 1"}
!124 = distinct !{!124, !"XXH3_accumulate_512_avx2"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"XXH3_accumulate_512_avx2: argument 2"}
!127 = !{!123, !117, !106}
!128 = !{!129, !126, !130, !120, !115, !109}
!129 = distinct !{!129, !124, !"XXH3_accumulate_512_avx2: argument 0"}
!130 = distinct !{!130, !118, !"XXH3_accumulate_avx2: argument 0"}
!131 = !{!126, !120, !109}
!132 = !{!129, !123, !130, !117, !115, !106}
!133 = !{!134}
!134 = distinct !{!134, !135, !"XXH3_accumulate_avx2: argument 1"}
!135 = distinct !{!135, !"XXH3_accumulate_avx2"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"XXH3_accumulate_avx2: argument 2"}
!138 = !{!137, !109}
!139 = !{!140}
!140 = distinct !{!140, !141, !"XXH3_accumulate_512_avx2: argument 1"}
!141 = distinct !{!141, !"XXH3_accumulate_512_avx2"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"XXH3_accumulate_512_avx2: argument 2"}
!144 = !{!140, !134, !106}
!145 = !{!146, !143, !147, !137, !115, !109}
!146 = distinct !{!146, !141, !"XXH3_accumulate_512_avx2: argument 0"}
!147 = distinct !{!147, !135, !"XXH3_accumulate_avx2: argument 0"}
!148 = !{!143, !137, !109}
!149 = !{!146, !140, !147, !134, !115, !106}
!150 = !{!151}
!151 = distinct !{!151, !152, !"XXH3_accumulate_512_avx2: argument 1"}
!152 = distinct !{!152, !"XXH3_accumulate_512_avx2"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"XXH3_accumulate_512_avx2: argument 2"}
!155 = !{!151, !106}
!156 = !{!157, !154, !115, !109}
!157 = distinct !{!157, !152, !"XXH3_accumulate_512_avx2: argument 0"}
!158 = !{!154, !109}
!159 = !{!157, !151, !115, !106}
!160 = !{!161}
!161 = distinct !{!161, !162, !"XXH3_mergeAccs: argument 1"}
!162 = distinct !{!162, !"XXH3_mergeAccs"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"XXH3_mergeAccs: argument 0"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"XXH3_mergeAccs: argument 1"}
!167 = distinct !{!167, !"XXH3_mergeAccs"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"XXH3_mergeAccs: argument 0"}
