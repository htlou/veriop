; ModuleID = 'history-eq/c/fast_float/7589a4fe/wrap.cpp'
source_filename = "history-eq/c/fast_float/7589a4fe/wrap.cpp"
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
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = sext i8 %6 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = icmp eq i8 %6, 46
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %220

28:                                               ; preds = %20, %1
  %29 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %30 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %31 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %32 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %33 = load i8, ptr %31, align 1, !tbaa !5, !noalias !8
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %99

37:                                               ; preds = %28
  %38 = sext i8 %33 to i64
  %39 = add nsw i64 %38, -48
  %40 = add nuw nsw i64 %32, 1
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !5, !noalias !8
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %46, label %99

46:                                               ; preds = %37
  %47 = mul nsw i64 %39, 10
  %48 = sext i8 %42 to i64
  %49 = add nsw i64 %47, -48
  %50 = add nsw i64 %49, %48
  %51 = or disjoint i64 %32, 2
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !8
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %99

57:                                               ; preds = %46
  %58 = mul nsw i64 %50, 10
  %59 = sext i8 %53 to i64
  %60 = add nsw i64 %58, -48
  %61 = add i64 %60, %59
  %62 = add nuw nsw i64 %32, 3
  %63 = icmp eq i64 %62, 6
  br i1 %63, label %220, label %64, !llvm.loop !11

64:                                               ; preds = %57
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %66 = load i8, ptr %65, align 1, !tbaa !5, !noalias !8
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, -48
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %99

70:                                               ; preds = %64
  %71 = mul i64 %61, 10
  %72 = sext i8 %66 to i64
  %73 = add i64 %71, -48
  %74 = add i64 %73, %72
  %75 = or disjoint i64 %32, 4
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !5, !noalias !8
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %78, -48
  %80 = icmp ult i32 %79, 10
  br i1 %80, label %81, label %99

81:                                               ; preds = %70
  %82 = mul i64 %74, 10
  %83 = sext i8 %77 to i64
  %84 = add i64 %82, -48
  %85 = add i64 %84, %83
  %86 = add nuw nsw i64 %32, 5
  %87 = icmp eq i64 %86, 6
  br i1 %87, label %220, label %88, !llvm.loop !11

88:                                               ; preds = %81
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %90 = load i8, ptr %89, align 1, !tbaa !5, !noalias !8
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %91, -48
  %93 = icmp ult i32 %92, 10
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = mul i64 %85, 10
  %96 = sext i8 %90 to i64
  %97 = add i64 %95, -48
  %98 = add i64 %97, %96
  br label %220

99:                                               ; preds = %88, %70, %64, %46, %37, %28
  %100 = phi i64 [ %32, %28 ], [ %40, %37 ], [ %51, %46 ], [ %62, %64 ], [ %75, %70 ], [ %86, %88 ]
  %101 = phi i64 [ 0, %28 ], [ %39, %37 ], [ %50, %46 ], [ %61, %64 ], [ %74, %70 ], [ %85, %88 ]
  %102 = phi i8 [ %33, %28 ], [ %42, %37 ], [ %53, %46 ], [ %66, %64 ], [ %77, %70 ], [ %90, %88 ]
  %103 = sub nsw i64 %100, %32
  %104 = icmp eq i8 %102, 46
  br i1 %104, label %105, label %131

105:                                              ; preds = %99
  %106 = add nuw nsw i64 %100, 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %106
  %108 = icmp eq i64 %106, 6
  br i1 %108, label %124, label %109

109:                                              ; preds = %105, %117
  %110 = phi i64 [ %119, %117 ], [ %106, %105 ]
  %111 = phi i64 [ %122, %117 ], [ %101, %105 ]
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 %110
  %113 = load i8, ptr %112, align 1, !tbaa !5, !noalias !8
  %114 = sext i8 %113 to i32
  %115 = add nsw i32 %114, -48
  %116 = icmp ult i32 %115, 10
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = add i8 %113, -48
  %119 = add nuw nsw i64 %110, 1
  %120 = mul i64 %111, 10
  %121 = zext i8 %118 to i64
  %122 = add i64 %120, %121
  %123 = icmp eq i64 %119, 6
  br i1 %123, label %124, label %109, !llvm.loop !13

124:                                              ; preds = %117, %109, %105
  %125 = phi i64 [ %101, %105 ], [ %111, %109 ], [ %122, %117 ]
  %126 = phi i64 [ 6, %105 ], [ %110, %109 ], [ 6, %117 ]
  %127 = xor i64 %100, -1
  %128 = sub nsw i64 %126, %106
  %129 = add i64 %103, %127
  %130 = add i64 %129, %126
  br label %131

131:                                              ; preds = %124, %99
  %132 = phi ptr [ %107, %124 ], [ null, %99 ]
  %133 = phi i64 [ %128, %124 ], [ 0, %99 ]
  %134 = phi i64 [ %125, %124 ], [ %101, %99 ]
  %135 = phi i64 [ %130, %124 ], [ %103, %99 ]
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %220, label %137

137:                                              ; preds = %131
  %138 = icmp sgt i64 %135, 19
  br i1 %138, label %139, label %220

139:                                              ; preds = %137
  %140 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %140, label %184 [
    i8 48, label %141
    i8 46, label %141
  ]

141:                                              ; preds = %139, %139
  %142 = icmp eq i8 %140, 48
  %143 = sext i1 %142 to i64
  %144 = add nsw i64 %135, %143
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !5
  switch i8 %147, label %184 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %141, %141
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %144, %150
  %152 = or disjoint i64 %32, 2
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !5
  switch i8 %154, label %184 [
    i8 48, label %155
    i8 46, label %155
  ]

155:                                              ; preds = %148, %148
  %156 = icmp eq i8 %154, 48
  %157 = sext i1 %156 to i64
  %158 = add nsw i64 %151, %157
  %159 = add nuw nsw i64 %32, 3
  %160 = icmp eq i64 %159, 6
  br i1 %160, label %184, label %161, !llvm.loop !14

161:                                              ; preds = %155
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 %159
  %163 = load i8, ptr %162, align 1, !tbaa !5
  switch i8 %163, label %184 [
    i8 48, label %164
    i8 46, label %164
  ]

