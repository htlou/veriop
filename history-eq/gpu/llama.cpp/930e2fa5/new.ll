; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/930e2fa5/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/930e2fa5/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_contiguous(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %1 to i64
  %6 = shl nuw i64 %5, 32
  %7 = zext i32 %0 to i64
  %8 = or disjoint i64 %6, %7
  %9 = zext i32 %3 to i64
  %10 = shl nuw i64 %9, 32
  %11 = zext i32 %2 to i64
  %12 = or disjoint i64 %10, %11
  %13 = insertvalue { i64, i64 } poison, i64 %8, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_row_runs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca [64 x i8], align 4
  %6 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store i32 %0, ptr %5, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %3, ptr %10, align 4
  br label %11

11:                                               ; preds = %4, %64
  %12 = phi ptr [ %5, %4 ], [ %68, %64 ]
  %13 = phi ptr [ %6, %4 ], [ %48, %64 ]
  %14 = phi i32 [ 0, %4 ], [ %67, %64 ]
  %15 = phi i32 [ 0, %4 ], [ %66, %64 ]
  %16 = phi i32 [ 0, %4 ], [ %28, %64 ]
  %17 = phi i32 [ 0, %4 ], [ %47, %64 ]
  %18 = phi i32 [ 0, %4 ], [ %65, %64 ]
  %19 = phi i32 [ 0, %4 ], [ %46, %64 ]
  %20 = phi i32 [ 0, %4 ], [ %45, %64 ]
  %21 = sub i32 2, %14
  %22 = sub i32 2, %19
  %23 = tail call i32 @llvm.umin.i32(i32 %21, i32 %22)
  %24 = sub nuw nsw i32 4, %16
  %25 = tail call i32 @llvm.umin.i32(i32 %23, i32 %24)
  %26 = shl nuw nsw i32 %25, 2
  %27 = zext nneg i32 %26 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr readonly align 1 %12, i64 %27, i1 false)
  %28 = add nuw nsw i32 %25, %16
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 %27
  %30 = add i32 %25, %19
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %44

32:                                               ; preds = %11
  %33 = add i32 %20, 1
  %34 = icmp eq i32 %33, 2
  %35 = select i1 %34, i32 0, i32 %33
  %36 = zext i1 %34 to i32
  %37 = add i32 %17, %36
  %38 = shl i32 %35, 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 %39
  %41 = shl i32 %37, 5
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 %42
  br label %44

44:                                               ; preds = %32, %11
  %45 = phi i32 [ %35, %32 ], [ %20, %11 ]
  %46 = phi i32 [ 0, %32 ], [ %30, %11 ]
  %47 = phi i32 [ %37, %32 ], [ %17, %11 ]
  %48 = phi ptr [ %43, %32 ], [ %29, %11 ]
  %49 = getelementptr inbounds nuw i8, ptr %12, i64 %27
  %50 = add i32 %25, %14
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = add i32 %15, 1
  %54 = icmp eq i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = add i32 %18, %55
  %57 = select i1 %54, i32 0, i32 %53
  %58 = mul i32 %57, 12
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 %59
  %61 = mul i32 %56, 24
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 %62
  br label %64

64:                                               ; preds = %52, %44
  %65 = phi i32 [ %56, %52 ], [ %18, %44 ]
  %66 = phi i32 [ %57, %52 ], [ %15, %44 ]
  %67 = phi i32 [ 0, %52 ], [ %50, %44 ]
  %68 = phi ptr [ %63, %52 ], [ %49, %44 ]
  %69 = icmp samesign ult i32 %28, 4
  br i1 %69, label %11, label %70, !llvm.loop !5

70:                                               ; preds = %64
  %71 = load i64, ptr %6, align 8
  %72 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %73 = load i64, ptr %72, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  %74 = insertvalue { i64, i64 } poison, i64 %71, 0
  %75 = insertvalue { i64, i64 } %74, i64 %73, 1
  ret { i64, i64 } %75
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_row_boundary(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca [64 x i8], align 4
  %6 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store i32 %0, ptr %5, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %12

12:                                               ; preds = %4, %65
  %13 = phi ptr [ %8, %4 ], [ %69, %65 ]
  %14 = phi ptr [ %11, %4 ], [ %49, %65 ]
  %15 = phi i32 [ 1, %4 ], [ %68, %65 ]
  %16 = phi i32 [ 0, %4 ], [ %67, %65 ]
  %17 = phi i32 [ 1, %4 ], [ %29, %65 ]
  %18 = phi i32 [ 0, %4 ], [ %48, %65 ]
  %19 = phi i32 [ 0, %4 ], [ %66, %65 ]
  %20 = phi i32 [ 1, %4 ], [ %47, %65 ]
  %21 = phi i32 [ 0, %4 ], [ %46, %65 ]
  %22 = sub i32 2, %15
  %23 = sub i32 2, %20
  %24 = tail call i32 @llvm.umin.i32(i32 %22, i32 %23)
  %25 = sub nuw nsw i32 3, %17
  %26 = tail call i32 @llvm.umin.i32(i32 %24, i32 %25)
  %27 = shl nuw nsw i32 %26, 2
  %28 = zext nneg i32 %27 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr readonly align 1 %13, i64 %28, i1 false)
  %29 = add nuw nsw i32 %26, %17
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 %28
  %31 = add i32 %26, %20
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %45

