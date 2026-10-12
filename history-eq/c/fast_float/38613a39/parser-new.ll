; ModuleID = 'history-eq/c/fast_float/38613a39/parser.cpp'
source_filename = "history-eq/c/fast_float/38613a39/parser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.target_parser_mantissa.input = private unnamed_addr constant [10 x i16] [i16 48, i16 46, i16 -31734, i16 -16340, i16 -16380, i16 -32511, i16 -32512, i16 -24576, i16 -24576, i16 -24539], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_parser_mantissa() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca [10 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %1, ptr noundef nonnull align 16 dereferenceable(20) @__const.target_parser_mantissa.input, i64 20, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %11 = load i16, ptr %1, align 16, !tbaa !5
  %12 = add i16 %11, -58
  %13 = icmp ult i16 %12, -10
  br i1 %13, label %98, label %14

14:                                               ; preds = %0
  %15 = zext nneg i16 %11 to i64
  %16 = add nsw i64 %15, -48
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %18 = load i16, ptr %17, align 2, !tbaa !5
  %19 = add i16 %18, -48
  %20 = icmp ult i16 %19, 10
  br i1 %20, label %21, label %98

21:                                               ; preds = %14
  %22 = mul nuw nsw i64 %16, 10
  %23 = zext nneg i16 %18 to i64
  %24 = add nsw i64 %22, -48
  %25 = add nsw i64 %24, %23
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %27 = load i16, ptr %26, align 4, !tbaa !5
  %28 = add i16 %27, -48
  %29 = icmp ult i16 %28, 10
  br i1 %29, label %30, label %98

30:                                               ; preds = %21
  %31 = mul nsw i64 %25, 10
  %32 = zext nneg i16 %27 to i64
  %33 = add nsw i64 %31, -48
  %34 = add i64 %33, %32
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %36 = load i16, ptr %35, align 2, !tbaa !5
  %37 = add i16 %36, -48
  %38 = icmp ult i16 %37, 10
  br i1 %38, label %39, label %98

39:                                               ; preds = %30
  %40 = mul i64 %34, 10
  %41 = zext nneg i16 %36 to i64
  %42 = add i64 %40, -48
  %43 = add i64 %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %45 = load i16, ptr %44, align 8, !tbaa !5
  %46 = add i16 %45, -48
  %47 = icmp ult i16 %46, 10
  br i1 %47, label %48, label %98

48:                                               ; preds = %39
  %49 = mul i64 %43, 10
  %50 = zext nneg i16 %45 to i64
  %51 = add i64 %49, -48
  %52 = add i64 %51, %50
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %54 = load i16, ptr %53, align 2, !tbaa !5
  %55 = add i16 %54, -48
  %56 = icmp ult i16 %55, 10
  br i1 %56, label %57, label %98

57:                                               ; preds = %48
  %58 = mul i64 %52, 10
  %59 = zext nneg i16 %54 to i64
  %60 = add i64 %58, -48
  %61 = add i64 %60, %59
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %63 = load i16, ptr %62, align 4, !tbaa !5
  %64 = add i16 %63, -48
  %65 = icmp ult i16 %64, 10
  br i1 %65, label %66, label %98

66:                                               ; preds = %57
  %67 = mul i64 %61, 10
  %68 = zext nneg i16 %63 to i64
  %69 = add i64 %67, -48
  %70 = add i64 %69, %68
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %72 = load i16, ptr %71, align 2, !tbaa !5
  %73 = add i16 %72, -48
  %74 = icmp ult i16 %73, 10
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = mul i64 %70, 10
  %77 = zext nneg i16 %72 to i64
  %78 = add i64 %76, -48
  %79 = add i64 %78, %77
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %81 = load i16, ptr %80, align 16, !tbaa !5
  %82 = add i16 %81, -48
  %83 = icmp ult i16 %82, 10
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = mul i64 %79, 10
  %86 = zext nneg i16 %81 to i64
  %87 = add i64 %85, -48
  %88 = add i64 %87, %86
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %90 = load i16, ptr %89, align 2, !tbaa !5
  %91 = add i16 %90, -48
  %92 = icmp ult i16 %91, 10
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = mul i64 %88, 10
  %95 = zext nneg i16 %90 to i64
  %96 = add i64 %94, -48
  %97 = add i64 %96, %95
  br label %267

