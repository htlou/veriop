; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/caller_literals.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/caller_literals.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [9 x i16] [i16 105, i16 110, i16 102, i16 105, i16 110, i16 105, i16 116, i16 121, i16 0], align 2
@.str.4 = private unnamed_addr constant [4 x i32] [i32 110, i32 97, i32 110, i32 0], align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 105, i32 110, i32 102, i32 105, i32 110, i32 105, i32 116, i32 121, i32 0], align 4

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_char(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %2, 16
  %5 = and i32 %4, 14614528
  %6 = shl i32 %1, 8
  %7 = and i32 %6, 57088
  %8 = and i32 %0, 223
  %9 = or i32 %7, %8
  %10 = or i32 %9, %5
  %11 = icmp eq i32 %10, 5128526
  ret i1 %11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_char(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %2, 16
  %5 = and i32 %4, 14614528
  %6 = shl i32 %1, 8
  %7 = and i32 %6, 57088
  %8 = and i32 %0, 223
  %9 = or i32 %7, %8
  %10 = or i32 %9, %5
  %11 = icmp eq i32 %10, 4607561
  ret i1 %11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_char(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %4, 223
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = shl i32 %3, 24
  %10 = shl i32 %2, 16
  %11 = and i32 %10, 14614528
  %12 = zext i32 %11 to i64
  %13 = shl i32 %1, 8
  %14 = and i32 %13, 57088
  %15 = zext i32 %14 to i64
  %16 = and i32 %0, 223
  %17 = zext i32 %16 to i64
  %18 = and i32 %9, -553648128
  %19 = zext i32 %18 to i64
  %20 = or i64 %8, %19
  %21 = or i64 %20, %12
  %22 = or i64 %21, %15
  %23 = or i64 %22, %17
  %24 = icmp eq i64 %23, 383666179657
  ret i1 %24
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_u16(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 65503
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %7 = shl i32 %1, 16
  %8 = and i32 %0, 65503
  %9 = zext i32 %8 to i64
  %10 = and i32 %7, -2162688
  %11 = zext i32 %10 to i64
  %12 = or i64 %6, %11
  %13 = or i64 %12, %9
  %14 = icmp eq i64 %13, 335011709006
  ret i1 %14
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_u16(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 65503
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %7 = shl i32 %1, 16
  %8 = and i32 %0, 65503
  %9 = zext i32 %8 to i64
  %10 = and i32 %7, -2162688
  %11 = zext i32 %10 to i64
  %12 = or i64 %6, %11
  %13 = or i64 %12, %9
  %14 = icmp eq i64 %13, 300652822601
  ret i1 %14
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_u16(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [5 x i16], align 2
  %9 = bitcast [5 x i16]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %9) #3
  %10 = getelementptr inbounds [5 x i16], [5 x i16]* %8, i64 0, i64 0
  %11 = trunc i32 %0 to i16
  store i16 %11, i16* %10, align 2, !tbaa !5
  %12 = getelementptr inbounds [5 x i16], [5 x i16]* %8, i64 0, i64 1
  %13 = trunc i32 %1 to i16
  store i16 %13, i16* %12, align 2, !tbaa !5
  %14 = getelementptr inbounds [5 x i16], [5 x i16]* %8, i64 0, i64 2
  %15 = trunc i32 %2 to i16
  store i16 %15, i16* %14, align 2, !tbaa !5
  %16 = getelementptr inbounds [5 x i16], [5 x i16]* %8, i64 0, i64 3
  %17 = trunc i32 %3 to i16
  store i16 %17, i16* %16, align 2, !tbaa !5
  %18 = getelementptr inbounds [5 x i16], [5 x i16]* %8, i64 0, i64 4
  %19 = trunc i32 %4 to i16
  store i16 %19, i16* %18, align 2, !tbaa !5
  %20 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20)
  %21 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21)
  br label %22

22:                                               ; preds = %22, %5
  %23 = phi i64 [ 0, %5 ], [ %38, %22 ]
  %24 = phi i64 [ 4, %5 ], [ %27, %22 ]
  store i64 0, i64* %7, align 8, !tbaa !9
  store i64 0, i64* %6, align 8, !tbaa !9
  %25 = sub nuw nsw i64 5, %23
  %26 = icmp ult i64 %25, %24
  %27 = select i1 %26, i64 %25, i64 %24
  %28 = getelementptr inbounds [5 x i16], [5 x i16]* %8, i64 0, i64 %23
  %29 = bitcast i16* %28 to i8*
  %30 = shl nuw nsw i64 %27, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %20, i8* nonnull align 2 %29, i64 %30, i1 false) #3
  %31 = getelementptr inbounds i16, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @.str.3, i64 0, i64 3), i64 %23
  %32 = bitcast i16* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %21, i8* align 2 %32, i64 %30, i1 false) #3
  %33 = load i64, i64* %6, align 8, !tbaa !9
  %34 = or i64 %33, 9007336695791648
  store i64 %34, i64* %6, align 8, !tbaa !9
  %35 = load i64, i64* %7, align 8, !tbaa !9
  %36 = or i64 %35, 9007336695791648
  store i64 %36, i64* %7, align 8, !tbaa !9
  %37 = icmp eq i64 %34, %36
  %38 = add nuw nsw i64 %27, %23
  %39 = icmp ult i64 %38, 5
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %22, label %41, !llvm.loop !11

