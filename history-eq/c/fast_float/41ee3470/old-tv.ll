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
  %2 = and i64 %0, -1085102592571150096
  %3 = add i64 %0, 434041037028460038
  %4 = lshr i64 %3, 4
  %5 = and i64 %4, 1085102592571150095
  %6 = or disjoint i64 %5, %2
  %7 = icmp eq i64 %6, 3689348814741910323
  %8 = zext i1 %7 to i64
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_raw_value(i64 noundef %0) local_unnamed_addr #3 {
  %2 = and i64 %0, 1085102592571150095
  %3 = mul i64 %2, 2561
  %4 = lshr i64 %3, 8
  %5 = and i64 %4, 71777214294589695
  %6 = mul i64 %5, 6553601
  %7 = lshr i64 %6, 16
  %8 = and i64 %7, 281470681808895
  %9 = mul i64 %8, 42949672960001
  %10 = lshr i64 %9, 32
  ret i64 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -1, 4294967296) i64 @target_digit_value(i64 noundef %0) local_unnamed_addr #3 {
  %2 = trunc i64 %0 to i8
  %3 = add i8 %2, -48
  %4 = icmp ult i8 %3, 10
  br i1 %4, label %5, label %50

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
  br i1 %39, label %40, label %50

40:                                               ; preds = %5
  %41 = and i64 %0, 1085102592571150095
  %42 = mul i64 %41, 2561
  %43 = lshr i64 %42, 8
  %44 = and i64 %43, 71777214294589695
  %45 = mul i64 %44, 6553601
  %46 = lshr i64 %45, 16
  %47 = and i64 %46, 281470681808895
  %48 = mul i64 %47, 42949672960001
  %49 = lshr i64 %48, 32
  br label %50

50:                                               ; preds = %1, %5, %40
  %51 = phi i64 [ %49, %40 ], [ -1, %5 ], [ -1, %1 ]
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -1, 4294967296) i64 @target_guarded_value(i64 noundef %0) local_unnamed_addr #3 {
  %2 = and i64 %0, -1085102592571150096
  %3 = add i64 %0, 434041037028460038
  %4 = lshr i64 %3, 4
  %5 = and i64 %4, 1085102592571150095
  %6 = or disjoint i64 %5, %2
  %7 = icmp eq i64 %6, 3689348814741910323
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = and i64 %0, 1085102592571150095
  %10 = mul i64 %9, 2561
  %11 = lshr i64 %10, 8
  %12 = and i64 %11, 71777214294589695
  %13 = mul i64 %12, 6553601
  %14 = lshr i64 %13, 16
  %15 = and i64 %14, 281470681808895
  %16 = mul i64 %15, 42949672960001
  %17 = lshr i64 %16, 32
  br label %18

