; ModuleID = 'history-eq/c/fast_float/41ee3470/wrap.cpp'
source_filename = "history-eq/c/fast_float/41ee3470/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

$_Z11parse_fieldILi1EEmm = comdat any

$_Z11parse_fieldILi2EEmm = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_wrap.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_predicate(i64 noundef %0) local_unnamed_addr #3 {
  %2 = add i64 %0, 5063812098665367110
  %3 = add i64 %0, -3472328296227680304
  %4 = or i64 %2, %3
  %5 = and i64 %4, -9187201950435737472
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i64
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_raw_value(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %2 = add i64 %0, -3472328296227680304
  %3 = mul i64 %2, 10
  %4 = lshr i64 %2, 8
  %5 = add i64 %3, %4
  %6 = and i64 %5, 1095216660735
  %7 = mul i64 %6, 4294967296000100
  %8 = lshr i64 %5, 16
  %9 = and i64 %8, 1095216660735
  %10 = mul i64 %9, 42949672960001
  %11 = add i64 %10, %7
  %12 = lshr i64 %11, 32
  ret i64 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -1, 4294967296) i64 @target_digit_value(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %2 = trunc i64 %0 to i8
  %3 = add i8 %2, -48
  %4 = icmp ult i8 %3, 10
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = lshr i64 %0, 56
  %7 = trunc nuw i64 %6 to i8
  %8 = lshr i64 %0, 48
  %9 = trunc i64 %8 to i8
  %10 = lshr i64 %0, 40
  %11 = trunc i64 %10 to i8
  %12 = lshr i64 %0, 32
  %13 = trunc i64 %12 to i8
  %14 = lshr i64 %0, 24
  %15 = trunc i64 %14 to i8
  %16 = lshr i64 %0, 16
  %17 = trunc i64 %16 to i8
  %18 = lshr i64 %0, 8
  %19 = trunc i64 %18 to i8
  %20 = add i8 %19, -48
  %21 = icmp ult i8 %20, 10
  %22 = add i8 %17, -48
  %23 = icmp ult i8 %22, 10
  %24 = and i1 %21, %23
  %25 = add i8 %15, -48
  %26 = icmp ult i8 %25, 10
  %27 = and i1 %24, %26
  %28 = add i8 %13, -48
  %29 = icmp ult i8 %28, 10
  %30 = and i1 %27, %29
  %31 = add i8 %11, -48
  %32 = icmp ult i8 %31, 10
  %33 = and i1 %30, %32
  %34 = add i8 %9, -48
  %35 = icmp ult i8 %34, 10
  %36 = and i1 %33, %35
  %37 = add i8 %7, -48
  %38 = icmp ult i8 %37, 10
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %52

40:                                               ; preds = %5
  %41 = add i64 %0, -3472328296227680304
  %42 = mul i64 %41, 10
  %43 = lshr i64 %41, 8
  %44 = add i64 %42, %43
  %45 = and i64 %44, 1095216660735
  %46 = mul i64 %45, 4294967296000100
  %47 = lshr i64 %44, 16
  %48 = and i64 %47, 1095216660735
  %49 = mul i64 %48, 42949672960001
  %50 = add i64 %49, %46
  %51 = lshr i64 %50, 32
  br label %52

52:                                               ; preds = %1, %5, %40
  %53 = phi i64 [ %51, %40 ], [ -1, %5 ], [ -1, %1 ]
  ret i64 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -1, 4294967296) i64 @target_guarded_value(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %2 = add i64 %0, 5063812098665367110
  %3 = add i64 %0, -3472328296227680304
  %4 = or i64 %2, %3
  %5 = and i64 %4, -9187201950435737472
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = mul i64 %3, 10
  %9 = lshr i64 %3, 8
  %10 = add i64 %8, %9
  %11 = and i64 %10, 1095216660735
  %12 = mul i64 %11, 4294967296000100
  %13 = lshr i64 %10, 16
  %14 = and i64 %13, 1095216660735
  %15 = mul i64 %14, 42949672960001
  %16 = add i64 %15, %12
  %17 = lshr i64 %16, 32
  br label %18

18:                                               ; preds = %1, %7
  %19 = phi i64 [ %17, %7 ], [ -1, %1 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 0, 2) i64 @target_parser_valid(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  ret i64 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @target_parser_mantissa(i64 noundef %0) local_unnamed_addr #5 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [10 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #7
  store i16 11824, ptr %2, align 2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i64 %0, ptr %3, align 2
  %4 = load i8, ptr %2, align 2, !tbaa !5, !noalias !8
  %5 = add i8 %4, -58
  %6 = icmp ult i8 %5, -10
  br i1 %6, label %91, label %7

7:                                                ; preds = %1
  %8 = zext nneg i8 %4 to i64
  %9 = add nsw i64 %8, -48
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5, !noalias !8
  %12 = add i8 %11, -48
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %14, label %91

14:                                               ; preds = %7
  %15 = mul nuw nsw i64 %9, 10
  %16 = zext nneg i8 %11 to i64
  %17 = add nsw i64 %15, -48
  %18 = add nsw i64 %17, %16
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %20 = load i8, ptr %19, align 2, !tbaa !5, !noalias !8
  %21 = add i8 %20, -48
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %23, label %91

23:                                               ; preds = %14
  %24 = mul nsw i64 %18, 10
  %25 = zext nneg i8 %20 to i64
  %26 = add nsw i64 %24, -48
  %27 = add i64 %26, %25
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !5, !noalias !8
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %91

32:                                               ; preds = %23
  %33 = mul i64 %27, 10
  %34 = zext nneg i8 %29 to i64
  %35 = add i64 %33, -48
  %36 = add i64 %35, %34
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %38 = load i8, ptr %37, align 2, !tbaa !5, !noalias !8
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %91

41:                                               ; preds = %32
  %42 = mul i64 %36, 10
  %43 = zext nneg i8 %38 to i64
  %44 = add i64 %42, -48
  %45 = add i64 %44, %43
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %47 = load i8, ptr %46, align 1, !tbaa !5, !noalias !8
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %50, label %91

50:                                               ; preds = %41
  %51 = mul i64 %45, 10
  %52 = zext nneg i8 %47 to i64
  %53 = add i64 %51, -48
  %54 = add i64 %53, %52
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %56 = load i8, ptr %55, align 2, !tbaa !5, !noalias !8
  %57 = add i8 %56, -48
  %58 = icmp ult i8 %57, 10
  br i1 %58, label %59, label %91

59:                                               ; preds = %50
  %60 = mul i64 %54, 10
  %61 = zext nneg i8 %56 to i64
  %62 = add i64 %60, -48
  %63 = add i64 %62, %61
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %65 = load i8, ptr %64, align 1, !tbaa !5, !noalias !8
  %66 = add i8 %65, -48
  %67 = icmp ult i8 %66, 10
  br i1 %67, label %68, label %91

68:                                               ; preds = %59
  %69 = mul i64 %63, 10
  %70 = zext nneg i8 %65 to i64
  %71 = add i64 %69, -48
  %72 = add i64 %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %74 = load i8, ptr %73, align 2, !tbaa !5, !noalias !8
  %75 = add i8 %74, -48
  %76 = icmp ult i8 %75, 10
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = mul i64 %72, 10
  %79 = zext nneg i8 %74 to i64
  %80 = add i64 %78, -48
  %81 = add i64 %80, %79
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %83 = load i8, ptr %82, align 1, !tbaa !5, !noalias !8
  %84 = add i8 %83, -48
  %85 = icmp ult i8 %84, 10
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = mul i64 %81, 10
  %88 = zext nneg i8 %83 to i64
  %89 = add i64 %87, -48
  %90 = add i64 %89, %88
  br label %142

91:                                               ; preds = %77, %68, %59, %50, %41, %32, %23, %14, %7, %1
  %92 = phi i1 [ false, %1 ], [ false, %7 ], [ true, %14 ], [ true, %23 ], [ true, %32 ], [ true, %41 ], [ true, %50 ], [ true, %59 ], [ true, %68 ], [ true, %77 ]
  %93 = phi i64 [ 0, %1 ], [ 1, %7 ], [ 2, %14 ], [ 3, %23 ], [ 4, %32 ], [ 5, %41 ], [ 6, %50 ], [ 7, %59 ], [ 8, %68 ], [ 9, %77 ]
  %94 = phi i64 [ 0, %1 ], [ %9, %7 ], [ %18, %14 ], [ %27, %23 ], [ %36, %32 ], [ %45, %41 ], [ %54, %50 ], [ %63, %59 ], [ %72, %68 ], [ %81, %77 ]
  %95 = phi i8 [ %4, %1 ], [ %11, %7 ], [ %20, %14 ], [ %29, %23 ], [ %38, %32 ], [ %47, %41 ], [ %56, %50 ], [ %65, %59 ], [ %74, %68 ], [ %83, %77 ]
  %96 = icmp eq i8 %95, 46
  br i1 %96, label %97, label %141

97:                                               ; preds = %91
  %98 = add nuw nsw i64 %93, 1
  %99 = add nuw nsw i64 %93, 9
  br i1 %92, label %121, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %102 = load i64, ptr %101, align 1, !noalias !8
  %103 = add i64 %102, 5063812098665367110
  %104 = add i64 %102, -3472328296227680304
  %105 = or i64 %103, %104
  %106 = and i64 %105, -9187201950435737472
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %100
  %109 = mul i64 %94, 100000000
  %110 = mul i64 %104, 10
  %111 = lshr i64 %104, 8
  %112 = add i64 %110, %111
  %113 = and i64 %112, 1095216660735
  %114 = mul i64 %113, 4294967296000100
  %115 = lshr i64 %112, 16
  %116 = and i64 %115, 1095216660735
  %117 = mul i64 %116, 42949672960001
  %118 = add i64 %117, %114
  %119 = lshr i64 %118, 32
  %120 = add i64 %119, %109
  br label %121

121:                                              ; preds = %108, %97
  %122 = phi i64 [ %120, %108 ], [ %94, %97 ]
  %123 = phi i64 [ %99, %108 ], [ %98, %97 ]
  %124 = icmp eq i64 %123, 10
  br i1 %124, label %142, label %125

125:                                              ; preds = %100, %121
  %126 = phi i64 [ %98, %100 ], [ %123, %121 ]
  %127 = phi i64 [ %94, %100 ], [ %122, %121 ]
  br label %128

128:                                              ; preds = %125, %135
  %129 = phi i64 [ %136, %135 ], [ %126, %125 ]
  %130 = phi i64 [ %139, %135 ], [ %127, %125 ]
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 %129
  %132 = load i8, ptr %131, align 1, !tbaa !5, !noalias !8
  %133 = add i8 %132, -48
  %134 = icmp ult i8 %133, 10
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = add nuw nsw i64 %129, 1
  %137 = mul i64 %130, 10
  %138 = zext nneg i8 %133 to i64
  %139 = add i64 %137, %138
  %140 = icmp eq i64 %136, 10
  br i1 %140, label %142, label %128, !llvm.loop !11

141:                                              ; preds = %91
  br i1 %6, label %170, label %142

142:                                              ; preds = %128, %135, %86, %121, %141
  %143 = phi i64 [ %93, %141 ], [ 10, %121 ], [ 10, %86 ], [ 10, %135 ], [ %129, %128 ]
  %144 = phi i64 [ %94, %141 ], [ %122, %121 ], [ %90, %86 ], [ %139, %135 ], [ %130, %128 ]
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 %143
  %146 = getelementptr inbounds i8, ptr %145, i64 -1
  %147 = icmp eq ptr %2, %146
  %148 = load i8, ptr %2, align 2
  %149 = icmp eq i8 %148, 46
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %170, label %151

151:                                              ; preds = %142
  %152 = ptrtoint ptr %145 to i64
  %153 = ptrtoint ptr %2 to i64
  %154 = xor i64 %153, -1
  %155 = add i64 %152, %154
  %156 = trunc i64 %155 to i32
  %157 = icmp sgt i32 %156, 18
  br i1 %157, label %158, label %169

158:                                              ; preds = %151, %161
  %159 = phi ptr [ %162, %161 ], [ %2, %151 ]
  %160 = load i8, ptr %159, align 1, !tbaa !5, !noalias !8
  switch i8 %160, label %163 [
    i8 48, label %161
    i8 46, label %161
  ]

161:                                              ; preds = %158, %158
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 1
  br label %158, !llvm.loop !13

163:                                              ; preds = %158
  %164 = ptrtoint ptr %159 to i64
  %165 = sub i64 %153, %164
  %166 = trunc i64 %165 to i32
  %167 = add i32 %166, %156
  %168 = icmp slt i32 %167, 19
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %151
  br label %170

170:                                              ; preds = %142, %163, %141, %169
  %171 = phi i64 [ -1, %141 ], [ %144, %169 ], [ -1, %163 ], [ -1, %142 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #7
  ret i64 %171
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @target_parser_consumed(i64 noundef %0) local_unnamed_addr #5 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca [10 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #7
  store i16 11824, ptr %2, align 2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i64 %0, ptr %3, align 2
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %5 = load i8, ptr %2, align 2, !tbaa !5, !noalias !14
  %6 = add i8 %5, -58
  %7 = icmp ult i8 %6, -10
  br i1 %7, label %53, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !5, !noalias !14
  %11 = add i8 %10, -48
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %13, label %53

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %15 = load i8, ptr %14, align 2, !tbaa !5, !noalias !14
  %16 = add i8 %15, -48
  %17 = icmp ult i8 %16, 10
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !5, !noalias !14
  %21 = add i8 %20, -48
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %25 = load i8, ptr %24, align 2, !tbaa !5, !noalias !14
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %30 = load i8, ptr %29, align 1, !tbaa !5, !noalias !14
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %35 = load i8, ptr %34, align 2, !tbaa !5, !noalias !14
  %36 = add i8 %35, -48
  %37 = icmp ult i8 %36, 10
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %40 = load i8, ptr %39, align 1, !tbaa !5, !noalias !14
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %45 = load i8, ptr %44, align 2, !tbaa !5, !noalias !14
  %46 = add i8 %45, -48
  %47 = icmp ult i8 %46, 10
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !14
  %51 = add i8 %50, -48
  %52 = icmp ult i8 %51, 10
  br i1 %52, label %84, label %53

53:                                               ; preds = %48, %43, %38, %33, %28, %23, %18, %13, %8, %1
  %54 = phi i1 [ false, %1 ], [ false, %8 ], [ true, %13 ], [ true, %18 ], [ true, %23 ], [ true, %28 ], [ true, %33 ], [ true, %38 ], [ true, %43 ], [ true, %48 ]
  %55 = phi i64 [ 0, %1 ], [ 1, %8 ], [ 2, %13 ], [ 3, %18 ], [ 4, %23 ], [ 5, %28 ], [ 6, %33 ], [ 7, %38 ], [ 8, %43 ], [ 9, %48 ]
  %56 = phi i8 [ %5, %1 ], [ %10, %8 ], [ %15, %13 ], [ %20, %18 ], [ %25, %23 ], [ %30, %28 ], [ %35, %33 ], [ %40, %38 ], [ %45, %43 ], [ %50, %48 ]
  %57 = icmp eq i8 %56, 46
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = add nuw nsw i64 %55, 1
  br i1 %54, label %69, label %60

60:                                               ; preds = %58
  %61 = add nuw nsw i64 %55, 9
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %63 = load i64, ptr %62, align 1, !noalias !14
  %64 = add i64 %63, 5063812098665367110
  %65 = add i64 %63, -3472328296227680304
  %66 = or i64 %64, %65
  %67 = and i64 %66, -9187201950435737472
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60, %58
  %70 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %71 = icmp eq i64 %70, 10
  br i1 %71, label %84, label %72

72:                                               ; preds = %60, %69
  %73 = phi i64 [ %59, %60 ], [ %70, %69 ]
  br label %74

74:                                               ; preds = %72, %80
  %75 = phi i64 [ %81, %80 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !5, !noalias !14
  %78 = add i8 %77, -48
  %79 = icmp ult i8 %78, 10
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = add nuw nsw i64 %75, 1
  %82 = icmp eq i64 %81, 10
  br i1 %82, label %84, label %74, !llvm.loop !11

83:                                               ; preds = %53
  br i1 %7, label %124, label %84

84:                                               ; preds = %74, %80, %48, %69, %83
  %85 = phi i64 [ %55, %83 ], [ 10, %69 ], [ 10, %48 ], [ 10, %80 ], [ %75, %74 ]
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %87 = getelementptr inbounds i8, ptr %86, i64 -1
  %88 = icmp eq ptr %2, %87
  %89 = load i8, ptr %2, align 2
  %90 = icmp eq i8 %89, 46
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %124, label %92

92:                                               ; preds = %84
  %93 = icmp eq i64 %85, 10
  br i1 %93, label %124, label %94

94:                                               ; preds = %92
  %95 = load i8, ptr %86, align 1, !tbaa !5, !noalias !14
  switch i8 %95, label %124 [
    i8 101, label %96
    i8 69, label %96
  ]

96:                                               ; preds = %94, %94
  %97 = add nuw nsw i64 %85, 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %99 = icmp eq i64 %97, 10
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = load i8, ptr %98, align 1, !tbaa !5, !noalias !14
  %102 = icmp eq i8 %101, 45
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = getelementptr inbounds nuw i8, ptr %86, i64 2
  br label %109

105:                                              ; preds = %100
  %106 = icmp eq i8 %101, 43
  %107 = getelementptr inbounds nuw i8, ptr %86, i64 2
  %108 = select i1 %106, ptr %107, ptr %98
  br label %109

109:                                              ; preds = %105, %103, %96
  %110 = phi ptr [ %104, %103 ], [ %108, %105 ], [ %98, %96 ]
  %111 = icmp eq ptr %110, %4
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = load i8, ptr %110, align 1, !tbaa !5, !noalias !14
  %114 = add i8 %113, -48
  %115 = icmp ult i8 %114, 10
  br i1 %115, label %116, label %124

116:                                              ; preds = %112, %121
  %117 = phi ptr [ %122, %121 ], [ %110, %112 ]
  %118 = load i8, ptr %117, align 1, !tbaa !5, !noalias !14
  %119 = add i8 %118, -48
  %120 = icmp ult i8 %119, 10
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = getelementptr inbounds nuw i8, ptr %117, i64 1
  %123 = icmp eq ptr %122, %4
  br i1 %123, label %124, label %116, !llvm.loop !17

124:                                              ; preds = %121, %116, %109, %112, %94, %84, %92, %83
  %125 = phi i1 [ false, %83 ], [ true, %92 ], [ false, %84 ], [ true, %94 ], [ true, %112 ], [ true, %109 ], [ true, %116 ], [ true, %121 ]
  %126 = phi ptr [ undef, %83 ], [ %86, %92 ], [ undef, %84 ], [ %86, %94 ], [ %86, %112 ], [ %86, %109 ], [ %4, %121 ], [ %117, %116 ]
  %127 = icmp ne ptr %126, null
  %128 = and i1 %125, %127
  %129 = ptrtoint ptr %126 to i64
  %130 = ptrtoint ptr %2 to i64
  %131 = sub i64 %129, %130
  %132 = select i1 %128, i64 %131, i64 -1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #7
  ret i64 %132
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_wrap.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!9 = distinct !{!9, !10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_12chars_formatE: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_12chars_formatE"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_12chars_formatE: argument 0"}
!16 = distinct !{!16, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_12chars_formatE"}
!17 = distinct !{!17, !12}
