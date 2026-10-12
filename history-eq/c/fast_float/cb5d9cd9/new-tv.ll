; ModuleID = 'history-eq/c/fast_float/cb5d9cd9/wrap.cpp'
source_filename = "history-eq/c/fast_float/cb5d9cd9/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_mantissa(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
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
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %189

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ %0, %27 ], [ %5, %30 ]
  %39 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %40 = icmp ult i32 %37, 10
  br i1 %40, label %41, label %124

41:                                               ; preds = %36
  %42 = shl i64 %38, 56
  %43 = ashr exact i64 %42, 56
  %44 = add nsw i64 %43, -48
  %45 = add nuw nsw i64 %39, 1
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %124

51:                                               ; preds = %41
  %52 = mul nsw i64 %44, 10
  %53 = sext i8 %47 to i64
  %54 = add nsw i64 %52, -48
  %55 = add nsw i64 %54, %53
  %56 = or disjoint i64 %39, 2
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %62, label %124

62:                                               ; preds = %51
  %63 = mul nsw i64 %55, 10
  %64 = sext i8 %58 to i64
  %65 = add nsw i64 %63, -48
  %66 = add nsw i64 %65, %64
  %67 = add nuw nsw i64 %39, 3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, -48
  %72 = icmp ult i32 %71, 10
  br i1 %72, label %73, label %124

73:                                               ; preds = %62
  %74 = mul nsw i64 %66, 10
  %75 = sext i8 %69 to i64
  %76 = add nsw i64 %74, -48
  %77 = add nsw i64 %76, %75
  %78 = or disjoint i64 %39, 4
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 %78
  %80 = load i8, ptr %79, align 1
  %81 = sext i8 %80 to i32
  %82 = add nsw i32 %81, -48
  %83 = icmp ult i32 %82, 10
  br i1 %83, label %84, label %124

84:                                               ; preds = %73
  %85 = mul nsw i64 %77, 10
  %86 = sext i8 %80 to i64
  %87 = add nsw i64 %85, -48
  %88 = add nsw i64 %87, %86
  %89 = add nuw nsw i64 %39, 5
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = sext i8 %91 to i32
  %93 = add nsw i32 %92, -48
  %94 = icmp ult i32 %93, 10
  br i1 %94, label %95, label %124

95:                                               ; preds = %84
  %96 = mul i64 %88, 10
  %97 = sext i8 %91 to i64
  %98 = add i64 %96, -48
  %99 = add i64 %98, %97
  %100 = or disjoint i64 %39, 6
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, -48
  %105 = icmp ult i32 %104, 10
  br i1 %105, label %106, label %124

106:                                              ; preds = %95
  %107 = mul i64 %99, 10
  %108 = sext i8 %102 to i64
  %109 = add i64 %107, -48
  %110 = add i64 %109, %108
  %111 = add nuw nsw i64 %39, 7
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %189, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 %111
  %115 = load i8, ptr %114, align 1
  %116 = sext i8 %115 to i32
  %117 = add nsw i32 %116, -48
  %118 = icmp ult i32 %117, 10
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = mul i64 %110, 10
  %121 = sext i8 %115 to i64
  %122 = add i64 %120, -48
  %123 = add i64 %122, %121
  br label %189

124:                                              ; preds = %84, %95, %113, %36, %41, %51, %62, %73
  %125 = phi i64 [ %39, %36 ], [ %45, %41 ], [ %56, %51 ], [ %67, %62 ], [ %78, %73 ], [ %89, %84 ], [ %100, %95 ], [ %111, %113 ]
  %126 = phi i64 [ 0, %36 ], [ %44, %41 ], [ %55, %51 ], [ %66, %62 ], [ %77, %73 ], [ %88, %84 ], [ %99, %95 ], [ %110, %113 ]
  %127 = sub nsw i64 %125, %39
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 %125
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 46
  br i1 %130, label %131, label %184

