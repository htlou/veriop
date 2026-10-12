; ModuleID = 'history-eq/c/fast_float/fc0c8680/wrap.cpp'
source_filename = "history-eq/c/fast_float/fc0c8680/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.target_exponent.input = private unnamed_addr constant [10 x i8] c"1e1000000\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_exponent() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %1) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 1 dereferenceable(10) @__const.target_exponent.input, i64 10, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i8, ptr %1, align 1, !tbaa !5, !noalias !8
  %12 = add i8 %11, -58
  %13 = icmp ult i8 %12, -10
  br i1 %13, label %54, label %14

14:                                               ; preds = %0
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5, !noalias !8
  %17 = add i8 %16, -48
  %18 = icmp ult i8 %17, 10
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !5, !noalias !8
  %22 = add i8 %21, -48
  %23 = icmp ult i8 %22, 10
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !5, !noalias !8
  %27 = add i8 %26, -48
  %28 = icmp ult i8 %27, 10
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %31 = load i8, ptr %30, align 1, !tbaa !5, !noalias !8
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !8
  %37 = add i8 %36, -48
  %38 = icmp ult i8 %37, 10
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %41 = load i8, ptr %40, align 1, !tbaa !5, !noalias !8
  %42 = add i8 %41, -48
  %43 = icmp ult i8 %42, 10
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %46 = load i8, ptr %45, align 1, !tbaa !5, !noalias !8
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %51 = load i8, ptr %50, align 1, !tbaa !5, !noalias !8
  %52 = add i8 %51, -48
  %53 = icmp ult i8 %52, 10
  br i1 %53, label %304, label %54

54:                                               ; preds = %49, %44, %39, %34, %29, %24, %19, %14, %0
  %55 = phi i1 [ true, %0 ], [ false, %14 ], [ true, %19 ], [ true, %24 ], [ true, %29 ], [ true, %34 ], [ true, %39 ], [ true, %44 ], [ true, %49 ]
  %56 = phi ptr [ %1, %0 ], [ %3, %14 ], [ %4, %19 ], [ %5, %24 ], [ %6, %29 ], [ %7, %34 ], [ %8, %39 ], [ %9, %44 ], [ %10, %49 ]
  %57 = phi i1 [ true, %0 ], [ true, %14 ], [ false, %19 ], [ true, %24 ], [ true, %29 ], [ true, %34 ], [ true, %39 ], [ true, %44 ], [ true, %49 ]
  %58 = phi i1 [ true, %0 ], [ true, %14 ], [ true, %19 ], [ false, %24 ], [ true, %29 ], [ true, %34 ], [ true, %39 ], [ true, %44 ], [ true, %49 ]
  %59 = phi i1 [ true, %0 ], [ true, %14 ], [ true, %19 ], [ true, %24 ], [ false, %29 ], [ true, %34 ], [ true, %39 ], [ true, %44 ], [ true, %49 ]
  %60 = phi i1 [ true, %0 ], [ true, %14 ], [ true, %19 ], [ true, %24 ], [ true, %29 ], [ false, %34 ], [ true, %39 ], [ true, %44 ], [ true, %49 ]
  %61 = phi i1 [ true, %0 ], [ true, %14 ], [ true, %19 ], [ true, %24 ], [ true, %29 ], [ true, %34 ], [ false, %39 ], [ true, %44 ], [ true, %49 ]
  %62 = phi i1 [ true, %0 ], [ true, %14 ], [ true, %19 ], [ true, %24 ], [ true, %29 ], [ true, %34 ], [ true, %39 ], [ false, %44 ], [ true, %49 ]
  %63 = phi i64 [ 0, %0 ], [ 1, %14 ], [ 2, %19 ], [ 3, %24 ], [ 4, %29 ], [ 5, %34 ], [ 6, %39 ], [ 7, %44 ], [ 8, %49 ]
  %64 = phi i8 [ %11, %0 ], [ %16, %14 ], [ %21, %19 ], [ %26, %24 ], [ %31, %29 ], [ %36, %34 ], [ %41, %39 ], [ %46, %44 ], [ %51, %49 ]
  %65 = icmp eq i8 %64, 46
  br i1 %65, label %66, label %95

66:                                               ; preds = %54
  %67 = add nuw nsw i64 %63, 1
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 %67
  br i1 %13, label %69, label %77

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 %67
  %71 = load i64, ptr %70, align 1
  %72 = add i64 %71, 5063812098665367110
  %73 = add i64 %71, -3472328296227680304
  %74 = or i64 %72, %73
  %75 = and i64 %74, -9187201950435737472
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %90, label %79

