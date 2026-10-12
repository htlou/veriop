; ModuleID = 'history-eq/c/fast_float/6484c736/digits.cpp'
source_filename = "history-eq/c/fast_float/6484c736/digits.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_eight_digits(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = and i32 %0, 15
  %5 = icmp samesign ult i32 %4, 10
  %6 = add nuw nsw i32 %4, 250
  %7 = select i1 %5, i32 %4, i32 %6
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, 48
  store i8 %9, ptr %2, align 8
  %10 = insertelement <4 x i32> poison, i32 %0, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = lshr <4 x i32> %11, <i32 4, i32 8, i32 12, i32 16>
  %13 = and <4 x i32> %12, splat (i32 15)
  %14 = icmp samesign ult <4 x i32> %13, splat (i32 10)
  %15 = add nuw nsw <4 x i32> %13, splat (i32 250)
  %16 = select <4 x i1> %14, <4 x i32> %13, <4 x i32> %15
  %17 = trunc <4 x i32> %16 to <4 x i8>
  %18 = add <4 x i8> %17, splat (i8 48)
  store <4 x i8> %18, ptr %3, align 1
  %19 = lshr i32 %0, 20
  %20 = and i32 %19, 15
  %21 = icmp samesign ult i32 %20, 10
  %22 = add nuw nsw i32 %20, 250
  %23 = select i1 %21, i32 %20, i32 %22
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, 48
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %25, ptr %26, align 1
  %27 = lshr i32 %0, 24
  %28 = and i32 %27, 15
  %29 = icmp samesign ult i32 %28, 10
  %30 = add nuw nsw i32 %28, 250
  %31 = select i1 %29, i32 %28, i32 %30
  %32 = trunc i32 %31 to i8
  %33 = add i8 %32, 48
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %33, ptr %34, align 2
  %35 = lshr i32 %0, 28
  %36 = icmp ult i32 %0, -1610612736
  %37 = add nuw nsw i32 %35, 250
  %38 = select i1 %36, i32 %35, i32 %37
  %39 = trunc i32 %38 to i8
  %40 = add i8 %39, 48
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %40, ptr %41, align 1
  %42 = icmp eq i8 %9, 45
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %46 = extractelement <4 x i8> %17, i64 0
  %47 = icmp ult i8 %46, 10
  %48 = icmp eq i8 %46, -2
  %49 = or i1 %48, %47
  br i1 %49, label %68, label %282

50:                                               ; preds = %1
  %51 = load i64, ptr %2, align 8
  %52 = add i64 %51, 5063812098665367110
  %53 = add i64 %51, -3472328296227680304
  %54 = or i64 %52, %53
  %55 = and i64 %54, -9187201950435737472
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = mul i64 %53, 10
  %59 = lshr i64 %53, 8
  %60 = add i64 %58, %59
  %61 = and i64 %60, 1095216660735
  %62 = mul i64 %61, 4294967296000100
  %63 = lshr i64 %60, 16
  %64 = and i64 %63, 1095216660735
  %65 = mul i64 %64, 42949672960001
  %66 = add i64 %65, %62
  %67 = lshr i64 %66, 32
  br label %282

68:                                               ; preds = %50, %43
  %69 = phi ptr [ %2, %50 ], [ %45, %43 ]
  %70 = phi ptr [ %2, %50 ], [ %44, %43 ]
  %71 = phi i64 [ 0, %50 ], [ 1, %43 ]
  %72 = phi ptr [ %2, %50 ], [ %3, %43 ]
  %73 = load i8, ptr %70, align 1
  %74 = add i8 %73, -48
  %75 = icmp ult i8 %74, 10
  br i1 %75, label %76, label %151

76:                                               ; preds = %68
  %77 = zext nneg i8 %73 to i64
  %78 = add nsw i64 %77, -48
  %79 = add nuw nsw i64 %71, 1
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = add i8 %81, -48
  %83 = icmp ult i8 %82, 10
  br i1 %83, label %84, label %151

84:                                               ; preds = %76
  %85 = mul nuw nsw i64 %78, 10
  %86 = zext nneg i8 %81 to i64
  %87 = add nsw i64 %85, -48
  %88 = add nsw i64 %87, %86
  %89 = or disjoint i64 %71, 2
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = add i8 %91, -48
  %93 = icmp ult i8 %92, 10
  br i1 %93, label %94, label %151

94:                                               ; preds = %84
  %95 = mul nsw i64 %88, 10
  %96 = zext nneg i8 %91 to i64
  %97 = add nsw i64 %95, -48
  %98 = add i64 %97, %96
  %99 = add nuw nsw i64 %71, 3
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = add i8 %101, -48
  %103 = icmp ult i8 %102, 10
  br i1 %103, label %104, label %151

104:                                              ; preds = %94
  %105 = mul i64 %98, 10
  %106 = zext nneg i8 %101 to i64
  %107 = add i64 %105, -48
  %108 = add i64 %107, %106
  %109 = or disjoint i64 %71, 4
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 %109
  %111 = load i8, ptr %110, align 1
  %112 = add i8 %111, -48
  %113 = icmp ult i8 %112, 10
  br i1 %113, label %114, label %151

