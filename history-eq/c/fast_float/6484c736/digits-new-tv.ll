; ModuleID = 'history-eq/c/fast_float/6484c736/digits.cpp'
source_filename = "history-eq/c/fast_float/6484c736/digits.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_eight_digits(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = and i32 %0, 15
  %5 = icmp samesign ult i32 %4, 10
  %6 = add nuw nsw i32 %4, 250
  %7 = select i1 %5, i32 %4, i32 %6
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, 48
  store i8 %9, ptr %2, align 1
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
  store i8 %33, ptr %34, align 1
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
  br i1 %49, label %50, label %264

50:                                               ; preds = %1, %43
  %51 = phi ptr [ %3, %43 ], [ %2, %1 ]
  %52 = phi ptr [ %45, %43 ], [ %2, %1 ]
  %53 = phi ptr [ %44, %43 ], [ %2, %1 ]
  %54 = phi i64 [ 1, %43 ], [ 0, %1 ]
  %55 = load i8, ptr %53, align 1
  %56 = add i8 %55, -48
  %57 = icmp ult i8 %56, 10
  br i1 %57, label %58, label %133

58:                                               ; preds = %50
  %59 = zext nneg i8 %55 to i64
  %60 = add nsw i64 %59, -48
  %61 = add nuw nsw i64 %54, 1
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = add i8 %63, -48
  %65 = icmp ult i8 %64, 10
  br i1 %65, label %66, label %133

66:                                               ; preds = %58
  %67 = mul nuw nsw i64 %60, 10
  %68 = zext nneg i8 %63 to i64
  %69 = add nsw i64 %67, -48
  %70 = add nsw i64 %69, %68
  %71 = or disjoint i64 %54, 2
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = add i8 %73, -48
  %75 = icmp ult i8 %74, 10
  br i1 %75, label %76, label %133

76:                                               ; preds = %66
  %77 = mul nsw i64 %70, 10
  %78 = zext nneg i8 %73 to i64
  %79 = add nsw i64 %77, -48
  %80 = add i64 %79, %78
  %81 = add nuw nsw i64 %54, 3
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = load i8, ptr %82, align 1
  %84 = add i8 %83, -48
  %85 = icmp ult i8 %84, 10
  br i1 %85, label %86, label %133

86:                                               ; preds = %76
  %87 = mul i64 %80, 10
  %88 = zext nneg i8 %83 to i64
  %89 = add i64 %87, -48
  %90 = add i64 %89, %88
  %91 = or disjoint i64 %54, 4
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = add i8 %93, -48
  %95 = icmp ult i8 %94, 10
  br i1 %95, label %96, label %133

96:                                               ; preds = %86
  %97 = mul i64 %90, 10
  %98 = zext nneg i8 %93 to i64
  %99 = add i64 %97, -48
  %100 = add i64 %99, %98
  %101 = add nuw nsw i64 %54, 5
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = add i8 %103, -48
  %105 = icmp ult i8 %104, 10
  br i1 %105, label %106, label %133

106:                                              ; preds = %96
  %107 = mul i64 %100, 10
  %108 = zext nneg i8 %103 to i64
  %109 = add i64 %107, -48
  %110 = add i64 %109, %108
  %111 = or disjoint i64 %54, 6
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = add i8 %113, -48
  %115 = icmp ult i8 %114, 10
  br i1 %115, label %116, label %133

116:                                              ; preds = %106
  %117 = mul i64 %110, 10
  %118 = zext nneg i8 %113 to i64
  %119 = add i64 %117, -48
  %120 = add i64 %119, %118
  %121 = add nuw nsw i64 %54, 7
  %122 = icmp eq i64 %121, 8
  br i1 %122, label %264, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 %121
  %125 = load i8, ptr %124, align 1
  %126 = add i8 %125, -48
  %127 = icmp ult i8 %126, 10
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = mul i64 %120, 10
  %130 = zext nneg i8 %125 to i64
  %131 = add i64 %129, -48
  %132 = add i64 %131, %130
  br label %264