18:                                               ; preds = %1, %8
  %19 = phi i64 [ %17, %8 ], [ -1, %1 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 0, 2) i64 @target_parser_valid(i64 noundef %0) local_unnamed_addr #3 {
  ret i64 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @target_parser_mantissa(i64 noundef %0) local_unnamed_addr #5 {
  %2 = tail call noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0)
  ret i64 %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi1EEmm(i64 noundef %0) local_unnamed_addr #5 comdat {
  %2 = alloca [10 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #7
  store i16 11824, ptr %2, align 2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i64 %0, ptr %3, align 2
  %4 = load i8, ptr %2, align 2
  %5 = add i8 %4, -58
  %6 = icmp ult i8 %5, -10
  br i1 %6, label %91, label %7

7:                                                ; preds = %1
  %8 = zext nneg i8 %4 to i64
  %9 = add nsw i64 %8, -48
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = add i8 %11, -48
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %14, label %91

14:                                               ; preds = %7
  %15 = mul nuw nsw i64 %9, 10
  %16 = zext nneg i8 %11 to i64
  %17 = add nsw i64 %15, -48
  %18 = add nsw i64 %17, %16
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %20 = load i8, ptr %19, align 2
  %21 = add i8 %20, -48
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %23, label %91

23:                                               ; preds = %14
  %24 = mul nsw i64 %18, 10
  %25 = zext nneg i8 %20 to i64
  %26 = add nsw i64 %24, -48
  %27 = add i64 %26, %25
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %29 = load i8, ptr %28, align 1
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %91

32:                                               ; preds = %23
  %33 = mul i64 %27, 10
  %34 = zext nneg i8 %29 to i64
  %35 = add i64 %33, -48
  %36 = add i64 %35, %34
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %38 = load i8, ptr %37, align 2
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %91

41:                                               ; preds = %32
  %42 = mul i64 %36, 10
  %43 = zext nneg i8 %38 to i64
  %44 = add i64 %42, -48
  %45 = add i64 %44, %43
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %47 = load i8, ptr %46, align 1
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %50, label %91

50:                                               ; preds = %41
  %51 = mul i64 %45, 10
  %52 = zext nneg i8 %47 to i64
  %53 = add i64 %51, -48
  %54 = add i64 %53, %52
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %56 = load i8, ptr %55, align 2
  %57 = add i8 %56, -48
  %58 = icmp ult i8 %57, 10
  br i1 %58, label %59, label %91

59:                                               ; preds = %50
  %60 = mul i64 %54, 10
  %61 = zext nneg i8 %56 to i64
  %62 = add i64 %60, -48
  %63 = add i64 %62, %61
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %65 = load i8, ptr %64, align 1
  %66 = add i8 %65, -48
  %67 = icmp ult i8 %66, 10
  br i1 %67, label %68, label %91

68:                                               ; preds = %59
  %69 = mul i64 %63, 10
  %70 = zext nneg i8 %65 to i64
  %71 = add i64 %69, -48
  %72 = add i64 %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %74 = load i8, ptr %73, align 2
  %75 = add i8 %74, -48
  %76 = icmp ult i8 %75, 10
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = mul i64 %72, 10
  %79 = zext nneg i8 %74 to i64
  %80 = add i64 %78, -48
  %81 = add i64 %80, %79
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %83 = load i8, ptr %82, align 1
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
  %102 = load i64, ptr %101, align 1
  %103 = and i64 %102, -1085102592571150096
  %104 = add i64 %102, 434041037028460038
  %105 = lshr i64 %104, 4
  %106 = and i64 %105, 1085102592571150095
  %107 = or disjoint i64 %106, %103
  %108 = icmp eq i64 %107, 3689348814741910323
  br i1 %108, label %109, label %125

109:                                              ; preds = %100
  %110 = mul i64 %94, 100000000
  %111 = and i64 %102, 1085102592571150095
  %112 = mul i64 %111, 2561
  %113 = lshr i64 %112, 8
  %114 = and i64 %113, 71777214294589695
  %115 = mul i64 %114, 6553601
  %116 = lshr i64 %115, 16
  %117 = and i64 %116, 281470681808895
  %118 = mul i64 %117, 42949672960001
  %119 = lshr i64 %118, 32
  %120 = add i64 %119, %110
  br label %121

121:                                              ; preds = %109, %97
  %122 = phi i64 [ %120, %109 ], [ %94, %97 ]
  %123 = phi i64 [ %99, %109 ], [ %98, %97 ]
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
  %132 = load i8, ptr %131, align 1
  %133 = add i8 %132, -48
  %134 = icmp ult i8 %133, 10
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = add nuw nsw i64 %129, 1
  %137 = mul i64 %130, 10
  %138 = zext nneg i8 %133 to i64
  %139 = add i64 %137, %138
  %140 = icmp eq i64 %136, 10
  br i1 %140, label %142, label %128

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
  %160 = load i8, ptr %159, align 1
  switch i8 %160, label %163 [
    i8 48, label %161
    i8 46, label %161
  ]

161:                                              ; preds = %158, %158
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 1
  br label %158

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
define linkonce_odr dso_local noundef i64 @_Z11parse_fieldILi2EEmm(i64 noundef %0) local_unnamed_addr #5 comdat {
  %2 = alloca [10 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #7
  store i16 11824, ptr %2, align 2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i64 %0, ptr %3, align 2
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %5 = load i8, ptr %2, align 2
  %6 = add i8 %5, -58
  %7 = icmp ult i8 %6, -10
  br i1 %7, label %53, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -48
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %13, label %53

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %15 = load i8, ptr %14, align 2
  %16 = add i8 %15, -48
  %17 = icmp ult i8 %16, 10
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %20 = load i8, ptr %19, align 1
  %21 = add i8 %20, -48
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %25 = load i8, ptr %24, align 2
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %35 = load i8, ptr %34, align 2
  %36 = add i8 %35, -48
  %37 = icmp ult i8 %36, 10
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %45 = load i8, ptr %44, align 2
  %46 = add i8 %45, -48
  %47 = icmp ult i8 %46, 10
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %50 = load i8, ptr %49, align 1
  %51 = add i8 %50, -48
  %52 = icmp ult i8 %51, 10
  br i1 %52, label %85, label %53

53:                                               ; preds = %48, %43, %38, %33, %28, %23, %18, %13, %8, %1
  %54 = phi i1 [ false, %1 ], [ false, %8 ], [ true, %13 ], [ true, %18 ], [ true, %23 ], [ true, %28 ], [ true, %33 ], [ true, %38 ], [ true, %43 ], [ true, %48 ]
  %55 = phi i64 [ 0, %1 ], [ 1, %8 ], [ 2, %13 ], [ 3, %18 ], [ 4, %23 ], [ 5, %28 ], [ 6, %33 ], [ 7, %38 ], [ 8, %43 ], [ 9, %48 ]
  %56 = phi i8 [ %5, %1 ], [ %10, %8 ], [ %15, %13 ], [ %20, %18 ], [ %25, %23 ], [ %30, %28 ], [ %35, %33 ], [ %40, %38 ], [ %45, %43 ], [ %50, %48 ]
  %57 = icmp eq i8 %56, 46
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = add nuw nsw i64 %55, 1
  br i1 %54, label %70, label %60

60:                                               ; preds = %58
  %61 = add nuw nsw i64 %55, 9
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %63 = load i64, ptr %62, align 1
  %64 = and i64 %63, -1085102592571150096
  %65 = add i64 %63, 434041037028460038
  %66 = lshr i64 %65, 4
  %67 = and i64 %66, 1085102592571150095
  %68 = or disjoint i64 %67, %64
  %69 = icmp eq i64 %68, 3689348814741910323
  br i1 %69, label %70, label %73

70:                                               ; preds = %60, %58
  %71 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %72 = icmp eq i64 %71, 10
  br i1 %72, label %85, label %73

73:                                               ; preds = %60, %70
  %74 = phi i64 [ %59, %60 ], [ %71, %70 ]
  br label %75

75:                                               ; preds = %73, %81
  %76 = phi i64 [ %82, %81 ], [ %74, %73 ]
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = add i8 %78, -48
  %80 = icmp ult i8 %79, 10
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = add nuw nsw i64 %76, 1
  %83 = icmp eq i64 %82, 10
  br i1 %83, label %85, label %75

84:                                               ; preds = %53
  br i1 %7, label %125, label %85

85:                                               ; preds = %75, %81, %48, %70, %84
  %86 = phi i64 [ %55, %84 ], [ 10, %70 ], [ 10, %48 ], [ 10, %81 ], [ %76, %75 ]
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %88 = getelementptr inbounds i8, ptr %87, i64 -1
  %89 = icmp eq ptr %2, %88
  %90 = load i8, ptr %2, align 2
  %91 = icmp eq i8 %90, 46
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %125, label %93

93:                                               ; preds = %85
  %94 = icmp eq i64 %86, 10
  br i1 %94, label %125, label %95

95:                                               ; preds = %93
  %96 = load i8, ptr %87, align 1
  switch i8 %96, label %125 [
    i8 101, label %97
    i8 69, label %97
  ]

97:                                               ; preds = %95, %95
  %98 = add nuw nsw i64 %86, 1
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = icmp eq i64 %98, 10
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = load i8, ptr %99, align 1
  %103 = icmp eq i8 %102, 45
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 2
  br label %110

106:                                              ; preds = %101
  %107 = icmp eq i8 %102, 43
  %108 = getelementptr inbounds nuw i8, ptr %87, i64 2
  %109 = select i1 %107, ptr %108, ptr %99
  br label %110

110:                                              ; preds = %106, %104, %97
  %111 = phi ptr [ %105, %104 ], [ %109, %106 ], [ %99, %97 ]
  %112 = icmp eq ptr %111, %4
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
  %124 = icmp eq ptr %123, %4
  br i1 %124, label %125, label %117

125:                                              ; preds = %122, %117, %110, %113, %95, %85, %93, %84
  %126 = phi i1 [ false, %84 ], [ true, %93 ], [ false, %85 ], [ true, %95 ], [ true, %113 ], [ true, %110 ], [ true, %117 ], [ true, %122 ]
  %127 = phi ptr [ undef, %84 ], [ %87, %93 ], [ undef, %85 ], [ %87, %95 ], [ %87, %113 ], [ %87, %110 ], [ %4, %122 ], [ %118, %117 ]
  %128 = icmp ne ptr %127, null
  %129 = and i1 %126, %128
  %130 = ptrtoint ptr %127 to i64
  %131 = ptrtoint ptr %2 to i64
  %132 = sub i64 %130, %131
  %133 = select i1 %129, i64 %132, i64 -1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #7
  ret i64 %133
}

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