41:                                               ; preds = %22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20)
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %9) #3
  ret i1 %37
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_u32(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #3
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %0, i32* %8, align 4, !tbaa !13
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %1, i32* %9, align 4, !tbaa !13
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %2, i32* %10, align 4, !tbaa !13
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11)
  %12 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12)
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi i64 [ 0, %3 ], [ %29, %13 ]
  %15 = phi i64 [ 2, %3 ], [ %18, %13 ]
  store i64 0, i64* %5, align 8, !tbaa !9
  store i64 0, i64* %4, align 8, !tbaa !9
  %16 = sub nuw nsw i64 3, %14
  %17 = icmp ult i64 %16, %15
  %18 = select i1 %17, i64 %16, i64 %15
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %14
  %20 = bitcast i32* %19 to i8*
  %21 = shl nuw nsw i64 %18, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 4 %20, i64 %21, i1 false) #3
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* @.str.4, i64 0, i64 %14
  %23 = bitcast i32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 4 %23, i64 %21, i1 false) #3
  %24 = load i64, i64* %4, align 8, !tbaa !9
  %25 = or i64 %24, 137438953504
  store i64 %25, i64* %4, align 8, !tbaa !9
  %26 = load i64, i64* %5, align 8, !tbaa !9
  %27 = or i64 %26, 137438953504
  store i64 %27, i64* %5, align 8, !tbaa !9
  %28 = icmp eq i64 %25, %27
  %29 = add nuw nsw i64 %18, %14
  %30 = icmp ult i64 %29, 3
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %13, label %32, !llvm.loop !15

32:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #3
  ret i1 %28
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_u32(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #3
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %0, i32* %8, align 4, !tbaa !13
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %1, i32* %9, align 4, !tbaa !13
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %2, i32* %10, align 4, !tbaa !13
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11)
  %12 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12)
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi i64 [ 0, %3 ], [ %29, %13 ]
  %15 = phi i64 [ 2, %3 ], [ %18, %13 ]
  store i64 0, i64* %5, align 8, !tbaa !9
  store i64 0, i64* %4, align 8, !tbaa !9
  %16 = sub nuw nsw i64 3, %14
  %17 = icmp ult i64 %16, %15
  %18 = select i1 %17, i64 %16, i64 %15
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %14
  %20 = bitcast i32* %19 to i8*
  %21 = shl nuw nsw i64 %18, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 4 %20, i64 %21, i1 false) #3
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* @.str.5, i64 0, i64 %14
  %23 = bitcast i32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 4 %23, i64 %21, i1 false) #3
  %24 = load i64, i64* %4, align 8, !tbaa !9
  %25 = or i64 %24, 137438953504
  store i64 %25, i64* %4, align 8, !tbaa !9
  %26 = load i64, i64* %5, align 8, !tbaa !9
  %27 = or i64 %26, 137438953504
  store i64 %27, i64* %5, align 8, !tbaa !9
  %28 = icmp eq i64 %25, %27
  %29 = add nuw nsw i64 %18, %14
  %30 = icmp ult i64 %29, 3
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %13, label %32, !llvm.loop !15

32:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #3
  ret i1 %28
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_u32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [5 x i32], align 16
  %9 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #3
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %0, i32* %10, align 16, !tbaa !13
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 %1, i32* %11, align 4, !tbaa !13
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %2, i32* %12, align 8, !tbaa !13
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 %3, i32* %13, align 4, !tbaa !13
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %4, i32* %14, align 16, !tbaa !13
  %15 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15)
  %16 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16)
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi i64 [ 0, %5 ], [ %33, %17 ]
  %19 = phi i64 [ 2, %5 ], [ %22, %17 ]
  store i64 0, i64* %7, align 8, !tbaa !9
  store i64 0, i64* %6, align 8, !tbaa !9
  %20 = sub nuw nsw i64 5, %18
  %21 = icmp ult i64 %20, %19
  %22 = select i1 %21, i64 %20, i64 %19
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %18
  %24 = bitcast i32* %23 to i8*
  %25 = shl nuw nsw i64 %22, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* nonnull align 4 %24, i64 %25, i1 false) #3
  %26 = getelementptr inbounds i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @.str.5, i64 0, i64 3), i64 %18
  %27 = bitcast i32* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* align 4 %27, i64 %25, i1 false) #3
  %28 = load i64, i64* %6, align 8, !tbaa !9
  %29 = or i64 %28, 137438953504
  store i64 %29, i64* %6, align 8, !tbaa !9
  %30 = load i64, i64* %7, align 8, !tbaa !9
  %31 = or i64 %30, 137438953504
  store i64 %31, i64* %7, align 8, !tbaa !9
  %32 = icmp eq i64 %29, %31
  %33 = add nuw nsw i64 %22, %18
  %34 = icmp ult i64 %33, 5
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %17, label %36, !llvm.loop !15

