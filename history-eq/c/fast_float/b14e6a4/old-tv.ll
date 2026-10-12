; ModuleID = 'history-eq/c/fast_float/b14e6a4/wrap.cpp'
source_filename = "history-eq/c/fast_float/b14e6a4/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs = private unnamed_addr constant [4 x i32] [i32 0, i32 1000, i32 100, i32 10], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 35) i64 @target_error(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
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
  switch i8 %3, label %34 [
    i8 45, label %100
    i8 48, label %25
  ]

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %27 = icmp eq i8 %5, 48
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = icmp eq i8 %8, 48
  br i1 %29, label %30, label %46

30:                                               ; preds = %28
  %31 = icmp eq i8 %11, 48
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = icmp eq i8 %14, 48
  br i1 %33, label %100, label %38

34:                                               ; preds = %1, %25
  %35 = phi i1 [ true, %1 ], [ false, %25 ]
  %36 = phi ptr [ %2, %1 ], [ %26, %25 ]
  %37 = load i32, ptr %36, align 1
  br label %66

38:                                               ; preds = %32
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %56

40:                                               ; preds = %30
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  br label %56

46:                                               ; preds = %28
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  br label %56

56:                                               ; preds = %40, %38, %46
  %57 = phi i64 [ %7, %46 ], [ %10, %40 ], [ %13, %38 ]
  %58 = phi ptr [ %47, %46 ], [ %41, %40 ], [ %39, %38 ]
  %59 = phi i32 [ %51, %46 ], [ %45, %40 ], [ 65280, %38 ]
  %60 = phi i32 [ %55, %46 ], [ 16711680, %40 ], [ 16711680, %38 ]
  %61 = trunc i64 %57 to i32
  %62 = and i32 %61, 255
  %63 = or disjoint i32 %59, %62
  %64 = or i32 %63, %60
  %65 = or i32 %64, -16777216
  br label %66

66:                                               ; preds = %56, %34
  %67 = phi i1 [ %35, %34 ], [ false, %56 ]
  %68 = phi ptr [ %36, %34 ], [ %58, %56 ]
  %69 = phi i32 [ %37, %34 ], [ %65, %56 ]
  %70 = add i32 %69, 1179010630
  %71 = add i32 %69, -808464432
  %72 = or i32 %70, %71
  %73 = and i32 %72, -2139062144
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %66
  %76 = and i32 %72, 128
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %67, i64 22, i64 0
  %79 = select i1 %77, i64 0, i64 %78
  br label %100

80:                                               ; preds = %66
  %81 = mul i32 %71, 10
  %82 = lshr i32 %71, 8
  %83 = add i32 %81, %82
  %84 = and i32 %83, 16711935
  %85 = mul i32 %84, 6553601
  br i1 %67, label %86, label %100

86:                                               ; preds = %80
  %87 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %88 = load i8, ptr %87, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, -48
  %91 = icmp ugt i32 %90, 9
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = icmp ugt i32 %85, 429522943
  br i1 %93, label %100, label %94

94:                                               ; preds = %92
  %95 = and i32 %85, 536805376
  %96 = icmp eq i32 %95, 429457408
  %97 = icmp samesign ugt i32 %90, 5
  %98 = and i1 %96, %97
  %99 = select i1 %98, i64 34, i64 0
  br label %100