133:                                              ; preds = %123, %106, %96, %86, %76, %66, %58, %50
  %134 = phi i64 [ %54, %50 ], [ %61, %58 ], [ %71, %66 ], [ %81, %76 ], [ %91, %86 ], [ %101, %96 ], [ %111, %106 ], [ %121, %123 ]
  %135 = phi i64 [ 0, %50 ], [ %60, %58 ], [ %70, %66 ], [ %80, %76 ], [ %90, %86 ], [ %100, %96 ], [ %110, %106 ], [ %120, %123 ]
  %136 = phi i8 [ %55, %50 ], [ %63, %58 ], [ %73, %66 ], [ %83, %76 ], [ %93, %86 ], [ %103, %96 ], [ %113, %106 ], [ %125, %123 ]
  %137 = sub nsw i64 %134, %54
  %138 = icmp eq i8 %136, 46
  br i1 %138, label %139, label %163

139:                                              ; preds = %133
  %140 = add nuw nsw i64 %134, 1
  %141 = getelementptr inbounds nuw i8, ptr %2, i64 %140
  %142 = icmp eq i64 %140, 8
  br i1 %142, label %156, label %143

143:                                              ; preds = %139, %150
  %144 = phi i64 [ %151, %150 ], [ %140, %139 ]
  %145 = phi i64 [ %154, %150 ], [ %135, %139 ]
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %144
  %147 = load i8, ptr %146, align 1
  %148 = add i8 %147, -48
  %149 = icmp ult i8 %148, 10
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = add nuw nsw i64 %144, 1
  %152 = mul i64 %145, 10
  %153 = zext nneg i8 %148 to i64
  %154 = add i64 %152, %153
  %155 = icmp eq i64 %151, 8
  br i1 %155, label %156, label %143

156:                                              ; preds = %150, %143, %139
  %157 = phi i64 [ %135, %139 ], [ %145, %143 ], [ %154, %150 ]
  %158 = phi i64 [ 8, %139 ], [ %144, %143 ], [ 8, %150 ]
  %159 = xor i64 %134, -1
  %160 = sub nsw i64 %158, %140
  %161 = add i64 %137, %159
  %162 = add i64 %161, %158
  br label %163

163:                                              ; preds = %156, %133
  %164 = phi ptr [ %141, %156 ], [ null, %133 ]
  %165 = phi i64 [ %160, %156 ], [ 0, %133 ]
  %166 = phi i64 [ %162, %156 ], [ %137, %133 ]
  %167 = phi i64 [ %157, %156 ], [ %135, %133 ]
  %168 = icmp eq i64 %166, 0
  br i1 %168, label %264, label %169

169:                                              ; preds = %163
  %170 = icmp sgt i64 %166, 19
  br i1 %170, label %171, label %264

171:                                              ; preds = %169
  %172 = load i8, ptr %52, align 1
  switch i8 %172, label %228 [
    i8 48, label %173
    i8 46, label %173
  ]

173:                                              ; preds = %171, %171
  %174 = icmp eq i8 %172, 48
  %175 = sext i1 %174 to i64
  %176 = add nsw i64 %166, %175
  %177 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %179 = load i8, ptr %178, align 1
  switch i8 %179, label %228 [
    i8 48, label %180
    i8 46, label %180
  ]

180:                                              ; preds = %173, %173
  %181 = icmp eq i8 %179, 48
  %182 = sext i1 %181 to i64
  %183 = add nsw i64 %176, %182
  %184 = or disjoint i64 %54, 2
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 %184
  %186 = load i8, ptr %185, align 1
  switch i8 %186, label %228 [
    i8 48, label %187
    i8 46, label %187
  ]

187:                                              ; preds = %180, %180
  %188 = icmp eq i8 %186, 48
  %189 = sext i1 %188 to i64
  %190 = add nsw i64 %183, %189
  %191 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 3
  %193 = load i8, ptr %192, align 1
  switch i8 %193, label %228 [
    i8 48, label %194
    i8 46, label %194
  ]

