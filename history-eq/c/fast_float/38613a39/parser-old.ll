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
  %11 = load i16, ptr %1, align 16, !tbaa !5, !noalias !9
  %12 = add i16 %11, -58
  %13 = icmp ult i16 %12, -10
  br i1 %13, label %98, label %14

14:                                               ; preds = %0
  %15 = zext nneg i16 %11 to i64
  %16 = add nsw i64 %15, -48
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %18 = load i16, ptr %17, align 2, !tbaa !5, !noalias !9
  %19 = add i16 %18, -48
  %20 = icmp ult i16 %19, 10
  br i1 %20, label %21, label %98

21:                                               ; preds = %14
  %22 = mul nuw nsw i64 %16, 10
  %23 = zext nneg i16 %18 to i64
  %24 = add nsw i64 %22, -48
  %25 = add nsw i64 %24, %23
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %27 = load i16, ptr %26, align 4, !tbaa !5, !noalias !9
  %28 = add i16 %27, -48
  %29 = icmp ult i16 %28, 10
  br i1 %29, label %30, label %98

30:                                               ; preds = %21
  %31 = mul nsw i64 %25, 10
  %32 = zext nneg i16 %27 to i64
  %33 = add nsw i64 %31, -48
  %34 = add i64 %33, %32
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %36 = load i16, ptr %35, align 2, !tbaa !5, !noalias !9
  %37 = add i16 %36, -48
  %38 = icmp ult i16 %37, 10
  br i1 %38, label %39, label %98

39:                                               ; preds = %30
  %40 = mul i64 %34, 10
  %41 = zext nneg i16 %36 to i64
  %42 = add i64 %40, -48
  %43 = add i64 %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %45 = load i16, ptr %44, align 8, !tbaa !5, !noalias !9
  %46 = add i16 %45, -48
  %47 = icmp ult i16 %46, 10
  br i1 %47, label %48, label %98

48:                                               ; preds = %39
  %49 = mul i64 %43, 10
  %50 = zext nneg i16 %45 to i64
  %51 = add i64 %49, -48
  %52 = add i64 %51, %50
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %54 = load i16, ptr %53, align 2, !tbaa !5, !noalias !9
  %55 = add i16 %54, -48
  %56 = icmp ult i16 %55, 10
  br i1 %56, label %57, label %98

57:                                               ; preds = %48
  %58 = mul i64 %52, 10
  %59 = zext nneg i16 %54 to i64
  %60 = add i64 %58, -48
  %61 = add i64 %60, %59
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %63 = load i16, ptr %62, align 4, !tbaa !5, !noalias !9
  %64 = add i16 %63, -48
  %65 = icmp ult i16 %64, 10
  br i1 %65, label %66, label %98

66:                                               ; preds = %57
  %67 = mul i64 %61, 10
  %68 = zext nneg i16 %63 to i64
  %69 = add i64 %67, -48
  %70 = add i64 %69, %68
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %72 = load i16, ptr %71, align 2, !tbaa !5, !noalias !9
  %73 = add i16 %72, -48
  %74 = icmp ult i16 %73, 10
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = mul i64 %70, 10
  %77 = zext nneg i16 %72 to i64
  %78 = add i64 %76, -48
  %79 = add i64 %78, %77
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %81 = load i16, ptr %80, align 16, !tbaa !5, !noalias !9
  %82 = add i16 %81, -48
  %83 = icmp ult i16 %82, 10
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = mul i64 %79, 10
  %86 = zext nneg i16 %81 to i64
  %87 = add i64 %85, -48
  %88 = add i64 %87, %86
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %90 = load i16, ptr %89, align 2, !tbaa !5, !noalias !9
  %91 = add i16 %90, -48
  %92 = icmp ult i16 %91, 10
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = mul i64 %88, 10
  %95 = zext nneg i16 %90 to i64
  %96 = add i64 %94, -48
  %97 = add i64 %96, %95
  br label %268