36:                                               ; preds = %17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15)
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #3
  ret i1 %32
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_wchar(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #3
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %0, i32* %8, align 4, !tbaa !16
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %1, i32* %9, align 4, !tbaa !16
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %2, i32* %10, align 4, !tbaa !16
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11)
  %12 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12)
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi i64 [ 0, %3 ], [ %29, %13 ]
  %15 = phi i64 [ 2, %3 ], [ %18, %13 ]
  store i64 0, i64* %5, align 8, !tbaa !9
  store i64 0, i64* %4, align 8, !tbaa !9
  %16 = sub nuw nsw i64 3, %14
  %17 = icmp ult i64 %16, %15
  %18 = select i1 %17, i64 %16, i64 %15
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %14
  %20 = bitcast i32* %19 to i8*
  %21 = shl nuw nsw i64 %18, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 4 %20, i64 %21, i1 false) #3
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* @.str.4, i64 0, i64 %14
  %23 = bitcast i32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 4 %23, i64 %21, i1 false) #3
  %24 = load i64, i64* %4, align 8, !tbaa !9
  %25 = or i64 %24, 137438953504
  store i64 %25, i64* %4, align 8, !tbaa !9
  %26 = load i64, i64* %5, align 8, !tbaa !9
  %27 = or i64 %26, 137438953504
  store i64 %27, i64* %5, align 8, !tbaa !9
  %28 = icmp eq i64 %25, %27
  %29 = add nuw nsw i64 %18, %14
  %30 = icmp ult i64 %29, 3
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %13, label %32, !llvm.loop !18

32:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #3
  ret i1 %28
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_wchar(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #3
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %0, i32* %8, align 4, !tbaa !16
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %1, i32* %9, align 4, !tbaa !16
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %2, i32* %10, align 4, !tbaa !16
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11)
  %12 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12)
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi i64 [ 0, %3 ], [ %29, %13 ]
  %15 = phi i64 [ 2, %3 ], [ %18, %13 ]
  store i64 0, i64* %5, align 8, !tbaa !9
  store i64 0, i64* %4, align 8, !tbaa !9
  %16 = sub nuw nsw i64 3, %14
  %17 = icmp ult i64 %16, %15
  %18 = select i1 %17, i64 %16, i64 %15
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %14
  %20 = bitcast i32* %19 to i8*
  %21 = shl nuw nsw i64 %18, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 4 %20, i64 %21, i1 false) #3
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* @.str.5, i64 0, i64 %14
  %23 = bitcast i32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 4 %23, i64 %21, i1 false) #3
  %24 = load i64, i64* %4, align 8, !tbaa !9
  %25 = or i64 %24, 137438953504
  store i64 %25, i64* %4, align 8, !tbaa !9
  %26 = load i64, i64* %5, align 8, !tbaa !9
  %27 = or i64 %26, 137438953504
  store i64 %27, i64* %5, align 8, !tbaa !9
  %28 = icmp eq i64 %25, %27
  %29 = add nuw nsw i64 %18, %14
  %30 = icmp ult i64 %29, 3
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %13, label %32, !llvm.loop !18

32:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #3
  ret i1 %28
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_wchar(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [5 x i32], align 16
  %9 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #3
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %0, i32* %10, align 16, !tbaa !16
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 %1, i32* %11, align 4, !tbaa !16
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %2, i32* %12, align 8, !tbaa !16
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 %3, i32* %13, align 4, !tbaa !16
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %4, i32* %14, align 16, !tbaa !16
  %15 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15)
  %16 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16)
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi i64 [ 0, %5 ], [ %33, %17 ]
  %19 = phi i64 [ 2, %5 ], [ %22, %17 ]
  store i64 0, i64* %7, align 8, !tbaa !9
  store i64 0, i64* %6, align 8, !tbaa !9
  %20 = sub nuw nsw i64 5, %18
  %21 = icmp ult i64 %20, %19
  %22 = select i1 %21, i64 %20, i64 %19
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %18
  %24 = bitcast i32* %23 to i8*
  %25 = shl nuw nsw i64 %22, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* nonnull align 4 %24, i64 %25, i1 false) #3
  %26 = getelementptr inbounds i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @.str.5, i64 0, i64 3), i64 %18
  %27 = bitcast i32* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* align 4 %27, i64 %25, i1 false) #3
  %28 = load i64, i64* %6, align 8, !tbaa !9
  %29 = or i64 %28, 137438953504
  store i64 %29, i64* %6, align 8, !tbaa !9
  %30 = load i64, i64* %7, align 8, !tbaa !9
  %31 = or i64 %30, 137438953504
  store i64 %31, i64* %7, align 8, !tbaa !9
  %32 = icmp eq i64 %29, %31
  %33 = add nuw nsw i64 %22, %18
  %34 = icmp ult i64 %33, 5
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %17, label %36, !llvm.loop !18

36:                                               ; preds = %17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15)
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #3
  ret i1 %32
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"char16_t", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"char32_t", !7, i64 0}
!15 = distinct !{!15, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"wchar_t", !7, i64 0}
!18 = distinct !{!18, !12}