100:                                              ; preds = %32, %75, %94, %1, %92, %80, %86
  %101 = phi i64 [ 22, %1 ], [ 0, %86 ], [ 0, %80 ], [ 34, %92 ], [ %99, %94 ], [ %79, %75 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret i64 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_consumed(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
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
  switch i8 %3, label %40 [
    i8 45, label %122
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
  br i1 %34, label %122, label %35

35:                                               ; preds = %33, %31, %29, %27
  %36 = phi ptr [ %6, %27 ], [ %9, %29 ], [ %12, %31 ], [ %15, %33 ]
  %37 = phi i8 [ %5, %27 ], [ %8, %29 ], [ %11, %31 ], [ %14, %33 ]
  %38 = phi i64 [ 1, %27 ], [ 2, %29 ], [ 3, %31 ], [ 4, %33 ]
  %39 = ptrtoint ptr %36 to i64
  br label %40

40:                                               ; preds = %1, %35
  %41 = phi i64 [ %39, %35 ], [ %25, %1 ]
  %42 = phi i8 [ %37, %35 ], [ %3, %1 ]
  %43 = phi i64 [ %38, %35 ], [ 0, %1 ]
  %44 = getelementptr i8, ptr %2, i64 %43
  %45 = icmp ugt ptr %44, %2
  %46 = sub i64 %26, %41
  %47 = icmp ugt i64 %46, 3
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, ptr %44, align 1
  br label %70

50:                                               ; preds = %40
  %51 = zext i8 %42 to i32
  %52 = icmp samesign ugt i64 %46, 1
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %44, i64 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = icmp eq i64 %46, 3
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds nuw i8, ptr %44, i64 2
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  br label %64

64:                                               ; preds = %59, %53, %50
  %65 = phi i32 [ %57, %59 ], [ %57, %53 ], [ 65280, %50 ]
  %66 = phi i32 [ %63, %59 ], [ 16711680, %53 ], [ 16711680, %50 ]
  %67 = or disjoint i32 %65, %51
  %68 = or i32 %67, %66
  %69 = or i32 %68, -16777216
  br label %70

70:                                               ; preds = %64, %48
  %71 = phi i32 [ %49, %48 ], [ %69, %64 ]
  %72 = add i32 %71, 1179010630
  %73 = add i32 %71, -808464432
  %74 = or i32 %72, %73
  %75 = and i32 %74, -2139062144
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %75, i1 true)
  %79 = icmp samesign ult i32 %78, 8
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = select i1 %45, ptr %44, ptr %2
  br label %122

82:                                               ; preds = %77
  %83 = lshr i32 %78, 3
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds nuw i8, ptr %44, i64 %84
  br label %122

86:                                               ; preds = %70
  %87 = mul i32 %73, 10
  %88 = lshr i32 %73, 8
  %89 = add i32 %87, %88
  %90 = and i32 %89, 16711935
  %91 = mul i32 %90, 6553601
  %92 = icmp ugt i64 %46, 4
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = getelementptr inbounds nuw i8, ptr %44, i64 4
  %95 = load i8, ptr %94, align 1
  %96 = sext i8 %95 to i32
  %97 = add nsw i32 %96, -48
  %98 = icmp ugt i32 %97, 9
  br i1 %98, label %99, label %101

99:                                               ; preds = %93, %86
  %100 = getelementptr inbounds nuw i8, ptr %44, i64 4
  br label %122

101:                                              ; preds = %93
  %102 = icmp eq i64 %46, 5
  br i1 %102, label %111, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds nuw i8, ptr %44, i64 5
  %105 = load i8, ptr %104, align 1
  %106 = sext i8 %105 to i32
  %107 = add nsw i32 %106, -58
  %108 = icmp ult i32 %107, -10
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = getelementptr i8, ptr %44, i64 6
  br label %122

111:                                              ; preds = %103, %101
  %112 = icmp ugt i32 %91, 429522943
  br i1 %112, label %118, label %113

113:                                              ; preds = %111
  %114 = and i32 %91, 536805376
  %115 = icmp eq i32 %114, 429457408
  %116 = icmp samesign ugt i32 %97, 5
  %117 = and i1 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %113, %111
  %119 = getelementptr inbounds nuw i8, ptr %44, i64 5
  br label %122

120:                                              ; preds = %113
  %121 = getelementptr inbounds nuw i8, ptr %44, i64 5
  br label %122

122:                                              ; preds = %33, %109, %80, %1, %82, %99, %118, %120
  %123 = phi ptr [ %2, %1 ], [ %100, %99 ], [ %119, %118 ], [ %121, %120 ], [ %110, %109 ], [ %85, %82 ], [ %81, %80 ], [ %18, %33 ]
  %124 = ptrtoint ptr %123 to i64
  %125 = sub i64 %124, %25
  %126 = and i64 %125, 4294967295
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret i64 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 65536) i64 @target_value(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
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
  switch i8 %3, label %34 [
    i8 45, label %122
    i8 48, label %25
  ]

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %27 = icmp eq i8 %5, 48
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = icmp eq i8 %8, 48
  br i1 %29, label %30, label %46

30:                                               ; preds = %28
  %31 = icmp eq i8 %11, 48
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = icmp eq i8 %14, 48
  br i1 %33, label %122, label %38

34:                                               ; preds = %1, %25
  %35 = phi i1 [ true, %1 ], [ false, %25 ]
  %36 = phi ptr [ %2, %1 ], [ %26, %25 ]
  %37 = load i32, ptr %36, align 1
  br label %66

38:                                               ; preds = %32
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %56

40:                                               ; preds = %30
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  br label %56

46:                                               ; preds = %28
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  br label %56

56:                                               ; preds = %40, %38, %46
  %57 = phi i64 [ %7, %46 ], [ %10, %40 ], [ %13, %38 ]
  %58 = phi ptr [ %47, %46 ], [ %41, %40 ], [ %39, %38 ]
  %59 = phi i32 [ %51, %46 ], [ %45, %40 ], [ 65280, %38 ]
  %60 = phi i32 [ %55, %46 ], [ 16711680, %40 ], [ 16711680, %38 ]
  %61 = trunc i64 %57 to i32
  %62 = and i32 %61, 255
  %63 = or disjoint i32 %59, %62
  %64 = or i32 %63, %60
  %65 = or i32 %64, -16777216
  br label %66

66:                                               ; preds = %56, %34
  %67 = phi i1 [ %35, %34 ], [ false, %56 ]
  %68 = phi ptr [ %36, %34 ], [ %58, %56 ]
  %69 = phi i32 [ %37, %34 ], [ %65, %56 ]
  %70 = add i32 %69, 1179010630
  %71 = add i32 %69, -808464432
  %72 = or i32 %70, %71
  %73 = and i32 %72, -2139062144
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %66
  %76 = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %73, i1 true)
  %77 = icmp samesign ult i32 %76, 8
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = select i1 %67, i32 123, i32 0
  br label %122

80:                                               ; preds = %75
  %81 = lshr i32 %76, 3
  %82 = and i32 %76, 24
  %83 = sub nuw nsw i32 32, %82
  %84 = lshr i32 -1, %83
  %85 = and i32 %84, %69
  %86 = and i32 %84, 808464384
  %87 = xor i32 %86, 808464384
  %88 = or i32 %87, %85
  %89 = add nsw i32 %88, -808464432
  %90 = mul nsw i32 %89, 10
  %91 = lshr i32 %89, 8
  %92 = add nsw i32 %90, %91
  %93 = and i32 %92, 16711935
  %94 = mul i32 %93, 6553601
  %95 = lshr i32 %94, 16
  %96 = zext nneg i32 %81 to i64
  %97 = getelementptr inbounds nuw [4 x i32], ptr @__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4
  %99 = udiv i32 %95, %98
  br label %122

100:                                              ; preds = %66
  %101 = mul i32 %71, 10
  %102 = lshr i32 %71, 8
  %103 = add i32 %101, %102
  %104 = and i32 %103, 16711935
  %105 = mul i32 %104, 6553601
  %106 = lshr i32 %105, 16
  br i1 %67, label %107, label %122

107:                                              ; preds = %100
  %108 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %109 = load i8, ptr %108, align 1
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %110, -48
  %112 = icmp ugt i32 %111, 9
  br i1 %112, label %122, label %113

113:                                              ; preds = %107
  %114 = icmp ugt i32 %105, 429522943
  br i1 %114, label %122, label %115

115:                                              ; preds = %113
  %116 = icmp eq i32 %106, 6553
  %117 = icmp samesign ugt i32 %111, 5
  %118 = and i1 %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = mul nuw nsw i32 %106, 10
  %121 = add nuw nsw i32 %111, %120
  br label %122

122:                                              ; preds = %32, %78, %1, %113, %115, %100, %107, %80, %119
  %123 = phi i32 [ 123, %1 ], [ %121, %119 ], [ %99, %80 ], [ %106, %107 ], [ %106, %100 ], [ 123, %115 ], [ 123, %113 ], [ %79, %78 ], [ 0, %32 ]
  %124 = and i32 %123, 65535
  %125 = zext nneg i32 %124 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret i64 %125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 1099511627776) i64 @probe(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca [8 x i8], align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
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
  br i1 %33, label %115, label %34

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
  br i1 %42, label %115, label %36

43:                                               ; preds = %36, %34
  %44 = phi i8 [ %6, %34 ], [ %37, %36 ]
  %45 = phi ptr [ %5, %34 ], [ %41, %36 ]
  %46 = ptrtoint ptr %45 to i64
  %47 = icmp ugt ptr %45, %5
  %48 = sub i64 %30, %46
  %49 = icmp ugt i64 %48, 3
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, ptr %45, align 1
  br label %72

52:                                               ; preds = %43
  %53 = zext i8 %44 to i32
  %54 = icmp samesign ugt i64 %48, 1
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = getelementptr inbounds nuw i8, ptr %45, i64 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = icmp eq i64 %48, 3
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = getelementptr inbounds nuw i8, ptr %45, i64 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 16
  br label %66

66:                                               ; preds = %61, %55, %52
  %67 = phi i32 [ %59, %61 ], [ %59, %55 ], [ 65280, %52 ]
  %68 = phi i32 [ %65, %61 ], [ 16711680, %55 ], [ 16711680, %52 ]
  %69 = or disjoint i32 %67, %53
  %70 = or i32 %69, %68
  %71 = or i32 %70, -16777216
  br label %72

72:                                               ; preds = %66, %50
  %73 = phi i32 [ %51, %50 ], [ %71, %66 ]
  %74 = add i32 %73, 1179010630
  %75 = add i32 %73, -808464432
  %76 = or i32 %74, %75
  %77 = and i32 %76, -2139062144
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = and i32 %76, 128
  %81 = icmp eq i32 %80, 0
  %82 = or i1 %81, %47
  %83 = select i1 %82, i64 0, i64 22
  br label %115

84:                                               ; preds = %72
  %85 = mul i32 %75, 10
  %86 = lshr i32 %75, 8
  %87 = add i32 %85, %86
  %88 = and i32 %87, 16711935
  %89 = mul i32 %88, 6553601
  %90 = icmp ugt i64 %48, 4
  br i1 %90, label %91, label %115

91:                                               ; preds = %84
  %92 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %93 = load i8, ptr %92, align 1
  %94 = sext i8 %93 to i32
  %95 = add nsw i32 %94, -48
  %96 = icmp ugt i32 %95, 9
  br i1 %96, label %115, label %97

97:                                               ; preds = %91
  %98 = icmp eq i64 %48, 5
  br i1 %98, label %107, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds nuw i8, ptr %45, i64 5
  %101 = load i8, ptr %100, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %102, -48
  %104 = icmp ult i32 %103, 10
  %105 = icmp ugt i32 %89, 429522943
  %106 = or i1 %104, %105
  br i1 %106, label %115, label %109

107:                                              ; preds = %97
  %108 = icmp ugt i32 %89, 429522943
  br i1 %108, label %115, label %109

109:                                              ; preds = %99, %107
  %110 = and i32 %89, 536805376
  %111 = icmp eq i32 %110, 429457408
  %112 = icmp samesign ugt i32 %95, 5
  %113 = and i1 %111, %112
  %114 = select i1 %113, i64 34, i64 0
  br label %115

115:                                              ; preds = %39, %99, %79, %109, %107, %84, %91, %2
  %116 = phi i64 [ 22, %2 ], [ 0, %91 ], [ 0, %84 ], [ 34, %107 ], [ %114, %109 ], [ %83, %79 ], [ 34, %99 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store i8 %6, ptr %4, align 1
  %117 = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %8, ptr %117, align 1
  %118 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %11, ptr %118, align 1
  %119 = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %14, ptr %119, align 1
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %17, ptr %120, align 1
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %20, ptr %121, align 1
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %23, ptr %122, align 1
  %123 = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 %26, ptr %123, align 1
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 %28
  %125 = ptrtoint ptr %4 to i64
  %126 = ptrtoint ptr %124 to i64
  br i1 %33, label %229, label %127

127:                                              ; preds = %115
  %128 = icmp eq i8 %6, 48
  br i1 %128, label %132, label %138

129:                                              ; preds = %132
  %130 = load i8, ptr %134, align 1
  %131 = icmp eq i8 %130, 48
  br i1 %131, label %132, label %136

132:                                              ; preds = %127, %129
  %133 = phi ptr [ %134, %129 ], [ %4, %127 ]
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 1
  %135 = icmp eq ptr %134, %124
  br i1 %135, label %229, label %129

136:                                              ; preds = %129
  %137 = ptrtoint ptr %134 to i64
  br label %138

138:                                              ; preds = %136, %127
  %139 = phi i64 [ %137, %136 ], [ %125, %127 ]
  %140 = phi i8 [ %130, %136 ], [ %6, %127 ]
  %141 = phi ptr [ %134, %136 ], [ %4, %127 ]
  %142 = icmp ugt ptr %141, %4
  %143 = sub i64 %126, %139
  %144 = icmp ugt i64 %143, 3
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, ptr %141, align 1
  br label %167

147:                                              ; preds = %138
  %148 = zext i8 %140 to i32
  %149 = icmp samesign ugt i64 %143, 1
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, 8
  %155 = icmp eq i64 %143, 3
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 16
  br label %161

161:                                              ; preds = %156, %150, %147
  %162 = phi i32 [ %154, %156 ], [ %154, %150 ], [ 65280, %147 ]
  %163 = phi i32 [ %160, %156 ], [ 16711680, %150 ], [ 16711680, %147 ]
  %164 = or disjoint i32 %162, %148
  %165 = or i32 %164, %163
  %166 = or i32 %165, -16777216
  br label %167

167:                                              ; preds = %161, %145
  %168 = phi i32 [ %146, %145 ], [ %166, %161 ]
  %169 = add i32 %168, 1179010630
  %170 = add i32 %168, -808464432
  %171 = or i32 %169, %170
  %172 = and i32 %171, -2139062144
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %167
  %175 = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %172, i1 true)
  %176 = icmp samesign ult i32 %175, 8
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = select i1 %142, ptr %141, ptr %4
  br label %229

179:                                              ; preds = %174
  %180 = lshr i32 %175, 3
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %141, i64 %181
  br label %229

183:                                              ; preds = %167
  %184 = mul i32 %170, 10
  %185 = lshr i32 %170, 8
  %186 = add i32 %184, %185
  %187 = and i32 %186, 16711935
  %188 = mul i32 %187, 6553601
  %189 = icmp ugt i64 %143, 4
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = getelementptr inbounds nuw i8, ptr %141, i64 4
  %192 = load i8, ptr %191, align 1
  %193 = sext i8 %192 to i32
  %194 = add nsw i32 %193, -48
  %195 = icmp ugt i32 %194, 9
  br i1 %195, label %196, label %198

196:                                              ; preds = %190, %183
  %197 = getelementptr inbounds nuw i8, ptr %141, i64 4
  br label %229

198:                                              ; preds = %190
  %199 = icmp eq i64 %143, 5
  br i1 %199, label %218, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds nuw i8, ptr %141, i64 5
  %202 = load i8, ptr %201, align 1
  %203 = sext i8 %202 to i32
  %204 = add nsw i32 %203, -58
  %205 = icmp ult i32 %204, -10
  br i1 %205, label %218, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds nuw i8, ptr %141, i64 6
  %208 = icmp ult ptr %207, %124
  br i1 %208, label %209, label %229

209:                                              ; preds = %206, %215
  %210 = phi ptr [ %216, %215 ], [ %207, %206 ]
  %211 = load i8, ptr %210, align 1
  %212 = sext i8 %211 to i32
  %213 = add nsw i32 %212, -48
  %214 = icmp ult i32 %213, 10
  br i1 %214, label %215, label %229

215:                                              ; preds = %209
  %216 = getelementptr inbounds nuw i8, ptr %210, i64 1
  %217 = icmp ult ptr %216, %124
  br i1 %217, label %209, label %229

218:                                              ; preds = %200, %198
  %219 = icmp ugt i32 %188, 429522943
  br i1 %219, label %225, label %220

220:                                              ; preds = %218
  %221 = and i32 %188, 536805376
  %222 = icmp eq i32 %221, 429457408
  %223 = icmp samesign ugt i32 %194, 5
  %224 = and i1 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %220, %218
  %226 = getelementptr inbounds nuw i8, ptr %141, i64 5
  br label %229

227:                                              ; preds = %220
  %228 = getelementptr inbounds nuw i8, ptr %141, i64 5
  br label %229

229:                                              ; preds = %132, %209, %215, %177, %115, %179, %196, %206, %225, %227
  %230 = phi ptr [ %4, %115 ], [ %197, %196 ], [ %226, %225 ], [ %228, %227 ], [ %207, %206 ], [ %182, %179 ], [ %178, %177 ], [ %210, %209 ], [ %124, %215 ], [ %124, %132 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  store i8 %6, ptr %3, align 1
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %8, ptr %231, align 1
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %11, ptr %232, align 1
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %14, ptr %233, align 1
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %17, ptr %234, align 1
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %20, ptr %235, align 1
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %23, ptr %236, align 1
  %237 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %26, ptr %237, align 1
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 %28
  %239 = ptrtoint ptr %238 to i64
  br i1 %33, label %343, label %240

240:                                              ; preds = %229
  %241 = icmp eq i8 %6, 48
  br i1 %241, label %245, label %249

242:                                              ; preds = %245
  %243 = load i8, ptr %247, align 1
  %244 = icmp eq i8 %243, 48
  br i1 %244, label %245, label %249

245:                                              ; preds = %240, %242
  %246 = phi ptr [ %247, %242 ], [ %3, %240 ]
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 1
  %248 = icmp eq ptr %247, %238
  br i1 %248, label %343, label %242

249:                                              ; preds = %242, %240
  %250 = phi i8 [ %6, %240 ], [ %243, %242 ]
  %251 = phi ptr [ %3, %240 ], [ %247, %242 ]
  %252 = ptrtoint ptr %251 to i64
  %253 = icmp ugt ptr %251, %3
  %254 = sub i64 %239, %252
  %255 = icmp ugt i64 %254, 3
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, ptr %251, align 1
  br label %278

258:                                              ; preds = %249
  %259 = zext i8 %250 to i32
  %260 = icmp samesign ugt i64 %254, 1
  br i1 %260, label %261, label %272

261:                                              ; preds = %258
  %262 = getelementptr inbounds nuw i8, ptr %251, i64 1
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = shl nuw nsw i32 %264, 8
  %266 = icmp eq i64 %254, 3
  br i1 %266, label %267, label %272

267:                                              ; preds = %261
  %268 = getelementptr inbounds nuw i8, ptr %251, i64 2
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i32
  %271 = shl nuw nsw i32 %270, 16
  br label %272

272:                                              ; preds = %267, %261, %258
  %273 = phi i32 [ %265, %267 ], [ %265, %261 ], [ 65280, %258 ]
  %274 = phi i32 [ %271, %267 ], [ 16711680, %261 ], [ 16711680, %258 ]
  %275 = or disjoint i32 %273, %259
  %276 = or i32 %275, %274
  %277 = or i32 %276, -16777216
  br label %278

278:                                              ; preds = %272, %256
  %279 = phi i32 [ %257, %256 ], [ %277, %272 ]
  %280 = add i32 %279, 1179010630
  %281 = add i32 %279, -808464432
  %282 = or i32 %280, %281
  %283 = and i32 %282, -2139062144
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %310, label %285

285:                                              ; preds = %278
  %286 = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %283, i1 true)
  %287 = icmp samesign ult i32 %286, 8
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = select i1 %253, i32 0, i32 123
  br label %343

290:                                              ; preds = %285
  %291 = lshr i32 %286, 3
  %292 = and i32 %286, 24
  %293 = sub nuw nsw i32 32, %292
  %294 = lshr i32 -1, %293
  %295 = and i32 %294, %279
  %296 = and i32 %294, 808464384
  %297 = xor i32 %296, 808464384
  %298 = or i32 %297, %295
  %299 = add nsw i32 %298, -808464432
  %300 = mul nsw i32 %299, 10
  %301 = lshr i32 %299, 8
  %302 = add nsw i32 %300, %301
  %303 = and i32 %302, 16711935
  %304 = mul i32 %303, 6553601
  %305 = lshr i32 %304, 16
  %306 = zext nneg i32 %291 to i64
  %307 = getelementptr inbounds nuw [4 x i32], ptr @__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs, i64 0, i64 %306
  %308 = load i32, ptr %307, align 4
  %309 = udiv i32 %305, %308
  br label %343

310:                                              ; preds = %278
  %311 = mul i32 %281, 10
  %312 = lshr i32 %281, 8
  %313 = add i32 %311, %312
  %314 = and i32 %313, 16711935
  %315 = mul i32 %314, 6553601
  %316 = lshr i32 %315, 16
  %317 = icmp ugt i64 %254, 4
  br i1 %317, label %318, label %343

318:                                              ; preds = %310
  %319 = getelementptr inbounds nuw i8, ptr %251, i64 4
  %320 = load i8, ptr %319, align 1
  %321 = sext i8 %320 to i32
  %322 = add nsw i32 %321, -48
  %323 = icmp ugt i32 %322, 9
  br i1 %323, label %343, label %324

324:                                              ; preds = %318
  %325 = icmp eq i64 %254, 5
  br i1 %325, label %334, label %326

326:                                              ; preds = %324
  %327 = getelementptr inbounds nuw i8, ptr %251, i64 5
  %328 = load i8, ptr %327, align 1
  %329 = sext i8 %328 to i32
  %330 = add nsw i32 %329, -48
  %331 = icmp ult i32 %330, 10
  %332 = icmp ugt i32 %315, 429522943
  %333 = or i1 %331, %332
  br i1 %333, label %343, label %336

334:                                              ; preds = %324
  %335 = icmp ugt i32 %315, 429522943
  br i1 %335, label %343, label %336

336:                                              ; preds = %326, %334
  %337 = icmp eq i32 %316, 6553
  %338 = icmp samesign ugt i32 %322, 5
  %339 = and i1 %337, %338
  br i1 %339, label %343, label %340

340:                                              ; preds = %336
  %341 = mul nuw nsw i32 %316, 10
  %342 = add nuw nsw i32 %322, %341
  br label %343

343:                                              ; preds = %245, %326, %288, %334, %336, %310, %318, %229, %290, %340
  %344 = phi i32 [ 123, %229 ], [ %342, %340 ], [ %309, %290 ], [ %316, %318 ], [ %316, %310 ], [ 123, %336 ], [ 123, %334 ], [ %289, %288 ], [ 123, %326 ], [ 0, %245 ]
  %345 = ptrtoint ptr %230 to i64
  %346 = sub i64 %345, %125
  %347 = shl i64 %346, 8
  %348 = and i64 %347, 1099511627520
  %349 = or disjoint i64 %348, %116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  %350 = shl i32 %344, 16
  %351 = zext i32 %350 to i64
  %352 = or i64 %349, %351
  ret i64 %352
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
