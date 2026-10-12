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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
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
  br i1 %27, label %28, label %245

28:                                               ; preds = %20, %1
  %29 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %30 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %31 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %32 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %33 = load i8, ptr %31, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %99

37:                                               ; preds = %28
  %38 = sext i8 %33 to i64
  %39 = add nsw i64 %38, -48
  %40 = add nuw nsw i64 %32, 1
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
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
  %53 = load i8, ptr %52, align 1
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
  br i1 %63, label %245, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %66 = load i8, ptr %65, align 1
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
  %77 = load i8, ptr %76, align 1
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
  br i1 %87, label %245, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %90 = load i8, ptr %89, align 1
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %91, -48
  %93 = icmp ult i32 %92, 10
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = mul i64 %85, 10
  %96 = sext i8 %90 to i64
  %97 = add i64 %95, -48
  %98 = add i64 %97, %96
  br label %245

99:                                               ; preds = %88, %70, %64, %46, %37, %28
  %100 = phi i64 [ %32, %28 ], [ %40, %37 ], [ %51, %46 ], [ %62, %64 ], [ %75, %70 ], [ %86, %88 ]
  %101 = phi i64 [ 0, %28 ], [ %39, %37 ], [ %50, %46 ], [ %61, %64 ], [ %74, %70 ], [ %85, %88 ]
  %102 = phi i8 [ %33, %28 ], [ %42, %37 ], [ %53, %46 ], [ %66, %64 ], [ %77, %70 ], [ %90, %88 ]
  %103 = sub nsw i64 %100, %32
  %104 = icmp eq i8 %102, 46
  br i1 %104, label %105, label %156

105:                                              ; preds = %99
  %106 = add nuw nsw i64 %100, 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %106
  %108 = icmp samesign ult i64 %100, 2
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load i32, ptr %107, align 1
  %111 = add i32 %110, 1179010630
  %112 = add i32 %110, -808464432
  %113 = or i32 %111, %112
  %114 = and i32 %113, -2139062144
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = mul i64 %101, 10000
  %118 = mul i32 %112, 10
  %119 = lshr i32 %112, 8
  %120 = add i32 %118, %119
  %121 = and i32 %120, 16711935
  %122 = mul i32 %121, 6553601
  %123 = lshr i32 %122, 16
  %124 = zext nneg i32 %123 to i64
  %125 = add i64 %117, %124
  %126 = add nuw nsw i64 %100, 5
  br label %127

127:                                              ; preds = %105, %116
  %128 = phi i64 [ %125, %116 ], [ %101, %105 ]
  %129 = phi i64 [ %126, %116 ], [ %106, %105 ]
  %130 = icmp eq i64 %129, 6
  br i1 %130, label %149, label %131

131:                                              ; preds = %109, %127
  %132 = phi i64 [ %106, %109 ], [ %129, %127 ]
  %133 = phi i64 [ %101, %109 ], [ %128, %127 ]
  br label %134

134:                                              ; preds = %131, %142
  %135 = phi i64 [ %144, %142 ], [ %132, %131 ]
  %136 = phi i64 [ %147, %142 ], [ %133, %131 ]
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %135
  %138 = load i8, ptr %137, align 1
  %139 = sext i8 %138 to i32
  %140 = add nsw i32 %139, -48
  %141 = icmp ult i32 %140, 10
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = add i8 %138, -48
  %144 = add nuw nsw i64 %135, 1
  %145 = mul i64 %136, 10
  %146 = zext i8 %143 to i64
  %147 = add i64 %145, %146
  %148 = icmp eq i64 %144, 6
  br i1 %148, label %149, label %134

149:                                              ; preds = %142, %134, %127
  %150 = phi i64 [ %128, %127 ], [ %136, %134 ], [ %147, %142 ]
  %151 = phi i64 [ 6, %127 ], [ %135, %134 ], [ 6, %142 ]
  %152 = xor i64 %100, -1
  %153 = sub nsw i64 %151, %106
  %154 = add i64 %103, %152
  %155 = add i64 %154, %151
  br label %156

156:                                              ; preds = %149, %99
  %157 = phi ptr [ %107, %149 ], [ null, %99 ]
  %158 = phi i64 [ %153, %149 ], [ 0, %99 ]
  %159 = phi i64 [ %150, %149 ], [ %101, %99 ]
  %160 = phi i64 [ %155, %149 ], [ %103, %99 ]
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %245, label %162

162:                                              ; preds = %156
  %163 = icmp sgt i64 %160, 19
  br i1 %163, label %164, label %245

164:                                              ; preds = %162
  %165 = load i8, ptr %30, align 1
  switch i8 %165, label %209 [
    i8 48, label %166
    i8 46, label %166
  ]

166:                                              ; preds = %164, %164
  %167 = icmp eq i8 %165, 48
  %168 = sext i1 %167 to i64
  %169 = add nsw i64 %160, %168
  %170 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 1
  %172 = load i8, ptr %171, align 1
  switch i8 %172, label %209 [
    i8 48, label %173
    i8 46, label %173
  ]

173:                                              ; preds = %166, %166
  %174 = icmp eq i8 %172, 48
  %175 = sext i1 %174 to i64
  %176 = add nsw i64 %169, %175
  %177 = or disjoint i64 %32, 2
  %178 = getelementptr inbounds nuw i8, ptr %2, i64 %177
  %179 = load i8, ptr %178, align 1
  switch i8 %179, label %209 [
    i8 48, label %180
    i8 46, label %180
  ]

180:                                              ; preds = %173, %173
  %181 = icmp eq i8 %179, 48
  %182 = sext i1 %181 to i64
  %183 = add nsw i64 %176, %182
  %184 = add nuw nsw i64 %32, 3
  %185 = icmp eq i64 %184, 6
  br i1 %185, label %209, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds nuw i8, ptr %2, i64 %184
  %188 = load i8, ptr %187, align 1
  switch i8 %188, label %209 [
    i8 48, label %189
    i8 46, label %189
  ]

189:                                              ; preds = %186, %186
  %190 = icmp eq i8 %188, 48
  %191 = sext i1 %190 to i64
  %192 = add nsw i64 %183, %191
  %193 = or disjoint i64 %32, 4
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 %193
  %195 = load i8, ptr %194, align 1
  switch i8 %195, label %209 [
    i8 48, label %196
    i8 46, label %196
  ]

