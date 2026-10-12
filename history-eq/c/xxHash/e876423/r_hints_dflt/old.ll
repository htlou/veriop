; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_o64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_o64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh64_len0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 2870177450012600261
  %4 = lshr i64 %3, 33
  %5 = xor i64 %4, %3
  %6 = mul i64 %5, -4417276706812531889
  %7 = lshr i64 %6, 29
  %8 = xor i64 %7, %6
  %9 = mul i64 %8, 1609587929392839161
  %10 = lshr i64 %9, 32
  %11 = xor i64 %10, %9
  ret i64 %11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH64(ptr noundef readonly %0, i64 noundef range(i64 0, 101) %1, i64 noundef %2) unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 31
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
  br i1 %43, label %13, label %44

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
  br i1 %110, label %111, label %94

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
  br i1 %160, label %119, label %161

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
  br i1 %198, label %199, label %184

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
  br i1 %266, label %267, label %205

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_len7(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = add i64 %1, 2870177450012600268
  %5 = load i32, ptr %0, align 1
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 23)
  %11 = mul i64 %10, -4417276706812531889
  %12 = add i64 %11, 1609587929392839161
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %14 = load i8, ptr %9, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %16, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %21 = load i8, ptr %13, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %23, %19
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 11)
  %26 = mul i64 %25, -7046029288634856825
  %27 = load i8, ptr %20, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %29, %26
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 11)
  %32 = mul i64 %31, -7046029288634856825
  %33 = lshr i64 %32, 33
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, -4417276706812531889
  %36 = lshr i64 %35, 29
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  ret i64 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_len31(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = load i64, ptr %0, align 1
  %10 = load i32, ptr %4, align 1
  %11 = getelementptr i8, ptr %0, i64 30
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = getelementptr i8, ptr %0, i64 29
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = getelementptr i8, ptr %0, i64 28
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i64
  %22 = mul i64 %21, 2870177450012600261
  %23 = zext i32 %10 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %6, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = mul i64 %8, -4417276706812531889
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = mul i64 %9, -4417276706812531889
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = add i64 %1, 2870177450012600292
  %35 = xor i64 %33, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 27)
  %37 = mul i64 %36, -7046029288634856825
  %38 = add i64 %37, -8796714831421723037
  %39 = xor i64 %30, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 27)
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = xor i64 %27, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 27)
  %45 = mul i64 %44, -7046029288634856825
  %46 = add i64 %45, -8796714831421723037
  %47 = xor i64 %24, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 23)
  %49 = mul i64 %48, -4417276706812531889
  %50 = add i64 %49, 1609587929392839161
  %51 = xor i64 %22, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 11)
  %53 = mul i64 %52, -7046029288634856825
  %54 = xor i64 %18, %53
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 11)
  %56 = mul i64 %55, -7046029288634856825
  %57 = xor i64 %14, %56
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 11)
  %59 = mul i64 %58, -7046029288634856825
  %60 = lshr i64 %59, 33
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, -4417276706812531889
  %63 = lshr i64 %62, 29
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  ret i64 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len32(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i64 @XXH_INLINE_XXH64(ptr noundef %0, i64 noundef 32, i64 noundef %1) #11
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len63(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i64 @XXH_INLINE_XXH64(ptr noundef %0, i64 noundef 63, i64 noundef %1) #11
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i64 @XXH_INLINE_XXH64(ptr noundef %0, i64 noundef 64, i64 noundef %1) #11
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len100(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i64 @XXH_INLINE_XXH64(ptr noundef %0, i64 noundef 100, i64 noundef %1) #11
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @target_s64_10_30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %5, align 8
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %8, align 8
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %9, ptr %10, align 8
  call fastcc void @XXH_INLINE_XXH64_update(ptr noundef %3, ptr noundef %0, i64 noundef 10)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call fastcc void @XXH_INLINE_XXH64_update(ptr noundef %3, ptr noundef nonnull %11, i64 noundef 30)
  %12 = call fastcc i64 @XXH_INLINE_XXH64_digest(ptr noundef %3) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #12
  ret i64 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #5

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @XXH_INLINE_XXH64_update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 10, 41) %2) unnamed_addr #6 {
  %4 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %6 = load i64, ptr %0, align 8
  %7 = add i64 %6, %2
  store i64 %7, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %2, %10
  %12 = icmp samesign ult i64 %11, 32
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %16 = trunc nuw nsw i64 %2 to i32
  %17 = load i32, ptr %8, align 8
  %18 = add i32 %17, %16
  br label %115

19:                                               ; preds = %3
  %20 = icmp eq i32 %9, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 %10
  %24 = sub i32 32, %9
  %25 = zext i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull readonly align 1 %1, i64 %25, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = load i64, ptr %22, align 1
  %29 = mul i64 %28, -4417276706812531889
  %30 = add i64 %29, %27
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  store i64 %32, ptr %26, align 8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %36 = load i64, ptr %35, align 1
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %34
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  store i64 %40, ptr %33, align 8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %44 = load i64, ptr %43, align 1
  %45 = mul i64 %44, -4417276706812531889
  %46 = add i64 %45, %42
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  store i64 %48, ptr %41, align 8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = mul i64 %52, -4417276706812531889
  %54 = add i64 %53, %50
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  store i64 %56, ptr %49, align 8
  %57 = load i32, ptr %8, align 8
  %58 = sub i32 32, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 %59
  store i32 0, ptr %8, align 8
  br label %61

61:                                               ; preds = %21, %19
  %62 = phi ptr [ %60, %21 ], [ %1, %19 ]
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %64 = icmp ugt ptr %63, %5
  br i1 %64, label %106, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %5, i64 -32
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %71 = load i64, ptr %67, align 8
  %72 = load i64, ptr %68, align 8
  %73 = load i64, ptr %69, align 8
  %74 = load i64, ptr %70, align 8
  br label %75

75:                                               ; preds = %75, %65
  %76 = phi i64 [ %74, %65 ], [ %103, %75 ]
  %77 = phi i64 [ %73, %65 ], [ %97, %75 ]
  %78 = phi i64 [ %72, %65 ], [ %91, %75 ]
  %79 = phi i64 [ %71, %65 ], [ %85, %75 ]
  %80 = phi ptr [ %62, %65 ], [ %104, %75 ]
  %81 = load i64, ptr %80, align 1
  %82 = mul i64 %81, -4417276706812531889
  %83 = add i64 %82, %79
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 31)
  %85 = mul i64 %84, -7046029288634856825
  store i64 %85, ptr %67, align 8
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %87 = load i64, ptr %86, align 1
  %88 = mul i64 %87, -4417276706812531889
  %89 = add i64 %88, %78
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 31)
  %91 = mul i64 %90, -7046029288634856825
  store i64 %91, ptr %68, align 8
  %92 = getelementptr inbounds nuw i8, ptr %80, i64 16
  %93 = load i64, ptr %92, align 1
  %94 = mul i64 %93, -4417276706812531889
  %95 = add i64 %94, %77
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  store i64 %97, ptr %69, align 8
  %98 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %99 = load i64, ptr %98, align 1
  %100 = mul i64 %99, -4417276706812531889
  %101 = add i64 %100, %76
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 31)
  %103 = mul i64 %102, -7046029288634856825
  store i64 %103, ptr %70, align 8
  %104 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %105 = icmp ugt ptr %104, %66
  br i1 %105, label %106, label %75

