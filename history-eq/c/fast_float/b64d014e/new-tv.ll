; ModuleID = 'history-eq/c/fast_float/b64d014e/wrap.cpp'
source_filename = "history-eq/c/fast_float/b64d014e/wrap.cpp"
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
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = sext i8 %6 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = icmp eq i8 %6, 46
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %240

28:                                               ; preds = %20, %17
  %29 = phi i32 [ %19, %17 ], [ %24, %20 ]
  %30 = phi i64 [ %0, %17 ], [ %5, %20 ]
  %31 = phi ptr [ %2, %17 ], [ %22, %20 ]
  %32 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %33 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %34 = icmp ult i32 %29, 10
  br i1 %34, label %35, label %85

35:                                               ; preds = %28
  %36 = shl i64 %30, 56
  %37 = ashr exact i64 %36, 56
  %38 = add nsw i64 %37, -48
  %39 = add nuw nsw i64 %33, 1
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, -48
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %85

45:                                               ; preds = %35
  %46 = mul nsw i64 %38, 10
  %47 = sext i8 %41 to i64
  %48 = add nsw i64 %46, -48
  %49 = add nsw i64 %48, %47
  %50 = or disjoint i64 %33, 2
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %85

56:                                               ; preds = %45
  %57 = mul nsw i64 %49, 10
  %58 = sext i8 %52 to i64
  %59 = add nsw i64 %57, -48
  %60 = add nsw i64 %59, %58
  %61 = add nuw nsw i64 %33, 3
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = add nsw i32 %64, -48
  %66 = icmp ult i32 %65, 10
  br i1 %66, label %67, label %85

67:                                               ; preds = %56
  %68 = mul nsw i64 %60, 10
  %69 = sext i8 %63 to i64
  %70 = add nsw i64 %68, -48
  %71 = add nsw i64 %70, %69
  %72 = or disjoint i64 %33, 4
  br i1 %16, label %90, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, -48
  %78 = icmp ult i32 %77, 10
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = mul nsw i64 %71, 10
  %81 = sext i8 %75 to i64
  %82 = add nsw i64 %80, -48
  %83 = add nsw i64 %82, %81
  %84 = add nuw nsw i64 %33, 5
  br label %90

85:                                               ; preds = %56, %45, %35, %28
  %86 = phi i64 [ 0, %28 ], [ %38, %35 ], [ %49, %45 ], [ %60, %56 ]
  %87 = phi i64 [ %33, %28 ], [ %39, %35 ], [ %50, %45 ], [ %61, %56 ]
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 %87
  %89 = sub nsw i64 %87, %33
  br label %96

90:                                               ; preds = %79, %73, %67
  %91 = phi i64 [ %71, %67 ], [ %71, %73 ], [ %83, %79 ]
  %92 = phi i64 [ %72, %67 ], [ %72, %73 ], [ %84, %79 ]
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %94 = sub nsw i64 %92, %33
  %95 = icmp eq i64 %92, 5
  br i1 %95, label %158, label %96

96:                                               ; preds = %85, %90
  %97 = phi i64 [ %89, %85 ], [ %94, %90 ]
  %98 = phi ptr [ %88, %85 ], [ %93, %90 ]
  %99 = phi i64 [ %87, %85 ], [ %92, %90 ]
  %100 = phi i64 [ %86, %85 ], [ %91, %90 ]
  %101 = load i8, ptr %98, align 1
  %102 = icmp eq i8 %101, 46
  br i1 %102, label %103, label %158

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %99, 1
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %106 = ptrtoint ptr %105 to i64
  %107 = icmp slt i64 %99, -3
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %110 = load i64, ptr %109, align 1
  %111 = add i64 %110, 5063812098665367110
  %112 = add i64 %110, -3472328296227680304
  %113 = or i64 %111, %112
  %114 = and i64 %113, -9187201950435737472
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %108, %103
  %117 = icmp eq i64 %104, 5
  br i1 %117, label %150, label %132

118:                                              ; preds = %108
  %119 = add nuw nsw i64 %99, 9
  %120 = mul i64 %112, 10
  %121 = lshr i64 %112, 8
  %122 = add i64 %120, %121
  %123 = lshr i64 %122, 16
  %124 = and i64 %123, 1095216660735
  %125 = mul i64 %124, 42949672960001
  %126 = and i64 %122, 1095216660735
  %127 = mul i64 %126, 4294967296000100
  %128 = add i64 %125, %127
  %129 = lshr i64 %128, 32
  %130 = mul i64 %100, 100000000
  %131 = add i64 %129, %130
  br label %132

132:                                              ; preds = %118, %116
  %133 = phi i64 [ %119, %118 ], [ %104, %116 ]
  %134 = phi i64 [ %131, %118 ], [ %100, %116 ]
  br label %135

135:                                              ; preds = %132, %143
  %136 = phi i64 [ %145, %143 ], [ %133, %132 ]
  %137 = phi i64 [ %148, %143 ], [ %134, %132 ]
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %139 = load i8, ptr %138, align 1
  %140 = sext i8 %139 to i32
  %141 = add nsw i32 %140, -48
  %142 = icmp ult i32 %141, 10
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = add i8 %139, -48
  %145 = add nuw nsw i64 %136, 1
  %146 = mul i64 %137, 10
  %147 = zext i8 %144 to i64
  %148 = add i64 %146, %147
  %149 = icmp eq i64 %145, 5
  br i1 %149, label %150, label %135

150:                                              ; preds = %143, %135, %116
  %151 = phi i64 [ %100, %116 ], [ %137, %135 ], [ %148, %143 ]
  %152 = phi i64 [ 5, %116 ], [ %136, %135 ], [ 5, %143 ]
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 %152
  %154 = ptrtoint ptr %153 to i64
  %155 = sub nsw i64 %152, %104
  %156 = sub i64 %97, %106
  %157 = add i64 %156, %154
  br label %158

158:                                              ; preds = %150, %96, %90
  %159 = phi ptr [ %93, %90 ], [ %98, %150 ], [ %98, %96 ]
  %160 = phi i64 [ 5, %90 ], [ %99, %150 ], [ %99, %96 ]
  %161 = phi ptr [ null, %90 ], [ %105, %150 ], [ null, %96 ]
  %162 = phi i64 [ 0, %90 ], [ %155, %150 ], [ 0, %96 ]
  %163 = phi i64 [ %91, %90 ], [ %151, %150 ], [ %100, %96 ]
  %164 = phi i64 [ %94, %90 ], [ %157, %150 ], [ %97, %96 ]
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %240, label %166

166:                                              ; preds = %158
  %167 = icmp sgt i64 %164, 19
  br i1 %167, label %168, label %240

168:                                              ; preds = %166
  %169 = load i8, ptr %31, align 1
  switch i8 %169, label %205 [
    i8 48, label %170
    i8 46, label %170
  ]

170:                                              ; preds = %168, %168
  %171 = icmp eq i8 %169, 48
  %172 = sext i1 %171 to i64
  %173 = add nsw i64 %164, %172
  %174 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %176 = load i8, ptr %175, align 1
  switch i8 %176, label %205 [
    i8 48, label %177
    i8 46, label %177
  ]