33:                                               ; preds = %12
  %34 = add i32 %21, 1
  %35 = icmp eq i32 %34, 2
  %36 = select i1 %35, i32 0, i32 %34
  %37 = zext i1 %35 to i32
  %38 = add i32 %18, %37
  %39 = shl i32 %36, 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw i8, ptr %6, i64 %40
  %42 = shl i32 %38, 5
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 %43
  br label %45

45:                                               ; preds = %33, %12
  %46 = phi i32 [ %36, %33 ], [ %21, %12 ]
  %47 = phi i32 [ 0, %33 ], [ %31, %12 ]
  %48 = phi i32 [ %38, %33 ], [ %18, %12 ]
  %49 = phi ptr [ %44, %33 ], [ %30, %12 ]
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 %28
  %51 = add i32 %26, %15
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = add i32 %16, 1
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i32
  %57 = add i32 %19, %56
  %58 = select i1 %55, i32 0, i32 %54
  %59 = mul i32 %58, 12
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 %60
  %62 = mul i32 %57, 24
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 %63
  br label %65

65:                                               ; preds = %53, %45
  %66 = phi i32 [ %57, %53 ], [ %19, %45 ]
  %67 = phi i32 [ %58, %53 ], [ %16, %45 ]
  %68 = phi i32 [ 0, %53 ], [ %51, %45 ]
  %69 = phi ptr [ %64, %53 ], [ %50, %45 ]
  %70 = icmp samesign ult i32 %29, 3
  br i1 %70, label %12, label %71, !llvm.loop !5