106:                                              ; preds = %75, %61
  %107 = phi ptr [ %62, %61 ], [ %104, %75 ]
  %108 = icmp ult ptr %107, %5
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %111 = ptrtoint ptr %5 to i64
  %112 = ptrtoint ptr %107 to i64
  %113 = sub i64 %111, %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %110, ptr nonnull readonly align 1 %107, i64 %113, i1 false)
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %13, %109
  %116 = phi i32 [ %114, %109 ], [ %18, %13 ]
  store i32 %116, ptr %8, align 8
  br label %117

117:                                              ; preds = %115, %106
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH64_digest(ptr noundef nonnull readonly %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 18)
  %19 = add i64 %15, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %9, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %13, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %17, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  br label %48

44:                                               ; preds = %1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  %53 = icmp samesign ugt i64 %52, 7
  br i1 %53, label %54, label %128

54:                                               ; preds = %48
  %55 = add nsw i64 %52, -8
  %56 = lshr i64 %55, 3
  %57 = add nuw nsw i64 %56, 1
  %58 = and i64 %57, 3
  %59 = and i64 %55, 24
  %60 = icmp eq i64 %59, 24
  br i1 %60, label %78, label %61

61:                                               ; preds = %54, %61
  %62 = phi i64 [ %74, %61 ], [ %50, %54 ]
  %63 = phi ptr [ %70, %61 ], [ %51, %54 ]
  %64 = phi i64 [ %75, %61 ], [ %52, %54 ]
  %65 = phi i64 [ %76, %61 ], [ 0, %54 ]
  %66 = load i64, ptr %63, align 1
  %67 = mul i64 %66, -4417276706812531889
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %71 = xor i64 %69, %62
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 27)
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = add nsw i64 %64, -8
  %76 = add i64 %65, 1
  %77 = icmp eq i64 %76, %58
  br i1 %77, label %78, label %61