77:                                               ; preds = %66
  %78 = icmp eq i64 %67, 9
  br i1 %78, label %90, label %79

79:                                               ; preds = %69, %77
  %80 = phi i64 [ 1, %69 ], [ %67, %77 ]
  br label %81

81:                                               ; preds = %79, %87
  %82 = phi i64 [ %88, %87 ], [ %80, %79 ]
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !5, !noalias !8
  %85 = add i8 %84, -48
  %86 = icmp ult i8 %85, 10
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = add nuw nsw i64 %82, 1
  %89 = icmp eq i64 %88, 9
  br i1 %89, label %90, label %81, !llvm.loop !11

90:                                               ; preds = %87, %81, %69, %77
  %91 = phi i64 [ 9, %77 ], [ 9, %69 ], [ %82, %81 ], [ 9, %87 ]
  %92 = sub nsw i64 %67, %91
  %93 = sub nsw i64 %91, %67
  %94 = sub nsw i64 %63, %92
  br label %95

95:                                               ; preds = %90, %54
  %96 = phi ptr [ %68, %90 ], [ null, %54 ]
  %97 = phi i64 [ %93, %90 ], [ 0, %54 ]
  %98 = phi i64 [ %92, %90 ], [ 0, %54 ]
  %99 = phi i64 [ %94, %90 ], [ %63, %54 ]
  %100 = phi i64 [ %91, %90 ], [ %63, %54 ]
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 %100
  %102 = icmp eq i64 %99, 0
  br i1 %102, label %304, label %103

103:                                              ; preds = %95
  %104 = icmp eq i64 %100, 9
  br i1 %104, label %147, label %105