98:                                               ; preds = %84, %75, %66, %57, %48, %39, %30, %21, %14, %0
  %99 = phi i64 [ 18, %0 ], [ 20, %14 ], [ 22, %21 ], [ 24, %30 ], [ 26, %39 ], [ 28, %48 ], [ 30, %57 ], [ 32, %66 ], [ 34, %75 ], [ 36, %84 ]
  %100 = phi ptr [ %1, %0 ], [ %2, %14 ], [ %3, %21 ], [ %4, %30 ], [ %5, %39 ], [ %6, %48 ], [ %7, %57 ], [ %8, %66 ], [ %9, %75 ], [ %10, %84 ]
  %101 = phi i1 [ true, %0 ], [ true, %14 ], [ false, %21 ], [ false, %30 ], [ false, %39 ], [ false, %48 ], [ false, %57 ], [ false, %66 ], [ false, %75 ], [ false, %84 ]
  %102 = phi i64 [ 0, %0 ], [ 2, %14 ], [ 4, %21 ], [ 6, %30 ], [ 8, %39 ], [ 10, %48 ], [ 12, %57 ], [ 14, %66 ], [ 16, %75 ], [ 18, %84 ]
  %103 = phi i64 [ 0, %0 ], [ %16, %14 ], [ %25, %21 ], [ %34, %30 ], [ %43, %39 ], [ %52, %48 ], [ %61, %57 ], [ %70, %66 ], [ %79, %75 ], [ %88, %84 ]
  %104 = phi i16 [ %11, %0 ], [ %18, %14 ], [ %27, %21 ], [ %36, %30 ], [ %45, %39 ], [ %54, %48 ], [ %63, %57 ], [ %72, %66 ], [ %81, %75 ], [ %90, %84 ]
  %105 = lshr exact i64 %102, 1
  %106 = icmp eq i16 %104, 46
  br i1 %106, label %107, label %165

107:                                              ; preds = %98
  %108 = add nuw nsw i64 %102, 2
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 %108
  br i1 %101, label %110, label %136

110:                                              ; preds = %107
  %111 = load <8 x i16>, ptr %109, align 2, !tbaa !9
  %112 = add <8 x i16> %111, splat (i16 -80)
  %113 = icmp sgt <8 x i16> %112, splat (i16 -119)
  %114 = sext <8 x i1> %113 to <8 x i16>
  %115 = bitcast <8 x i16> %114 to <16 x i8>
  %116 = icmp slt <16 x i8> %115, zeroinitializer
  %117 = bitcast <16 x i1> %116 to i16
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %110
  %120 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %111, <8 x i16> poison)
  %121 = bitcast <16 x i8> %120 to <2 x i64>
  %122 = extractelement <2 x i64> %121, i64 0
  %123 = mul i64 %103, 100000000
  %124 = add i64 %122, -3472328296227680304
  %125 = mul i64 %124, 10
  %126 = lshr i64 %124, 8
  %127 = add i64 %125, %126
  %128 = and i64 %127, 1095216660735
  %129 = mul i64 %128, 4294967296000100
  %130 = lshr i64 %127, 16
  %131 = and i64 %130, 1095216660735
  %132 = mul i64 %131, 42949672960001
  %133 = add i64 %132, %129
  %134 = lshr i64 %133, 32
  %135 = add i64 %134, %123
  br label %136

136:                                              ; preds = %119, %107
  %137 = phi i64 [ %103, %107 ], [ %135, %119 ]
  %138 = phi i64 [ %108, %107 ], [ %99, %119 ]
  %139 = icmp eq i64 %138, 20
  br i1 %139, label %157, label %140