194:                                              ; preds = %187, %187
  %195 = icmp eq i8 %193, 48
  %196 = sext i1 %195 to i64
  %197 = add nsw i64 %190, %196
  %198 = or disjoint i64 %54, 4
  %199 = getelementptr inbounds nuw i8, ptr %2, i64 %198
  %200 = load i8, ptr %199, align 1
  switch i8 %200, label %228 [
    i8 48, label %201
    i8 46, label %201
  ]

201:                                              ; preds = %194, %194
  %202 = icmp eq i8 %200, 48
  %203 = sext i1 %202 to i64
  %204 = add nsw i64 %197, %203
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 5
  %207 = load i8, ptr %206, align 1
  switch i8 %207, label %228 [
    i8 48, label %208
    i8 46, label %208
  ]

208:                                              ; preds = %201, %201
  %209 = icmp eq i8 %207, 48
  %210 = sext i1 %209 to i64
  %211 = add nsw i64 %204, %210
  %212 = or disjoint i64 %54, 6
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 %212
  %214 = load i8, ptr %213, align 1
  switch i8 %214, label %228 [
    i8 48, label %215
    i8 46, label %215
  ]

215:                                              ; preds = %208, %208
  %216 = icmp eq i8 %214, 48
  %217 = sext i1 %216 to i64
  %218 = add nsw i64 %211, %217
  %219 = add nuw nsw i64 %54, 7
  %220 = icmp eq i64 %219, 8
  br i1 %220, label %228, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 %219
  %223 = load i8, ptr %222, align 1
  switch i8 %223, label %228 [
    i8 48, label %224
    i8 46, label %224
  ]

224:                                              ; preds = %221, %221
  %225 = icmp eq i8 %223, 48
  %226 = sext i1 %225 to i64
  %227 = add nsw i64 %218, %226
  br label %228

228:                                              ; preds = %224, %221, %215, %208, %201, %194, %187, %180, %173, %171
  %229 = phi i64 [ %166, %171 ], [ %176, %173 ], [ %183, %180 ], [ %190, %187 ], [ %197, %194 ], [ %204, %201 ], [ %211, %208 ], [ %218, %215 ], [ %218, %221 ], [ %227, %224 ]
  %230 = icmp sgt i64 %229, 19
  br i1 %230, label %231, label %264

231:                                              ; preds = %228
  %232 = getelementptr inbounds nuw i8, ptr %51, i64 %137
  %233 = icmp samesign eq i64 %137, 0
  br i1 %233, label %248, label %234

234:                                              ; preds = %231, %234
  %235 = phi ptr [ %242, %234 ], [ %51, %231 ]
  %236 = phi i64 [ %241, %234 ], [ 0, %231 ]
  %237 = mul nuw i64 %236, 10
  %238 = load i8, ptr %235, align 1
  %239 = sext i8 %238 to i64
  %240 = add i64 %237, -48
  %241 = add i64 %240, %239
  %242 = getelementptr inbounds nuw i8, ptr %235, i64 1
  %243 = icmp ult i64 %241, 1000000000000000000
  %244 = icmp ne ptr %242, %232
  %245 = select i1 %243, i1 %244, i1 false
  br i1 %245, label %234, label %246

246:                                              ; preds = %234
  %247 = icmp ugt i64 %241, 999999999999999999
  br i1 %247, label %264, label %248

248:                                              ; preds = %231, %246
  %249 = phi i64 [ %241, %246 ], [ 0, %231 ]
  %250 = getelementptr inbounds nuw i8, ptr %164, i64 %165
  %251 = icmp samesign eq i64 %165, 0
  br i1 %251, label %264, label %252

252:                                              ; preds = %248, %252
  %253 = phi ptr [ %260, %252 ], [ %164, %248 ]
  %254 = phi i64 [ %259, %252 ], [ %249, %248 ]
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

264:                                              ; preds = %116, %128, %252, %248, %246, %43, %169, %228, %163
  %265 = phi i64 [ 0, %163 ], [ %167, %169 ], [ %167, %228 ], [ 0, %43 ], [ %241, %246 ], [ %249, %248 ], [ %259, %252 ], [ %120, %116 ], [ %132, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %265
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