105:                                              ; preds = %103
  %106 = load i8, ptr %101, align 1, !tbaa !5, !noalias !8
  switch i8 %106, label %147 [
    i8 101, label %107
    i8 69, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = add nuw nsw i64 %100, 1
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 %108
  %110 = icmp eq i64 %108, 9
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = load i8, ptr %109, align 1, !tbaa !5, !noalias !8
  %113 = icmp eq i8 %112, 45
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = getelementptr inbounds nuw i8, ptr %101, i64 2
  br label %120

116:                                              ; preds = %111
  %117 = icmp eq i8 %112, 43
  %118 = getelementptr inbounds nuw i8, ptr %101, i64 2
  %119 = select i1 %117, ptr %118, ptr %109
  br label %120

120:                                              ; preds = %116, %114, %107
  %121 = phi i1 [ true, %114 ], [ false, %116 ], [ false, %107 ]
  %122 = phi ptr [ %115, %114 ], [ %119, %116 ], [ %109, %107 ]
  %123 = icmp eq ptr %122, %2
  br i1 %123, label %147, label %124

124:                                              ; preds = %120
  %125 = load i8, ptr %122, align 1, !tbaa !5, !noalias !8
  %126 = add i8 %125, -48
  %127 = icmp ult i8 %126, 10
  br i1 %127, label %128, label %147

128:                                              ; preds = %124, %134
  %129 = phi ptr [ %140, %134 ], [ %122, %124 ]
  %130 = phi i64 [ %139, %134 ], [ 0, %124 ]
  %131 = load i8, ptr %129, align 1, !tbaa !5, !noalias !8
  %132 = add i8 %131, -48
  %133 = icmp ult i8 %132, 10
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = icmp slt i64 %130, 268435456
  %136 = mul nsw i64 %130, 10
  %137 = zext nneg i8 %132 to i64
  %138 = add nsw i64 %136, %137
  %139 = select i1 %135, i64 %138, i64 %130
  %140 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %141 = icmp eq ptr %140, %2
  br i1 %141, label %142, label %128, !llvm.loop !13

142:                                              ; preds = %134, %128
  %143 = phi i64 [ %139, %134 ], [ %130, %128 ]
  %144 = sub nsw i64 0, %143
  %145 = select i1 %121, i64 %144, i64 %143
  %146 = add nsw i64 %145, %98
  br label %147

147:                                              ; preds = %105, %103, %142, %124, %120
  %148 = phi i64 [ %145, %142 ], [ 0, %124 ], [ 0, %120 ], [ 0, %103 ], [ 0, %105 ]
  %149 = phi i64 [ %146, %142 ], [ %98, %124 ], [ %98, %120 ], [ %98, %103 ], [ %98, %105 ]
  %150 = icmp sgt i64 %99, 19
  br i1 %150, label %151, label %304

151:                                              ; preds = %147
  %152 = load i8, ptr %1, align 1, !tbaa !5, !noalias !8
  switch i8 %152, label %205 [
    i8 48, label %153
    i8 46, label %153
  ]

153:                                              ; preds = %151, %151
  %154 = icmp eq i8 %152, 48
  %155 = sext i1 %154 to i64
  %156 = add nsw i64 %99, %155
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %158 = load i8, ptr %157, align 1, !tbaa !5, !noalias !8
  switch i8 %158, label %205 [
    i8 48, label %159
    i8 46, label %159
  ]

159:                                              ; preds = %153, %153
  %160 = icmp eq i8 %158, 48
  %161 = sext i1 %160 to i64
  %162 = add nsw i64 %156, %161
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %164 = load i8, ptr %163, align 1, !tbaa !5, !noalias !8
  switch i8 %164, label %205 [
    i8 48, label %165
    i8 46, label %165
  ]

165:                                              ; preds = %159, %159
  %166 = icmp eq i8 %164, 48
  %167 = sext i1 %166 to i64
  %168 = add nsw i64 %162, %167
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %170 = load i8, ptr %169, align 1, !tbaa !5, !noalias !8
  switch i8 %170, label %205 [
    i8 48, label %171
    i8 46, label %171
  ]

171:                                              ; preds = %165, %165
  %172 = icmp eq i8 %170, 48
  %173 = sext i1 %172 to i64
  %174 = add nsw i64 %168, %173
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %176 = load i8, ptr %175, align 1, !tbaa !5, !noalias !8
  switch i8 %176, label %205 [
    i8 48, label %177
    i8 46, label %177
  ]

177:                                              ; preds = %171, %171
  %178 = icmp eq i8 %176, 48
  %179 = sext i1 %178 to i64
  %180 = add nsw i64 %174, %179
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %182 = load i8, ptr %181, align 1, !tbaa !5, !noalias !8
  switch i8 %182, label %205 [
    i8 48, label %183
    i8 46, label %183
  ]

183:                                              ; preds = %177, %177
  %184 = icmp eq i8 %182, 48
  %185 = sext i1 %184 to i64
  %186 = add nsw i64 %180, %185
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %188 = load i8, ptr %187, align 1, !tbaa !5, !noalias !8
  switch i8 %188, label %205 [
    i8 48, label %189
    i8 46, label %189
  ]

189:                                              ; preds = %183, %183
  %190 = icmp eq i8 %188, 48
  %191 = sext i1 %190 to i64
  %192 = add nsw i64 %186, %191
  %193 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %194 = load i8, ptr %193, align 1, !tbaa !5, !noalias !8
  switch i8 %194, label %205 [
    i8 48, label %195
    i8 46, label %195
  ]

195:                                              ; preds = %189, %189
  %196 = icmp eq i8 %194, 48
  %197 = sext i1 %196 to i64
  %198 = add nsw i64 %192, %197
  %199 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %200 = load i8, ptr %199, align 1, !tbaa !5, !noalias !8
  switch i8 %200, label %205 [
    i8 48, label %201
    i8 46, label %201
  ]

201:                                              ; preds = %195, %195
  %202 = icmp eq i8 %200, 48
  %203 = sext i1 %202 to i64
  %204 = add nsw i64 %198, %203
  br label %205

205:                                              ; preds = %201, %195, %189, %183, %177, %171, %165, %159, %153, %151
  %206 = phi i64 [ %99, %151 ], [ %156, %153 ], [ %162, %159 ], [ %168, %165 ], [ %174, %171 ], [ %180, %177 ], [ %186, %183 ], [ %192, %189 ], [ %198, %195 ], [ %204, %201 ]
  %207 = icmp sgt i64 %206, 19
  br i1 %207, label %208, label %304

208:                                              ; preds = %205
  br i1 %13, label %281, label %209

209:                                              ; preds = %208
  %210 = load i8, ptr %1, align 1, !tbaa !5
  %211 = sext i8 %210 to i64
  %212 = add nsw i64 %211, -48
  %213 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %214 = icmp ult i64 %212, 1000000000000000000
  %215 = and i1 %214, %55
  br i1 %215, label %216, label %277, !llvm.loop !14

216:                                              ; preds = %209
  %217 = mul nuw nsw i64 %212, 10
  %218 = load i8, ptr %213, align 1, !tbaa !5
  %219 = sext i8 %218 to i64
  %220 = add nsw i64 %217, -48
  %221 = add nsw i64 %220, %219
  %222 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %223 = icmp ult i64 %221, 1000000000000000000
  %224 = and i1 %223, %57
  br i1 %224, label %225, label %277, !llvm.loop !14

225:                                              ; preds = %216
  %226 = mul nuw nsw i64 %221, 10
  %227 = load i8, ptr %222, align 1, !tbaa !5
  %228 = sext i8 %227 to i64
  %229 = add nsw i64 %226, -48
  %230 = add i64 %229, %228
  %231 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %232 = icmp ult i64 %230, 1000000000000000000
  %233 = and i1 %232, %58
  br i1 %233, label %234, label %277, !llvm.loop !14

234:                                              ; preds = %225
  %235 = mul nuw i64 %230, 10
  %236 = load i8, ptr %231, align 1, !tbaa !5
  %237 = sext i8 %236 to i64
  %238 = add i64 %235, -48
  %239 = add i64 %238, %237
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %241 = icmp ult i64 %239, 1000000000000000000
  %242 = and i1 %241, %59
  br i1 %242, label %243, label %277, !llvm.loop !14

243:                                              ; preds = %234
  %244 = mul nuw i64 %239, 10
  %245 = load i8, ptr %240, align 1, !tbaa !5
  %246 = sext i8 %245 to i64
  %247 = add i64 %244, -48
  %248 = add i64 %247, %246
  %249 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %250 = icmp ult i64 %248, 1000000000000000000
  %251 = and i1 %250, %60
  br i1 %251, label %252, label %277, !llvm.loop !14

252:                                              ; preds = %243
  %253 = mul nuw i64 %248, 10
  %254 = load i8, ptr %249, align 1, !tbaa !5
  %255 = sext i8 %254 to i64
  %256 = add i64 %253, -48
  %257 = add i64 %256, %255
  %258 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %259 = icmp ult i64 %257, 1000000000000000000
  %260 = and i1 %259, %61
  br i1 %260, label %261, label %277, !llvm.loop !14

261:                                              ; preds = %252
  %262 = mul nuw i64 %257, 10
  %263 = load i8, ptr %258, align 1, !tbaa !5
  %264 = sext i8 %263 to i64
  %265 = add i64 %262, -48
  %266 = add i64 %265, %264
  %267 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %268 = icmp ult i64 %266, 1000000000000000000
  %269 = and i1 %268, %62
  br i1 %269, label %270, label %277, !llvm.loop !14

270:                                              ; preds = %261
  %271 = mul nuw i64 %266, 10
  %272 = load i8, ptr %267, align 1, !tbaa !5
  %273 = sext i8 %272 to i64
  %274 = add i64 %271, -48
  %275 = add i64 %274, %273
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %277

277:                                              ; preds = %270, %261, %252, %243, %234, %225, %216, %209
  %278 = phi i64 [ %212, %209 ], [ %221, %216 ], [ %230, %225 ], [ %239, %234 ], [ %248, %243 ], [ %257, %252 ], [ %266, %261 ], [ %275, %270 ]
  %279 = phi ptr [ %213, %209 ], [ %222, %216 ], [ %231, %225 ], [ %240, %234 ], [ %249, %243 ], [ %258, %252 ], [ %267, %261 ], [ %276, %270 ]
  %280 = icmp ugt i64 %278, 999999999999999999
  br i1 %280, label %297, label %281

281:                                              ; preds = %208, %277
  %282 = phi i64 [ %278, %277 ], [ 0, %208 ]
  %283 = getelementptr inbounds nuw i8, ptr %96, i64 %97
  %284 = icmp samesign eq i64 %97, 0
  br i1 %284, label %297, label %285

285:                                              ; preds = %281, %285
  %286 = phi ptr [ %293, %285 ], [ %96, %281 ]
  %287 = phi i64 [ %292, %285 ], [ %282, %281 ]
  %288 = mul nuw i64 %287, 10
  %289 = load i8, ptr %286, align 1, !tbaa !5
  %290 = sext i8 %289 to i64
  %291 = add i64 %288, -48
  %292 = add i64 %291, %290
  %293 = getelementptr inbounds nuw i8, ptr %286, i64 1
  %294 = icmp ult i64 %292, 1000000000000000000
  %295 = icmp ne ptr %293, %283
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %285, label %297, !llvm.loop !15

297:                                              ; preds = %285, %281, %277
  %298 = phi ptr [ %279, %277 ], [ %96, %281 ], [ %293, %285 ]
  %299 = phi ptr [ %56, %277 ], [ %96, %281 ], [ %96, %285 ]
  %300 = ptrtoint ptr %299 to i64
  %301 = ptrtoint ptr %298 to i64
  %302 = sub i64 %300, %301
  %303 = add nsw i64 %302, %148
  br label %304

304:                                              ; preds = %49, %147, %205, %297, %95
  %305 = phi i64 [ 0, %95 ], [ %149, %147 ], [ %303, %297 ], [ %149, %205 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %1) #3
  ret i64 %305
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