98:                                               ; preds = %84, %75, %66, %57, %48, %39, %30, %21, %14, %0
  %99 = phi i64 [ 18, %0 ], [ 20, %14 ], [ 22, %21 ], [ 24, %30 ], [ 26, %39 ], [ 28, %48 ], [ 30, %57 ], [ 32, %66 ], [ 34, %75 ], [ 36, %84 ]
  %100 = phi ptr [ %1, %0 ], [ %2, %14 ], [ %3, %21 ], [ %4, %30 ], [ %5, %39 ], [ %6, %48 ], [ %7, %57 ], [ %8, %66 ], [ %9, %75 ], [ %10, %84 ]
  %101 = phi i1 [ true, %0 ], [ true, %14 ], [ false, %21 ], [ false, %30 ], [ false, %39 ], [ false, %48 ], [ false, %57 ], [ false, %66 ], [ false, %75 ], [ false, %84 ]
  %102 = phi i64 [ 0, %0 ], [ 2, %14 ], [ 4, %21 ], [ 6, %30 ], [ 8, %39 ], [ 10, %48 ], [ 12, %57 ], [ 14, %66 ], [ 16, %75 ], [ 18, %84 ]
  %103 = phi i64 [ 0, %0 ], [ %16, %14 ], [ %25, %21 ], [ %34, %30 ], [ %43, %39 ], [ %52, %48 ], [ %61, %57 ], [ %70, %66 ], [ %79, %75 ], [ %88, %84 ]
  %104 = phi i16 [ %11, %0 ], [ %18, %14 ], [ %27, %21 ], [ %36, %30 ], [ %45, %39 ], [ %54, %48 ], [ %63, %57 ], [ %72, %66 ], [ %81, %75 ], [ %90, %84 ]
  %105 = lshr exact i64 %102, 1
  %106 = icmp eq i16 %104, 46
  br i1 %106, label %107, label %166

107:                                              ; preds = %98
  %108 = add nuw nsw i64 %102, 2
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 %108
  br i1 %101, label %110, label %137

110:                                              ; preds = %107
  %111 = load <8 x i16>, ptr %109, align 2, !tbaa !12
  %112 = add <8 x i16> %111, splat (i16 -80)
  %113 = icmp sgt <8 x i16> %112, splat (i16 -119)
  %114 = sext <8 x i1> %113 to <8 x i16>
  %115 = bitcast <8 x i16> %114 to <16 x i8>
  %116 = icmp slt <16 x i8> %115, zeroinitializer
  %117 = bitcast <16 x i1> %116 to i16
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %110
  %120 = and <8 x i16> %111, splat (i16 255)
  %121 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %120, <8 x i16> poison)
  %122 = bitcast <16 x i8> %121 to <2 x i64>
  %123 = extractelement <2 x i64> %122, i64 0
  %124 = mul i64 %103, 100000000
  %125 = add i64 %123, -3472328296227680304
  %126 = mul i64 %125, 10
  %127 = lshr i64 %125, 8
  %128 = add i64 %126, %127
  %129 = and i64 %128, 1095216660735
  %130 = mul i64 %129, 4294967296000100
  %131 = lshr i64 %128, 16
  %132 = and i64 %131, 1095216660735
  %133 = mul i64 %132, 42949672960001
  %134 = add i64 %133, %130
  %135 = lshr i64 %134, 32
  %136 = add i64 %135, %124
  br label %137

137:                                              ; preds = %119, %107
  %138 = phi i64 [ %103, %107 ], [ %136, %119 ]
  %139 = phi i64 [ %108, %107 ], [ %99, %119 ]
  %140 = icmp eq i64 %139, 20
  br i1 %140, label %158, label %141

141:                                              ; preds = %110, %137
  %142 = phi i64 [ %108, %110 ], [ %139, %137 ]
  %143 = phi i64 [ %103, %110 ], [ %138, %137 ]
  br label %144

