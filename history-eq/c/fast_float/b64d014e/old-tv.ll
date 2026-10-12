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
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %20 = sext i8 %6 to i32
  %21 = add nsw i32 %20, -48
  %22 = icmp ult i32 %21, 10
  %23 = icmp eq i8 %6, 46
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %197

25:                                               ; preds = %17, %1
  %26 = phi ptr [ %3, %17 ], [ %2, %1 ]
  %27 = phi ptr [ %19, %17 ], [ %2, %1 ]
  %28 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %84

34:                                               ; preds = %25
  %35 = sext i8 %30 to i64
  %36 = add nsw i64 %35, -48
  %37 = add nuw nsw i64 %29, 1
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %37
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %84

43:                                               ; preds = %34
  %44 = mul nsw i64 %36, 10
  %45 = sext i8 %39 to i64
  %46 = add nsw i64 %44, -48
  %47 = add nsw i64 %46, %45
  %48 = or disjoint i64 %29, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %84

54:                                               ; preds = %43
  %55 = mul nsw i64 %47, 10
  %56 = sext i8 %50 to i64
  %57 = add nsw i64 %55, -48
  %58 = add i64 %57, %56
  %59 = add nuw nsw i64 %29, 3
  %60 = icmp eq i64 %59, 5
  br i1 %60, label %197, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = add nsw i32 %64, -48
  %66 = icmp ult i32 %65, 10
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = mul i64 %58, 10
  %69 = sext i8 %63 to i64
  %70 = add i64 %68, -48
  %71 = add i64 %70, %69
  br i1 %16, label %197, label %72

72:                                               ; preds = %67
  %73 = or disjoint i64 %29, 4
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, -48
  %78 = icmp ult i32 %77, 10
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = mul i64 %71, 10
  %81 = sext i8 %75 to i64
  %82 = add i64 %80, -48
  %83 = add i64 %82, %81
  br label %197

84:                                               ; preds = %72, %61, %43, %34, %25
  %85 = phi i64 [ %29, %25 ], [ %37, %34 ], [ %48, %43 ], [ %59, %61 ], [ %73, %72 ]
  %86 = phi i64 [ 0, %25 ], [ %36, %34 ], [ %47, %43 ], [ %58, %61 ], [ %71, %72 ]
  %87 = phi i8 [ %30, %25 ], [ %39, %34 ], [ %50, %43 ], [ %63, %61 ], [ %75, %72 ]
  %88 = sub nsw i64 %85, %29
  %89 = icmp eq i8 %87, 46
  br i1 %89, label %90, label %116

90:                                               ; preds = %84
  %91 = add nuw nsw i64 %85, 1
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 %91
  %93 = icmp eq i64 %91, 5
  br i1 %93, label %109, label %94

94:                                               ; preds = %90, %102
  %95 = phi i64 [ %104, %102 ], [ %91, %90 ]
  %96 = phi i64 [ %107, %102 ], [ %86, %90 ]
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 %95
  %98 = load i8, ptr %97, align 1
  %99 = sext i8 %98 to i32
  %100 = add nsw i32 %99, -48
  %101 = icmp ult i32 %100, 10
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = add i8 %98, -48
  %104 = add nuw nsw i64 %95, 1
  %105 = mul i64 %96, 10
  %106 = zext i8 %103 to i64
  %107 = add i64 %105, %106
  %108 = icmp eq i64 %104, 5
  br i1 %108, label %109, label %94

109:                                              ; preds = %102, %94, %90
  %110 = phi i64 [ %86, %90 ], [ %96, %94 ], [ %107, %102 ]
  %111 = phi i64 [ 5, %90 ], [ %95, %94 ], [ 5, %102 ]
  %112 = xor i64 %85, -1
  %113 = sub nsw i64 %111, %91
  %114 = add i64 %88, %112
  %115 = add i64 %114, %111
  br label %116

116:                                              ; preds = %109, %84
  %117 = phi ptr [ %92, %109 ], [ null, %84 ]
  %118 = phi i64 [ %113, %109 ], [ 0, %84 ]
  %119 = phi i64 [ %110, %109 ], [ %86, %84 ]
  %120 = phi i64 [ %115, %109 ], [ %88, %84 ]
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %197, label %122

122:                                              ; preds = %116
  %123 = icmp sgt i64 %120, 19
  br i1 %123, label %124, label %197

124:                                              ; preds = %122
  %125 = load i8, ptr %27, align 1
  switch i8 %125, label %161 [
    i8 48, label %126
    i8 46, label %126
  ]

126:                                              ; preds = %124, %124
  %127 = icmp eq i8 %125, 48
  %128 = sext i1 %127 to i64
  %129 = add nsw i64 %120, %128
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 %29
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
  %137 = or disjoint i64 %29, 2
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
  %144 = add nuw nsw i64 %29, 3
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
  %154 = or disjoint i64 %29, 4
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
  %163 = icmp sgt i64 %162, 19
  br i1 %163, label %164, label %197

164:                                              ; preds = %161
  %165 = getelementptr inbounds nuw i8, ptr %26, i64 %88
  %166 = icmp samesign eq i64 %88, 0
  br i1 %166, label %181, label %167

167:                                              ; preds = %164, %167
  %168 = phi ptr [ %175, %167 ], [ %26, %164 ]
  %169 = phi i64 [ %174, %167 ], [ 0, %164 ]
  %170 = mul nuw i64 %169, 10
  %171 = load i8, ptr %168, align 1
  %172 = sext i8 %171 to i64
  %173 = add i64 %170, -48
  %174 = add i64 %173, %172
  %175 = getelementptr inbounds nuw i8, ptr %168, i64 1
  %176 = icmp ult i64 %174, 1000000000000000000
  %177 = icmp ne ptr %175, %165
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %167, label %179