140:                                              ; preds = %110, %136
  %141 = phi i64 [ %108, %110 ], [ %138, %136 ]
  %142 = phi i64 [ %103, %110 ], [ %137, %136 ]
  br label %143

143:                                              ; preds = %140, %150
  %144 = phi i64 [ %151, %150 ], [ %141, %140 ]
  %145 = phi i64 [ %155, %150 ], [ %142, %140 ]
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 %144
  %147 = load i16, ptr %146, align 2, !tbaa !5
  %148 = add i16 %147, -48
  %149 = icmp ult i16 %148, 10
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = add nuw nsw i64 %144, 2
  %152 = mul i64 %145, 10
  %153 = and i16 %147, 15
  %154 = zext nneg i16 %153 to i64
  %155 = add i64 %152, %154
  %156 = icmp eq i64 %151, 20
  br i1 %156, label %157, label %143, !llvm.loop !10

157:                                              ; preds = %150, %143, %136
  %158 = phi i64 [ %137, %136 ], [ %145, %143 ], [ %155, %150 ]
  %159 = phi i64 [ 20, %136 ], [ %144, %143 ], [ 20, %150 ]
  %160 = sub nsw i64 %108, %159
  %161 = ashr exact i64 %160, 1
  %162 = sub nsw i64 %159, %108
  %163 = ashr exact i64 %162, 1
  %164 = sub nsw i64 %105, %161
  br label %165

165:                                              ; preds = %157, %98
  %166 = phi ptr [ %109, %157 ], [ null, %98 ]
  %167 = phi i64 [ %163, %157 ], [ 0, %98 ]
  %168 = phi i64 [ %158, %157 ], [ %103, %98 ]
  %169 = phi i64 [ %164, %157 ], [ %105, %98 ]
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %267, label %171

171:                                              ; preds = %165
  %172 = icmp sgt i64 %169, 19
  br i1 %172, label %173, label %267

173:                                              ; preds = %171
  %174 = load i16, ptr %1, align 16, !tbaa !5
  switch i16 %174, label %233 [
    i16 48, label %175
    i16 46, label %175
  ]

175:                                              ; preds = %173, %173
  %176 = icmp eq i16 %174, 48
  %177 = sext i1 %176 to i64
  %178 = add nsw i64 %169, %177
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %180 = load i16, ptr %179, align 2, !tbaa !5
  switch i16 %180, label %233 [
    i16 48, label %181
    i16 46, label %181
  ]

181:                                              ; preds = %175, %175
  %182 = icmp eq i16 %180, 48
  %183 = sext i1 %182 to i64
  %184 = add nsw i64 %178, %183
  %185 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %186 = load i16, ptr %185, align 4, !tbaa !5
  switch i16 %186, label %233 [
    i16 48, label %187
    i16 46, label %187
  ]

187:                                              ; preds = %181, %181
  %188 = icmp eq i16 %186, 48
  %189 = sext i1 %188 to i64
  %190 = add nsw i64 %184, %189
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %192 = load i16, ptr %191, align 2, !tbaa !5
  switch i16 %192, label %233 [
    i16 48, label %193
    i16 46, label %193
  ]

193:                                              ; preds = %187, %187
  %194 = icmp eq i16 %192, 48
  %195 = sext i1 %194 to i64
  %196 = add nsw i64 %190, %195
  %197 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %198 = load i16, ptr %197, align 8, !tbaa !5
  switch i16 %198, label %233 [
    i16 48, label %199
    i16 46, label %199
  ]

199:                                              ; preds = %193, %193
  %200 = icmp eq i16 %198, 48
  %201 = sext i1 %200 to i64
  %202 = add nsw i64 %196, %201
  %203 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %204 = load i16, ptr %203, align 2, !tbaa !5
  switch i16 %204, label %233 [
    i16 48, label %205
    i16 46, label %205
  ]

205:                                              ; preds = %199, %199
  %206 = icmp eq i16 %204, 48
  %207 = sext i1 %206 to i64
  %208 = add nsw i64 %202, %207
  %209 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %210 = load i16, ptr %209, align 4, !tbaa !5
  switch i16 %210, label %233 [
    i16 48, label %211
    i16 46, label %211
  ]

