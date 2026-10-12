; ModuleID = 'history-eq/c/fast_float/a7249f86/wrap.cpp'
source_filename = "history-eq/c/fast_float/a7249f86/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_Z19parse_twenty_digitsILb1EEmmm = comdat any

$_Z19parse_twenty_digitsILb0EEmmm = comdat any

$_ZN10fast_float23from_chars_int_advancedImcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE = comdat any

$_ZN10fast_float9space_lutIvE5valueE = comdat any

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

$_ZN10fast_float8int_lutsIvE13maxdigits_u64E = comdat any

$_ZN10fast_float8int_lutsIvE12min_safe_u64E = comdat any

@_ZN10fast_float9space_lutIvE5valueE = linkonce_odr dso_local local_unnamed_addr constant <{ [33 x i8], [223 x i8] }> <{ [33 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [223 x i8] zeroinitializer }>, comdat, align 16
@_ZN10fast_float8int_lutsIvE7chdigitE = linkonce_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16
@_ZN10fast_float8int_lutsIvE13maxdigits_u64E = linkonce_odr dso_local local_unnamed_addr constant [35 x i64] [i64 64, i64 41, i64 32, i64 28, i64 25, i64 23, i64 22, i64 21, i64 20, i64 19, i64 18, i64 18, i64 17, i64 17, i64 16, i64 16, i64 16, i64 16, i64 15, i64 15, i64 15, i64 15, i64 14, i64 14, i64 14, i64 14, i64 14, i64 14, i64 14, i64 13, i64 13, i64 13, i64 13, i64 13, i64 13], comdat, align 16
@_ZN10fast_float8int_lutsIvE12min_safe_u64E = linkonce_odr dso_local local_unnamed_addr constant [35 x i64] [i64 -9223372036854775808, i64 -6289078614652622815, i64 4611686018427387904, i64 7450580596923828125, i64 4738381338321616896, i64 3909821048582988049, i64 -9223372036854775808, i64 -6289078614652622815, i64 -8446744073709551616, i64 5559917313492231481, i64 2218611106740436992, i64 8650415919381337933, i64 2177953337809371136, i64 6568408355712890625, i64 1152921504606846976, i64 2862423051509815793, i64 6746640616477458432, i64 -3265617043834753317, i64 1638400000000000000, i64 3243919932521508681, i64 6221821273427820544, i64 -6853907749170801807, i64 876488338465357824, i64 1490116119384765625, i64 2481152873203736576, i64 4052555153018976267, i64 6502111422497947648, i64 -8186115360750949427, i64 -2503514073709551616, i64 787662783788549761, i64 1152921504606846976, i64 1667889514952984961, i64 2386420683693101056, i64 3379220508056640625, i64 4738381338321616896], comdat, align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @target_error(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i64 @_Z19parse_twenty_digitsILb1EEmmm(i64 noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z19parse_twenty_digitsILb1EEmmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [20 x i8], align 16
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #2
  %5 = trunc i64 %0 to i8
  %6 = and i8 %5, 7
  %7 = add nuw nsw i8 %6, 49
  store i8 %7, ptr %3, align 16, !tbaa !5
  br label %8

8:                                                ; preds = %22, %2
  %9 = phi i64 [ 1, %2 ], [ %33, %22 ]
  %10 = shl nuw nsw i64 %9, 2
  %11 = lshr i64 %0, %10
  %12 = freeze i64 %11
  %13 = and i64 %12, 15
  %14 = add nuw nsw i64 %13, 246
  %15 = icmp samesign ult i64 %13, 10
  %16 = select i1 %15, i64 %13, i64 %14
  %17 = trunc i64 %16 to i8
  %18 = or disjoint i8 %17, 48
  %19 = getelementptr inbounds nuw [20 x i8], ptr %3, i64 0, i64 %9
  store i8 %18, ptr %19, align 1, !tbaa !5
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %34, label %22, !llvm.loop !8

22:                                               ; preds = %8
  %23 = shl nuw nsw i64 %20, 2
  %24 = lshr i64 %0, %23
  %25 = freeze i64 %24
  %26 = and i64 %25, 15
  %27 = add nuw nsw i64 %26, 246
  %28 = icmp samesign ult i64 %26, 10
  %29 = select i1 %28, i64 %26, i64 %27
  %30 = trunc i64 %29 to i8
  %31 = or disjoint i8 %30, 48
  %32 = getelementptr inbounds nuw [20 x i8], ptr %3, i64 0, i64 %20
  store i8 %31, ptr %32, align 1, !tbaa !5
  %33 = add nuw nsw i64 %9, 2
  br label %8

34:                                               ; preds = %8
  %35 = and i64 %1, 15
  %36 = add nuw nsw i64 %35, 246
  %37 = icmp samesign ult i64 %35, 10
  %38 = select i1 %37, i64 %35, i64 %36
  %39 = trunc i64 %38 to i8
  %40 = or disjoint i8 %39, 48
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %40, ptr %41, align 16, !tbaa !5
  %42 = lshr i64 %1, 4
  %43 = and i64 %42, 15
  %44 = add nuw nsw i64 %43, 246
  %45 = icmp samesign ult i64 %43, 10
  %46 = select i1 %45, i64 %43, i64 %44
  %47 = trunc i64 %46 to i8
  %48 = or disjoint i8 %47, 48
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %48, ptr %49, align 1, !tbaa !5
  %50 = lshr i64 %1, 8
  %51 = and i64 %50, 15
  %52 = add nuw nsw i64 %51, 246
  %53 = icmp samesign ult i64 %51, 10
  %54 = select i1 %53, i64 %51, i64 %52
  %55 = trunc i64 %54 to i8
  %56 = or disjoint i8 %55, 48
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %56, ptr %57, align 2, !tbaa !5
  %58 = lshr i64 %1, 12
  %59 = and i64 %58, 15
  %60 = add nuw nsw i64 %59, 246
  %61 = icmp samesign ult i64 %59, 10
  %62 = select i1 %61, i64 %59, i64 %60
  %63 = trunc i64 %62 to i8
  %64 = or disjoint i8 %63, 48
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 %64, ptr %65, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #2
  store i64 0, ptr %4, align 8, !tbaa !10
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %67 = call { ptr, i32 } @_ZN10fast_float23from_chars_int_advancedImcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef nonnull %3, ptr noundef nonnull %66, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 5, i64 42949673006) #2
  %68 = extractvalue { ptr, i32 } %67, 1
  %69 = sext i32 %68 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #2
  ret i64 %69
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @target_value(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i64 @_Z19parse_twenty_digitsILb0EEmmm(i64 noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z19parse_twenty_digitsILb0EEmmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [20 x i8], align 16
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #2
  %5 = trunc i64 %0 to i8
  %6 = and i8 %5, 7
  %7 = add nuw nsw i8 %6, 49
  store i8 %7, ptr %3, align 16, !tbaa !5
  br label %8

8:                                                ; preds = %22, %2
  %9 = phi i64 [ 1, %2 ], [ %33, %22 ]
  %10 = shl nuw nsw i64 %9, 2
  %11 = lshr i64 %0, %10
  %12 = freeze i64 %11
  %13 = and i64 %12, 15
  %14 = add nuw nsw i64 %13, 246
  %15 = icmp samesign ult i64 %13, 10
  %16 = select i1 %15, i64 %13, i64 %14
  %17 = trunc i64 %16 to i8
  %18 = or disjoint i8 %17, 48
  %19 = getelementptr inbounds nuw [20 x i8], ptr %3, i64 0, i64 %9
  store i8 %18, ptr %19, align 1, !tbaa !5
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %34, label %22, !llvm.loop !12

22:                                               ; preds = %8
  %23 = shl nuw nsw i64 %20, 2
  %24 = lshr i64 %0, %23
  %25 = freeze i64 %24
  %26 = and i64 %25, 15
  %27 = add nuw nsw i64 %26, 246
  %28 = icmp samesign ult i64 %26, 10
  %29 = select i1 %28, i64 %26, i64 %27
  %30 = trunc i64 %29 to i8
  %31 = or disjoint i8 %30, 48
  %32 = getelementptr inbounds nuw [20 x i8], ptr %3, i64 0, i64 %20
  store i8 %31, ptr %32, align 1, !tbaa !5
  %33 = add nuw nsw i64 %9, 2
  br label %8

34:                                               ; preds = %8
  %35 = and i64 %1, 15
  %36 = add nuw nsw i64 %35, 246
  %37 = icmp samesign ult i64 %35, 10
  %38 = select i1 %37, i64 %35, i64 %36
  %39 = trunc i64 %38 to i8
  %40 = or disjoint i8 %39, 48
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %40, ptr %41, align 16, !tbaa !5
  %42 = lshr i64 %1, 4
  %43 = and i64 %42, 15
  %44 = add nuw nsw i64 %43, 246
  %45 = icmp samesign ult i64 %43, 10
  %46 = select i1 %45, i64 %43, i64 %44
  %47 = trunc i64 %46 to i8
  %48 = or disjoint i8 %47, 48
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %48, ptr %49, align 1, !tbaa !5
  %50 = lshr i64 %1, 8
  %51 = and i64 %50, 15
  %52 = add nuw nsw i64 %51, 246
  %53 = icmp samesign ult i64 %51, 10
  %54 = select i1 %53, i64 %51, i64 %52
  %55 = trunc i64 %54 to i8
  %56 = or disjoint i8 %55, 48
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %56, ptr %57, align 2, !tbaa !5
  %58 = lshr i64 %1, 12
  %59 = and i64 %58, 15
  %60 = add nuw nsw i64 %59, 246
  %61 = icmp samesign ult i64 %59, 10
  %62 = select i1 %61, i64 %59, i64 %60
  %63 = trunc i64 %62 to i8
  %64 = or disjoint i8 %63, 48
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 %64, ptr %65, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #2
  store i64 0, ptr %4, align 8, !tbaa !10
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %67 = call { ptr, i32 } @_ZN10fast_float23from_chars_int_advancedImcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef nonnull %3, ptr noundef nonnull %66, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 5, i64 42949673006) #2
  %68 = load i64, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #2
  ret i64 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN10fast_float23from_chars_int_advancedImcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = lshr i64 %4, 32
  %9 = trunc nuw i64 %8 to i32
  %10 = and i64 %3, 256
  %11 = icmp eq i64 %10, 0
  %12 = icmp eq ptr %0, %1
  %13 = or i1 %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = sub i64 %7, %6
  %16 = getelementptr i8, ptr %0, i64 %15
  br label %17

17:                                               ; preds = %14, %24
  %18 = phi ptr [ %25, %24 ], [ %0, %14 ]
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float9space_lutIvE5valueE, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !13, !range !15, !noundef !16
  %23 = trunc nuw i8 %22 to i1
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %17, !llvm.loop !17

27:                                               ; preds = %17, %24
  %28 = phi ptr [ %18, %17 ], [ %16, %24 ]
  %29 = ptrtoint ptr %28 to i64
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i64 [ %29, %27 ], [ %6, %5 ]
  %32 = phi ptr [ %28, %27 ], [ %0, %5 ]
  %33 = icmp eq ptr %32, %1
  %34 = add i32 %9, -37
  %35 = icmp ult i32 %34, -35
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %188, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr %32, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 45
  br i1 %39, label %188, label %40

40:                                               ; preds = %37
  %41 = and i64 %3, 128
  %42 = icmp ne i64 %41, 0
  %43 = icmp eq i8 %38, 43
  %44 = and i1 %42, %43
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 %45
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = sub i64 %7, %31
  %50 = getelementptr i8, ptr %32, i64 %49
  br label %51

51:                                               ; preds = %48, %55
  %52 = phi ptr [ %56, %55 ], [ %46, %48 ]
  %53 = load i8, ptr %52, align 1, !tbaa !5
  %54 = icmp eq i8 %53, 48
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %57 = icmp eq ptr %56, %1
  br i1 %57, label %58, label %51, !llvm.loop !18

58:                                               ; preds = %55, %51, %40
  %59 = phi ptr [ %46, %40 ], [ %52, %51 ], [ %50, %55 ]
  %60 = icmp ugt ptr %59, %46
  %61 = icmp eq i64 %8, 10
  br i1 %61, label %62, label %121

62:                                               ; preds = %58
  %63 = ptrtoint ptr %59 to i64
  %64 = sub i64 %7, %63
  %65 = icmp sgt i64 %64, 7
  br i1 %65, label %66, label %92

66:                                               ; preds = %62, %75
  %67 = phi i64 [ %87, %75 ], [ 0, %62 ]
  %68 = phi ptr [ %88, %75 ], [ %59, %62 ]
  %69 = load i64, ptr %68, align 1
  %70 = add i64 %69, 5063812098665367110
  %71 = add i64 %69, -3472328296227680304
  %72 = or i64 %70, %71
  %73 = and i64 %72, -9187201950435737472
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %66
  %76 = mul i64 %67, 100000000
  %77 = mul i64 %71, 10
  %78 = lshr i64 %71, 8
  %79 = add i64 %77, %78
  %80 = and i64 %79, 1095216660735
  %81 = mul i64 %80, 4294967296000100
  %82 = lshr i64 %79, 16
  %83 = and i64 %82, 1095216660735
  %84 = mul i64 %83, 42949672960001
  %85 = add i64 %84, %81
  %86 = lshr i64 %85, 32
  %87 = add i64 %86, %76
  %88 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %89 = ptrtoint ptr %88 to i64
  %90 = sub i64 %7, %89
  %91 = icmp sgt i64 %90, 7
  br i1 %91, label %66, label %92, !llvm.loop !19

92:                                               ; preds = %75, %62
  %93 = phi ptr [ %59, %62 ], [ %88, %75 ]
  %94 = phi i64 [ 0, %62 ], [ %87, %75 ]
  %95 = phi i64 [ %64, %62 ], [ %90, %75 ]
  %96 = icmp sgt i64 %95, 3
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i32, ptr %93, align 1
  br label %101

99:                                               ; preds = %66
  %100 = trunc i64 %69 to i32
  br label %101

101:                                              ; preds = %97, %99
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = phi ptr [ %93, %97 ], [ %68, %99 ]
  %104 = phi i64 [ %94, %97 ], [ %67, %99 ]
  %105 = add i32 %102, 1179010630
  %106 = add i32 %102, -808464432
  %107 = or i32 %105, %106
  %108 = and i32 %107, -2139062144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %101
  %111 = mul i64 %104, 10000
  %112 = mul i32 %106, 10
  %113 = lshr i32 %106, 8
  %114 = add i32 %112, %113
  %115 = and i32 %114, 16711935
  %116 = mul i32 %115, 6553601
  %117 = lshr i32 %116, 16
  %118 = zext nneg i32 %117 to i64
  %119 = add i64 %111, %118
  %120 = getelementptr inbounds nuw i8, ptr %103, i64 4
  br label %121

121:                                              ; preds = %92, %101, %110, %58
  %122 = phi ptr [ %59, %58 ], [ %120, %110 ], [ %103, %101 ], [ %93, %92 ]
  %123 = phi i64 [ 0, %58 ], [ %119, %110 ], [ %104, %101 ], [ %94, %92 ]
  %124 = ptrtoint ptr %122 to i64
  %125 = icmp eq ptr %122, %1
  br i1 %125, label %148, label %126

126:                                              ; preds = %121
  %127 = sub i64 %7, %124
  %128 = getelementptr i8, ptr %122, i64 %127
  br label %129

129:                                              ; preds = %126, %138
  %130 = phi i64 [ %141, %138 ], [ %123, %126 ]
  %131 = phi ptr [ %142, %138 ], [ %122, %126 ]
  %132 = load i8, ptr %131, align 1, !tbaa !5
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !5
  %136 = zext i8 %135 to i32
  %137 = icmp slt i32 %136, %9
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = mul i64 %130, %8
  %140 = zext i8 %135 to i64
  %141 = add i64 %139, %140
  %142 = getelementptr inbounds nuw i8, ptr %131, i64 1
  %143 = icmp eq ptr %142, %1
  br i1 %143, label %144, label %129

144:                                              ; preds = %129, %138
  %145 = phi ptr [ %128, %138 ], [ %131, %129 ]
  %146 = phi i64 [ %141, %138 ], [ %130, %129 ]
  %147 = ptrtoint ptr %145 to i64
  br label %148

148:                                              ; preds = %144, %121
  %149 = phi i64 [ %147, %144 ], [ %124, %121 ]
  %150 = phi ptr [ %145, %144 ], [ %122, %121 ]
  %151 = phi i64 [ %146, %144 ], [ %123, %121 ]
  %152 = ptrtoint ptr %59 to i64
  %153 = sub i64 %149, %152
  %154 = icmp eq ptr %150, %59
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br i1 %60, label %186, label %188

156:                                              ; preds = %148
  %157 = add i64 %4, -8589934592
  %158 = ashr i64 %157, 32
  %159 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !10
  %161 = icmp ugt i64 %153, %160
  br i1 %161, label %188, label %162

162:                                              ; preds = %156
  %163 = icmp eq i64 %153, %160
  br i1 %163, label %164, label %186

164:                                              ; preds = %162
  %165 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %158
  %166 = load i64, ptr %165, align 8, !tbaa !10
  %167 = icmp ult i64 %151, %166
  br i1 %167, label %188, label %168

168:                                              ; preds = %164
  %169 = ashr i64 %4, 32
  br label %170

170:                                              ; preds = %168, %181
  %171 = phi ptr [ %59, %168 ], [ %184, %181 ]
  %172 = phi i64 [ 0, %168 ], [ %183, %181 ]
  %173 = load i8, ptr %171, align 1, !tbaa !5
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !5
  %177 = zext i8 %176 to i64
  %178 = xor i64 %177, -1
  %179 = udiv i64 %178, %169
  %180 = icmp ugt i64 %172, %179
  br i1 %180, label %188, label %181

181:                                              ; preds = %170
  %182 = mul i64 %172, %169
  %183 = add i64 %182, %177
  %184 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %185 = icmp eq ptr %184, %150
  br i1 %185, label %186, label %170, !llvm.loop !20

186:                                              ; preds = %181, %162, %155
  %187 = phi i64 [ 0, %155 ], [ %151, %162 ], [ %151, %181 ]
  store i64 %187, ptr %2, align 8, !tbaa !10
  br label %188

188:                                              ; preds = %170, %186, %37, %164, %156, %155, %30
  %189 = phi ptr [ %32, %30 ], [ %32, %37 ], [ %32, %155 ], [ %150, %164 ], [ %150, %156 ], [ %150, %186 ], [ %150, %170 ]
  %190 = phi i32 [ 22, %30 ], [ 22, %37 ], [ 22, %155 ], [ 34, %164 ], [ 34, %156 ], [ 0, %186 ], [ 34, %170 ]
  %191 = insertvalue { ptr, i32 } poison, ptr %189, 0
  %192 = insertvalue { ptr, i32 } %191, i32 %190, 1
  ret { ptr, i32 } %192
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = !{!14, !14, i64 0}
!14 = !{!"bool", !6, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
