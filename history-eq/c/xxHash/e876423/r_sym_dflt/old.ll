; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_sym.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_sym(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