114:                                              ; preds = %104
  %115 = mul i64 %108, 10
  %116 = zext nneg i8 %111 to i64
  %117 = add i64 %115, -48
  %118 = add i64 %117, %116
  %119 = add nuw nsw i64 %71, 5
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = add i8 %121, -48
  %123 = icmp ult i8 %122, 10
  br i1 %123, label %124, label %151

124:                                              ; preds = %114
  %125 = mul i64 %118, 10
  %126 = zext nneg i8 %121 to i64
  %127 = add i64 %125, -48
  %128 = add i64 %127, %126
  %129 = or disjoint i64 %71, 6
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = add i8 %131, -48
  %133 = icmp ult i8 %132, 10
  br i1 %133, label %134, label %151

134:                                              ; preds = %124
  %135 = mul i64 %128, 10
  %136 = zext nneg i8 %131 to i64
  %137 = add i64 %135, -48
  %138 = add i64 %137, %136
  %139 = add nuw nsw i64 %71, 7
  %140 = icmp eq i64 %139, 8
  br i1 %140, label %282, label %141

141:                                              ; preds = %134
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 %139
  %143 = load i8, ptr %142, align 1
  %144 = add i8 %143, -48
  %145 = icmp ult i8 %144, 10
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = mul i64 %138, 10
  %148 = zext nneg i8 %143 to i64
  %149 = add i64 %147, -48
  %150 = add i64 %149, %148
  br label %282

151:                                              ; preds = %141, %124, %114, %104, %94, %84, %76, %68
  %152 = phi i64 [ %71, %68 ], [ %79, %76 ], [ %89, %84 ], [ %99, %94 ], [ %109, %104 ], [ %119, %114 ], [ %129, %124 ], [ %139, %141 ]
  %153 = phi i64 [ 0, %68 ], [ %78, %76 ], [ %88, %84 ], [ %98, %94 ], [ %108, %104 ], [ %118, %114 ], [ %128, %124 ], [ %138, %141 ]
  %154 = phi i8 [ %73, %68 ], [ %81, %76 ], [ %91, %84 ], [ %101, %94 ], [ %111, %104 ], [ %121, %114 ], [ %131, %124 ], [ %143, %141 ]
  %155 = sub nsw i64 %152, %71
  %156 = icmp eq i8 %154, 46
  br i1 %156, label %157, label %181

157:                                              ; preds = %151
  %158 = add nuw nsw i64 %152, 1
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 %158
  %160 = icmp eq i64 %158, 8
  br i1 %160, label %174, label %161

161:                                              ; preds = %157, %168
  %162 = phi i64 [ %169, %168 ], [ %158, %157 ]
  %163 = phi i64 [ %172, %168 ], [ %153, %157 ]
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 %162
  %165 = load i8, ptr %164, align 1
  %166 = add i8 %165, -48
  %167 = icmp ult i8 %166, 10
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = add nuw nsw i64 %162, 1
  %170 = mul i64 %163, 10
  %171 = zext nneg i8 %166 to i64
  %172 = add i64 %170, %171
  %173 = icmp eq i64 %169, 8
  br i1 %173, label %174, label %161

174:                                              ; preds = %168, %161, %157
  %175 = phi i64 [ %153, %157 ], [ %163, %161 ], [ %172, %168 ]
  %176 = phi i64 [ 8, %157 ], [ %162, %161 ], [ 8, %168 ]
  %177 = xor i64 %152, -1
  %178 = sub nsw i64 %176, %158
  %179 = add i64 %155, %177
  %180 = add i64 %179, %176
  br label %181

181:                                              ; preds = %174, %151
  %182 = phi ptr [ %159, %174 ], [ null, %151 ]
  %183 = phi i64 [ %178, %174 ], [ 0, %151 ]
  %184 = phi i64 [ %180, %174 ], [ %155, %151 ]
  %185 = phi i64 [ %175, %174 ], [ %153, %151 ]
  %186 = icmp eq i64 %184, 0
  br i1 %186, label %282, label %187

187:                                              ; preds = %181
  %188 = icmp sgt i64 %184, 19
  br i1 %188, label %189, label %282

189:                                              ; preds = %187
  %190 = load i8, ptr %69, align 1
  switch i8 %190, label %246 [
    i8 48, label %191
    i8 46, label %191
  ]

191:                                              ; preds = %189, %189
  %192 = icmp eq i8 %190, 48
  %193 = sext i1 %192 to i64
  %194 = add nsw i64 %184, %193
  %195 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 1
  %197 = load i8, ptr %196, align 1
  switch i8 %197, label %246 [
    i8 48, label %198
    i8 46, label %198
  ]

198:                                              ; preds = %191, %191
  %199 = icmp eq i8 %197, 48
  %200 = sext i1 %199 to i64
  %201 = add nsw i64 %194, %200
  %202 = or disjoint i64 %71, 2
  %203 = getelementptr inbounds nuw i8, ptr %2, i64 %202
  %204 = load i8, ptr %203, align 1
  switch i8 %204, label %246 [
    i8 48, label %205
    i8 46, label %205
  ]

