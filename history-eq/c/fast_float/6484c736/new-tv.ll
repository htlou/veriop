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
  br i1 %14, label %15, label %229

15:                                               ; preds = %1, %5
  %16 = phi ptr [ %10, %5 ], [ %2, %1 ]
  %17 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %18 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %19 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %20 = load i8, ptr %18, align 1
  %21 = add i8 %20, -48
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %23, label %98

23:                                               ; preds = %15
  %24 = zext nneg i8 %20 to i64
  %25 = add nsw i64 %24, -48
  %26 = add nuw nsw i64 %19, 1
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %98

31:                                               ; preds = %23
  %32 = mul nuw nsw i64 %25, 10
  %33 = zext nneg i8 %28 to i64
  %34 = add nsw i64 %32, -48
  %35 = add nsw i64 %34, %33
  %36 = or disjoint i64 %19, 2
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %98

41:                                               ; preds = %31
  %42 = mul nsw i64 %35, 10
  %43 = zext nneg i8 %38 to i64
  %44 = add nsw i64 %42, -48
  %45 = add i64 %44, %43
  %46 = add nuw nsw i64 %19, 3
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = add i8 %48, -48
  %50 = icmp ult i8 %49, 10
  br i1 %50, label %51, label %98

51:                                               ; preds = %41
  %52 = mul i64 %45, 10
  %53 = zext nneg i8 %48 to i64
  %54 = add i64 %52, -48
  %55 = add i64 %54, %53
  %56 = or disjoint i64 %19, 4
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = add i8 %58, -48
  %60 = icmp ult i8 %59, 10
  br i1 %60, label %61, label %98

61:                                               ; preds = %51
  %62 = mul i64 %55, 10
  %63 = zext nneg i8 %58 to i64
  %64 = add i64 %62, -48
  %65 = add i64 %64, %63
  %66 = add nuw nsw i64 %19, 5
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %68 = load i8, ptr %67, align 1
  %69 = add i8 %68, -48
  %70 = icmp ult i8 %69, 10
  br i1 %70, label %71, label %98

71:                                               ; preds = %61
  %72 = mul i64 %65, 10
  %73 = zext nneg i8 %68 to i64
  %74 = add i64 %72, -48
  %75 = add i64 %74, %73
  %76 = or disjoint i64 %19, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = add i8 %78, -48
  %80 = icmp ult i8 %79, 10
  br i1 %80, label %81, label %98

81:                                               ; preds = %71
  %82 = mul i64 %75, 10
  %83 = zext nneg i8 %78 to i64
  %84 = add i64 %82, -48
  %85 = add i64 %84, %83
  %86 = add nuw nsw i64 %19, 7
  %87 = icmp eq i64 %86, 8
  br i1 %87, label %229, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %90 = load i8, ptr %89, align 1
  %91 = add i8 %90, -48
  %92 = icmp ult i8 %91, 10
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = mul i64 %85, 10
  %95 = zext nneg i8 %90 to i64
  %96 = add i64 %94, -48
  %97 = add i64 %96, %95
  br label %229

98:                                               ; preds = %88, %71, %61, %51, %41, %31, %23, %15
  %99 = phi i64 [ %19, %15 ], [ %26, %23 ], [ %36, %31 ], [ %46, %41 ], [ %56, %51 ], [ %66, %61 ], [ %76, %71 ], [ %86, %88 ]
  %100 = phi i64 [ 0, %15 ], [ %25, %23 ], [ %35, %31 ], [ %45, %41 ], [ %55, %51 ], [ %65, %61 ], [ %75, %71 ], [ %85, %88 ]
  %101 = phi i8 [ %20, %15 ], [ %28, %23 ], [ %38, %31 ], [ %48, %41 ], [ %58, %51 ], [ %68, %61 ], [ %78, %71 ], [ %90, %88 ]
  %102 = sub nsw i64 %99, %19
  %103 = icmp eq i8 %101, 46
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = add nuw nsw i64 %99, 1
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 %105
  %107 = icmp eq i64 %105, 8
  br i1 %107, label %121, label %108

108:                                              ; preds = %104, %115
  %109 = phi i64 [ %116, %115 ], [ %105, %104 ]
  %110 = phi i64 [ %119, %115 ], [ %100, %104 ]
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 %109
  %112 = load i8, ptr %111, align 1
  %113 = add i8 %112, -48
  %114 = icmp ult i8 %113, 10
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = add nuw nsw i64 %109, 1
  %117 = mul i64 %110, 10
  %118 = zext nneg i8 %113 to i64
  %119 = add i64 %117, %118
  %120 = icmp eq i64 %116, 8
  br i1 %120, label %121, label %108

121:                                              ; preds = %115, %108, %104
  %122 = phi i64 [ %100, %104 ], [ %110, %108 ], [ %119, %115 ]
  %123 = phi i64 [ 8, %104 ], [ %109, %108 ], [ 8, %115 ]
  %124 = xor i64 %99, -1
  %125 = sub nsw i64 %123, %105
  %126 = add i64 %102, %124
  %127 = add i64 %126, %123
  br label %128

128:                                              ; preds = %121, %98
  %129 = phi ptr [ %106, %121 ], [ null, %98 ]
  %130 = phi i64 [ %125, %121 ], [ 0, %98 ]
  %131 = phi i64 [ %127, %121 ], [ %102, %98 ]
  %132 = phi i64 [ %122, %121 ], [ %100, %98 ]
  %133 = icmp eq i64 %131, 0
  br i1 %133, label %229, label %134

134:                                              ; preds = %128
  %135 = icmp sgt i64 %131, 19
  br i1 %135, label %136, label %229

136:                                              ; preds = %134
  %137 = load i8, ptr %17, align 1
  switch i8 %137, label %193 [
    i8 48, label %138
    i8 46, label %138
  ]

138:                                              ; preds = %136, %136
  %139 = icmp eq i8 %137, 48
  %140 = sext i1 %139 to i64
  %141 = add nsw i64 %131, %140
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 1
  %144 = load i8, ptr %143, align 1
  switch i8 %144, label %193 [
    i8 48, label %145
    i8 46, label %145
  ]

145:                                              ; preds = %138, %138
  %146 = icmp eq i8 %144, 48
  %147 = sext i1 %146 to i64
  %148 = add nsw i64 %141, %147
  %149 = or disjoint i64 %19, 2
  %150 = getelementptr inbounds nuw i8, ptr %2, i64 %149
  %151 = load i8, ptr %150, align 1
  switch i8 %151, label %193 [
    i8 48, label %152
    i8 46, label %152
  ]

