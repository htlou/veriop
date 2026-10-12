; ModuleID = 'history-eq/c/fast_float/fe5e97ee/wrap.cpp'
source_filename = "history-eq/c/fast_float/fe5e97ee/wrap.cpp"
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

$_Z11parse_fieldILi10EEmm = comdat any

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_mantissa(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi0EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi0EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %242

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi i64 [ %0, %17 ], [ %5, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %31 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %32 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %33 = icmp ult i32 %28, 10
  br i1 %33, label %34, label %84

34:                                               ; preds = %27
  %35 = shl i64 %29, 56
  %36 = ashr exact i64 %35, 56
  %37 = add nsw i64 %36, -48
  %38 = add nuw nsw i64 %32, 1
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5, !noalias !8
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %84

44:                                               ; preds = %34
  %45 = mul nsw i64 %37, 10
  %46 = sext i8 %40 to i64
  %47 = add nsw i64 %45, -48
  %48 = add nsw i64 %47, %46
  %49 = or disjoint i64 %32, 2
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !5, !noalias !8
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ult i32 %53, 10
  br i1 %54, label %55, label %84

55:                                               ; preds = %44
  %56 = mul nsw i64 %48, 10
  %57 = sext i8 %51 to i64
  %58 = add nsw i64 %56, -48
  %59 = add nsw i64 %58, %57
  %60 = add nuw nsw i64 %32, 3
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !5, !noalias !8
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %84

66:                                               ; preds = %55
  %67 = mul nsw i64 %59, 10
  %68 = sext i8 %62 to i64
  %69 = add nsw i64 %67, -48
  %70 = add nsw i64 %69, %68
  %71 = or disjoint i64 %32, 4
  br i1 %16, label %91, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %74 = load i8, ptr %73, align 1, !tbaa !5, !noalias !8
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = mul nsw i64 %70, 10
  %80 = sext i8 %74 to i64
  %81 = add nsw i64 %79, -48
  %82 = add nsw i64 %81, %80
  %83 = add nuw nsw i64 %32, 5
  br label %91

84:                                               ; preds = %55, %44, %34, %27
  %85 = phi i64 [ 0, %27 ], [ %37, %34 ], [ %48, %44 ], [ %59, %55 ]
  %86 = phi i64 [ %32, %27 ], [ %38, %34 ], [ %49, %44 ], [ %60, %55 ]
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %88 = ptrtoint ptr %87 to i64
  %89 = ptrtoint ptr %30 to i64
  %90 = sub i64 %88, %89
  br label %99

91:                                               ; preds = %78, %72, %66
  %92 = phi i64 [ %70, %66 ], [ %70, %72 ], [ %82, %78 ]
  %93 = phi i64 [ %71, %66 ], [ %71, %72 ], [ %83, %78 ]
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %93
  %95 = ptrtoint ptr %94 to i64
  %96 = ptrtoint ptr %30 to i64
  %97 = sub i64 %95, %96
  %98 = icmp eq i64 %93, 5
  br i1 %98, label %160, label %99

99:                                               ; preds = %84, %91
  %100 = phi i64 [ %90, %84 ], [ %97, %91 ]
  %101 = phi ptr [ %87, %84 ], [ %94, %91 ]
  %102 = phi i64 [ %86, %84 ], [ %93, %91 ]
  %103 = phi i64 [ %85, %84 ], [ %92, %91 ]
  %104 = load i8, ptr %101, align 1, !tbaa !5, !noalias !8
  %105 = icmp eq i8 %104, 46
  br i1 %105, label %106, label %154

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %102, 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 %107
  %109 = icmp slt i64 %102, 1
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 %107
  %112 = load i32, ptr %111, align 1, !noalias !8
  %113 = add i32 %112, 1179010630
  %114 = add i32 %112, -808464432
  %115 = or i32 %113, %114
  %116 = and i32 %115, -2139062144
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %110
  %119 = mul nsw i64 %103, 10000
  %120 = mul i32 %114, 10
  %121 = lshr i32 %114, 8
  %122 = add i32 %120, %121
  %123 = and i32 %122, 16711935
  %124 = mul i32 %123, 6553601
  %125 = lshr i32 %124, 16
  %126 = zext nneg i32 %125 to i64
  %127 = add nsw i64 %119, %126
  %128 = add nuw nsw i64 %102, 5
  br label %129

129:                                              ; preds = %106, %110, %118
  %130 = phi i64 [ %127, %118 ], [ %103, %110 ], [ %103, %106 ]
  %131 = phi i64 [ %128, %118 ], [ %107, %110 ], [ %107, %106 ]
  %132 = icmp eq i64 %131, 5
  br i1 %132, label %148, label %133

133:                                              ; preds = %129, %141
  %134 = phi i64 [ %143, %141 ], [ %131, %129 ]
  %135 = phi i64 [ %146, %141 ], [ %130, %129 ]
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 %134
  %137 = load i8, ptr %136, align 1, !tbaa !5, !noalias !8
  %138 = sext i8 %137 to i32
  %139 = add nsw i32 %138, -48
  %140 = icmp ult i32 %139, 10
  br i1 %140, label %141, label %148

141:                                              ; preds = %133
  %142 = add i8 %137, -48
  %143 = add nuw nsw i64 %134, 1
  %144 = mul i64 %135, 10
  %145 = zext i8 %142 to i64
  %146 = add i64 %144, %145
  %147 = icmp eq i64 %143, 5
  br i1 %147, label %148, label %133, !llvm.loop !11

148:                                              ; preds = %141, %133, %129
  %149 = phi i64 [ %130, %129 ], [ %135, %133 ], [ %146, %141 ]
  %150 = phi i64 [ 5, %129 ], [ %134, %133 ], [ 5, %141 ]
  %151 = sub i64 %150, %107
  %152 = sub nsw i64 %150, %107
  %153 = add i64 %151, %100
  br label %154

154:                                              ; preds = %148, %99
  %155 = phi ptr [ %108, %148 ], [ null, %99 ]
  %156 = phi i64 [ %152, %148 ], [ 0, %99 ]
  %157 = phi i64 [ %149, %148 ], [ %103, %99 ]
  %158 = phi i64 [ %153, %148 ], [ %100, %99 ]
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %242, label %162

160:                                              ; preds = %91
  %161 = icmp eq i64 %97, 0
  br i1 %161, label %242, label %162

162:                                              ; preds = %154, %160
  %163 = phi ptr [ %94, %160 ], [ %101, %154 ]
  %164 = phi i64 [ 5, %160 ], [ %102, %154 ]
  %165 = phi ptr [ null, %160 ], [ %155, %154 ]
  %166 = phi i64 [ 0, %160 ], [ %156, %154 ]
  %167 = phi i64 [ %92, %160 ], [ %157, %154 ]
  %168 = phi i64 [ %97, %160 ], [ %158, %154 ]
  %169 = icmp sgt i64 %168, 19
  br i1 %169, label %170, label %242

170:                                              ; preds = %162
  %171 = load i8, ptr %31, align 1, !tbaa !5
  switch i8 %171, label %207 [
    i8 48, label %172
    i8 46, label %172
  ]

172:                                              ; preds = %170, %170
  %173 = icmp eq i8 %171, 48
  %174 = sext i1 %173 to i64
  %175 = add nsw i64 %168, %174
  %176 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 1
  %178 = load i8, ptr %177, align 1, !tbaa !5
  switch i8 %178, label %207 [
    i8 48, label %179
    i8 46, label %179
  ]

179:                                              ; preds = %172, %172
  %180 = icmp eq i8 %178, 48
  %181 = sext i1 %180 to i64
  %182 = add nsw i64 %175, %181
  %183 = or disjoint i64 %32, 2
  %184 = getelementptr inbounds nuw i8, ptr %2, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !5
  switch i8 %185, label %207 [
    i8 48, label %186
    i8 46, label %186
  ]

186:                                              ; preds = %179, %179
  %187 = icmp eq i8 %185, 48
  %188 = sext i1 %187 to i64
  %189 = add nsw i64 %182, %188
  %190 = add nuw nsw i64 %32, 3
  %191 = icmp eq i64 %190, 5
  br i1 %191, label %207, label %192, !llvm.loop !13

192:                                              ; preds = %186
  %193 = getelementptr inbounds nuw i8, ptr %2, i64 %190
  %194 = load i8, ptr %193, align 1, !tbaa !5
  switch i8 %194, label %207 [
    i8 48, label %195
    i8 46, label %195
  ]

195:                                              ; preds = %192, %192
  %196 = icmp eq i8 %194, 48
  %197 = sext i1 %196 to i64
  %198 = add nsw i64 %189, %197
  br i1 %16, label %207, label %199, !llvm.loop !13

199:                                              ; preds = %195
  %200 = or disjoint i64 %32, 4
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !5
  switch i8 %202, label %207 [
    i8 48, label %203
    i8 46, label %203
  ]

203:                                              ; preds = %199, %199
  %204 = icmp eq i8 %202, 48
  %205 = sext i1 %204 to i64
  %206 = add nsw i64 %198, %205
  br label %207

207:                                              ; preds = %203, %199, %195, %192, %186, %179, %172, %170
  %208 = phi i64 [ %168, %170 ], [ %175, %172 ], [ %182, %179 ], [ %189, %186 ], [ %189, %192 ], [ %198, %195 ], [ %198, %199 ], [ %206, %203 ]
  %209 = icmp sgt i64 %208, 19
  br i1 %209, label %210, label %242

210:                                              ; preds = %207
  %211 = icmp samesign eq i64 %32, %164
  br i1 %211, label %226, label %212

212:                                              ; preds = %210, %212
  %213 = phi ptr [ %220, %212 ], [ %30, %210 ]
  %214 = phi i64 [ %219, %212 ], [ 0, %210 ]
  %215 = mul nuw i64 %214, 10
  %216 = load i8, ptr %213, align 1, !tbaa !5
  %217 = sext i8 %216 to i64
  %218 = add i64 %215, -48
  %219 = add i64 %218, %217
  %220 = getelementptr inbounds nuw i8, ptr %213, i64 1
  %221 = icmp ult i64 %219, 1000000000000000000
  %222 = icmp ne ptr %220, %163
  %223 = select i1 %221, i1 %222, i1 false
  br i1 %223, label %212, label %224, !llvm.loop !14

224:                                              ; preds = %212
  %225 = icmp ugt i64 %219, 999999999999999999
  br i1 %225, label %242, label %226

226:                                              ; preds = %210, %224
  %227 = phi i64 [ %219, %224 ], [ 0, %210 ]
  %228 = getelementptr inbounds nuw i8, ptr %165, i64 %166
  %229 = icmp samesign eq i64 %166, 0
  br i1 %229, label %242, label %230

230:                                              ; preds = %226, %230
  %231 = phi ptr [ %238, %230 ], [ %165, %226 ]
  %232 = phi i64 [ %237, %230 ], [ %227, %226 ]
  %233 = mul nuw i64 %232, 10
  %234 = load i8, ptr %231, align 1, !tbaa !5
  %235 = sext i8 %234 to i64
  %236 = add i64 %233, -48
  %237 = add i64 %236, %235
  %238 = getelementptr inbounds nuw i8, ptr %231, i64 1
  %239 = icmp ult i64 %237, 1000000000000000000
  %240 = icmp ne ptr %238, %228
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %230, label %242, !llvm.loop !15

242:                                              ; preds = %230, %162, %207, %226, %224, %160, %154, %20
  %243 = phi i64 [ 0, %20 ], [ 0, %154 ], [ 0, %160 ], [ %167, %207 ], [ %167, %162 ], [ %219, %224 ], [ %227, %226 ], [ %237, %230 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %243
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_exponent(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %17 = icmp eq i8 %4, 45
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = sext i8 %4 to i32
  %20 = add nsw i32 %19, -48
  br label %28

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = sext i8 %6 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = icmp eq i8 %6, 46
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %267

28:                                               ; preds = %21, %18
  %29 = phi i32 [ %20, %18 ], [ %24, %21 ]
  %30 = phi ptr [ %2, %18 ], [ %3, %21 ]
  %31 = phi ptr [ %2, %18 ], [ %22, %21 ]
  %32 = phi i64 [ 0, %18 ], [ 1, %21 ]
  %33 = icmp ult i32 %29, 10
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  %35 = add nuw nsw i64 %32, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !16
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = or disjoint i64 %32, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5, !noalias !16
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %32, 3
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !5, !noalias !16
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ult i32 %53, 10
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = or disjoint i64 %32, 4
  br i1 %17, label %71, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %59 = load i8, ptr %58, align 1, !tbaa !5, !noalias !16
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  %62 = icmp ult i32 %61, 10
  %63 = add nuw nsw i64 %32, 5
  %64 = select i1 %62, i64 %63, i64 %56
  br label %71

65:                                               ; preds = %48, %41, %34, %28
  %66 = phi i64 [ %32, %28 ], [ %35, %34 ], [ %42, %41 ], [ %49, %48 ]
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %68 = ptrtoint ptr %67 to i64
  %69 = ptrtoint ptr %30 to i64
  %70 = sub i64 %68, %69
  br label %78

71:                                               ; preds = %57, %55
  %72 = phi i64 [ %56, %55 ], [ %64, %57 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %30 to i64
  %76 = sub i64 %74, %75
  %77 = icmp eq i64 %72, 5
  br i1 %77, label %125, label %78

78:                                               ; preds = %65, %71
  %79 = phi i64 [ %70, %65 ], [ %76, %71 ]
  %80 = phi i64 [ %68, %65 ], [ %74, %71 ]
  %81 = phi ptr [ %67, %65 ], [ %73, %71 ]
  %82 = phi i64 [ %66, %65 ], [ %72, %71 ]
  %83 = load i8, ptr %81, align 1, !tbaa !5, !noalias !16
  %84 = icmp eq i8 %83, 46
  br i1 %84, label %85, label %117

85:                                               ; preds = %78
  %86 = add nuw nsw i64 %82, 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %88 = icmp slt i64 %82, 1
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %91 = load i32, ptr %90, align 1, !noalias !16
  %92 = add i32 %91, 1179010630
  %93 = add i32 %91, -808464432
  %94 = or i32 %92, %93
  %95 = and i32 %94, -2139062144
  %96 = icmp eq i32 %95, 0
  %97 = add nuw nsw i64 %82, 5
  %98 = select i1 %96, i64 %97, i64 %86
  br label %99

99:                                               ; preds = %89, %85
  %100 = phi i64 [ %86, %85 ], [ %98, %89 ]
  %101 = icmp eq i64 %100, 5
  br i1 %101, label %112, label %102

102:                                              ; preds = %99, %109
  %103 = phi i64 [ %110, %109 ], [ %100, %99 ]
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !5, !noalias !16
  %106 = sext i8 %105 to i32
  %107 = add nsw i32 %106, -48
  %108 = icmp ult i32 %107, 10
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, 5
  br i1 %111, label %112, label %102, !llvm.loop !11

112:                                              ; preds = %109, %102, %99
  %113 = phi i64 [ 5, %99 ], [ %103, %102 ], [ 5, %109 ]
  %114 = sub nsw i64 %86, %113
  %115 = sub nsw i64 %113, %86
  %116 = sub nsw i64 %79, %114
  br label %117

117:                                              ; preds = %112, %78
  %118 = phi ptr [ %87, %112 ], [ null, %78 ]
  %119 = phi i64 [ %115, %112 ], [ 0, %78 ]
  %120 = phi i64 [ %113, %112 ], [ %82, %78 ]
  %121 = phi i64 [ %114, %112 ], [ 0, %78 ]
  %122 = phi i64 [ %116, %112 ], [ %79, %78 ]
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 %120
  %124 = icmp eq i64 %122, 0
  br i1 %124, label %267, label %127

125:                                              ; preds = %71
  %126 = icmp eq i64 %76, 0
  br i1 %126, label %267, label %176

127:                                              ; preds = %117
  %128 = icmp eq i64 %120, 5
  br i1 %128, label %176, label %129

129:                                              ; preds = %127
  %130 = load i8, ptr %123, align 1, !tbaa !5, !noalias !16
  switch i8 %130, label %176 [
    i8 101, label %131
    i8 69, label %131
  ]

131:                                              ; preds = %129, %129
  %132 = add nuw nsw i64 %120, 1
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 %132
  %134 = icmp eq i64 %132, 5
  br i1 %134, label %144, label %135

135:                                              ; preds = %131
  %136 = load i8, ptr %133, align 1, !tbaa !5, !noalias !16
  %137 = icmp eq i8 %136, 45
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = getelementptr inbounds nuw i8, ptr %123, i64 2
  br label %144

140:                                              ; preds = %135
  %141 = icmp eq i8 %136, 43
  %142 = getelementptr inbounds nuw i8, ptr %123, i64 2
  %143 = select i1 %141, ptr %142, ptr %133
  br label %144

144:                                              ; preds = %140, %131, %138
  %145 = phi ptr [ %139, %138 ], [ %133, %131 ], [ %143, %140 ]
  %146 = phi i1 [ true, %138 ], [ false, %131 ], [ false, %140 ]
  %147 = icmp eq ptr %145, %16
  br i1 %147, label %176, label %148

148:                                              ; preds = %144
  %149 = load i8, ptr %145, align 1, !tbaa !5, !noalias !16
  %150 = sext i8 %149 to i32
  %151 = add nsw i32 %150, -48
  %152 = icmp ult i32 %151, 10
  br i1 %152, label %153, label %176

153:                                              ; preds = %148, %167
  %154 = phi i64 [ %168, %167 ], [ 0, %148 ]
  %155 = phi ptr [ %169, %167 ], [ %145, %148 ]
  %156 = load i8, ptr %155, align 1, !tbaa !5, !noalias !16
  %157 = sext i8 %156 to i32
  %158 = add nsw i32 %157, -48
  %159 = icmp ult i32 %158, 10
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = icmp slt i64 %154, 268435456
  br i1 %161, label %162, label %167

162:                                              ; preds = %160
  %163 = add i8 %156, -48
  %164 = mul nsw i64 %154, 10
  %165 = zext i8 %163 to i64
  %166 = add nsw i64 %164, %165
  br label %167

167:                                              ; preds = %162, %160
  %168 = phi i64 [ %166, %162 ], [ %154, %160 ]
  %169 = getelementptr inbounds nuw i8, ptr %155, i64 1
  %170 = icmp eq ptr %169, %16
  br i1 %170, label %171, label %153, !llvm.loop !19

171:                                              ; preds = %167, %153
  %172 = phi i64 [ %168, %167 ], [ %154, %153 ]
  %173 = sub nsw i64 0, %172
  %174 = select i1 %146, i64 %173, i64 %172
  %175 = add nsw i64 %174, %121
  br label %176

176:                                              ; preds = %125, %129, %127, %171, %144, %148
  %177 = phi i64 [ %80, %171 ], [ %80, %144 ], [ %80, %148 ], [ %80, %129 ], [ %80, %127 ], [ %74, %125 ]
  %178 = phi ptr [ %81, %171 ], [ %81, %144 ], [ %81, %148 ], [ %81, %129 ], [ %81, %127 ], [ %73, %125 ]
  %179 = phi i64 [ %82, %171 ], [ %82, %144 ], [ %82, %148 ], [ %82, %129 ], [ %82, %127 ], [ 5, %125 ]
  %180 = phi ptr [ %118, %171 ], [ %118, %144 ], [ %118, %148 ], [ %118, %129 ], [ %118, %127 ], [ null, %125 ]
  %181 = phi i64 [ %119, %171 ], [ %119, %144 ], [ %119, %148 ], [ %119, %129 ], [ %119, %127 ], [ 0, %125 ]
  %182 = phi i64 [ %122, %171 ], [ %122, %144 ], [ %122, %148 ], [ %122, %129 ], [ %122, %127 ], [ %76, %125 ]
  %183 = phi i64 [ %174, %171 ], [ 0, %144 ], [ 0, %148 ], [ 0, %129 ], [ 0, %127 ], [ 0, %125 ]
  %184 = phi i64 [ %175, %171 ], [ %121, %144 ], [ %121, %148 ], [ %121, %129 ], [ %121, %127 ], [ 0, %125 ]
  %185 = icmp sgt i64 %182, 19
  br i1 %185, label %186, label %267

186:                                              ; preds = %176
  %187 = load i8, ptr %31, align 1, !tbaa !5
  switch i8 %187, label %223 [
    i8 48, label %188
    i8 46, label %188
  ]

188:                                              ; preds = %186, %186
  %189 = icmp eq i8 %187, 48
  %190 = sext i1 %189 to i64
  %191 = add nsw i64 %182, %190
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 1
  %194 = load i8, ptr %193, align 1, !tbaa !5
  switch i8 %194, label %223 [
    i8 48, label %195
    i8 46, label %195
  ]

195:                                              ; preds = %188, %188
  %196 = icmp eq i8 %194, 48
  %197 = sext i1 %196 to i64
  %198 = add nsw i64 %191, %197
  %199 = or disjoint i64 %32, 2
  %200 = getelementptr inbounds nuw i8, ptr %2, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !5
  switch i8 %201, label %223 [
    i8 48, label %202
    i8 46, label %202
  ]

202:                                              ; preds = %195, %195
  %203 = icmp eq i8 %201, 48
  %204 = sext i1 %203 to i64
  %205 = add nsw i64 %198, %204
  %206 = add nuw nsw i64 %32, 3
  %207 = icmp eq i64 %206, 5
  br i1 %207, label %223, label %208, !llvm.loop !13

208:                                              ; preds = %202
  %209 = getelementptr inbounds nuw i8, ptr %2, i64 %206
  %210 = load i8, ptr %209, align 1, !tbaa !5
  switch i8 %210, label %223 [
    i8 48, label %211
    i8 46, label %211
  ]

211:                                              ; preds = %208, %208
  %212 = icmp eq i8 %210, 48
  %213 = sext i1 %212 to i64
  %214 = add nsw i64 %205, %213
  br i1 %17, label %223, label %215, !llvm.loop !13

215:                                              ; preds = %211
  %216 = or disjoint i64 %32, 4
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !5
  switch i8 %218, label %223 [
    i8 48, label %219
    i8 46, label %219
  ]

219:                                              ; preds = %215, %215
  %220 = icmp eq i8 %218, 48
  %221 = sext i1 %220 to i64
  %222 = add nsw i64 %214, %221
  br label %223

223:                                              ; preds = %219, %215, %211, %208, %202, %195, %188, %186
  %224 = phi i64 [ %182, %186 ], [ %191, %188 ], [ %198, %195 ], [ %205, %202 ], [ %205, %208 ], [ %214, %211 ], [ %214, %215 ], [ %222, %219 ]
  %225 = icmp sgt i64 %224, 19
  br i1 %225, label %226, label %267

226:                                              ; preds = %223
  %227 = icmp samesign eq i64 %32, %179
  br i1 %227, label %242, label %228

228:                                              ; preds = %226, %228
  %229 = phi ptr [ %236, %228 ], [ %30, %226 ]
  %230 = phi i64 [ %235, %228 ], [ 0, %226 ]
  %231 = mul nuw i64 %230, 10
  %232 = load i8, ptr %229, align 1, !tbaa !5
  %233 = sext i8 %232 to i64
  %234 = add i64 %231, -48
  %235 = add i64 %234, %233
  %236 = getelementptr inbounds nuw i8, ptr %229, i64 1
  %237 = icmp ult i64 %235, 1000000000000000000
  %238 = icmp ne ptr %236, %178
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %228, label %240, !llvm.loop !14

240:                                              ; preds = %228
  %241 = icmp ugt i64 %235, 999999999999999999
  br i1 %241, label %261, label %242

242:                                              ; preds = %226, %240
  %243 = phi i64 [ %235, %240 ], [ 0, %226 ]
  %244 = getelementptr inbounds nuw i8, ptr %180, i64 %181
  %245 = icmp samesign eq i64 %181, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %242, %246
  %247 = phi ptr [ %254, %246 ], [ %180, %242 ]
  %248 = phi i64 [ %253, %246 ], [ %243, %242 ]
  %249 = mul nuw i64 %248, 10
  %250 = load i8, ptr %247, align 1, !tbaa !5
  %251 = sext i8 %250 to i64
  %252 = add i64 %249, -48
  %253 = add i64 %252, %251
  %254 = getelementptr inbounds nuw i8, ptr %247, i64 1
  %255 = icmp ult i64 %253, 1000000000000000000
  %256 = icmp ne ptr %254, %244
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %246, label %258, !llvm.loop !15

258:                                              ; preds = %246, %242
  %259 = phi ptr [ %180, %242 ], [ %254, %246 ]
  %260 = ptrtoint ptr %180 to i64
  br label %261

261:                                              ; preds = %240, %258
  %262 = phi ptr [ %259, %258 ], [ %236, %240 ]
  %263 = phi i64 [ %260, %258 ], [ %177, %240 ]
  %264 = ptrtoint ptr %262 to i64
  %265 = sub i64 %263, %264
  %266 = add nsw i64 %265, %183
  br label %267

267:                                              ; preds = %176, %223, %261, %125, %117, %21
  %268 = phi i64 [ 0, %21 ], [ 0, %117 ], [ 0, %125 ], [ %266, %261 ], [ %184, %223 ], [ %184, %176 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %268
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_consumed(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %17 = icmp eq i8 %4, 45
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = sext i8 %4 to i32
  %20 = add nsw i32 %19, -48
  br label %28

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = sext i8 %6 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = icmp eq i8 %6, 46
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %216

28:                                               ; preds = %21, %18
  %29 = phi i32 [ %20, %18 ], [ %24, %21 ]
  %30 = phi ptr [ %2, %18 ], [ %3, %21 ]
  %31 = phi ptr [ %2, %18 ], [ %22, %21 ]
  %32 = phi i64 [ 0, %18 ], [ 1, %21 ]
  %33 = icmp ult i32 %29, 10
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  %35 = add nuw nsw i64 %32, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !20
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = or disjoint i64 %32, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5, !noalias !20
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %32, 3
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !5, !noalias !20
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ult i32 %53, 10
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = or disjoint i64 %32, 4
  br i1 %17, label %71, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %59 = load i8, ptr %58, align 1, !tbaa !5, !noalias !20
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  %62 = icmp ult i32 %61, 10
  %63 = add nuw nsw i64 %32, 5
  %64 = select i1 %62, i64 %63, i64 %56
  br label %71

65:                                               ; preds = %48, %41, %34, %28
  %66 = phi i64 [ %32, %28 ], [ %35, %34 ], [ %42, %41 ], [ %49, %48 ]
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %68 = ptrtoint ptr %67 to i64
  %69 = ptrtoint ptr %30 to i64
  %70 = sub i64 %68, %69
  br label %78

71:                                               ; preds = %57, %55
  %72 = phi i64 [ %56, %55 ], [ %64, %57 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %30 to i64
  %76 = sub i64 %74, %75
  %77 = icmp eq i64 %72, 5
  br i1 %77, label %119, label %78

78:                                               ; preds = %65, %71
  %79 = phi i64 [ %70, %65 ], [ %76, %71 ]
  %80 = phi ptr [ %67, %65 ], [ %73, %71 ]
  %81 = phi i64 [ %66, %65 ], [ %72, %71 ]
  %82 = load i8, ptr %80, align 1, !tbaa !5, !noalias !20
  %83 = icmp eq i8 %82, 46
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = add nuw nsw i64 %81, 1
  %86 = icmp slt i64 %81, 1
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %89 = load i32, ptr %88, align 1, !noalias !20
  %90 = add i32 %89, 1179010630
  %91 = add i32 %89, -808464432
  %92 = or i32 %90, %91
  %93 = and i32 %92, -2139062144
  %94 = icmp eq i32 %93, 0
  %95 = add nuw nsw i64 %81, 5
  %96 = select i1 %94, i64 %95, i64 %85
  br label %97

97:                                               ; preds = %87, %84
  %98 = phi i64 [ %85, %84 ], [ %96, %87 ]
  %99 = icmp eq i64 %98, 5
  br i1 %99, label %110, label %100

100:                                              ; preds = %97, %107
  %101 = phi i64 [ %108, %107 ], [ %98, %97 ]
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !5, !noalias !20
  %104 = sext i8 %103 to i32
  %105 = add nsw i32 %104, -48
  %106 = icmp ult i32 %105, 10
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, 5
  br i1 %109, label %110, label %100, !llvm.loop !11

110:                                              ; preds = %107, %100, %97
  %111 = phi i64 [ 5, %97 ], [ %101, %100 ], [ 5, %107 ]
  %112 = sub i64 %111, %85
  %113 = add i64 %112, %79
  br label %114

114:                                              ; preds = %110, %78
  %115 = phi i64 [ %111, %110 ], [ %81, %78 ]
  %116 = phi i64 [ %113, %110 ], [ %79, %78 ]
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 %115
  %118 = icmp eq i64 %116, 0
  br i1 %118, label %216, label %122

119:                                              ; preds = %71
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %121 = icmp eq i64 %76, 0
  br i1 %121, label %216, label %156

122:                                              ; preds = %114
  %123 = icmp eq i64 %115, 5
  br i1 %123, label %156, label %124

124:                                              ; preds = %122
  %125 = load i8, ptr %117, align 1, !tbaa !5, !noalias !20
  switch i8 %125, label %156 [
    i8 101, label %126
    i8 69, label %126
  ]

126:                                              ; preds = %124, %124
  %127 = add nuw nsw i64 %115, 1
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 %127
  %129 = icmp eq i64 %127, 5
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = load i8, ptr %128, align 1, !tbaa !5, !noalias !20
  %132 = icmp eq i8 %131, 45
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = getelementptr inbounds nuw i8, ptr %117, i64 2
  br label %139

135:                                              ; preds = %130
  %136 = icmp eq i8 %131, 43
  %137 = getelementptr inbounds nuw i8, ptr %117, i64 2
  %138 = select i1 %136, ptr %137, ptr %128
  br label %139

139:                                              ; preds = %135, %126, %133
  %140 = phi ptr [ %134, %133 ], [ %128, %126 ], [ %138, %135 ]
  %141 = icmp eq ptr %140, %16
  br i1 %141, label %156, label %142

142:                                              ; preds = %139
  %143 = load i8, ptr %140, align 1, !tbaa !5, !noalias !20
  %144 = sext i8 %143 to i32
  %145 = add nsw i32 %144, -48
  %146 = icmp ult i32 %145, 10
  br i1 %146, label %147, label %156

147:                                              ; preds = %142, %153
  %148 = phi ptr [ %154, %153 ], [ %140, %142 ]
  %149 = load i8, ptr %148, align 1, !tbaa !5, !noalias !20
  %150 = sext i8 %149 to i32
  %151 = add nsw i32 %150, -48
  %152 = icmp ult i32 %151, 10
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = getelementptr inbounds nuw i8, ptr %148, i64 1
  %155 = icmp eq ptr %154, %16
  br i1 %155, label %156, label %147, !llvm.loop !19

156:                                              ; preds = %147, %153, %119, %124, %122, %139, %142
  %157 = phi ptr [ %80, %139 ], [ %80, %142 ], [ %80, %124 ], [ %80, %122 ], [ %73, %119 ], [ %80, %153 ], [ %80, %147 ]
  %158 = phi i64 [ %81, %139 ], [ %81, %142 ], [ %81, %124 ], [ %81, %122 ], [ 5, %119 ], [ %81, %153 ], [ %81, %147 ]
  %159 = phi i64 [ %116, %139 ], [ %116, %142 ], [ %116, %124 ], [ %116, %122 ], [ %76, %119 ], [ %116, %153 ], [ %116, %147 ]
  %160 = phi ptr [ %117, %139 ], [ %117, %142 ], [ %117, %124 ], [ %117, %122 ], [ %120, %119 ], [ %148, %147 ], [ %16, %153 ]
  %161 = icmp sgt i64 %159, 19
  br i1 %161, label %162, label %216

162:                                              ; preds = %156
  %163 = load i8, ptr %31, align 1, !tbaa !5
  switch i8 %163, label %199 [
    i8 48, label %164
    i8 46, label %164
  ]

164:                                              ; preds = %162, %162
  %165 = icmp eq i8 %163, 48
  %166 = sext i1 %165 to i64
  %167 = add nsw i64 %159, %166
  %168 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 1
  %170 = load i8, ptr %169, align 1, !tbaa !5
  switch i8 %170, label %199 [
    i8 48, label %171
    i8 46, label %171
  ]

171:                                              ; preds = %164, %164
  %172 = icmp eq i8 %170, 48
  %173 = sext i1 %172 to i64
  %174 = add nsw i64 %167, %173
  %175 = or disjoint i64 %32, 2
  %176 = getelementptr inbounds nuw i8, ptr %2, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !5
  switch i8 %177, label %199 [
    i8 48, label %178
    i8 46, label %178
  ]

178:                                              ; preds = %171, %171
  %179 = icmp eq i8 %177, 48
  %180 = sext i1 %179 to i64
  %181 = add nsw i64 %174, %180
  %182 = add nuw nsw i64 %32, 3
  %183 = icmp eq i64 %182, 5
  br i1 %183, label %199, label %184, !llvm.loop !13

184:                                              ; preds = %178
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 %182
  %186 = load i8, ptr %185, align 1, !tbaa !5
  switch i8 %186, label %199 [
    i8 48, label %187
    i8 46, label %187
  ]

187:                                              ; preds = %184, %184
  %188 = icmp eq i8 %186, 48
  %189 = sext i1 %188 to i64
  %190 = add nsw i64 %181, %189
  br i1 %17, label %199, label %191, !llvm.loop !13

191:                                              ; preds = %187
  %192 = or disjoint i64 %32, 4
  %193 = getelementptr inbounds nuw i8, ptr %2, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !5
  switch i8 %194, label %199 [
    i8 48, label %195
    i8 46, label %195
  ]

195:                                              ; preds = %191, %191
  %196 = icmp eq i8 %194, 48
  %197 = sext i1 %196 to i64
  %198 = add nsw i64 %190, %197
  br label %199

199:                                              ; preds = %195, %191, %187, %184, %178, %171, %164, %162
  %200 = phi i64 [ %159, %162 ], [ %167, %164 ], [ %174, %171 ], [ %181, %178 ], [ %181, %184 ], [ %190, %187 ], [ %190, %191 ], [ %198, %195 ]
  %201 = icmp slt i64 %200, 20
  %202 = icmp samesign eq i64 %32, %158
  %203 = select i1 %201, i1 true, i1 %202
  br i1 %203, label %216, label %204

204:                                              ; preds = %199, %204
  %205 = phi ptr [ %212, %204 ], [ %30, %199 ]
  %206 = phi i64 [ %211, %204 ], [ 0, %199 ]
  %207 = mul nuw i64 %206, 10
  %208 = load i8, ptr %205, align 1, !tbaa !5
  %209 = sext i8 %208 to i64
  %210 = add i64 %207, -48
  %211 = add i64 %210, %209
  %212 = getelementptr inbounds nuw i8, ptr %205, i64 1
  %213 = icmp ult i64 %211, 1000000000000000000
  %214 = icmp ne ptr %212, %157
  %215 = select i1 %213, i1 %214, i1 false
  br i1 %215, label %204, label %216, !llvm.loop !14

216:                                              ; preds = %204, %156, %199, %119, %114, %21
  %217 = phi ptr [ %3, %21 ], [ %117, %114 ], [ %120, %119 ], [ %160, %199 ], [ %160, %156 ], [ %160, %204 ]
  %218 = ptrtoint ptr %217 to i64
  %219 = ptrtoint ptr %2 to i64
  %220 = sub i64 %218, %219
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %220
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %178

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !23
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !23
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !23
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !23
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %116, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !23
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp slt i64 %80, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i32, ptr %87, align 1, !noalias !23
  %89 = add i32 %88, 1179010630
  %90 = add i32 %88, -808464432
  %91 = or i32 %89, %90
  %92 = and i32 %91, -2139062144
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %80, 5
  %95 = select i1 %93, i64 %94, i64 %84
  br label %96

96:                                               ; preds = %86, %83
  %97 = phi i64 [ %84, %83 ], [ %95, %86 ]
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi i64 [ %107, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5, !noalias !23
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99, !llvm.loop !11

109:                                              ; preds = %106, %99, %96
  %110 = phi i64 [ 5, %96 ], [ %100, %99 ], [ 5, %106 ]
  %111 = sub i64 %110, %84
  %112 = add i64 %111, %78
  br label %113

113:                                              ; preds = %109, %77
  %114 = phi i64 [ %112, %109 ], [ %78, %77 ]
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %178, label %118

116:                                              ; preds = %70
  %117 = icmp eq i64 %75, 0
  br i1 %117, label %178, label %118

118:                                              ; preds = %113, %116
  %119 = phi i64 [ %75, %116 ], [ %78, %113 ]
  %120 = phi ptr [ %72, %116 ], [ %79, %113 ]
  %121 = phi i64 [ 5, %116 ], [ %80, %113 ]
  %122 = phi i64 [ %75, %116 ], [ %114, %113 ]
  %123 = icmp sgt i64 %122, 19
  br i1 %123, label %124, label %178

124:                                              ; preds = %118
  %125 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %125, label %161 [
    i8 48, label %126
    i8 46, label %126
  ]

126:                                              ; preds = %124, %124
  %127 = icmp eq i8 %125, 48
  %128 = sext i1 %127 to i64
  %129 = add nsw i64 %122, %128
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !5
  switch i8 %132, label %161 [
    i8 48, label %133
    i8 46, label %133
  ]

133:                                              ; preds = %126, %126
  %134 = icmp eq i8 %132, 48
  %135 = sext i1 %134 to i64
  %136 = add nsw i64 %129, %135
  %137 = or disjoint i64 %31, 2
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !5
  switch i8 %139, label %161 [
    i8 48, label %140
    i8 46, label %140
  ]

140:                                              ; preds = %133, %133
  %141 = icmp eq i8 %139, 48
  %142 = sext i1 %141 to i64
  %143 = add nsw i64 %136, %142
  %144 = add nuw nsw i64 %31, 3
  %145 = icmp eq i64 %144, 5
  br i1 %145, label %161, label %146, !llvm.loop !13

146:                                              ; preds = %140
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 %144
  %148 = load i8, ptr %147, align 1, !tbaa !5
  switch i8 %148, label %161 [
    i8 48, label %149
    i8 46, label %149
  ]

149:                                              ; preds = %146, %146
  %150 = icmp eq i8 %148, 48
  %151 = sext i1 %150 to i64
  %152 = add nsw i64 %143, %151
  br i1 %16, label %161, label %153, !llvm.loop !13

153:                                              ; preds = %149
  %154 = or disjoint i64 %31, 4
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !5
  switch i8 %156, label %161 [
    i8 48, label %157
    i8 46, label %157
  ]

157:                                              ; preds = %153, %153
  %158 = icmp eq i8 %156, 48
  %159 = sext i1 %158 to i64
  %160 = add nsw i64 %152, %159
  br label %161

161:                                              ; preds = %157, %153, %149, %146, %140, %133, %126, %124
  %162 = phi i64 [ %122, %124 ], [ %129, %126 ], [ %136, %133 ], [ %143, %140 ], [ %143, %146 ], [ %152, %149 ], [ %152, %153 ], [ %160, %157 ]
  %163 = icmp slt i64 %162, 20
  %164 = icmp samesign eq i64 %31, %121
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %178, label %166

166:                                              ; preds = %161, %166
  %167 = phi ptr [ %174, %166 ], [ %29, %161 ]
  %168 = phi i64 [ %173, %166 ], [ 0, %161 ]
  %169 = mul nuw i64 %168, 10
  %170 = load i8, ptr %167, align 1, !tbaa !5
  %171 = sext i8 %170 to i64
  %172 = add i64 %169, -48
  %173 = add i64 %172, %171
  %174 = getelementptr inbounds nuw i8, ptr %167, i64 1
  %175 = icmp ult i64 %173, 1000000000000000000
  %176 = icmp ne ptr %174, %120
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %166, label %178, !llvm.loop !14

178:                                              ; preds = %166, %118, %161, %116, %113, %20
  %179 = phi i64 [ 0, %20 ], [ 0, %113 ], [ 0, %116 ], [ %119, %161 ], [ %119, %118 ], [ %119, %166 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %179
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %180

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !26
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !26
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !26
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !26
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %118, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !26
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp slt i64 %80, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i32, ptr %87, align 1, !noalias !26
  %89 = add i32 %88, 1179010630
  %90 = add i32 %88, -808464432
  %91 = or i32 %89, %90
  %92 = and i32 %91, -2139062144
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %80, 5
  %95 = select i1 %93, i64 %94, i64 %84
  br label %96

96:                                               ; preds = %86, %83
  %97 = phi i64 [ %84, %83 ], [ %95, %86 ]
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi i64 [ %107, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5, !noalias !26
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99, !llvm.loop !11

109:                                              ; preds = %106, %99, %96
  %110 = phi i64 [ 5, %96 ], [ %100, %99 ], [ 5, %106 ]
  %111 = sub i64 %110, %84
  %112 = sub nsw i64 %110, %84
  %113 = add i64 %111, %78
  br label %114

114:                                              ; preds = %109, %77
  %115 = phi i64 [ %112, %109 ], [ 0, %77 ]
  %116 = phi i64 [ %113, %109 ], [ %78, %77 ]
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %180, label %120

118:                                              ; preds = %70
  %119 = icmp eq i64 %75, 0
  br i1 %119, label %180, label %120

120:                                              ; preds = %114, %118
  %121 = phi ptr [ %72, %118 ], [ %79, %114 ]
  %122 = phi i64 [ 5, %118 ], [ %80, %114 ]
  %123 = phi i64 [ 0, %118 ], [ %115, %114 ]
  %124 = phi i64 [ %75, %118 ], [ %116, %114 ]
  %125 = icmp sgt i64 %124, 19
  br i1 %125, label %126, label %180

126:                                              ; preds = %120
  %127 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %127, label %163 [
    i8 48, label %128
    i8 46, label %128
  ]

128:                                              ; preds = %126, %126
  %129 = icmp eq i8 %127, 48
  %130 = sext i1 %129 to i64
  %131 = add nsw i64 %124, %130
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !5
  switch i8 %134, label %163 [
    i8 48, label %135
    i8 46, label %135
  ]

135:                                              ; preds = %128, %128
  %136 = icmp eq i8 %134, 48
  %137 = sext i1 %136 to i64
  %138 = add nsw i64 %131, %137
  %139 = or disjoint i64 %31, 2
  %140 = getelementptr inbounds nuw i8, ptr %2, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !5
  switch i8 %141, label %163 [
    i8 48, label %142
    i8 46, label %142
  ]

142:                                              ; preds = %135, %135
  %143 = icmp eq i8 %141, 48
  %144 = sext i1 %143 to i64
  %145 = add nsw i64 %138, %144
  %146 = add nuw nsw i64 %31, 3
  %147 = icmp eq i64 %146, 5
  br i1 %147, label %163, label %148, !llvm.loop !13

148:                                              ; preds = %142
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 %146
  %150 = load i8, ptr %149, align 1, !tbaa !5
  switch i8 %150, label %163 [
    i8 48, label %151
    i8 46, label %151
  ]

151:                                              ; preds = %148, %148
  %152 = icmp eq i8 %150, 48
  %153 = sext i1 %152 to i64
  %154 = add nsw i64 %145, %153
  br i1 %16, label %163, label %155, !llvm.loop !13

155:                                              ; preds = %151
  %156 = or disjoint i64 %31, 4
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !5
  switch i8 %158, label %163 [
    i8 48, label %159
    i8 46, label %159
  ]

159:                                              ; preds = %155, %155
  %160 = icmp eq i8 %158, 48
  %161 = sext i1 %160 to i64
  %162 = add nsw i64 %154, %161
  br label %163

163:                                              ; preds = %159, %155, %151, %148, %142, %135, %128, %126
  %164 = phi i64 [ %124, %126 ], [ %131, %128 ], [ %138, %135 ], [ %145, %142 ], [ %145, %148 ], [ %154, %151 ], [ %154, %155 ], [ %162, %159 ]
  %165 = icmp sle i64 %164, 19
  %166 = icmp samesign eq i64 %31, %122
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %180, label %168

168:                                              ; preds = %163, %168
  %169 = phi ptr [ %176, %168 ], [ %29, %163 ]
  %170 = phi i64 [ %175, %168 ], [ 0, %163 ]
  %171 = mul nuw i64 %170, 10
  %172 = load i8, ptr %169, align 1, !tbaa !5
  %173 = sext i8 %172 to i64
  %174 = add i64 %171, -48
  %175 = add i64 %174, %173
  %176 = getelementptr inbounds nuw i8, ptr %169, i64 1
  %177 = icmp ult i64 %175, 1000000000000000000
  %178 = icmp ne ptr %176, %121
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %168, label %180, !llvm.loop !14

180:                                              ; preds = %168, %120, %163, %118, %114, %20
  %181 = phi i64 [ 0, %20 ], [ 0, %114 ], [ 0, %118 ], [ %123, %163 ], [ %123, %120 ], [ %123, %168 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %181
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_error(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %177

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !29
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !29
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !29
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !29
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %116, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !29
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp slt i64 %80, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i32, ptr %87, align 1, !noalias !29
  %89 = add i32 %88, 1179010630
  %90 = add i32 %88, -808464432
  %91 = or i32 %89, %90
  %92 = and i32 %91, -2139062144
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %80, 5
  %95 = select i1 %93, i64 %94, i64 %84
  br label %96

96:                                               ; preds = %86, %83
  %97 = phi i64 [ %84, %83 ], [ %95, %86 ]
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi i64 [ %107, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5, !noalias !29
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99, !llvm.loop !11

109:                                              ; preds = %106, %99, %96
  %110 = phi i64 [ 5, %96 ], [ %100, %99 ], [ 5, %106 ]
  %111 = sub i64 %110, %84
  %112 = add i64 %111, %78
  br label %113

113:                                              ; preds = %109, %77
  %114 = phi i64 [ %112, %109 ], [ %78, %77 ]
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %177, label %118

116:                                              ; preds = %70
  %117 = icmp eq i64 %75, 0
  br i1 %117, label %177, label %118

118:                                              ; preds = %113, %116
  %119 = phi ptr [ %72, %116 ], [ %79, %113 ]
  %120 = phi i64 [ 5, %116 ], [ %80, %113 ]
  %121 = phi i64 [ %75, %116 ], [ %114, %113 ]
  %122 = icmp sgt i64 %121, 19
  br i1 %122, label %123, label %177

123:                                              ; preds = %118
  %124 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %124, label %160 [
    i8 48, label %125
    i8 46, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = icmp eq i8 %124, 48
  %127 = sext i1 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !5
  switch i8 %131, label %160 [
    i8 48, label %132
    i8 46, label %132
  ]

132:                                              ; preds = %125, %125
  %133 = icmp eq i8 %131, 48
  %134 = sext i1 %133 to i64
  %135 = add nsw i64 %128, %134
  %136 = or disjoint i64 %31, 2
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !5
  switch i8 %138, label %160 [
    i8 48, label %139
    i8 46, label %139
  ]

139:                                              ; preds = %132, %132
  %140 = icmp eq i8 %138, 48
  %141 = sext i1 %140 to i64
  %142 = add nsw i64 %135, %141
  %143 = add nuw nsw i64 %31, 3
  %144 = icmp eq i64 %143, 5
  br i1 %144, label %160, label %145, !llvm.loop !13

145:                                              ; preds = %139
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !5
  switch i8 %147, label %160 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %145, %145
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %142, %150
  br i1 %16, label %160, label %152, !llvm.loop !13

152:                                              ; preds = %148
  %153 = or disjoint i64 %31, 4
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  switch i8 %155, label %160 [
    i8 48, label %156
    i8 46, label %156
  ]

156:                                              ; preds = %152, %152
  %157 = icmp eq i8 %155, 48
  %158 = sext i1 %157 to i64
  %159 = add nsw i64 %151, %158
  br label %160

160:                                              ; preds = %156, %152, %148, %145, %139, %132, %125, %123
  %161 = phi i64 [ %121, %123 ], [ %128, %125 ], [ %135, %132 ], [ %142, %139 ], [ %142, %145 ], [ %151, %148 ], [ %151, %152 ], [ %159, %156 ]
  %162 = icmp slt i64 %161, 20
  %163 = icmp samesign eq i64 %31, %120
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %160, %165
  %166 = phi ptr [ %173, %165 ], [ %29, %160 ]
  %167 = phi i64 [ %172, %165 ], [ 0, %160 ]
  %168 = mul nuw i64 %167, 10
  %169 = load i8, ptr %166, align 1, !tbaa !5
  %170 = sext i8 %169 to i64
  %171 = add i64 %168, -48
  %172 = add i64 %171, %170
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %174 = icmp ult i64 %172, 1000000000000000000
  %175 = icmp ne ptr %173, %119
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %165, label %177, !llvm.loop !14

177:                                              ; preds = %165, %118, %160, %116, %113, %20
  %178 = phi i64 [ 2, %20 ], [ 6, %113 ], [ 6, %116 ], [ 0, %160 ], [ 0, %118 ], [ 0, %165 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %178
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_valid(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %177

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !32
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !32
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !32
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !32
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %116, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !32
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp slt i64 %80, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i32, ptr %87, align 1, !noalias !32
  %89 = add i32 %88, 1179010630
  %90 = add i32 %88, -808464432
  %91 = or i32 %89, %90
  %92 = and i32 %91, -2139062144
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %80, 5
  %95 = select i1 %93, i64 %94, i64 %84
  br label %96

96:                                               ; preds = %86, %83
  %97 = phi i64 [ %84, %83 ], [ %95, %86 ]
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi i64 [ %107, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5, !noalias !32
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99, !llvm.loop !11

109:                                              ; preds = %106, %99, %96
  %110 = phi i64 [ 5, %96 ], [ %100, %99 ], [ 5, %106 ]
  %111 = sub i64 %110, %84
  %112 = add i64 %111, %78
  br label %113

113:                                              ; preds = %109, %77
  %114 = phi i64 [ %112, %109 ], [ %78, %77 ]
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %177, label %118

116:                                              ; preds = %70
  %117 = icmp eq i64 %75, 0
  br i1 %117, label %177, label %118

118:                                              ; preds = %113, %116
  %119 = phi ptr [ %72, %116 ], [ %79, %113 ]
  %120 = phi i64 [ 5, %116 ], [ %80, %113 ]
  %121 = phi i64 [ %75, %116 ], [ %114, %113 ]
  %122 = icmp sgt i64 %121, 19
  br i1 %122, label %123, label %177

123:                                              ; preds = %118
  %124 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %124, label %160 [
    i8 48, label %125
    i8 46, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = icmp eq i8 %124, 48
  %127 = sext i1 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !5
  switch i8 %131, label %160 [
    i8 48, label %132
    i8 46, label %132
  ]

132:                                              ; preds = %125, %125
  %133 = icmp eq i8 %131, 48
  %134 = sext i1 %133 to i64
  %135 = add nsw i64 %128, %134
  %136 = or disjoint i64 %31, 2
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !5
  switch i8 %138, label %160 [
    i8 48, label %139
    i8 46, label %139
  ]

139:                                              ; preds = %132, %132
  %140 = icmp eq i8 %138, 48
  %141 = sext i1 %140 to i64
  %142 = add nsw i64 %135, %141
  %143 = add nuw nsw i64 %31, 3
  %144 = icmp eq i64 %143, 5
  br i1 %144, label %160, label %145, !llvm.loop !13

145:                                              ; preds = %139
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !5
  switch i8 %147, label %160 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %145, %145
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %142, %150
  br i1 %16, label %160, label %152, !llvm.loop !13

152:                                              ; preds = %148
  %153 = or disjoint i64 %31, 4
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  switch i8 %155, label %160 [
    i8 48, label %156
    i8 46, label %156
  ]

156:                                              ; preds = %152, %152
  %157 = icmp eq i8 %155, 48
  %158 = sext i1 %157 to i64
  %159 = add nsw i64 %151, %158
  br label %160

160:                                              ; preds = %156, %152, %148, %145, %139, %132, %125, %123
  %161 = phi i64 [ %121, %123 ], [ %128, %125 ], [ %135, %132 ], [ %142, %139 ], [ %142, %145 ], [ %151, %148 ], [ %151, %152 ], [ %159, %156 ]
  %162 = icmp slt i64 %161, 20
  %163 = icmp samesign eq i64 %31, %120
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %160, %165
  %166 = phi ptr [ %173, %165 ], [ %29, %160 ]
  %167 = phi i64 [ %172, %165 ], [ 0, %160 ]
  %168 = mul nuw i64 %167, 10
  %169 = load i8, ptr %166, align 1, !tbaa !5
  %170 = sext i8 %169 to i64
  %171 = add i64 %168, -48
  %172 = add i64 %171, %170
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %174 = icmp ult i64 %172, 1000000000000000000
  %175 = icmp ne ptr %173, %119
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %165, label %177, !llvm.loop !14

177:                                              ; preds = %165, %118, %160, %116, %113, %20
  %178 = phi i64 [ 0, %20 ], [ 0, %113 ], [ 0, %116 ], [ 1, %160 ], [ 1, %118 ], [ 1, %165 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %178
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_negative(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %179

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !35
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !35
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !35
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !35
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %116, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !35
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp slt i64 %80, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i32, ptr %87, align 1, !noalias !35
  %89 = add i32 %88, 1179010630
  %90 = add i32 %88, -808464432
  %91 = or i32 %89, %90
  %92 = and i32 %91, -2139062144
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %80, 5
  %95 = select i1 %93, i64 %94, i64 %84
  br label %96

96:                                               ; preds = %86, %83
  %97 = phi i64 [ %84, %83 ], [ %95, %86 ]
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi i64 [ %107, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5, !noalias !35
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99, !llvm.loop !11

109:                                              ; preds = %106, %99, %96
  %110 = phi i64 [ 5, %96 ], [ %100, %99 ], [ 5, %106 ]
  %111 = sub i64 %110, %84
  %112 = add i64 %111, %78
  br label %113

113:                                              ; preds = %109, %77
  %114 = phi i64 [ %112, %109 ], [ %78, %77 ]
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %179, label %118

116:                                              ; preds = %70
  %117 = icmp eq i64 %75, 0
  br i1 %117, label %179, label %118

118:                                              ; preds = %113, %116
  %119 = phi ptr [ %72, %116 ], [ %79, %113 ]
  %120 = phi i64 [ 5, %116 ], [ %80, %113 ]
  %121 = phi i64 [ %75, %116 ], [ %114, %113 ]
  %122 = icmp sgt i64 %121, 19
  br i1 %122, label %123, label %177

123:                                              ; preds = %118
  %124 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %124, label %160 [
    i8 48, label %125
    i8 46, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = icmp eq i8 %124, 48
  %127 = sext i1 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !5
  switch i8 %131, label %160 [
    i8 48, label %132
    i8 46, label %132
  ]

132:                                              ; preds = %125, %125
  %133 = icmp eq i8 %131, 48
  %134 = sext i1 %133 to i64
  %135 = add nsw i64 %128, %134
  %136 = or disjoint i64 %31, 2
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !5
  switch i8 %138, label %160 [
    i8 48, label %139
    i8 46, label %139
  ]

139:                                              ; preds = %132, %132
  %140 = icmp eq i8 %138, 48
  %141 = sext i1 %140 to i64
  %142 = add nsw i64 %135, %141
  %143 = add nuw nsw i64 %31, 3
  %144 = icmp eq i64 %143, 5
  br i1 %144, label %160, label %145, !llvm.loop !13

145:                                              ; preds = %139
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !5
  switch i8 %147, label %160 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %145, %145
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %142, %150
  br i1 %16, label %160, label %152, !llvm.loop !13

152:                                              ; preds = %148
  %153 = or disjoint i64 %31, 4
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  switch i8 %155, label %160 [
    i8 48, label %156
    i8 46, label %156
  ]

156:                                              ; preds = %152, %152
  %157 = icmp eq i8 %155, 48
  %158 = sext i1 %157 to i64
  %159 = add nsw i64 %151, %158
  br label %160

160:                                              ; preds = %156, %152, %148, %145, %139, %132, %125, %123
  %161 = phi i64 [ %121, %123 ], [ %128, %125 ], [ %135, %132 ], [ %142, %139 ], [ %142, %145 ], [ %151, %148 ], [ %151, %152 ], [ %159, %156 ]
  %162 = icmp slt i64 %161, 20
  %163 = icmp samesign eq i64 %31, %120
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %160, %165
  %166 = phi ptr [ %173, %165 ], [ %29, %160 ]
  %167 = phi i64 [ %172, %165 ], [ 0, %160 ]
  %168 = mul nuw i64 %167, 10
  %169 = load i8, ptr %166, align 1, !tbaa !5
  %170 = sext i8 %169 to i64
  %171 = add i64 %168, -48
  %172 = add i64 %171, %170
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %174 = icmp ult i64 %172, 1000000000000000000
  %175 = icmp ne ptr %173, %119
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %165, label %177, !llvm.loop !14

177:                                              ; preds = %165, %160, %118
  %178 = zext i1 %16 to i64
  br label %179

179:                                              ; preds = %116, %113, %20, %177
  %180 = phi i64 [ %178, %177 ], [ 0, %20 ], [ 0, %113 ], [ 0, %116 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %180
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_too_many_digits(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %177

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !38
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !38
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !38
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !38
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %116, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !38
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp slt i64 %80, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i32, ptr %87, align 1, !noalias !38
  %89 = add i32 %88, 1179010630
  %90 = add i32 %88, -808464432
  %91 = or i32 %89, %90
  %92 = and i32 %91, -2139062144
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %80, 5
  %95 = select i1 %93, i64 %94, i64 %84
  br label %96

96:                                               ; preds = %86, %83
  %97 = phi i64 [ %84, %83 ], [ %95, %86 ]
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi i64 [ %107, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5, !noalias !38
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99, !llvm.loop !11

109:                                              ; preds = %106, %99, %96
  %110 = phi i64 [ 5, %96 ], [ %100, %99 ], [ 5, %106 ]
  %111 = sub i64 %110, %84
  %112 = add i64 %111, %78
  br label %113

113:                                              ; preds = %109, %77
  %114 = phi i64 [ %112, %109 ], [ %78, %77 ]
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %177, label %118

116:                                              ; preds = %70
  %117 = icmp eq i64 %75, 0
  br i1 %117, label %177, label %118

118:                                              ; preds = %113, %116
  %119 = phi ptr [ %72, %116 ], [ %79, %113 ]
  %120 = phi i64 [ 5, %116 ], [ %80, %113 ]
  %121 = phi i64 [ %75, %116 ], [ %114, %113 ]
  %122 = icmp sgt i64 %121, 19
  br i1 %122, label %123, label %177

123:                                              ; preds = %118
  %124 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %124, label %160 [
    i8 48, label %125
    i8 46, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = icmp eq i8 %124, 48
  %127 = sext i1 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !5
  switch i8 %131, label %160 [
    i8 48, label %132
    i8 46, label %132
  ]

132:                                              ; preds = %125, %125
  %133 = icmp eq i8 %131, 48
  %134 = sext i1 %133 to i64
  %135 = add nsw i64 %128, %134
  %136 = or disjoint i64 %31, 2
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !5
  switch i8 %138, label %160 [
    i8 48, label %139
    i8 46, label %139
  ]

139:                                              ; preds = %132, %132
  %140 = icmp eq i8 %138, 48
  %141 = sext i1 %140 to i64
  %142 = add nsw i64 %135, %141
  %143 = add nuw nsw i64 %31, 3
  %144 = icmp eq i64 %143, 5
  br i1 %144, label %160, label %145, !llvm.loop !13

145:                                              ; preds = %139
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !5
  switch i8 %147, label %160 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %145, %145
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %142, %150
  br i1 %16, label %160, label %152, !llvm.loop !13

152:                                              ; preds = %148
  %153 = or disjoint i64 %31, 4
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  switch i8 %155, label %160 [
    i8 48, label %156
    i8 46, label %156
  ]

156:                                              ; preds = %152, %152
  %157 = icmp eq i8 %155, 48
  %158 = sext i1 %157 to i64
  %159 = add nsw i64 %151, %158
  br label %160

160:                                              ; preds = %156, %152, %148, %145, %139, %132, %125, %123
  %161 = phi i64 [ %121, %123 ], [ %128, %125 ], [ %135, %132 ], [ %142, %139 ], [ %142, %145 ], [ %151, %148 ], [ %151, %152 ], [ %159, %156 ]
  %162 = icmp sgt i64 %161, 19
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = icmp samesign eq i64 %31, %120
  br i1 %164, label %177, label %165

165:                                              ; preds = %163, %165
  %166 = phi ptr [ %173, %165 ], [ %29, %163 ]
  %167 = phi i64 [ %172, %165 ], [ 0, %163 ]
  %168 = mul nuw i64 %167, 10
  %169 = load i8, ptr %166, align 1, !tbaa !5
  %170 = sext i8 %169 to i64
  %171 = add i64 %168, -48
  %172 = add i64 %171, %170
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %174 = icmp ult i64 %172, 1000000000000000000
  %175 = icmp ne ptr %173, %119
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %165, label %177, !llvm.loop !14

177:                                              ; preds = %165, %163, %118, %160, %116, %113, %20
  %178 = phi i64 [ 0, %20 ], [ 0, %113 ], [ 0, %116 ], [ 0, %160 ], [ 0, %118 ], [ 1, %163 ], [ 1, %165 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %178
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_offset(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %177

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !41
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !41
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !41
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !41
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %116, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !41
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp slt i64 %80, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i32, ptr %87, align 1, !noalias !41
  %89 = add i32 %88, 1179010630
  %90 = add i32 %88, -808464432
  %91 = or i32 %89, %90
  %92 = and i32 %91, -2139062144
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %80, 5
  %95 = select i1 %93, i64 %94, i64 %84
  br label %96

96:                                               ; preds = %86, %83
  %97 = phi i64 [ %84, %83 ], [ %95, %86 ]
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi i64 [ %107, %106 ], [ %97, %96 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5, !noalias !41
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99, !llvm.loop !11

109:                                              ; preds = %106, %99, %96
  %110 = phi i64 [ 5, %96 ], [ %100, %99 ], [ 5, %106 ]
  %111 = sub i64 %110, %84
  %112 = add i64 %111, %78
  br label %113

113:                                              ; preds = %109, %77
  %114 = phi i64 [ %112, %109 ], [ %78, %77 ]
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %177, label %118

116:                                              ; preds = %70
  %117 = icmp eq i64 %75, 0
  br i1 %117, label %177, label %118

118:                                              ; preds = %113, %116
  %119 = phi ptr [ %72, %116 ], [ %79, %113 ]
  %120 = phi i64 [ 5, %116 ], [ %80, %113 ]
  %121 = phi i64 [ %75, %116 ], [ %114, %113 ]
  %122 = icmp sgt i64 %121, 19
  br i1 %122, label %123, label %177

123:                                              ; preds = %118
  %124 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %124, label %160 [
    i8 48, label %125
    i8 46, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = icmp eq i8 %124, 48
  %127 = sext i1 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !5
  switch i8 %131, label %160 [
    i8 48, label %132
    i8 46, label %132
  ]

132:                                              ; preds = %125, %125
  %133 = icmp eq i8 %131, 48
  %134 = sext i1 %133 to i64
  %135 = add nsw i64 %128, %134
  %136 = or disjoint i64 %31, 2
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !5
  switch i8 %138, label %160 [
    i8 48, label %139
    i8 46, label %139
  ]

139:                                              ; preds = %132, %132
  %140 = icmp eq i8 %138, 48
  %141 = sext i1 %140 to i64
  %142 = add nsw i64 %135, %141
  %143 = add nuw nsw i64 %31, 3
  %144 = icmp eq i64 %143, 5
  br i1 %144, label %160, label %145, !llvm.loop !13

145:                                              ; preds = %139
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %143
  %147 = load i8, ptr %146, align 1, !tbaa !5
  switch i8 %147, label %160 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %145, %145
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %142, %150
  br i1 %16, label %160, label %152, !llvm.loop !13

152:                                              ; preds = %148
  %153 = or disjoint i64 %31, 4
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !5
  switch i8 %155, label %160 [
    i8 48, label %156
    i8 46, label %156
  ]

156:                                              ; preds = %152, %152
  %157 = icmp eq i8 %155, 48
  %158 = sext i1 %157 to i64
  %159 = add nsw i64 %151, %158
  br label %160

160:                                              ; preds = %156, %152, %148, %145, %139, %132, %125, %123
  %161 = phi i64 [ %121, %123 ], [ %128, %125 ], [ %135, %132 ], [ %142, %139 ], [ %142, %145 ], [ %151, %148 ], [ %151, %152 ], [ %159, %156 ]
  %162 = icmp slt i64 %161, 20
  %163 = icmp samesign eq i64 %31, %120
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %160, %165
  %166 = phi ptr [ %173, %165 ], [ %29, %160 ]
  %167 = phi i64 [ %172, %165 ], [ 0, %160 ]
  %168 = mul nuw i64 %167, 10
  %169 = load i8, ptr %166, align 1, !tbaa !5
  %170 = sext i8 %169 to i64
  %171 = add i64 %168, -48
  %172 = add i64 %171, %170
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %174 = icmp ult i64 %172, 1000000000000000000
  %175 = icmp ne ptr %173, %119
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %165, label %177, !llvm.loop !14

177:                                              ; preds = %165, %118, %160, %116, %113, %20
  %178 = phi ptr [ null, %20 ], [ null, %113 ], [ null, %116 ], [ %29, %160 ], [ %29, %118 ], [ %29, %165 ]
  %179 = icmp eq ptr %178, null
  %180 = ptrtoint ptr %178 to i64
  %181 = ptrtoint ptr %2 to i64
  %182 = sub i64 %180, %181
  %183 = select i1 %179, i64 -1, i64 %182
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %183
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_offset(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi10EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi10EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %180

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %31 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %32 = icmp ult i32 %28, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5, !noalias !44
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %31, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !44
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %31, 3
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !44
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = or disjoint i64 %31, 4
  br i1 %16, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !5, !noalias !44
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  %62 = add nuw nsw i64 %31, 5
  %63 = select i1 %61, i64 %62, i64 %55
  br label %70

64:                                               ; preds = %47, %40, %33, %27
  %65 = phi i64 [ %31, %27 ], [ %34, %33 ], [ %41, %40 ], [ %48, %47 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %29 to i64
  %69 = sub i64 %67, %68
  br label %77

70:                                               ; preds = %56, %54
  %71 = phi i64 [ %55, %54 ], [ %63, %56 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %29 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %71, 5
  br i1 %76, label %118, label %77

77:                                               ; preds = %64, %70
  %78 = phi i64 [ %69, %64 ], [ %75, %70 ]
  %79 = phi ptr [ %66, %64 ], [ %72, %70 ]
  %80 = phi i64 [ %65, %64 ], [ %71, %70 ]
  %81 = load i8, ptr %79, align 1, !tbaa !5, !noalias !44
  %82 = icmp eq i8 %81, 46
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %80, 1
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %86 = icmp slt i64 %80, 1
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %89 = load i32, ptr %88, align 1, !noalias !44
  %90 = add i32 %89, 1179010630
  %91 = add i32 %89, -808464432
  %92 = or i32 %90, %91
  %93 = and i32 %92, -2139062144
  %94 = icmp eq i32 %93, 0
  %95 = add nuw nsw i64 %80, 5
  %96 = select i1 %94, i64 %95, i64 %84
  br label %97

97:                                               ; preds = %87, %83
  %98 = phi i64 [ %84, %83 ], [ %96, %87 ]
  %99 = icmp eq i64 %98, 5
  br i1 %99, label %110, label %100

100:                                              ; preds = %97, %107
  %101 = phi i64 [ %108, %107 ], [ %98, %97 ]
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !5, !noalias !44
  %104 = sext i8 %103 to i32
  %105 = add nsw i32 %104, -48
  %106 = icmp ult i32 %105, 10
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, 5
  br i1 %109, label %110, label %100, !llvm.loop !11

110:                                              ; preds = %107, %100, %97
  %111 = phi i64 [ 5, %97 ], [ %101, %100 ], [ 5, %107 ]
  %112 = sub i64 %111, %84
  %113 = add i64 %112, %78
  br label %114

114:                                              ; preds = %110, %77
  %115 = phi ptr [ %85, %110 ], [ null, %77 ]
  %116 = phi i64 [ %113, %110 ], [ %78, %77 ]
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %180, label %120

118:                                              ; preds = %70
  %119 = icmp eq i64 %75, 0
  br i1 %119, label %180, label %120

120:                                              ; preds = %114, %118
  %121 = phi ptr [ %72, %118 ], [ %79, %114 ]
  %122 = phi i64 [ 5, %118 ], [ %80, %114 ]
  %123 = phi ptr [ null, %118 ], [ %115, %114 ]
  %124 = phi i64 [ %75, %118 ], [ %116, %114 ]
  %125 = icmp sgt i64 %124, 19
  br i1 %125, label %126, label %180

126:                                              ; preds = %120
  %127 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %127, label %163 [
    i8 48, label %128
    i8 46, label %128
  ]

128:                                              ; preds = %126, %126
  %129 = icmp eq i8 %127, 48
  %130 = sext i1 %129 to i64
  %131 = add nsw i64 %124, %130
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !5
  switch i8 %134, label %163 [
    i8 48, label %135
    i8 46, label %135
  ]

135:                                              ; preds = %128, %128
  %136 = icmp eq i8 %134, 48
  %137 = sext i1 %136 to i64
  %138 = add nsw i64 %131, %137
  %139 = or disjoint i64 %31, 2
  %140 = getelementptr inbounds nuw i8, ptr %2, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !5
  switch i8 %141, label %163 [
    i8 48, label %142
    i8 46, label %142
  ]

142:                                              ; preds = %135, %135
  %143 = icmp eq i8 %141, 48
  %144 = sext i1 %143 to i64
  %145 = add nsw i64 %138, %144
  %146 = add nuw nsw i64 %31, 3
  %147 = icmp eq i64 %146, 5
  br i1 %147, label %163, label %148, !llvm.loop !13

148:                                              ; preds = %142
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 %146
  %150 = load i8, ptr %149, align 1, !tbaa !5
  switch i8 %150, label %163 [
    i8 48, label %151
    i8 46, label %151
  ]

151:                                              ; preds = %148, %148
  %152 = icmp eq i8 %150, 48
  %153 = sext i1 %152 to i64
  %154 = add nsw i64 %145, %153
  br i1 %16, label %163, label %155, !llvm.loop !13

155:                                              ; preds = %151
  %156 = or disjoint i64 %31, 4
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !5
  switch i8 %158, label %163 [
    i8 48, label %159
    i8 46, label %159
  ]

159:                                              ; preds = %155, %155
  %160 = icmp eq i8 %158, 48
  %161 = sext i1 %160 to i64
  %162 = add nsw i64 %154, %161
  br label %163

163:                                              ; preds = %159, %155, %151, %148, %142, %135, %128, %126
  %164 = phi i64 [ %124, %126 ], [ %131, %128 ], [ %138, %135 ], [ %145, %142 ], [ %145, %148 ], [ %154, %151 ], [ %154, %155 ], [ %162, %159 ]
  %165 = icmp slt i64 %164, 20
  %166 = icmp samesign eq i64 %31, %122
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %180, label %168

168:                                              ; preds = %163, %168
  %169 = phi ptr [ %176, %168 ], [ %29, %163 ]
  %170 = phi i64 [ %175, %168 ], [ 0, %163 ]
  %171 = mul nuw i64 %170, 10
  %172 = load i8, ptr %169, align 1, !tbaa !5
  %173 = sext i8 %172 to i64
  %174 = add i64 %171, -48
  %175 = add i64 %174, %173
  %176 = getelementptr inbounds nuw i8, ptr %169, i64 1
  %177 = icmp ult i64 %175, 1000000000000000000
  %178 = icmp ne ptr %176, %121
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %168, label %180, !llvm.loop !14

180:                                              ; preds = %168, %120, %163, %118, %114, %20
  %181 = phi ptr [ null, %20 ], [ null, %114 ], [ null, %118 ], [ %123, %163 ], [ %123, %120 ], [ %123, %168 ]
  %182 = icmp eq ptr %181, null
  %183 = ptrtoint ptr %181 to i64
  %184 = ptrtoint ptr %2 to i64
  %185 = sub i64 %183, %184
  %186 = select i1 %182, i64 -1, i64 %185
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %186
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @target_size() local_unnamed_addr #1 {
  ret i64 64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @target_error_field_offset() local_unnamed_addr #1 {
  ret i64 24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @target_negative_field_offset() local_unnamed_addr #1 {
  ret i64 28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.linker.options = !{}
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
!9 = distinct !{!9, !10, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!18 = distinct !{!18, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!19 = distinct !{!19, !12}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!22 = distinct !{!22, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!25 = distinct !{!25, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!28 = distinct !{!28, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!31 = distinct !{!31, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!34 = distinct !{!34, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!37 = distinct !{!37, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!40 = distinct !{!40, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!43 = distinct !{!43, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!46 = distinct !{!46, !"_ZN10fast_float24parse_number_string_implILb0ELb0EcEENS_22parsed_number_string_tIT1_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