144:                                              ; preds = %141, %151
  %145 = phi i64 [ %152, %151 ], [ %142, %141 ]
  %146 = phi i64 [ %156, %151 ], [ %143, %141 ]
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 %145
  %148 = load i16, ptr %147, align 2, !tbaa !5, !noalias !9
  %149 = add i16 %148, -48
  %150 = icmp ult i16 %149, 10
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = add nuw nsw i64 %145, 2
  %153 = mul i64 %146, 10
  %154 = and i16 %148, 15
  %155 = zext nneg i16 %154 to i64
  %156 = add i64 %153, %155
  %157 = icmp eq i64 %152, 20
  br i1 %157, label %158, label %144, !llvm.loop !13

158:                                              ; preds = %151, %144, %137
  %159 = phi i64 [ %138, %137 ], [ %146, %144 ], [ %156, %151 ]
  %160 = phi i64 [ 20, %137 ], [ %145, %144 ], [ 20, %151 ]
  %161 = sub nsw i64 %108, %160
  %162 = ashr exact i64 %161, 1
  %163 = sub nsw i64 %160, %108
  %164 = ashr exact i64 %163, 1
  %165 = sub nsw i64 %105, %162
  br label %166

166:                                              ; preds = %158, %98
  %167 = phi ptr [ %109, %158 ], [ null, %98 ]
  %168 = phi i64 [ %164, %158 ], [ 0, %98 ]
  %169 = phi i64 [ %159, %158 ], [ %103, %98 ]
  %170 = phi i64 [ %165, %158 ], [ %105, %98 ]
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %268, label %172

172:                                              ; preds = %166
  %173 = icmp sgt i64 %170, 19
  br i1 %173, label %174, label %268

174:                                              ; preds = %172
  %175 = load i16, ptr %1, align 16, !tbaa !5, !noalias !9
  switch i16 %175, label %234 [
    i16 48, label %176
    i16 46, label %176
  ]

176:                                              ; preds = %174, %174
  %177 = icmp eq i16 %175, 48
  %178 = sext i1 %177 to i64
  %179 = add nsw i64 %170, %178
  %180 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %181 = load i16, ptr %180, align 2, !tbaa !5, !noalias !9
  switch i16 %181, label %234 [
    i16 48, label %182
    i16 46, label %182
  ]

182:                                              ; preds = %176, %176
  %183 = icmp eq i16 %181, 48
  %184 = sext i1 %183 to i64
  %185 = add nsw i64 %179, %184
  %186 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %187 = load i16, ptr %186, align 4, !tbaa !5, !noalias !9
  switch i16 %187, label %234 [
    i16 48, label %188
    i16 46, label %188
  ]

188:                                              ; preds = %182, %182
  %189 = icmp eq i16 %187, 48
  %190 = sext i1 %189 to i64
  %191 = add nsw i64 %185, %190
  %192 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %193 = load i16, ptr %192, align 2, !tbaa !5, !noalias !9
  switch i16 %193, label %234 [
    i16 48, label %194
    i16 46, label %194
  ]

194:                                              ; preds = %188, %188
  %195 = icmp eq i16 %193, 48
  %196 = sext i1 %195 to i64
  %197 = add nsw i64 %191, %196
  %198 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %199 = load i16, ptr %198, align 8, !tbaa !5, !noalias !9
  switch i16 %199, label %234 [
    i16 48, label %200
    i16 46, label %200
  ]

200:                                              ; preds = %194, %194
  %201 = icmp eq i16 %199, 48
  %202 = sext i1 %201 to i64
  %203 = add nsw i64 %197, %202
  %204 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %205 = load i16, ptr %204, align 2, !tbaa !5, !noalias !9
  switch i16 %205, label %234 [
    i16 48, label %206
    i16 46, label %206
  ]

206:                                              ; preds = %200, %200
  %207 = icmp eq i16 %205, 48
  %208 = sext i1 %207 to i64
  %209 = add nsw i64 %203, %208
  %210 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %211 = load i16, ptr %210, align 4, !tbaa !5, !noalias !9
  switch i16 %211, label %234 [
    i16 48, label %212
    i16 46, label %212
  ]