196:                                              ; preds = %189, %189
  %197 = icmp eq i8 %195, 48
  %198 = sext i1 %197 to i64
  %199 = add nsw i64 %192, %198
  %200 = add nuw nsw i64 %32, 5
  %201 = icmp eq i64 %200, 6
  br i1 %201, label %209, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds nuw i8, ptr %2, i64 %200
  %204 = load i8, ptr %203, align 1
  switch i8 %204, label %209 [
    i8 48, label %205
    i8 46, label %205
  ]

205:                                              ; preds = %202, %202
  %206 = icmp eq i8 %204, 48
  %207 = sext i1 %206 to i64
  %208 = add nsw i64 %199, %207
  br label %209

209:                                              ; preds = %205, %202, %196, %189, %186, %180, %173, %166, %164
  %210 = phi i64 [ %160, %164 ], [ %169, %166 ], [ %176, %173 ], [ %183, %180 ], [ %183, %186 ], [ %192, %189 ], [ %199, %196 ], [ %199, %202 ], [ %208, %205 ]
  %211 = icmp sgt i64 %210, 19
  br i1 %211, label %212, label %245

212:                                              ; preds = %209
  %213 = getelementptr inbounds nuw i8, ptr %29, i64 %103
  %214 = icmp samesign eq i64 %103, 0
  br i1 %214, label %229, label %215

215:                                              ; preds = %212, %215
  %216 = phi ptr [ %223, %215 ], [ %29, %212 ]
  %217 = phi i64 [ %222, %215 ], [ 0, %212 ]
  %218 = mul nuw i64 %217, 10
  %219 = load i8, ptr %216, align 1
  %220 = sext i8 %219 to i64
  %221 = add i64 %218, -48
  %222 = add i64 %221, %220
  %223 = getelementptr inbounds nuw i8, ptr %216, i64 1
  %224 = icmp ult i64 %222, 1000000000000000000
  %225 = icmp ne ptr %223, %213
  %226 = select i1 %224, i1 %225, i1 false
  br i1 %226, label %215, label %227

227:                                              ; preds = %215
  %228 = icmp ugt i64 %222, 999999999999999999
  br i1 %228, label %245, label %229

229:                                              ; preds = %212, %227
  %230 = phi i64 [ %222, %227 ], [ 0, %212 ]
  %231 = getelementptr inbounds nuw i8, ptr %157, i64 %158
  %232 = icmp samesign eq i64 %158, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %229, %233
  %234 = phi ptr [ %241, %233 ], [ %157, %229 ]
  %235 = phi i64 [ %240, %233 ], [ %230, %229 ]
  %236 = mul nuw i64 %235, 10
  %237 = load i8, ptr %234, align 1
  %238 = sext i8 %237 to i64
  %239 = add i64 %236, -48
  %240 = add i64 %239, %238
  %241 = getelementptr inbounds nuw i8, ptr %234, i64 1
  %242 = icmp ult i64 %240, 1000000000000000000
  %243 = icmp ne ptr %241, %231
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %233, label %245