152:                                              ; preds = %145, %145
  %153 = icmp eq i8 %151, 48
  %154 = sext i1 %153 to i64
  %155 = add nsw i64 %148, %154
  %156 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 3
  %158 = load i8, ptr %157, align 1
  switch i8 %158, label %193 [
    i8 48, label %159
    i8 46, label %159
  ]

159:                                              ; preds = %152, %152
  %160 = icmp eq i8 %158, 48
  %161 = sext i1 %160 to i64
  %162 = add nsw i64 %155, %161
  %163 = or disjoint i64 %19, 4
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 %163
  %165 = load i8, ptr %164, align 1
  switch i8 %165, label %193 [
    i8 48, label %166
    i8 46, label %166
  ]

166:                                              ; preds = %159, %159
  %167 = icmp eq i8 %165, 48
  %168 = sext i1 %167 to i64
  %169 = add nsw i64 %162, %168
  %170 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 5
  %172 = load i8, ptr %171, align 1
  switch i8 %172, label %193 [
    i8 48, label %173
    i8 46, label %173
  ]

173:                                              ; preds = %166, %166
  %174 = icmp eq i8 %172, 48
  %175 = sext i1 %174 to i64
  %176 = add nsw i64 %169, %175
  %177 = or disjoint i64 %19, 6
  %178 = getelementptr inbounds nuw i8, ptr %2, i64 %177
  %179 = load i8, ptr %178, align 1
  switch i8 %179, label %193 [
    i8 48, label %180
    i8 46, label %180
  ]

180:                                              ; preds = %173, %173
  %181 = icmp eq i8 %179, 48
  %182 = sext i1 %181 to i64
  %183 = add nsw i64 %176, %182
  %184 = add nuw nsw i64 %19, 7
  %185 = icmp eq i64 %184, 8
  br i1 %185, label %193, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds nuw i8, ptr %2, i64 %184
  %188 = load i8, ptr %187, align 1
  switch i8 %188, label %193 [
    i8 48, label %189
    i8 46, label %189
  ]

189:                                              ; preds = %186, %186
  %190 = icmp eq i8 %188, 48
  %191 = sext i1 %190 to i64
  %192 = add nsw i64 %183, %191
  br label %193

193:                                              ; preds = %189, %186, %180, %173, %166, %159, %152, %145, %138, %136
  %194 = phi i64 [ %131, %136 ], [ %141, %138 ], [ %148, %145 ], [ %155, %152 ], [ %162, %159 ], [ %169, %166 ], [ %176, %173 ], [ %183, %180 ], [ %183, %186 ], [ %192, %189 ]
  %195 = icmp sgt i64 %194, 19
  br i1 %195, label %196, label %229

196:                                              ; preds = %193
  %197 = getelementptr inbounds nuw i8, ptr %16, i64 %102
  %198 = icmp samesign eq i64 %102, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %196, %199
  %200 = phi ptr [ %207, %199 ], [ %16, %196 ]
  %201 = phi i64 [ %206, %199 ], [ 0, %196 ]
  %202 = mul nuw i64 %201, 10
  %203 = load i8, ptr %200, align 1
  %204 = sext i8 %203 to i64
  %205 = add i64 %202, -48
  %206 = add i64 %205, %204
  %207 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %208 = icmp ult i64 %206, 1000000000000000000
  %209 = icmp ne ptr %207, %197
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %199, label %211

211:                                              ; preds = %199
  %212 = icmp ugt i64 %206, 999999999999999999
  br i1 %212, label %229, label %213

213:                                              ; preds = %196, %211
  %214 = phi i64 [ %206, %211 ], [ 0, %196 ]
  %215 = getelementptr inbounds nuw i8, ptr %129, i64 %130
  %216 = icmp samesign eq i64 %130, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %213, %217
  %218 = phi ptr [ %225, %217 ], [ %129, %213 ]
  %219 = phi i64 [ %224, %217 ], [ %214, %213 ]
  %220 = mul nuw i64 %219, 10
  %221 = load i8, ptr %218, align 1
  %222 = sext i8 %221 to i64
  %223 = add i64 %220, -48
  %224 = add i64 %223, %222
  %225 = getelementptr inbounds nuw i8, ptr %218, i64 1
  %226 = icmp ult i64 %224, 1000000000000000000
  %227 = icmp ne ptr %225, %215
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %217, label %229

