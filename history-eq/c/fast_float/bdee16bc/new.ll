; ModuleID = 'history-eq/c/fast_float/bdee16bc/wrap.cpp'
source_filename = "history-eq/c/fast_float/bdee16bc/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

@_ZN10fast_float8int_lutsIvE7chdigitE = linkonce_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_value(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %3, align 8, !tbaa !5
  %4 = trunc i64 %0 to i8
  switch i8 %4, label %11 [
    i8 45, label %66
    i8 48, label %5
  ]

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %5, label %29, !llvm.loop !8

11:                                               ; preds = %1
  %12 = load i64, ptr %2, align 8
  %13 = add i64 %12, 5063812098665367110
  %14 = add i64 %12, -3472328296227680304
  %15 = or i64 %13, %14
  %16 = and i64 %15, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = mul i64 %14, 10
  %20 = lshr i64 %14, 8
  %21 = add i64 %19, %20
  %22 = and i64 %21, 1095216660735
  %23 = mul i64 %22, 4294967296000100
  %24 = lshr i64 %21, 16
  %25 = and i64 %24, 1095216660735
  %26 = mul i64 %25, 42949672960001
  %27 = add i64 %26, %23
  %28 = lshr i64 %27, 32
  br label %59

29:                                               ; preds = %5
  %30 = icmp eq i64 %7, 8
  br i1 %30, label %50, label %31

31:                                               ; preds = %11, %29
  %32 = phi i64 [ %7, %29 ], [ 0, %11 ]
  %33 = phi i64 [ 0, %29 ], [ 123, %11 ]
  br label %34

34:                                               ; preds = %31, %41
  %35 = phi i64 [ %47, %41 ], [ 0, %31 ]
  %36 = phi i64 [ %48, %41 ], [ %32, %31 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = zext nneg i8 %38 to i64
  %43 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = mul i64 %35, 10
  %46 = zext i8 %44 to i64
  %47 = add i64 %45, %46
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %34

50:                                               ; preds = %41, %34, %29
  %51 = phi i64 [ 8, %29 ], [ %32, %34 ], [ %32, %41 ]
  %52 = phi i64 [ 0, %29 ], [ %33, %34 ], [ %33, %41 ]
  %53 = phi i64 [ 8, %29 ], [ 8, %41 ], [ %36, %34 ]
  %54 = phi i64 [ 0, %29 ], [ %47, %41 ], [ %35, %34 ]
  %55 = icmp samesign eq i64 %53, %51
  br i1 %55, label %66, label %56

56:                                               ; preds = %50
  %57 = sub nsw i64 %53, %51
  %58 = icmp ugt i64 %57, 20
  br i1 %58, label %66, label %59

59:                                               ; preds = %18, %56
  %60 = phi i64 [ %28, %18 ], [ %54, %56 ]
  %61 = phi i64 [ 8, %18 ], [ %57, %56 ]
  %62 = icmp eq i64 %61, 20
  %63 = icmp ult i64 %60, -8446744073709551616
  %64 = select i1 %62, i1 %63, i1 false
  %65 = select i1 %64, i64 123, i64 %60
  br label %66

66:                                               ; preds = %50, %1, %59, %56
  %67 = phi i64 [ 123, %1 ], [ 123, %56 ], [ %65, %59 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 35) i64 @target_u64_error(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %3, align 8, !tbaa !5
  %4 = trunc i64 %0 to i8
  switch i8 %4, label %11 [
    i8 45, label %58
    i8 48, label %5
  ]

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %5, label %18, !llvm.loop !8

11:                                               ; preds = %1
  %12 = load i64, ptr %2, align 8
  %13 = add i64 %12, 5063812098665367110
  %14 = add i64 %12, -3472328296227680304
  %15 = or i64 %13, %14
  %16 = and i64 %15, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %52, label %20

18:                                               ; preds = %5
  %19 = icmp eq i64 %7, 8
  br i1 %19, label %43, label %20

20:                                               ; preds = %11, %18
  %21 = phi i64 [ %7, %18 ], [ 0, %11 ]
  %22 = phi i64 [ 0, %18 ], [ 22, %11 ]
  br label %23

23:                                               ; preds = %20, %30
  %24 = phi i64 [ %36, %30 ], [ 0, %20 ]
  %25 = phi i64 [ %37, %30 ], [ %21, %20 ]
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = add i8 %27, -48
  %29 = icmp ult i8 %28, 10
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = zext nneg i8 %27 to i64
  %32 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = mul i64 %24, 10
  %35 = zext i8 %33 to i64
  %36 = add i64 %34, %35
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %39, label %23

39:                                               ; preds = %23, %30
  %40 = phi i64 [ 8, %30 ], [ %25, %23 ]
  %41 = phi i64 [ %36, %30 ], [ %24, %23 ]
  %42 = icmp ult i64 %41, -8446744073709551616
  br label %43

43:                                               ; preds = %39, %18
  %44 = phi i64 [ 8, %18 ], [ %21, %39 ]
  %45 = phi i64 [ 0, %18 ], [ %22, %39 ]
  %46 = phi i64 [ 8, %18 ], [ %40, %39 ]
  %47 = phi i1 [ true, %18 ], [ %42, %39 ]
  %48 = icmp samesign eq i64 %46, %44
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = sub nsw i64 %46, %44
  %51 = icmp ugt i64 %50, 20
  br i1 %51, label %58, label %52

52:                                               ; preds = %11, %49
  %53 = phi i1 [ %47, %49 ], [ true, %11 ]
  %54 = phi i64 [ %50, %49 ], [ 8, %11 ]
  %55 = icmp eq i64 %54, 20
  %56 = select i1 %55, i1 %53, i1 false
  %57 = select i1 %56, i64 34, i64 0
  br label %58

58:                                               ; preds = %43, %1, %52, %49
  %59 = phi i64 [ 22, %1 ], [ 34, %49 ], [ %57, %52 ], [ %45, %43 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_consumed(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %3, align 8, !tbaa !5
  %4 = trunc i64 %0 to i8
  switch i8 %4, label %11 [
    i8 45, label %43
    i8 48, label %5
  ]

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %5, label %20, !llvm.loop !8

11:                                               ; preds = %1
  %12 = load i64, ptr %2, align 8
  %13 = add i64 %12, 5063812098665367110
  %14 = add i64 %12, -3472328296227680304
  %15 = or i64 %13, %14
  %16 = and i64 %15, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %36

20:                                               ; preds = %5
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %22 = icmp eq i64 %7, 8
  br i1 %22, label %36, label %23

23:                                               ; preds = %11, %20
  %24 = phi ptr [ %21, %20 ], [ %2, %11 ]
  %25 = phi i64 [ %7, %20 ], [ 0, %11 ]
  br label %26

26:                                               ; preds = %23, %32
  %27 = phi ptr [ %34, %32 ], [ %24, %23 ]
  %28 = phi i64 [ %33, %32 ], [ %25, %23 ]
  %29 = load i8, ptr %27, align 1, !tbaa !5
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = add nuw nsw i64 %28, 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = icmp eq i64 %33, 8
  br i1 %35, label %36, label %26

36:                                               ; preds = %32, %26, %18, %20
  %37 = phi i64 [ 1, %20 ], [ 0, %18 ], [ %25, %26 ], [ %25, %32 ]
  %38 = phi i64 [ 8, %20 ], [ 8, %18 ], [ 8, %32 ], [ %28, %26 ]
  %39 = phi ptr [ %21, %20 ], [ %19, %18 ], [ %3, %32 ], [ %27, %26 ]
  %40 = or i64 %37, %38
  %41 = icmp eq i64 %40, 0
  %42 = select i1 %41, ptr %2, ptr %39
  br label %43

43:                                               ; preds = %1, %36
  %44 = phi ptr [ %2, %1 ], [ %42, %36 ]
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %2 to i64
  %47 = sub i64 %45, %46
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_i64_value(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %3, align 8, !tbaa !5
  %4 = and i64 %0, 255
  %5 = icmp eq i64 %4, 45
  %6 = zext i1 %5 to i64
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %6, %1 ], [ %12, %7 ]
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 48
  %12 = add nuw nsw i64 %8, 1
  br i1 %11, label %7, label %13, !llvm.loop !10

13:                                               ; preds = %7
  %14 = icmp samesign ugt i64 %8, %6
  switch i64 %8, label %21 [
    i64 0, label %15
    i64 8, label %50
  ]

15:                                               ; preds = %13
  %16 = add i64 %0, 5063812098665367110
  %17 = add i64 %0, -3472328296227680304
  %18 = or i64 %16, %17
  %19 = and i64 %18, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13, %15
  %22 = phi i64 [ 0, %15 ], [ %8, %13 ]
  br label %34

23:                                               ; preds = %15
  %24 = mul i64 %17, 10
  %25 = lshr i64 %17, 8
  %26 = add i64 %24, %25
  %27 = and i64 %26, 1095216660735
  %28 = mul i64 %27, 4294967296000100
  %29 = lshr i64 %26, 16
  %30 = and i64 %29, 1095216660735
  %31 = mul i64 %30, 42949672960001
  %32 = add i64 %31, %28
  %33 = lshr i64 %32, 32
  br label %50

34:                                               ; preds = %21, %41
  %35 = phi i64 [ %47, %41 ], [ 0, %21 ]
  %36 = phi i64 [ %48, %41 ], [ %22, %21 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = zext nneg i8 %38 to i64
  %43 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = mul i64 %35, 10
  %46 = zext i8 %44 to i64
  %47 = add i64 %45, %46
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %34

50:                                               ; preds = %41, %34, %13, %23
  %51 = phi i64 [ 8, %23 ], [ %8, %13 ], [ %36, %34 ], [ 8, %41 ]
  %52 = phi i64 [ %33, %23 ], [ 0, %13 ], [ %35, %34 ], [ %47, %41 ]
  %53 = sub nsw i64 %51, %8
  %54 = icmp samesign eq i64 %51, %8
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = select i1 %14, i64 0, i64 123
  br label %69

57:                                               ; preds = %50
  %58 = icmp ugt i64 %53, 20
  br i1 %58, label %69, label %59

59:                                               ; preds = %57
  %60 = icmp eq i64 %53, 20
  %61 = icmp ult i64 %52, -8446744073709551616
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = select i1 %5, i64 -9223372036854775808, i64 9223372036854775807
  %65 = icmp ugt i64 %52, %64
  %66 = sub i64 0, %52
  %67 = select i1 %5, i64 %66, i64 %52
  %68 = select i1 %65, i64 123, i64 %67
  br label %69

69:                                               ; preds = %63, %55, %59, %57
  %70 = phi i64 [ 123, %57 ], [ 123, %59 ], [ %56, %55 ], [ %68, %63 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 35) i64 @target_i64_error(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %3, align 8, !tbaa !5
  %4 = and i64 %0, 255
  %5 = icmp eq i64 %4, 45
  %6 = zext i1 %5 to i64
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %6, %1 ], [ %12, %7 ]
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 48
  %12 = add nuw nsw i64 %8, 1
  br i1 %11, label %7, label %13, !llvm.loop !10

13:                                               ; preds = %7
  %14 = icmp samesign ugt i64 %8, %6
  switch i64 %8, label %21 [
    i64 0, label %15
    i64 8, label %50
  ]

15:                                               ; preds = %13
  %16 = add i64 %0, 5063812098665367110
  %17 = add i64 %0, -3472328296227680304
  %18 = or i64 %16, %17
  %19 = and i64 %18, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13, %15
  %22 = phi i64 [ 0, %15 ], [ %8, %13 ]
  br label %34

23:                                               ; preds = %15
  %24 = mul i64 %17, 10
  %25 = lshr i64 %17, 8
  %26 = add i64 %24, %25
  %27 = and i64 %26, 1095216660735
  %28 = mul i64 %27, 4294967296000100
  %29 = lshr i64 %26, 16
  %30 = and i64 %29, 1095216660735
  %31 = mul i64 %30, 42949672960001
  %32 = add i64 %31, %28
  %33 = lshr i64 %32, 32
  br label %50

34:                                               ; preds = %21, %41
  %35 = phi i64 [ %47, %41 ], [ 0, %21 ]
  %36 = phi i64 [ %48, %41 ], [ %22, %21 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = zext nneg i8 %38 to i64
  %43 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = mul i64 %35, 10
  %46 = zext i8 %44 to i64
  %47 = add i64 %45, %46
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %34

50:                                               ; preds = %41, %34, %13, %23
  %51 = phi i64 [ 8, %23 ], [ %8, %13 ], [ %36, %34 ], [ 8, %41 ]
  %52 = phi i64 [ %33, %23 ], [ 0, %13 ], [ %35, %34 ], [ %47, %41 ]
  %53 = sub nsw i64 %51, %8
  %54 = icmp samesign eq i64 %51, %8
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = select i1 %14, i64 0, i64 22
  br label %67

57:                                               ; preds = %50
  %58 = icmp ugt i64 %53, 20
  br i1 %58, label %67, label %59

59:                                               ; preds = %57
  %60 = icmp eq i64 %53, 20
  %61 = icmp ult i64 %52, -8446744073709551616
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = select i1 %5, i64 -9223372036854775808, i64 9223372036854775807
  %65 = icmp ugt i64 %52, %64
  %66 = select i1 %65, i64 34, i64 0
  br label %67

67:                                               ; preds = %63, %55, %59, %57
  %68 = phi i64 [ 34, %57 ], [ %56, %55 ], [ 34, %59 ], [ %66, %63 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_i64_consumed(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %3, align 8, !tbaa !5
  %4 = and i64 %0, 255
  %5 = icmp eq i64 %4, 45
  %6 = zext i1 %5 to i64
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %6, %1 ], [ %12, %7 ]
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 48
  %12 = add nuw nsw i64 %8, 1
  br i1 %11, label %7, label %13, !llvm.loop !10

13:                                               ; preds = %7
  %14 = icmp eq i64 %8, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = add i64 %0, 5063812098665367110
  %17 = add i64 %0, -3472328296227680304
  %18 = or i64 %16, %17
  %19 = and i64 %18, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %39

23:                                               ; preds = %13
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %25 = icmp eq i64 %8, 8
  br i1 %25, label %39, label %26

26:                                               ; preds = %15, %23
  %27 = phi ptr [ %2, %15 ], [ %24, %23 ]
  %28 = phi i64 [ 0, %15 ], [ %8, %23 ]
  br label %29

29:                                               ; preds = %26, %35
  %30 = phi ptr [ %37, %35 ], [ %27, %26 ]
  %31 = phi i64 [ %36, %35 ], [ %28, %26 ]
  %32 = load i8, ptr %30, align 1, !tbaa !5
  %33 = add i8 %32, -48
  %34 = icmp ult i8 %33, 10
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = add nuw nsw i64 %31, 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 %36
  %38 = icmp eq i64 %36, 8
  br i1 %38, label %39, label %29

39:                                               ; preds = %35, %29, %21, %23
  %40 = phi i64 [ 8, %23 ], [ 8, %21 ], [ %31, %29 ], [ 8, %35 ]
  %41 = phi ptr [ %24, %23 ], [ %22, %21 ], [ %30, %29 ], [ %3, %35 ]
  %42 = icmp samesign ugt i64 %8, %6
  %43 = icmp samesign eq i64 %40, %8
  %44 = select i1 %42, ptr %41, ptr %2
  %45 = select i1 %43, ptr %44, ptr %41
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %2 to i64
  %48 = sub i64 %46, %47
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