164:                                              ; preds = %161, %161
  %165 = icmp eq i8 %163, 48
  %166 = sext i1 %165 to i64
  %167 = add nsw i64 %158, %166
  %168 = or disjoint i64 %32, 4
  %169 = getelementptr inbounds nuw i8, ptr %2, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !5
  switch i8 %170, label %184 [
    i8 48, label %171
    i8 46, label %171
  ]

171:                                              ; preds = %164, %164
  %172 = icmp eq i8 %170, 48
  %173 = sext i1 %172 to i64
  %174 = add nsw i64 %167, %173
  %175 = add nuw nsw i64 %32, 5
  %176 = icmp eq i64 %175, 6
  br i1 %176, label %184, label %177, !llvm.loop !14

177:                                              ; preds = %171
  %178 = getelementptr inbounds nuw i8, ptr %2, i64 %175
  %179 = load i8, ptr %178, align 1, !tbaa !5
  switch i8 %179, label %184 [
    i8 48, label %180
    i8 46, label %180
  ]

180:                                              ; preds = %177, %177
  %181 = icmp eq i8 %179, 48
  %182 = sext i1 %181 to i64
  %183 = add nsw i64 %174, %182
  br label %184

184:                                              ; preds = %180, %177, %171, %164, %161, %155, %148, %141, %139
  %185 = phi i64 [ %135, %139 ], [ %144, %141 ], [ %151, %148 ], [ %158, %155 ], [ %158, %161 ], [ %167, %164 ], [ %174, %171 ], [ %174, %177 ], [ %183, %180 ]
  %186 = icmp sgt i64 %185, 19
  br i1 %186, label %187, label %220

187:                                              ; preds = %184
  %188 = getelementptr inbounds nuw i8, ptr %29, i64 %103
  %189 = icmp samesign eq i64 %103, 0
  br i1 %189, label %204, label %190

190:                                              ; preds = %187, %190
  %191 = phi ptr [ %198, %190 ], [ %29, %187 ]
  %192 = phi i64 [ %197, %190 ], [ 0, %187 ]
  %193 = mul nuw i64 %192, 10
  %194 = load i8, ptr %191, align 1, !tbaa !5
  %195 = sext i8 %194 to i64
  %196 = add i64 %193, -48
  %197 = add i64 %196, %195
  %198 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %199 = icmp ult i64 %197, 1000000000000000000
  %200 = icmp ne ptr %198, %188
  %201 = select i1 %199, i1 %200, i1 false
  br i1 %201, label %190, label %202, !llvm.loop !15

202:                                              ; preds = %190
  %203 = icmp ugt i64 %197, 999999999999999999
  br i1 %203, label %220, label %204

204:                                              ; preds = %187, %202
  %205 = phi i64 [ %197, %202 ], [ 0, %187 ]
  %206 = getelementptr inbounds nuw i8, ptr %132, i64 %133
  %207 = icmp samesign eq i64 %133, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %204, %208
  %209 = phi ptr [ %216, %208 ], [ %132, %204 ]
  %210 = phi i64 [ %215, %208 ], [ %205, %204 ]
  %211 = mul nuw i64 %210, 10
  %212 = load i8, ptr %209, align 1, !tbaa !5
  %213 = sext i8 %212 to i64
  %214 = add i64 %211, -48
  %215 = add i64 %214, %213
  %216 = getelementptr inbounds nuw i8, ptr %209, i64 1
  %217 = icmp ult i64 %215, 1000000000000000000
  %218 = icmp ne ptr %216, %206
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %208, label %220, !llvm.loop !16