229:                                              ; preds = %81, %93, %217, %213, %211, %5, %134, %193, %128
  %230 = phi i64 [ 0, %128 ], [ %132, %134 ], [ %132, %193 ], [ 0, %5 ], [ %206, %211 ], [ %214, %213 ], [ %224, %217 ], [ %85, %81 ], [ %97, %93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %230
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
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %11 = add i8 %9, -48
  %12 = icmp ult i8 %11, 10
  %13 = icmp eq i8 %9, 46
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %246

15:                                               ; preds = %1, %6
  %16 = phi ptr [ %10, %6 ], [ %2, %1 ]
  %17 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %18 = phi i64 [ 1, %6 ], [ 0, %1 ]
  %19 = load i8, ptr %16, align 1
  %20 = add i8 %19, -48
  %21 = icmp ult i8 %20, 10
  br i1 %21, label %22, label %66

22:                                               ; preds = %15
  %23 = add nuw nsw i64 %18, 1
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %66

28:                                               ; preds = %22
  %29 = or disjoint i64 %18, 2
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %29
  %31 = load i8, ptr %30, align 1
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = add nuw nsw i64 %18, 3
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = add i8 %37, -48
  %39 = icmp ult i8 %38, 10
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = or disjoint i64 %18, 4
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = add nuw nsw i64 %18, 5
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = add i8 %49, -48
  %51 = icmp ult i8 %50, 10
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = or disjoint i64 %18, 6
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = add i8 %55, -48
  %57 = icmp ult i8 %56, 10
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = add nuw nsw i64 %18, 7
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %246, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %63 = load i8, ptr %62, align 1
  %64 = add i8 %63, -48
  %65 = icmp ult i8 %64, 10
  br i1 %65, label %246, label %66

66:                                               ; preds = %61, %52, %46, %40, %34, %28, %22, %15
  %67 = phi ptr [ %16, %15 ], [ %24, %22 ], [ %30, %28 ], [ %36, %34 ], [ %42, %40 ], [ %48, %46 ], [ %54, %52 ], [ %62, %61 ]
  %68 = phi i64 [ %18, %15 ], [ %23, %22 ], [ %29, %28 ], [ %35, %34 ], [ %41, %40 ], [ %47, %46 ], [ %53, %52 ], [ %59, %61 ]
  %69 = phi i8 [ %19, %15 ], [ %25, %22 ], [ %31, %28 ], [ %37, %34 ], [ %43, %40 ], [ %49, %46 ], [ %55, %52 ], [ %63, %61 ]
  %70 = sub nsw i64 %68, %18
  %71 = icmp eq i8 %69, 46
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = add nuw nsw i64 %68, 1
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %75 = icmp eq i64 %73, 8
  br i1 %75, label %85, label %76

76:                                               ; preds = %72, %82
  %77 = phi i64 [ %83, %82 ], [ %73, %72 ]
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %79 = load i8, ptr %78, align 1
  %80 = add i8 %79, -48
  %81 = icmp ult i8 %80, 10
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = add nuw nsw i64 %77, 1
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %85, label %76

85:                                               ; preds = %82, %76, %72
  %86 = phi i64 [ 8, %72 ], [ %77, %76 ], [ 8, %82 ]
  %87 = sub nsw i64 %73, %86
  %88 = sub nsw i64 %86, %73
  %89 = sub nsw i64 %70, %87
  br label %90

90:                                               ; preds = %85, %66
  %91 = phi ptr [ %74, %85 ], [ null, %66 ]
  %92 = phi i64 [ %88, %85 ], [ 0, %66 ]
  %93 = phi i64 [ %87, %85 ], [ 0, %66 ]
  %94 = phi i64 [ %89, %85 ], [ %70, %66 ]
  %95 = phi i64 [ %86, %85 ], [ %68, %66 ]
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %95
  %97 = icmp eq i64 %94, 0
  br i1 %97, label %246, label %98

98:                                               ; preds = %90
  %99 = icmp eq i64 %95, 8
  br i1 %99, label %142, label %100

100:                                              ; preds = %98
  %101 = load i8, ptr %96, align 1
  switch i8 %101, label %142 [
    i8 101, label %102
    i8 69, label %102
  ]

102:                                              ; preds = %100, %100
  %103 = add nuw nsw i64 %95, 1
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %105 = icmp eq i64 %103, 8
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = load i8, ptr %104, align 1
  %108 = icmp eq i8 %107, 45
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = getelementptr inbounds nuw i8, ptr %96, i64 2
  br label %115

111:                                              ; preds = %106
  %112 = icmp eq i8 %107, 43
  %113 = getelementptr inbounds nuw i8, ptr %96, i64 2
  %114 = select i1 %112, ptr %113, ptr %104
  br label %115

115:                                              ; preds = %111, %109, %102
  %116 = phi i1 [ true, %109 ], [ false, %111 ], [ false, %102 ]
  %117 = phi ptr [ %110, %109 ], [ %114, %111 ], [ %104, %102 ]
  %118 = icmp eq ptr %117, %3
  br i1 %118, label %142, label %119

119:                                              ; preds = %115
  %120 = load i8, ptr %117, align 1
  %121 = add i8 %120, -48
  %122 = icmp ult i8 %121, 10
  br i1 %122, label %123, label %142

123:                                              ; preds = %119, %129
  %124 = phi ptr [ %135, %129 ], [ %117, %119 ]
  %125 = phi i64 [ %134, %129 ], [ 0, %119 ]
  %126 = load i8, ptr %124, align 1
  %127 = add i8 %126, -48
  %128 = icmp ult i8 %127, 10
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = icmp slt i64 %125, 268435456
  %131 = mul nsw i64 %125, 10
  %132 = zext nneg i8 %127 to i64
  %133 = add nsw i64 %131, %132
  %134 = select i1 %130, i64 %133, i64 %125
  %135 = getelementptr inbounds nuw i8, ptr %124, i64 1
  %136 = icmp eq ptr %135, %3
  br i1 %136, label %137, label %123

137:                                              ; preds = %129, %123
  %138 = phi i64 [ %134, %129 ], [ %125, %123 ]
  %139 = sub nsw i64 0, %138
  %140 = select i1 %116, i64 %139, i64 %138
  %141 = add nsw i64 %140, %93
  br label %142

142:                                              ; preds = %98, %100, %137, %119, %115
  %143 = phi i64 [ %140, %137 ], [ 0, %119 ], [ 0, %115 ], [ 0, %100 ], [ 0, %98 ]
  %144 = phi i64 [ %141, %137 ], [ %93, %119 ], [ %93, %115 ], [ %93, %100 ], [ %93, %98 ]
  %145 = icmp sgt i64 %94, 19
  br i1 %145, label %146, label %246

146:                                              ; preds = %142
  %147 = load i8, ptr %17, align 1
  switch i8 %147, label %203 [
    i8 48, label %148
    i8 46, label %148
  ]

148:                                              ; preds = %146, %146
  %149 = icmp eq i8 %147, 48
  %150 = sext i1 %149 to i64
  %151 = add nsw i64 %94, %150
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 %18
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 1
  %154 = load i8, ptr %153, align 1
  switch i8 %154, label %203 [
    i8 48, label %155
    i8 46, label %155
  ]

155:                                              ; preds = %148, %148
  %156 = icmp eq i8 %154, 48
  %157 = sext i1 %156 to i64
  %158 = add nsw i64 %151, %157
  %159 = or disjoint i64 %18, 2
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 %159
  %161 = load i8, ptr %160, align 1
  switch i8 %161, label %203 [
    i8 48, label %162
    i8 46, label %162
  ]

162:                                              ; preds = %155, %155
  %163 = icmp eq i8 %161, 48
  %164 = sext i1 %163 to i64
  %165 = add nsw i64 %158, %164
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 %18
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 3
  %168 = load i8, ptr %167, align 1
  switch i8 %168, label %203 [
    i8 48, label %169
    i8 46, label %169
  ]

169:                                              ; preds = %162, %162
  %170 = icmp eq i8 %168, 48
  %171 = sext i1 %170 to i64
  %172 = add nsw i64 %165, %171
  %173 = or disjoint i64 %18, 4
  %174 = getelementptr inbounds nuw i8, ptr %2, i64 %173
  %175 = load i8, ptr %174, align 1
  switch i8 %175, label %203 [
    i8 48, label %176
    i8 46, label %176
  ]

176:                                              ; preds = %169, %169
  %177 = icmp eq i8 %175, 48
  %178 = sext i1 %177 to i64
  %179 = add nsw i64 %172, %178
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 %18
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 5
  %182 = load i8, ptr %181, align 1
  switch i8 %182, label %203 [
    i8 48, label %183
    i8 46, label %183
  ]

183:                                              ; preds = %176, %176
  %184 = icmp eq i8 %182, 48
  %185 = sext i1 %184 to i64
  %186 = add nsw i64 %179, %185
  %187 = or disjoint i64 %18, 6
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 %187
  %189 = load i8, ptr %188, align 1
  switch i8 %189, label %203 [
    i8 48, label %190
    i8 46, label %190
  ]

190:                                              ; preds = %183, %183
  %191 = icmp eq i8 %189, 48
  %192 = sext i1 %191 to i64
  %193 = add nsw i64 %186, %192
  %194 = add nuw nsw i64 %18, 7
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %203, label %196

196:                                              ; preds = %190
  %197 = getelementptr inbounds nuw i8, ptr %2, i64 %194
  %198 = load i8, ptr %197, align 1
  switch i8 %198, label %203 [
    i8 48, label %199
    i8 46, label %199
  ]

199:                                              ; preds = %196, %196
  %200 = icmp eq i8 %198, 48
  %201 = sext i1 %200 to i64
  %202 = add nsw i64 %193, %201
  br label %203

203:                                              ; preds = %199, %196, %190, %183, %176, %169, %162, %155, %148, %146
  %204 = phi i64 [ %94, %146 ], [ %151, %148 ], [ %158, %155 ], [ %165, %162 ], [ %172, %169 ], [ %179, %176 ], [ %186, %183 ], [ %193, %190 ], [ %193, %196 ], [ %202, %199 ]
  %205 = icmp sgt i64 %204, 19
  br i1 %205, label %206, label %246

206:                                              ; preds = %203
  %207 = getelementptr inbounds nuw i8, ptr %16, i64 %70
  %208 = icmp samesign eq i64 %70, 0
  br i1 %208, label %223, label %209

209:                                              ; preds = %206, %209
  %210 = phi ptr [ %217, %209 ], [ %16, %206 ]
  %211 = phi i64 [ %216, %209 ], [ 0, %206 ]
  %212 = mul nuw i64 %211, 10
  %213 = load i8, ptr %210, align 1
  %214 = sext i8 %213 to i64
  %215 = add i64 %212, -48
  %216 = add i64 %215, %214
  %217 = getelementptr inbounds nuw i8, ptr %210, i64 1
  %218 = icmp ult i64 %216, 1000000000000000000
  %219 = icmp ne ptr %217, %207
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %209, label %221

221:                                              ; preds = %209
  %222 = icmp ugt i64 %216, 999999999999999999
  br i1 %222, label %239, label %223

223:                                              ; preds = %206, %221
  %224 = phi i64 [ %216, %221 ], [ 0, %206 ]
  %225 = getelementptr inbounds nuw i8, ptr %91, i64 %92
  %226 = icmp samesign eq i64 %92, 0
  br i1 %226, label %239, label %227

227:                                              ; preds = %223, %227
  %228 = phi ptr [ %235, %227 ], [ %91, %223 ]
  %229 = phi i64 [ %234, %227 ], [ %224, %223 ]
  %230 = mul nuw i64 %229, 10
  %231 = load i8, ptr %228, align 1
  %232 = sext i8 %231 to i64
  %233 = add i64 %230, -48
  %234 = add i64 %233, %232
  %235 = getelementptr inbounds nuw i8, ptr %228, i64 1
  %236 = icmp ult i64 %234, 1000000000000000000
  %237 = icmp ne ptr %235, %225
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %227, label %239

239:                                              ; preds = %227, %223, %221
  %240 = phi ptr [ %217, %221 ], [ %91, %223 ], [ %235, %227 ]
  %241 = phi ptr [ %67, %221 ], [ %91, %223 ], [ %91, %227 ]
  %242 = ptrtoint ptr %241 to i64
  %243 = ptrtoint ptr %240 to i64
  %244 = sub i64 %242, %243
  %245 = add nsw i64 %244, %143
  br label %246

246:                                              ; preds = %58, %61, %6, %142, %203, %239, %90
  %247 = phi i64 [ 0, %90 ], [ %144, %142 ], [ %245, %239 ], [ %144, %203 ], [ 0, %6 ], [ 0, %61 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %247
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
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  %10 = add i8 %9, -48
  %11 = icmp ult i8 %10, 10
  %12 = icmp eq i8 %9, 46
  %13 = or i1 %12, %11
  br i1 %13, label %16, label %125

14:                                               ; preds = %61, %58
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %125

16:                                               ; preds = %1, %6
  %17 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %18 = phi i64 [ 1, %6 ], [ 0, %1 ]
  %19 = load i8, ptr %17, align 1
  %20 = add i8 %19, -48
  %21 = icmp ult i8 %20, 10
  br i1 %21, label %22, label %66

22:                                               ; preds = %16
  %23 = add nuw nsw i64 %18, 1
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %66

28:                                               ; preds = %22
  %29 = or disjoint i64 %18, 2
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %29
  %31 = load i8, ptr %30, align 1
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = add nuw nsw i64 %18, 3
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = add i8 %37, -48
  %39 = icmp ult i8 %38, 10
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = or disjoint i64 %18, 4
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = add nuw nsw i64 %18, 5
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = add i8 %49, -48
  %51 = icmp ult i8 %50, 10
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = or disjoint i64 %18, 6
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = add i8 %55, -48
  %57 = icmp ult i8 %56, 10
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = add nuw nsw i64 %18, 7
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %14, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %63 = load i8, ptr %62, align 1
  %64 = add i8 %63, -48
  %65 = icmp ult i8 %64, 10
  br i1 %65, label %14, label %66

66:                                               ; preds = %61, %52, %46, %40, %34, %28, %22, %16
  %67 = phi i64 [ %18, %16 ], [ %23, %22 ], [ %29, %28 ], [ %35, %34 ], [ %41, %40 ], [ %47, %46 ], [ %53, %52 ], [ %59, %61 ]
  %68 = phi i8 [ %19, %16 ], [ %25, %22 ], [ %31, %28 ], [ %37, %34 ], [ %43, %40 ], [ %49, %46 ], [ %55, %52 ], [ %63, %61 ]
  %69 = sub nsw i64 %67, %18
  %70 = icmp eq i8 %68, 46
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = add nuw nsw i64 %67, 1
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %83, label %74

74:                                               ; preds = %71, %80
  %75 = phi i64 [ %81, %80 ], [ %72, %71 ]
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = load i8, ptr %76, align 1
  %78 = add i8 %77, -48
  %79 = icmp ult i8 %78, 10
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = add nuw nsw i64 %75, 1
  %82 = icmp eq i64 %81, 8
  br i1 %82, label %83, label %74

83:                                               ; preds = %80, %74, %71
  %84 = phi i64 [ 8, %71 ], [ %75, %74 ], [ 8, %80 ]
  %85 = xor i64 %67, -1
  %86 = add i64 %69, %85
  %87 = add i64 %86, %84
  br label %88

88:                                               ; preds = %83, %66
  %89 = phi i64 [ %87, %83 ], [ %69, %66 ]
  %90 = phi i64 [ %84, %83 ], [ %67, %66 ]
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 %90
  %92 = icmp eq i64 %89, 0
  br i1 %92, label %125, label %93

93:                                               ; preds = %88
  %94 = icmp eq i64 %90, 8
  br i1 %94, label %125, label %95

95:                                               ; preds = %93
  %96 = load i8, ptr %91, align 1
  switch i8 %96, label %125 [
    i8 101, label %97
    i8 69, label %97
  ]

97:                                               ; preds = %95, %95
  %98 = add nuw nsw i64 %90, 1
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = icmp eq i64 %98, 8
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = load i8, ptr %99, align 1
  %103 = icmp eq i8 %102, 45
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = getelementptr inbounds nuw i8, ptr %91, i64 2
  br label %110

106:                                              ; preds = %101
  %107 = icmp eq i8 %102, 43
  %108 = getelementptr inbounds nuw i8, ptr %91, i64 2
  %109 = select i1 %107, ptr %108, ptr %99
  br label %110

110:                                              ; preds = %106, %104, %97
  %111 = phi ptr [ %105, %104 ], [ %109, %106 ], [ %99, %97 ]
  %112 = icmp eq ptr %111, %3
  br i1 %112, label %125, label %113

113:                                              ; preds = %110
  %114 = load i8, ptr %111, align 1
  %115 = add i8 %114, -48
  %116 = icmp ult i8 %115, 10
  br i1 %116, label %117, label %125

117:                                              ; preds = %113, %122
  %118 = phi ptr [ %123, %122 ], [ %111, %113 ]
  %119 = load i8, ptr %118, align 1
  %120 = add i8 %119, -48
  %121 = icmp ult i8 %120, 10
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 1
  %124 = icmp eq ptr %123, %3
  br i1 %124, label %125, label %117

125:                                              ; preds = %110, %113, %95, %93, %122, %117, %14, %6, %88
  %126 = phi ptr [ null, %88 ], [ null, %6 ], [ %15, %14 ], [ %91, %113 ], [ %91, %110 ], [ %91, %95 ], [ %91, %93 ], [ %118, %117 ], [ %3, %122 ]
  %127 = icmp eq ptr %126, null
  %128 = ptrtoint ptr %126 to i64
  %129 = ptrtoint ptr %2 to i64
  %130 = sub i64 %128, %129
  %131 = select i1 %127, i64 -1, i64 %130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %131
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
  br i1 %12, label %13, label %79

13:                                               ; preds = %1, %5
  %14 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %15 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %16 = load i8, ptr %14, align 1
  %17 = add i8 %16, -48
  %18 = icmp ult i8 %17, 10
  br i1 %18, label %19, label %63

19:                                               ; preds = %13
  %20 = add nuw nsw i64 %15, 1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %22, -48
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = or disjoint i64 %15, 2
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = add nuw nsw i64 %15, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = add i8 %34, -48
  %36 = icmp ult i8 %35, 10
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = or disjoint i64 %15, 4
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = add nuw nsw i64 %15, 5
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = or disjoint i64 %15, 6
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %52, -48
  %54 = icmp ult i8 %53, 10
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %15, 7
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %79, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %60 = load i8, ptr %59, align 1
  %61 = add i8 %60, -48
  %62 = icmp ult i8 %61, 10
  br i1 %62, label %79, label %63

63:                                               ; preds = %58, %49, %43, %37, %31, %25, %19, %13
  %64 = phi i64 [ %15, %13 ], [ %20, %19 ], [ %26, %25 ], [ %32, %31 ], [ %38, %37 ], [ %44, %43 ], [ %50, %49 ], [ %56, %58 ]
  %65 = phi i8 [ %16, %13 ], [ %22, %19 ], [ %28, %25 ], [ %34, %31 ], [ %40, %37 ], [ %46, %43 ], [ %52, %49 ], [ %60, %58 ]
  %66 = icmp ne i8 %65, 46
  %67 = add nuw nsw i64 %64, 1
  %68 = icmp eq i64 %67, 8
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %63, %70
  %71 = phi i64 [ %76, %70 ], [ %67, %63 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = add i8 %73, -48
  %75 = icmp uge i8 %74, 10
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, 8
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %70

79:                                               ; preds = %70, %63, %55, %58, %5
  %80 = zext i1 %4 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %80
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
  br i1 %12, label %13, label %89

13:                                               ; preds = %1, %5
  %14 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %15 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %16 = load i8, ptr %14, align 1
  %17 = add i8 %16, -48
  %18 = icmp ult i8 %17, 10
  br i1 %18, label %19, label %63

19:                                               ; preds = %13
  %20 = add nuw nsw i64 %15, 1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %22, -48
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = or disjoint i64 %15, 2
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = add nuw nsw i64 %15, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = add i8 %34, -48
  %36 = icmp ult i8 %35, 10
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = or disjoint i64 %15, 4
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = add nuw nsw i64 %15, 5
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = or disjoint i64 %15, 6
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %52, -48
  %54 = icmp ult i8 %53, 10
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %15, 7
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %89, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %60 = load i8, ptr %59, align 1
  %61 = add i8 %60, -48
  %62 = icmp ult i8 %61, 10
  br i1 %62, label %89, label %63

63:                                               ; preds = %58, %49, %43, %37, %31, %25, %19, %13
  %64 = phi i64 [ %15, %13 ], [ %20, %19 ], [ %26, %25 ], [ %32, %31 ], [ %38, %37 ], [ %44, %43 ], [ %50, %49 ], [ %56, %58 ]
  %65 = phi i8 [ %16, %13 ], [ %22, %19 ], [ %28, %25 ], [ %34, %31 ], [ %40, %37 ], [ %46, %43 ], [ %52, %49 ], [ %60, %58 ]
  %66 = sub nsw i64 %64, %15
  %67 = icmp eq i8 %65, 46
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, 8
  br i1 %70, label %80, label %71

71:                                               ; preds = %68, %77
  %72 = phi i64 [ %78, %77 ], [ %69, %68 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = add i8 %74, -48
  %76 = icmp ult i8 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = add nuw nsw i64 %72, 1
  %79 = icmp eq i64 %78, 8
  br i1 %79, label %80, label %71

80:                                               ; preds = %77, %71, %68
  %81 = phi i64 [ 8, %68 ], [ %72, %71 ], [ 8, %77 ]
  %82 = xor i64 %64, -1
  %83 = add i64 %66, %82
  %84 = add i64 %83, %81
  br label %85

85:                                               ; preds = %80, %63
  %86 = phi i64 [ %84, %80 ], [ %66, %63 ]
  %87 = icmp eq i64 %86, 0
  %88 = select i1 %87, i64 0, i64 1
  br label %89

89:                                               ; preds = %85, %55, %58, %5
  %90 = phi i64 [ 0, %5 ], [ 1, %58 ], [ 1, %55 ], [ %88, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %90
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
  br i1 %13, label %14, label %151

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %16 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %17 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %18 = load i8, ptr %16, align 1
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %21, label %65

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %17, 1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = or disjoint i64 %17, 2
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %17, 3
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = add i8 %36, -48
  %38 = icmp ult i8 %37, 10
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = or disjoint i64 %17, 4
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = add i8 %42, -48
  %44 = icmp ult i8 %43, 10
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = add nuw nsw i64 %17, 5
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = add i8 %48, -48
  %50 = icmp ult i8 %49, 10
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = or disjoint i64 %17, 6
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 1
  %55 = add i8 %54, -48
  %56 = icmp ult i8 %55, 10
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = add nuw nsw i64 %17, 7
  %59 = icmp eq i64 %58, 8
  br i1 %59, label %151, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %62, -48
  %64 = icmp ult i8 %63, 10
  br i1 %64, label %151, label %65

65:                                               ; preds = %60, %51, %45, %39, %33, %27, %21, %14
  %66 = phi i64 [ %17, %14 ], [ %22, %21 ], [ %28, %27 ], [ %34, %33 ], [ %40, %39 ], [ %46, %45 ], [ %52, %51 ], [ %58, %60 ]
  %67 = phi i8 [ %18, %14 ], [ %24, %21 ], [ %30, %27 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %62, %60 ]
  %68 = sub nsw i64 %66, %17
  %69 = icmp eq i8 %67, 46
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %82, label %73

73:                                               ; preds = %70, %79
  %74 = phi i64 [ %80, %79 ], [ %71, %70 ]
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %74
  %76 = load i8, ptr %75, align 1
  %77 = add i8 %76, -48
  %78 = icmp ult i8 %77, 10
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = add nuw nsw i64 %74, 1
  %81 = icmp eq i64 %80, 8
  br i1 %81, label %82, label %73

82:                                               ; preds = %79, %73, %70
  %83 = phi i64 [ 8, %70 ], [ %74, %73 ], [ 8, %79 ]
  %84 = xor i64 %66, -1
  %85 = add i64 %68, %84
  %86 = add i64 %85, %83
  br label %87

87:                                               ; preds = %82, %65
  %88 = phi i64 [ %86, %82 ], [ %68, %65 ]
  %89 = icmp sgt i64 %88, 19
  br i1 %89, label %90, label %151

90:                                               ; preds = %87
  %91 = load i8, ptr %15, align 1
  switch i8 %91, label %147 [
    i8 48, label %92
    i8 46, label %92
  ]

92:                                               ; preds = %90, %90
  %93 = icmp eq i8 %91, 48
  %94 = sext i1 %93 to i64
  %95 = add nsw i64 %88, %94
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 1
  %98 = load i8, ptr %97, align 1
  switch i8 %98, label %147 [
    i8 48, label %99
    i8 46, label %99
  ]

99:                                               ; preds = %92, %92
  %100 = icmp eq i8 %98, 48
  %101 = sext i1 %100 to i64
  %102 = add nsw i64 %95, %101
  %103 = or disjoint i64 %17, 2
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %105 = load i8, ptr %104, align 1
  switch i8 %105, label %147 [
    i8 48, label %106
    i8 46, label %106
  ]

106:                                              ; preds = %99, %99
  %107 = icmp eq i8 %105, 48
  %108 = sext i1 %107 to i64
  %109 = add nsw i64 %102, %108
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 3
  %112 = load i8, ptr %111, align 1
  switch i8 %112, label %147 [
    i8 48, label %113
    i8 46, label %113
  ]

113:                                              ; preds = %106, %106
  %114 = icmp eq i8 %112, 48
  %115 = sext i1 %114 to i64
  %116 = add nsw i64 %109, %115
  %117 = or disjoint i64 %17, 4
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 %117
  %119 = load i8, ptr %118, align 1
  switch i8 %119, label %147 [
    i8 48, label %120
    i8 46, label %120
  ]

120:                                              ; preds = %113, %113
  %121 = icmp eq i8 %119, 48
  %122 = sext i1 %121 to i64
  %123 = add nsw i64 %116, %122
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 5
  %126 = load i8, ptr %125, align 1
  switch i8 %126, label %147 [
    i8 48, label %127
    i8 46, label %127
  ]

127:                                              ; preds = %120, %120
  %128 = icmp eq i8 %126, 48
  %129 = sext i1 %128 to i64
  %130 = add nsw i64 %123, %129
  %131 = or disjoint i64 %17, 6
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 %131
  %133 = load i8, ptr %132, align 1
  switch i8 %133, label %147 [
    i8 48, label %134
    i8 46, label %134
  ]

134:                                              ; preds = %127, %127
  %135 = icmp eq i8 %133, 48
  %136 = sext i1 %135 to i64
  %137 = add nsw i64 %130, %136
  %138 = add nuw nsw i64 %17, 7
  %139 = icmp eq i64 %138, 8
  br i1 %139, label %147, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds nuw i8, ptr %2, i64 %138
  %142 = load i8, ptr %141, align 1
  switch i8 %142, label %147 [
    i8 48, label %143
    i8 46, label %143
  ]

143:                                              ; preds = %140, %140
  %144 = icmp eq i8 %142, 48
  %145 = sext i1 %144 to i64
  %146 = add nsw i64 %137, %145
  br label %147

147:                                              ; preds = %143, %140, %134, %127, %120, %113, %106, %99, %92, %90
  %148 = phi i64 [ %88, %90 ], [ %95, %92 ], [ %102, %99 ], [ %109, %106 ], [ %116, %113 ], [ %123, %120 ], [ %130, %127 ], [ %137, %134 ], [ %137, %140 ], [ %146, %143 ]
  %149 = icmp sgt i64 %148, 19
  %150 = zext i1 %149 to i64
  br label %151

151:                                              ; preds = %57, %60, %147, %5, %87
  %152 = phi i64 [ 0, %87 ], [ 0, %5 ], [ %150, %147 ], [ 0, %60 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %152
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
  br i1 %13, label %14, label %81

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %9, %5 ], [ %2, %1 ]
  %16 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %17 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %18 = load i8, ptr %16, align 1
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %21, label %65

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %17, 1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = or disjoint i64 %17, 2
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %17, 3
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = add i8 %36, -48
  %38 = icmp ult i8 %37, 10
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = or disjoint i64 %17, 4
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = add i8 %42, -48
  %44 = icmp ult i8 %43, 10
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = add nuw nsw i64 %17, 5
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = add i8 %48, -48
  %50 = icmp ult i8 %49, 10
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = or disjoint i64 %17, 6
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 1
  %55 = add i8 %54, -48
  %56 = icmp ult i8 %55, 10
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = add nuw nsw i64 %17, 7
  %59 = icmp eq i64 %58, 8
  br i1 %59, label %81, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %62, -48
  %64 = icmp ult i8 %63, 10
  br i1 %64, label %81, label %65

65:                                               ; preds = %60, %51, %45, %39, %33, %27, %21, %14
  %66 = phi i64 [ %17, %14 ], [ %22, %21 ], [ %28, %27 ], [ %34, %33 ], [ %40, %39 ], [ %46, %45 ], [ %52, %51 ], [ %58, %60 ]
  %67 = phi i8 [ %18, %14 ], [ %24, %21 ], [ %30, %27 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %62, %60 ]
  %68 = icmp ne i8 %67, 46
  %69 = add nuw nsw i64 %66, 1
  %70 = icmp eq i64 %69, 8
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %65, %72
  %73 = phi i64 [ %78, %72 ], [ %69, %65 ]
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = add i8 %75, -48
  %77 = icmp uge i8 %76, 10
  %78 = add nuw nsw i64 %73, 1
  %79 = icmp eq i64 %78, 8
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %72

81:                                               ; preds = %72, %65, %57, %60, %5
  %82 = phi ptr [ null, %5 ], [ %15, %60 ], [ %15, %57 ], [ %15, %65 ], [ %15, %72 ]
  %83 = icmp eq ptr %82, null
  %84 = ptrtoint ptr %82 to i64
  %85 = ptrtoint ptr %2 to i64
  %86 = sub i64 %84, %85
  %87 = select i1 %83, i64 -1, i64 %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %87
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
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = lshr i64 %0, 8
  %8 = trunc i64 %7 to i8
  %9 = add i8 %8, -48
  %10 = icmp ult i8 %9, 10
  %11 = icmp eq i8 %8, 46
  %12 = or i1 %11, %10
  br i1 %12, label %15, label %82

13:                                               ; preds = %60, %57
  %14 = sub nuw nsw i64 8, %17
  br label %82

15:                                               ; preds = %1, %5
  %16 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %17 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %18 = load i8, ptr %16, align 1
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = add nuw nsw i64 %17, 1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = or disjoint i64 %17, 2
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %17, 3
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = add i8 %36, -48
  %38 = icmp ult i8 %37, 10
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = or disjoint i64 %17, 4
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = add i8 %42, -48
  %44 = icmp ult i8 %43, 10
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = add nuw nsw i64 %17, 5
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = add i8 %48, -48
  %50 = icmp ult i8 %49, 10
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = or disjoint i64 %17, 6
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 1
  %55 = add i8 %54, -48
  %56 = icmp ult i8 %55, 10
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = add nuw nsw i64 %17, 7
  %59 = icmp eq i64 %58, 8
  br i1 %59, label %13, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %62, -48
  %64 = icmp ult i8 %63, 10
  br i1 %64, label %13, label %65

65:                                               ; preds = %60, %51, %45, %39, %33, %27, %21, %15
  %66 = phi i64 [ %17, %15 ], [ %22, %21 ], [ %28, %27 ], [ %34, %33 ], [ %40, %39 ], [ %46, %45 ], [ %52, %51 ], [ %58, %60 ]
  %67 = phi i8 [ %18, %15 ], [ %24, %21 ], [ %30, %27 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %62, %60 ]
  %68 = sub nsw i64 %66, %17
  %69 = icmp ne i8 %67, 46
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, 8
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %65, %73
  %74 = phi i64 [ %79, %73 ], [ %70, %65 ]
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %74
  %76 = load i8, ptr %75, align 1
  %77 = add i8 %76, -48
  %78 = icmp uge i8 %77, 10
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, 8
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %73

82:                                               ; preds = %73, %65, %13, %5
  %83 = phi i64 [ 0, %5 ], [ %14, %13 ], [ %68, %65 ], [ %68, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %83
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
  br i1 %12, label %13, label %80

13:                                               ; preds = %1, %5
  %14 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %15 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %16 = load i8, ptr %14, align 1
  %17 = add i8 %16, -48
  %18 = icmp ult i8 %17, 10
  br i1 %18, label %19, label %63

19:                                               ; preds = %13
  %20 = add nuw nsw i64 %15, 1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %22, -48
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = or disjoint i64 %15, 2
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = add nuw nsw i64 %15, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = add i8 %34, -48
  %36 = icmp ult i8 %35, 10
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = or disjoint i64 %15, 4
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = add nuw nsw i64 %15, 5
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = or disjoint i64 %15, 6
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %52, -48
  %54 = icmp ult i8 %53, 10
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %15, 7
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %80, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %60 = load i8, ptr %59, align 1
  %61 = add i8 %60, -48
  %62 = icmp ult i8 %61, 10
  br i1 %62, label %80, label %63

63:                                               ; preds = %58, %49, %43, %37, %31, %25, %19, %13
  %64 = phi i64 [ %15, %13 ], [ %20, %19 ], [ %26, %25 ], [ %32, %31 ], [ %38, %37 ], [ %44, %43 ], [ %50, %49 ], [ %56, %58 ]
  %65 = phi i8 [ %16, %13 ], [ %22, %19 ], [ %28, %25 ], [ %34, %31 ], [ %40, %37 ], [ %46, %43 ], [ %52, %49 ], [ %60, %58 ]
  %66 = icmp eq i8 %65, 46
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = add nuw nsw i64 %64, 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %68
  %70 = icmp eq i64 %68, 8
  br i1 %70, label %80, label %71

71:                                               ; preds = %71, %67
  %72 = phi i64 [ %68, %67 ], [ %77, %71 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = add i8 %74, -48
  %76 = icmp uge i8 %75, 10
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, 8
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %80, label %71

80:                                               ; preds = %67, %71, %63, %55, %58, %5
  %81 = phi ptr [ null, %5 ], [ null, %58 ], [ null, %55 ], [ null, %63 ], [ %69, %71 ], [ %69, %67 ]
  %82 = icmp eq ptr %81, null
  %83 = ptrtoint ptr %81 to i64
  %84 = ptrtoint ptr %2 to i64
  %85 = sub i64 %83, %84
  %86 = select i1 %82, i64 -1, i64 %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %86
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
  br i1 %14, label %15, label %169

15:                                               ; preds = %1, %5
  %16 = phi ptr [ %10, %5 ], [ %2, %1 ]
  %17 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %18 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %19 = phi i64 [ 1, %5 ], [ 0, %1 ]
  %20 = load i8, ptr %18, align 1
  %21 = add i8 %20, -48
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %23, label %67

23:                                               ; preds = %15
  %24 = add nuw nsw i64 %19, 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = add i8 %26, -48
  %28 = icmp ult i8 %27, 10
  br i1 %28, label %29, label %67

29:                                               ; preds = %23
  %30 = or disjoint i64 %19, 2
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 %30
  %32 = load i8, ptr %31, align 1
  %33 = add i8 %32, -48
  %34 = icmp ult i8 %33, 10
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = add nuw nsw i64 %19, 3
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = or disjoint i64 %19, 4
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = add i8 %44, -48
  %46 = icmp ult i8 %45, 10
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = add nuw nsw i64 %19, 5
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = add i8 %50, -48
  %52 = icmp ult i8 %51, 10
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = or disjoint i64 %19, 6
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %56 = load i8, ptr %55, align 1
  %57 = add i8 %56, -48
  %58 = icmp ult i8 %57, 10
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = add nuw nsw i64 %19, 7
  %61 = icmp eq i64 %60, 8
  br i1 %61, label %169, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %64 = load i8, ptr %63, align 1
  %65 = add i8 %64, -48
  %66 = icmp ult i8 %65, 10
  br i1 %66, label %169, label %67

67:                                               ; preds = %62, %53, %47, %41, %35, %29, %23, %15
  %68 = phi i64 [ %19, %15 ], [ %24, %23 ], [ %30, %29 ], [ %36, %35 ], [ %42, %41 ], [ %48, %47 ], [ %54, %53 ], [ %60, %62 ]
  %69 = phi i8 [ %20, %15 ], [ %26, %23 ], [ %32, %29 ], [ %38, %35 ], [ %44, %41 ], [ %50, %47 ], [ %56, %53 ], [ %64, %62 ]
  %70 = sub nsw i64 %68, %19
  %71 = icmp eq i8 %69, 46
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = add nuw nsw i64 %68, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %84, label %75

75:                                               ; preds = %72, %81
  %76 = phi i64 [ %82, %81 ], [ %73, %72 ]
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = add i8 %78, -48
  %80 = icmp ult i8 %79, 10
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = add nuw nsw i64 %76, 1
  %83 = icmp eq i64 %82, 8
  br i1 %83, label %84, label %75

84:                                               ; preds = %81, %75, %72
  %85 = phi i64 [ 8, %72 ], [ %76, %75 ], [ 8, %81 ]
  %86 = xor i64 %68, -1
  %87 = sub nsw i64 %85, %73
  %88 = add i64 %70, %86
  %89 = add i64 %88, %85
  br label %90

90:                                               ; preds = %84, %67
  %91 = phi i64 [ %87, %84 ], [ 0, %67 ]
  %92 = phi i64 [ %89, %84 ], [ %70, %67 ]
  %93 = icmp sgt i64 %92, 19
  br i1 %93, label %94, label %169

94:                                               ; preds = %90
  %95 = load i8, ptr %17, align 1
  switch i8 %95, label %151 [
    i8 48, label %96
    i8 46, label %96
  ]

96:                                               ; preds = %94, %94
  %97 = icmp eq i8 %95, 48
  %98 = sext i1 %97 to i64
  %99 = add nsw i64 %92, %98
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 1
  %102 = load i8, ptr %101, align 1
  switch i8 %102, label %151 [
    i8 48, label %103
    i8 46, label %103
  ]

103:                                              ; preds = %96, %96
  %104 = icmp eq i8 %102, 48
  %105 = sext i1 %104 to i64
  %106 = add nsw i64 %99, %105
  %107 = or disjoint i64 %19, 2
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 %107
  %109 = load i8, ptr %108, align 1
  switch i8 %109, label %151 [
    i8 48, label %110
    i8 46, label %110
  ]

110:                                              ; preds = %103, %103
  %111 = icmp eq i8 %109, 48
  %112 = sext i1 %111 to i64
  %113 = add nsw i64 %106, %112
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 3
  %116 = load i8, ptr %115, align 1
  switch i8 %116, label %151 [
    i8 48, label %117
    i8 46, label %117
  ]

117:                                              ; preds = %110, %110
  %118 = icmp eq i8 %116, 48
  %119 = sext i1 %118 to i64
  %120 = add nsw i64 %113, %119
  %121 = or disjoint i64 %19, 4
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 %121
  %123 = load i8, ptr %122, align 1
  switch i8 %123, label %151 [
    i8 48, label %124
    i8 46, label %124
  ]

124:                                              ; preds = %117, %117
  %125 = icmp eq i8 %123, 48
  %126 = sext i1 %125 to i64
  %127 = add nsw i64 %120, %126
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 5
  %130 = load i8, ptr %129, align 1
  switch i8 %130, label %151 [
    i8 48, label %131
    i8 46, label %131
  ]

131:                                              ; preds = %124, %124
  %132 = icmp eq i8 %130, 48
  %133 = sext i1 %132 to i64
  %134 = add nsw i64 %127, %133
  %135 = or disjoint i64 %19, 6
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 %135
  %137 = load i8, ptr %136, align 1
  switch i8 %137, label %151 [
    i8 48, label %138
    i8 46, label %138
  ]

138:                                              ; preds = %131, %131
  %139 = icmp eq i8 %137, 48
  %140 = sext i1 %139 to i64
  %141 = add nsw i64 %134, %140
  %142 = add nuw nsw i64 %19, 7
  %143 = icmp eq i64 %142, 8
  br i1 %143, label %151, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 %142
  %146 = load i8, ptr %145, align 1
  switch i8 %146, label %151 [
    i8 48, label %147
    i8 46, label %147
  ]

147:                                              ; preds = %144, %144
  %148 = icmp eq i8 %146, 48
  %149 = sext i1 %148 to i64
  %150 = add nsw i64 %141, %149
  br label %151

151:                                              ; preds = %147, %144, %138, %131, %124, %117, %110, %103, %96, %94
  %152 = phi i64 [ %92, %94 ], [ %99, %96 ], [ %106, %103 ], [ %113, %110 ], [ %120, %117 ], [ %127, %124 ], [ %134, %131 ], [ %141, %138 ], [ %141, %144 ], [ %150, %147 ]
  %153 = icmp sgt i64 %152, 19
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = getelementptr inbounds nuw i8, ptr %16, i64 %70
  %156 = icmp samesign eq i64 %70, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %154, %157
  %158 = phi ptr [ %165, %157 ], [ %16, %154 ]
  %159 = phi i64 [ %164, %157 ], [ 0, %154 ]
  %160 = mul nuw i64 %159, 10
  %161 = load i8, ptr %158, align 1
  %162 = sext i8 %161 to i64
  %163 = add i64 %160, -48
  %164 = add i64 %163, %162
  %165 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %166 = icmp ult i64 %164, 1000000000000000000
  %167 = icmp ne ptr %165, %155
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %157, label %169

169:                                              ; preds = %59, %62, %157, %154, %5, %151, %90
  %170 = phi i64 [ %91, %90 ], [ %91, %151 ], [ 0, %5 ], [ %91, %154 ], [ %91, %157 ], [ 0, %62 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %170
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