177:                                              ; preds = %170, %170
  %178 = icmp eq i8 %176, 48
  %179 = sext i1 %178 to i64
  %180 = add nsw i64 %173, %179
  %181 = or disjoint i64 %33, 2
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 %181
  %183 = load i8, ptr %182, align 1
  switch i8 %183, label %205 [
    i8 48, label %184
    i8 46, label %184
  ]

184:                                              ; preds = %177, %177
  %185 = icmp eq i8 %183, 48
  %186 = sext i1 %185 to i64
  %187 = add nsw i64 %180, %186
  %188 = add nuw nsw i64 %33, 3
  %189 = icmp eq i64 %188, 5
  br i1 %189, label %205, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds nuw i8, ptr %2, i64 %188
  %192 = load i8, ptr %191, align 1
  switch i8 %192, label %205 [
    i8 48, label %193
    i8 46, label %193
  ]

193:                                              ; preds = %190, %190
  %194 = icmp eq i8 %192, 48
  %195 = sext i1 %194 to i64
  %196 = add nsw i64 %187, %195
  br i1 %16, label %205, label %197

197:                                              ; preds = %193
  %198 = or disjoint i64 %33, 4
  %199 = getelementptr inbounds nuw i8, ptr %2, i64 %198
  %200 = load i8, ptr %199, align 1
  switch i8 %200, label %205 [
    i8 48, label %201
    i8 46, label %201
  ]

201:                                              ; preds = %197, %197
  %202 = icmp eq i8 %200, 48
  %203 = sext i1 %202 to i64
  %204 = add nsw i64 %196, %203
  br label %205

205:                                              ; preds = %201, %197, %193, %190, %184, %177, %170, %168
  %206 = phi i64 [ %164, %168 ], [ %173, %170 ], [ %180, %177 ], [ %187, %184 ], [ %187, %190 ], [ %196, %193 ], [ %196, %197 ], [ %204, %201 ]
  %207 = icmp sgt i64 %206, 19
  br i1 %207, label %208, label %240

208:                                              ; preds = %205
  %209 = icmp samesign eq i64 %33, %160
  br i1 %209, label %224, label %210

210:                                              ; preds = %208, %210
  %211 = phi ptr [ %218, %210 ], [ %32, %208 ]
  %212 = phi i64 [ %217, %210 ], [ 0, %208 ]
  %213 = mul nuw i64 %212, 10
  %214 = load i8, ptr %211, align 1
  %215 = sext i8 %214 to i64
  %216 = add i64 %213, -48
  %217 = add i64 %216, %215
  %218 = getelementptr inbounds nuw i8, ptr %211, i64 1
  %219 = icmp ult i64 %217, 1000000000000000000
  %220 = icmp ne ptr %218, %159
  %221 = select i1 %219, i1 %220, i1 false
  br i1 %221, label %210, label %222

222:                                              ; preds = %210
  %223 = icmp ugt i64 %217, 999999999999999999
  br i1 %223, label %240, label %224

224:                                              ; preds = %208, %222
  %225 = phi i64 [ %217, %222 ], [ 0, %208 ]
  %226 = getelementptr inbounds nuw i8, ptr %161, i64 %162
  %227 = icmp samesign eq i64 %162, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %224, %228
  %229 = phi ptr [ %236, %228 ], [ %161, %224 ]
  %230 = phi i64 [ %235, %228 ], [ %225, %224 ]
  %231 = mul nuw i64 %230, 10
  %232 = load i8, ptr %229, align 1
  %233 = sext i8 %232 to i64
  %234 = add i64 %231, -48
  %235 = add i64 %234, %233
  %236 = getelementptr inbounds nuw i8, ptr %229, i64 1
  %237 = icmp ult i64 %235, 1000000000000000000
  %238 = icmp ne ptr %236, %226
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %228, label %240