220:                                              ; preds = %57, %81, %94, %208, %204, %137, %184, %202, %131, %20
  %221 = phi i64 [ 0, %20 ], [ 0, %131 ], [ %134, %184 ], [ %134, %137 ], [ %197, %202 ], [ %205, %204 ], [ %215, %208 ], [ %61, %57 ], [ %85, %81 ], [ %98, %94 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %221
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_exponent(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %246

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %29 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %30 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %31 = load i8, ptr %28, align 1, !tbaa !5, !noalias !17
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %74

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %30, 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5, !noalias !17
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, -48
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = or disjoint i64 %30, 2
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !5, !noalias !17
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %30, 3
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %246, label %52, !llvm.loop !11

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %54 = load i8, ptr %53, align 1, !tbaa !5, !noalias !17
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, -48
  %57 = icmp ult i32 %56, 10
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = or disjoint i64 %30, 4
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5, !noalias !17
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, -48
  %64 = icmp ult i32 %63, 10
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = add nuw nsw i64 %30, 5
  %67 = icmp eq i64 %66, 6
  br i1 %67, label %246, label %68, !llvm.loop !11

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %70 = load i8, ptr %69, align 1, !tbaa !5, !noalias !17
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %71, -48
  %73 = icmp ult i32 %72, 10
  br i1 %73, label %246, label %74

74:                                               ; preds = %68, %58, %52, %42, %35, %27
  %75 = phi ptr [ %28, %27 ], [ %37, %35 ], [ %44, %42 ], [ %53, %52 ], [ %60, %58 ], [ %69, %68 ]
  %76 = phi i64 [ %30, %27 ], [ %36, %35 ], [ %43, %42 ], [ %50, %52 ], [ %59, %58 ], [ %66, %68 ]
  %77 = phi i8 [ %31, %27 ], [ %38, %35 ], [ %45, %42 ], [ %54, %52 ], [ %61, %58 ], [ %70, %68 ]
  %78 = sub nsw i64 %76, %30
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = add nuw nsw i64 %76, 1
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = icmp eq i64 %81, 6
  br i1 %83, label %94, label %84

84:                                               ; preds = %80, %91
  %85 = phi i64 [ %92, %91 ], [ %81, %80 ]
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !5, !noalias !17
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = add nuw nsw i64 %85, 1
  %93 = icmp eq i64 %92, 6
  br i1 %93, label %94, label %84, !llvm.loop !13

94:                                               ; preds = %91, %84, %80
  %95 = phi i64 [ 6, %80 ], [ %85, %84 ], [ 6, %91 ]
  %96 = sub nsw i64 %81, %95
  %97 = sub nsw i64 %95, %81
  %98 = sub nsw i64 %78, %96
  br label %99

99:                                               ; preds = %94, %74
  %100 = phi ptr [ %82, %94 ], [ null, %74 ]
  %101 = phi i64 [ %97, %94 ], [ 0, %74 ]
  %102 = phi i64 [ %95, %94 ], [ %76, %74 ]
  %103 = phi i64 [ %96, %94 ], [ 0, %74 ]
  %104 = phi i64 [ %98, %94 ], [ %78, %74 ]
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %106 = icmp eq i64 %104, 0
  br i1 %106, label %246, label %107

107:                                              ; preds = %99
  %108 = icmp eq i64 %102, 6
  br i1 %108, label %154, label %109

109:                                              ; preds = %107
  %110 = load i8, ptr %105, align 1, !tbaa !5, !noalias !17
  switch i8 %110, label %154 [
    i8 101, label %111
    i8 69, label %111
  ]

111:                                              ; preds = %109, %109
  %112 = add nuw nsw i64 %102, 1
  %113 = icmp eq i64 %112, 6
  br i1 %113, label %154, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 %112
  %116 = load i8, ptr %115, align 1, !tbaa !5, !noalias !17
  %117 = icmp eq i8 %116, 45
  %118 = add nuw nsw i64 %102, 2
  %119 = icmp eq i8 %116, 43
  %120 = zext i1 %119 to i64
  %121 = add nuw nsw i64 %112, %120
  %122 = select i1 %117, i64 %118, i64 %121
  %123 = icmp eq i64 %122, 6
  br i1 %123, label %154, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 %122
  %126 = load i8, ptr %125, align 1, !tbaa !5, !noalias !17
  %127 = sext i8 %126 to i32
  %128 = add nsw i32 %127, -48
  %129 = icmp ult i32 %128, 10
  br i1 %129, label %130, label %154

130:                                              ; preds = %124, %145
  %131 = phi i64 [ %146, %145 ], [ 0, %124 ]
  %132 = phi i64 [ %147, %145 ], [ %122, %124 ]
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !5, !noalias !17
  %135 = sext i8 %134 to i32
  %136 = add nsw i32 %135, -48
  %137 = icmp ult i32 %136, 10
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = icmp slt i64 %131, 268435456
  br i1 %139, label %140, label %145

140:                                              ; preds = %138
  %141 = add i8 %134, -48
  %142 = mul nsw i64 %131, 10
  %143 = zext i8 %141 to i64
  %144 = add nsw i64 %142, %143
  br label %145

145:                                              ; preds = %140, %138
  %146 = phi i64 [ %144, %140 ], [ %131, %138 ]
  %147 = add nuw nsw i64 %132, 1
  %148 = icmp eq i64 %147, 6
  br i1 %148, label %149, label %130, !llvm.loop !20

149:                                              ; preds = %145, %130
  %150 = phi i64 [ %146, %145 ], [ %131, %130 ]
  %151 = sub nsw i64 0, %150
  %152 = select i1 %117, i64 %151, i64 %150
  %153 = add nsw i64 %152, %103
  br label %154

154:                                              ; preds = %111, %109, %107, %149, %114, %124
  %155 = phi i64 [ %152, %149 ], [ 0, %114 ], [ 0, %124 ], [ 0, %109 ], [ 0, %107 ], [ 0, %111 ]
  %156 = phi i64 [ %153, %149 ], [ %103, %114 ], [ %103, %124 ], [ %103, %109 ], [ %103, %107 ], [ %103, %111 ]
  %157 = icmp sgt i64 %104, 19
  br i1 %157, label %158, label %246

158:                                              ; preds = %154
  %159 = load i8, ptr %29, align 1, !tbaa !5
  switch i8 %159, label %203 [
    i8 48, label %160
    i8 46, label %160
  ]

160:                                              ; preds = %158, %158
  %161 = icmp eq i8 %159, 48
  %162 = sext i1 %161 to i64
  %163 = add nsw i64 %104, %162
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 %30
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !5
  switch i8 %166, label %203 [
    i8 48, label %167
    i8 46, label %167
  ]

167:                                              ; preds = %160, %160
  %168 = icmp eq i8 %166, 48
  %169 = sext i1 %168 to i64
  %170 = add nsw i64 %163, %169
  %171 = or disjoint i64 %30, 2
  %172 = getelementptr inbounds nuw i8, ptr %2, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !5
  switch i8 %173, label %203 [
    i8 48, label %174
    i8 46, label %174
  ]

174:                                              ; preds = %167, %167
  %175 = icmp eq i8 %173, 48
  %176 = sext i1 %175 to i64
  %177 = add nsw i64 %170, %176
  %178 = add nuw nsw i64 %30, 3
  %179 = icmp eq i64 %178, 6
  br i1 %179, label %203, label %180, !llvm.loop !14

180:                                              ; preds = %174
  %181 = getelementptr inbounds nuw i8, ptr %2, i64 %178
  %182 = load i8, ptr %181, align 1, !tbaa !5
  switch i8 %182, label %203 [
    i8 48, label %183
    i8 46, label %183
  ]

183:                                              ; preds = %180, %180
  %184 = icmp eq i8 %182, 48
  %185 = sext i1 %184 to i64
  %186 = add nsw i64 %177, %185
  %187 = or disjoint i64 %30, 4
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !5
  switch i8 %189, label %203 [
    i8 48, label %190
    i8 46, label %190
  ]

190:                                              ; preds = %183, %183
  %191 = icmp eq i8 %189, 48
  %192 = sext i1 %191 to i64
  %193 = add nsw i64 %186, %192
  %194 = add nuw nsw i64 %30, 5
  %195 = icmp eq i64 %194, 6
  br i1 %195, label %203, label %196, !llvm.loop !14

196:                                              ; preds = %190
  %197 = getelementptr inbounds nuw i8, ptr %2, i64 %194
  %198 = load i8, ptr %197, align 1, !tbaa !5
  switch i8 %198, label %203 [
    i8 48, label %199
    i8 46, label %199
  ]

199:                                              ; preds = %196, %196
  %200 = icmp eq i8 %198, 48
  %201 = sext i1 %200 to i64
  %202 = add nsw i64 %193, %201
  br label %203

203:                                              ; preds = %199, %196, %190, %183, %180, %174, %167, %160, %158
  %204 = phi i64 [ %104, %158 ], [ %163, %160 ], [ %170, %167 ], [ %177, %174 ], [ %177, %180 ], [ %186, %183 ], [ %193, %190 ], [ %193, %196 ], [ %202, %199 ]
  %205 = icmp sgt i64 %204, 19
  br i1 %205, label %206, label %246

206:                                              ; preds = %203
  %207 = getelementptr inbounds nuw i8, ptr %28, i64 %78
  %208 = icmp samesign eq i64 %78, 0
  br i1 %208, label %223, label %209

209:                                              ; preds = %206, %209
  %210 = phi ptr [ %217, %209 ], [ %28, %206 ]
  %211 = phi i64 [ %216, %209 ], [ 0, %206 ]
  %212 = mul nuw i64 %211, 10
  %213 = load i8, ptr %210, align 1, !tbaa !5
  %214 = sext i8 %213 to i64
  %215 = add i64 %212, -48
  %216 = add i64 %215, %214
  %217 = getelementptr inbounds nuw i8, ptr %210, i64 1
  %218 = icmp ult i64 %216, 1000000000000000000
  %219 = icmp ne ptr %217, %207
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %209, label %221, !llvm.loop !15

221:                                              ; preds = %209
  %222 = icmp ugt i64 %216, 999999999999999999
  br i1 %222, label %239, label %223

223:                                              ; preds = %206, %221
  %224 = phi i64 [ %216, %221 ], [ 0, %206 ]
  %225 = getelementptr inbounds nuw i8, ptr %100, i64 %101
  %226 = icmp samesign eq i64 %101, 0
  br i1 %226, label %239, label %227

227:                                              ; preds = %223, %227
  %228 = phi ptr [ %235, %227 ], [ %100, %223 ]
  %229 = phi i64 [ %234, %227 ], [ %224, %223 ]
  %230 = mul nuw i64 %229, 10
  %231 = load i8, ptr %228, align 1, !tbaa !5
  %232 = sext i8 %231 to i64
  %233 = add i64 %230, -48
  %234 = add i64 %233, %232
  %235 = getelementptr inbounds nuw i8, ptr %228, i64 1
  %236 = icmp ult i64 %234, 1000000000000000000
  %237 = icmp ne ptr %235, %225
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %227, label %239, !llvm.loop !16

239:                                              ; preds = %227, %223, %221
  %240 = phi ptr [ %217, %221 ], [ %100, %223 ], [ %235, %227 ]
  %241 = phi ptr [ %75, %221 ], [ %100, %223 ], [ %100, %227 ]
  %242 = ptrtoint ptr %241 to i64
  %243 = ptrtoint ptr %240 to i64
  %244 = sub i64 %242, %243
  %245 = add nsw i64 %244, %155
  br label %246

246:                                              ; preds = %49, %65, %68, %154, %203, %239, %99, %20
  %247 = phi i64 [ 0, %20 ], [ 0, %99 ], [ %156, %154 ], [ %245, %239 ], [ %156, %203 ], [ 0, %68 ], [ 0, %65 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %247
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_consumed(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %29, label %139

27:                                               ; preds = %69, %66, %50
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 6
  br label %139

29:                                               ; preds = %20, %1
  %30 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %31 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %32 = load i8, ptr %30, align 1, !tbaa !5, !noalias !21
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %75

36:                                               ; preds = %29
  %37 = add nuw nsw i64 %31, 1
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5, !noalias !21
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = or disjoint i64 %31, 2
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5, !noalias !21
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = add nuw nsw i64 %31, 3
  %52 = icmp eq i64 %51, 6
  br i1 %52, label %27, label %53, !llvm.loop !11

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !5, !noalias !21
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = or disjoint i64 %31, 4
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !5, !noalias !21
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = add nuw nsw i64 %31, 5
  %68 = icmp eq i64 %67, 6
  br i1 %68, label %27, label %69, !llvm.loop !11

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !21
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %27, label %75

75:                                               ; preds = %69, %59, %53, %43, %36, %29
  %76 = phi i64 [ %31, %29 ], [ %37, %36 ], [ %44, %43 ], [ %51, %53 ], [ %60, %59 ], [ %67, %69 ]
  %77 = phi i8 [ %32, %29 ], [ %39, %36 ], [ %46, %43 ], [ %55, %53 ], [ %62, %59 ], [ %71, %69 ]
  %78 = sub nsw i64 %76, %31
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, 6
  br i1 %82, label %93, label %83

83:                                               ; preds = %80, %90
  %84 = phi i64 [ %91, %90 ], [ %81, %80 ]
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !5, !noalias !21
  %87 = sext i8 %86 to i32
  %88 = add nsw i32 %87, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = add nuw nsw i64 %84, 1
  %92 = icmp eq i64 %91, 6
  br i1 %92, label %93, label %83, !llvm.loop !13

93:                                               ; preds = %90, %83, %80
  %94 = phi i64 [ 6, %80 ], [ %84, %83 ], [ 6, %90 ]
  %95 = xor i64 %76, -1
  %96 = add i64 %78, %95
  %97 = add i64 %96, %94
  br label %98

98:                                               ; preds = %93, %75
  %99 = phi i64 [ %94, %93 ], [ %76, %75 ]
  %100 = phi i64 [ %97, %93 ], [ %78, %75 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %102 = icmp eq i64 %100, 0
  %103 = icmp eq i64 %99, 6
  %104 = or i1 %102, %103
  br i1 %104, label %139, label %105

105:                                              ; preds = %98
  %106 = load i8, ptr %101, align 1, !tbaa !5, !noalias !21
  switch i8 %106, label %139 [
    i8 101, label %107
    i8 69, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = add nuw nsw i64 %99, 1
  %109 = icmp eq i64 %108, 6
  br i1 %109, label %139, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 %108
  %112 = load i8, ptr %111, align 1, !tbaa !5, !noalias !21
  %113 = icmp eq i8 %112, 45
  %114 = add nuw nsw i64 %99, 2
  %115 = icmp eq i8 %112, 43
  %116 = zext i1 %115 to i64
  %117 = add nuw nsw i64 %108, %116
  %118 = select i1 %113, i64 %114, i64 %117
  %119 = icmp eq i64 %118, 6
  br i1 %119, label %139, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %118
  %122 = load i8, ptr %121, align 1, !tbaa !5, !noalias !21
  %123 = sext i8 %122 to i32
  %124 = add nsw i32 %123, -48
  %125 = icmp ult i32 %124, 10
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 6
  br label %128

128:                                              ; preds = %126, %135
  %129 = phi ptr [ %137, %135 ], [ %121, %126 ]
  %130 = phi i64 [ %136, %135 ], [ %118, %126 ]
  %131 = load i8, ptr %129, align 1, !tbaa !5, !noalias !21
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %132, -48
  %134 = icmp ult i32 %133, 10
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = add nuw nsw i64 %130, 1
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %138 = icmp eq i64 %136, 6
  br i1 %138, label %139, label %128, !llvm.loop !20

139:                                              ; preds = %120, %110, %105, %107, %135, %128, %27, %98, %20
  %140 = phi ptr [ %3, %20 ], [ %101, %98 ], [ %28, %27 ], [ %101, %110 ], [ %101, %120 ], [ %101, %105 ], [ %101, %107 ], [ %129, %128 ], [ %127, %135 ]
  %141 = ptrtoint ptr %140 to i64
  %142 = ptrtoint ptr %2 to i64
  %143 = sub i64 %141, %142
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %143
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %29, label %102

27:                                               ; preds = %69, %66, %50
  %28 = sub nuw nsw i64 6, %31
  br label %102

29:                                               ; preds = %20, %1
  %30 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %31 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %32 = load i8, ptr %30, align 1, !tbaa !5, !noalias !24
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %75

36:                                               ; preds = %29
  %37 = add nuw nsw i64 %31, 1
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5, !noalias !24
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = or disjoint i64 %31, 2
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5, !noalias !24
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = add nuw nsw i64 %31, 3
  %52 = icmp eq i64 %51, 6
  br i1 %52, label %27, label %53, !llvm.loop !11

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !5, !noalias !24
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = or disjoint i64 %31, 4
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !5, !noalias !24
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = add nuw nsw i64 %31, 5
  %68 = icmp eq i64 %67, 6
  br i1 %68, label %27, label %69, !llvm.loop !11

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !24
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %27, label %75

75:                                               ; preds = %69, %59, %53, %43, %36, %29
  %76 = phi i64 [ %31, %29 ], [ %37, %36 ], [ %44, %43 ], [ %51, %53 ], [ %60, %59 ], [ %67, %69 ]
  %77 = phi i8 [ %32, %29 ], [ %39, %36 ], [ %46, %43 ], [ %55, %53 ], [ %62, %59 ], [ %71, %69 ]
  %78 = sub nsw i64 %76, %31
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, 6
  br i1 %82, label %93, label %83

83:                                               ; preds = %80, %90
  %84 = phi i64 [ %91, %90 ], [ %81, %80 ]
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !5, !noalias !24
  %87 = sext i8 %86 to i32
  %88 = add nsw i32 %87, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = add nuw nsw i64 %84, 1
  %92 = icmp eq i64 %91, 6
  br i1 %92, label %93, label %83, !llvm.loop !13

93:                                               ; preds = %90, %83, %80
  %94 = phi i64 [ 6, %80 ], [ %84, %83 ], [ 6, %90 ]
  %95 = xor i64 %76, -1
  %96 = add i64 %78, %95
  %97 = add i64 %96, %94
  br label %98

98:                                               ; preds = %93, %75
  %99 = phi i64 [ %97, %93 ], [ %78, %75 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 0, i64 %78
  br label %102

102:                                              ; preds = %98, %27, %20
  %103 = phi i64 [ 0, %20 ], [ %28, %27 ], [ %101, %98 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %103
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = sext i8 %6 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = icmp eq i8 %6, 46
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %169

28:                                               ; preds = %20, %1
  %29 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %30 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %31 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %32 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %33 = load i8, ptr %31, align 1, !tbaa !5, !noalias !27
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %76

37:                                               ; preds = %28
  %38 = add nuw nsw i64 %32, 1
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5, !noalias !27
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = or disjoint i64 %32, 2
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5, !noalias !27
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %76

51:                                               ; preds = %44
  %52 = add nuw nsw i64 %32, 3
  %53 = icmp eq i64 %52, 6
  br i1 %53, label %169, label %54, !llvm.loop !11

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !5, !noalias !27
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, -48
  %59 = icmp ult i32 %58, 10
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = or disjoint i64 %32, 4
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !5, !noalias !27
  %64 = sext i8 %63 to i32
  %65 = add nsw i32 %64, -48
  %66 = icmp ult i32 %65, 10
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = add nuw nsw i64 %32, 5
  %69 = icmp eq i64 %68, 6
  br i1 %69, label %169, label %70, !llvm.loop !11

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %68
  %72 = load i8, ptr %71, align 1, !tbaa !5, !noalias !27
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, -48
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %169, label %76

76:                                               ; preds = %70, %60, %54, %44, %37, %28
  %77 = phi i64 [ %32, %28 ], [ %38, %37 ], [ %45, %44 ], [ %52, %54 ], [ %61, %60 ], [ %68, %70 ]
  %78 = phi i8 [ %33, %28 ], [ %40, %37 ], [ %47, %44 ], [ %56, %54 ], [ %63, %60 ], [ %72, %70 ]
  %79 = sub nsw i64 %77, %32
  %80 = icmp eq i8 %78, 46
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp eq i64 %82, 6
  br i1 %83, label %94, label %84

84:                                               ; preds = %81, %91
  %85 = phi i64 [ %92, %91 ], [ %82, %81 ]
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !5, !noalias !27
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = add nuw nsw i64 %85, 1
  %93 = icmp eq i64 %92, 6
  br i1 %93, label %94, label %84, !llvm.loop !13

94:                                               ; preds = %91, %84, %81
  %95 = phi i64 [ 6, %81 ], [ %85, %84 ], [ 6, %91 ]
  %96 = xor i64 %77, -1
  %97 = sub nsw i64 %95, %82
  %98 = add i64 %79, %96
  %99 = add i64 %98, %95
  br label %100

100:                                              ; preds = %94, %76
  %101 = phi i64 [ %97, %94 ], [ 0, %76 ]
  %102 = phi i64 [ %99, %94 ], [ %79, %76 ]
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %169, label %104

104:                                              ; preds = %100
  %105 = icmp sgt i64 %102, 19
  br i1 %105, label %106, label %169

106:                                              ; preds = %104
  %107 = load i8, ptr %30, align 1, !tbaa !5
  switch i8 %107, label %151 [
    i8 48, label %108
    i8 46, label %108
  ]

108:                                              ; preds = %106, %106
  %109 = icmp eq i8 %107, 48
  %110 = sext i1 %109 to i64
  %111 = add nsw i64 %102, %110
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !5
  switch i8 %114, label %151 [
    i8 48, label %115
    i8 46, label %115
  ]

115:                                              ; preds = %108, %108
  %116 = icmp eq i8 %114, 48
  %117 = sext i1 %116 to i64
  %118 = add nsw i64 %111, %117
  %119 = or disjoint i64 %32, 2
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !5
  switch i8 %121, label %151 [
    i8 48, label %122
    i8 46, label %122
  ]

122:                                              ; preds = %115, %115
  %123 = icmp eq i8 %121, 48
  %124 = sext i1 %123 to i64
  %125 = add nsw i64 %118, %124
  %126 = add nuw nsw i64 %32, 3
  %127 = icmp eq i64 %126, 6
  br i1 %127, label %151, label %128, !llvm.loop !14

128:                                              ; preds = %122
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %126
  %130 = load i8, ptr %129, align 1, !tbaa !5
  switch i8 %130, label %151 [
    i8 48, label %131
    i8 46, label %131
  ]

131:                                              ; preds = %128, %128
  %132 = icmp eq i8 %130, 48
  %133 = sext i1 %132 to i64
  %134 = add nsw i64 %125, %133
  %135 = or disjoint i64 %32, 4
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !5
  switch i8 %137, label %151 [
    i8 48, label %138
    i8 46, label %138
  ]

138:                                              ; preds = %131, %131
  %139 = icmp eq i8 %137, 48
  %140 = sext i1 %139 to i64
  %141 = add nsw i64 %134, %140
  %142 = add nuw nsw i64 %32, 5
  %143 = icmp eq i64 %142, 6
  br i1 %143, label %151, label %144, !llvm.loop !14

144:                                              ; preds = %138
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 %142
  %146 = load i8, ptr %145, align 1, !tbaa !5
  switch i8 %146, label %151 [
    i8 48, label %147
    i8 46, label %147
  ]

147:                                              ; preds = %144, %144
  %148 = icmp eq i8 %146, 48
  %149 = sext i1 %148 to i64
  %150 = add nsw i64 %141, %149
  br label %151

151:                                              ; preds = %147, %144, %138, %131, %128, %122, %115, %108, %106
  %152 = phi i64 [ %102, %106 ], [ %111, %108 ], [ %118, %115 ], [ %125, %122 ], [ %125, %128 ], [ %134, %131 ], [ %141, %138 ], [ %141, %144 ], [ %150, %147 ]
  %153 = icmp sgt i64 %152, 19
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = getelementptr inbounds nuw i8, ptr %29, i64 %79
  %156 = icmp samesign eq i64 %79, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %154, %157
  %158 = phi ptr [ %165, %157 ], [ %29, %154 ]
  %159 = phi i64 [ %164, %157 ], [ 0, %154 ]
  %160 = mul nuw i64 %159, 10
  %161 = load i8, ptr %158, align 1, !tbaa !5
  %162 = sext i8 %161 to i64
  %163 = add i64 %160, -48
  %164 = add i64 %163, %162
  %165 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %166 = icmp ult i64 %164, 1000000000000000000
  %167 = icmp ne ptr %165, %155
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %157, label %169, !llvm.loop !15

169:                                              ; preds = %51, %67, %70, %157, %154, %104, %151, %100, %20
  %170 = phi i64 [ 0, %20 ], [ 0, %100 ], [ %101, %151 ], [ %101, %104 ], [ %101, %154 ], [ %101, %157 ], [ 0, %70 ], [ 0, %67 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %170
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_error(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %100

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1, !tbaa !5, !noalias !30
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !30
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5, !noalias !30
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %100, label %51, !llvm.loop !11

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !30
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5, !noalias !30
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %100, label %67, !llvm.loop !11

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1, !tbaa !5, !noalias !30
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %100, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %91, label %81

81:                                               ; preds = %78, %88
  %82 = phi i64 [ %89, %88 ], [ %79, %78 ]
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !5, !noalias !30
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %85, -48
  %87 = icmp ult i32 %86, 10
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, 6
  br i1 %90, label %91, label %81, !llvm.loop !13

91:                                               ; preds = %88, %81, %78
  %92 = phi i64 [ 6, %78 ], [ %82, %81 ], [ 6, %88 ]
  %93 = xor i64 %74, -1
  %94 = add i64 %76, %93
  %95 = add i64 %94, %92
  br label %96

96:                                               ; preds = %91, %73
  %97 = phi i64 [ %95, %91 ], [ %76, %73 ]
  %98 = icmp eq i64 %97, 0
  %99 = select i1 %98, i64 6, i64 0
  br label %100

100:                                              ; preds = %96, %48, %64, %67, %20
  %101 = phi i64 [ 2, %20 ], [ 0, %67 ], [ 0, %64 ], [ 0, %48 ], [ %99, %96 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %101
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_valid(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %100

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1, !tbaa !5, !noalias !33
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !33
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5, !noalias !33
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %100, label %51, !llvm.loop !11

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !33
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5, !noalias !33
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %100, label %67, !llvm.loop !11

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1, !tbaa !5, !noalias !33
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %100, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %91, label %81

81:                                               ; preds = %78, %88
  %82 = phi i64 [ %89, %88 ], [ %79, %78 ]
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !5, !noalias !33
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %85, -48
  %87 = icmp ult i32 %86, 10
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, 6
  br i1 %90, label %91, label %81, !llvm.loop !13

91:                                               ; preds = %88, %81, %78
  %92 = phi i64 [ 6, %78 ], [ %82, %81 ], [ 6, %88 ]
  %93 = xor i64 %74, -1
  %94 = add i64 %76, %93
  %95 = add i64 %94, %92
  br label %96

96:                                               ; preds = %91, %73
  %97 = phi i64 [ %95, %91 ], [ %76, %73 ]
  %98 = icmp eq i64 %97, 0
  %99 = select i1 %98, i64 0, i64 1
  br label %100

100:                                              ; preds = %96, %48, %64, %67, %20
  %101 = phi i64 [ 0, %20 ], [ 1, %67 ], [ 1, %64 ], [ 1, %48 ], [ %99, %96 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %101
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_negative(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %101

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1, !tbaa !5, !noalias !36
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !36
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5, !noalias !36
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %99, label %51, !llvm.loop !11

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !36
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5, !noalias !36
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %99, label %67, !llvm.loop !11

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1, !tbaa !5, !noalias !36
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %99, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %91, label %81

81:                                               ; preds = %78, %88
  %82 = phi i64 [ %89, %88 ], [ %79, %78 ]
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !5, !noalias !36
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %85, -48
  %87 = icmp ult i32 %86, 10
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, 6
  br i1 %90, label %91, label %81, !llvm.loop !13

91:                                               ; preds = %88, %81, %78
  %92 = phi i64 [ 6, %78 ], [ %82, %81 ], [ 6, %88 ]
  %93 = xor i64 %74, -1
  %94 = add i64 %76, %93
  %95 = add i64 %94, %92
  br label %96

96:                                               ; preds = %91, %73
  %97 = phi i64 [ %95, %91 ], [ %76, %73 ]
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96, %48, %64, %67
  %100 = zext i1 %19 to i64
  br label %101

101:                                              ; preds = %96, %20, %99
  %102 = phi i64 [ %100, %99 ], [ 0, %20 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %102
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_too_many_digits(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = sext i8 %6 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = icmp eq i8 %6, 46
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %150

28:                                               ; preds = %20, %1
  %29 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %30 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %31 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %32 = load i8, ptr %30, align 1, !tbaa !5, !noalias !39
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %75

36:                                               ; preds = %28
  %37 = add nuw nsw i64 %31, 1
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5, !noalias !39
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = or disjoint i64 %31, 2
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5, !noalias !39
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = add nuw nsw i64 %31, 3
  %52 = icmp eq i64 %51, 6
  br i1 %52, label %150, label %53, !llvm.loop !11

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !5, !noalias !39
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = or disjoint i64 %31, 4
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !5, !noalias !39
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = add nuw nsw i64 %31, 5
  %68 = icmp eq i64 %67, 6
  br i1 %68, label %150, label %69, !llvm.loop !11

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !39
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %150, label %75

75:                                               ; preds = %69, %59, %53, %43, %36, %28
  %76 = phi i64 [ %31, %28 ], [ %37, %36 ], [ %44, %43 ], [ %51, %53 ], [ %60, %59 ], [ %67, %69 ]
  %77 = phi i8 [ %32, %28 ], [ %39, %36 ], [ %46, %43 ], [ %55, %53 ], [ %62, %59 ], [ %71, %69 ]
  %78 = sub nsw i64 %76, %31
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, 6
  br i1 %82, label %93, label %83

83:                                               ; preds = %80, %90
  %84 = phi i64 [ %91, %90 ], [ %81, %80 ]
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !5, !noalias !39
  %87 = sext i8 %86 to i32
  %88 = add nsw i32 %87, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = add nuw nsw i64 %84, 1
  %92 = icmp eq i64 %91, 6
  br i1 %92, label %93, label %83, !llvm.loop !13

93:                                               ; preds = %90, %83, %80
  %94 = phi i64 [ 6, %80 ], [ %84, %83 ], [ 6, %90 ]
  %95 = xor i64 %76, -1
  %96 = add i64 %78, %95
  %97 = add i64 %96, %94
  br label %98

98:                                               ; preds = %93, %75
  %99 = phi i64 [ %97, %93 ], [ %78, %75 ]
  %100 = icmp sgt i64 %99, 19
  br i1 %100, label %101, label %150

101:                                              ; preds = %98
  %102 = load i8, ptr %29, align 1, !tbaa !5
  switch i8 %102, label %146 [
    i8 48, label %103
    i8 46, label %103
  ]

103:                                              ; preds = %101, %101
  %104 = icmp eq i8 %102, 48
  %105 = sext i1 %104 to i64
  %106 = add nsw i64 %99, %105
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !5
  switch i8 %109, label %146 [
    i8 48, label %110
    i8 46, label %110
  ]

110:                                              ; preds = %103, %103
  %111 = icmp eq i8 %109, 48
  %112 = sext i1 %111 to i64
  %113 = add nsw i64 %106, %112
  %114 = or disjoint i64 %31, 2
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !5
  switch i8 %116, label %146 [
    i8 48, label %117
    i8 46, label %117
  ]

117:                                              ; preds = %110, %110
  %118 = icmp eq i8 %116, 48
  %119 = sext i1 %118 to i64
  %120 = add nsw i64 %113, %119
  %121 = add nuw nsw i64 %31, 3
  %122 = icmp eq i64 %121, 6
  br i1 %122, label %146, label %123, !llvm.loop !14

123:                                              ; preds = %117
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 %121
  %125 = load i8, ptr %124, align 1, !tbaa !5
  switch i8 %125, label %146 [
    i8 48, label %126
    i8 46, label %126
  ]

126:                                              ; preds = %123, %123
  %127 = icmp eq i8 %125, 48
  %128 = sext i1 %127 to i64
  %129 = add nsw i64 %120, %128
  %130 = or disjoint i64 %31, 4
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !5
  switch i8 %132, label %146 [
    i8 48, label %133
    i8 46, label %133
  ]

133:                                              ; preds = %126, %126
  %134 = icmp eq i8 %132, 48
  %135 = sext i1 %134 to i64
  %136 = add nsw i64 %129, %135
  %137 = add nuw nsw i64 %31, 5
  %138 = icmp eq i64 %137, 6
  br i1 %138, label %146, label %139, !llvm.loop !14

139:                                              ; preds = %133
  %140 = getelementptr inbounds nuw i8, ptr %2, i64 %137
  %141 = load i8, ptr %140, align 1, !tbaa !5
  switch i8 %141, label %146 [
    i8 48, label %142
    i8 46, label %142
  ]

142:                                              ; preds = %139, %139
  %143 = icmp eq i8 %141, 48
  %144 = sext i1 %143 to i64
  %145 = add nsw i64 %136, %144
  br label %146

146:                                              ; preds = %142, %139, %133, %126, %123, %117, %110, %103, %101
  %147 = phi i64 [ %99, %101 ], [ %106, %103 ], [ %113, %110 ], [ %120, %117 ], [ %120, %123 ], [ %129, %126 ], [ %136, %133 ], [ %136, %139 ], [ %145, %142 ]
  %148 = icmp sgt i64 %147, 19
  %149 = zext i1 %148 to i64
  br label %150

150:                                              ; preds = %50, %66, %69, %146, %98, %20
  %151 = phi i64 [ 0, %20 ], [ 0, %98 ], [ %149, %146 ], [ 0, %69 ], [ 0, %66 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %151
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_offset(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %101

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %29 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %30 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %31 = load i8, ptr %29, align 1, !tbaa !5, !noalias !42
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %74

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %30, 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5, !noalias !42
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, -48
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = or disjoint i64 %30, 2
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !5, !noalias !42
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %30, 3
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %101, label %52, !llvm.loop !11

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %54 = load i8, ptr %53, align 1, !tbaa !5, !noalias !42
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, -48
  %57 = icmp ult i32 %56, 10
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = or disjoint i64 %30, 4
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5, !noalias !42
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, -48
  %64 = icmp ult i32 %63, 10
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = add nuw nsw i64 %30, 5
  %67 = icmp eq i64 %66, 6
  br i1 %67, label %101, label %68, !llvm.loop !11

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %70 = load i8, ptr %69, align 1, !tbaa !5, !noalias !42
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %71, -48
  %73 = icmp ult i32 %72, 10
  br i1 %73, label %101, label %74

74:                                               ; preds = %68, %58, %52, %42, %35, %27
  %75 = phi i64 [ %30, %27 ], [ %36, %35 ], [ %43, %42 ], [ %50, %52 ], [ %59, %58 ], [ %66, %68 ]
  %76 = phi i8 [ %31, %27 ], [ %38, %35 ], [ %45, %42 ], [ %54, %52 ], [ %61, %58 ], [ %70, %68 ]
  %77 = sub nsw i64 %75, %30
  %78 = icmp eq i8 %76, 46
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, 6
  br i1 %81, label %92, label %82

82:                                               ; preds = %79, %89
  %83 = phi i64 [ %90, %89 ], [ %80, %79 ]
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !5, !noalias !42
  %86 = sext i8 %85 to i32
  %87 = add nsw i32 %86, -48
  %88 = icmp ult i32 %87, 10
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, 6
  br i1 %91, label %92, label %82, !llvm.loop !13

92:                                               ; preds = %89, %82, %79
  %93 = phi i64 [ 6, %79 ], [ %83, %82 ], [ 6, %89 ]
  %94 = xor i64 %75, -1
  %95 = add i64 %77, %94
  %96 = add i64 %95, %93
  br label %97

97:                                               ; preds = %92, %74
  %98 = phi i64 [ %96, %92 ], [ %77, %74 ]
  %99 = icmp eq i64 %98, 0
  %100 = select i1 %99, ptr null, ptr %28
  br label %101

101:                                              ; preds = %97, %49, %65, %68, %20
  %102 = phi ptr [ null, %20 ], [ %28, %68 ], [ %28, %65 ], [ %28, %49 ], [ %100, %97 ]
  %103 = icmp eq ptr %102, null
  %104 = ptrtoint ptr %102 to i64
  %105 = ptrtoint ptr %2 to i64
  %106 = sub i64 %104, %105
  %107 = select i1 %103, i64 -1, i64 %106
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %107
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_offset(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi10EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi10EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #2
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
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %102

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1, !tbaa !5, !noalias !45
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5, !noalias !45
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5, !noalias !45
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %102, label %51, !llvm.loop !11

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !45
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5, !noalias !45
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %102, label %67, !llvm.loop !11

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1, !tbaa !5, !noalias !45
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %102, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = icmp eq i64 %79, 6
  br i1 %81, label %92, label %82

82:                                               ; preds = %78, %89
  %83 = phi i64 [ %90, %89 ], [ %79, %78 ]
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !5, !noalias !45
  %86 = sext i8 %85 to i32
  %87 = add nsw i32 %86, -48
  %88 = icmp ult i32 %87, 10
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, 6
  br i1 %91, label %92, label %82, !llvm.loop !13

92:                                               ; preds = %89, %82, %78
  %93 = phi i64 [ 6, %78 ], [ %83, %82 ], [ 6, %89 ]
  %94 = xor i64 %74, -1
  %95 = add i64 %76, %94
  %96 = add i64 %95, %93
  br label %97

97:                                               ; preds = %92, %73
  %98 = phi ptr [ %80, %92 ], [ null, %73 ]
  %99 = phi i64 [ %96, %92 ], [ %76, %73 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, ptr null, ptr %98
  br label %102

102:                                              ; preds = %97, %48, %64, %67, %20
  %103 = phi ptr [ null, %20 ], [ null, %67 ], [ null, %64 ], [ null, %48 ], [ %101, %97 ]
  %104 = icmp eq ptr %103, null
  %105 = ptrtoint ptr %103 to i64
  %106 = ptrtoint ptr %2 to i64
  %107 = sub i64 %105, %106
  %108 = select i1 %104, i64 -1, i64 %107
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %108
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
!9 = distinct !{!9, !10, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!19 = distinct !{!19, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!20 = distinct !{!20, !12}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!23 = distinct !{!23, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!26 = distinct !{!26, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!29 = distinct !{!29, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!32 = distinct !{!32, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!35 = distinct !{!35, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!38 = distinct !{!38, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!41 = distinct !{!41, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!44 = distinct !{!44, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!47 = distinct !{!47, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