131:                                              ; preds = %124
  %132 = add nuw nsw i64 %125, 1
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 %132
  %134 = ptrtoint ptr %133 to i64
  %135 = icmp slt i64 %125, 4
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %132
  %138 = load i32, ptr %137, align 1
  %139 = add i32 %138, 1179010630
  %140 = add i32 %138, -808464432
  %141 = or i32 %139, %140
  %142 = and i32 %141, -2139062144
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %136
  %145 = mul i64 %126, 10000
  %146 = mul i32 %140, 10
  %147 = lshr i32 %140, 8
  %148 = add i32 %146, %147
  %149 = and i32 %148, 16711935
  %150 = mul i32 %149, 6553601
  %151 = lshr i32 %150, 16
  %152 = zext nneg i32 %151 to i64
  %153 = add i64 %145, %152
  %154 = add nuw nsw i64 %125, 5
  br label %155

155:                                              ; preds = %131, %144
  %156 = phi i64 [ %153, %144 ], [ %126, %131 ]
  %157 = phi i64 [ %154, %144 ], [ %132, %131 ]
  %158 = icmp eq i64 %157, 8
  br i1 %158, label %177, label %159

159:                                              ; preds = %136, %155
  %160 = phi i64 [ %132, %136 ], [ %157, %155 ]
  %161 = phi i64 [ %126, %136 ], [ %156, %155 ]
  br label %162

162:                                              ; preds = %159, %170
  %163 = phi i64 [ %172, %170 ], [ %160, %159 ]
  %164 = phi i64 [ %175, %170 ], [ %161, %159 ]
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 %163
  %166 = load i8, ptr %165, align 1
  %167 = sext i8 %166 to i32
  %168 = add nsw i32 %167, -48
  %169 = icmp ult i32 %168, 10
  br i1 %169, label %170, label %177

170:                                              ; preds = %162
  %171 = add i8 %166, -48
  %172 = add nuw nsw i64 %163, 1
  %173 = mul i64 %164, 10
  %174 = zext i8 %171 to i64
  %175 = add i64 %173, %174
  %176 = icmp eq i64 %172, 8
  br i1 %176, label %177, label %162

177:                                              ; preds = %170, %162, %155
  %178 = phi i64 [ %156, %155 ], [ %164, %162 ], [ %175, %170 ]
  %179 = phi i64 [ 8, %155 ], [ %163, %162 ], [ 8, %170 ]
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 %179
  %181 = ptrtoint ptr %180 to i64
  %182 = sub i64 %127, %134
  %183 = add i64 %182, %181
  br label %184

184:                                              ; preds = %177, %124
  %185 = phi i64 [ %178, %177 ], [ %126, %124 ]
  %186 = phi i64 [ %183, %177 ], [ %127, %124 ]
  %187 = icmp eq i64 %186, 0
  %188 = select i1 %187, i64 0, i64 %185
  br label %189