245:                                              ; preds = %57, %81, %94, %233, %229, %162, %209, %227, %156, %20
  %246 = phi i64 [ 0, %20 ], [ 0, %156 ], [ %159, %209 ], [ %159, %162 ], [ %222, %227 ], [ %230, %229 ], [ %240, %233 ], [ %61, %57 ], [ %85, %81 ], [ %98, %94 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %246
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %260

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %29 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %30 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %31 = load i8, ptr %28, align 1
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %74

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %30, 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, -48
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = or disjoint i64 %30, 2
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %30, 3
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %260, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %54 = load i8, ptr %53, align 1
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, -48
  %57 = icmp ult i32 %56, 10
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = or disjoint i64 %30, 4
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, -48
  %64 = icmp ult i32 %63, 10
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = add nuw nsw i64 %30, 5
  %67 = icmp eq i64 %66, 6
  br i1 %67, label %260, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %70 = load i8, ptr %69, align 1
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %71, -48
  %73 = icmp ult i32 %72, 10
  br i1 %73, label %260, label %74

74:                                               ; preds = %68, %58, %52, %42, %35, %27
  %75 = phi ptr [ %28, %27 ], [ %37, %35 ], [ %44, %42 ], [ %53, %52 ], [ %60, %58 ], [ %69, %68 ]
  %76 = phi i64 [ %30, %27 ], [ %36, %35 ], [ %43, %42 ], [ %50, %52 ], [ %59, %58 ], [ %66, %68 ]
  %77 = phi i8 [ %31, %27 ], [ %38, %35 ], [ %45, %42 ], [ %54, %52 ], [ %61, %58 ], [ %70, %68 ]
  %78 = sub nsw i64 %76, %30
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %113

80:                                               ; preds = %74
  %81 = add nuw nsw i64 %76, 1
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = icmp samesign ult i64 %76, 2
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, ptr %82, align 1
  %86 = add i32 %85, 1179010630
  %87 = add i32 %85, -808464432
  %88 = or i32 %86, %87
  %89 = and i32 %88, -2139062144
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = add nuw nsw i64 %76, 5
  br label %93

93:                                               ; preds = %80, %91
  %94 = phi i64 [ %92, %91 ], [ %81, %80 ]
  %95 = icmp eq i64 %94, 6
  br i1 %95, label %108, label %96

96:                                               ; preds = %84, %93
  %97 = phi i64 [ %81, %84 ], [ %94, %93 ]
  br label %98

98:                                               ; preds = %96, %105
  %99 = phi i64 [ %106, %105 ], [ %97, %96 ]
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %102, -48
  %104 = icmp ult i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = add nuw nsw i64 %99, 1
  %107 = icmp eq i64 %106, 6
  br i1 %107, label %108, label %98

108:                                              ; preds = %105, %98, %93
  %109 = phi i64 [ 6, %93 ], [ %99, %98 ], [ 6, %105 ]
  %110 = sub nsw i64 %81, %109
  %111 = sub nsw i64 %109, %81
  %112 = sub nsw i64 %78, %110
  br label %113

113:                                              ; preds = %108, %74
  %114 = phi ptr [ %82, %108 ], [ null, %74 ]
  %115 = phi i64 [ %111, %108 ], [ 0, %74 ]
  %116 = phi i64 [ %109, %108 ], [ %76, %74 ]
  %117 = phi i64 [ %110, %108 ], [ 0, %74 ]
  %118 = phi i64 [ %112, %108 ], [ %78, %74 ]
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %116
  %120 = icmp eq i64 %118, 0
  br i1 %120, label %260, label %121

121:                                              ; preds = %113
  %122 = icmp eq i64 %116, 6
  br i1 %122, label %168, label %123

123:                                              ; preds = %121
  %124 = load i8, ptr %119, align 1
  switch i8 %124, label %168 [
    i8 101, label %125
    i8 69, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = add nuw nsw i64 %116, 1
  %127 = icmp eq i64 %126, 6
  br i1 %127, label %168, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %126
  %130 = load i8, ptr %129, align 1
  %131 = icmp eq i8 %130, 45
  %132 = add nuw nsw i64 %116, 2
  %133 = icmp eq i8 %130, 43
  %134 = zext i1 %133 to i64
  %135 = add nuw nsw i64 %126, %134
  %136 = select i1 %131, i64 %132, i64 %135
  %137 = icmp eq i64 %136, 6
  br i1 %137, label %168, label %138

138:                                              ; preds = %128
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %140 = load i8, ptr %139, align 1
  %141 = sext i8 %140 to i32
  %142 = add nsw i32 %141, -48
  %143 = icmp ult i32 %142, 10
  br i1 %143, label %144, label %168

144:                                              ; preds = %138, %159
  %145 = phi i64 [ %160, %159 ], [ 0, %138 ]
  %146 = phi i64 [ %161, %159 ], [ %136, %138 ]
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 %146
  %148 = load i8, ptr %147, align 1
  %149 = sext i8 %148 to i32
  %150 = add nsw i32 %149, -48
  %151 = icmp ult i32 %150, 10
  br i1 %151, label %152, label %163

152:                                              ; preds = %144
  %153 = icmp slt i64 %145, 268435456
  br i1 %153, label %154, label %159

154:                                              ; preds = %152
  %155 = add i8 %148, -48
  %156 = mul nsw i64 %145, 10
  %157 = zext i8 %155 to i64
  %158 = add nsw i64 %156, %157
  br label %159

159:                                              ; preds = %154, %152
  %160 = phi i64 [ %158, %154 ], [ %145, %152 ]
  %161 = add nuw nsw i64 %146, 1
  %162 = icmp eq i64 %161, 6
  br i1 %162, label %163, label %144

163:                                              ; preds = %159, %144
  %164 = phi i64 [ %160, %159 ], [ %145, %144 ]
  %165 = sub nsw i64 0, %164
  %166 = select i1 %131, i64 %165, i64 %164
  %167 = add nsw i64 %166, %117
  br label %168

168:                                              ; preds = %125, %123, %121, %163, %128, %138
  %169 = phi i64 [ %166, %163 ], [ 0, %128 ], [ 0, %138 ], [ 0, %123 ], [ 0, %121 ], [ 0, %125 ]
  %170 = phi i64 [ %167, %163 ], [ %117, %128 ], [ %117, %138 ], [ %117, %123 ], [ %117, %121 ], [ %117, %125 ]
  %171 = icmp sgt i64 %118, 19
  br i1 %171, label %172, label %260

172:                                              ; preds = %168
  %173 = load i8, ptr %29, align 1
  switch i8 %173, label %217 [
    i8 48, label %174
    i8 46, label %174
  ]

174:                                              ; preds = %172, %172
  %175 = icmp eq i8 %173, 48
  %176 = sext i1 %175 to i64
  %177 = add nsw i64 %118, %176
  %178 = getelementptr inbounds nuw i8, ptr %2, i64 %30
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %180 = load i8, ptr %179, align 1
  switch i8 %180, label %217 [
    i8 48, label %181
    i8 46, label %181
  ]

181:                                              ; preds = %174, %174
  %182 = icmp eq i8 %180, 48
  %183 = sext i1 %182 to i64
  %184 = add nsw i64 %177, %183
  %185 = or disjoint i64 %30, 2
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 %185
  %187 = load i8, ptr %186, align 1
  switch i8 %187, label %217 [
    i8 48, label %188
    i8 46, label %188
  ]

188:                                              ; preds = %181, %181
  %189 = icmp eq i8 %187, 48
  %190 = sext i1 %189 to i64
  %191 = add nsw i64 %184, %190
  %192 = add nuw nsw i64 %30, 3
  %193 = icmp eq i64 %192, 6
  br i1 %193, label %217, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds nuw i8, ptr %2, i64 %192
  %196 = load i8, ptr %195, align 1
  switch i8 %196, label %217 [
    i8 48, label %197
    i8 46, label %197
  ]

197:                                              ; preds = %194, %194
  %198 = icmp eq i8 %196, 48
  %199 = sext i1 %198 to i64
  %200 = add nsw i64 %191, %199
  %201 = or disjoint i64 %30, 4
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 %201
  %203 = load i8, ptr %202, align 1
  switch i8 %203, label %217 [
    i8 48, label %204
    i8 46, label %204
  ]

204:                                              ; preds = %197, %197
  %205 = icmp eq i8 %203, 48
  %206 = sext i1 %205 to i64
  %207 = add nsw i64 %200, %206
  %208 = add nuw nsw i64 %30, 5
  %209 = icmp eq i64 %208, 6
  br i1 %209, label %217, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 %208
  %212 = load i8, ptr %211, align 1
  switch i8 %212, label %217 [
    i8 48, label %213
    i8 46, label %213
  ]

213:                                              ; preds = %210, %210
  %214 = icmp eq i8 %212, 48
  %215 = sext i1 %214 to i64
  %216 = add nsw i64 %207, %215
  br label %217

217:                                              ; preds = %213, %210, %204, %197, %194, %188, %181, %174, %172
  %218 = phi i64 [ %118, %172 ], [ %177, %174 ], [ %184, %181 ], [ %191, %188 ], [ %191, %194 ], [ %200, %197 ], [ %207, %204 ], [ %207, %210 ], [ %216, %213 ]
  %219 = icmp sgt i64 %218, 19
  br i1 %219, label %220, label %260

220:                                              ; preds = %217
  %221 = getelementptr inbounds nuw i8, ptr %28, i64 %78
  %222 = icmp samesign eq i64 %78, 0
  br i1 %222, label %237, label %223

223:                                              ; preds = %220, %223
  %224 = phi ptr [ %231, %223 ], [ %28, %220 ]
  %225 = phi i64 [ %230, %223 ], [ 0, %220 ]
  %226 = mul nuw i64 %225, 10
  %227 = load i8, ptr %224, align 1
  %228 = sext i8 %227 to i64
  %229 = add i64 %226, -48
  %230 = add i64 %229, %228
  %231 = getelementptr inbounds nuw i8, ptr %224, i64 1
  %232 = icmp ult i64 %230, 1000000000000000000
  %233 = icmp ne ptr %231, %221
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %223, label %235

235:                                              ; preds = %223
  %236 = icmp ugt i64 %230, 999999999999999999
  br i1 %236, label %253, label %237

237:                                              ; preds = %220, %235
  %238 = phi i64 [ %230, %235 ], [ 0, %220 ]
  %239 = getelementptr inbounds nuw i8, ptr %114, i64 %115
  %240 = icmp samesign eq i64 %115, 0
  br i1 %240, label %253, label %241

241:                                              ; preds = %237, %241
  %242 = phi ptr [ %249, %241 ], [ %114, %237 ]
  %243 = phi i64 [ %248, %241 ], [ %238, %237 ]
  %244 = mul nuw i64 %243, 10
  %245 = load i8, ptr %242, align 1
  %246 = sext i8 %245 to i64
  %247 = add i64 %244, -48
  %248 = add i64 %247, %246
  %249 = getelementptr inbounds nuw i8, ptr %242, i64 1
  %250 = icmp ult i64 %248, 1000000000000000000
  %251 = icmp ne ptr %249, %239
  %252 = select i1 %250, i1 %251, i1 false
  br i1 %252, label %241, label %253

253:                                              ; preds = %241, %237, %235
  %254 = phi ptr [ %231, %235 ], [ %114, %237 ], [ %249, %241 ]
  %255 = phi ptr [ %75, %235 ], [ %114, %237 ], [ %114, %241 ]
  %256 = ptrtoint ptr %255 to i64
  %257 = ptrtoint ptr %254 to i64
  %258 = sub i64 %256, %257
  %259 = add nsw i64 %258, %169
  br label %260

260:                                              ; preds = %49, %65, %68, %168, %217, %253, %113, %20
  %261 = phi i64 [ 0, %20 ], [ 0, %113 ], [ %170, %168 ], [ %259, %253 ], [ %170, %217 ], [ 0, %68 ], [ 0, %65 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %261
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %29, label %154

27:                                               ; preds = %69, %66, %50
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 6
  br label %154

29:                                               ; preds = %20, %1
  %30 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %31 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %32 = load i8, ptr %30, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %75

36:                                               ; preds = %29
  %37 = add nuw nsw i64 %31, 1
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = or disjoint i64 %31, 2
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = add nuw nsw i64 %31, 3
  %52 = icmp eq i64 %51, 6
  br i1 %52, label %27, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = or disjoint i64 %31, 4
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = add nuw nsw i64 %31, 5
  %68 = icmp eq i64 %67, 6
  br i1 %68, label %27, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %27, label %75

75:                                               ; preds = %69, %59, %53, %43, %36, %29
  %76 = phi i64 [ %31, %29 ], [ %37, %36 ], [ %44, %43 ], [ %51, %53 ], [ %60, %59 ], [ %67, %69 ]
  %77 = phi i8 [ %32, %29 ], [ %39, %36 ], [ %46, %43 ], [ %55, %53 ], [ %62, %59 ], [ %71, %69 ]
  %78 = sub nsw i64 %76, %31
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp samesign ult i64 %76, 2
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %85 = load i32, ptr %84, align 1
  %86 = add i32 %85, 1179010630
  %87 = add i32 %85, -808464432
  %88 = or i32 %86, %87
  %89 = and i32 %88, -2139062144
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = add nuw nsw i64 %76, 5
  br label %93

93:                                               ; preds = %80, %91
  %94 = phi i64 [ %92, %91 ], [ %81, %80 ]
  %95 = icmp eq i64 %94, 6
  br i1 %95, label %108, label %96

96:                                               ; preds = %83, %93
  %97 = phi i64 [ %81, %83 ], [ %94, %93 ]
  br label %98

98:                                               ; preds = %96, %105
  %99 = phi i64 [ %106, %105 ], [ %97, %96 ]
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %102, -48
  %104 = icmp ult i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = add nuw nsw i64 %99, 1
  %107 = icmp eq i64 %106, 6
  br i1 %107, label %108, label %98

108:                                              ; preds = %105, %98, %93
  %109 = phi i64 [ 6, %93 ], [ %99, %98 ], [ 6, %105 ]
  %110 = xor i64 %76, -1
  %111 = add i64 %78, %110
  %112 = add i64 %111, %109
  br label %113

113:                                              ; preds = %108, %75
  %114 = phi i64 [ %109, %108 ], [ %76, %75 ]
  %115 = phi i64 [ %112, %108 ], [ %78, %75 ]
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 %114
  %117 = icmp eq i64 %115, 0
  %118 = icmp eq i64 %114, 6
  %119 = or i1 %117, %118
  br i1 %119, label %154, label %120

120:                                              ; preds = %113
  %121 = load i8, ptr %116, align 1
  switch i8 %121, label %154 [
    i8 101, label %122
    i8 69, label %122
  ]

122:                                              ; preds = %120, %120
  %123 = add nuw nsw i64 %114, 1
  %124 = icmp eq i64 %123, 6
  br i1 %124, label %154, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 %123
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, 45
  %129 = add nuw nsw i64 %114, 2
  %130 = icmp eq i8 %127, 43
  %131 = zext i1 %130 to i64
  %132 = add nuw nsw i64 %123, %131
  %133 = select i1 %128, i64 %129, i64 %132
  %134 = icmp eq i64 %133, 6
  br i1 %134, label %154, label %135

135:                                              ; preds = %125
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 %133
  %137 = load i8, ptr %136, align 1
  %138 = sext i8 %137 to i32
  %139 = add nsw i32 %138, -48
  %140 = icmp ult i32 %139, 10
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 6
  br label %143

143:                                              ; preds = %141, %150
  %144 = phi ptr [ %152, %150 ], [ %136, %141 ]
  %145 = phi i64 [ %151, %150 ], [ %133, %141 ]
  %146 = load i8, ptr %144, align 1
  %147 = sext i8 %146 to i32
  %148 = add nsw i32 %147, -48
  %149 = icmp ult i32 %148, 10
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = add nuw nsw i64 %145, 1
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 %151
  %153 = icmp eq i64 %151, 6
  br i1 %153, label %154, label %143

154:                                              ; preds = %135, %125, %120, %122, %150, %143, %27, %113, %20
  %155 = phi ptr [ %3, %20 ], [ %116, %113 ], [ %28, %27 ], [ %116, %125 ], [ %116, %135 ], [ %116, %120 ], [ %116, %122 ], [ %144, %143 ], [ %142, %150 ]
  %156 = ptrtoint ptr %155 to i64
  %157 = ptrtoint ptr %2 to i64
  %158 = sub i64 %156, %157
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %158
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %29, label %117

27:                                               ; preds = %69, %66, %50
  %28 = sub nuw nsw i64 6, %31
  br label %117

29:                                               ; preds = %20, %1
  %30 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %31 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %32 = load i8, ptr %30, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %75

36:                                               ; preds = %29
  %37 = add nuw nsw i64 %31, 1
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = or disjoint i64 %31, 2
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = add nuw nsw i64 %31, 3
  %52 = icmp eq i64 %51, 6
  br i1 %52, label %27, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = or disjoint i64 %31, 4
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = add nuw nsw i64 %31, 5
  %68 = icmp eq i64 %67, 6
  br i1 %68, label %27, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %27, label %75

75:                                               ; preds = %69, %59, %53, %43, %36, %29
  %76 = phi i64 [ %31, %29 ], [ %37, %36 ], [ %44, %43 ], [ %51, %53 ], [ %60, %59 ], [ %67, %69 ]
  %77 = phi i8 [ %32, %29 ], [ %39, %36 ], [ %46, %43 ], [ %55, %53 ], [ %62, %59 ], [ %71, %69 ]
  %78 = sub nsw i64 %76, %31
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp samesign ult i64 %76, 2
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %85 = load i32, ptr %84, align 1
  %86 = add i32 %85, 1179010630
  %87 = add i32 %85, -808464432
  %88 = or i32 %86, %87
  %89 = and i32 %88, -2139062144
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = add nuw nsw i64 %76, 5
  br label %93

93:                                               ; preds = %80, %91
  %94 = phi i64 [ %92, %91 ], [ %81, %80 ]
  %95 = icmp eq i64 %94, 6
  br i1 %95, label %108, label %96

96:                                               ; preds = %83, %93
  %97 = phi i64 [ %81, %83 ], [ %94, %93 ]
  br label %98

98:                                               ; preds = %96, %105
  %99 = phi i64 [ %106, %105 ], [ %97, %96 ]
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %102, -48
  %104 = icmp ult i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = add nuw nsw i64 %99, 1
  %107 = icmp eq i64 %106, 6
  br i1 %107, label %108, label %98

108:                                              ; preds = %105, %98, %93
  %109 = phi i64 [ 6, %93 ], [ %99, %98 ], [ 6, %105 ]
  %110 = xor i64 %76, -1
  %111 = add i64 %78, %110
  %112 = add i64 %111, %109
  br label %113

113:                                              ; preds = %108, %75
  %114 = phi i64 [ %112, %108 ], [ %78, %75 ]
  %115 = icmp eq i64 %114, 0
  %116 = select i1 %115, i64 0, i64 %78
  br label %117

117:                                              ; preds = %113, %27, %20
  %118 = phi i64 [ 0, %20 ], [ %28, %27 ], [ %116, %113 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %118
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
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
  br i1 %27, label %28, label %184

28:                                               ; preds = %20, %1
  %29 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %30 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %31 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %32 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %33 = load i8, ptr %31, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %76

37:                                               ; preds = %28
  %38 = add nuw nsw i64 %32, 1
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = or disjoint i64 %32, 2
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %76

51:                                               ; preds = %44
  %52 = add nuw nsw i64 %32, 3
  %53 = icmp eq i64 %52, 6
  br i1 %53, label %184, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, -48
  %59 = icmp ult i32 %58, 10
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = or disjoint i64 %32, 4
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = add nsw i32 %64, -48
  %66 = icmp ult i32 %65, 10
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = add nuw nsw i64 %32, 5
  %69 = icmp eq i64 %68, 6
  br i1 %69, label %184, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %68
  %72 = load i8, ptr %71, align 1
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, -48
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %184, label %76

76:                                               ; preds = %70, %60, %54, %44, %37, %28
  %77 = phi i64 [ %32, %28 ], [ %38, %37 ], [ %45, %44 ], [ %52, %54 ], [ %61, %60 ], [ %68, %70 ]
  %78 = phi i8 [ %33, %28 ], [ %40, %37 ], [ %47, %44 ], [ %56, %54 ], [ %63, %60 ], [ %72, %70 ]
  %79 = sub nsw i64 %77, %32
  %80 = icmp eq i8 %78, 46
  br i1 %80, label %81, label %115

81:                                               ; preds = %76
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp samesign ult i64 %77, 2
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 %82
  %86 = load i32, ptr %85, align 1
  %87 = add i32 %86, 1179010630
  %88 = add i32 %86, -808464432
  %89 = or i32 %87, %88
  %90 = and i32 %89, -2139062144
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = add nuw nsw i64 %77, 5
  br label %94

94:                                               ; preds = %81, %92
  %95 = phi i64 [ %93, %92 ], [ %82, %81 ]
  %96 = icmp eq i64 %95, 6
  br i1 %96, label %109, label %97

97:                                               ; preds = %84, %94
  %98 = phi i64 [ %82, %84 ], [ %95, %94 ]
  br label %99

99:                                               ; preds = %97, %106
  %100 = phi i64 [ %107, %106 ], [ %98, %97 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, 6
  br i1 %108, label %109, label %99

109:                                              ; preds = %106, %99, %94
  %110 = phi i64 [ 6, %94 ], [ %100, %99 ], [ 6, %106 ]
  %111 = xor i64 %77, -1
  %112 = sub nsw i64 %110, %82
  %113 = add i64 %79, %111
  %114 = add i64 %113, %110
  br label %115

115:                                              ; preds = %109, %76
  %116 = phi i64 [ %112, %109 ], [ 0, %76 ]
  %117 = phi i64 [ %114, %109 ], [ %79, %76 ]
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %184, label %119

119:                                              ; preds = %115
  %120 = icmp sgt i64 %117, 19
  br i1 %120, label %121, label %184

121:                                              ; preds = %119
  %122 = load i8, ptr %30, align 1
  switch i8 %122, label %166 [
    i8 48, label %123
    i8 46, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = icmp eq i8 %122, 48
  %125 = sext i1 %124 to i64
  %126 = add nsw i64 %117, %125
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %129 = load i8, ptr %128, align 1
  switch i8 %129, label %166 [
    i8 48, label %130
    i8 46, label %130
  ]

130:                                              ; preds = %123, %123
  %131 = icmp eq i8 %129, 48
  %132 = sext i1 %131 to i64
  %133 = add nsw i64 %126, %132
  %134 = or disjoint i64 %32, 2
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 %134
  %136 = load i8, ptr %135, align 1
  switch i8 %136, label %166 [
    i8 48, label %137
    i8 46, label %137
  ]

137:                                              ; preds = %130, %130
  %138 = icmp eq i8 %136, 48
  %139 = sext i1 %138 to i64
  %140 = add nsw i64 %133, %139
  %141 = add nuw nsw i64 %32, 3
  %142 = icmp eq i64 %141, 6
  br i1 %142, label %166, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds nuw i8, ptr %2, i64 %141
  %145 = load i8, ptr %144, align 1
  switch i8 %145, label %166 [
    i8 48, label %146
    i8 46, label %146
  ]

146:                                              ; preds = %143, %143
  %147 = icmp eq i8 %145, 48
  %148 = sext i1 %147 to i64
  %149 = add nsw i64 %140, %148
  %150 = or disjoint i64 %32, 4
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 %150
  %152 = load i8, ptr %151, align 1
  switch i8 %152, label %166 [
    i8 48, label %153
    i8 46, label %153
  ]

153:                                              ; preds = %146, %146
  %154 = icmp eq i8 %152, 48
  %155 = sext i1 %154 to i64
  %156 = add nsw i64 %149, %155
  %157 = add nuw nsw i64 %32, 5
  %158 = icmp eq i64 %157, 6
  br i1 %158, label %166, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 %157
  %161 = load i8, ptr %160, align 1
  switch i8 %161, label %166 [
    i8 48, label %162
    i8 46, label %162
  ]

162:                                              ; preds = %159, %159
  %163 = icmp eq i8 %161, 48
  %164 = sext i1 %163 to i64
  %165 = add nsw i64 %156, %164
  br label %166

166:                                              ; preds = %162, %159, %153, %146, %143, %137, %130, %123, %121
  %167 = phi i64 [ %117, %121 ], [ %126, %123 ], [ %133, %130 ], [ %140, %137 ], [ %140, %143 ], [ %149, %146 ], [ %156, %153 ], [ %156, %159 ], [ %165, %162 ]
  %168 = icmp sgt i64 %167, 19
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = getelementptr inbounds nuw i8, ptr %29, i64 %79
  %171 = icmp samesign eq i64 %79, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %169, %172
  %173 = phi ptr [ %180, %172 ], [ %29, %169 ]
  %174 = phi i64 [ %179, %172 ], [ 0, %169 ]
  %175 = mul nuw i64 %174, 10
  %176 = load i8, ptr %173, align 1
  %177 = sext i8 %176 to i64
  %178 = add i64 %175, -48
  %179 = add i64 %178, %177
  %180 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %181 = icmp ult i64 %179, 1000000000000000000
  %182 = icmp ne ptr %180, %170
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %172, label %184

184:                                              ; preds = %51, %67, %70, %172, %169, %119, %166, %115, %20
  %185 = phi i64 [ 0, %20 ], [ 0, %115 ], [ %116, %166 ], [ %116, %119 ], [ %116, %169 ], [ %116, %172 ], [ 0, %70 ], [ 0, %67 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %185
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %115

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %115, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %115, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp samesign ult i64 %74, 2
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %83 = load i32, ptr %82, align 1
  %84 = add i32 %83, 1179010630
  %85 = add i32 %83, -808464432
  %86 = or i32 %84, %85
  %87 = and i32 %86, -2139062144
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = add nuw nsw i64 %74, 5
  br label %91

91:                                               ; preds = %78, %89
  %92 = phi i64 [ %90, %89 ], [ %79, %78 ]
  %93 = icmp eq i64 %92, 6
  br i1 %93, label %106, label %94

94:                                               ; preds = %81, %91
  %95 = phi i64 [ %79, %81 ], [ %92, %91 ]
  br label %96

96:                                               ; preds = %94, %103
  %97 = phi i64 [ %104, %103 ], [ %95, %94 ]
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %100, -48
  %102 = icmp ult i32 %101, 10
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %97, 1
  %105 = icmp eq i64 %104, 6
  br i1 %105, label %106, label %96

106:                                              ; preds = %103, %96, %91
  %107 = phi i64 [ 6, %91 ], [ %97, %96 ], [ 6, %103 ]
  %108 = xor i64 %74, -1
  %109 = add i64 %76, %108
  %110 = add i64 %109, %107
  br label %111

111:                                              ; preds = %106, %73
  %112 = phi i64 [ %110, %106 ], [ %76, %73 ]
  %113 = icmp eq i64 %112, 0
  %114 = select i1 %113, i64 6, i64 0
  br label %115

115:                                              ; preds = %111, %48, %64, %67, %20
  %116 = phi i64 [ 2, %20 ], [ 0, %67 ], [ 0, %64 ], [ 0, %48 ], [ %114, %111 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %116
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %115

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %115, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %115, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp samesign ult i64 %74, 2
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %83 = load i32, ptr %82, align 1
  %84 = add i32 %83, 1179010630
  %85 = add i32 %83, -808464432
  %86 = or i32 %84, %85
  %87 = and i32 %86, -2139062144
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = add nuw nsw i64 %74, 5
  br label %91

91:                                               ; preds = %78, %89
  %92 = phi i64 [ %90, %89 ], [ %79, %78 ]
  %93 = icmp eq i64 %92, 6
  br i1 %93, label %106, label %94

94:                                               ; preds = %81, %91
  %95 = phi i64 [ %79, %81 ], [ %92, %91 ]
  br label %96

96:                                               ; preds = %94, %103
  %97 = phi i64 [ %104, %103 ], [ %95, %94 ]
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %100, -48
  %102 = icmp ult i32 %101, 10
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %97, 1
  %105 = icmp eq i64 %104, 6
  br i1 %105, label %106, label %96

106:                                              ; preds = %103, %96, %91
  %107 = phi i64 [ 6, %91 ], [ %97, %96 ], [ 6, %103 ]
  %108 = xor i64 %74, -1
  %109 = add i64 %76, %108
  %110 = add i64 %109, %107
  br label %111

111:                                              ; preds = %106, %73
  %112 = phi i64 [ %110, %106 ], [ %76, %73 ]
  %113 = icmp eq i64 %112, 0
  %114 = select i1 %113, i64 0, i64 1
  br label %115

115:                                              ; preds = %111, %48, %64, %67, %20
  %116 = phi i64 [ 0, %20 ], [ 1, %67 ], [ 1, %64 ], [ 1, %48 ], [ %114, %111 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %116
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %116

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %114, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %114, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %114, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp samesign ult i64 %74, 2
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %83 = load i32, ptr %82, align 1
  %84 = add i32 %83, 1179010630
  %85 = add i32 %83, -808464432
  %86 = or i32 %84, %85
  %87 = and i32 %86, -2139062144
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = add nuw nsw i64 %74, 5
  br label %91

91:                                               ; preds = %78, %89
  %92 = phi i64 [ %90, %89 ], [ %79, %78 ]
  %93 = icmp eq i64 %92, 6
  br i1 %93, label %106, label %94

94:                                               ; preds = %81, %91
  %95 = phi i64 [ %79, %81 ], [ %92, %91 ]
  br label %96

96:                                               ; preds = %94, %103
  %97 = phi i64 [ %104, %103 ], [ %95, %94 ]
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %100, -48
  %102 = icmp ult i32 %101, 10
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %97, 1
  %105 = icmp eq i64 %104, 6
  br i1 %105, label %106, label %96

106:                                              ; preds = %103, %96, %91
  %107 = phi i64 [ 6, %91 ], [ %97, %96 ], [ 6, %103 ]
  %108 = xor i64 %74, -1
  %109 = add i64 %76, %108
  %110 = add i64 %109, %107
  br label %111

111:                                              ; preds = %106, %73
  %112 = phi i64 [ %110, %106 ], [ %76, %73 ]
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111, %48, %64, %67
  %115 = zext i1 %19 to i64
  br label %116

116:                                              ; preds = %111, %20, %114
  %117 = phi i64 [ %115, %114 ], [ 0, %20 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %117
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
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
  br i1 %27, label %28, label %165

28:                                               ; preds = %20, %1
  %29 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %30 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %31 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %32 = load i8, ptr %30, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %75

36:                                               ; preds = %28
  %37 = add nuw nsw i64 %31, 1
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = or disjoint i64 %31, 2
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = add nuw nsw i64 %31, 3
  %52 = icmp eq i64 %51, 6
  br i1 %52, label %165, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = or disjoint i64 %31, 4
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = add nuw nsw i64 %31, 5
  %68 = icmp eq i64 %67, 6
  br i1 %68, label %165, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %165, label %75

75:                                               ; preds = %69, %59, %53, %43, %36, %28
  %76 = phi i64 [ %31, %28 ], [ %37, %36 ], [ %44, %43 ], [ %51, %53 ], [ %60, %59 ], [ %67, %69 ]
  %77 = phi i8 [ %32, %28 ], [ %39, %36 ], [ %46, %43 ], [ %55, %53 ], [ %62, %59 ], [ %71, %69 ]
  %78 = sub nsw i64 %76, %31
  %79 = icmp eq i8 %77, 46
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp samesign ult i64 %76, 2
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %85 = load i32, ptr %84, align 1
  %86 = add i32 %85, 1179010630
  %87 = add i32 %85, -808464432
  %88 = or i32 %86, %87
  %89 = and i32 %88, -2139062144
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = add nuw nsw i64 %76, 5
  br label %93

93:                                               ; preds = %80, %91
  %94 = phi i64 [ %92, %91 ], [ %81, %80 ]
  %95 = icmp eq i64 %94, 6
  br i1 %95, label %108, label %96

96:                                               ; preds = %83, %93
  %97 = phi i64 [ %81, %83 ], [ %94, %93 ]
  br label %98

98:                                               ; preds = %96, %105
  %99 = phi i64 [ %106, %105 ], [ %97, %96 ]
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %102, -48
  %104 = icmp ult i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = add nuw nsw i64 %99, 1
  %107 = icmp eq i64 %106, 6
  br i1 %107, label %108, label %98

108:                                              ; preds = %105, %98, %93
  %109 = phi i64 [ 6, %93 ], [ %99, %98 ], [ 6, %105 ]
  %110 = xor i64 %76, -1
  %111 = add i64 %78, %110
  %112 = add i64 %111, %109
  br label %113

113:                                              ; preds = %108, %75
  %114 = phi i64 [ %112, %108 ], [ %78, %75 ]
  %115 = icmp sgt i64 %114, 19
  br i1 %115, label %116, label %165

116:                                              ; preds = %113
  %117 = load i8, ptr %29, align 1
  switch i8 %117, label %161 [
    i8 48, label %118
    i8 46, label %118
  ]

118:                                              ; preds = %116, %116
  %119 = icmp eq i8 %117, 48
  %120 = sext i1 %119 to i64
  %121 = add nsw i64 %114, %120
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 1
  %124 = load i8, ptr %123, align 1
  switch i8 %124, label %161 [
    i8 48, label %125
    i8 46, label %125
  ]

125:                                              ; preds = %118, %118
  %126 = icmp eq i8 %124, 48
  %127 = sext i1 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = or disjoint i64 %31, 2
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 %129
  %131 = load i8, ptr %130, align 1
  switch i8 %131, label %161 [
    i8 48, label %132
    i8 46, label %132
  ]

132:                                              ; preds = %125, %125
  %133 = icmp eq i8 %131, 48
  %134 = sext i1 %133 to i64
  %135 = add nsw i64 %128, %134
  %136 = add nuw nsw i64 %31, 3
  %137 = icmp eq i64 %136, 6
  br i1 %137, label %161, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %140 = load i8, ptr %139, align 1
  switch i8 %140, label %161 [
    i8 48, label %141
    i8 46, label %141
  ]

141:                                              ; preds = %138, %138
  %142 = icmp eq i8 %140, 48
  %143 = sext i1 %142 to i64
  %144 = add nsw i64 %135, %143
  %145 = or disjoint i64 %31, 4
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %145
  %147 = load i8, ptr %146, align 1
  switch i8 %147, label %161 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %141, %141
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %144, %150
  %152 = add nuw nsw i64 %31, 5
  %153 = icmp eq i64 %152, 6
  br i1 %153, label %161, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 %152
  %156 = load i8, ptr %155, align 1
  switch i8 %156, label %161 [
    i8 48, label %157
    i8 46, label %157
  ]

157:                                              ; preds = %154, %154
  %158 = icmp eq i8 %156, 48
  %159 = sext i1 %158 to i64
  %160 = add nsw i64 %151, %159
  br label %161

161:                                              ; preds = %157, %154, %148, %141, %138, %132, %125, %118, %116
  %162 = phi i64 [ %114, %116 ], [ %121, %118 ], [ %128, %125 ], [ %135, %132 ], [ %135, %138 ], [ %144, %141 ], [ %151, %148 ], [ %151, %154 ], [ %160, %157 ]
  %163 = icmp sgt i64 %162, 19
  %164 = zext i1 %163 to i64
  br label %165

165:                                              ; preds = %50, %66, %69, %161, %113, %20
  %166 = phi i64 [ 0, %20 ], [ 0, %113 ], [ %164, %161 ], [ 0, %69 ], [ 0, %66 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %166
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %116

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %3, %20 ], [ %2, %1 ]
  %29 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %30 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %31 = load i8, ptr %29, align 1
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %74

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %30, 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, -48
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = or disjoint i64 %30, 2
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %30, 3
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %116, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %54 = load i8, ptr %53, align 1
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, -48
  %57 = icmp ult i32 %56, 10
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = or disjoint i64 %30, 4
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, -48
  %64 = icmp ult i32 %63, 10
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = add nuw nsw i64 %30, 5
  %67 = icmp eq i64 %66, 6
  br i1 %67, label %116, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %70 = load i8, ptr %69, align 1
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %71, -48
  %73 = icmp ult i32 %72, 10
  br i1 %73, label %116, label %74

74:                                               ; preds = %68, %58, %52, %42, %35, %27
  %75 = phi i64 [ %30, %27 ], [ %36, %35 ], [ %43, %42 ], [ %50, %52 ], [ %59, %58 ], [ %66, %68 ]
  %76 = phi i8 [ %31, %27 ], [ %38, %35 ], [ %45, %42 ], [ %54, %52 ], [ %61, %58 ], [ %70, %68 ]
  %77 = sub nsw i64 %75, %30
  %78 = icmp eq i8 %76, 46
  br i1 %78, label %79, label %112

79:                                               ; preds = %74
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp samesign ult i64 %75, 2
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 %80
  %84 = load i32, ptr %83, align 1
  %85 = add i32 %84, 1179010630
  %86 = add i32 %84, -808464432
  %87 = or i32 %85, %86
  %88 = and i32 %87, -2139062144
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = add nuw nsw i64 %75, 5
  br label %92

92:                                               ; preds = %79, %90
  %93 = phi i64 [ %91, %90 ], [ %80, %79 ]
  %94 = icmp eq i64 %93, 6
  br i1 %94, label %107, label %95

95:                                               ; preds = %82, %92
  %96 = phi i64 [ %80, %82 ], [ %93, %92 ]
  br label %97

97:                                               ; preds = %95, %104
  %98 = phi i64 [ %105, %104 ], [ %96, %95 ]
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = load i8, ptr %99, align 1
  %101 = sext i8 %100 to i32
  %102 = add nsw i32 %101, -48
  %103 = icmp ult i32 %102, 10
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = add nuw nsw i64 %98, 1
  %106 = icmp eq i64 %105, 6
  br i1 %106, label %107, label %97

107:                                              ; preds = %104, %97, %92
  %108 = phi i64 [ 6, %92 ], [ %98, %97 ], [ 6, %104 ]
  %109 = xor i64 %75, -1
  %110 = add i64 %77, %109
  %111 = add i64 %110, %108
  br label %112

112:                                              ; preds = %107, %74
  %113 = phi i64 [ %111, %107 ], [ %77, %74 ]
  %114 = icmp eq i64 %113, 0
  %115 = select i1 %114, ptr null, ptr %28
  br label %116

116:                                              ; preds = %112, %49, %65, %68, %20
  %117 = phi ptr [ null, %20 ], [ %28, %68 ], [ %28, %65 ], [ %28, %49 ], [ %115, %112 ]
  %118 = icmp eq ptr %117, null
  %119 = ptrtoint ptr %117 to i64
  %120 = ptrtoint ptr %2 to i64
  %121 = sub i64 %119, %120
  %122 = select i1 %118, i64 -1, i64 %121
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %122
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
  store i8 %4, ptr %2, align 1
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i8 %4, 45
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %116

27:                                               ; preds = %20, %1
  %28 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %20 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %116, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = or disjoint i64 %29, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = add nuw nsw i64 %29, 5
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %116, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %116, label %73

73:                                               ; preds = %67, %57, %51, %41, %34, %27
  %74 = phi i64 [ %29, %27 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %58, %57 ], [ %65, %67 ]
  %75 = phi i8 [ %30, %27 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %60, %57 ], [ %69, %67 ]
  %76 = sub nsw i64 %74, %29
  %77 = icmp eq i8 %75, 46
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = add nuw nsw i64 %74, 1
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = icmp samesign ult i64 %74, 2
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, ptr %80, align 1
  %84 = add i32 %83, 1179010630
  %85 = add i32 %83, -808464432
  %86 = or i32 %84, %85
  %87 = and i32 %86, -2139062144
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = add nuw nsw i64 %74, 5
  br label %91

91:                                               ; preds = %78, %89
  %92 = phi i64 [ %90, %89 ], [ %79, %78 ]
  %93 = icmp eq i64 %92, 6
  br i1 %93, label %106, label %94

94:                                               ; preds = %82, %91
  %95 = phi i64 [ %79, %82 ], [ %92, %91 ]
  br label %96

96:                                               ; preds = %94, %103
  %97 = phi i64 [ %104, %103 ], [ %95, %94 ]
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %100, -48
  %102 = icmp ult i32 %101, 10
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %97, 1
  %105 = icmp eq i64 %104, 6
  br i1 %105, label %106, label %96

106:                                              ; preds = %103, %96, %91
  %107 = phi i64 [ 6, %91 ], [ %97, %96 ], [ 6, %103 ]
  %108 = xor i64 %74, -1
  %109 = add i64 %76, %108
  %110 = add i64 %109, %107
  br label %111

111:                                              ; preds = %106, %73
  %112 = phi ptr [ %80, %106 ], [ null, %73 ]
  %113 = phi i64 [ %110, %106 ], [ %76, %73 ]
  %114 = icmp eq i64 %113, 0
  %115 = select i1 %114, ptr null, ptr %112
  br label %116

116:                                              ; preds = %111, %48, %64, %67, %20
  %117 = phi ptr [ null, %20 ], [ null, %67 ], [ null, %64 ], [ null, %48 ], [ %115, %111 ]
  %118 = icmp eq ptr %117, null
  %119 = ptrtoint ptr %117 to i64
  %120 = ptrtoint ptr %2 to i64
  %121 = sub i64 %119, %120
  %122 = select i1 %118, i64 -1, i64 %121
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #2
  ret i64 %122
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
