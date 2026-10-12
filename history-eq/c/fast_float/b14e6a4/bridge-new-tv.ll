; ModuleID = 'history-eq/c/fast_float/b14e6a4/wrap_bridge.cpp'
source_filename = "history-eq/c/fast_float/b14e6a4/wrap_bridge.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

@_ZN10fast_float8int_lutsIvE7chdigitE = linkonce_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_public5(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %7 = trunc i64 %0 to i8
  store i8 %7, ptr %2, align 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  store i8 %9, ptr %3, align 1
  %10 = lshr i64 %0, 16
  %11 = trunc i64 %10 to i8
  store i8 %11, ptr %4, align 1
  %12 = lshr i64 %0, 24
  %13 = trunc i64 %12 to i8
  store i8 %13, ptr %5, align 1
  %14 = lshr i64 %0, 32
  %15 = trunc i64 %14 to i8
  store i8 %15, ptr %6, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 5
  switch i8 %7, label %25 [
    i8 45, label %148
    i8 48, label %17
  ]

17:                                               ; preds = %1
  %18 = icmp eq i8 %9, 48
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = icmp eq i8 %11, 48
  br i1 %20, label %21, label %61

21:                                               ; preds = %19
  %22 = icmp eq i8 %13, 48
  br i1 %22, label %23, label %61

23:                                               ; preds = %21
  %24 = icmp eq i8 %15, 48
  br i1 %24, label %148, label %61

25:                                               ; preds = %17, %1
  %26 = phi i1 [ true, %1 ], [ false, %17 ]
  %27 = phi i1 [ false, %1 ], [ true, %17 ]
  %28 = phi ptr [ %2, %1 ], [ %3, %17 ]
  %29 = phi i64 [ 0, %1 ], [ 1, %17 ]
  %30 = load i32, ptr %28, align 1
  %31 = add i32 %30, 1179010630
  %32 = add i32 %30, -808464432
  %33 = or i32 %31, %32
  %34 = and i32 %33, -2139062144
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %25
  %37 = mul i32 %32, 10
  %38 = lshr i32 %32, 8
  %39 = add i32 %37, %38
  %40 = and i32 %39, 16711935
  %41 = mul i32 %40, 6553601
  %42 = lshr i32 %41, 16
  br i1 %27, label %58, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = mul nuw nsw i32 %42, 10
  %51 = add nuw nsw i32 %47, %50
  %52 = icmp samesign ugt i32 %51, 65535
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %28, i64 5
  br label %148

55:                                               ; preds = %49
  %56 = zext nneg i32 %51 to i64
  %57 = getelementptr inbounds nuw i8, ptr %28, i64 5
  br label %148

58:                                               ; preds = %43, %36
  %59 = zext nneg i32 %42 to i64
  %60 = getelementptr inbounds nuw i8, ptr %28, i64 4
  br label %148

61:                                               ; preds = %19, %21, %23, %25
  %62 = phi i1 [ %26, %25 ], [ false, %23 ], [ false, %21 ], [ false, %19 ]
  %63 = phi ptr [ %28, %25 ], [ %6, %23 ], [ %5, %21 ], [ %4, %19 ]
  %64 = phi i64 [ %29, %25 ], [ 4, %23 ], [ 3, %21 ], [ 2, %19 ]
  %65 = ptrtoint ptr %63 to i64
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %64
  %67 = load i8, ptr %66, align 1
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %70, label %131

70:                                               ; preds = %61
  %71 = zext nneg i8 %67 to i64
  %72 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i64
  %75 = add nuw nsw i64 %64, 1
  %76 = icmp eq i64 %75, 5
  br i1 %76, label %138, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %75
  %79 = load i8, ptr %78, align 1
  %80 = add i8 %79, -48
  %81 = icmp ult i8 %80, 10
  br i1 %81, label %82, label %131

82:                                               ; preds = %77
  %83 = zext nneg i8 %79 to i64
  %84 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = mul nuw nsw i64 %74, 10
  %87 = zext i8 %85 to i64
  %88 = add nuw nsw i64 %86, %87
  %89 = add nuw nsw i64 %64, 2
  %90 = icmp eq i64 %89, 5
  br i1 %90, label %138, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 %89
  %93 = load i8, ptr %92, align 1
  %94 = add i8 %93, -48
  %95 = icmp ult i8 %94, 10
  br i1 %95, label %96, label %131

96:                                               ; preds = %91
  %97 = zext nneg i8 %93 to i64
  %98 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = mul nuw nsw i64 %88, 10
  %101 = zext i8 %99 to i64
  %102 = add nuw nsw i64 %100, %101
  %103 = add nuw nsw i64 %64, 3
  %104 = icmp eq i64 %103, 5
  br i1 %104, label %138, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %107 = load i8, ptr %106, align 1
  %108 = add i8 %107, -48
  %109 = icmp ult i8 %108, 10
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = zext nneg i8 %107 to i64
  %112 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = mul nuw nsw i64 %102, 10
  %115 = zext i8 %113 to i64
  %116 = add nuw nsw i64 %114, %115
  %117 = add nuw nsw i64 %64, 4
  %118 = icmp eq i64 %117, 5
  br i1 %118, label %138, label %119

119:                                              ; preds = %110
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 %117
  %121 = load i8, ptr %120, align 1
  %122 = add i8 %121, -48
  %123 = icmp ult i8 %122, 10
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = zext nneg i8 %121 to i64
  %126 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1
  %128 = mul i64 %116, 10
  %129 = zext i8 %127 to i64
  %130 = add i64 %128, %129
  br label %138

131:                                              ; preds = %119, %105, %91, %77, %61
  %132 = phi i64 [ 0, %61 ], [ %74, %77 ], [ %88, %91 ], [ %102, %105 ], [ %116, %119 ]
  %133 = phi i64 [ %64, %61 ], [ %75, %77 ], [ %89, %91 ], [ %103, %105 ], [ %117, %119 ]
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 %133
  %135 = icmp eq ptr %134, %63
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  br i1 %62, label %148, label %137

137:                                              ; preds = %136
  br label %148

138:                                              ; preds = %70, %82, %96, %110, %124, %131
  %139 = phi i64 [ %132, %131 ], [ %74, %70 ], [ %88, %82 ], [ %102, %96 ], [ %116, %110 ], [ %130, %124 ]
  %140 = phi ptr [ %134, %131 ], [ %16, %124 ], [ %16, %110 ], [ %16, %96 ], [ %16, %82 ], [ %16, %70 ]
  %141 = ptrtoint ptr %140 to i64
  %142 = sub i64 %141, %65
  %143 = icmp ugt i64 %142, 19
  %144 = icmp ugt i64 %139, 65535
  %145 = select i1 %143, i1 true, i1 %144
  %146 = select i1 %145, i64 123, i64 %139
  %147 = select i1 %145, i64 34, i64 0
  br label %148

148:                                              ; preds = %1, %23, %53, %55, %58, %136, %137, %138
  %149 = phi i64 [ 123, %1 ], [ %59, %58 ], [ 123, %53 ], [ %56, %55 ], [ 0, %137 ], [ 123, %136 ], [ %146, %138 ], [ 0, %23 ]
  %150 = phi ptr [ %2, %1 ], [ %60, %58 ], [ %54, %53 ], [ %57, %55 ], [ %63, %137 ], [ %2, %136 ], [ %140, %138 ], [ %16, %23 ]
  %151 = phi i64 [ 22, %1 ], [ 0, %58 ], [ 34, %53 ], [ 0, %55 ], [ 0, %137 ], [ 22, %136 ], [ %147, %138 ], [ 0, %23 ]
  %152 = shl i64 %149, 32
  %153 = and i64 %152, 281470681743360
  %154 = ptrtoint ptr %150 to i64
  %155 = ptrtoint ptr %2 to i64
  %156 = sub i64 %154, %155
  %157 = shl i64 %156, 16
  %158 = or disjoint i64 %151, %153
  %159 = or i64 %158, %157
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_direct5(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %7 = trunc i64 %0 to i8
  store i8 %7, ptr %2, align 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  store i8 %9, ptr %3, align 1
  %10 = lshr i64 %0, 16
  %11 = trunc i64 %10 to i8
  store i8 %11, ptr %4, align 1
  %12 = lshr i64 %0, 24
  %13 = trunc i64 %12 to i8
  store i8 %13, ptr %5, align 1
  %14 = lshr i64 %0, 32
  %15 = trunc i64 %14 to i8
  store i8 %15, ptr %6, align 1
  %16 = icmp eq i8 %7, 45
  br i1 %16, label %148, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %19 = icmp eq i8 %7, 48
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = icmp eq i8 %9, 48
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = icmp eq i8 %11, 48
  br i1 %23, label %24, label %62

24:                                               ; preds = %22
  %25 = icmp eq i8 %13, 48
  br i1 %25, label %26, label %62

26:                                               ; preds = %24
  %27 = icmp eq i8 %15, 48
  br i1 %27, label %148, label %62

28:                                               ; preds = %20, %17
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %31 = load i32, ptr %29, align 1
  %32 = add i32 %31, 1179010630
  %33 = add i32 %31, -808464432
  %34 = or i32 %32, %33
  %35 = and i32 %34, -2139062144
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %28
  %38 = mul i32 %33, 10
  %39 = lshr i32 %33, 8
  %40 = add i32 %38, %39
  %41 = and i32 %40, 16711935
  %42 = mul i32 %41, 6553601
  %43 = lshr i32 %42, 16
  br i1 %19, label %59, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = mul nuw nsw i32 %43, 10
  %52 = add nuw nsw i32 %48, %51
  %53 = icmp samesign ugt i32 %52, 65535
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 5
  br label %148

56:                                               ; preds = %50
  %57 = zext nneg i32 %52 to i64
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 5
  br label %148

59:                                               ; preds = %44, %37
  %60 = zext nneg i32 %43 to i64
  %61 = getelementptr inbounds nuw i8, ptr %29, i64 4
  br label %148

62:                                               ; preds = %22, %24, %26, %28
  %63 = phi i64 [ %30, %28 ], [ 4, %26 ], [ 3, %24 ], [ 2, %22 ]
  %64 = phi ptr [ %29, %28 ], [ %6, %26 ], [ %5, %24 ], [ %4, %22 ]
  %65 = load i8, ptr %64, align 1
  %66 = add i8 %65, -48
  %67 = icmp ult i8 %66, 10
  br i1 %67, label %68, label %129

68:                                               ; preds = %62
  %69 = zext nneg i8 %65 to i64
  %70 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i64
  %73 = add nuw nsw i64 %63, 1
  %74 = icmp eq i64 %73, 5
  br i1 %74, label %136, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %77 = load i8, ptr %76, align 1
  %78 = add i8 %77, -48
  %79 = icmp ult i8 %78, 10
  br i1 %79, label %80, label %129

80:                                               ; preds = %75
  %81 = zext nneg i8 %77 to i64
  %82 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1
  %84 = mul nuw nsw i64 %72, 10
  %85 = zext i8 %83 to i64
  %86 = add nuw nsw i64 %84, %85
  %87 = add nuw nsw i64 %63, 2
  %88 = icmp eq i64 %87, 5
  br i1 %88, label %136, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 %87
  %91 = load i8, ptr %90, align 1
  %92 = add i8 %91, -48
  %93 = icmp ult i8 %92, 10
  br i1 %93, label %94, label %129

94:                                               ; preds = %89
  %95 = zext nneg i8 %91 to i64
  %96 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = mul nuw nsw i64 %86, 10
  %99 = zext i8 %97 to i64
  %100 = add nuw nsw i64 %98, %99
  %101 = add nuw nsw i64 %63, 3
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %136, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %105 = load i8, ptr %104, align 1
  %106 = add i8 %105, -48
  %107 = icmp ult i8 %106, 10
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = zext nneg i8 %105 to i64
  %110 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1
  %112 = mul nuw nsw i64 %100, 10
  %113 = zext i8 %111 to i64
  %114 = add nuw nsw i64 %112, %113
  %115 = add nuw nsw i64 %63, 4
  %116 = icmp eq i64 %115, 5
  br i1 %116, label %136, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 %115
  %119 = load i8, ptr %118, align 1
  %120 = add i8 %119, -48
  %121 = icmp ult i8 %120, 10
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = zext nneg i8 %119 to i64
  %124 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1
  %126 = mul i64 %114, 10
  %127 = zext i8 %125 to i64
  %128 = add i64 %126, %127
  br label %136

129:                                              ; preds = %117, %103, %89, %75, %62
  %130 = phi ptr [ %64, %62 ], [ %76, %75 ], [ %90, %89 ], [ %104, %103 ], [ %118, %117 ]
  %131 = phi i64 [ %63, %62 ], [ %73, %75 ], [ %87, %89 ], [ %101, %103 ], [ %115, %117 ]
  %132 = phi i64 [ 0, %62 ], [ %72, %75 ], [ %86, %89 ], [ %100, %103 ], [ %114, %117 ]
  %133 = icmp samesign eq i64 %131, %63
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  br i1 %19, label %135, label %148

135:                                              ; preds = %134
  br label %148

136:                                              ; preds = %68, %80, %94, %108, %122, %129
  %137 = phi i64 [ %131, %129 ], [ 5, %122 ], [ 5, %108 ], [ 5, %94 ], [ 5, %80 ], [ 5, %68 ]
  %138 = phi ptr [ %130, %129 ], [ %18, %122 ], [ %18, %108 ], [ %18, %94 ], [ %18, %80 ], [ %18, %68 ]
  %139 = phi i64 [ %132, %129 ], [ %72, %68 ], [ %86, %80 ], [ %100, %94 ], [ %114, %108 ], [ %128, %122 ]
  %140 = sub nsw i64 %137, %63
  %141 = icmp ugt i64 %140, 20
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = icmp eq i64 %140, 20
  %144 = icmp ugt i64 %139, 65535
  %145 = select i1 %143, i1 true, i1 %144
  %146 = select i1 %145, i64 123, i64 %139
  %147 = select i1 %145, i64 34, i64 0
  br label %148

148:                                              ; preds = %1, %26, %54, %56, %59, %134, %135, %136, %142
  %149 = phi i64 [ 123, %1 ], [ 0, %135 ], [ 123, %134 ], [ 123, %136 ], [ %57, %56 ], [ 123, %54 ], [ %60, %59 ], [ %146, %142 ], [ 0, %26 ]
  %150 = phi ptr [ %2, %1 ], [ %130, %135 ], [ %2, %134 ], [ %138, %136 ], [ %58, %56 ], [ %55, %54 ], [ %61, %59 ], [ %138, %142 ], [ %18, %26 ]
  %151 = phi i64 [ 22, %1 ], [ 0, %135 ], [ 22, %134 ], [ 34, %136 ], [ 0, %56 ], [ 34, %54 ], [ 0, %59 ], [ %147, %142 ], [ 0, %26 ]
  %152 = shl i64 %149, 32
  %153 = and i64 %152, 281470681743360
  %154 = ptrtoint ptr %150 to i64
  %155 = ptrtoint ptr %2 to i64
  %156 = sub i64 %154, %155
  %157 = shl i64 %156, 16
  %158 = or disjoint i64 %151, %153
  %159 = or i64 %158, %157
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %159
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
