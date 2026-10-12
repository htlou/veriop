; ModuleID = 'history-eq/c/fast_float/b14e6a4/wrap.cpp'
source_filename = "history-eq/c/fast_float/b14e6a4/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

@_ZN10fast_float8int_lutsIvE7chdigitE = linkonce_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 35) i64 @target_error(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  %3 = trunc i64 %0 to i8
  store i8 %3, ptr %2, align 1
  %4 = lshr i64 %0, 8
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %5, ptr %6, align 1
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
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 2
  switch i8 %3, label %37 [
    i8 45, label %154
    i8 48, label %28
  ]

28:                                               ; preds = %1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %30 = icmp eq i8 %5, 48
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = icmp eq i8 %8, 48
  br i1 %32, label %33, label %66

33:                                               ; preds = %31
  %34 = icmp eq i8 %11, 48
  br i1 %34, label %35, label %66

35:                                               ; preds = %33
  %36 = icmp eq i8 %14, 48
  br i1 %36, label %154, label %66

37:                                               ; preds = %1, %28
  %38 = phi i1 [ true, %1 ], [ false, %28 ]
  %39 = phi i1 [ false, %1 ], [ true, %28 ]
  %40 = phi ptr [ %2, %1 ], [ %29, %28 ]
  %41 = phi i64 [ 0, %1 ], [ 1, %28 ]
  %42 = load i32, ptr %40, align 1
  %43 = add i32 %42, 1179010630
  %44 = add i32 %42, -808464432
  %45 = or i32 %43, %44
  %46 = and i32 %45, -2139062144
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %37
  %49 = mul i32 %44, 10
  %50 = lshr i32 %44, 8
  %51 = add i32 %49, %50
  %52 = and i32 %51, 16711935
  %53 = mul i32 %52, 6553601
  %54 = lshr i32 %53, 16
  br i1 %39, label %154, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %154

61:                                               ; preds = %55
  %62 = mul nuw nsw i32 %54, 10
  %63 = add nuw nsw i32 %59, %62
  %64 = icmp samesign ugt i32 %63, 65535
  %65 = select i1 %64, i64 34, i64 0
  br label %154

66:                                               ; preds = %35, %33, %31, %37
  %67 = phi i1 [ %38, %37 ], [ false, %31 ], [ false, %33 ], [ false, %35 ]
  %68 = phi ptr [ %40, %37 ], [ %25, %35 ], [ %26, %33 ], [ %27, %31 ]
  %69 = phi i64 [ %41, %37 ], [ 4, %35 ], [ 3, %33 ], [ 2, %31 ]
  %70 = ptrtoint ptr %68 to i64
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %73 = load i8, ptr %72, align 1
  %74 = add i8 %73, -48
  %75 = icmp ult i8 %74, 10
  br i1 %75, label %76, label %137

76:                                               ; preds = %66
  %77 = zext nneg i8 %73 to i64
  %78 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i64
  %81 = add nuw nsw i64 %69, 1
  %82 = icmp eq i64 %81, 5
  br i1 %82, label %141, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %85 = load i8, ptr %84, align 1
  %86 = add i8 %85, -48
  %87 = icmp ult i8 %86, 10
  br i1 %87, label %88, label %137

88:                                               ; preds = %83
  %89 = zext nneg i8 %85 to i64
  %90 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = mul nuw nsw i64 %80, 10
  %93 = zext i8 %91 to i64
  %94 = add nuw nsw i64 %92, %93
  %95 = add nuw nsw i64 %69, 2
  %96 = icmp eq i64 %95, 5
  br i1 %96, label %141, label %97

97:                                               ; preds = %88
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %95
  %99 = load i8, ptr %98, align 1
  %100 = add i8 %99, -48
  %101 = icmp ult i8 %100, 10
  br i1 %101, label %102, label %137

102:                                              ; preds = %97
  %103 = zext nneg i8 %99 to i64
  %104 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = mul nuw nsw i64 %94, 10
  %107 = zext i8 %105 to i64
  %108 = add nuw nsw i64 %106, %107
  %109 = add nuw nsw i64 %69, 3
  %110 = icmp eq i64 %109, 5
  br i1 %110, label %141, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 %109
  %113 = load i8, ptr %112, align 1
  %114 = add i8 %113, -48
  %115 = icmp ult i8 %114, 10
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = zext nneg i8 %113 to i64
  %118 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1
  %120 = mul nuw nsw i64 %108, 10
  %121 = zext i8 %119 to i64
  %122 = add nuw nsw i64 %120, %121
  %123 = add nuw nsw i64 %69, 4
  %124 = icmp eq i64 %123, 5
  br i1 %124, label %141, label %125

125:                                              ; preds = %116
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 %123
  %127 = load i8, ptr %126, align 1
  %128 = add i8 %127, -48
  %129 = icmp ult i8 %128, 10
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = zext nneg i8 %127 to i64
  %132 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1
  %134 = mul i64 %122, 10
  %135 = zext i8 %133 to i64
  %136 = add i64 %134, %135
  br label %141

137:                                              ; preds = %125, %111, %97, %83, %66
  %138 = phi i64 [ 0, %66 ], [ %80, %83 ], [ %94, %97 ], [ %108, %111 ], [ %122, %125 ]
  %139 = phi i64 [ %69, %66 ], [ %81, %83 ], [ %95, %97 ], [ %109, %111 ], [ %123, %125 ]
  %140 = getelementptr inbounds nuw i8, ptr %2, i64 %139
  br label %141

141:                                              ; preds = %76, %88, %102, %116, %130, %137
  %142 = phi ptr [ %140, %137 ], [ %71, %130 ], [ %71, %116 ], [ %71, %102 ], [ %71, %88 ], [ %71, %76 ]
  %143 = phi i64 [ %138, %137 ], [ %80, %76 ], [ %94, %88 ], [ %108, %102 ], [ %122, %116 ], [ %136, %130 ]
  %144 = icmp eq ptr %142, %68
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = select i1 %67, i64 22, i64 0
  br label %154

147:                                              ; preds = %141
  %148 = icmp ugt i64 %143, 65535
  %149 = ptrtoint ptr %142 to i64
  %150 = sub i64 %149, %70
  %151 = icmp ugt i64 %150, 19
  %152 = select i1 %151, i1 true, i1 %148
  %153 = select i1 %152, i64 34, i64 0
  br label %154

154:                                              ; preds = %35, %145, %61, %1, %48, %55, %147
  %155 = phi i64 [ 22, %1 ], [ %153, %147 ], [ 0, %55 ], [ 0, %48 ], [ %65, %61 ], [ %146, %145 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_consumed(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  %3 = trunc i64 %0 to i8
  store i8 %3, ptr %2, align 1
  %4 = lshr i64 %0, 8
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %5, ptr %6, align 1
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
  %25 = ptrtoint ptr %2 to i64
  %26 = ptrtoint ptr %18 to i64
  switch i8 %3, label %39 [
    i8 45, label %123
    i8 48, label %27
  ]

27:                                               ; preds = %1
  %28 = icmp eq i8 %5, 48
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = icmp eq i8 %8, 48
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = icmp eq i8 %11, 48
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = icmp eq i8 %14, 48
  br i1 %34, label %123, label %35

35:                                               ; preds = %33, %31, %29, %27
  %36 = phi ptr [ %6, %27 ], [ %9, %29 ], [ %12, %31 ], [ %15, %33 ]
  %37 = phi i64 [ 1, %27 ], [ 2, %29 ], [ 3, %31 ], [ 4, %33 ]
  %38 = ptrtoint ptr %36 to i64
  br label %39

39:                                               ; preds = %1, %35
  %40 = phi i64 [ %38, %35 ], [ %25, %1 ]
  %41 = phi i64 [ %37, %35 ], [ 0, %1 ]
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = icmp ugt ptr %42, %2
  %44 = sub i64 %26, %40
  %45 = icmp ugt i64 %44, 3
  br i1 %45, label %46, label %99

46:                                               ; preds = %39
  %47 = load i32, ptr %42, align 1
  %48 = add i32 %47, 1179010630
  %49 = add i32 %47, -808464432
  %50 = or i32 %48, %49
  %51 = and i32 %50, -2139062144
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %46
  %54 = icmp eq i64 %44, 4
  br i1 %54, label %82, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = icmp ugt i64 %44, 5
  br i1 %62, label %63, label %80

63:                                               ; preds = %61
  %64 = add nuw nsw i64 %41, 5
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 %64
  %66 = load i8, ptr %65, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, -48
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = icmp samesign eq i64 %41, 0
  br i1 %71, label %123, label %72

72:                                               ; preds = %70, %72
  %73 = phi i64 [ %79, %72 ], [ %64, %70 ]
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, -48
  %78 = icmp ult i32 %77, 10
  %79 = add nuw nsw i64 %73, 1
  br i1 %78, label %72, label %121

80:                                               ; preds = %63, %61
  %81 = getelementptr inbounds nuw i8, ptr %42, i64 5
  br label %123

82:                                               ; preds = %55, %53
  %83 = getelementptr inbounds nuw i8, ptr %42, i64 4
  br label %123

84:                                               ; preds = %46
  %85 = icmp sgt i64 %44, 7
  br i1 %85, label %86, label %99

86:                                               ; preds = %84
  %87 = load i64, ptr %42, align 1
  %88 = add i64 %87, 5063812098665367110
  %89 = add i64 %87, -3472328296227680304
  %90 = or i64 %88, %89
  %91 = and i64 %90, -9187201950435737472
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = ptrtoint ptr %42 to i64
  br label %99

95:                                               ; preds = %86
  %96 = add i64 %41, %25
  %97 = add i64 %96, 8
  %98 = add nuw nsw i64 %41, 8
  br label %99

99:                                               ; preds = %39, %84, %93, %95
  %100 = phi i64 [ %40, %84 ], [ %40, %39 ], [ %94, %93 ], [ %97, %95 ]
  %101 = phi i64 [ %41, %84 ], [ %41, %39 ], [ %41, %93 ], [ %98, %95 ]
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %103 = sub i64 %26, %100
  %104 = getelementptr i8, ptr %102, i64 %103
  br label %105

105:                                              ; preds = %111, %99
  %106 = phi i64 [ %112, %111 ], [ %101, %99 ]
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = add i8 %108, -48
  %110 = icmp ult i8 %109, 10
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = add nuw nsw i64 %106, 1
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %116, label %105

114:                                              ; preds = %105
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 %106
  br label %116

116:                                              ; preds = %111, %114
  %117 = phi ptr [ %115, %114 ], [ %104, %111 ]
  %118 = icmp eq ptr %117, %42
  %119 = select i1 %43, ptr %42, ptr %2
  %120 = select i1 %118, ptr %119, ptr %117
  br label %123

121:                                              ; preds = %72
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  br label %123

123:                                              ; preds = %121, %33, %116, %80, %1, %70, %82
  %124 = phi ptr [ %2, %1 ], [ %83, %82 ], [ %18, %70 ], [ %81, %80 ], [ %120, %116 ], [ %18, %33 ], [ %122, %121 ]
  %125 = ptrtoint ptr %124 to i64
  %126 = sub i64 %125, %25
  %127 = and i64 %126, 4294967295
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 65536) i64 @target_value(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  %3 = trunc i64 %0 to i8
  store i8 %3, ptr %2, align 1
  %4 = lshr i64 %0, 8
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %5, ptr %6, align 1
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
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 2
  switch i8 %3, label %37 [
    i8 45, label %157
    i8 48, label %28
  ]

28:                                               ; preds = %1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %30 = icmp eq i8 %5, 48
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = icmp eq i8 %8, 48
  br i1 %32, label %33, label %69

33:                                               ; preds = %31
  %34 = icmp eq i8 %11, 48
  br i1 %34, label %35, label %69

35:                                               ; preds = %33
  %36 = icmp eq i8 %14, 48
  br i1 %36, label %157, label %69

37:                                               ; preds = %1, %28
  %38 = phi i1 [ true, %1 ], [ false, %28 ]
  %39 = phi i1 [ false, %1 ], [ true, %28 ]
  %40 = phi ptr [ %2, %1 ], [ %29, %28 ]
  %41 = phi i64 [ 0, %1 ], [ 1, %28 ]
  %42 = load i32, ptr %40, align 1
  %43 = add i32 %42, 1179010630
  %44 = add i32 %42, -808464432
  %45 = or i32 %43, %44
  %46 = and i32 %45, -2139062144
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %37
  %49 = mul i32 %44, 10
  %50 = lshr i32 %44, 8
  %51 = add i32 %49, %50
  %52 = and i32 %51, 16711935
  %53 = mul i32 %52, 6553601
  %54 = lshr i32 %53, 16
  br i1 %39, label %67, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = mul nuw nsw i32 %54, 10
  %63 = add nuw nsw i32 %59, %62
  %64 = icmp samesign ugt i32 %63, 65535
  %65 = select i1 %64, i32 123, i32 %63
  %66 = zext nneg i32 %65 to i64
  br label %157

67:                                               ; preds = %55, %48
  %68 = zext nneg i32 %54 to i64
  br label %157

69:                                               ; preds = %35, %33, %31, %37
  %70 = phi i1 [ %38, %37 ], [ false, %31 ], [ false, %33 ], [ false, %35 ]
  %71 = phi ptr [ %40, %37 ], [ %25, %35 ], [ %26, %33 ], [ %27, %31 ]
  %72 = phi i64 [ %41, %37 ], [ 4, %35 ], [ 3, %33 ], [ 2, %31 ]
  %73 = ptrtoint ptr %71 to i64
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %76 = load i8, ptr %75, align 1
  %77 = add i8 %76, -48
  %78 = icmp ult i8 %77, 10
  br i1 %78, label %79, label %140

79:                                               ; preds = %69
  %80 = zext nneg i8 %76 to i64
  %81 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i64
  %84 = add nuw nsw i64 %72, 1
  %85 = icmp eq i64 %84, 5
  br i1 %85, label %144, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  %88 = load i8, ptr %87, align 1
  %89 = add i8 %88, -48
  %90 = icmp ult i8 %89, 10
  br i1 %90, label %91, label %140

91:                                               ; preds = %86
  %92 = zext nneg i8 %88 to i64
  %93 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = mul nuw nsw i64 %83, 10
  %96 = zext i8 %94 to i64
  %97 = add nuw nsw i64 %95, %96
  %98 = add nuw nsw i64 %72, 2
  %99 = icmp eq i64 %98, 5
  br i1 %99, label %144, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %102 = load i8, ptr %101, align 1
  %103 = add i8 %102, -48
  %104 = icmp ult i8 %103, 10
  br i1 %104, label %105, label %140

105:                                              ; preds = %100
  %106 = zext nneg i8 %102 to i64
  %107 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = mul nuw nsw i64 %97, 10
  %110 = zext i8 %108 to i64
  %111 = add nuw nsw i64 %109, %110
  %112 = add nuw nsw i64 %72, 3
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %144, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 %112
  %116 = load i8, ptr %115, align 1
  %117 = add i8 %116, -48
  %118 = icmp ult i8 %117, 10
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = zext nneg i8 %116 to i64
  %121 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1
  %123 = mul nuw nsw i64 %111, 10
  %124 = zext i8 %122 to i64
  %125 = add nuw nsw i64 %123, %124
  %126 = add nuw nsw i64 %72, 4
  %127 = icmp eq i64 %126, 5
  br i1 %127, label %144, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %126
  %130 = load i8, ptr %129, align 1
  %131 = add i8 %130, -48
  %132 = icmp ult i8 %131, 10
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = zext nneg i8 %130 to i64
  %135 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1
  %137 = mul i64 %125, 10
  %138 = zext i8 %136 to i64
  %139 = add i64 %137, %138
  br label %144

140:                                              ; preds = %128, %114, %100, %86, %69
  %141 = phi i64 [ 0, %69 ], [ %83, %86 ], [ %97, %100 ], [ %111, %114 ], [ %125, %128 ]
  %142 = phi i64 [ %72, %69 ], [ %84, %86 ], [ %98, %100 ], [ %112, %114 ], [ %126, %128 ]
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 %142
  br label %144

144:                                              ; preds = %79, %91, %105, %119, %133, %140
  %145 = phi ptr [ %143, %140 ], [ %74, %133 ], [ %74, %119 ], [ %74, %105 ], [ %74, %91 ], [ %74, %79 ]
  %146 = phi i64 [ %141, %140 ], [ %83, %79 ], [ %97, %91 ], [ %111, %105 ], [ %125, %119 ], [ %139, %133 ]
  %147 = icmp eq ptr %145, %71
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = select i1 %70, i64 123, i64 0
  br label %157

150:                                              ; preds = %144
  %151 = ptrtoint ptr %145 to i64
  %152 = sub i64 %151, %73
  %153 = icmp ugt i64 %152, 19
  %154 = icmp ugt i64 %146, 65535
  %155 = select i1 %153, i1 true, i1 %154
  %156 = select i1 %155, i64 123, i64 %146
  br label %157

157:                                              ; preds = %35, %148, %61, %1, %67, %150
  %158 = phi i64 [ 123, %1 ], [ %68, %67 ], [ %156, %150 ], [ %66, %61 ], [ %149, %148 ], [ 0, %35 ]
  %159 = and i64 %158, 65535
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 1099511627776) i64 @probe(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca [8 x i8], align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #2
  %6 = trunc i64 %0 to i8
  store i8 %6, ptr %5, align 1
  %7 = lshr i64 %0, 8
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %0, 16
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 24
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %0, 32
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %17, ptr %18, align 1
  %19 = lshr i64 %0, 40
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %0, 48
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %23, ptr %24, align 1
  %25 = lshr i64 %0, 56
  %26 = trunc nuw i64 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 7
  store i8 %26, ptr %27, align 1
  %28 = zext i32 %1 to i64
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 %28
  %30 = ptrtoint ptr %29 to i64
  %31 = icmp eq i32 %1, 0
  %32 = icmp eq i8 %6, 45
  %33 = or i1 %31, %32
  br i1 %33, label %153, label %34

34:                                               ; preds = %2
  %35 = icmp eq i8 %6, 48
  br i1 %35, label %39, label %43

36:                                               ; preds = %39
  %37 = load i8, ptr %41, align 1
  %38 = icmp eq i8 %37, 48
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %36
  %40 = phi ptr [ %41, %36 ], [ %5, %34 ]
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 1
  %42 = icmp eq ptr %41, %29
  br i1 %42, label %153, label %36

43:                                               ; preds = %36, %34
  %44 = phi ptr [ %5, %34 ], [ %41, %36 ]
  %45 = ptrtoint ptr %44 to i64
  %46 = icmp ugt ptr %44, %5
  %47 = sub i64 %30, %45
  %48 = icmp ugt i64 %47, 3
  br i1 %48, label %49, label %113

49:                                               ; preds = %43
  %50 = load i32, ptr %44, align 1
  %51 = add i32 %50, 1179010630
  %52 = add i32 %50, -808464432
  %53 = or i32 %51, %52
  %54 = and i32 %53, -2139062144
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %49
  %57 = mul i32 %52, 10
  %58 = lshr i32 %52, 8
  %59 = add i32 %57, %58
  %60 = and i32 %59, 16711935
  %61 = mul i32 %60, 6553601
  %62 = lshr i32 %61, 16
  %63 = icmp eq i64 %47, 4
  br i1 %63, label %153, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds nuw i8, ptr %44, i64 4
  %66 = load i8, ptr %65, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, -48
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %153

70:                                               ; preds = %64
  %71 = mul nuw nsw i32 %62, 10
  %72 = add nuw nsw i32 %68, %71
  %73 = icmp ugt i64 %47, 5
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw i8, ptr %44, i64 5
  %76 = load i8, ptr %75, align 1
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %77, -48
  %79 = icmp ult i32 %78, 10
  br i1 %79, label %153, label %80

80:                                               ; preds = %74, %70
  %81 = icmp samesign ugt i32 %72, 65535
  %82 = select i1 %81, i64 34, i64 0
  br label %153

83:                                               ; preds = %49
  %84 = icmp sgt i64 %47, 7
  br i1 %84, label %85, label %113

85:                                               ; preds = %83, %96
  %86 = phi i64 [ %108, %96 ], [ 0, %83 ]
  %87 = phi ptr [ %109, %96 ], [ %44, %83 ]
  %88 = load i64, ptr %87, align 1
  %89 = add i64 %88, 5063812098665367110
  %90 = add i64 %88, -3472328296227680304
  %91 = or i64 %89, %90
  %92 = and i64 %91, -9187201950435737472
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  %95 = ptrtoint ptr %87 to i64
  br label %113

96:                                               ; preds = %85
  %97 = mul i64 %86, 100000000
  %98 = mul i64 %90, 10
  %99 = lshr i64 %90, 8
  %100 = add i64 %98, %99
  %101 = and i64 %100, 1095216660735
  %102 = mul i64 %101, 4294967296000100
  %103 = lshr i64 %100, 16
  %104 = and i64 %103, 1095216660735
  %105 = mul i64 %104, 42949672960001
  %106 = add i64 %105, %102
  %107 = lshr i64 %106, 32
  %108 = add i64 %107, %97
  %109 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %110 = ptrtoint ptr %109 to i64
  %111 = sub i64 %30, %110
  %112 = icmp sgt i64 %111, 7
  br i1 %112, label %85, label %113

113:                                              ; preds = %96, %94, %83, %43
  %114 = phi i64 [ %45, %83 ], [ %45, %43 ], [ %95, %94 ], [ %110, %96 ]
  %115 = phi ptr [ %44, %83 ], [ %44, %43 ], [ %87, %94 ], [ %109, %96 ]
  %116 = phi i64 [ 0, %83 ], [ 0, %43 ], [ %86, %94 ], [ %108, %96 ]
  %117 = icmp eq ptr %115, %29
  br i1 %117, label %140, label %118

118:                                              ; preds = %113
  %119 = sub i64 %30, %114
  %120 = getelementptr i8, ptr %115, i64 %119
  br label %121

121:                                              ; preds = %127, %118
  %122 = phi i64 [ %133, %127 ], [ %116, %118 ]
  %123 = phi ptr [ %134, %127 ], [ %115, %118 ]
  %124 = load i8, ptr %123, align 1
  %125 = add i8 %124, -48
  %126 = icmp ult i8 %125, 10
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = zext nneg i8 %124 to i64
  %129 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = mul i64 %122, 10
  %132 = zext i8 %130 to i64
  %133 = add i64 %131, %132
  %134 = getelementptr inbounds nuw i8, ptr %123, i64 1
  %135 = icmp eq ptr %134, %29
  br i1 %135, label %136, label %121

136:                                              ; preds = %127, %121
  %137 = phi ptr [ %120, %127 ], [ %123, %121 ]
  %138 = phi i64 [ %133, %127 ], [ %122, %121 ]
  %139 = ptrtoint ptr %137 to i64
  br label %140

140:                                              ; preds = %136, %113
  %141 = phi i64 [ %139, %136 ], [ %114, %113 ]
  %142 = phi ptr [ %137, %136 ], [ %29, %113 ]
  %143 = phi i64 [ %138, %136 ], [ %116, %113 ]
  %144 = icmp eq ptr %142, %44
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = select i1 %46, i64 0, i64 22
  br label %153

147:                                              ; preds = %140
  %148 = sub i64 %141, %45
  %149 = icmp ugt i64 %148, 19
  %150 = icmp ugt i64 %143, 65535
  %151 = select i1 %149, i1 true, i1 %150
  %152 = select i1 %151, i64 34, i64 0
  br label %153

153:                                              ; preds = %39, %74, %145, %80, %56, %64, %2, %147
  %154 = phi i64 [ 22, %2 ], [ %152, %147 ], [ 0, %64 ], [ 0, %56 ], [ %82, %80 ], [ %146, %145 ], [ 34, %74 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #2
  store i8 %6, ptr %4, align 1
  %155 = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %8, ptr %155, align 1
  %156 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %11, ptr %156, align 1
  %157 = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %14, ptr %157, align 1
  %158 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %17, ptr %158, align 1
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %20, ptr %159, align 1
  %160 = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %23, ptr %160, align 1
  %161 = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 %26, ptr %161, align 1
  %162 = getelementptr inbounds nuw i8, ptr %4, i64 %28
  %163 = ptrtoint ptr %4 to i64
  %164 = ptrtoint ptr %162 to i64
  br i1 %33, label %257, label %165

165:                                              ; preds = %153
  %166 = icmp eq i8 %6, 48
  br i1 %166, label %170, label %176

167:                                              ; preds = %170
  %168 = load i8, ptr %172, align 1
  %169 = icmp eq i8 %168, 48
  br i1 %169, label %170, label %174

170:                                              ; preds = %165, %167
  %171 = phi ptr [ %172, %167 ], [ %4, %165 ]
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %173 = icmp eq ptr %172, %162
  br i1 %173, label %257, label %167

174:                                              ; preds = %167
  %175 = ptrtoint ptr %172 to i64
  br label %176

176:                                              ; preds = %174, %165
  %177 = phi i64 [ %175, %174 ], [ %163, %165 ]
  %178 = phi ptr [ %172, %174 ], [ %4, %165 ]
  %179 = icmp ugt ptr %178, %4
  %180 = sub i64 %164, %177
  %181 = icmp ugt i64 %180, 3
  br i1 %181, label %182, label %237

182:                                              ; preds = %176
  %183 = load i32, ptr %178, align 1
  %184 = add i32 %183, 1179010630
  %185 = add i32 %183, -808464432
  %186 = or i32 %184, %185
  %187 = and i32 %186, -2139062144
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %220

189:                                              ; preds = %182
  %190 = icmp eq i64 %180, 4
  br i1 %190, label %218, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds nuw i8, ptr %178, i64 4
  %193 = load i8, ptr %192, align 1
  %194 = sext i8 %193 to i32
  %195 = add nsw i32 %194, -48
  %196 = icmp ult i32 %195, 10
  br i1 %196, label %197, label %218

197:                                              ; preds = %191
  %198 = icmp ugt i64 %180, 5
  br i1 %198, label %199, label %216

199:                                              ; preds = %197
  %200 = getelementptr inbounds nuw i8, ptr %178, i64 5
  %201 = load i8, ptr %200, align 1
  %202 = sext i8 %201 to i32
  %203 = add nsw i32 %202, -48
  %204 = icmp ult i32 %203, 10
  br i1 %204, label %205, label %216

205:                                              ; preds = %199
  %206 = icmp eq ptr %200, %162
  br i1 %206, label %257, label %207

207:                                              ; preds = %205, %213
  %208 = phi ptr [ %214, %213 ], [ %200, %205 ]
  %209 = load i8, ptr %208, align 1
  %210 = sext i8 %209 to i32
  %211 = add nsw i32 %210, -48
  %212 = icmp ult i32 %211, 10
  br i1 %212, label %213, label %257

213:                                              ; preds = %207
  %214 = getelementptr inbounds nuw i8, ptr %208, i64 1
  %215 = icmp eq ptr %214, %162
  br i1 %215, label %257, label %207

216:                                              ; preds = %199, %197
  %217 = getelementptr inbounds nuw i8, ptr %178, i64 5
  br label %257

218:                                              ; preds = %191, %189
  %219 = getelementptr inbounds nuw i8, ptr %178, i64 4
  br label %257

220:                                              ; preds = %182
  %221 = icmp sgt i64 %180, 7
  br i1 %221, label %222, label %237

222:                                              ; preds = %220, %232
  %223 = phi ptr [ %233, %232 ], [ %178, %220 ]
  %224 = load i64, ptr %223, align 1
  %225 = add i64 %224, 5063812098665367110
  %226 = add i64 %224, -3472328296227680304
  %227 = or i64 %225, %226
  %228 = and i64 %227, -9187201950435737472
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %222
  %231 = ptrtoint ptr %223 to i64
  br label %237

232:                                              ; preds = %222
  %233 = getelementptr inbounds nuw i8, ptr %223, i64 8
  %234 = ptrtoint ptr %233 to i64
  %235 = sub i64 %164, %234
  %236 = icmp sgt i64 %235, 7
  br i1 %236, label %222, label %237

237:                                              ; preds = %232, %230, %220, %176
  %238 = phi i64 [ %177, %220 ], [ %177, %176 ], [ %231, %230 ], [ %234, %232 ]
  %239 = phi ptr [ %178, %220 ], [ %178, %176 ], [ %223, %230 ], [ %233, %232 ]
  %240 = icmp eq ptr %239, %162
  br i1 %240, label %252, label %241

241:                                              ; preds = %237
  %242 = sub i64 %164, %238
  %243 = getelementptr i8, ptr %239, i64 %242
  br label %244

244:                                              ; preds = %249, %241
  %245 = phi ptr [ %250, %249 ], [ %239, %241 ]
  %246 = load i8, ptr %245, align 1
  %247 = add i8 %246, -48
  %248 = icmp ult i8 %247, 10
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = getelementptr inbounds nuw i8, ptr %245, i64 1
  %251 = icmp eq ptr %250, %162
  br i1 %251, label %252, label %244

252:                                              ; preds = %244, %249, %237
  %253 = phi ptr [ %162, %237 ], [ %245, %244 ], [ %243, %249 ]
  %254 = icmp eq ptr %253, %178
  %255 = select i1 %179, ptr %178, ptr %4
  %256 = select i1 %254, ptr %255, ptr %253
  br label %257

257:                                              ; preds = %170, %207, %213, %252, %216, %153, %205, %218
  %258 = phi ptr [ %4, %153 ], [ %219, %218 ], [ %162, %205 ], [ %217, %216 ], [ %256, %252 ], [ %208, %207 ], [ %162, %213 ], [ %162, %170 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #2
  store i8 %6, ptr %3, align 1
  %259 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %8, ptr %259, align 1
  %260 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %11, ptr %260, align 1
  %261 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %14, ptr %261, align 1
  %262 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %17, ptr %262, align 1
  %263 = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %20, ptr %263, align 1
  %264 = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %23, ptr %264, align 1
  %265 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %26, ptr %265, align 1
  %266 = getelementptr inbounds nuw i8, ptr %3, i64 %28
  %267 = ptrtoint ptr %266 to i64
  br i1 %33, label %390, label %268

268:                                              ; preds = %257
  %269 = icmp eq i8 %6, 48
  br i1 %269, label %273, label %277

270:                                              ; preds = %273
  %271 = load i8, ptr %275, align 1
  %272 = icmp eq i8 %271, 48
  br i1 %272, label %273, label %277

273:                                              ; preds = %268, %270
  %274 = phi ptr [ %275, %270 ], [ %3, %268 ]
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 1
  %276 = icmp eq ptr %275, %266
  br i1 %276, label %390, label %270

277:                                              ; preds = %270, %268
  %278 = phi ptr [ %3, %268 ], [ %275, %270 ]
  %279 = ptrtoint ptr %278 to i64
  %280 = icmp ugt ptr %278, %3
  %281 = sub i64 %267, %279
  %282 = icmp ugt i64 %281, 3
  br i1 %282, label %283, label %350

283:                                              ; preds = %277
  %284 = load i32, ptr %278, align 1
  %285 = add i32 %284, 1179010630
  %286 = add i32 %284, -808464432
  %287 = or i32 %285, %286
  %288 = and i32 %287, -2139062144
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %320

290:                                              ; preds = %283
  %291 = mul i32 %286, 10
  %292 = lshr i32 %286, 8
  %293 = add i32 %291, %292
  %294 = and i32 %293, 16711935
  %295 = mul i32 %294, 6553601
  %296 = lshr i32 %295, 16
  %297 = icmp eq i64 %281, 4
  br i1 %297, label %318, label %298

298:                                              ; preds = %290
  %299 = getelementptr inbounds nuw i8, ptr %278, i64 4
  %300 = load i8, ptr %299, align 1
  %301 = sext i8 %300 to i32
  %302 = add nsw i32 %301, -48
  %303 = icmp ult i32 %302, 10
  br i1 %303, label %304, label %318

304:                                              ; preds = %298
  %305 = mul nuw nsw i32 %296, 10
  %306 = add nuw nsw i32 %302, %305
  %307 = icmp ugt i64 %281, 5
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = getelementptr inbounds nuw i8, ptr %278, i64 5
  %310 = load i8, ptr %309, align 1
  %311 = sext i8 %310 to i32
  %312 = add nsw i32 %311, -48
  %313 = icmp ult i32 %312, 10
  br i1 %313, label %390, label %314

314:                                              ; preds = %308, %304
  %315 = icmp samesign ugt i32 %306, 65535
  %316 = select i1 %315, i32 123, i32 %306
  %317 = zext nneg i32 %316 to i64
  br label %390

318:                                              ; preds = %298, %290
  %319 = zext nneg i32 %296 to i64
  br label %390

320:                                              ; preds = %283
  %321 = icmp sgt i64 %281, 7
  br i1 %321, label %322, label %350

322:                                              ; preds = %320, %333
  %323 = phi i64 [ %345, %333 ], [ 0, %320 ]
  %324 = phi ptr [ %346, %333 ], [ %278, %320 ]
  %325 = load i64, ptr %324, align 1
  %326 = add i64 %325, 5063812098665367110
  %327 = add i64 %325, -3472328296227680304
  %328 = or i64 %326, %327
  %329 = and i64 %328, -9187201950435737472
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %322
  %332 = ptrtoint ptr %324 to i64
  br label %350

333:                                              ; preds = %322
  %334 = mul i64 %323, 100000000
  %335 = mul i64 %327, 10
  %336 = lshr i64 %327, 8
  %337 = add i64 %335, %336
  %338 = and i64 %337, 1095216660735
  %339 = mul i64 %338, 4294967296000100
  %340 = lshr i64 %337, 16
  %341 = and i64 %340, 1095216660735
  %342 = mul i64 %341, 42949672960001
  %343 = add i64 %342, %339
  %344 = lshr i64 %343, 32
  %345 = add i64 %344, %334
  %346 = getelementptr inbounds nuw i8, ptr %324, i64 8
  %347 = ptrtoint ptr %346 to i64
  %348 = sub i64 %267, %347
  %349 = icmp sgt i64 %348, 7
  br i1 %349, label %322, label %350

350:                                              ; preds = %333, %331, %320, %277
  %351 = phi i64 [ %279, %320 ], [ %279, %277 ], [ %332, %331 ], [ %347, %333 ]
  %352 = phi ptr [ %278, %320 ], [ %278, %277 ], [ %324, %331 ], [ %346, %333 ]
  %353 = phi i64 [ 0, %320 ], [ 0, %277 ], [ %323, %331 ], [ %345, %333 ]
  %354 = icmp eq ptr %352, %266
  br i1 %354, label %377, label %355

355:                                              ; preds = %350
  %356 = sub i64 %267, %351
  %357 = getelementptr i8, ptr %352, i64 %356
  br label %358

358:                                              ; preds = %364, %355
  %359 = phi i64 [ %370, %364 ], [ %353, %355 ]
  %360 = phi ptr [ %371, %364 ], [ %352, %355 ]
  %361 = load i8, ptr %360, align 1
  %362 = add i8 %361, -48
  %363 = icmp ult i8 %362, 10
  br i1 %363, label %364, label %373

364:                                              ; preds = %358
  %365 = zext nneg i8 %361 to i64
  %366 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %365
  %367 = load i8, ptr %366, align 1
  %368 = mul i64 %359, 10
  %369 = zext i8 %367 to i64
  %370 = add i64 %368, %369
  %371 = getelementptr inbounds nuw i8, ptr %360, i64 1
  %372 = icmp eq ptr %371, %266
  br i1 %372, label %373, label %358

373:                                              ; preds = %364, %358
  %374 = phi ptr [ %357, %364 ], [ %360, %358 ]
  %375 = phi i64 [ %370, %364 ], [ %359, %358 ]
  %376 = ptrtoint ptr %374 to i64
  br label %377

377:                                              ; preds = %373, %350
  %378 = phi i64 [ %376, %373 ], [ %351, %350 ]
  %379 = phi ptr [ %374, %373 ], [ %266, %350 ]
  %380 = phi i64 [ %375, %373 ], [ %353, %350 ]
  %381 = icmp eq ptr %379, %278
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  %383 = select i1 %280, i64 0, i64 123
  br label %390

384:                                              ; preds = %377
  %385 = sub i64 %378, %279
  %386 = icmp ugt i64 %385, 19
  %387 = icmp ugt i64 %380, 65535
  %388 = select i1 %386, i1 true, i1 %387
  %389 = select i1 %388, i64 123, i64 %380
  br label %390

390:                                              ; preds = %273, %308, %382, %314, %257, %318, %384
  %391 = phi i64 [ 123, %257 ], [ %319, %318 ], [ %389, %384 ], [ %317, %314 ], [ %383, %382 ], [ 123, %308 ], [ 0, %273 ]
  %392 = ptrtoint ptr %258 to i64
  %393 = sub i64 %392, %163
  %394 = shl i64 %393, 8
  %395 = and i64 %394, 1099511627520
  %396 = or disjoint i64 %395, %154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #2
  %397 = shl i64 %391, 16
  %398 = and i64 %397, 4294901760
  %399 = or i64 %396, %398
  ret i64 %399
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
