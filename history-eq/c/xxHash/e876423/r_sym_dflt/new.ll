; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_sym.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_sym(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %77

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
  %75 = add i64 %1, -8796714831421723037
  %76 = add i64 %75, %74
  br label %83

77:                                               ; preds = %5
  %78 = add i64 %2, 2870177450012600261
  %79 = add i64 %78, %1
  br label %83

80:                                               ; preds = %3
  %81 = add i64 %2, 2870177450012600261
  %82 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %82)
  br label %268

83:                                               ; preds = %77, %44
  %84 = phi i64 [ %76, %44 ], [ %79, %77 ]
  %85 = phi ptr [ %42, %44 ], [ %0, %77 ]
  %86 = and i64 %1, 31
  %87 = icmp samesign ugt i64 %86, 7
  br i1 %87, label %88, label %162

88:                                               ; preds = %83
  %89 = add nsw i64 %86, -8
  %90 = lshr i64 %89, 3
  %91 = add nuw nsw i64 %90, 1
  %92 = and i64 %91, 3
  %93 = and i64 %89, 24
  %94 = icmp eq i64 %93, 24
  br i1 %94, label %112, label %95

95:                                               ; preds = %88, %95
  %96 = phi i64 [ %108, %95 ], [ %84, %88 ]
  %97 = phi ptr [ %104, %95 ], [ %85, %88 ]
  %98 = phi i64 [ %109, %95 ], [ %86, %88 ]
  %99 = phi i64 [ %110, %95 ], [ 0, %88 ]
  %100 = load i64, ptr %97, align 1
  %101 = mul i64 %100, -4417276706812531889
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 31)
  %103 = mul i64 %102, -7046029288634856825
  %104 = getelementptr inbounds nuw i8, ptr %97, i64 8
  %105 = xor i64 %103, %96
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 27)
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = add nsw i64 %98, -8
  %110 = add i64 %99, 1
  %111 = icmp eq i64 %110, %92
  br i1 %111, label %112, label %95

112:                                              ; preds = %95, %88
  %113 = phi i64 [ %84, %88 ], [ %108, %95 ]
  %114 = phi ptr [ %85, %88 ], [ %104, %95 ]
  %115 = phi i64 [ %86, %88 ], [ %109, %95 ]
  %116 = phi ptr [ poison, %88 ], [ %104, %95 ]
  %117 = phi i64 [ poison, %88 ], [ %108, %95 ]
  %118 = phi i64 [ poison, %88 ], [ %109, %95 ]
  %119 = icmp ult i64 %89, 24
  br i1 %119, label %162, label %120

120:                                              ; preds = %112, %120
  %121 = phi i64 [ %159, %120 ], [ %113, %112 ]
  %122 = phi ptr [ %155, %120 ], [ %114, %112 ]
  %123 = phi i64 [ %160, %120 ], [ %115, %112 ]
  %124 = load i64, ptr %122, align 1
  %125 = mul i64 %124, -4417276706812531889
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 31)
  %127 = mul i64 %126, -7046029288634856825
  %128 = getelementptr inbounds nuw i8, ptr %122, i64 8
  %129 = xor i64 %127, %121
  %130 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 27)
  %131 = mul i64 %130, -7046029288634856825
  %132 = add i64 %131, -8796714831421723037
  %133 = load i64, ptr %128, align 1
  %134 = mul i64 %133, -4417276706812531889
  %135 = tail call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 31)
  %136 = mul i64 %135, -7046029288634856825
  %137 = getelementptr inbounds nuw i8, ptr %122, i64 16
  %138 = xor i64 %136, %132
  %139 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 27)
  %140 = mul i64 %139, -7046029288634856825
  %141 = add i64 %140, -8796714831421723037
  %142 = load i64, ptr %137, align 1
  %143 = mul i64 %142, -4417276706812531889
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 31)
  %145 = mul i64 %144, -7046029288634856825
  %146 = getelementptr inbounds nuw i8, ptr %122, i64 24
  %147 = xor i64 %145, %141
  %148 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 27)
  %149 = mul i64 %148, -7046029288634856825
  %150 = add i64 %149, -8796714831421723037
  %151 = load i64, ptr %146, align 1
  %152 = mul i64 %151, -4417276706812531889
  %153 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 31)
  %154 = mul i64 %153, -7046029288634856825
  %155 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %156 = xor i64 %154, %150
  %157 = tail call i64 @llvm.fshl.i64(i64 %156, i64 %156, i64 27)
  %158 = mul i64 %157, -7046029288634856825
  %159 = add i64 %158, -8796714831421723037
  %160 = add nsw i64 %123, -32
  %161 = icmp ugt i64 %160, 7
  br i1 %161, label %120, label %162

162:                                              ; preds = %112, %120, %83
  %163 = phi i64 [ %86, %83 ], [ %118, %112 ], [ %160, %120 ]
  %164 = phi ptr [ %85, %83 ], [ %116, %112 ], [ %155, %120 ]
  %165 = phi i64 [ %84, %83 ], [ %117, %112 ], [ %159, %120 ]
  %166 = icmp samesign ugt i64 %163, 3
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load i32, ptr %164, align 1
  %169 = zext i32 %168 to i64
  %170 = mul i64 %169, -7046029288634856825
  %171 = xor i64 %170, %165
  %172 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %173 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 23)
  %174 = mul i64 %173, -4417276706812531889
  %175 = add i64 %174, 1609587929392839161
  %176 = add nsw i64 %163, -4
  br label %177

