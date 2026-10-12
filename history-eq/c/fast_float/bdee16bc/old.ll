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
    i8 45, label %42
    i8 48, label %5
  ]

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %5, label %11, !llvm.loop !8

11:                                               ; preds = %5, %1
  %12 = phi i64 [ 0, %1 ], [ %7, %5 ]
  %13 = icmp eq i64 %12, 0
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi i64 [ 0, %11 ], [ %28, %18 ]
  %16 = phi i64 [ %12, %11 ], [ %29, %18 ]
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %20, -48
  %25 = icmp ult i8 %24, 10
  %26 = mul i64 %15, 10
  %27 = zext i8 %23 to i64
  %28 = add i64 %26, %27
  %29 = add nuw nsw i64 %16, 1
  br i1 %25, label %14, label %30

30:                                               ; preds = %18, %14
  %31 = sub nsw i64 %16, %12
  %32 = icmp samesign eq i64 %16, %12
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = select i1 %13, i64 123, i64 0
  br label %42

35:                                               ; preds = %30
  %36 = icmp ugt i64 %31, 20
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = icmp eq i64 %31, 20
  %39 = icmp ult i64 %15, -8446744073709551616
  %40 = select i1 %38, i1 %39, i1 false
  %41 = select i1 %40, i64 123, i64 %15
  br label %42

42:                                               ; preds = %1, %33, %37, %35
  %43 = phi i64 [ 123, %1 ], [ 123, %35 ], [ %41, %37 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %43
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
    i8 45, label %42
    i8 48, label %5
  ]

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %5, label %11, !llvm.loop !8

11:                                               ; preds = %5, %1
  %12 = phi i64 [ 0, %1 ], [ %7, %5 ]
  %13 = icmp eq i64 %12, 0
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi i64 [ 0, %11 ], [ %28, %18 ]
  %16 = phi i64 [ %12, %11 ], [ %29, %18 ]
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %20, -48
  %25 = icmp ult i8 %24, 10
  %26 = mul i64 %15, 10
  %27 = zext i8 %23 to i64
  %28 = add i64 %26, %27
  %29 = add nuw nsw i64 %16, 1
  br i1 %25, label %14, label %30

30:                                               ; preds = %18, %14
  %31 = sub nsw i64 %16, %12
  %32 = icmp samesign eq i64 %16, %12
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = select i1 %13, i64 22, i64 0
  br label %42

35:                                               ; preds = %30
  %36 = icmp ugt i64 %31, 20
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = icmp eq i64 %31, 20
  %39 = icmp ult i64 %15, -8446744073709551616
  %40 = select i1 %38, i1 %39, i1 false
  %41 = select i1 %40, i64 34, i64 0
  br label %42

42:                                               ; preds = %1, %37, %33, %35
  %43 = phi i64 [ 22, %1 ], [ 34, %35 ], [ %34, %33 ], [ %41, %37 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %43
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
    i8 45, label %24
    i8 48, label %5
  ]

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %5, label %11, !llvm.loop !8

11:                                               ; preds = %5, %1
  %12 = phi i64 [ 0, %1 ], [ %7, %5 ]
  br label %13

13:                                               ; preds = %11, %16
  %14 = phi i64 [ %21, %16 ], [ %12, %11 ]
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  %21 = add nuw nsw i64 %14, 1
  br i1 %20, label %13, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %14
  br label %24

24:                                               ; preds = %13, %22, %1
  %25 = phi ptr [ %2, %1 ], [ %23, %22 ], [ %3, %13 ]
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %2 to i64
  %28 = sub i64 %26, %27
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %28
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
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi i64 [ 0, %13 ], [ %29, %19 ]
  %17 = phi i64 [ %8, %13 ], [ %30, %19 ]
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = add i8 %21, -48
  %26 = icmp ult i8 %25, 10
  %27 = mul i64 %16, 10
  %28 = zext i8 %24 to i64
  %29 = add i64 %27, %28
  %30 = add nuw nsw i64 %17, 1
  br i1 %26, label %15, label %31

31:                                               ; preds = %19, %15
  %32 = sub nsw i64 %17, %8
  %33 = icmp samesign eq i64 %17, %8
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = select i1 %14, i64 0, i64 123
  br label %48

36:                                               ; preds = %31
  %37 = icmp ugt i64 %32, 20
  br i1 %37, label %48, label %38

38:                                               ; preds = %36
  %39 = icmp eq i64 %32, 20
  %40 = icmp ult i64 %16, -8446744073709551616
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = select i1 %5, i64 -9223372036854775808, i64 9223372036854775807
  %44 = icmp ugt i64 %16, %43
  %45 = sub i64 0, %16
  %46 = select i1 %5, i64 %45, i64 %16
  %47 = select i1 %44, i64 123, i64 %46
  br label %48

48:                                               ; preds = %42, %34, %38, %36
  %49 = phi i64 [ 123, %36 ], [ 123, %38 ], [ %35, %34 ], [ %47, %42 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %49
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
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi i64 [ 0, %13 ], [ %29, %19 ]
  %17 = phi i64 [ %8, %13 ], [ %30, %19 ]
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = add i8 %21, -48
  %26 = icmp ult i8 %25, 10
  %27 = mul i64 %16, 10
  %28 = zext i8 %24 to i64
  %29 = add i64 %27, %28
  %30 = add nuw nsw i64 %17, 1
  br i1 %26, label %15, label %31

31:                                               ; preds = %19, %15
  %32 = sub nsw i64 %17, %8
  %33 = icmp samesign eq i64 %17, %8
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = select i1 %14, i64 0, i64 22
  br label %46

36:                                               ; preds = %31
  %37 = icmp ugt i64 %32, 20
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = icmp eq i64 %32, 20
  %40 = icmp ult i64 %16, -8446744073709551616
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = select i1 %5, i64 -9223372036854775808, i64 9223372036854775807
  %44 = icmp ugt i64 %16, %43
  %45 = select i1 %44, i64 34, i64 0
  br label %46

46:                                               ; preds = %42, %34, %38, %36
  %47 = phi i64 [ 34, %36 ], [ %35, %34 ], [ 34, %38 ], [ %45, %42 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %47
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

13:                                               ; preds = %7, %16
  %14 = phi i64 [ %21, %16 ], [ %8, %7 ]
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  %21 = add nuw nsw i64 %14, 1
  br i1 %20, label %13, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %14
  br label %24

24:                                               ; preds = %13, %22
  %25 = phi ptr [ %23, %22 ], [ %3, %13 ]
  %26 = icmp samesign ugt i64 %8, %6
  %27 = icmp samesign eq i64 %14, %8
  %28 = select i1 %26, ptr %25, ptr %2
  %29 = select i1 %27, ptr %28, ptr %25
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %2 to i64
  %32 = sub i64 %30, %31
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #2
  ret i64 %32
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