179:                                              ; preds = %167
  %180 = icmp ugt i64 %174, 999999999999999999
  br i1 %180, label %197, label %181

181:                                              ; preds = %164, %179
  %182 = phi i64 [ %174, %179 ], [ 0, %164 ]
  %183 = getelementptr inbounds nuw i8, ptr %117, i64 %118
  %184 = icmp samesign eq i64 %118, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %181, %185
  %186 = phi ptr [ %193, %185 ], [ %117, %181 ]
  %187 = phi i64 [ %192, %185 ], [ %182, %181 ]
  %188 = mul nuw i64 %187, 10
  %189 = load i8, ptr %186, align 1
  %190 = sext i8 %189 to i64
  %191 = add i64 %188, -48
  %192 = add i64 %191, %190
  %193 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %194 = icmp ult i64 %192, 1000000000000000000
  %195 = icmp ne ptr %193, %183
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %185, label %197

197:                                              ; preds = %54, %67, %79, %185, %181, %122, %161, %179, %116, %17
  %198 = phi i64 [ 0, %17 ], [ 0, %116 ], [ %119, %161 ], [ %119, %122 ], [ %174, %179 ], [ %182, %181 ], [ %192, %185 ], [ %58, %54 ], [ %71, %67 ], [ %83, %79 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %198
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %227

24:                                               ; preds = %17, %1
  %25 = phi ptr [ %3, %17 ], [ %2, %1 ]
  %26 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %27 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %28 = load i8, ptr %25, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %29, -48
  %31 = icmp ult i32 %30, 10
  br i1 %31, label %32, label %63

32:                                               ; preds = %24
  %33 = add nuw nsw i64 %27, 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, -48
  %38 = icmp ult i32 %37, 10
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = or disjoint i64 %27, 2
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %27, 3
  %48 = icmp eq i64 %47, 5
  br i1 %48, label %227, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %51 = load i8, ptr %50, align 1
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ult i32 %53, 10
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  br i1 %16, label %227, label %56

56:                                               ; preds = %55
  %57 = or disjoint i64 %27, 4
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  %62 = icmp ult i32 %61, 10
  br i1 %62, label %227, label %63

63:                                               ; preds = %56, %49, %39, %32, %24
  %64 = phi ptr [ %25, %24 ], [ %34, %32 ], [ %41, %39 ], [ %50, %49 ], [ %58, %56 ]
  %65 = phi i64 [ %27, %24 ], [ %33, %32 ], [ %40, %39 ], [ %47, %49 ], [ %57, %56 ]
  %66 = phi i8 [ %28, %24 ], [ %35, %32 ], [ %42, %39 ], [ %51, %49 ], [ %59, %56 ]
  %67 = sub nsw i64 %65, %27
  %68 = icmp eq i8 %66, 46
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = add nuw nsw i64 %65, 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = icmp eq i64 %70, 5
  br i1 %72, label %83, label %73

73:                                               ; preds = %69, %80
  %74 = phi i64 [ %81, %80 ], [ %70, %69 ]
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %74
  %76 = load i8, ptr %75, align 1
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %77, -48
  %79 = icmp ult i32 %78, 10
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = add nuw nsw i64 %74, 1
  %82 = icmp eq i64 %81, 5
  br i1 %82, label %83, label %73

83:                                               ; preds = %80, %73, %69
  %84 = phi i64 [ 5, %69 ], [ %74, %73 ], [ 5, %80 ]
  %85 = sub nsw i64 %70, %84
  %86 = sub nsw i64 %84, %70
  %87 = sub nsw i64 %67, %85
  br label %88

88:                                               ; preds = %83, %63
  %89 = phi ptr [ %71, %83 ], [ null, %63 ]
  %90 = phi i64 [ %86, %83 ], [ 0, %63 ]
  %91 = phi i64 [ %84, %83 ], [ %65, %63 ]
  %92 = phi i64 [ %85, %83 ], [ 0, %63 ]
  %93 = phi i64 [ %87, %83 ], [ %67, %63 ]
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %91
  %95 = icmp eq i64 %93, 0
  br i1 %95, label %227, label %96

96:                                               ; preds = %88
  %97 = icmp eq i64 %91, 5
  br i1 %97, label %143, label %98

98:                                               ; preds = %96
  %99 = load i8, ptr %94, align 1
  switch i8 %99, label %143 [
    i8 101, label %100
    i8 69, label %100
  ]

100:                                              ; preds = %98, %98
  %101 = add nuw nsw i64 %91, 1
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %143, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 45
  %107 = add nuw nsw i64 %91, 2
  %108 = icmp eq i8 %105, 43
  %109 = zext i1 %108 to i64
  %110 = add nuw nsw i64 %101, %109
  %111 = select i1 %106, i64 %107, i64 %110
  %112 = icmp eq i64 %111, 5
  br i1 %112, label %143, label %113

113:                                              ; preds = %103
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 %111
  %115 = load i8, ptr %114, align 1
  %116 = sext i8 %115 to i32
  %117 = add nsw i32 %116, -48
  %118 = icmp ult i32 %117, 10
  br i1 %118, label %119, label %143

119:                                              ; preds = %113, %134
  %120 = phi i64 [ %135, %134 ], [ 0, %113 ]
  %121 = phi i64 [ %136, %134 ], [ %111, %113 ]
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 %121
  %123 = load i8, ptr %122, align 1
  %124 = sext i8 %123 to i32
  %125 = add nsw i32 %124, -48
  %126 = icmp ult i32 %125, 10
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = icmp slt i64 %120, 268435456
  br i1 %128, label %129, label %134

129:                                              ; preds = %127
  %130 = add i8 %123, -48
  %131 = mul nsw i64 %120, 10
  %132 = zext i8 %130 to i64
  %133 = add nsw i64 %131, %132
  br label %134

134:                                              ; preds = %129, %127
  %135 = phi i64 [ %133, %129 ], [ %120, %127 ]
  %136 = add nuw nsw i64 %121, 1
  %137 = icmp eq i64 %136, 5
  br i1 %137, label %138, label %119

138:                                              ; preds = %134, %119
  %139 = phi i64 [ %135, %134 ], [ %120, %119 ]
  %140 = sub nsw i64 0, %139
  %141 = select i1 %106, i64 %140, i64 %139
  %142 = add nsw i64 %141, %92
  br label %143

143:                                              ; preds = %100, %98, %96, %138, %103, %113
  %144 = phi i64 [ %141, %138 ], [ 0, %103 ], [ 0, %113 ], [ 0, %98 ], [ 0, %96 ], [ 0, %100 ]
  %145 = phi i64 [ %142, %138 ], [ %92, %103 ], [ %92, %113 ], [ %92, %98 ], [ %92, %96 ], [ %92, %100 ]
  %146 = icmp sgt i64 %93, 19
  br i1 %146, label %147, label %227

147:                                              ; preds = %143
  %148 = load i8, ptr %26, align 1
  switch i8 %148, label %184 [
    i8 48, label %149
    i8 46, label %149
  ]

149:                                              ; preds = %147, %147
  %150 = icmp eq i8 %148, 48
  %151 = sext i1 %150 to i64
  %152 = add nsw i64 %93, %151
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 %27
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 1
  %155 = load i8, ptr %154, align 1
  switch i8 %155, label %184 [
    i8 48, label %156
    i8 46, label %156
  ]

156:                                              ; preds = %149, %149
  %157 = icmp eq i8 %155, 48
  %158 = sext i1 %157 to i64
  %159 = add nsw i64 %152, %158
  %160 = or disjoint i64 %27, 2
  %161 = getelementptr inbounds nuw i8, ptr %2, i64 %160
  %162 = load i8, ptr %161, align 1
  switch i8 %162, label %184 [
    i8 48, label %163
    i8 46, label %163
  ]

163:                                              ; preds = %156, %156
  %164 = icmp eq i8 %162, 48
  %165 = sext i1 %164 to i64
  %166 = add nsw i64 %159, %165
  %167 = add nuw nsw i64 %27, 3
  %168 = icmp eq i64 %167, 5
  br i1 %168, label %184, label %169

169:                                              ; preds = %163
  %170 = getelementptr inbounds nuw i8, ptr %2, i64 %167
  %171 = load i8, ptr %170, align 1
  switch i8 %171, label %184 [
    i8 48, label %172
    i8 46, label %172
  ]

172:                                              ; preds = %169, %169
  %173 = icmp eq i8 %171, 48
  %174 = sext i1 %173 to i64
  %175 = add nsw i64 %166, %174
  br i1 %16, label %184, label %176

176:                                              ; preds = %172
  %177 = or disjoint i64 %27, 4
  %178 = getelementptr inbounds nuw i8, ptr %2, i64 %177
  %179 = load i8, ptr %178, align 1
  switch i8 %179, label %184 [
    i8 48, label %180
    i8 46, label %180
  ]

180:                                              ; preds = %176, %176
  %181 = icmp eq i8 %179, 48
  %182 = sext i1 %181 to i64
  %183 = add nsw i64 %175, %182
  br label %184

184:                                              ; preds = %180, %176, %172, %169, %163, %156, %149, %147
  %185 = phi i64 [ %93, %147 ], [ %152, %149 ], [ %159, %156 ], [ %166, %163 ], [ %166, %169 ], [ %175, %172 ], [ %175, %176 ], [ %183, %180 ]
  %186 = icmp sgt i64 %185, 19
  br i1 %186, label %187, label %227

187:                                              ; preds = %184
  %188 = getelementptr inbounds nuw i8, ptr %25, i64 %67
  %189 = icmp samesign eq i64 %67, 0
  br i1 %189, label %204, label %190

190:                                              ; preds = %187, %190
  %191 = phi ptr [ %198, %190 ], [ %25, %187 ]
  %192 = phi i64 [ %197, %190 ], [ 0, %187 ]
  %193 = mul nuw i64 %192, 10
  %194 = load i8, ptr %191, align 1
  %195 = sext i8 %194 to i64
  %196 = add i64 %193, -48
  %197 = add i64 %196, %195
  %198 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %199 = icmp ult i64 %197, 1000000000000000000
  %200 = icmp ne ptr %198, %188
  %201 = select i1 %199, i1 %200, i1 false
  br i1 %201, label %190, label %202

202:                                              ; preds = %190
  %203 = icmp ugt i64 %197, 999999999999999999
  br i1 %203, label %220, label %204

204:                                              ; preds = %187, %202
  %205 = phi i64 [ %197, %202 ], [ 0, %187 ]
  %206 = getelementptr inbounds nuw i8, ptr %89, i64 %90
  %207 = icmp samesign eq i64 %90, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %204, %208
  %209 = phi ptr [ %216, %208 ], [ %89, %204 ]
  %210 = phi i64 [ %215, %208 ], [ %205, %204 ]
  %211 = mul nuw i64 %210, 10
  %212 = load i8, ptr %209, align 1
  %213 = sext i8 %212 to i64
  %214 = add i64 %211, -48
  %215 = add i64 %214, %213
  %216 = getelementptr inbounds nuw i8, ptr %209, i64 1
  %217 = icmp ult i64 %215, 1000000000000000000
  %218 = icmp ne ptr %216, %206
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %208, label %220

220:                                              ; preds = %208, %204, %202
  %221 = phi ptr [ %198, %202 ], [ %89, %204 ], [ %216, %208 ]
  %222 = phi ptr [ %64, %202 ], [ %89, %204 ], [ %89, %208 ]
  %223 = ptrtoint ptr %222 to i64
  %224 = ptrtoint ptr %221 to i64
  %225 = sub i64 %223, %224
  %226 = add nsw i64 %225, %144
  br label %227

227:                                              ; preds = %46, %55, %56, %143, %184, %220, %88, %17
  %228 = phi i64 [ 0, %17 ], [ 0, %88 ], [ %145, %143 ], [ %226, %220 ], [ %145, %184 ], [ 0, %56 ], [ 0, %55 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %228
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
  %16 = icmp eq i8 %4, 45
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %26, label %128

24:                                               ; preds = %57, %56, %47
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %128

26:                                               ; preds = %17, %1
  %27 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %28 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %29 = load i8, ptr %27, align 1
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %30, -48
  %32 = icmp ult i32 %31, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  %34 = add nuw nsw i64 %28, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %28, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %28, 3
  %49 = icmp eq i64 %48, 5
  br i1 %49, label %24, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  br i1 %16, label %24, label %57

57:                                               ; preds = %56
  %58 = or disjoint i64 %28, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %24, label %64

64:                                               ; preds = %57, %50, %40, %33, %26
  %65 = phi i64 [ %28, %26 ], [ %34, %33 ], [ %41, %40 ], [ %48, %50 ], [ %58, %57 ]
  %66 = phi i8 [ %29, %26 ], [ %36, %33 ], [ %43, %40 ], [ %52, %50 ], [ %60, %57 ]
  %67 = sub nsw i64 %65, %28
  %68 = icmp eq i8 %66, 46
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = add nuw nsw i64 %65, 1
  %71 = icmp eq i64 %70, 5
  br i1 %71, label %82, label %72

72:                                               ; preds = %69, %79
  %73 = phi i64 [ %80, %79 ], [ %70, %69 ]
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, -48
  %78 = icmp ult i32 %77, 10
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, 5
  br i1 %81, label %82, label %72

82:                                               ; preds = %79, %72, %69
  %83 = phi i64 [ 5, %69 ], [ %73, %72 ], [ 5, %79 ]
  %84 = xor i64 %65, -1
  %85 = add i64 %67, %84
  %86 = add i64 %85, %83
  br label %87

87:                                               ; preds = %82, %64
  %88 = phi i64 [ %83, %82 ], [ %65, %64 ]
  %89 = phi i64 [ %86, %82 ], [ %67, %64 ]
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 %88
  %91 = icmp eq i64 %89, 0
  %92 = icmp eq i64 %88, 5
  %93 = or i1 %91, %92
  br i1 %93, label %128, label %94

94:                                               ; preds = %87
  %95 = load i8, ptr %90, align 1
  switch i8 %95, label %128 [
    i8 101, label %96
    i8 69, label %96
  ]

96:                                               ; preds = %94, %94
  %97 = add nuw nsw i64 %88, 1
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %128, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 45
  %103 = add nuw nsw i64 %88, 2
  %104 = icmp eq i8 %101, 43
  %105 = zext i1 %104 to i64
  %106 = add nuw nsw i64 %97, %105
  %107 = select i1 %102, i64 %103, i64 %106
  %108 = icmp eq i64 %107, 5
  br i1 %108, label %128, label %109

109:                                              ; preds = %99
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 %107
  %111 = load i8, ptr %110, align 1
  %112 = sext i8 %111 to i32
  %113 = add nsw i32 %112, -48
  %114 = icmp ult i32 %113, 10
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %117

117:                                              ; preds = %115, %124
  %118 = phi ptr [ %126, %124 ], [ %110, %115 ]
  %119 = phi i64 [ %125, %124 ], [ %107, %115 ]
  %120 = load i8, ptr %118, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %121, -48
  %123 = icmp ult i32 %122, 10
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = add nuw nsw i64 %119, 1
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 %125
  %127 = icmp eq i64 %125, 5
  br i1 %127, label %128, label %117

128:                                              ; preds = %109, %99, %94, %96, %124, %117, %24, %87, %17
  %129 = phi ptr [ %3, %17 ], [ %90, %87 ], [ %25, %24 ], [ %90, %99 ], [ %90, %109 ], [ %90, %94 ], [ %90, %96 ], [ %118, %117 ], [ %116, %124 ]
  %130 = ptrtoint ptr %129 to i64
  %131 = ptrtoint ptr %2 to i64
  %132 = sub i64 %130, %131
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %132
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
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %26, label %91

24:                                               ; preds = %57, %56, %47
  %25 = sub nuw nsw i64 5, %28
  br label %91

26:                                               ; preds = %17, %1
  %27 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %28 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %29 = load i8, ptr %27, align 1
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %30, -48
  %32 = icmp ult i32 %31, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  %34 = add nuw nsw i64 %28, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %28, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %28, 3
  %49 = icmp eq i64 %48, 5
  br i1 %49, label %24, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  br i1 %16, label %24, label %57

57:                                               ; preds = %56
  %58 = or disjoint i64 %28, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %24, label %64

64:                                               ; preds = %57, %50, %40, %33, %26
  %65 = phi i64 [ %28, %26 ], [ %34, %33 ], [ %41, %40 ], [ %48, %50 ], [ %58, %57 ]
  %66 = phi i8 [ %29, %26 ], [ %36, %33 ], [ %43, %40 ], [ %52, %50 ], [ %60, %57 ]
  %67 = sub nsw i64 %65, %28
  %68 = icmp eq i8 %66, 46
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = add nuw nsw i64 %65, 1
  %71 = icmp eq i64 %70, 5
  br i1 %71, label %82, label %72

72:                                               ; preds = %69, %79
  %73 = phi i64 [ %80, %79 ], [ %70, %69 ]
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, -48
  %78 = icmp ult i32 %77, 10
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, 5
  br i1 %81, label %82, label %72

82:                                               ; preds = %79, %72, %69
  %83 = phi i64 [ 5, %69 ], [ %73, %72 ], [ 5, %79 ]
  %84 = xor i64 %65, -1
  %85 = add i64 %67, %84
  %86 = add i64 %85, %83
  br label %87

87:                                               ; preds = %82, %64
  %88 = phi i64 [ %86, %82 ], [ %67, %64 ]
  %89 = icmp eq i64 %88, 0
  %90 = select i1 %89, i64 0, i64 %67
  br label %91

91:                                               ; preds = %87, %24, %17
  %92 = phi i64 [ 0, %17 ], [ %25, %24 ], [ %90, %87 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %92
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
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %20 = sext i8 %6 to i32
  %21 = add nsw i32 %20, -48
  %22 = icmp ult i32 %21, 10
  %23 = icmp eq i8 %6, 46
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %150

25:                                               ; preds = %17, %1
  %26 = phi ptr [ %3, %17 ], [ %2, %1 ]
  %27 = phi ptr [ %19, %17 ], [ %2, %1 ]
  %28 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %29 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %30 = load i8, ptr %28, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %65

34:                                               ; preds = %25
  %35 = add nuw nsw i64 %29, 1
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -48
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = or disjoint i64 %29, 2
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %29, 3
  %50 = icmp eq i64 %49, 5
  br i1 %50, label %150, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  br i1 %16, label %150, label %58

58:                                               ; preds = %57
  %59 = or disjoint i64 %29, 4
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, -48
  %64 = icmp ult i32 %63, 10
  br i1 %64, label %150, label %65

65:                                               ; preds = %58, %51, %41, %34, %25
  %66 = phi i64 [ %29, %25 ], [ %35, %34 ], [ %42, %41 ], [ %49, %51 ], [ %59, %58 ]
  %67 = phi i8 [ %30, %25 ], [ %37, %34 ], [ %44, %41 ], [ %53, %51 ], [ %61, %58 ]
  %68 = sub nsw i64 %66, %29
  %69 = icmp eq i8 %67, 46
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, 5
  br i1 %72, label %83, label %73

73:                                               ; preds = %70, %80
  %74 = phi i64 [ %81, %80 ], [ %71, %70 ]
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %74
  %76 = load i8, ptr %75, align 1
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %77, -48
  %79 = icmp ult i32 %78, 10
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = add nuw nsw i64 %74, 1
  %82 = icmp eq i64 %81, 5
  br i1 %82, label %83, label %73

83:                                               ; preds = %80, %73, %70
  %84 = phi i64 [ 5, %70 ], [ %74, %73 ], [ 5, %80 ]
  %85 = xor i64 %66, -1
  %86 = sub nsw i64 %84, %71
  %87 = add i64 %68, %85
  %88 = add i64 %87, %84
  br label %89

89:                                               ; preds = %83, %65
  %90 = phi i64 [ %86, %83 ], [ 0, %65 ]
  %91 = phi i64 [ %88, %83 ], [ %68, %65 ]
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %150, label %93

93:                                               ; preds = %89
  %94 = icmp sgt i64 %91, 19
  br i1 %94, label %95, label %150

95:                                               ; preds = %93
  %96 = load i8, ptr %27, align 1
  switch i8 %96, label %132 [
    i8 48, label %97
    i8 46, label %97
  ]

97:                                               ; preds = %95, %95
  %98 = icmp eq i8 %96, 48
  %99 = sext i1 %98 to i64
  %100 = add nsw i64 %91, %99
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %29
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 1
  %103 = load i8, ptr %102, align 1
  switch i8 %103, label %132 [
    i8 48, label %104
    i8 46, label %104
  ]

104:                                              ; preds = %97, %97
  %105 = icmp eq i8 %103, 48
  %106 = sext i1 %105 to i64
  %107 = add nsw i64 %100, %106
  %108 = or disjoint i64 %29, 2
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 %108
  %110 = load i8, ptr %109, align 1
  switch i8 %110, label %132 [
    i8 48, label %111
    i8 46, label %111
  ]

111:                                              ; preds = %104, %104
  %112 = icmp eq i8 %110, 48
  %113 = sext i1 %112 to i64
  %114 = add nsw i64 %107, %113
  %115 = add nuw nsw i64 %29, 3
  %116 = icmp eq i64 %115, 5
  br i1 %116, label %132, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 %115
  %119 = load i8, ptr %118, align 1
  switch i8 %119, label %132 [
    i8 48, label %120
    i8 46, label %120
  ]

120:                                              ; preds = %117, %117
  %121 = icmp eq i8 %119, 48
  %122 = sext i1 %121 to i64
  %123 = add nsw i64 %114, %122
  br i1 %16, label %132, label %124

124:                                              ; preds = %120
  %125 = or disjoint i64 %29, 4
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 %125
  %127 = load i8, ptr %126, align 1
  switch i8 %127, label %132 [
    i8 48, label %128
    i8 46, label %128
  ]

128:                                              ; preds = %124, %124
  %129 = icmp eq i8 %127, 48
  %130 = sext i1 %129 to i64
  %131 = add nsw i64 %123, %130
  br label %132

132:                                              ; preds = %128, %124, %120, %117, %111, %104, %97, %95
  %133 = phi i64 [ %91, %95 ], [ %100, %97 ], [ %107, %104 ], [ %114, %111 ], [ %114, %117 ], [ %123, %120 ], [ %123, %124 ], [ %131, %128 ]
  %134 = icmp sgt i64 %133, 19
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %26, i64 %68
  %137 = icmp samesign eq i64 %68, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %135, %138
  %139 = phi ptr [ %146, %138 ], [ %26, %135 ]
  %140 = phi i64 [ %145, %138 ], [ 0, %135 ]
  %141 = mul nuw i64 %140, 10
  %142 = load i8, ptr %139, align 1
  %143 = sext i8 %142 to i64
  %144 = add i64 %141, -48
  %145 = add i64 %144, %143
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %147 = icmp ult i64 %145, 1000000000000000000
  %148 = icmp ne ptr %146, %136
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %138, label %150

150:                                              ; preds = %48, %57, %58, %138, %135, %93, %132, %89, %17
  %151 = phi i64 [ 0, %17 ], [ 0, %89 ], [ %90, %132 ], [ %90, %93 ], [ %90, %135 ], [ %90, %138 ], [ 0, %58 ], [ 0, %57 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %151
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %89

24:                                               ; preds = %17, %1
  %25 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %26 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %27 = load i8, ptr %25, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, -48
  %30 = icmp ult i32 %29, 10
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %26, 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = or disjoint i64 %26, 2
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, -48
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %26, 3
  %47 = icmp eq i64 %46, 5
  br i1 %47, label %89, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  br i1 %16, label %89, label %55

55:                                               ; preds = %54
  %56 = or disjoint i64 %26, 4
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %89, label %62

62:                                               ; preds = %55, %48, %38, %31, %24
  %63 = phi i64 [ %26, %24 ], [ %32, %31 ], [ %39, %38 ], [ %46, %48 ], [ %56, %55 ]
  %64 = phi i8 [ %27, %24 ], [ %34, %31 ], [ %41, %38 ], [ %50, %48 ], [ %58, %55 ]
  %65 = sub nsw i64 %63, %26
  %66 = icmp eq i8 %64, 46
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = add nuw nsw i64 %63, 1
  %69 = icmp eq i64 %68, 5
  br i1 %69, label %80, label %70

70:                                               ; preds = %67, %77
  %71 = phi i64 [ %78, %77 ], [ %68, %67 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, 5
  br i1 %79, label %80, label %70

80:                                               ; preds = %77, %70, %67
  %81 = phi i64 [ 5, %67 ], [ %71, %70 ], [ 5, %77 ]
  %82 = xor i64 %63, -1
  %83 = add i64 %65, %82
  %84 = add i64 %83, %81
  br label %85

85:                                               ; preds = %80, %62
  %86 = phi i64 [ %84, %80 ], [ %65, %62 ]
  %87 = icmp eq i64 %86, 0
  %88 = select i1 %87, i64 6, i64 0
  br label %89

89:                                               ; preds = %85, %45, %54, %55, %17
  %90 = phi i64 [ 2, %17 ], [ 0, %55 ], [ 0, %54 ], [ 0, %45 ], [ %88, %85 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %90
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %89

24:                                               ; preds = %17, %1
  %25 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %26 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %27 = load i8, ptr %25, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, -48
  %30 = icmp ult i32 %29, 10
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %26, 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = or disjoint i64 %26, 2
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, -48
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %26, 3
  %47 = icmp eq i64 %46, 5
  br i1 %47, label %89, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  br i1 %16, label %89, label %55

55:                                               ; preds = %54
  %56 = or disjoint i64 %26, 4
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %89, label %62

62:                                               ; preds = %55, %48, %38, %31, %24
  %63 = phi i64 [ %26, %24 ], [ %32, %31 ], [ %39, %38 ], [ %46, %48 ], [ %56, %55 ]
  %64 = phi i8 [ %27, %24 ], [ %34, %31 ], [ %41, %38 ], [ %50, %48 ], [ %58, %55 ]
  %65 = sub nsw i64 %63, %26
  %66 = icmp eq i8 %64, 46
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = add nuw nsw i64 %63, 1
  %69 = icmp eq i64 %68, 5
  br i1 %69, label %80, label %70

70:                                               ; preds = %67, %77
  %71 = phi i64 [ %78, %77 ], [ %68, %67 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, 5
  br i1 %79, label %80, label %70

80:                                               ; preds = %77, %70, %67
  %81 = phi i64 [ 5, %67 ], [ %71, %70 ], [ 5, %77 ]
  %82 = xor i64 %63, -1
  %83 = add i64 %65, %82
  %84 = add i64 %83, %81
  br label %85

85:                                               ; preds = %80, %62
  %86 = phi i64 [ %84, %80 ], [ %65, %62 ]
  %87 = icmp eq i64 %86, 0
  %88 = select i1 %87, i64 0, i64 1
  br label %89

89:                                               ; preds = %85, %45, %54, %55, %17
  %90 = phi i64 [ 0, %17 ], [ 1, %55 ], [ 1, %54 ], [ 1, %45 ], [ %88, %85 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %90
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %90

24:                                               ; preds = %17, %1
  %25 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %26 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %27 = load i8, ptr %25, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, -48
  %30 = icmp ult i32 %29, 10
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %26, 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = or disjoint i64 %26, 2
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, -48
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %26, 3
  %47 = icmp eq i64 %46, 5
  br i1 %47, label %88, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  br i1 %16, label %88, label %55

55:                                               ; preds = %54
  %56 = or disjoint i64 %26, 4
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %88, label %62

62:                                               ; preds = %55, %48, %38, %31, %24
  %63 = phi i64 [ %26, %24 ], [ %32, %31 ], [ %39, %38 ], [ %46, %48 ], [ %56, %55 ]
  %64 = phi i8 [ %27, %24 ], [ %34, %31 ], [ %41, %38 ], [ %50, %48 ], [ %58, %55 ]
  %65 = sub nsw i64 %63, %26
  %66 = icmp eq i8 %64, 46
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = add nuw nsw i64 %63, 1
  %69 = icmp eq i64 %68, 5
  br i1 %69, label %80, label %70

70:                                               ; preds = %67, %77
  %71 = phi i64 [ %78, %77 ], [ %68, %67 ]
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, 5
  br i1 %79, label %80, label %70

80:                                               ; preds = %77, %70, %67
  %81 = phi i64 [ 5, %67 ], [ %71, %70 ], [ 5, %77 ]
  %82 = xor i64 %63, -1
  %83 = add i64 %65, %82
  %84 = add i64 %83, %81
  br label %85

85:                                               ; preds = %80, %62
  %86 = phi i64 [ %84, %80 ], [ %65, %62 ]
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85, %45, %54, %55
  %89 = zext i1 %16 to i64
  br label %90

90:                                               ; preds = %85, %17, %88
  %91 = phi i64 [ %89, %88 ], [ 0, %17 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %91
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
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %20 = sext i8 %6 to i32
  %21 = add nsw i32 %20, -48
  %22 = icmp ult i32 %21, 10
  %23 = icmp eq i8 %6, 46
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %131

25:                                               ; preds = %17, %1
  %26 = phi ptr [ %19, %17 ], [ %2, %1 ]
  %27 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %28 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %29 = load i8, ptr %27, align 1
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %30, -48
  %32 = icmp ult i32 %31, 10
  br i1 %32, label %33, label %64

33:                                               ; preds = %25
  %34 = add nuw nsw i64 %28, 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = or disjoint i64 %28, 2
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = add nuw nsw i64 %28, 3
  %49 = icmp eq i64 %48, 5
  br i1 %49, label %131, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  br i1 %16, label %131, label %57

57:                                               ; preds = %56
  %58 = or disjoint i64 %28, 4
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %131, label %64

64:                                               ; preds = %57, %50, %40, %33, %25
  %65 = phi i64 [ %28, %25 ], [ %34, %33 ], [ %41, %40 ], [ %48, %50 ], [ %58, %57 ]
  %66 = phi i8 [ %29, %25 ], [ %36, %33 ], [ %43, %40 ], [ %52, %50 ], [ %60, %57 ]
  %67 = sub nsw i64 %65, %28
  %68 = icmp eq i8 %66, 46
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = add nuw nsw i64 %65, 1
  %71 = icmp eq i64 %70, 5
  br i1 %71, label %82, label %72

72:                                               ; preds = %69, %79
  %73 = phi i64 [ %80, %79 ], [ %70, %69 ]
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, -48
  %78 = icmp ult i32 %77, 10
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, 5
  br i1 %81, label %82, label %72

82:                                               ; preds = %79, %72, %69
  %83 = phi i64 [ 5, %69 ], [ %73, %72 ], [ 5, %79 ]
  %84 = xor i64 %65, -1
  %85 = add i64 %67, %84
  %86 = add i64 %85, %83
  br label %87

87:                                               ; preds = %82, %64
  %88 = phi i64 [ %86, %82 ], [ %67, %64 ]
  %89 = icmp sgt i64 %88, 19
  br i1 %89, label %90, label %131

90:                                               ; preds = %87
  %91 = load i8, ptr %26, align 1
  switch i8 %91, label %127 [
    i8 48, label %92
    i8 46, label %92
  ]

92:                                               ; preds = %90, %90
  %93 = icmp eq i8 %91, 48
  %94 = sext i1 %93 to i64
  %95 = add nsw i64 %88, %94
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %28
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 1
  %98 = load i8, ptr %97, align 1
  switch i8 %98, label %127 [
    i8 48, label %99
    i8 46, label %99
  ]

99:                                               ; preds = %92, %92
  %100 = icmp eq i8 %98, 48
  %101 = sext i1 %100 to i64
  %102 = add nsw i64 %95, %101
  %103 = or disjoint i64 %28, 2
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %105 = load i8, ptr %104, align 1
  switch i8 %105, label %127 [
    i8 48, label %106
    i8 46, label %106
  ]

106:                                              ; preds = %99, %99
  %107 = icmp eq i8 %105, 48
  %108 = sext i1 %107 to i64
  %109 = add nsw i64 %102, %108
  %110 = add nuw nsw i64 %28, 3
  %111 = icmp eq i64 %110, 5
  br i1 %111, label %127, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 %110
  %114 = load i8, ptr %113, align 1
  switch i8 %114, label %127 [
    i8 48, label %115
    i8 46, label %115
  ]

115:                                              ; preds = %112, %112
  %116 = icmp eq i8 %114, 48
  %117 = sext i1 %116 to i64
  %118 = add nsw i64 %109, %117
  br i1 %16, label %127, label %119

119:                                              ; preds = %115
  %120 = or disjoint i64 %28, 4
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %120
  %122 = load i8, ptr %121, align 1
  switch i8 %122, label %127 [
    i8 48, label %123
    i8 46, label %123
  ]

123:                                              ; preds = %119, %119
  %124 = icmp eq i8 %122, 48
  %125 = sext i1 %124 to i64
  %126 = add nsw i64 %118, %125
  br label %127

127:                                              ; preds = %123, %119, %115, %112, %106, %99, %92, %90
  %128 = phi i64 [ %88, %90 ], [ %95, %92 ], [ %102, %99 ], [ %109, %106 ], [ %109, %112 ], [ %118, %115 ], [ %118, %119 ], [ %126, %123 ]
  %129 = icmp sgt i64 %128, 19
  %130 = zext i1 %129 to i64
  br label %131

131:                                              ; preds = %47, %56, %57, %127, %87, %17
  %132 = phi i64 [ 0, %17 ], [ 0, %87 ], [ %130, %127 ], [ 0, %57 ], [ 0, %56 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %132
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %90

24:                                               ; preds = %17, %1
  %25 = phi ptr [ %3, %17 ], [ %2, %1 ]
  %26 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %27 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %28 = load i8, ptr %26, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %29, -48
  %31 = icmp ult i32 %30, 10
  br i1 %31, label %32, label %63

32:                                               ; preds = %24
  %33 = add nuw nsw i64 %27, 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, -48
  %38 = icmp ult i32 %37, 10
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = or disjoint i64 %27, 2
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %27, 3
  %48 = icmp eq i64 %47, 5
  br i1 %48, label %90, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %47
  %51 = load i8, ptr %50, align 1
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ult i32 %53, 10
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  br i1 %16, label %90, label %56

56:                                               ; preds = %55
  %57 = or disjoint i64 %27, 4
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  %62 = icmp ult i32 %61, 10
  br i1 %62, label %90, label %63

63:                                               ; preds = %56, %49, %39, %32, %24
  %64 = phi i64 [ %27, %24 ], [ %33, %32 ], [ %40, %39 ], [ %47, %49 ], [ %57, %56 ]
  %65 = phi i8 [ %28, %24 ], [ %35, %32 ], [ %42, %39 ], [ %51, %49 ], [ %59, %56 ]
  %66 = sub nsw i64 %64, %27
  %67 = icmp eq i8 %65, 46
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, 5
  br i1 %70, label %81, label %71

71:                                               ; preds = %68, %78
  %72 = phi i64 [ %79, %78 ], [ %69, %68 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, 5
  br i1 %80, label %81, label %71

81:                                               ; preds = %78, %71, %68
  %82 = phi i64 [ 5, %68 ], [ %72, %71 ], [ 5, %78 ]
  %83 = xor i64 %64, -1
  %84 = add i64 %66, %83
  %85 = add i64 %84, %82
  br label %86

86:                                               ; preds = %81, %63
  %87 = phi i64 [ %85, %81 ], [ %66, %63 ]
  %88 = icmp eq i64 %87, 0
  %89 = select i1 %88, ptr null, ptr %25
  br label %90

90:                                               ; preds = %86, %46, %55, %56, %17
  %91 = phi ptr [ null, %17 ], [ %25, %56 ], [ %25, %55 ], [ %25, %46 ], [ %89, %86 ]
  %92 = icmp eq ptr %91, null
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %2 to i64
  %95 = sub i64 %93, %94
  %96 = select i1 %92, i64 -1, i64 %95
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %96
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %19 = sext i8 %6 to i32
  %20 = add nsw i32 %19, -48
  %21 = icmp ult i32 %20, 10
  %22 = icmp eq i8 %6, 46
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %91

24:                                               ; preds = %17, %1
  %25 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %26 = phi i64 [ 1, %17 ], [ 0, %1 ]
  %27 = load i8, ptr %25, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, -48
  %30 = icmp ult i32 %29, 10
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %26, 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = or disjoint i64 %26, 2
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %42, -48
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %26, 3
  %47 = icmp eq i64 %46, 5
  br i1 %47, label %91, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %46
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  br i1 %16, label %91, label %55

55:                                               ; preds = %54
  %56 = or disjoint i64 %26, 4
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %91, label %62

62:                                               ; preds = %55, %48, %38, %31, %24
  %63 = phi i64 [ %26, %24 ], [ %32, %31 ], [ %39, %38 ], [ %46, %48 ], [ %56, %55 ]
  %64 = phi i8 [ %27, %24 ], [ %34, %31 ], [ %41, %38 ], [ %50, %48 ], [ %58, %55 ]
  %65 = sub nsw i64 %63, %26
  %66 = icmp eq i8 %64, 46
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = add nuw nsw i64 %63, 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 %68
  %70 = icmp eq i64 %68, 5
  br i1 %70, label %81, label %71

71:                                               ; preds = %67, %78
  %72 = phi i64 [ %79, %78 ], [ %68, %67 ]
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, 5
  br i1 %80, label %81, label %71

81:                                               ; preds = %78, %71, %67
  %82 = phi i64 [ 5, %67 ], [ %72, %71 ], [ 5, %78 ]
  %83 = xor i64 %63, -1
  %84 = add i64 %65, %83
  %85 = add i64 %84, %82
  br label %86

86:                                               ; preds = %81, %62
  %87 = phi ptr [ %69, %81 ], [ null, %62 ]
  %88 = phi i64 [ %85, %81 ], [ %65, %62 ]
  %89 = icmp eq i64 %88, 0
  %90 = select i1 %89, ptr null, ptr %87
  br label %91

91:                                               ; preds = %86, %45, %54, %55, %17
  %92 = phi ptr [ null, %17 ], [ null, %55 ], [ null, %54 ], [ null, %45 ], [ %90, %86 ]
  %93 = icmp eq ptr %92, null
  %94 = ptrtoint ptr %92 to i64
  %95 = ptrtoint ptr %2 to i64
  %96 = sub i64 %94, %95
  %97 = select i1 %93, i64 -1, i64 %96
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %97
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