211:                                              ; preds = %205, %205
  %212 = icmp eq i16 %210, 48
  %213 = sext i1 %212 to i64
  %214 = add nsw i64 %208, %213
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %216 = load i16, ptr %215, align 2, !tbaa !5
  switch i16 %216, label %233 [
    i16 48, label %217
    i16 46, label %217
  ]

217:                                              ; preds = %211, %211
  %218 = icmp eq i16 %216, 48
  %219 = sext i1 %218 to i64
  %220 = add nsw i64 %214, %219
  %221 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %222 = load i16, ptr %221, align 16, !tbaa !5
  switch i16 %222, label %233 [
    i16 48, label %223
    i16 46, label %223
  ]

223:                                              ; preds = %217, %217
  %224 = icmp eq i16 %222, 48
  %225 = sext i1 %224 to i64
  %226 = add nsw i64 %220, %225
  %227 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %228 = load i16, ptr %227, align 2, !tbaa !5
  switch i16 %228, label %233 [
    i16 48, label %229
    i16 46, label %229
  ]

229:                                              ; preds = %223, %223
  %230 = icmp eq i16 %228, 48
  %231 = sext i1 %230 to i64
  %232 = add nsw i64 %226, %231
  br label %233

233:                                              ; preds = %229, %223, %217, %211, %205, %199, %193, %187, %181, %175, %173
  %234 = phi i64 [ %169, %173 ], [ %178, %175 ], [ %184, %181 ], [ %190, %187 ], [ %196, %193 ], [ %202, %199 ], [ %208, %205 ], [ %214, %211 ], [ %220, %217 ], [ %226, %223 ], [ %232, %229 ]
  %235 = icmp sgt i64 %234, 19
  br i1 %235, label %236, label %267

236:                                              ; preds = %233
  br i1 %13, label %251, label %237

237:                                              ; preds = %236, %237
  %238 = phi ptr [ %245, %237 ], [ %1, %236 ]
  %239 = phi i64 [ %244, %237 ], [ 0, %236 ]
  %240 = mul nuw i64 %239, 10
  %241 = load i16, ptr %238, align 2, !tbaa !5
  %242 = zext i16 %241 to i64
  %243 = add i64 %240, -48
  %244 = add i64 %243, %242
  %245 = getelementptr inbounds nuw i8, ptr %238, i64 2
  %246 = icmp ult i64 %244, 1000000000000000000
  %247 = icmp ne ptr %245, %100
  %248 = select i1 %246, i1 %247, i1 false
  br i1 %248, label %237, label %249, !llvm.loop !12

249:                                              ; preds = %237
  %250 = icmp ugt i64 %244, 999999999999999999
  br i1 %250, label %267, label %251

251:                                              ; preds = %236, %249
  %252 = phi i64 [ %244, %249 ], [ 0, %236 ]
  %253 = getelementptr inbounds nuw i16, ptr %166, i64 %167
  %254 = icmp eq i64 %167, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %251, %255
  %256 = phi ptr [ %263, %255 ], [ %166, %251 ]
  %257 = phi i64 [ %262, %255 ], [ %252, %251 ]
  %258 = mul nuw i64 %257, 10
  %259 = load i16, ptr %256, align 2, !tbaa !5
  %260 = zext i16 %259 to i64
  %261 = add i64 %258, -48
  %262 = add i64 %261, %260
  %263 = getelementptr inbounds nuw i8, ptr %256, i64 2
  %264 = icmp ult i64 %262, 1000000000000000000
  %265 = icmp ne ptr %263, %253
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %255, label %267, !llvm.loop !13

267:                                              ; preds = %255, %93, %251, %249, %165, %233, %171
  %268 = phi i64 [ 0, %165 ], [ %168, %233 ], [ %168, %171 ], [ %244, %249 ], [ %252, %251 ], [ %97, %93 ], [ %262, %255 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #4
  ret i64 %268
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"char16_t", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