177:                                              ; preds = %167, %162
  %178 = phi i64 [ %176, %167 ], [ %163, %162 ]
  %179 = phi ptr [ %172, %167 ], [ %164, %162 ]
  %180 = phi i64 [ %175, %167 ], [ %165, %162 ]
  %181 = icmp eq i64 %178, 0
  br i1 %181, label %268, label %182

182:                                              ; preds = %177
  %183 = and i64 %178, 7
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %200, label %185

185:                                              ; preds = %182, %185
  %186 = phi i64 [ %196, %185 ], [ %180, %182 ]
  %187 = phi ptr [ %190, %185 ], [ %179, %182 ]
  %188 = phi i64 [ %197, %185 ], [ %178, %182 ]
  %189 = phi i64 [ %198, %185 ], [ 0, %182 ]
  %190 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %191 = load i8, ptr %187, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %186
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = add nsw i64 %188, -1
  %198 = add i64 %189, 1
  %199 = icmp eq i64 %198, %183
  br i1 %199, label %200, label %185

200:                                              ; preds = %185, %182
  %201 = phi i64 [ poison, %182 ], [ %196, %185 ]
  %202 = phi i64 [ %180, %182 ], [ %196, %185 ]
  %203 = phi ptr [ %179, %182 ], [ %190, %185 ]
  %204 = phi i64 [ %178, %182 ], [ %197, %185 ]
  %205 = icmp ult i64 %178, 8
  br i1 %205, label %268, label %206

206:                                              ; preds = %200, %206
  %207 = phi i64 [ %265, %206 ], [ %202, %200 ]
  %208 = phi ptr [ %259, %206 ], [ %203, %200 ]
  %209 = phi i64 [ %266, %206 ], [ %204, %200 ]
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 1
  %211 = load i8, ptr %208, align 1
  %212 = zext i8 %211 to i64
  %213 = mul i64 %212, 2870177450012600261
  %214 = xor i64 %213, %207
  %215 = tail call i64 @llvm.fshl.i64(i64 %214, i64 %214, i64 11)
  %216 = mul i64 %215, -7046029288634856825
  %217 = getelementptr inbounds nuw i8, ptr %208, i64 2
  %218 = load i8, ptr %210, align 1
  %219 = zext i8 %218 to i64
  %220 = mul i64 %219, 2870177450012600261
  %221 = xor i64 %220, %216
  %222 = tail call i64 @llvm.fshl.i64(i64 %221, i64 %221, i64 11)
  %223 = mul i64 %222, -7046029288634856825
  %224 = getelementptr inbounds nuw i8, ptr %208, i64 3
  %225 = load i8, ptr %217, align 1
  %226 = zext i8 %225 to i64
  %227 = mul i64 %226, 2870177450012600261
  %228 = xor i64 %227, %223
  %229 = tail call i64 @llvm.fshl.i64(i64 %228, i64 %228, i64 11)
  %230 = mul i64 %229, -7046029288634856825
  %231 = getelementptr inbounds nuw i8, ptr %208, i64 4
  %232 = load i8, ptr %224, align 1
  %233 = zext i8 %232 to i64
  %234 = mul i64 %233, 2870177450012600261
  %235 = xor i64 %234, %230
  %236 = tail call i64 @llvm.fshl.i64(i64 %235, i64 %235, i64 11)
  %237 = mul i64 %236, -7046029288634856825
  %238 = getelementptr inbounds nuw i8, ptr %208, i64 5
  %239 = load i8, ptr %231, align 1
  %240 = zext i8 %239 to i64
  %241 = mul i64 %240, 2870177450012600261
  %242 = xor i64 %241, %237
  %243 = tail call i64 @llvm.fshl.i64(i64 %242, i64 %242, i64 11)
  %244 = mul i64 %243, -7046029288634856825
  %245 = getelementptr inbounds nuw i8, ptr %208, i64 6
  %246 = load i8, ptr %238, align 1
  %247 = zext i8 %246 to i64
  %248 = mul i64 %247, 2870177450012600261
  %249 = xor i64 %248, %244
  %250 = tail call i64 @llvm.fshl.i64(i64 %249, i64 %249, i64 11)
  %251 = mul i64 %250, -7046029288634856825
  %252 = getelementptr inbounds nuw i8, ptr %208, i64 7
  %253 = load i8, ptr %245, align 1
  %254 = zext i8 %253 to i64
  %255 = mul i64 %254, 2870177450012600261
  %256 = xor i64 %255, %251
  %257 = tail call i64 @llvm.fshl.i64(i64 %256, i64 %256, i64 11)
  %258 = mul i64 %257, -7046029288634856825
  %259 = getelementptr inbounds nuw i8, ptr %208, i64 8
  %260 = load i8, ptr %252, align 1
  %261 = zext i8 %260 to i64
  %262 = mul i64 %261, 2870177450012600261
  %263 = xor i64 %262, %258
  %264 = tail call i64 @llvm.fshl.i64(i64 %263, i64 %263, i64 11)
  %265 = mul i64 %264, -7046029288634856825
  %266 = add nsw i64 %209, -8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %206

268:                                              ; preds = %200, %206, %80, %177
  %269 = phi i64 [ %180, %177 ], [ %81, %80 ], [ %201, %200 ], [ %265, %206 ]
  %270 = lshr i64 %269, 33
  %271 = xor i64 %270, %269
  %272 = mul i64 %271, -4417276706812531889
  %273 = lshr i64 %272, 29
  %274 = xor i64 %273, %272
  %275 = mul i64 %274, 1609587929392839161
  %276 = lshr i64 %275, 32
  %277 = xor i64 %276, %275
  ret i64 %277
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