189:                                              ; preds = %106, %119, %184, %30
  %190 = phi i64 [ 0, %30 ], [ %188, %184 ], [ %110, %106 ], [ %123, %119 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %190
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_exponent(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
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
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %202

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi ptr [ %2, %27 ], [ %3, %30 ]
  %39 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %40 = icmp ult i32 %37, 10
  br i1 %40, label %41, label %97

41:                                               ; preds = %36
  %42 = add nuw nsw i64 %39, 1
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %97

48:                                               ; preds = %41
  %49 = or disjoint i64 %39, 2
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %49
  %51 = load i8, ptr %50, align 1
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, -48
  %54 = icmp ult i32 %53, 10
  br i1 %54, label %55, label %97

55:                                               ; preds = %48
  %56 = add nuw nsw i64 %39, 3
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %62, label %97

62:                                               ; preds = %55
  %63 = or disjoint i64 %39, 4
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = sext i8 %65 to i32
  %67 = add nsw i32 %66, -48
  %68 = icmp ult i32 %67, 10
  br i1 %68, label %69, label %97

69:                                               ; preds = %62
  %70 = add nuw nsw i64 %39, 5
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, -48
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %76, label %103

76:                                               ; preds = %69
  %77 = or disjoint i64 %39, 6
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %79 = load i8, ptr %78, align 1
  %80 = sext i8 %79 to i32
  %81 = add nsw i32 %80, -48
  %82 = icmp ult i32 %81, 10
  br i1 %82, label %83, label %103

83:                                               ; preds = %76
  %84 = add nuw nsw i64 %39, 7
  %85 = icmp eq i64 %84, 8
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i8, ptr %87, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, -48
  %91 = icmp ult i32 %90, 10
  br i1 %91, label %92, label %103

92:                                               ; preds = %86, %83
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %94 = ptrtoint ptr %93 to i64
  %95 = ptrtoint ptr %38 to i64
  %96 = sub i64 %94, %95
  br label %147

97:                                               ; preds = %62, %55, %48, %41, %36
  %98 = phi i64 [ %39, %36 ], [ %42, %41 ], [ %49, %48 ], [ %56, %55 ], [ %63, %62 ]
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %38 to i64
  %102 = sub i64 %100, %101
  br label %109

103:                                              ; preds = %86, %76, %69
  %104 = phi i64 [ %70, %69 ], [ %77, %76 ], [ %84, %86 ]
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %104
  %106 = ptrtoint ptr %105 to i64
  %107 = ptrtoint ptr %38 to i64
  %108 = sub i64 %106, %107
  br label %109

109:                                              ; preds = %103, %97
  %110 = phi i64 [ %102, %97 ], [ %108, %103 ]
  %111 = phi ptr [ %99, %97 ], [ %105, %103 ]
  %112 = phi i64 [ %98, %97 ], [ %104, %103 ]
  %113 = load i8, ptr %111, align 1
  %114 = icmp eq i8 %113, 46
  br i1 %114, label %115, label %147

115:                                              ; preds = %109
  %116 = add nuw nsw i64 %112, 1
  %117 = icmp slt i64 %112, 4
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %116
  %120 = load i32, ptr %119, align 1
  %121 = add i32 %120, 1179010630
  %122 = add i32 %120, -808464432
  %123 = or i32 %121, %122
  %124 = and i32 %123, -2139062144
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = add nuw nsw i64 %112, 5
  br label %128

128:                                              ; preds = %115, %126
  %129 = phi i64 [ %127, %126 ], [ %116, %115 ]
  %130 = icmp eq i64 %129, 8
  br i1 %130, label %143, label %131

131:                                              ; preds = %118, %128
  %132 = phi i64 [ %116, %118 ], [ %129, %128 ]
  br label %133

133:                                              ; preds = %131, %140
  %134 = phi i64 [ %141, %140 ], [ %132, %131 ]
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 %134
  %136 = load i8, ptr %135, align 1
  %137 = sext i8 %136 to i32
  %138 = add nsw i32 %137, -48
  %139 = icmp ult i32 %138, 10
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = add nuw nsw i64 %134, 1
  %142 = icmp eq i64 %141, 8
  br i1 %142, label %143, label %133

143:                                              ; preds = %140, %133, %128
  %144 = phi i64 [ 8, %128 ], [ %134, %133 ], [ 8, %140 ]
  %145 = sub nsw i64 %116, %144
  %146 = sub nsw i64 %110, %145
  br label %147

147:                                              ; preds = %92, %143, %109
  %148 = phi i64 [ %144, %143 ], [ %112, %109 ], [ 8, %92 ]
  %149 = phi i64 [ %145, %143 ], [ 0, %109 ], [ 0, %92 ]
  %150 = phi i64 [ %146, %143 ], [ %110, %109 ], [ %96, %92 ]
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 %148
  %152 = icmp eq i64 %150, 0
  br i1 %152, label %202, label %153

153:                                              ; preds = %147
  %154 = icmp eq i64 %148, 8
  br i1 %154, label %202, label %155

155:                                              ; preds = %153
  %156 = load i8, ptr %151, align 1
  switch i8 %156, label %202 [
    i8 101, label %157
    i8 69, label %157
  ]

157:                                              ; preds = %155, %155
  %158 = add nuw nsw i64 %148, 1
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 %158
  %160 = icmp eq i64 %158, 8
  br i1 %160, label %170, label %161

161:                                              ; preds = %157
  %162 = load i8, ptr %159, align 1
  %163 = icmp eq i8 %162, 45
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = getelementptr inbounds nuw i8, ptr %151, i64 2
  br label %170

166:                                              ; preds = %161
  %167 = icmp eq i8 %162, 43
  %168 = getelementptr inbounds nuw i8, ptr %151, i64 2
  %169 = select i1 %167, ptr %168, ptr %159
  br label %170

170:                                              ; preds = %166, %157, %164
  %171 = phi ptr [ %165, %164 ], [ %159, %157 ], [ %169, %166 ]
  %172 = phi i1 [ true, %164 ], [ false, %157 ], [ false, %166 ]
  %173 = icmp eq ptr %171, %25
  br i1 %173, label %202, label %174

174:                                              ; preds = %170
  %175 = load i8, ptr %171, align 1
  %176 = sext i8 %175 to i32
  %177 = add nsw i32 %176, -48
  %178 = icmp ult i32 %177, 10
  br i1 %178, label %179, label %202

179:                                              ; preds = %174, %193
  %180 = phi i64 [ %194, %193 ], [ 0, %174 ]
  %181 = phi ptr [ %195, %193 ], [ %171, %174 ]
  %182 = load i8, ptr %181, align 1
  %183 = sext i8 %182 to i32
  %184 = add nsw i32 %183, -48
  %185 = icmp ult i32 %184, 10
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = icmp slt i64 %180, 268435456
  br i1 %187, label %188, label %193

188:                                              ; preds = %186
  %189 = add i8 %182, -48
  %190 = mul nsw i64 %180, 10
  %191 = zext i8 %189 to i64
  %192 = add nsw i64 %190, %191
  br label %193

193:                                              ; preds = %188, %186
  %194 = phi i64 [ %192, %188 ], [ %180, %186 ]
  %195 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %196 = icmp eq ptr %195, %25
  br i1 %196, label %197, label %179

197:                                              ; preds = %193, %179
  %198 = phi i64 [ %194, %193 ], [ %180, %179 ]
  %199 = sub nsw i64 0, %198
  %200 = select i1 %172, i64 %199, i64 %198
  %201 = add nsw i64 %200, %149
  br label %202

202:                                              ; preds = %174, %170, %197, %153, %155, %147, %30
  %203 = phi i64 [ 0, %30 ], [ 0, %147 ], [ %201, %197 ], [ %149, %170 ], [ %149, %174 ], [ %149, %155 ], [ %149, %153 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %203
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_consumed(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
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
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %174

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %93

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %93

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %93

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %91, label %93

91:                                               ; preds = %85, %82
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %174

93:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %94 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %95 = sub nsw i64 %94, %38
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, 46
  br i1 %98, label %99, label %135

99:                                               ; preds = %93
  %100 = add nuw nsw i64 %94, 1
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = ptrtoint ptr %101 to i64
  %103 = icmp slt i64 %94, 4
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %106 = load i32, ptr %105, align 1
  %107 = add i32 %106, 1179010630
  %108 = add i32 %106, -808464432
  %109 = or i32 %107, %108
  %110 = and i32 %109, -2139062144
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = add nuw nsw i64 %94, 5
  br label %114

114:                                              ; preds = %99, %112
  %115 = phi i64 [ %113, %112 ], [ %100, %99 ]
  %116 = icmp eq i64 %115, 8
  br i1 %116, label %129, label %117

117:                                              ; preds = %104, %114
  %118 = phi i64 [ %100, %104 ], [ %115, %114 ]
  br label %119

119:                                              ; preds = %117, %126
  %120 = phi i64 [ %127, %126 ], [ %118, %117 ]
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %120
  %122 = load i8, ptr %121, align 1
  %123 = sext i8 %122 to i32
  %124 = add nsw i32 %123, -48
  %125 = icmp ult i32 %124, 10
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = add nuw nsw i64 %120, 1
  %128 = icmp eq i64 %127, 8
  br i1 %128, label %129, label %119

129:                                              ; preds = %126, %119, %114
  %130 = phi i64 [ 8, %114 ], [ %120, %119 ], [ 8, %126 ]
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 %130
  %132 = ptrtoint ptr %131 to i64
  %133 = sub i64 %95, %102
  %134 = add i64 %133, %132
  br label %135

135:                                              ; preds = %129, %93
  %136 = phi i64 [ %130, %129 ], [ %94, %93 ]
  %137 = phi i64 [ %134, %129 ], [ %95, %93 ]
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %139 = icmp eq i64 %137, 0
  %140 = icmp eq i64 %136, 8
  %141 = or i1 %139, %140
  br i1 %141, label %174, label %142

142:                                              ; preds = %135
  %143 = load i8, ptr %138, align 1
  switch i8 %143, label %174 [
    i8 101, label %144
    i8 69, label %144
  ]

144:                                              ; preds = %142, %142
  %145 = add nuw nsw i64 %136, 1
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %145
  %147 = icmp eq i64 %145, 8
  br i1 %147, label %157, label %148

148:                                              ; preds = %144
  %149 = load i8, ptr %146, align 1
  %150 = icmp eq i8 %149, 45
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = getelementptr inbounds nuw i8, ptr %138, i64 2
  br label %157

153:                                              ; preds = %148
  %154 = icmp eq i8 %149, 43
  %155 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %156 = select i1 %154, ptr %155, ptr %146
  br label %157

157:                                              ; preds = %153, %144, %151
  %158 = phi ptr [ %152, %151 ], [ %146, %144 ], [ %156, %153 ]
  %159 = icmp eq ptr %158, %25
  br i1 %159, label %174, label %160

160:                                              ; preds = %157
  %161 = load i8, ptr %158, align 1
  %162 = sext i8 %161 to i32
  %163 = add nsw i32 %162, -48
  %164 = icmp ult i32 %163, 10
  br i1 %164, label %165, label %174

165:                                              ; preds = %160, %171
  %166 = phi ptr [ %172, %171 ], [ %158, %160 ]
  %167 = load i8, ptr %166, align 1
  %168 = sext i8 %167 to i32
  %169 = add nsw i32 %168, -48
  %170 = icmp ult i32 %169, 10
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %173 = icmp eq ptr %172, %25
  br i1 %173, label %174, label %165

174:                                              ; preds = %171, %165, %160, %157, %142, %91, %135, %30
  %175 = phi ptr [ %3, %30 ], [ %138, %135 ], [ %138, %157 ], [ %138, %160 ], [ %138, %142 ], [ %92, %91 ], [ %166, %165 ], [ %25, %171 ]
  %176 = ptrtoint ptr %175 to i64
  %177 = ptrtoint ptr %2 to i64
  %178 = sub i64 %176, %177
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_negative(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
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
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %138

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %91

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %136, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %136, label %91

91:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %92 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %93 = sub nsw i64 %92, %38
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 46
  br i1 %96, label %97, label %133

97:                                               ; preds = %91
  %98 = add nuw nsw i64 %92, 1
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = ptrtoint ptr %99 to i64
  %101 = icmp slt i64 %92, 4
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %104 = load i32, ptr %103, align 1
  %105 = add i32 %104, 1179010630
  %106 = add i32 %104, -808464432
  %107 = or i32 %105, %106
  %108 = and i32 %107, -2139062144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = add nuw nsw i64 %92, 5
  br label %112

112:                                              ; preds = %97, %110
  %113 = phi i64 [ %111, %110 ], [ %98, %97 ]
  %114 = icmp eq i64 %113, 8
  br i1 %114, label %127, label %115

115:                                              ; preds = %102, %112
  %116 = phi i64 [ %98, %102 ], [ %113, %112 ]
  br label %117

117:                                              ; preds = %115, %124
  %118 = phi i64 [ %125, %124 ], [ %116, %115 ]
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %121, -48
  %123 = icmp ult i32 %122, 10
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, 8
  br i1 %126, label %127, label %117

127:                                              ; preds = %124, %117, %112
  %128 = phi i64 [ 8, %112 ], [ %118, %117 ], [ 8, %124 ]
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %128
  %130 = ptrtoint ptr %129 to i64
  %131 = sub i64 %93, %100
  %132 = add i64 %131, %130
  br label %133

133:                                              ; preds = %127, %91
  %134 = phi i64 [ %132, %127 ], [ %93, %91 ]
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %82, %85, %133
  %137 = zext i1 %26 to i64
  br label %138

138:                                              ; preds = %133, %30, %136
  %139 = phi i64 [ %137, %136 ], [ 0, %30 ], [ 0, %133 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_valid(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
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
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %137

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %91

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %136, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %136, label %91

91:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %92 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %93 = sub nsw i64 %92, %38
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 46
  br i1 %96, label %97, label %133

97:                                               ; preds = %91
  %98 = add nuw nsw i64 %92, 1
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = ptrtoint ptr %99 to i64
  %101 = icmp slt i64 %92, 4
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %104 = load i32, ptr %103, align 1
  %105 = add i32 %104, 1179010630
  %106 = add i32 %104, -808464432
  %107 = or i32 %105, %106
  %108 = and i32 %107, -2139062144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = add nuw nsw i64 %92, 5
  br label %112

112:                                              ; preds = %97, %110
  %113 = phi i64 [ %111, %110 ], [ %98, %97 ]
  %114 = icmp eq i64 %113, 8
  br i1 %114, label %127, label %115

115:                                              ; preds = %102, %112
  %116 = phi i64 [ %98, %102 ], [ %113, %112 ]
  br label %117

117:                                              ; preds = %115, %124
  %118 = phi i64 [ %125, %124 ], [ %116, %115 ]
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %121, -48
  %123 = icmp ult i32 %122, 10
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, 8
  br i1 %126, label %127, label %117

127:                                              ; preds = %124, %117, %112
  %128 = phi i64 [ 8, %112 ], [ %118, %117 ], [ 8, %124 ]
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %128
  %130 = ptrtoint ptr %129 to i64
  %131 = sub i64 %93, %100
  %132 = add i64 %131, %130
  br label %133

133:                                              ; preds = %127, %91
  %134 = phi i64 [ %132, %127 ], [ %93, %91 ]
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %82, %85, %133
  br label %137

137:                                              ; preds = %136, %133, %30
  %138 = phi i64 [ 0, %30 ], [ 0, %133 ], [ 1, %136 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_too_many_digits(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
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
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %32 = sext i8 %6 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  %35 = icmp eq i8 %6, 46
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %204

37:                                               ; preds = %30, %27
  %38 = phi i32 [ %29, %27 ], [ %33, %30 ]
  %39 = phi ptr [ %2, %27 ], [ %31, %30 ]
  %40 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %41 = icmp ult i32 %38, 10
  br i1 %41, label %42, label %95

42:                                               ; preds = %37
  %43 = add nuw nsw i64 %40, 1
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %95

49:                                               ; preds = %42
  %50 = or disjoint i64 %40, 2
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %95

56:                                               ; preds = %49
  %57 = add nuw nsw i64 %40, 3
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  %62 = icmp ult i32 %61, 10
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = or disjoint i64 %40, 4
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 %64
  %66 = load i8, ptr %65, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, -48
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = add nuw nsw i64 %40, 5
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %77, label %95

77:                                               ; preds = %70
  %78 = or disjoint i64 %40, 6
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 %78
  %80 = load i8, ptr %79, align 1
  %81 = sext i8 %80 to i32
  %82 = add nsw i32 %81, -48
  %83 = icmp ult i32 %82, 10
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %40, 7
  %86 = icmp eq i64 %85, 8
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %89 = load i8, ptr %88, align 1
  %90 = sext i8 %89 to i32
  %91 = add nsw i32 %90, -48
  %92 = icmp ult i32 %91, 10
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %84
  %94 = sub nuw nsw i64 8, %40
  br label %140

95:                                               ; preds = %70, %77, %87, %37, %42, %49, %56, %63
  %96 = phi i64 [ %40, %37 ], [ %43, %42 ], [ %50, %49 ], [ %57, %56 ], [ %64, %63 ], [ %71, %70 ], [ %78, %77 ], [ %85, %87 ]
  %97 = sub nsw i64 %96, %40
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %96
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 46
  br i1 %100, label %101, label %137

101:                                              ; preds = %95
  %102 = add nuw nsw i64 %96, 1
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %104 = ptrtoint ptr %103 to i64
  %105 = icmp slt i64 %96, 4
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %108 = load i32, ptr %107, align 1
  %109 = add i32 %108, 1179010630
  %110 = add i32 %108, -808464432
  %111 = or i32 %109, %110
  %112 = and i32 %111, -2139062144
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = add nuw nsw i64 %96, 5
  br label %116

116:                                              ; preds = %101, %114
  %117 = phi i64 [ %115, %114 ], [ %102, %101 ]
  %118 = icmp eq i64 %117, 8
  br i1 %118, label %131, label %119

119:                                              ; preds = %106, %116
  %120 = phi i64 [ %102, %106 ], [ %117, %116 ]
  br label %121

121:                                              ; preds = %119, %128
  %122 = phi i64 [ %129, %128 ], [ %120, %119 ]
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 %122
  %124 = load i8, ptr %123, align 1
  %125 = sext i8 %124 to i32
  %126 = add nsw i32 %125, -48
  %127 = icmp ult i32 %126, 10
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = add nuw nsw i64 %122, 1
  %130 = icmp eq i64 %129, 8
  br i1 %130, label %131, label %121

131:                                              ; preds = %128, %121, %116
  %132 = phi i64 [ 8, %116 ], [ %122, %121 ], [ 8, %128 ]
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 %132
  %134 = ptrtoint ptr %133 to i64
  %135 = sub i64 %97, %104
  %136 = add i64 %135, %134
  br label %137

137:                                              ; preds = %131, %95
  %138 = phi i64 [ %136, %131 ], [ %97, %95 ]
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %204, label %140

140:                                              ; preds = %137, %93
  %141 = phi i64 [ %94, %93 ], [ %138, %137 ]
  %142 = icmp sgt i64 %141, 19
  br i1 %142, label %143, label %204

143:                                              ; preds = %140
  %144 = load i8, ptr %39, align 1
  switch i8 %144, label %200 [
    i8 48, label %145
    i8 46, label %145
  ]

145:                                              ; preds = %143, %143
  %146 = icmp eq i8 %144, 48
  %147 = sext i1 %146 to i64
  %148 = add nsw i64 %141, %147
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 1
  %151 = load i8, ptr %150, align 1
  switch i8 %151, label %200 [
    i8 48, label %152
    i8 46, label %152
  ]

152:                                              ; preds = %145, %145
  %153 = icmp eq i8 %151, 48
  %154 = sext i1 %153 to i64
  %155 = add nsw i64 %148, %154
  %156 = or disjoint i64 %40, 2
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 %156
  %158 = load i8, ptr %157, align 1
  switch i8 %158, label %200 [
    i8 48, label %159
    i8 46, label %159
  ]

159:                                              ; preds = %152, %152
  %160 = icmp eq i8 %158, 48
  %161 = sext i1 %160 to i64
  %162 = add nsw i64 %155, %161
  %163 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 3
  %165 = load i8, ptr %164, align 1
  switch i8 %165, label %200 [
    i8 48, label %166
    i8 46, label %166
  ]

166:                                              ; preds = %159, %159
  %167 = icmp eq i8 %165, 48
  %168 = sext i1 %167 to i64
  %169 = add nsw i64 %162, %168
  %170 = or disjoint i64 %40, 4
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 %170
  %172 = load i8, ptr %171, align 1
  switch i8 %172, label %200 [
    i8 48, label %173
    i8 46, label %173
  ]

173:                                              ; preds = %166, %166
  %174 = icmp eq i8 %172, 48
  %175 = sext i1 %174 to i64
  %176 = add nsw i64 %169, %175
  %177 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 5
  %179 = load i8, ptr %178, align 1
  switch i8 %179, label %200 [
    i8 48, label %180
    i8 46, label %180
  ]

180:                                              ; preds = %173, %173
  %181 = icmp eq i8 %179, 48
  %182 = sext i1 %181 to i64
  %183 = add nsw i64 %176, %182
  %184 = or disjoint i64 %40, 6
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 %184
  %186 = load i8, ptr %185, align 1
  switch i8 %186, label %200 [
    i8 48, label %187
    i8 46, label %187
  ]

187:                                              ; preds = %180, %180
  %188 = icmp eq i8 %186, 48
  %189 = sext i1 %188 to i64
  %190 = add nsw i64 %183, %189
  %191 = add nuw nsw i64 %40, 7
  %192 = icmp eq i64 %191, 8
  br i1 %192, label %200, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 %191
  %195 = load i8, ptr %194, align 1
  switch i8 %195, label %200 [
    i8 48, label %196
    i8 46, label %196
  ]

196:                                              ; preds = %193, %193
  %197 = icmp eq i8 %195, 48
  %198 = sext i1 %197 to i64
  %199 = add nsw i64 %190, %198
  br label %200

200:                                              ; preds = %196, %193, %187, %180, %173, %166, %159, %152, %145, %143
  %201 = phi i64 [ %141, %143 ], [ %148, %145 ], [ %155, %152 ], [ %162, %159 ], [ %169, %166 ], [ %176, %173 ], [ %183, %180 ], [ %190, %187 ], [ %190, %193 ], [ %199, %196 ]
  %202 = icmp sgt i64 %201, 19
  %203 = zext i1 %202 to i64
  br label %204

204:                                              ; preds = %140, %200, %137, %30
  %205 = phi i64 [ 0, %30 ], [ 0, %137 ], [ 0, %140 ], [ %203, %200 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 7) i64 @target_error(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
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
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %137

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %91

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %136, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %136, label %91

91:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %92 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %93 = sub nsw i64 %92, %38
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 46
  br i1 %96, label %97, label %133

97:                                               ; preds = %91
  %98 = add nuw nsw i64 %92, 1
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = ptrtoint ptr %99 to i64
  %101 = icmp slt i64 %92, 4
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %104 = load i32, ptr %103, align 1
  %105 = add i32 %104, 1179010630
  %106 = add i32 %104, -808464432
  %107 = or i32 %105, %106
  %108 = and i32 %107, -2139062144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = add nuw nsw i64 %92, 5
  br label %112

112:                                              ; preds = %97, %110
  %113 = phi i64 [ %111, %110 ], [ %98, %97 ]
  %114 = icmp eq i64 %113, 8
  br i1 %114, label %127, label %115

115:                                              ; preds = %102, %112
  %116 = phi i64 [ %98, %102 ], [ %113, %112 ]
  br label %117

117:                                              ; preds = %115, %124
  %118 = phi i64 [ %125, %124 ], [ %116, %115 ]
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %121, -48
  %123 = icmp ult i32 %122, 10
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, 8
  br i1 %126, label %127, label %117

127:                                              ; preds = %124, %117, %112
  %128 = phi i64 [ 8, %112 ], [ %118, %117 ], [ 8, %124 ]
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %128
  %130 = ptrtoint ptr %129 to i64
  %131 = sub i64 %93, %100
  %132 = add i64 %131, %130
  br label %133

133:                                              ; preds = %127, %91
  %134 = phi i64 [ %132, %127 ], [ %93, %91 ]
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %82, %85, %133
  br label %137

137:                                              ; preds = %136, %133, %30
  %138 = phi i64 [ 2, %30 ], [ 6, %133 ], [ 0, %136 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %138
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!9 = distinct !{!9, !10, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!16 = distinct !{!16, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!17 = distinct !{!17, !12}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!20 = distinct !{!20, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!23 = distinct !{!23, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!26 = distinct !{!26, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!29 = distinct !{!29, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
!30 = distinct !{!30, !12}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb: argument 0"}
!33 = distinct !{!33, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb"}