78:                                               ; preds = %61, %54
  %79 = phi i64 [ %50, %54 ], [ %74, %61 ]
  %80 = phi ptr [ %51, %54 ], [ %70, %61 ]
  %81 = phi i64 [ %52, %54 ], [ %75, %61 ]
  %82 = phi ptr [ poison, %54 ], [ %70, %61 ]
  %83 = phi i64 [ poison, %54 ], [ %74, %61 ]
  %84 = phi i64 [ poison, %54 ], [ %75, %61 ]
  %85 = icmp ult i64 %55, 24
  br i1 %85, label %128, label %86

86:                                               ; preds = %78, %86
  %87 = phi i64 [ %125, %86 ], [ %79, %78 ]
  %88 = phi ptr [ %121, %86 ], [ %80, %78 ]
  %89 = phi i64 [ %126, %86 ], [ %81, %78 ]
  %90 = load i64, ptr %88, align 1
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %95 = xor i64 %93, %87
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = load i64, ptr %94, align 1
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %104 = xor i64 %102, %98
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 27)
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  %108 = load i64, ptr %103, align 1
  %109 = mul i64 %108, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %113 = xor i64 %111, %107
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 27)
  %115 = mul i64 %114, -7046029288634856825
  %116 = add i64 %115, -8796714831421723037
  %117 = load i64, ptr %112, align 1
  %118 = mul i64 %117, -4417276706812531889
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 31)
  %120 = mul i64 %119, -7046029288634856825
  %121 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %122 = xor i64 %120, %116
  %123 = tail call i64 @llvm.fshl.i64(i64 %122, i64 %122, i64 27)
  %124 = mul i64 %123, -7046029288634856825
  %125 = add i64 %124, -8796714831421723037
  %126 = add nsw i64 %89, -32
  %127 = icmp ugt i64 %126, 7
  br i1 %127, label %86, label %128

128:                                              ; preds = %78, %86, %48
  %129 = phi i64 [ %52, %48 ], [ %84, %78 ], [ %126, %86 ]
  %130 = phi ptr [ %51, %48 ], [ %82, %78 ], [ %121, %86 ]
  %131 = phi i64 [ %50, %48 ], [ %83, %78 ], [ %125, %86 ]
  %132 = icmp samesign ugt i64 %129, 3
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, ptr %130, align 1
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, -7046029288634856825
  %137 = xor i64 %136, %131
  %138 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %139 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 23)
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, 1609587929392839161
  %142 = add nsw i64 %129, -4
  br label %143

143:                                              ; preds = %133, %128
  %144 = phi i64 [ %142, %133 ], [ %129, %128 ]
  %145 = phi ptr [ %138, %133 ], [ %130, %128 ]
  %146 = phi i64 [ %141, %133 ], [ %131, %128 ]
  %147 = icmp eq i64 %144, 0
  br i1 %147, label %234, label %148

148:                                              ; preds = %143
  %149 = and i64 %144, 7
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %148, %151
  %152 = phi i64 [ %162, %151 ], [ %146, %148 ]
  %153 = phi ptr [ %156, %151 ], [ %145, %148 ]
  %154 = phi i64 [ %163, %151 ], [ %144, %148 ]
  %155 = phi i64 [ %164, %151 ], [ 0, %148 ]
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 1
  %157 = load i8, ptr %153, align 1
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %152
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = add nsw i64 %154, -1
  %164 = add i64 %155, 1
  %165 = icmp eq i64 %164, %149
  br i1 %165, label %166, label %151