71:                                               ; preds = %65
  %72 = load i64, ptr %6, align 8
  %73 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %74 = load i64, ptr %73, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  %75 = insertvalue { i64, i64 } poison, i64 %72, 0
  %76 = insertvalue { i64, i64 } %75, i64 %74, 1
  ret { i64, i64 } %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_strided(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  %9 = zext i32 %2 to i64
  %10 = zext i32 %3 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = insertvalue { i64, i64 } poison, i64 %8, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compare_f16_contiguous(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i16 %3 to i64
  %6 = shl nuw i64 %5, 48
  %7 = zext i16 %2 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = or disjoint i64 %6, %8
  %10 = zext i16 %1 to i64
  %11 = shl nuw nsw i64 %10, 16
  %12 = or disjoint i64 %9, %11
  %13 = zext i16 %0 to i64
  %14 = or disjoint i64 %12, %13
  ret i64 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @compare_f16_row_runs(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca [64 x i8], align 4
  %6 = alloca [64 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i64 60, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store i16 %0, ptr %5, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %1, ptr %8, align 2
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2, ptr %9, align 2
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %3, ptr %10, align 4
  br label %11

11:                                               ; preds = %4, %64
  %12 = phi ptr [ %5, %4 ], [ %68, %64 ]
  %13 = phi ptr [ %6, %4 ], [ %48, %64 ]
  %14 = phi i32 [ 0, %4 ], [ %67, %64 ]
  %15 = phi i32 [ 0, %4 ], [ %66, %64 ]
  %16 = phi i32 [ 0, %4 ], [ %28, %64 ]
  %17 = phi i32 [ 0, %4 ], [ %47, %64 ]
  %18 = phi i32 [ 0, %4 ], [ %65, %64 ]
  %19 = phi i32 [ 0, %4 ], [ %46, %64 ]
  %20 = phi i32 [ 0, %4 ], [ %45, %64 ]
  %21 = sub i32 2, %14
  %22 = sub i32 2, %19
  %23 = tail call i32 @llvm.umin.i32(i32 %21, i32 %22)
  %24 = sub nuw nsw i32 4, %16
  %25 = tail call i32 @llvm.umin.i32(i32 %23, i32 %24)
  %26 = shl nuw nsw i32 %25, 1
  %27 = zext nneg i32 %26 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr readonly align 1 %12, i64 %27, i1 false)
  %28 = add nuw nsw i32 %25, %16
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 %27
  %30 = add i32 %25, %19
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %44

32:                                               ; preds = %11
  %33 = add i32 %20, 1
  %34 = icmp eq i32 %33, 2
  %35 = select i1 %34, i32 0, i32 %33
  %36 = zext i1 %34 to i32
  %37 = add i32 %17, %36
  %38 = shl i32 %35, 3
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 %39
  %41 = shl i32 %37, 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 %42
  br label %44

44:                                               ; preds = %32, %11
  %45 = phi i32 [ %35, %32 ], [ %20, %11 ]
  %46 = phi i32 [ 0, %32 ], [ %30, %11 ]
  %47 = phi i32 [ %37, %32 ], [ %17, %11 ]
  %48 = phi ptr [ %43, %32 ], [ %29, %11 ]
  %49 = getelementptr inbounds nuw i8, ptr %12, i64 %27
  %50 = add i32 %25, %14
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = add i32 %15, 1
  %54 = icmp eq i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = add i32 %18, %55
  %57 = select i1 %54, i32 0, i32 %53
  %58 = mul i32 %57, 6
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 %59
  %61 = mul i32 %56, 12
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 %62
  br label %64

64:                                               ; preds = %52, %44
  %65 = phi i32 [ %56, %52 ], [ %18, %44 ]
  %66 = phi i32 [ %57, %52 ], [ %15, %44 ]
  %67 = phi i32 [ 0, %52 ], [ %50, %44 ]
  %68 = phi ptr [ %63, %52 ], [ %49, %44 ]
  %69 = icmp samesign ult i32 %28, 4
  br i1 %69, label %11, label %70, !llvm.loop !7

70:                                               ; preds = %64
  %71 = load i32, ptr %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %74 = load i16, ptr %73, align 4
  %75 = zext i16 %74 to i64
  %76 = shl nuw nsw i64 %75, 32
  %77 = or disjoint i64 %76, %72
  %78 = getelementptr inbounds nuw i8, ptr %6, i64 10
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i64
  %81 = shl nuw i64 %80, 48
  %82 = or disjoint i64 %77, %81
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret i64 %82
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @compare_f16_row_boundary(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca [64 x i8], align 4
  %6 = alloca [64 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i64 60, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store i16 %0, ptr %5, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %1, ptr %8, align 2
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2, ptr %9, align 2
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %3, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 2
  br label %12

12:                                               ; preds = %4, %65
  %13 = phi ptr [ %8, %4 ], [ %69, %65 ]
  %14 = phi ptr [ %11, %4 ], [ %49, %65 ]
  %15 = phi i32 [ 1, %4 ], [ %68, %65 ]
  %16 = phi i32 [ 0, %4 ], [ %67, %65 ]
  %17 = phi i32 [ 1, %4 ], [ %29, %65 ]
  %18 = phi i32 [ 0, %4 ], [ %48, %65 ]
  %19 = phi i32 [ 0, %4 ], [ %66, %65 ]
  %20 = phi i32 [ 1, %4 ], [ %47, %65 ]
  %21 = phi i32 [ 0, %4 ], [ %46, %65 ]
  %22 = sub i32 2, %15
  %23 = sub i32 2, %20
  %24 = tail call i32 @llvm.umin.i32(i32 %22, i32 %23)
  %25 = sub nuw nsw i32 3, %17
  %26 = tail call i32 @llvm.umin.i32(i32 %24, i32 %25)
  %27 = shl nuw nsw i32 %26, 1
  %28 = zext nneg i32 %27 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr readonly align 1 %13, i64 %28, i1 false)
  %29 = add nuw nsw i32 %26, %17
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 %28
  %31 = add i32 %26, %20
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %45

33:                                               ; preds = %12
  %34 = add i32 %21, 1
  %35 = icmp eq i32 %34, 2
  %36 = select i1 %35, i32 0, i32 %34
  %37 = zext i1 %35 to i32
  %38 = add i32 %18, %37
  %39 = shl i32 %36, 3
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw i8, ptr %6, i64 %40
  %42 = shl i32 %38, 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 %43
  br label %45

45:                                               ; preds = %33, %12
  %46 = phi i32 [ %36, %33 ], [ %21, %12 ]
  %47 = phi i32 [ 0, %33 ], [ %31, %12 ]
  %48 = phi i32 [ %38, %33 ], [ %18, %12 ]
  %49 = phi ptr [ %44, %33 ], [ %30, %12 ]
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 %28
  %51 = add i32 %26, %15
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = add i32 %16, 1
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i32
  %57 = add i32 %19, %56
  %58 = select i1 %55, i32 0, i32 %54
  %59 = mul i32 %58, 6
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 %60
  %62 = mul i32 %57, 12
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 %63
  br label %65

65:                                               ; preds = %53, %45
  %66 = phi i32 [ %57, %53 ], [ %19, %45 ]
  %67 = phi i32 [ %58, %53 ], [ %16, %45 ]
  %68 = phi i32 [ 0, %53 ], [ %51, %45 ]
  %69 = phi ptr [ %64, %53 ], [ %50, %45 ]
  %70 = icmp samesign ult i32 %29, 3
  br i1 %70, label %12, label %71, !llvm.loop !7

71:                                               ; preds = %65
  %72 = load i32, ptr %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i64
  %77 = shl nuw nsw i64 %76, 32
  %78 = or disjoint i64 %77, %73
  %79 = getelementptr inbounds nuw i8, ptr %6, i64 10
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i64
  %82 = shl nuw i64 %81, 48
  %83 = or disjoint i64 %78, %82
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret i64 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compare_f16_strided(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i16 %0 to i64
  %6 = zext i16 %1 to i64
  %7 = shl nuw nsw i64 %6, 16
  %8 = or disjoint i64 %7, %5
  %9 = zext i16 %2 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = or disjoint i64 %8, %10
  %12 = zext i16 %3 to i64
  %13 = shl nuw i64 %12, 48
  %14 = or disjoint i64 %11, %13
  ret i64 %14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