240:                                              ; preds = %228, %224, %166, %205, %222, %158, %20
  %241 = phi i64 [ 0, %20 ], [ 0, %158 ], [ %163, %205 ], [ %163, %166 ], [ %217, %222 ], [ %225, %224 ], [ %235, %228 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %241
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_exponent(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %17 = icmp eq i8 %4, 45
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = sext i8 %4 to i32
  %20 = add nsw i32 %19, -48
  br label %29

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %24 = sext i8 %6 to i32
  %25 = add nsw i32 %24, -48
  %26 = icmp ult i32 %25, 10
  %27 = icmp eq i8 %6, 46
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %262

29:                                               ; preds = %21, %18
  %30 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %31 = phi ptr [ %2, %18 ], [ %23, %21 ]
  %32 = phi ptr [ %2, %18 ], [ %22, %21 ]
  %33 = phi i64 [ 0, %18 ], [ 1, %21 ]
  %34 = icmp ult i32 %30, 10
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = add nuw nsw i64 %33, 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, -48
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %42, label %66

42:                                               ; preds = %35
  %43 = or disjoint i64 %33, 2
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %33, 3
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = or disjoint i64 %33, 4
  br i1 %17, label %71, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  %64 = add nuw nsw i64 %33, 5
  %65 = select i1 %63, i64 %64, i64 %57
  br label %71

66:                                               ; preds = %49, %42, %35, %29
  %67 = phi i64 [ %33, %29 ], [ %36, %35 ], [ %43, %42 ], [ %50, %49 ]
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %69 = ptrtoint ptr %68 to i64
  %70 = sub nsw i64 %67, %33
  br label %77

71:                                               ; preds = %58, %56
  %72 = phi i64 [ %57, %56 ], [ %65, %58 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = ptrtoint ptr %73 to i64
  %75 = sub nsw i64 %72, %33
  %76 = icmp eq i64 %72, 5
  br i1 %76, label %117, label %77

77:                                               ; preds = %66, %71
  %78 = phi i64 [ %70, %66 ], [ %75, %71 ]
  %79 = phi i64 [ %69, %66 ], [ %74, %71 ]
  %80 = phi ptr [ %68, %66 ], [ %73, %71 ]
  %81 = phi i64 [ %67, %66 ], [ %72, %71 ]
  %82 = load i8, ptr %80, align 1
  %83 = icmp eq i8 %82, 46
  br i1 %83, label %84, label %117

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %81, 1
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %87 = icmp slt i64 %81, -3
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %90 = load i64, ptr %89, align 1
  %91 = add i64 %90, 5063812098665367110
  %92 = add i64 %90, -3472328296227680304
  %93 = or i64 %91, %92
  %94 = and i64 %93, -9187201950435737472
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %88, %84
  %97 = icmp eq i64 %85, 5
  br i1 %97, label %112, label %100

98:                                               ; preds = %88
  %99 = add nuw nsw i64 %81, 9
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %99, %98 ], [ %85, %96 ]
  br label %102

102:                                              ; preds = %100, %109
  %103 = phi i64 [ %110, %109 ], [ %101, %100 ]
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = sext i8 %105 to i32
  %107 = add nsw i32 %106, -48
  %108 = icmp ult i32 %107, 10
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, 5
  br i1 %111, label %112, label %102

112:                                              ; preds = %109, %102, %96
  %113 = phi i64 [ 5, %96 ], [ %103, %102 ], [ 5, %109 ]
  %114 = sub nsw i64 %85, %113
  %115 = sub nsw i64 %113, %85
  %116 = sub nsw i64 %78, %114
  br label %117

117:                                              ; preds = %112, %77, %71
  %118 = phi i64 [ %74, %71 ], [ %79, %112 ], [ %79, %77 ]
  %119 = phi ptr [ %73, %71 ], [ %80, %112 ], [ %80, %77 ]
  %120 = phi i64 [ 5, %71 ], [ %81, %112 ], [ %81, %77 ]
  %121 = phi ptr [ null, %71 ], [ %86, %112 ], [ null, %77 ]
  %122 = phi i64 [ 0, %71 ], [ %115, %112 ], [ 0, %77 ]
  %123 = phi i64 [ 5, %71 ], [ %113, %112 ], [ %81, %77 ]
  %124 = phi i64 [ 0, %71 ], [ %114, %112 ], [ 0, %77 ]
  %125 = phi i64 [ %75, %71 ], [ %116, %112 ], [ %78, %77 ]
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 %123
  %127 = icmp eq i64 %125, 0
  br i1 %127, label %262, label %128

128:                                              ; preds = %117
  %129 = icmp eq i64 %123, 5
  br i1 %129, label %177, label %130

130:                                              ; preds = %128
  %131 = load i8, ptr %126, align 1
  switch i8 %131, label %177 [
    i8 101, label %132
    i8 69, label %132
  ]

132:                                              ; preds = %130, %130
  %133 = add nuw nsw i64 %123, 1
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 %133
  %135 = icmp eq i64 %133, 5
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = load i8, ptr %134, align 1
  %138 = icmp eq i8 %137, 45
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = getelementptr inbounds nuw i8, ptr %126, i64 2
  br label %145

141:                                              ; preds = %136
  %142 = icmp eq i8 %137, 43
  %143 = getelementptr inbounds nuw i8, ptr %126, i64 2
  %144 = select i1 %142, ptr %143, ptr %134
  br label %145

145:                                              ; preds = %141, %132, %139
  %146 = phi ptr [ %140, %139 ], [ %134, %132 ], [ %144, %141 ]
  %147 = phi i1 [ true, %139 ], [ false, %132 ], [ false, %141 ]
  %148 = icmp eq ptr %146, %16
  br i1 %148, label %177, label %149

149:                                              ; preds = %145
  %150 = load i8, ptr %146, align 1
  %151 = sext i8 %150 to i32
  %152 = add nsw i32 %151, -48
  %153 = icmp ult i32 %152, 10
  br i1 %153, label %154, label %177

154:                                              ; preds = %149, %168
  %155 = phi i64 [ %169, %168 ], [ 0, %149 ]
  %156 = phi ptr [ %170, %168 ], [ %146, %149 ]
  %157 = load i8, ptr %156, align 1
  %158 = sext i8 %157 to i32
  %159 = add nsw i32 %158, -48
  %160 = icmp ult i32 %159, 10
  br i1 %160, label %161, label %172

161:                                              ; preds = %154
  %162 = icmp slt i64 %155, 268435456
  br i1 %162, label %163, label %168

163:                                              ; preds = %161
  %164 = add i8 %157, -48
  %165 = mul nsw i64 %155, 10
  %166 = zext i8 %164 to i64
  %167 = add nsw i64 %165, %166
  br label %168

168:                                              ; preds = %163, %161
  %169 = phi i64 [ %167, %163 ], [ %155, %161 ]
  %170 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %171 = icmp eq ptr %170, %16
  br i1 %171, label %172, label %154

172:                                              ; preds = %168, %154
  %173 = phi i64 [ %169, %168 ], [ %155, %154 ]
  %174 = sub nsw i64 0, %173
  %175 = select i1 %147, i64 %174, i64 %173
  %176 = add nsw i64 %175, %124
  br label %177

177:                                              ; preds = %130, %128, %172, %145, %149
  %178 = phi i64 [ %175, %172 ], [ 0, %145 ], [ 0, %149 ], [ 0, %130 ], [ 0, %128 ]
  %179 = phi i64 [ %176, %172 ], [ %124, %145 ], [ %124, %149 ], [ %124, %130 ], [ %124, %128 ]
  %180 = icmp sgt i64 %125, 19
  br i1 %180, label %181, label %262

181:                                              ; preds = %177
  %182 = load i8, ptr %31, align 1
  switch i8 %182, label %218 [
    i8 48, label %183
    i8 46, label %183
  ]

183:                                              ; preds = %181, %181
  %184 = icmp eq i8 %182, 48
  %185 = sext i1 %184 to i64
  %186 = add nsw i64 %125, %185
  %187 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %189 = load i8, ptr %188, align 1
  switch i8 %189, label %218 [
    i8 48, label %190
    i8 46, label %190
  ]

190:                                              ; preds = %183, %183
  %191 = icmp eq i8 %189, 48
  %192 = sext i1 %191 to i64
  %193 = add nsw i64 %186, %192
  %194 = or disjoint i64 %33, 2
  %195 = getelementptr inbounds nuw i8, ptr %2, i64 %194
  %196 = load i8, ptr %195, align 1
  switch i8 %196, label %218 [
    i8 48, label %197
    i8 46, label %197
  ]

197:                                              ; preds = %190, %190
  %198 = icmp eq i8 %196, 48
  %199 = sext i1 %198 to i64
  %200 = add nsw i64 %193, %199
  %201 = add nuw nsw i64 %33, 3
  %202 = icmp eq i64 %201, 5
  br i1 %202, label %218, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds nuw i8, ptr %2, i64 %201
  %205 = load i8, ptr %204, align 1
  switch i8 %205, label %218 [
    i8 48, label %206
    i8 46, label %206
  ]

206:                                              ; preds = %203, %203
  %207 = icmp eq i8 %205, 48
  %208 = sext i1 %207 to i64
  %209 = add nsw i64 %200, %208
  br i1 %17, label %218, label %210

210:                                              ; preds = %206
  %211 = or disjoint i64 %33, 4
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 %211
  %213 = load i8, ptr %212, align 1
  switch i8 %213, label %218 [
    i8 48, label %214
    i8 46, label %214
  ]

214:                                              ; preds = %210, %210
  %215 = icmp eq i8 %213, 48
  %216 = sext i1 %215 to i64
  %217 = add nsw i64 %209, %216
  br label %218

218:                                              ; preds = %214, %210, %206, %203, %197, %190, %183, %181
  %219 = phi i64 [ %125, %181 ], [ %186, %183 ], [ %193, %190 ], [ %200, %197 ], [ %200, %203 ], [ %209, %206 ], [ %209, %210 ], [ %217, %214 ]
  %220 = icmp sgt i64 %219, 19
  br i1 %220, label %221, label %262

221:                                              ; preds = %218
  %222 = icmp samesign eq i64 %33, %120
  br i1 %222, label %237, label %223

223:                                              ; preds = %221, %223
  %224 = phi ptr [ %231, %223 ], [ %32, %221 ]
  %225 = phi i64 [ %230, %223 ], [ 0, %221 ]
  %226 = mul nuw i64 %225, 10
  %227 = load i8, ptr %224, align 1
  %228 = sext i8 %227 to i64
  %229 = add i64 %226, -48
  %230 = add i64 %229, %228
  %231 = getelementptr inbounds nuw i8, ptr %224, i64 1
  %232 = icmp ult i64 %230, 1000000000000000000
  %233 = icmp ne ptr %231, %119
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %223, label %235

235:                                              ; preds = %223
  %236 = icmp ugt i64 %230, 999999999999999999
  br i1 %236, label %256, label %237

237:                                              ; preds = %221, %235
  %238 = phi i64 [ %230, %235 ], [ 0, %221 ]
  %239 = getelementptr inbounds nuw i8, ptr %121, i64 %122
  %240 = icmp samesign eq i64 %122, 0
  br i1 %240, label %253, label %241

241:                                              ; preds = %237, %241
  %242 = phi ptr [ %249, %241 ], [ %121, %237 ]
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

253:                                              ; preds = %241, %237
  %254 = phi ptr [ %121, %237 ], [ %249, %241 ]
  %255 = ptrtoint ptr %121 to i64
  br label %256

256:                                              ; preds = %235, %253
  %257 = phi ptr [ %254, %253 ], [ %231, %235 ]
  %258 = phi i64 [ %255, %253 ], [ %118, %235 ]
  %259 = ptrtoint ptr %257 to i64
  %260 = sub i64 %258, %259
  %261 = add nsw i64 %260, %178
  br label %262

262:                                              ; preds = %177, %218, %256, %117, %21
  %263 = phi i64 [ 0, %21 ], [ 0, %117 ], [ %179, %177 ], [ %261, %256 ], [ %179, %218 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %263
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_consumed(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %17 = icmp eq i8 %4, 45
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = sext i8 %4 to i32
  %20 = add nsw i32 %19, -48
  br label %27

21:                                               ; preds = %1
  %22 = sext i8 %6 to i32
  %23 = add nsw i32 %22, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %6, 46
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %149

27:                                               ; preds = %21, %18
  %28 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %29 = phi i64 [ 0, %18 ], [ 1, %21 ]
  %30 = icmp ult i32 %28, 10
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = add nuw nsw i64 %29, 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = or disjoint i64 %29, 2
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, -48
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %29, 3
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = sext i8 %48 to i32
  %50 = add nsw i32 %49, -48
  %51 = icmp ult i32 %50, 10
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = or disjoint i64 %29, 4
  br i1 %17, label %65, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 %53
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, -48
  %59 = icmp ult i32 %58, 10
  %60 = add nuw nsw i64 %29, 5
  %61 = select i1 %59, i64 %60, i64 %53
  br label %65

62:                                               ; preds = %45, %38, %31, %27
  %63 = phi i64 [ %29, %27 ], [ %32, %31 ], [ %39, %38 ], [ %46, %45 ]
  %64 = sub nsw i64 %63, %29
  br label %69

65:                                               ; preds = %54, %52
  %66 = phi i64 [ %53, %52 ], [ %61, %54 ]
  %67 = sub nsw i64 %66, %29
  %68 = icmp eq i64 %66, 5
  br i1 %68, label %110, label %69

69:                                               ; preds = %62, %65
  %70 = phi i64 [ %64, %62 ], [ %67, %65 ]
  %71 = phi i64 [ %63, %62 ], [ %66, %65 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 46
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  %76 = add nuw nsw i64 %71, 1
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = ptrtoint ptr %77 to i64
  %79 = icmp slt i64 %71, -3
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %82 = load i64, ptr %81, align 1
  %83 = add i64 %82, 5063812098665367110
  %84 = add i64 %82, -3472328296227680304
  %85 = or i64 %83, %84
  %86 = and i64 %85, -9187201950435737472
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %80, %75
  %89 = icmp eq i64 %76, 5
  br i1 %89, label %104, label %92

90:                                               ; preds = %80
  %91 = add nuw nsw i64 %71, 9
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i64 [ %91, %90 ], [ %76, %88 ]
  br label %94

94:                                               ; preds = %92, %101
  %95 = phi i64 [ %102, %101 ], [ %93, %92 ]
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = sext i8 %97 to i32
  %99 = add nsw i32 %98, -48
  %100 = icmp ult i32 %99, 10
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = add nuw nsw i64 %95, 1
  %103 = icmp eq i64 %102, 5
  br i1 %103, label %104, label %94

104:                                              ; preds = %101, %94, %88
  %105 = phi i64 [ 5, %88 ], [ %95, %94 ], [ 5, %101 ]
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 %105
  %107 = ptrtoint ptr %106 to i64
  %108 = sub i64 %70, %78
  %109 = add i64 %108, %107
  br label %110

110:                                              ; preds = %104, %69, %65
  %111 = phi i64 [ 5, %65 ], [ %105, %104 ], [ %71, %69 ]
  %112 = phi i64 [ %67, %65 ], [ %109, %104 ], [ %70, %69 ]
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 %111
  %114 = icmp eq i64 %112, 0
  br i1 %114, label %149, label %115

115:                                              ; preds = %110
  %116 = icmp eq i64 %111, 5
  br i1 %116, label %149, label %117

117:                                              ; preds = %115
  %118 = load i8, ptr %113, align 1
  switch i8 %118, label %149 [
    i8 101, label %119
    i8 69, label %119
  ]

119:                                              ; preds = %117, %117
  %120 = add nuw nsw i64 %111, 1
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %120
  %122 = icmp eq i64 %120, 5
  br i1 %122, label %132, label %123

123:                                              ; preds = %119
  %124 = load i8, ptr %121, align 1
  %125 = icmp eq i8 %124, 45
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = getelementptr inbounds nuw i8, ptr %113, i64 2
  br label %132

128:                                              ; preds = %123
  %129 = icmp eq i8 %124, 43
  %130 = getelementptr inbounds nuw i8, ptr %113, i64 2
  %131 = select i1 %129, ptr %130, ptr %121
  br label %132

132:                                              ; preds = %128, %119, %126
  %133 = phi ptr [ %127, %126 ], [ %121, %119 ], [ %131, %128 ]
  %134 = icmp eq ptr %133, %16
  br i1 %134, label %149, label %135

135:                                              ; preds = %132
  %136 = load i8, ptr %133, align 1
  %137 = sext i8 %136 to i32
  %138 = add nsw i32 %137, -48
  %139 = icmp ult i32 %138, 10
  br i1 %139, label %140, label %149

140:                                              ; preds = %135, %146
  %141 = phi ptr [ %147, %146 ], [ %133, %135 ]
  %142 = load i8, ptr %141, align 1
  %143 = sext i8 %142 to i32
  %144 = add nsw i32 %143, -48
  %145 = icmp ult i32 %144, 10
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %148 = icmp eq ptr %147, %16
  br i1 %148, label %149, label %140

149:                                              ; preds = %135, %132, %115, %117, %146, %140, %110, %21
  %150 = phi ptr [ %3, %21 ], [ %113, %110 ], [ %113, %132 ], [ %113, %135 ], [ %113, %117 ], [ %16, %115 ], [ %141, %140 ], [ %16, %146 ]
  %151 = ptrtoint ptr %150 to i64
  %152 = ptrtoint ptr %2 to i64
  %153 = sub i64 %151, %152
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %153
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi3EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %26

20:                                               ; preds = %1
  %21 = sext i8 %6 to i32
  %22 = add nsw i32 %21, -48
  %23 = icmp ult i32 %22, 10
  %24 = icmp eq i8 %6, 46
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %114

26:                                               ; preds = %20, %17
  %27 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %28 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %29 = icmp ult i32 %27, 10
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = or disjoint i64 %28, 2
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %28, 3
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = or disjoint i64 %28, 4
  br i1 %16, label %64, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  %59 = add nuw nsw i64 %28, 5
  %60 = select i1 %58, i64 %59, i64 %52
  br label %64

61:                                               ; preds = %44, %37, %30, %26
  %62 = phi i64 [ %28, %26 ], [ %31, %30 ], [ %38, %37 ], [ %45, %44 ]
  %63 = sub nsw i64 %62, %28
  br label %68

64:                                               ; preds = %53, %51
  %65 = phi i64 [ %52, %51 ], [ %60, %53 ]
  %66 = sub nsw i64 %65, %28
  %67 = icmp eq i64 %65, 5
  br i1 %67, label %109, label %68

68:                                               ; preds = %61, %64
  %69 = phi i64 [ %63, %61 ], [ %66, %64 ]
  %70 = phi i64 [ %62, %61 ], [ %65, %64 ]
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 46
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = add nuw nsw i64 %70, 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = ptrtoint ptr %76 to i64
  %78 = icmp slt i64 %70, -3
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %81 = load i64, ptr %80, align 1
  %82 = add i64 %81, 5063812098665367110
  %83 = add i64 %81, -3472328296227680304
  %84 = or i64 %82, %83
  %85 = and i64 %84, -9187201950435737472
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %79, %74
  %88 = icmp eq i64 %75, 5
  br i1 %88, label %103, label %91

89:                                               ; preds = %79
  %90 = add nuw nsw i64 %70, 9
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %90, %89 ], [ %75, %87 ]
  br label %93

93:                                               ; preds = %91, %100
  %94 = phi i64 [ %101, %100 ], [ %92, %91 ]
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %97, -48
  %99 = icmp ult i32 %98, 10
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = add nuw nsw i64 %94, 1
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %103, label %93

103:                                              ; preds = %100, %93, %87
  %104 = phi i64 [ 5, %87 ], [ %94, %93 ], [ 5, %100 ]
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %106 = ptrtoint ptr %105 to i64
  %107 = sub i64 %69, %77
  %108 = add i64 %107, %106
  br label %109

109:                                              ; preds = %103, %68, %64
  %110 = phi i64 [ %66, %64 ], [ %69, %103 ], [ %69, %68 ]
  %111 = phi i64 [ %66, %64 ], [ %108, %103 ], [ %69, %68 ]
  %112 = icmp eq i64 %111, 0
  %113 = select i1 %112, i64 0, i64 %110
  br label %114

114:                                              ; preds = %109, %20
  %115 = phi i64 [ 0, %20 ], [ %113, %109 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %115
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_length(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi4EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = sext i8 %6 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = icmp eq i8 %6, 46
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %178

28:                                               ; preds = %20, %17
  %29 = phi i32 [ %19, %17 ], [ %24, %20 ]
  %30 = phi ptr [ %2, %17 ], [ %22, %20 ]
  %31 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %32 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %33 = icmp ult i32 %29, 10
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  %35 = add nuw nsw i64 %32, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = or disjoint i64 %32, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %32, 3
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load i8, ptr %50, align 1
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ult i32 %53, 10
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = or disjoint i64 %32, 4
  br i1 %16, label %69, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %59 = load i8, ptr %58, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  %62 = icmp ult i32 %61, 10
  %63 = add nuw nsw i64 %32, 5
  %64 = select i1 %62, i64 %63, i64 %56
  br label %69

65:                                               ; preds = %48, %41, %34, %28
  %66 = phi i64 [ %32, %28 ], [ %35, %34 ], [ %42, %41 ], [ %49, %48 ]
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %68 = sub nsw i64 %66, %32
  br label %74

69:                                               ; preds = %57, %55
  %70 = phi i64 [ %56, %55 ], [ %64, %57 ]
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = sub nsw i64 %70, %32
  %73 = icmp eq i64 %70, 5
  br i1 %73, label %116, label %74

74:                                               ; preds = %65, %69
  %75 = phi i64 [ %68, %65 ], [ %72, %69 ]
  %76 = phi ptr [ %67, %65 ], [ %71, %69 ]
  %77 = phi i64 [ %66, %65 ], [ %70, %69 ]
  %78 = load i8, ptr %76, align 1
  %79 = icmp eq i8 %78, 46
  br i1 %79, label %80, label %116

80:                                               ; preds = %74
  %81 = add nuw nsw i64 %77, 1
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = ptrtoint ptr %82 to i64
  %84 = icmp slt i64 %77, -3
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %87 = load i64, ptr %86, align 1
  %88 = add i64 %87, 5063812098665367110
  %89 = add i64 %87, -3472328296227680304
  %90 = or i64 %88, %89
  %91 = and i64 %90, -9187201950435737472
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85, %80
  %94 = icmp eq i64 %81, 5
  br i1 %94, label %109, label %97

95:                                               ; preds = %85
  %96 = add nuw nsw i64 %77, 9
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %96, %95 ], [ %81, %93 ]
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
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %109, label %99

109:                                              ; preds = %106, %99, %93
  %110 = phi i64 [ 5, %93 ], [ %100, %99 ], [ 5, %106 ]
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 %110
  %112 = ptrtoint ptr %111 to i64
  %113 = sub nsw i64 %110, %81
  %114 = sub i64 %75, %83
  %115 = add i64 %114, %112
  br label %116

116:                                              ; preds = %109, %74, %69
  %117 = phi ptr [ %71, %69 ], [ %76, %109 ], [ %76, %74 ]
  %118 = phi i64 [ 5, %69 ], [ %77, %109 ], [ %77, %74 ]
  %119 = phi i64 [ 0, %69 ], [ %113, %109 ], [ 0, %74 ]
  %120 = phi i64 [ %72, %69 ], [ %115, %109 ], [ %75, %74 ]
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %178, label %122

122:                                              ; preds = %116
  %123 = icmp sgt i64 %120, 19
  br i1 %123, label %124, label %178

124:                                              ; preds = %122
  %125 = load i8, ptr %30, align 1
  switch i8 %125, label %161 [
    i8 48, label %126
    i8 46, label %126
  ]

126:                                              ; preds = %124, %124
  %127 = icmp eq i8 %125, 48
  %128 = sext i1 %127 to i64
  %129 = add nsw i64 %120, %128
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %132 = load i8, ptr %131, align 1
  switch i8 %132, label %161 [
    i8 48, label %133
    i8 46, label %133
  ]

133:                                              ; preds = %126, %126
  %134 = icmp eq i8 %132, 48
  %135 = sext i1 %134 to i64
  %136 = add nsw i64 %129, %135
  %137 = or disjoint i64 %32, 2
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 %137
  %139 = load i8, ptr %138, align 1
  switch i8 %139, label %161 [
    i8 48, label %140
    i8 46, label %140
  ]

140:                                              ; preds = %133, %133
  %141 = icmp eq i8 %139, 48
  %142 = sext i1 %141 to i64
  %143 = add nsw i64 %136, %142
  %144 = add nuw nsw i64 %32, 3
  %145 = icmp eq i64 %144, 5
  br i1 %145, label %161, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 %144
  %148 = load i8, ptr %147, align 1
  switch i8 %148, label %161 [
    i8 48, label %149
    i8 46, label %149
  ]

149:                                              ; preds = %146, %146
  %150 = icmp eq i8 %148, 48
  %151 = sext i1 %150 to i64
  %152 = add nsw i64 %143, %151
  br i1 %16, label %161, label %153

153:                                              ; preds = %149
  %154 = or disjoint i64 %32, 4
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 %154
  %156 = load i8, ptr %155, align 1
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
  %162 = phi i64 [ %120, %124 ], [ %129, %126 ], [ %136, %133 ], [ %143, %140 ], [ %143, %146 ], [ %152, %149 ], [ %152, %153 ], [ %160, %157 ]
  %163 = icmp slt i64 %162, 20
  %164 = icmp samesign eq i64 %32, %118
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %178, label %166

166:                                              ; preds = %161, %166
  %167 = phi ptr [ %174, %166 ], [ %31, %161 ]
  %168 = phi i64 [ %173, %166 ], [ 0, %161 ]
  %169 = mul nuw i64 %168, 10
  %170 = load i8, ptr %167, align 1
  %171 = sext i8 %170 to i64
  %172 = add i64 %169, -48
  %173 = add i64 %172, %171
  %174 = getelementptr inbounds nuw i8, ptr %167, i64 1
  %175 = icmp ult i64 %173, 1000000000000000000
  %176 = icmp ne ptr %174, %117
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %166, label %178

178:                                              ; preds = %166, %122, %161, %116, %20
  %179 = phi i64 [ 0, %20 ], [ 0, %116 ], [ %119, %161 ], [ %119, %122 ], [ %119, %166 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %179
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_error(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi5EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %26

20:                                               ; preds = %1
  %21 = sext i8 %6 to i32
  %22 = add nsw i32 %21, -48
  %23 = icmp ult i32 %22, 10
  %24 = icmp eq i8 %6, 46
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %113

26:                                               ; preds = %20, %17
  %27 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %28 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %29 = icmp ult i32 %27, 10
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = or disjoint i64 %28, 2
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %28, 3
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = or disjoint i64 %28, 4
  br i1 %16, label %64, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  %59 = add nuw nsw i64 %28, 5
  %60 = select i1 %58, i64 %59, i64 %52
  br label %64

61:                                               ; preds = %44, %37, %30, %26
  %62 = phi i64 [ %28, %26 ], [ %31, %30 ], [ %38, %37 ], [ %45, %44 ]
  %63 = sub nsw i64 %62, %28
  br label %68

64:                                               ; preds = %53, %51
  %65 = phi i64 [ %52, %51 ], [ %60, %53 ]
  %66 = sub nsw i64 %65, %28
  %67 = icmp eq i64 %65, 5
  br i1 %67, label %109, label %68

68:                                               ; preds = %61, %64
  %69 = phi i64 [ %63, %61 ], [ %66, %64 ]
  %70 = phi i64 [ %62, %61 ], [ %65, %64 ]
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 46
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = add nuw nsw i64 %70, 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = ptrtoint ptr %76 to i64
  %78 = icmp slt i64 %70, -3
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %81 = load i64, ptr %80, align 1
  %82 = add i64 %81, 5063812098665367110
  %83 = add i64 %81, -3472328296227680304
  %84 = or i64 %82, %83
  %85 = and i64 %84, -9187201950435737472
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %79, %74
  %88 = icmp eq i64 %75, 5
  br i1 %88, label %103, label %91

89:                                               ; preds = %79
  %90 = add nuw nsw i64 %70, 9
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %90, %89 ], [ %75, %87 ]
  br label %93

93:                                               ; preds = %91, %100
  %94 = phi i64 [ %101, %100 ], [ %92, %91 ]
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %97, -48
  %99 = icmp ult i32 %98, 10
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = add nuw nsw i64 %94, 1
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %103, label %93

103:                                              ; preds = %100, %93, %87
  %104 = phi i64 [ 5, %87 ], [ %94, %93 ], [ 5, %100 ]
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %106 = ptrtoint ptr %105 to i64
  %107 = sub i64 %69, %77
  %108 = add i64 %107, %106
  br label %109

109:                                              ; preds = %103, %68, %64
  %110 = phi i64 [ %66, %64 ], [ %108, %103 ], [ %69, %68 ]
  %111 = icmp eq i64 %110, 0
  %112 = select i1 %111, i64 6, i64 0
  br label %113

113:                                              ; preds = %109, %20
  %114 = phi i64 [ 2, %20 ], [ %112, %109 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %114
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_valid(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi6EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %26

20:                                               ; preds = %1
  %21 = sext i8 %6 to i32
  %22 = add nsw i32 %21, -48
  %23 = icmp ult i32 %22, 10
  %24 = icmp eq i8 %6, 46
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %113

26:                                               ; preds = %20, %17
  %27 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %28 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %29 = icmp ult i32 %27, 10
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = or disjoint i64 %28, 2
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %28, 3
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = or disjoint i64 %28, 4
  br i1 %16, label %64, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  %59 = add nuw nsw i64 %28, 5
  %60 = select i1 %58, i64 %59, i64 %52
  br label %64

61:                                               ; preds = %44, %37, %30, %26
  %62 = phi i64 [ %28, %26 ], [ %31, %30 ], [ %38, %37 ], [ %45, %44 ]
  %63 = sub nsw i64 %62, %28
  br label %68

64:                                               ; preds = %53, %51
  %65 = phi i64 [ %52, %51 ], [ %60, %53 ]
  %66 = sub nsw i64 %65, %28
  %67 = icmp eq i64 %65, 5
  br i1 %67, label %109, label %68

68:                                               ; preds = %61, %64
  %69 = phi i64 [ %63, %61 ], [ %66, %64 ]
  %70 = phi i64 [ %62, %61 ], [ %65, %64 ]
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 46
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = add nuw nsw i64 %70, 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = ptrtoint ptr %76 to i64
  %78 = icmp slt i64 %70, -3
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %81 = load i64, ptr %80, align 1
  %82 = add i64 %81, 5063812098665367110
  %83 = add i64 %81, -3472328296227680304
  %84 = or i64 %82, %83
  %85 = and i64 %84, -9187201950435737472
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %79, %74
  %88 = icmp eq i64 %75, 5
  br i1 %88, label %103, label %91

89:                                               ; preds = %79
  %90 = add nuw nsw i64 %70, 9
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %90, %89 ], [ %75, %87 ]
  br label %93

93:                                               ; preds = %91, %100
  %94 = phi i64 [ %101, %100 ], [ %92, %91 ]
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %97, -48
  %99 = icmp ult i32 %98, 10
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = add nuw nsw i64 %94, 1
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %103, label %93

103:                                              ; preds = %100, %93, %87
  %104 = phi i64 [ 5, %87 ], [ %94, %93 ], [ 5, %100 ]
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %106 = ptrtoint ptr %105 to i64
  %107 = sub i64 %69, %77
  %108 = add i64 %107, %106
  br label %109

109:                                              ; preds = %103, %68, %64
  %110 = phi i64 [ %66, %64 ], [ %108, %103 ], [ %69, %68 ]
  %111 = icmp eq i64 %110, 0
  %112 = select i1 %111, i64 0, i64 1
  br label %113

113:                                              ; preds = %109, %20
  %114 = phi i64 [ 0, %20 ], [ %112, %109 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %114
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_negative(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi7EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %26

20:                                               ; preds = %1
  %21 = sext i8 %6 to i32
  %22 = add nsw i32 %21, -48
  %23 = icmp ult i32 %22, 10
  %24 = icmp eq i8 %6, 46
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %96

26:                                               ; preds = %20, %17
  %27 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %28 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %29 = icmp ult i32 %27, 10
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = or disjoint i64 %28, 2
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %28, 3
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = or disjoint i64 %28, 4
  br i1 %16, label %61, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  %59 = add nuw nsw i64 %28, 5
  %60 = select i1 %58, i64 %59, i64 %52
  br label %61

61:                                               ; preds = %53, %51
  %62 = phi i64 [ %52, %51 ], [ %60, %53 ]
  %63 = icmp eq i64 %62, 5
  br i1 %63, label %94, label %64

64:                                               ; preds = %26, %30, %37, %44, %61
  %65 = phi i64 [ %62, %61 ], [ %28, %26 ], [ %31, %30 ], [ %38, %37 ], [ %45, %44 ]
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = sub nsw i64 %65, %28
  %68 = load i8, ptr %66, align 1
  %69 = icmp eq i8 %68, 46
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = add nuw nsw i64 %65, 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = icmp eq i64 %71, 5
  br i1 %74, label %85, label %75

75:                                               ; preds = %70, %82
  %76 = phi i64 [ %83, %82 ], [ %71, %70 ]
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %76, 1
  %84 = icmp eq i64 %83, 5
  br i1 %84, label %85, label %75

85:                                               ; preds = %82, %75, %70
  %86 = phi i64 [ 5, %70 ], [ %76, %75 ], [ 5, %82 ]
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %67, %73
  %90 = add i64 %89, %88
  br label %91

91:                                               ; preds = %85, %64
  %92 = phi i64 [ %90, %85 ], [ %67, %64 ]
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91, %61
  %95 = zext i1 %16 to i64
  br label %96

96:                                               ; preds = %91, %20, %94
  %97 = phi i64 [ %95, %94 ], [ 0, %20 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %97
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_too_many_digits(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi8EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  br i1 %26, label %27, label %155

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %30 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %31 = icmp ult i32 %28, 10
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = add nuw nsw i64 %30, 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, -48
  %38 = icmp ult i32 %37, 10
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = or disjoint i64 %30, 2
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %30, 3
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %50, -48
  %52 = icmp ult i32 %51, 10
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = or disjoint i64 %30, 4
  br i1 %16, label %66, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  %61 = add nuw nsw i64 %30, 5
  %62 = select i1 %60, i64 %61, i64 %54
  br label %66

63:                                               ; preds = %46, %39, %32, %27
  %64 = phi i64 [ %30, %27 ], [ %33, %32 ], [ %40, %39 ], [ %47, %46 ]
  %65 = sub nsw i64 %64, %30
  br label %70

66:                                               ; preds = %55, %53
  %67 = phi i64 [ %54, %53 ], [ %62, %55 ]
  %68 = sub nsw i64 %67, %30
  %69 = icmp eq i64 %67, 5
  br i1 %69, label %111, label %70

70:                                               ; preds = %63, %66
  %71 = phi i64 [ %65, %63 ], [ %68, %66 ]
  %72 = phi i64 [ %64, %63 ], [ %67, %66 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 46
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = add nuw nsw i64 %72, 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %79 = ptrtoint ptr %78 to i64
  %80 = icmp slt i64 %72, -3
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %83, 5063812098665367110
  %85 = add i64 %83, -3472328296227680304
  %86 = or i64 %84, %85
  %87 = and i64 %86, -9187201950435737472
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %81, %76
  %90 = icmp eq i64 %77, 5
  br i1 %90, label %105, label %93

91:                                               ; preds = %81
  %92 = add nuw nsw i64 %72, 9
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %92, %91 ], [ %77, %89 ]
  br label %95

95:                                               ; preds = %93, %102
  %96 = phi i64 [ %103, %102 ], [ %94, %93 ]
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = sext i8 %98 to i32
  %100 = add nsw i32 %99, -48
  %101 = icmp ult i32 %100, 10
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = add nuw nsw i64 %96, 1
  %104 = icmp eq i64 %103, 5
  br i1 %104, label %105, label %95

105:                                              ; preds = %102, %95, %89
  %106 = phi i64 [ 5, %89 ], [ %96, %95 ], [ 5, %102 ]
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %106
  %108 = ptrtoint ptr %107 to i64
  %109 = sub i64 %71, %79
  %110 = add i64 %109, %108
  br label %111

111:                                              ; preds = %105, %70, %66
  %112 = phi i64 [ %68, %66 ], [ %110, %105 ], [ %71, %70 ]
  %113 = icmp sgt i64 %112, 19
  br i1 %113, label %114, label %155

114:                                              ; preds = %111
  %115 = load i8, ptr %29, align 1
  switch i8 %115, label %151 [
    i8 48, label %116
    i8 46, label %116
  ]

116:                                              ; preds = %114, %114
  %117 = icmp eq i8 %115, 48
  %118 = sext i1 %117 to i64
  %119 = add nsw i64 %112, %118
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 %30
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %122 = load i8, ptr %121, align 1
  switch i8 %122, label %151 [
    i8 48, label %123
    i8 46, label %123
  ]

123:                                              ; preds = %116, %116
  %124 = icmp eq i8 %122, 48
  %125 = sext i1 %124 to i64
  %126 = add nsw i64 %119, %125
  %127 = or disjoint i64 %30, 2
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 %127
  %129 = load i8, ptr %128, align 1
  switch i8 %129, label %151 [
    i8 48, label %130
    i8 46, label %130
  ]

130:                                              ; preds = %123, %123
  %131 = icmp eq i8 %129, 48
  %132 = sext i1 %131 to i64
  %133 = add nsw i64 %126, %132
  %134 = add nuw nsw i64 %30, 3
  %135 = icmp eq i64 %134, 5
  br i1 %135, label %151, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %134
  %138 = load i8, ptr %137, align 1
  switch i8 %138, label %151 [
    i8 48, label %139
    i8 46, label %139
  ]

139:                                              ; preds = %136, %136
  %140 = icmp eq i8 %138, 48
  %141 = sext i1 %140 to i64
  %142 = add nsw i64 %133, %141
  br i1 %16, label %151, label %143

143:                                              ; preds = %139
  %144 = or disjoint i64 %30, 4
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 %144
  %146 = load i8, ptr %145, align 1
  switch i8 %146, label %151 [
    i8 48, label %147
    i8 46, label %147
  ]

147:                                              ; preds = %143, %143
  %148 = icmp eq i8 %146, 48
  %149 = sext i1 %148 to i64
  %150 = add nsw i64 %142, %149
  br label %151

151:                                              ; preds = %147, %143, %139, %136, %130, %123, %116, %114
  %152 = phi i64 [ %112, %114 ], [ %119, %116 ], [ %126, %123 ], [ %133, %130 ], [ %133, %136 ], [ %142, %139 ], [ %142, %143 ], [ %150, %147 ]
  %153 = icmp sgt i64 %152, 19
  %154 = zext i1 %153 to i64
  br label %155

155:                                              ; preds = %151, %111, %20
  %156 = phi i64 [ 0, %20 ], [ 0, %111 ], [ %154, %151 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %156
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_integer_offset(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi9EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  br i1 %26, label %27, label %115

27:                                               ; preds = %20, %17
  %28 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %29 = phi ptr [ %2, %17 ], [ %21, %20 ]
  %30 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %31 = icmp ult i32 %28, 10
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = add nuw nsw i64 %30, 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, -48
  %38 = icmp ult i32 %37, 10
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = or disjoint i64 %30, 2
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %30, 3
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %50, -48
  %52 = icmp ult i32 %51, 10
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = or disjoint i64 %30, 4
  br i1 %16, label %66, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  %61 = add nuw nsw i64 %30, 5
  %62 = select i1 %60, i64 %61, i64 %54
  br label %66

63:                                               ; preds = %46, %39, %32, %27
  %64 = phi i64 [ %30, %27 ], [ %33, %32 ], [ %40, %39 ], [ %47, %46 ]
  %65 = sub nsw i64 %64, %30
  br label %70

66:                                               ; preds = %55, %53
  %67 = phi i64 [ %54, %53 ], [ %62, %55 ]
  %68 = sub nsw i64 %67, %30
  %69 = icmp eq i64 %67, 5
  br i1 %69, label %111, label %70

70:                                               ; preds = %63, %66
  %71 = phi i64 [ %65, %63 ], [ %68, %66 ]
  %72 = phi i64 [ %64, %63 ], [ %67, %66 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 46
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = add nuw nsw i64 %72, 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %79 = ptrtoint ptr %78 to i64
  %80 = icmp slt i64 %72, -3
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %83, 5063812098665367110
  %85 = add i64 %83, -3472328296227680304
  %86 = or i64 %84, %85
  %87 = and i64 %86, -9187201950435737472
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %81, %76
  %90 = icmp eq i64 %77, 5
  br i1 %90, label %105, label %93

91:                                               ; preds = %81
  %92 = add nuw nsw i64 %72, 9
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %92, %91 ], [ %77, %89 ]
  br label %95

95:                                               ; preds = %93, %102
  %96 = phi i64 [ %103, %102 ], [ %94, %93 ]
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = sext i8 %98 to i32
  %100 = add nsw i32 %99, -48
  %101 = icmp ult i32 %100, 10
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = add nuw nsw i64 %96, 1
  %104 = icmp eq i64 %103, 5
  br i1 %104, label %105, label %95

105:                                              ; preds = %102, %95, %89
  %106 = phi i64 [ 5, %89 ], [ %96, %95 ], [ 5, %102 ]
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %106
  %108 = ptrtoint ptr %107 to i64
  %109 = sub i64 %71, %79
  %110 = add i64 %109, %108
  br label %111

111:                                              ; preds = %105, %70, %66
  %112 = phi i64 [ %68, %66 ], [ %110, %105 ], [ %71, %70 ]
  %113 = icmp eq i64 %112, 0
  %114 = select i1 %113, ptr null, ptr %29
  br label %115

115:                                              ; preds = %111, %20
  %116 = phi ptr [ null, %20 ], [ %114, %111 ]
  %117 = icmp eq ptr %116, null
  %118 = ptrtoint ptr %116 to i64
  %119 = ptrtoint ptr %2 to i64
  %120 = sub i64 %118, %119
  %121 = select i1 %117, i64 -1, i64 %120
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %121
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @target_fraction_offset(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi10EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi10EEmm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = sext i8 %4 to i32
  %19 = add nsw i32 %18, -48
  br label %26

20:                                               ; preds = %1
  %21 = sext i8 %6 to i32
  %22 = add nsw i32 %21, -48
  %23 = icmp ult i32 %22, 10
  %24 = icmp eq i8 %6, 46
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %114

26:                                               ; preds = %20, %17
  %27 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %28 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %29 = icmp ult i32 %27, 10
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = or disjoint i64 %28, 2
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %28, 3
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = or disjoint i64 %28, 4
  br i1 %16, label %64, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  %59 = add nuw nsw i64 %28, 5
  %60 = select i1 %58, i64 %59, i64 %52
  br label %64

61:                                               ; preds = %44, %37, %30, %26
  %62 = phi i64 [ %28, %26 ], [ %31, %30 ], [ %38, %37 ], [ %45, %44 ]
  %63 = sub nsw i64 %62, %28
  br label %68

64:                                               ; preds = %53, %51
  %65 = phi i64 [ %52, %51 ], [ %60, %53 ]
  %66 = sub nsw i64 %65, %28
  %67 = icmp eq i64 %65, 5
  br i1 %67, label %109, label %68

68:                                               ; preds = %61, %64
  %69 = phi i64 [ %63, %61 ], [ %66, %64 ]
  %70 = phi i64 [ %62, %61 ], [ %65, %64 ]
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 46
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = add nuw nsw i64 %70, 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = ptrtoint ptr %76 to i64
  %78 = icmp slt i64 %70, -3
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %81 = load i64, ptr %80, align 1
  %82 = add i64 %81, 5063812098665367110
  %83 = add i64 %81, -3472328296227680304
  %84 = or i64 %82, %83
  %85 = and i64 %84, -9187201950435737472
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %79, %74
  %88 = icmp eq i64 %75, 5
  br i1 %88, label %103, label %91

89:                                               ; preds = %79
  %90 = add nuw nsw i64 %70, 9
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %90, %89 ], [ %75, %87 ]
  br label %93

93:                                               ; preds = %91, %100
  %94 = phi i64 [ %101, %100 ], [ %92, %91 ]
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %97, -48
  %99 = icmp ult i32 %98, 10
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = add nuw nsw i64 %94, 1
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %103, label %93

103:                                              ; preds = %100, %93, %87
  %104 = phi i64 [ 5, %87 ], [ %94, %93 ], [ 5, %100 ]
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %106 = ptrtoint ptr %105 to i64
  %107 = sub i64 %69, %77
  %108 = add i64 %107, %106
  br label %109

109:                                              ; preds = %103, %68, %64
  %110 = phi ptr [ null, %64 ], [ %76, %103 ], [ null, %68 ]
  %111 = phi i64 [ %66, %64 ], [ %108, %103 ], [ %69, %68 ]
  %112 = icmp eq i64 %111, 0
  %113 = select i1 %112, ptr null, ptr %110
  br label %114

114:                                              ; preds = %109, %20
  %115 = phi ptr [ null, %20 ], [ %113, %109 ]
  %116 = icmp eq ptr %115, null
  %117 = ptrtoint ptr %115 to i64
  %118 = ptrtoint ptr %2 to i64
  %119 = sub i64 %117, %118
  %120 = select i1 %116, i64 -1, i64 %119
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %120
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
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!18 = distinct !{!18, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!19 = distinct !{!19, !12}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!22 = distinct !{!22, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!25 = distinct !{!25, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!28 = distinct !{!28, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!31 = distinct !{!31, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!34 = distinct !{!34, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!37 = distinct !{!37, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!40 = distinct !{!40, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!43 = distinct !{!43, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!46 = distinct !{!46, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
