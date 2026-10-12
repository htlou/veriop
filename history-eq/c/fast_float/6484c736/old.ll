; ModuleID = 'history-eq/c/fast_float/6484c736/wrap.cpp'
source_filename = "history-eq/c/fast_float/6484c736/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_Z11parse_fieldILi0EEmm = comdat any

$_Z11parse_fieldILi1EEmm = comdat any

$_Z11parse_fieldILi2EEmm = comdat any

$_Z11parse_fieldILi3EEmm = comdat any

$_Z11parse_fieldILi4EEmm = comdat any

$_Z11parse_fieldILi5EEmm = comdat any

$_Z11parse_fieldILi6EEmm = comdat any

$_Z11parse_fieldILi7EEmm = comdat any

$_Z11parse_fieldILi8EEmm = comdat any

$_Z11parse_fieldILi9EEmm = comdat any

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_mantissa(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi0EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi0EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %11 = add i8 %9, -48
  %12 = icmp ult i8 %11, 10
  %13 = icmp eq i8 %9, 46
  %14 = or i1 %13, %12
  br i1 %14, label %33, label %247

15:                                               ; preds = %1
  %16 = load i64, ptr %2, align 8
  %17 = add i64 %16, 5063812098665367110
  %18 = add i64 %16, -3472328296227680304
  %19 = or i64 %17, %18
  %20 = and i64 %19, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = mul i64 %18, 10
  %24 = lshr i64 %18, 8
  %25 = add i64 %23, %24
  %26 = and i64 %25, 1095216660735
  %27 = mul i64 %26, 4294967296000100
  %28 = lshr i64 %25, 16
  %29 = and i64 %28, 1095216660735
  %30 = mul i64 %29, 42949672960001
  %31 = add i64 %30, %27
  %32 = lshr i64 %31, 32
  br label %247

33:                                               ; preds = %15, %5
  %34 = phi ptr [ %2, %15 ], [ %7, %5 ]
  %35 = phi ptr [ %2, %15 ], [ %6, %5 ]
  %36 = phi i64 [ 0, %15 ], [ 1, %5 ]
  %37 = phi ptr [ %2, %15 ], [ %10, %5 ]
  %38 = load i8, ptr %35, align 1, !tbaa !5, !noalias !8
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %116

41:                                               ; preds = %33
  %42 = zext nneg i8 %38 to i64
  %43 = add nsw i64 %42, -48
  %44 = add nuw nsw i64 %36, 1
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5, !noalias !8
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %49, label %116

49:                                               ; preds = %41
  %50 = mul nuw nsw i64 %43, 10
  %51 = zext nneg i8 %46 to i64
  %52 = add nsw i64 %50, -48
  %53 = add nsw i64 %52, %51
  %54 = or disjoint i64 %36, 2
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !5, !noalias !8
  %57 = add i8 %56, -48
  %58 = icmp ult i8 %57, 10
  br i1 %58, label %59, label %116

59:                                               ; preds = %49
  %60 = mul nsw i64 %53, 10
  %61 = zext nneg i8 %56 to i64
  %62 = add nsw i64 %60, -48
  %63 = add i64 %62, %61
  %64 = add nuw nsw i64 %36, 3
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !5, !noalias !8
  %67 = add i8 %66, -48
  %68 = icmp ult i8 %67, 10
  br i1 %68, label %69, label %116

69:                                               ; preds = %59
  %70 = mul i64 %63, 10
  %71 = zext nneg i8 %66 to i64
  %72 = add i64 %70, -48
  %73 = add i64 %72, %71
  %74 = or disjoint i64 %36, 4
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !5, !noalias !8
  %77 = add i8 %76, -48
  %78 = icmp ult i8 %77, 10
  br i1 %78, label %79, label %116

79:                                               ; preds = %69
  %80 = mul i64 %73, 10
  %81 = zext nneg i8 %76 to i64
  %82 = add i64 %80, -48
  %83 = add i64 %82, %81
  %84 = add nuw nsw i64 %36, 5
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !5, !noalias !8
  %87 = add i8 %86, -48
  %88 = icmp ult i8 %87, 10
  br i1 %88, label %89, label %116

89:                                               ; preds = %79
  %90 = mul i64 %83, 10
  %91 = zext nneg i8 %86 to i64
  %92 = add i64 %90, -48
  %93 = add i64 %92, %91
  %94 = or disjoint i64 %36, 6
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !5, !noalias !8
  %97 = add i8 %96, -48
  %98 = icmp ult i8 %97, 10
  br i1 %98, label %99, label %116

99:                                               ; preds = %89
  %100 = mul i64 %93, 10
  %101 = zext nneg i8 %96 to i64
  %102 = add i64 %100, -48
  %103 = add i64 %102, %101
  %104 = add nuw nsw i64 %36, 7
  %105 = icmp eq i64 %104, 8
  br i1 %105, label %247, label %106, !llvm.loop !11

106:                                              ; preds = %99
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %108 = load i8, ptr %107, align 1, !tbaa !5, !noalias !8
  %109 = add i8 %108, -48
  %110 = icmp ult i8 %109, 10
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = mul i64 %103, 10
  %113 = zext nneg i8 %108 to i64
  %114 = add i64 %112, -48
  %115 = add i64 %114, %113
  br label %247

116:                                              ; preds = %106, %89, %79, %69, %59, %49, %41, %33
  %117 = phi i64 [ %36, %33 ], [ %44, %41 ], [ %54, %49 ], [ %64, %59 ], [ %74, %69 ], [ %84, %79 ], [ %94, %89 ], [ %104, %106 ]
  %118 = phi i64 [ 0, %33 ], [ %43, %41 ], [ %53, %49 ], [ %63, %59 ], [ %73, %69 ], [ %83, %79 ], [ %93, %89 ], [ %103, %106 ]
  %119 = phi i8 [ %38, %33 ], [ %46, %41 ], [ %56, %49 ], [ %66, %59 ], [ %76, %69 ], [ %86, %79 ], [ %96, %89 ], [ %108, %106 ]
  %120 = sub nsw i64 %117, %36
  %121 = icmp eq i8 %119, 46
  br i1 %121, label %122, label %146

122:                                              ; preds = %116
  %123 = add nuw nsw i64 %117, 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 %123
  %125 = icmp eq i64 %123, 8
  br i1 %125, label %139, label %126

126:                                              ; preds = %122, %133
  %127 = phi i64 [ %134, %133 ], [ %123, %122 ]
  %128 = phi i64 [ %137, %133 ], [ %118, %122 ]
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %127
  %130 = load i8, ptr %129, align 1, !tbaa !5, !noalias !8
  %131 = add i8 %130, -48
  %132 = icmp ult i8 %131, 10
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = add nuw nsw i64 %127, 1
  %135 = mul i64 %128, 10
  %136 = zext nneg i8 %131 to i64
  %137 = add i64 %135, %136
  %138 = icmp eq i64 %134, 8
  br i1 %138, label %139, label %126, !llvm.loop !13

139:                                              ; preds = %133, %126, %122
  %140 = phi i64 [ %118, %122 ], [ %128, %126 ], [ %137, %133 ]
  %141 = phi i64 [ 8, %122 ], [ %127, %126 ], [ 8, %133 ]
  %142 = xor i64 %117, -1
  %143 = sub nsw i64 %141, %123
  %144 = add i64 %120, %142
  %145 = add i64 %144, %141
  br label %146

146:                                              ; preds = %139, %116
  %147 = phi ptr [ %124, %139 ], [ null, %116 ]
  %148 = phi i64 [ %143, %139 ], [ 0, %116 ]
  %149 = phi i64 [ %145, %139 ], [ %120, %116 ]
  %150 = phi i64 [ %140, %139 ], [ %118, %116 ]
  %151 = icmp eq i64 %149, 0
  br i1 %151, label %247, label %152

152:                                              ; preds = %146
  %153 = icmp sgt i64 %149, 19
  br i1 %153, label %154, label %247

154:                                              ; preds = %152
  %155 = load i8, ptr %34, align 1, !tbaa !5, !noalias !8
  switch i8 %155, label %211 [
    i8 48, label %156
    i8 46, label %156
  ]

156:                                              ; preds = %154, %154
  %157 = icmp eq i8 %155, 48
  %158 = sext i1 %157 to i64
  %159 = add nsw i64 %149, %158
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %162 = load i8, ptr %161, align 1, !tbaa !5, !noalias !8
  switch i8 %162, label %211 [
    i8 48, label %163
    i8 46, label %163
  ]

163:                                              ; preds = %156, %156
  %164 = icmp eq i8 %162, 48
  %165 = sext i1 %164 to i64
  %166 = add nsw i64 %159, %165
  %167 = or disjoint i64 %36, 2
  %168 = getelementptr inbounds nuw i8, ptr %2, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !5, !noalias !8
  switch i8 %169, label %211 [
    i8 48, label %170
    i8 46, label %170
  ]

170:                                              ; preds = %163, %163
  %171 = icmp eq i8 %169, 48
  %172 = sext i1 %171 to i64
  %173 = add nsw i64 %166, %172
  %174 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 3
  %176 = load i8, ptr %175, align 1, !tbaa !5, !noalias !8
  switch i8 %176, label %211 [
    i8 48, label %177
    i8 46, label %177
  ]

177:                                              ; preds = %170, %170
  %178 = icmp eq i8 %176, 48
  %179 = sext i1 %178 to i64
  %180 = add nsw i64 %173, %179
  %181 = or disjoint i64 %36, 4
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !5, !noalias !8
  switch i8 %183, label %211 [
    i8 48, label %184
    i8 46, label %184
  ]

184:                                              ; preds = %177, %177
  %185 = icmp eq i8 %183, 48
  %186 = sext i1 %185 to i64
  %187 = add nsw i64 %180, %186
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 5
  %190 = load i8, ptr %189, align 1, !tbaa !5, !noalias !8
  switch i8 %190, label %211 [
    i8 48, label %191
    i8 46, label %191
  ]

191:                                              ; preds = %184, %184
  %192 = icmp eq i8 %190, 48
  %193 = sext i1 %192 to i64
  %194 = add nsw i64 %187, %193
  %195 = or disjoint i64 %36, 6
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !5, !noalias !8
  switch i8 %197, label %211 [
    i8 48, label %198
    i8 46, label %198
  ]

198:                                              ; preds = %191, %191
  %199 = icmp eq i8 %197, 48
  %200 = sext i1 %199 to i64
  %201 = add nsw i64 %194, %200
  %202 = add nuw nsw i64 %36, 7
  %203 = icmp eq i64 %202, 8
  br i1 %203, label %211, label %204, !llvm.loop !14

204:                                              ; preds = %198
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 %202
  %206 = load i8, ptr %205, align 1, !tbaa !5, !noalias !8
  switch i8 %206, label %211 [
    i8 48, label %207
    i8 46, label %207
  ]

207:                                              ; preds = %204, %204
  %208 = icmp eq i8 %206, 48
  %209 = sext i1 %208 to i64
  %210 = add nsw i64 %201, %209
  br label %211

211:                                              ; preds = %207, %204, %198, %191, %184, %177, %170, %163, %156, %154
  %212 = phi i64 [ %149, %154 ], [ %159, %156 ], [ %166, %163 ], [ %173, %170 ], [ %180, %177 ], [ %187, %184 ], [ %194, %191 ], [ %201, %198 ], [ %201, %204 ], [ %210, %207 ]
  %213 = icmp sgt i64 %212, 19
  br i1 %213, label %214, label %247

214:                                              ; preds = %211
  %215 = getelementptr inbounds nuw i8, ptr %37, i64 %120
  %216 = icmp samesign eq i64 %120, 0
  br i1 %216, label %231, label %217

217:                                              ; preds = %214, %217
  %218 = phi ptr [ %225, %217 ], [ %37, %214 ]
  %219 = phi i64 [ %224, %217 ], [ 0, %214 ]
  %220 = mul nuw i64 %219, 10
  %221 = load i8, ptr %218, align 1, !tbaa !5
  %222 = sext i8 %221 to i64
  %223 = add i64 %220, -48
  %224 = add i64 %223, %222
  %225 = getelementptr inbounds nuw i8, ptr %218, i64 1
  %226 = icmp ult i64 %224, 1000000000000000000
  %227 = icmp ne ptr %225, %215
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %217, label %229, !llvm.loop !15

229:                                              ; preds = %217
  %230 = icmp ugt i64 %224, 999999999999999999
  br i1 %230, label %247, label %231

231:                                              ; preds = %214, %229
  %232 = phi i64 [ %224, %229 ], [ 0, %214 ]
  %233 = getelementptr inbounds nuw i8, ptr %147, i64 %148
  %234 = icmp samesign eq i64 %148, 0
  br i1 %234, label %247, label %235

235:                                              ; preds = %231, %235
  %236 = phi ptr [ %243, %235 ], [ %147, %231 ]
  %237 = phi i64 [ %242, %235 ], [ %232, %231 ]
  %238 = mul nuw i64 %237, 10
  %239 = load i8, ptr %236, align 1, !tbaa !5
  %240 = sext i8 %239 to i64
  %241 = add i64 %238, -48
  %242 = add i64 %241, %240
  %243 = getelementptr inbounds nuw i8, ptr %236, i64 1
  %244 = icmp ult i64 %242, 1000000000000000000
  %245 = icmp ne ptr %243, %233
  %246 = select i1 %244, i1 %245, i1 false
  br i1 %246, label %235, label %247, !llvm.loop !16

247:                                              ; preds = %99, %111, %235, %22, %231, %229, %5, %152, %211, %146
  %248 = phi i64 [ 0, %146 ], [ %150, %152 ], [ %150, %211 ], [ 0, %5 ], [ %224, %229 ], [ %232, %231 ], [ %32, %22 ], [ %242, %235 ], [ %103, %99 ], [ %115, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %248
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_exponent(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = and i64 %0, 255
  %5 = icmp eq i64 %4, 45
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %9 = lshr i64 %0, 8
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %12 = add i8 %10, -48
  %13 = icmp ult i8 %12, 10
  %14 = icmp eq i8 %10, 46
  %15 = or i1 %14, %13
  br i1 %15, label %23, label %255

16:                                               ; preds = %1
  %17 = load i64, ptr %2, align 8
  %18 = add i64 %17, 5063812098665367110
  %19 = add i64 %17, -3472328296227680304
  %20 = or i64 %18, %19
  %21 = and i64 %20, -9187201950435737472
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %255, label %23

23:                                               ; preds = %16, %6
  %24 = phi ptr [ %2, %16 ], [ %8, %6 ]
  %25 = phi ptr [ %2, %16 ], [ %7, %6 ]
  %26 = phi i64 [ 0, %16 ], [ 1, %6 ]
  %27 = phi ptr [ %2, %16 ], [ %11, %6 ]
  %28 = load i8, ptr %25, align 1, !tbaa !5, !noalias !17
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %75

31:                                               ; preds = %23
  %32 = add nuw nsw i64 %26, 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !5, !noalias !17
  %35 = add i8 %34, -48
  %36 = icmp ult i8 %35, 10
  br i1 %36, label %37, label %75

37:                                               ; preds = %31
  %38 = or disjoint i64 %26, 2
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5, !noalias !17
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = add nuw nsw i64 %26, 3
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5, !noalias !17
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = or disjoint i64 %26, 4
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !5, !noalias !17
  %53 = add i8 %52, -48
  %54 = icmp ult i8 %53, 10
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %26, 5
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !17
  %59 = add i8 %58, -48
  %60 = icmp ult i8 %59, 10
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = or disjoint i64 %26, 6
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5, !noalias !17
  %65 = add i8 %64, -48
  %66 = icmp ult i8 %65, 10
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = add nuw nsw i64 %26, 7
  %69 = icmp eq i64 %68, 8
  br i1 %69, label %255, label %70, !llvm.loop !11

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %68
  %72 = load i8, ptr %71, align 1, !tbaa !5, !noalias !17
  %73 = add i8 %72, -48
  %74 = icmp ult i8 %73, 10
  br i1 %74, label %255, label %75

75:                                               ; preds = %70, %61, %55, %49, %43, %37, %31, %23
  %76 = phi i64 [ %26, %23 ], [ %32, %31 ], [ %38, %37 ], [ %44, %43 ], [ %50, %49 ], [ %56, %55 ], [ %62, %61 ], [ %68, %70 ]
  %77 = phi ptr [ %25, %23 ], [ %33, %31 ], [ %39, %37 ], [ %45, %43 ], [ %51, %49 ], [ %57, %55 ], [ %63, %61 ], [ %71, %70 ]
  %78 = phi i8 [ %28, %23 ], [ %34, %31 ], [ %40, %37 ], [ %46, %43 ], [ %52, %49 ], [ %58, %55 ], [ %64, %61 ], [ %72, %70 ]
  %79 = sub nsw i64 %76, %26
  %80 = icmp eq i8 %78, 46
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = add nuw nsw i64 %76, 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 %82
  %84 = icmp eq i64 %82, 8
  br i1 %84, label %94, label %85

85:                                               ; preds = %81, %91
  %86 = phi i64 [ %92, %91 ], [ %82, %81 ]
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !5, !noalias !17
  %89 = add i8 %88, -48
  %90 = icmp ult i8 %89, 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = add nuw nsw i64 %86, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %85, !llvm.loop !13

94:                                               ; preds = %91, %85, %81
  %95 = phi i64 [ 8, %81 ], [ %86, %85 ], [ 8, %91 ]
  %96 = sub nsw i64 %82, %95
  %97 = sub nsw i64 %95, %82
  %98 = sub nsw i64 %79, %96
  br label %99

99:                                               ; preds = %94, %75
  %100 = phi ptr [ %83, %94 ], [ null, %75 ]
  %101 = phi i64 [ %97, %94 ], [ 0, %75 ]
  %102 = phi i64 [ %96, %94 ], [ 0, %75 ]
  %103 = phi i64 [ %98, %94 ], [ %79, %75 ]
  %104 = phi i64 [ %95, %94 ], [ %76, %75 ]
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %106 = icmp eq i64 %103, 0
  br i1 %106, label %255, label %107

107:                                              ; preds = %99
  %108 = icmp eq i64 %104, 8
  br i1 %108, label %151, label %109

109:                                              ; preds = %107
  %110 = load i8, ptr %105, align 1, !tbaa !5, !noalias !17
  switch i8 %110, label %151 [
    i8 101, label %111
    i8 69, label %111
  ]

111:                                              ; preds = %109, %109
  %112 = add nuw nsw i64 %104, 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 %112
  %114 = icmp eq i64 %112, 8
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = load i8, ptr %113, align 1, !tbaa !5, !noalias !17
  %117 = icmp eq i8 %116, 45
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = getelementptr inbounds nuw i8, ptr %105, i64 2
  br label %124

120:                                              ; preds = %115
  %121 = icmp eq i8 %116, 43
  %122 = getelementptr inbounds nuw i8, ptr %105, i64 2
  %123 = select i1 %121, ptr %122, ptr %113
  br label %124

124:                                              ; preds = %120, %118, %111
  %125 = phi i1 [ true, %118 ], [ false, %120 ], [ false, %111 ]
  %126 = phi ptr [ %119, %118 ], [ %123, %120 ], [ %113, %111 ]
  %127 = icmp eq ptr %126, %3
  br i1 %127, label %151, label %128

128:                                              ; preds = %124
  %129 = load i8, ptr %126, align 1, !tbaa !5, !noalias !17
  %130 = add i8 %129, -48
  %131 = icmp ult i8 %130, 10
  br i1 %131, label %132, label %151

132:                                              ; preds = %128, %138
  %133 = phi ptr [ %144, %138 ], [ %126, %128 ]
  %134 = phi i64 [ %143, %138 ], [ 0, %128 ]
  %135 = load i8, ptr %133, align 1, !tbaa !5, !noalias !17
  %136 = add i8 %135, -48
  %137 = icmp ult i8 %136, 10
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = icmp slt i64 %134, 268435456
  %140 = mul nsw i64 %134, 10
  %141 = zext nneg i8 %136 to i64
  %142 = add nsw i64 %140, %141
  %143 = select i1 %139, i64 %142, i64 %134
  %144 = getelementptr inbounds nuw i8, ptr %133, i64 1
  %145 = icmp eq ptr %144, %3
  br i1 %145, label %146, label %132, !llvm.loop !20

146:                                              ; preds = %138, %132
  %147 = phi i64 [ %143, %138 ], [ %134, %132 ]
  %148 = sub nsw i64 0, %147
  %149 = select i1 %125, i64 %148, i64 %147
  %150 = add nsw i64 %149, %102
  br label %151

151:                                              ; preds = %107, %109, %146, %128, %124
  %152 = phi i64 [ %149, %146 ], [ 0, %128 ], [ 0, %124 ], [ 0, %109 ], [ 0, %107 ]
  %153 = phi i64 [ %150, %146 ], [ %102, %128 ], [ %102, %124 ], [ %102, %109 ], [ %102, %107 ]
  %154 = icmp sgt i64 %103, 19
  br i1 %154, label %155, label %255

155:                                              ; preds = %151
  %156 = load i8, ptr %24, align 1, !tbaa !5, !noalias !17
  switch i8 %156, label %212 [
    i8 48, label %157
    i8 46, label %157
  ]

157:                                              ; preds = %155, %155
  %158 = icmp eq i8 %156, 48
  %159 = sext i1 %158 to i64
  %160 = add nsw i64 %103, %159
  %161 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 1
  %163 = load i8, ptr %162, align 1, !tbaa !5, !noalias !17
  switch i8 %163, label %212 [
    i8 48, label %164
    i8 46, label %164
  ]

164:                                              ; preds = %157, %157
  %165 = icmp eq i8 %163, 48
  %166 = sext i1 %165 to i64
  %167 = add nsw i64 %160, %166
  %168 = or disjoint i64 %26, 2
  %169 = getelementptr inbounds nuw i8, ptr %2, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !5, !noalias !17
  switch i8 %170, label %212 [
    i8 48, label %171
    i8 46, label %171
  ]

171:                                              ; preds = %164, %164
  %172 = icmp eq i8 %170, 48
  %173 = sext i1 %172 to i64
  %174 = add nsw i64 %167, %173
  %175 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 3
  %177 = load i8, ptr %176, align 1, !tbaa !5, !noalias !17
  switch i8 %177, label %212 [
    i8 48, label %178
    i8 46, label %178
  ]

178:                                              ; preds = %171, %171
  %179 = icmp eq i8 %177, 48
  %180 = sext i1 %179 to i64
  %181 = add nsw i64 %174, %180
  %182 = or disjoint i64 %26, 4
  %183 = getelementptr inbounds nuw i8, ptr %2, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !5, !noalias !17
  switch i8 %184, label %212 [
    i8 48, label %185
    i8 46, label %185
  ]

185:                                              ; preds = %178, %178
  %186 = icmp eq i8 %184, 48
  %187 = sext i1 %186 to i64
  %188 = add nsw i64 %181, %187
  %189 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 5
  %191 = load i8, ptr %190, align 1, !tbaa !5, !noalias !17
  switch i8 %191, label %212 [
    i8 48, label %192
    i8 46, label %192
  ]

192:                                              ; preds = %185, %185
  %193 = icmp eq i8 %191, 48
  %194 = sext i1 %193 to i64
  %195 = add nsw i64 %188, %194
  %196 = or disjoint i64 %26, 6
  %197 = getelementptr inbounds nuw i8, ptr %2, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !5, !noalias !17
  switch i8 %198, label %212 [
    i8 48, label %199
    i8 46, label %199
  ]

199:                                              ; preds = %192, %192
  %200 = icmp eq i8 %198, 48
  %201 = sext i1 %200 to i64
  %202 = add nsw i64 %195, %201
  %203 = add nuw nsw i64 %26, 7
  %204 = icmp eq i64 %203, 8
  br i1 %204, label %212, label %205, !llvm.loop !14

205:                                              ; preds = %199
  %206 = getelementptr inbounds nuw i8, ptr %2, i64 %203
  %207 = load i8, ptr %206, align 1, !tbaa !5, !noalias !17
  switch i8 %207, label %212 [
    i8 48, label %208
    i8 46, label %208
  ]

208:                                              ; preds = %205, %205
  %209 = icmp eq i8 %207, 48
  %210 = sext i1 %209 to i64
  %211 = add nsw i64 %202, %210
  br label %212

212:                                              ; preds = %208, %205, %199, %192, %185, %178, %171, %164, %157, %155
  %213 = phi i64 [ %103, %155 ], [ %160, %157 ], [ %167, %164 ], [ %174, %171 ], [ %181, %178 ], [ %188, %185 ], [ %195, %192 ], [ %202, %199 ], [ %202, %205 ], [ %211, %208 ]
  %214 = icmp sgt i64 %213, 19
  br i1 %214, label %215, label %255

215:                                              ; preds = %212
  %216 = getelementptr inbounds nuw i8, ptr %27, i64 %79
  %217 = icmp samesign eq i64 %79, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %215, %218
  %219 = phi ptr [ %226, %218 ], [ %27, %215 ]
  %220 = phi i64 [ %225, %218 ], [ 0, %215 ]
  %221 = mul nuw i64 %220, 10
  %222 = load i8, ptr %219, align 1, !tbaa !5
  %223 = sext i8 %222 to i64
  %224 = add i64 %221, -48
  %225 = add i64 %224, %223
  %226 = getelementptr inbounds nuw i8, ptr %219, i64 1
  %227 = icmp ult i64 %225, 1000000000000000000
  %228 = icmp ne ptr %226, %216
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %218, label %230, !llvm.loop !15

230:                                              ; preds = %218
  %231 = icmp ugt i64 %225, 999999999999999999
  br i1 %231, label %248, label %232

232:                                              ; preds = %215, %230
  %233 = phi i64 [ %225, %230 ], [ 0, %215 ]
  %234 = getelementptr inbounds nuw i8, ptr %100, i64 %101
  %235 = icmp samesign eq i64 %101, 0
  br i1 %235, label %248, label %236

236:                                              ; preds = %232, %236
  %237 = phi ptr [ %244, %236 ], [ %100, %232 ]
  %238 = phi i64 [ %243, %236 ], [ %233, %232 ]
  %239 = mul nuw i64 %238, 10
  %240 = load i8, ptr %237, align 1, !tbaa !5
  %241 = sext i8 %240 to i64
  %242 = add i64 %239, -48
  %243 = add i64 %242, %241
  %244 = getelementptr inbounds nuw i8, ptr %237, i64 1
  %245 = icmp ult i64 %243, 1000000000000000000
  %246 = icmp ne ptr %244, %234
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %236, label %248, !llvm.loop !16

248:                                              ; preds = %236, %232, %230
  %249 = phi ptr [ %226, %230 ], [ %100, %232 ], [ %244, %236 ]
  %250 = phi ptr [ %77, %230 ], [ %100, %232 ], [ %100, %236 ]
  %251 = ptrtoint ptr %250 to i64
  %252 = ptrtoint ptr %249 to i64
  %253 = sub i64 %251, %252
  %254 = add nsw i64 %253, %152
  br label %255

255:                                              ; preds = %67, %70, %16, %6, %151, %212, %248, %99
  %256 = phi i64 [ 0, %99 ], [ %153, %151 ], [ %254, %248 ], [ %153, %212 ], [ 0, %6 ], [ 0, %16 ], [ 0, %70 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %256
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_lastmatch(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = and i64 %0, 255
  %5 = icmp eq i64 %4, 45
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  %10 = add i8 %9, -48
  %11 = icmp ult i8 %10, 10
  %12 = icmp eq i8 %9, 46
  %13 = or i1 %12, %11
  br i1 %13, label %21, label %132

14:                                               ; preds = %1
  %15 = load i64, ptr %2, align 8
  %16 = add i64 %15, 5063812098665367110
  %17 = add i64 %15, -3472328296227680304
  %18 = or i64 %16, %17
  %19 = and i64 %18, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %98, label %21

21:                                               ; preds = %14, %6
  %22 = phi ptr [ %2, %14 ], [ %7, %6 ]
  %23 = phi i64 [ 0, %14 ], [ 1, %6 ]
  %24 = load i8, ptr %22, align 1, !tbaa !5, !noalias !21
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %27, label %71

27:                                               ; preds = %21
  %28 = add nuw nsw i64 %23, 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !5, !noalias !21
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = or disjoint i64 %23, 2
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !21
  %37 = add i8 %36, -48
  %38 = icmp ult i8 %37, 10
  br i1 %38, label %39, label %71

39:                                               ; preds = %33
  %40 = add nuw nsw i64 %23, 3
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !5, !noalias !21
  %43 = add i8 %42, -48
  %44 = icmp ult i8 %43, 10
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = or disjoint i64 %23, 4
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !5, !noalias !21
  %49 = add i8 %48, -48
  %50 = icmp ult i8 %49, 10
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = add nuw nsw i64 %23, 5
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !5, !noalias !21
  %55 = add i8 %54, -48
  %56 = icmp ult i8 %55, 10
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = or disjoint i64 %23, 6
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5, !noalias !21
  %61 = add i8 %60, -48
  %62 = icmp ult i8 %61, 10
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = add nuw nsw i64 %23, 7
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %98, label %66, !llvm.loop !11

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %64
  %68 = load i8, ptr %67, align 1, !tbaa !5, !noalias !21
  %69 = add i8 %68, -48
  %70 = icmp ult i8 %69, 10
  br i1 %70, label %98, label %71

71:                                               ; preds = %66, %57, %51, %45, %39, %33, %27, %21
  %72 = phi i64 [ %23, %21 ], [ %28, %27 ], [ %34, %33 ], [ %40, %39 ], [ %46, %45 ], [ %52, %51 ], [ %58, %57 ], [ %64, %66 ]
  %73 = phi i8 [ %24, %21 ], [ %30, %27 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %60, %57 ], [ %68, %66 ]
  %74 = sub nsw i64 %72, %23
  %75 = icmp eq i8 %73, 46
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, 8
  br i1 %78, label %88, label %79

79:                                               ; preds = %76, %85
  %80 = phi i64 [ %86, %85 ], [ %77, %76 ]
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !5, !noalias !21
  %83 = add i8 %82, -48
  %84 = icmp ult i8 %83, 10
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = add nuw nsw i64 %80, 1
  %87 = icmp eq i64 %86, 8
  br i1 %87, label %88, label %79, !llvm.loop !13

88:                                               ; preds = %85, %79, %76
  %89 = phi i64 [ 8, %76 ], [ %80, %79 ], [ 8, %85 ]
  %90 = xor i64 %72, -1
  %91 = add i64 %74, %90
  %92 = add i64 %91, %89
  br label %93

93:                                               ; preds = %88, %71
  %94 = phi i64 [ %92, %88 ], [ %74, %71 ]
  %95 = phi i64 [ %89, %88 ], [ %72, %71 ]
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %95
  %97 = icmp eq i64 %94, 0
  br i1 %97, label %132, label %100

98:                                               ; preds = %63, %66, %14
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %132

100:                                              ; preds = %93
  %101 = icmp eq i64 %95, 8
  br i1 %101, label %132, label %102

102:                                              ; preds = %100
  %103 = load i8, ptr %96, align 1, !tbaa !5, !noalias !21
  switch i8 %103, label %132 [
    i8 101, label %104
    i8 69, label %104
  ]

104:                                              ; preds = %102, %102
  %105 = add nuw nsw i64 %95, 1
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 %105
  %107 = icmp eq i64 %105, 8
  br i1 %107, label %117, label %108

108:                                              ; preds = %104
  %109 = load i8, ptr %106, align 1, !tbaa !5, !noalias !21
  %110 = icmp eq i8 %109, 45
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = getelementptr inbounds nuw i8, ptr %96, i64 2
  br label %117

113:                                              ; preds = %108
  %114 = icmp eq i8 %109, 43
  %115 = getelementptr inbounds nuw i8, ptr %96, i64 2
  %116 = select i1 %114, ptr %115, ptr %106
  br label %117

117:                                              ; preds = %113, %111, %104
  %118 = phi ptr [ %112, %111 ], [ %116, %113 ], [ %106, %104 ]
  %119 = icmp eq ptr %118, %3
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  %121 = load i8, ptr %118, align 1, !tbaa !5, !noalias !21
  %122 = add i8 %121, -48
  %123 = icmp ult i8 %122, 10
  br i1 %123, label %124, label %132

124:                                              ; preds = %120, %129
  %125 = phi ptr [ %130, %129 ], [ %118, %120 ]
  %126 = load i8, ptr %125, align 1, !tbaa !5, !noalias !21
  %127 = add i8 %126, -48
  %128 = icmp ult i8 %127, 10
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %131 = icmp eq ptr %130, %3
  br i1 %131, label %132, label %124, !llvm.loop !20

132:                                              ; preds = %117, %120, %102, %100, %129, %124, %98, %6, %93
  %133 = phi ptr [ null, %93 ], [ null, %6 ], [ %99, %98 ], [ %96, %120 ], [ %96, %117 ], [ %96, %102 ], [ %96, %100 ], [ %125, %124 ], [ %3, %129 ]
  %134 = icmp eq ptr %133, null
  %135 = ptrtoint ptr %133 to i64
  %136 = ptrtoint ptr %2 to i64
  %137 = sub i64 %135, %136
  %138 = select i1 %134, i64 -1, i64 %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %138
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_negative(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = lshr i64 %0, 8
  %8 = trunc i64 %7 to i8
  %9 = add i8 %8, -48
  %10 = icmp ult i8 %9, 10
  %11 = icmp eq i8 %8, 46
  %12 = or i1 %11, %10
  br i1 %12, label %20, label %86

13:                                               ; preds = %1
  %14 = load i64, ptr %2, align 8
  %15 = add i64 %14, 5063812098665367110
  %16 = add i64 %14, -3472328296227680304
  %17 = or i64 %15, %16
  %18 = and i64 %17, -9187201950435737472
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %86, label %20

20:                                               ; preds = %13, %5
  %21 = phi ptr [ %2, %13 ], [ %6, %5 ]
  %22 = phi i64 [ 0, %13 ], [ 1, %5 ]
  %23 = load i8, ptr %21, align 1, !tbaa !5, !noalias !24
  %24 = add i8 %23, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = add nuw nsw i64 %22, 1
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5, !noalias !24
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = or disjoint i64 %22, 2
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5, !noalias !24
  %36 = add i8 %35, -48
  %37 = icmp ult i8 %36, 10
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %22, 3
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5, !noalias !24
  %42 = add i8 %41, -48
  %43 = icmp ult i8 %42, 10
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = or disjoint i64 %22, 4
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5, !noalias !24
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %22, 5
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !24
  %54 = add i8 %53, -48
  %55 = icmp ult i8 %54, 10
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = or disjoint i64 %22, 6
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !5, !noalias !24
  %60 = add i8 %59, -48
  %61 = icmp ult i8 %60, 10
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %22, 7
  %64 = icmp eq i64 %63, 8
  br i1 %64, label %86, label %65, !llvm.loop !11

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !5, !noalias !24
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %86, label %70

70:                                               ; preds = %65, %56, %50, %44, %38, %32, %26, %20
  %71 = phi i64 [ %22, %20 ], [ %27, %26 ], [ %33, %32 ], [ %39, %38 ], [ %45, %44 ], [ %51, %50 ], [ %57, %56 ], [ %63, %65 ]
  %72 = phi i8 [ %23, %20 ], [ %29, %26 ], [ %35, %32 ], [ %41, %38 ], [ %47, %44 ], [ %53, %50 ], [ %59, %56 ], [ %67, %65 ]
  %73 = icmp ne i8 %72, 46
  %74 = add nuw nsw i64 %71, 1
  %75 = icmp eq i64 %74, 8
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %70, %77
  %78 = phi i64 [ %83, %77 ], [ %74, %70 ]
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !5, !noalias !24
  %81 = add i8 %80, -48
  %82 = icmp uge i8 %81, 10
  %83 = add nuw nsw i64 %78, 1
  %84 = icmp eq i64 %83, 8
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %77, !llvm.loop !13

86:                                               ; preds = %77, %70, %62, %65, %13, %5
  %87 = zext i1 %4 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %87
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_valid(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = lshr i64 %0, 8
  %8 = trunc i64 %7 to i8
  %9 = add i8 %8, -48
  %10 = icmp ult i8 %9, 10
  %11 = icmp eq i8 %8, 46
  %12 = or i1 %11, %10
  br i1 %12, label %20, label %96

13:                                               ; preds = %1
  %14 = load i64, ptr %2, align 8
  %15 = add i64 %14, 5063812098665367110
  %16 = add i64 %14, -3472328296227680304
  %17 = or i64 %15, %16
  %18 = and i64 %17, -9187201950435737472
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %96, label %20

20:                                               ; preds = %13, %5
  %21 = phi ptr [ %2, %13 ], [ %6, %5 ]
  %22 = phi i64 [ 0, %13 ], [ 1, %5 ]
  %23 = load i8, ptr %21, align 1, !tbaa !5, !noalias !27
  %24 = add i8 %23, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = add nuw nsw i64 %22, 1
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5, !noalias !27
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = or disjoint i64 %22, 2
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5, !noalias !27
  %36 = add i8 %35, -48
  %37 = icmp ult i8 %36, 10
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %22, 3
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5, !noalias !27
  %42 = add i8 %41, -48
  %43 = icmp ult i8 %42, 10
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = or disjoint i64 %22, 4
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5, !noalias !27
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %22, 5
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !27
  %54 = add i8 %53, -48
  %55 = icmp ult i8 %54, 10
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = or disjoint i64 %22, 6
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !5, !noalias !27
  %60 = add i8 %59, -48
  %61 = icmp ult i8 %60, 10
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %22, 7
  %64 = icmp eq i64 %63, 8
  br i1 %64, label %96, label %65, !llvm.loop !11

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !5, !noalias !27
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %96, label %70

70:                                               ; preds = %65, %56, %50, %44, %38, %32, %26, %20
  %71 = phi i64 [ %22, %20 ], [ %27, %26 ], [ %33, %32 ], [ %39, %38 ], [ %45, %44 ], [ %51, %50 ], [ %57, %56 ], [ %63, %65 ]
  %72 = phi i8 [ %23, %20 ], [ %29, %26 ], [ %35, %32 ], [ %41, %38 ], [ %47, %44 ], [ %53, %50 ], [ %59, %56 ], [ %67, %65 ]
  %73 = sub nsw i64 %71, %22
  %74 = icmp eq i8 %72, 46
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, 8
  br i1 %77, label %87, label %78

78:                                               ; preds = %75, %84
  %79 = phi i64 [ %85, %84 ], [ %76, %75 ]
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !5, !noalias !27
  %82 = add i8 %81, -48
  %83 = icmp ult i8 %82, 10
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = add nuw nsw i64 %79, 1
  %86 = icmp eq i64 %85, 8
  br i1 %86, label %87, label %78, !llvm.loop !13

87:                                               ; preds = %84, %78, %75
  %88 = phi i64 [ 8, %75 ], [ %79, %78 ], [ 8, %84 ]
  %89 = xor i64 %71, -1
  %90 = add i64 %73, %89
  %91 = add i64 %90, %88
  br label %92

92:                                               ; preds = %87, %70
  %93 = phi i64 [ %91, %87 ], [ %73, %70 ]
  %94 = icmp eq i64 %93, 0
  %95 = select i1 %94, i64 0, i64 1
  br label %96

96:                                               ; preds = %92, %62, %65, %13, %5
  %97 = phi i64 [ 0, %5 ], [ 1, %13 ], [ 1, %65 ], [ 1, %62 ], [ %95, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %97
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_many_digits(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  %10 = add i8 %9, -48
  %11 = icmp ult i8 %10, 10
  %12 = icmp eq i8 %9, 46
  %13 = or i1 %12, %11
  br i1 %13, label %21, label %158

14:                                               ; preds = %1
  %15 = load i64, ptr %2, align 8
  %16 = add i64 %15, 5063812098665367110
  %17 = add i64 %15, -3472328296227680304
  %18 = or i64 %16, %17
  %19 = and i64 %18, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %158, label %21

21:                                               ; preds = %14, %5
  %22 = phi ptr [ %2, %14 ], [ %7, %5 ]
  %23 = phi ptr [ %2, %14 ], [ %6, %5 ]
  %24 = phi i64 [ 0, %14 ], [ 1, %5 ]
  %25 = load i8, ptr %23, align 1, !tbaa !5, !noalias !30
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %72

28:                                               ; preds = %21
  %29 = add nuw nsw i64 %24, 1
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !5, !noalias !30
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %34, label %72

34:                                               ; preds = %28
  %35 = or disjoint i64 %24, 2
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !30
  %38 = add i8 %37, -48
  %39 = icmp ult i8 %38, 10
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = add nuw nsw i64 %24, 3
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !30
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = or disjoint i64 %24, 4
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !5, !noalias !30
  %50 = add i8 %49, -48
  %51 = icmp ult i8 %50, 10
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = add nuw nsw i64 %24, 5
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !5, !noalias !30
  %56 = add i8 %55, -48
  %57 = icmp ult i8 %56, 10
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = or disjoint i64 %24, 6
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5, !noalias !30
  %62 = add i8 %61, -48
  %63 = icmp ult i8 %62, 10
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = add nuw nsw i64 %24, 7
  %66 = icmp eq i64 %65, 8
  br i1 %66, label %158, label %67, !llvm.loop !11

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1, !tbaa !5, !noalias !30
  %70 = add i8 %69, -48
  %71 = icmp ult i8 %70, 10
  br i1 %71, label %158, label %72

72:                                               ; preds = %67, %58, %52, %46, %40, %34, %28, %21
  %73 = phi i64 [ %24, %21 ], [ %29, %28 ], [ %35, %34 ], [ %41, %40 ], [ %47, %46 ], [ %53, %52 ], [ %59, %58 ], [ %65, %67 ]
  %74 = phi i8 [ %25, %21 ], [ %31, %28 ], [ %37, %34 ], [ %43, %40 ], [ %49, %46 ], [ %55, %52 ], [ %61, %58 ], [ %69, %67 ]
  %75 = sub nsw i64 %73, %24
  %76 = icmp eq i8 %74, 46
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = add nuw nsw i64 %73, 1
  %79 = icmp eq i64 %78, 8
  br i1 %79, label %89, label %80

80:                                               ; preds = %77, %86
  %81 = phi i64 [ %87, %86 ], [ %78, %77 ]
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !5, !noalias !30
  %84 = add i8 %83, -48
  %85 = icmp ult i8 %84, 10
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = add nuw nsw i64 %81, 1
  %88 = icmp eq i64 %87, 8
  br i1 %88, label %89, label %80, !llvm.loop !13

89:                                               ; preds = %86, %80, %77
  %90 = phi i64 [ 8, %77 ], [ %81, %80 ], [ 8, %86 ]
  %91 = xor i64 %73, -1
  %92 = add i64 %75, %91
  %93 = add i64 %92, %90
  br label %94

94:                                               ; preds = %89, %72
  %95 = phi i64 [ %93, %89 ], [ %75, %72 ]
  %96 = icmp sgt i64 %95, 19
  br i1 %96, label %97, label %158

97:                                               ; preds = %94
  %98 = load i8, ptr %22, align 1, !tbaa !5, !noalias !30
  switch i8 %98, label %154 [
    i8 48, label %99
    i8 46, label %99
  ]

99:                                               ; preds = %97, %97
  %100 = icmp eq i8 %98, 48
  %101 = sext i1 %100 to i64
  %102 = add nsw i64 %95, %101
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %24
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !5, !noalias !30
  switch i8 %105, label %154 [
    i8 48, label %106
    i8 46, label %106
  ]

106:                                              ; preds = %99, %99
  %107 = icmp eq i8 %105, 48
  %108 = sext i1 %107 to i64
  %109 = add nsw i64 %102, %108
  %110 = or disjoint i64 %24, 2
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !5, !noalias !30
  switch i8 %112, label %154 [
    i8 48, label %113
    i8 46, label %113
  ]

113:                                              ; preds = %106, %106
  %114 = icmp eq i8 %112, 48
  %115 = sext i1 %114 to i64
  %116 = add nsw i64 %109, %115
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 %24
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 3
  %119 = load i8, ptr %118, align 1, !tbaa !5, !noalias !30
  switch i8 %119, label %154 [
    i8 48, label %120
    i8 46, label %120
  ]

120:                                              ; preds = %113, %113
  %121 = icmp eq i8 %119, 48
  %122 = sext i1 %121 to i64
  %123 = add nsw i64 %116, %122
  %124 = or disjoint i64 %24, 4
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !5, !noalias !30
  switch i8 %126, label %154 [
    i8 48, label %127
    i8 46, label %127
  ]

127:                                              ; preds = %120, %120
  %128 = icmp eq i8 %126, 48
  %129 = sext i1 %128 to i64
  %130 = add nsw i64 %123, %129
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 %24
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 5
  %133 = load i8, ptr %132, align 1, !tbaa !5, !noalias !30
  switch i8 %133, label %154 [
    i8 48, label %134
    i8 46, label %134
  ]

134:                                              ; preds = %127, %127
  %135 = icmp eq i8 %133, 48
  %136 = sext i1 %135 to i64
  %137 = add nsw i64 %130, %136
  %138 = or disjoint i64 %24, 6
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !5, !noalias !30
  switch i8 %140, label %154 [
    i8 48, label %141
    i8 46, label %141
  ]

141:                                              ; preds = %134, %134
  %142 = icmp eq i8 %140, 48
  %143 = sext i1 %142 to i64
  %144 = add nsw i64 %137, %143
  %145 = add nuw nsw i64 %24, 7
  %146 = icmp eq i64 %145, 8
  br i1 %146, label %154, label %147, !llvm.loop !14

147:                                              ; preds = %141
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 %145
  %149 = load i8, ptr %148, align 1, !tbaa !5, !noalias !30
  switch i8 %149, label %154 [
    i8 48, label %150
    i8 46, label %150
  ]

150:                                              ; preds = %147, %147
  %151 = icmp eq i8 %149, 48
  %152 = sext i1 %151 to i64
  %153 = add nsw i64 %144, %152
  br label %154

154:                                              ; preds = %150, %147, %141, %134, %127, %120, %113, %106, %99, %97
  %155 = phi i64 [ %95, %97 ], [ %102, %99 ], [ %109, %106 ], [ %116, %113 ], [ %123, %120 ], [ %130, %127 ], [ %137, %134 ], [ %144, %141 ], [ %144, %147 ], [ %153, %150 ]
  %156 = icmp sgt i64 %155, 19
  %157 = zext i1 %156 to i64
  br label %158

158:                                              ; preds = %64, %67, %154, %14, %5, %94
  %159 = phi i64 [ 0, %94 ], [ 0, %5 ], [ 0, %14 ], [ %157, %154 ], [ 0, %67 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %159
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_start(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = lshr i64 %0, 8
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %10 = add i8 %8, -48
  %11 = icmp ult i8 %10, 10
  %12 = icmp eq i8 %8, 46
  %13 = or i1 %12, %11
  br i1 %13, label %21, label %88

14:                                               ; preds = %1
  %15 = load i64, ptr %2, align 8
  %16 = add i64 %15, 5063812098665367110
  %17 = add i64 %15, -3472328296227680304
  %18 = or i64 %16, %17
  %19 = and i64 %18, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %88, label %21

21:                                               ; preds = %14, %5
  %22 = phi ptr [ %2, %14 ], [ %6, %5 ]
  %23 = phi i64 [ 0, %14 ], [ 1, %5 ]
  %24 = phi ptr [ %2, %14 ], [ %9, %5 ]
  %25 = load i8, ptr %22, align 1, !tbaa !5, !noalias !33
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %72

28:                                               ; preds = %21
  %29 = add nuw nsw i64 %23, 1
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !5, !noalias !33
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %34, label %72

34:                                               ; preds = %28
  %35 = or disjoint i64 %23, 2
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !33
  %38 = add i8 %37, -48
  %39 = icmp ult i8 %38, 10
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = add nuw nsw i64 %23, 3
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !33
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = or disjoint i64 %23, 4
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !5, !noalias !33
  %50 = add i8 %49, -48
  %51 = icmp ult i8 %50, 10
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = add nuw nsw i64 %23, 5
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !5, !noalias !33
  %56 = add i8 %55, -48
  %57 = icmp ult i8 %56, 10
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = or disjoint i64 %23, 6
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5, !noalias !33
  %62 = add i8 %61, -48
  %63 = icmp ult i8 %62, 10
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = add nuw nsw i64 %23, 7
  %66 = icmp eq i64 %65, 8
  br i1 %66, label %88, label %67, !llvm.loop !11

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1, !tbaa !5, !noalias !33
  %70 = add i8 %69, -48
  %71 = icmp ult i8 %70, 10
  br i1 %71, label %88, label %72

72:                                               ; preds = %67, %58, %52, %46, %40, %34, %28, %21
  %73 = phi i64 [ %23, %21 ], [ %29, %28 ], [ %35, %34 ], [ %41, %40 ], [ %47, %46 ], [ %53, %52 ], [ %59, %58 ], [ %65, %67 ]
  %74 = phi i8 [ %25, %21 ], [ %31, %28 ], [ %37, %34 ], [ %43, %40 ], [ %49, %46 ], [ %55, %52 ], [ %61, %58 ], [ %69, %67 ]
  %75 = icmp ne i8 %74, 46
  %76 = add nuw nsw i64 %73, 1
  %77 = icmp eq i64 %76, 8
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %88, label %79

79:                                               ; preds = %72, %79
  %80 = phi i64 [ %85, %79 ], [ %76, %72 ]
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !5, !noalias !33
  %83 = add i8 %82, -48
  %84 = icmp uge i8 %83, 10
  %85 = add nuw nsw i64 %80, 1
  %86 = icmp eq i64 %85, 8
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %88, label %79, !llvm.loop !13

88:                                               ; preds = %79, %72, %64, %67, %14, %5
  %89 = phi ptr [ null, %5 ], [ %2, %14 ], [ %24, %67 ], [ %24, %64 ], [ %24, %72 ], [ %24, %79 ]
  %90 = icmp eq ptr %89, null
  %91 = ptrtoint ptr %89 to i64
  %92 = ptrtoint ptr %2 to i64
  %93 = sub i64 %91, %92
  %94 = select i1 %90, i64 -1, i64 %93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %94
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = lshr i64 %0, 8
  %8 = trunc i64 %7 to i8
  %9 = add i8 %8, -48
  %10 = icmp ult i8 %9, 10
  %11 = icmp eq i8 %8, 46
  %12 = or i1 %11, %10
  br i1 %12, label %20, label %89

13:                                               ; preds = %1
  %14 = load i64, ptr %2, align 8
  %15 = add i64 %14, 5063812098665367110
  %16 = add i64 %14, -3472328296227680304
  %17 = or i64 %15, %16
  %18 = and i64 %17, -9187201950435737472
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %89, label %20

20:                                               ; preds = %13, %5
  %21 = phi ptr [ %2, %13 ], [ %6, %5 ]
  %22 = phi i64 [ 0, %13 ], [ 1, %5 ]
  %23 = load i8, ptr %21, align 1, !tbaa !5, !noalias !36
  %24 = add i8 %23, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = add nuw nsw i64 %22, 1
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5, !noalias !36
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = or disjoint i64 %22, 2
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5, !noalias !36
  %36 = add i8 %35, -48
  %37 = icmp ult i8 %36, 10
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %22, 3
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5, !noalias !36
  %42 = add i8 %41, -48
  %43 = icmp ult i8 %42, 10
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = or disjoint i64 %22, 4
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5, !noalias !36
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %22, 5
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !36
  %54 = add i8 %53, -48
  %55 = icmp ult i8 %54, 10
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = or disjoint i64 %22, 6
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !5, !noalias !36
  %60 = add i8 %59, -48
  %61 = icmp ult i8 %60, 10
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %22, 7
  %64 = icmp eq i64 %63, 8
  br i1 %64, label %87, label %65, !llvm.loop !11

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !5, !noalias !36
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %87, label %70

70:                                               ; preds = %65, %56, %50, %44, %38, %32, %26, %20
  %71 = phi i64 [ %22, %20 ], [ %27, %26 ], [ %33, %32 ], [ %39, %38 ], [ %45, %44 ], [ %51, %50 ], [ %57, %56 ], [ %63, %65 ]
  %72 = phi i8 [ %23, %20 ], [ %29, %26 ], [ %35, %32 ], [ %41, %38 ], [ %47, %44 ], [ %53, %50 ], [ %59, %56 ], [ %67, %65 ]
  %73 = sub nsw i64 %71, %22
  %74 = icmp ne i8 %72, 46
  %75 = add nuw nsw i64 %71, 1
  %76 = icmp eq i64 %75, 8
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %70, %78
  %79 = phi i64 [ %84, %78 ], [ %75, %70 ]
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !5, !noalias !36
  %82 = add i8 %81, -48
  %83 = icmp uge i8 %82, 10
  %84 = add nuw nsw i64 %79, 1
  %85 = icmp eq i64 %84, 8
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %89, label %78, !llvm.loop !13

87:                                               ; preds = %65, %62
  %88 = sub nuw nsw i64 8, %22
  br label %89

89:                                               ; preds = %78, %70, %13, %87, %5
  %90 = phi i64 [ 0, %5 ], [ 8, %13 ], [ %88, %87 ], [ %73, %70 ], [ %73, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %90
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_start(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = lshr i64 %0, 8
  %8 = trunc i64 %7 to i8
  %9 = add i8 %8, -48
  %10 = icmp ult i8 %9, 10
  %11 = icmp eq i8 %8, 46
  %12 = or i1 %11, %10
  br i1 %12, label %20, label %87

13:                                               ; preds = %1
  %14 = load i64, ptr %2, align 8
  %15 = add i64 %14, 5063812098665367110
  %16 = add i64 %14, -3472328296227680304
  %17 = or i64 %15, %16
  %18 = and i64 %17, -9187201950435737472
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %13, %5
  %21 = phi ptr [ %2, %13 ], [ %6, %5 ]
  %22 = phi i64 [ 0, %13 ], [ 1, %5 ]
  %23 = load i8, ptr %21, align 1, !tbaa !5, !noalias !39
  %24 = add i8 %23, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = add nuw nsw i64 %22, 1
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5, !noalias !39
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = or disjoint i64 %22, 2
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5, !noalias !39
  %36 = add i8 %35, -48
  %37 = icmp ult i8 %36, 10
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %22, 3
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5, !noalias !39
  %42 = add i8 %41, -48
  %43 = icmp ult i8 %42, 10
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = or disjoint i64 %22, 4
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5, !noalias !39
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %22, 5
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !39
  %54 = add i8 %53, -48
  %55 = icmp ult i8 %54, 10
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = or disjoint i64 %22, 6
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !5, !noalias !39
  %60 = add i8 %59, -48
  %61 = icmp ult i8 %60, 10
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %22, 7
  %64 = icmp eq i64 %63, 8
  br i1 %64, label %87, label %65, !llvm.loop !11

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !5, !noalias !39
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %87, label %70

70:                                               ; preds = %65, %56, %50, %44, %38, %32, %26, %20
  %71 = phi i64 [ %22, %20 ], [ %27, %26 ], [ %33, %32 ], [ %39, %38 ], [ %45, %44 ], [ %51, %50 ], [ %57, %56 ], [ %63, %65 ]
  %72 = phi i8 [ %23, %20 ], [ %29, %26 ], [ %35, %32 ], [ %41, %38 ], [ %47, %44 ], [ %53, %50 ], [ %59, %56 ], [ %67, %65 ]
  %73 = icmp eq i8 %72, 46
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = add nuw nsw i64 %71, 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = icmp eq i64 %75, 8
  br i1 %77, label %87, label %78

78:                                               ; preds = %78, %74
  %79 = phi i64 [ %75, %74 ], [ %84, %78 ]
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !5, !noalias !39
  %82 = add i8 %81, -48
  %83 = icmp uge i8 %82, 10
  %84 = add nuw nsw i64 %79, 1
  %85 = icmp eq i64 %84, 8
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %87, label %78, !llvm.loop !13

87:                                               ; preds = %74, %78, %70, %62, %65, %13, %5
  %88 = phi ptr [ null, %5 ], [ null, %13 ], [ null, %65 ], [ null, %62 ], [ null, %70 ], [ %76, %78 ], [ %76, %74 ]
  %89 = icmp eq ptr %88, null
  %90 = ptrtoint ptr %88 to i64
  %91 = ptrtoint ptr %2 to i64
  %92 = sub i64 %90, %91
  %93 = select i1 %89, i64 -1, i64 %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %93
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %11 = add i8 %9, -48
  %12 = icmp ult i8 %11, 10
  %13 = icmp eq i8 %9, 46
  %14 = or i1 %13, %12
  br i1 %14, label %22, label %176

15:                                               ; preds = %1
  %16 = load i64, ptr %2, align 8
  %17 = add i64 %16, 5063812098665367110
  %18 = add i64 %16, -3472328296227680304
  %19 = or i64 %17, %18
  %20 = and i64 %19, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %176, label %22

22:                                               ; preds = %15, %5
  %23 = phi ptr [ %2, %15 ], [ %7, %5 ]
  %24 = phi ptr [ %2, %15 ], [ %6, %5 ]
  %25 = phi i64 [ 0, %15 ], [ 1, %5 ]
  %26 = phi ptr [ %2, %15 ], [ %10, %5 ]
  %27 = load i8, ptr %24, align 1, !tbaa !5, !noalias !42
  %28 = add i8 %27, -48
  %29 = icmp ult i8 %28, 10
  br i1 %29, label %30, label %74

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %25, 1
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !5, !noalias !42
  %34 = add i8 %33, -48
  %35 = icmp ult i8 %34, 10
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = or disjoint i64 %25, 2
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5, !noalias !42
  %40 = add i8 %39, -48
  %41 = icmp ult i8 %40, 10
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = add nuw nsw i64 %25, 3
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !5, !noalias !42
  %46 = add i8 %45, -48
  %47 = icmp ult i8 %46, 10
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = or disjoint i64 %25, 4
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !5, !noalias !42
  %52 = add i8 %51, -48
  %53 = icmp ult i8 %52, 10
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = add nuw nsw i64 %25, 5
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !5, !noalias !42
  %58 = add i8 %57, -48
  %59 = icmp ult i8 %58, 10
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = or disjoint i64 %25, 6
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !5, !noalias !42
  %64 = add i8 %63, -48
  %65 = icmp ult i8 %64, 10
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = add nuw nsw i64 %25, 7
  %68 = icmp eq i64 %67, 8
  br i1 %68, label %176, label %69, !llvm.loop !11

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !42
  %72 = add i8 %71, -48
  %73 = icmp ult i8 %72, 10
  br i1 %73, label %176, label %74

74:                                               ; preds = %69, %60, %54, %48, %42, %36, %30, %22
  %75 = phi i64 [ %25, %22 ], [ %31, %30 ], [ %37, %36 ], [ %43, %42 ], [ %49, %48 ], [ %55, %54 ], [ %61, %60 ], [ %67, %69 ]
  %76 = phi i8 [ %27, %22 ], [ %33, %30 ], [ %39, %36 ], [ %45, %42 ], [ %51, %48 ], [ %57, %54 ], [ %63, %60 ], [ %71, %69 ]
  %77 = sub nsw i64 %75, %25
  %78 = icmp eq i8 %76, 46
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, 8
  br i1 %81, label %91, label %82

82:                                               ; preds = %79, %88
  %83 = phi i64 [ %89, %88 ], [ %80, %79 ]
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !5, !noalias !42
  %86 = add i8 %85, -48
  %87 = icmp ult i8 %86, 10
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = add nuw nsw i64 %83, 1
  %90 = icmp eq i64 %89, 8
  br i1 %90, label %91, label %82, !llvm.loop !13

91:                                               ; preds = %88, %82, %79
  %92 = phi i64 [ 8, %79 ], [ %83, %82 ], [ 8, %88 ]
  %93 = xor i64 %75, -1
  %94 = sub nsw i64 %92, %80
  %95 = add i64 %77, %93
  %96 = add i64 %95, %92
  br label %97

97:                                               ; preds = %91, %74
  %98 = phi i64 [ %94, %91 ], [ 0, %74 ]
  %99 = phi i64 [ %96, %91 ], [ %77, %74 ]
  %100 = icmp sgt i64 %99, 19
  br i1 %100, label %101, label %176

101:                                              ; preds = %97
  %102 = load i8, ptr %23, align 1, !tbaa !5, !noalias !42
  switch i8 %102, label %158 [
    i8 48, label %103
    i8 46, label %103
  ]

103:                                              ; preds = %101, %101
  %104 = icmp eq i8 %102, 48
  %105 = sext i1 %104 to i64
  %106 = add nsw i64 %99, %105
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !5, !noalias !42
  switch i8 %109, label %158 [
    i8 48, label %110
    i8 46, label %110
  ]

110:                                              ; preds = %103, %103
  %111 = icmp eq i8 %109, 48
  %112 = sext i1 %111 to i64
  %113 = add nsw i64 %106, %112
  %114 = or disjoint i64 %25, 2
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !5, !noalias !42
  switch i8 %116, label %158 [
    i8 48, label %117
    i8 46, label %117
  ]

117:                                              ; preds = %110, %110
  %118 = icmp eq i8 %116, 48
  %119 = sext i1 %118 to i64
  %120 = add nsw i64 %113, %119
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 3
  %123 = load i8, ptr %122, align 1, !tbaa !5, !noalias !42
  switch i8 %123, label %158 [
    i8 48, label %124
    i8 46, label %124
  ]

124:                                              ; preds = %117, %117
  %125 = icmp eq i8 %123, 48
  %126 = sext i1 %125 to i64
  %127 = add nsw i64 %120, %126
  %128 = or disjoint i64 %25, 4
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !5, !noalias !42
  switch i8 %130, label %158 [
    i8 48, label %131
    i8 46, label %131
  ]

131:                                              ; preds = %124, %124
  %132 = icmp eq i8 %130, 48
  %133 = sext i1 %132 to i64
  %134 = add nsw i64 %127, %133
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 5
  %137 = load i8, ptr %136, align 1, !tbaa !5, !noalias !42
  switch i8 %137, label %158 [
    i8 48, label %138
    i8 46, label %138
  ]

138:                                              ; preds = %131, %131
  %139 = icmp eq i8 %137, 48
  %140 = sext i1 %139 to i64
  %141 = add nsw i64 %134, %140
  %142 = or disjoint i64 %25, 6
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !5, !noalias !42
  switch i8 %144, label %158 [
    i8 48, label %145
    i8 46, label %145
  ]

145:                                              ; preds = %138, %138
  %146 = icmp eq i8 %144, 48
  %147 = sext i1 %146 to i64
  %148 = add nsw i64 %141, %147
  %149 = add nuw nsw i64 %25, 7
  %150 = icmp eq i64 %149, 8
  br i1 %150, label %158, label %151, !llvm.loop !14

151:                                              ; preds = %145
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 %149
  %153 = load i8, ptr %152, align 1, !tbaa !5, !noalias !42
  switch i8 %153, label %158 [
    i8 48, label %154
    i8 46, label %154
  ]

154:                                              ; preds = %151, %151
  %155 = icmp eq i8 %153, 48
  %156 = sext i1 %155 to i64
  %157 = add nsw i64 %148, %156
  br label %158

158:                                              ; preds = %154, %151, %145, %138, %131, %124, %117, %110, %103, %101
  %159 = phi i64 [ %99, %101 ], [ %106, %103 ], [ %113, %110 ], [ %120, %117 ], [ %127, %124 ], [ %134, %131 ], [ %141, %138 ], [ %148, %145 ], [ %148, %151 ], [ %157, %154 ]
  %160 = icmp sgt i64 %159, 19
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = getelementptr inbounds nuw i8, ptr %26, i64 %77
  %163 = icmp samesign eq i64 %77, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %161, %164
  %165 = phi ptr [ %172, %164 ], [ %26, %161 ]
  %166 = phi i64 [ %171, %164 ], [ 0, %161 ]
  %167 = mul nuw i64 %166, 10
  %168 = load i8, ptr %165, align 1, !tbaa !5
  %169 = sext i8 %168 to i64
  %170 = add i64 %167, -48
  %171 = add i64 %170, %169
  %172 = getelementptr inbounds nuw i8, ptr %165, i64 1
  %173 = icmp ult i64 %171, 1000000000000000000
  %174 = icmp ne ptr %172, %162
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %164, label %176, !llvm.loop !15

176:                                              ; preds = %66, %69, %164, %161, %15, %5, %158, %97
  %177 = phi i64 [ %98, %97 ], [ %98, %158 ], [ 0, %5 ], [ 0, %15 ], [ %98, %161 ], [ %98, %164 ], [ 0, %69 ], [ 0, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %177
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!19 = distinct !{!19, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!20 = distinct !{!20, !12}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!23 = distinct !{!23, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!26 = distinct !{!26, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!29 = distinct !{!29, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!32 = distinct !{!32, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!35 = distinct !{!35, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!38 = distinct !{!38, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!41 = distinct !{!41, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!44 = distinct !{!44, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