166:                                              ; preds = %151, %148
  %167 = phi i64 [ poison, %148 ], [ %162, %151 ]
  %168 = phi i64 [ %146, %148 ], [ %162, %151 ]
  %169 = phi ptr [ %145, %148 ], [ %156, %151 ]
  %170 = phi i64 [ %144, %148 ], [ %163, %151 ]
  %171 = icmp ult i64 %144, 8
  br i1 %171, label %234, label %172

172:                                              ; preds = %166, %172
  %173 = phi i64 [ %231, %172 ], [ %168, %166 ]
  %174 = phi ptr [ %225, %172 ], [ %169, %166 ]
  %175 = phi i64 [ %232, %172 ], [ %170, %166 ]
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %177 = load i8, ptr %174, align 1
  %178 = zext i8 %177 to i64
  %179 = mul i64 %178, 2870177450012600261
  %180 = xor i64 %179, %173
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 11)
  %182 = mul i64 %181, -7046029288634856825
  %183 = getelementptr inbounds nuw i8, ptr %174, i64 2
  %184 = load i8, ptr %176, align 1
  %185 = zext i8 %184 to i64
  %186 = mul i64 %185, 2870177450012600261
  %187 = xor i64 %186, %182
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 11)
  %189 = mul i64 %188, -7046029288634856825
  %190 = getelementptr inbounds nuw i8, ptr %174, i64 3
  %191 = load i8, ptr %183, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %189
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %198 = load i8, ptr %190, align 1
  %199 = zext i8 %198 to i64
  %200 = mul i64 %199, 2870177450012600261
  %201 = xor i64 %200, %196
  %202 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 11)
  %203 = mul i64 %202, -7046029288634856825
  %204 = getelementptr inbounds nuw i8, ptr %174, i64 5
  %205 = load i8, ptr %197, align 1
  %206 = zext i8 %205 to i64
  %207 = mul i64 %206, 2870177450012600261
  %208 = xor i64 %207, %203
  %209 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 11)
  %210 = mul i64 %209, -7046029288634856825
  %211 = getelementptr inbounds nuw i8, ptr %174, i64 6
  %212 = load i8, ptr %204, align 1
  %213 = zext i8 %212 to i64
  %214 = mul i64 %213, 2870177450012600261
  %215 = xor i64 %214, %210
  %216 = tail call i64 @llvm.fshl.i64(i64 %215, i64 %215, i64 11)
  %217 = mul i64 %216, -7046029288634856825
  %218 = getelementptr inbounds nuw i8, ptr %174, i64 7
  %219 = load i8, ptr %211, align 1
  %220 = zext i8 %219 to i64
  %221 = mul i64 %220, 2870177450012600261
  %222 = xor i64 %221, %217
  %223 = tail call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 11)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %174, i64 8
  %226 = load i8, ptr %218, align 1
  %227 = zext i8 %226 to i64
  %228 = mul i64 %227, 2870177450012600261
  %229 = xor i64 %228, %224
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 11)
  %231 = mul i64 %230, -7046029288634856825
  %232 = add nsw i64 %175, -8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %172

234:                                              ; preds = %166, %172, %143
  %235 = phi i64 [ %146, %143 ], [ %167, %166 ], [ %231, %172 ]
  %236 = lshr i64 %235, 33
  %237 = xor i64 %236, %235
  %238 = mul i64 %237, -4417276706812531889
  %239 = lshr i64 %238, 29
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587929392839161
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  ret i64 %243
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @target_s64_40_23(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %5, align 8
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %8, align 8
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %9, ptr %10, align 8
  call fastcc void @XXH_INLINE_XXH64_update(ptr noundef %3, ptr noundef %0, i64 noundef 40)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call fastcc void @XXH_INLINE_XXH64_update(ptr noundef %3, ptr noundef nonnull %11, i64 noundef 23)
  %12 = call fastcc i64 @XXH_INLINE_XXH64_digest(ptr noundef %3) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #12
  ret i64 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