205:                                              ; preds = %198, %198
  %206 = icmp eq i8 %204, 48
  %207 = sext i1 %206 to i64
  %208 = add nsw i64 %201, %207
  %209 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 3
  %211 = load i8, ptr %210, align 1
  switch i8 %211, label %246 [
    i8 48, label %212
    i8 46, label %212
  ]

212:                                              ; preds = %205, %205
  %213 = icmp eq i8 %211, 48
  %214 = sext i1 %213 to i64
  %215 = add nsw i64 %208, %214
  %216 = or disjoint i64 %71, 4
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 %216
  %218 = load i8, ptr %217, align 1
  switch i8 %218, label %246 [
    i8 48, label %219
    i8 46, label %219
  ]

219:                                              ; preds = %212, %212
  %220 = icmp eq i8 %218, 48
  %221 = sext i1 %220 to i64
  %222 = add nsw i64 %215, %221
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 5
  %225 = load i8, ptr %224, align 1
  switch i8 %225, label %246 [
    i8 48, label %226
    i8 46, label %226
  ]

226:                                              ; preds = %219, %219
  %227 = icmp eq i8 %225, 48
  %228 = sext i1 %227 to i64
  %229 = add nsw i64 %222, %228
  %230 = or disjoint i64 %71, 6
  %231 = getelementptr inbounds nuw i8, ptr %2, i64 %230
  %232 = load i8, ptr %231, align 1
  switch i8 %232, label %246 [
    i8 48, label %233
    i8 46, label %233
  ]

233:                                              ; preds = %226, %226
  %234 = icmp eq i8 %232, 48
  %235 = sext i1 %234 to i64
  %236 = add nsw i64 %229, %235
  %237 = add nuw nsw i64 %71, 7
  %238 = icmp eq i64 %237, 8
  br i1 %238, label %246, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 %237
  %241 = load i8, ptr %240, align 1
  switch i8 %241, label %246 [
    i8 48, label %242
    i8 46, label %242
  ]

242:                                              ; preds = %239, %239
  %243 = icmp eq i8 %241, 48
  %244 = sext i1 %243 to i64
  %245 = add nsw i64 %236, %244
  br label %246

246:                                              ; preds = %242, %239, %233, %226, %219, %212, %205, %198, %191, %189
  %247 = phi i64 [ %184, %189 ], [ %194, %191 ], [ %201, %198 ], [ %208, %205 ], [ %215, %212 ], [ %222, %219 ], [ %229, %226 ], [ %236, %233 ], [ %236, %239 ], [ %245, %242 ]
  %248 = icmp sgt i64 %247, 19
  br i1 %248, label %249, label %282

249:                                              ; preds = %246
  %250 = getelementptr inbounds nuw i8, ptr %72, i64 %155
  %251 = icmp samesign eq i64 %155, 0
  br i1 %251, label %266, label %252

252:                                              ; preds = %249, %252
  %253 = phi ptr [ %260, %252 ], [ %72, %249 ]
  %254 = phi i64 [ %259, %252 ], [ 0, %249 ]
  %255 = mul nuw i64 %254, 10
  %256 = load i8, ptr %253, align 1
  %257 = sext i8 %256 to i64
  %258 = add i64 %255, -48
  %259 = add i64 %258, %257
  %260 = getelementptr inbounds nuw i8, ptr %253, i64 1
  %261 = icmp ult i64 %259, 1000000000000000000
  %262 = icmp ne ptr %260, %250
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %252, label %264

264:                                              ; preds = %252
  %265 = icmp ugt i64 %259, 999999999999999999
  br i1 %265, label %282, label %266

266:                                              ; preds = %249, %264
  %267 = phi i64 [ %259, %264 ], [ 0, %249 ]
  %268 = getelementptr inbounds nuw i8, ptr %182, i64 %183
  %269 = icmp samesign eq i64 %183, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %266, %270
  %271 = phi ptr [ %278, %270 ], [ %182, %266 ]
  %272 = phi i64 [ %277, %270 ], [ %267, %266 ]
  %273 = mul nuw i64 %272, 10
  %274 = load i8, ptr %271, align 1
  %275 = sext i8 %274 to i64
  %276 = add i64 %273, -48
  %277 = add i64 %276, %275
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 1
  %279 = icmp ult i64 %277, 1000000000000000000
  %280 = icmp ne ptr %278, %268
  %281 = select i1 %279, i1 %280, i1 false
  br i1 %281, label %270, label %282

282:                                              ; preds = %134, %146, %270, %57, %266, %264, %43, %187, %246, %181
  %283 = phi i64 [ 0, %181 ], [ %185, %187 ], [ %185, %246 ], [ 0, %43 ], [ %259, %264 ], [ %267, %266 ], [ %67, %57 ], [ %277, %270 ], [ %138, %134 ], [ %150, %146 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %283
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