212:                                              ; preds = %206, %206
  %213 = icmp eq i16 %211, 48
  %214 = sext i1 %213 to i64
  %215 = add nsw i64 %209, %214
  %216 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %217 = load i16, ptr %216, align 2, !tbaa !5, !noalias !9
  switch i16 %217, label %234 [
    i16 48, label %218
    i16 46, label %218
  ]

218:                                              ; preds = %212, %212
  %219 = icmp eq i16 %217, 48
  %220 = sext i1 %219 to i64
  %221 = add nsw i64 %215, %220
  %222 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %223 = load i16, ptr %222, align 16, !tbaa !5, !noalias !9
  switch i16 %223, label %234 [
    i16 48, label %224
    i16 46, label %224
  ]

224:                                              ; preds = %218, %218
  %225 = icmp eq i16 %223, 48
  %226 = sext i1 %225 to i64
  %227 = add nsw i64 %221, %226
  %228 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %229 = load i16, ptr %228, align 2, !tbaa !5, !noalias !9
  switch i16 %229, label %234 [
    i16 48, label %230
    i16 46, label %230
  ]

230:                                              ; preds = %224, %224
  %231 = icmp eq i16 %229, 48
  %232 = sext i1 %231 to i64
  %233 = add nsw i64 %227, %232
  br label %234

234:                                              ; preds = %230, %224, %218, %212, %206, %200, %194, %188, %182, %176, %174
  %235 = phi i64 [ %170, %174 ], [ %179, %176 ], [ %185, %182 ], [ %191, %188 ], [ %197, %194 ], [ %203, %200 ], [ %209, %206 ], [ %215, %212 ], [ %221, %218 ], [ %227, %224 ], [ %233, %230 ]
  %236 = icmp sgt i64 %235, 19
  br i1 %236, label %237, label %268

237:                                              ; preds = %234
  br i1 %13, label %252, label %238

238:                                              ; preds = %237, %238
  %239 = phi ptr [ %246, %238 ], [ %1, %237 ]
  %240 = phi i64 [ %245, %238 ], [ 0, %237 ]
  %241 = mul nuw i64 %240, 10
  %242 = load i16, ptr %239, align 2, !tbaa !5
  %243 = zext i16 %242 to i64
  %244 = add i64 %241, -48
  %245 = add i64 %244, %243
  %246 = getelementptr inbounds nuw i8, ptr %239, i64 2
  %247 = icmp ult i64 %245, 1000000000000000000
  %248 = icmp ne ptr %246, %100
  %249 = select i1 %247, i1 %248, i1 false
  br i1 %249, label %238, label %250, !llvm.loop !15

250:                                              ; preds = %238
  %251 = icmp ugt i64 %245, 999999999999999999
  br i1 %251, label %268, label %252

252:                                              ; preds = %237, %250
  %253 = phi i64 [ %245, %250 ], [ 0, %237 ]
  %254 = getelementptr inbounds nuw i16, ptr %167, i64 %168
  %255 = icmp eq i64 %168, 0
  br i1 %255, label %268, label %256

256:                                              ; preds = %252, %256
  %257 = phi ptr [ %264, %256 ], [ %167, %252 ]
  %258 = phi i64 [ %263, %256 ], [ %253, %252 ]
  %259 = mul nuw i64 %258, 10
  %260 = load i16, ptr %257, align 2, !tbaa !5
  %261 = zext i16 %260 to i64
  %262 = add i64 %259, -48
  %263 = add i64 %262, %261
  %264 = getelementptr inbounds nuw i8, ptr %257, i64 2
  %265 = icmp ult i64 %263, 1000000000000000000
  %266 = icmp ne ptr %264, %254
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %256, label %268, !llvm.loop !16

268:                                              ; preds = %256, %93, %252, %250, %166, %234, %172
  %269 = phi i64 [ 0, %166 ], [ %169, %234 ], [ %169, %172 ], [ %245, %250 ], [ %253, %252 ], [ %97, %93 ], [ %263, %256 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #4
  ret i64 %269
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
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN10fast_float19parse_number_stringIDsEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!11 = distinct !{!11, !"_ZN10fast_float19parse_number_stringIDsEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
