; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/39eab74a/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/39eab74a/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggml_tensor = type { [4 x i64], [4 x i64], i32 }

@__const.witness.t = private unnamed_addr constant %struct.ggml_tensor { [4 x i64] [i64 1024, i64 327680, i64 1, i64 1], [4 x i64] [i64 210, i64 840, i64 275251200, i64 275251200], i32 14 }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_Z11ggml_nbytesPK11ggml_tensor(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i64 %6, 1
  %4 = icmp eq i64 %3, 4
  br i1 %4, label %10, label %5, !llvm.loop !4

5:                                                ; preds = %1, %2
  %6 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr inbounds nuw [4 x i64], ptr %0, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !7
  %9 = icmp slt i64 %8, 1
  br i1 %9, label %28, label %2

10:                                               ; preds = %2
  %11 = load i64, ptr %0, align 8, !tbaa !7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load i64, ptr %12, align 8, !tbaa !11
  %14 = mul i64 %13, %11
  %15 = lshr i64 %14, 8
  br label %16

16:                                               ; preds = %10, %16
  %17 = phi i64 [ 1, %10 ], [ %26, %16 ]
  %18 = phi i64 [ %15, %10 ], [ %25, %16 ]
  %19 = getelementptr inbounds nuw [4 x i64], ptr %0, i64 0, i64 %17
  %20 = load i64, ptr %19, align 8, !tbaa !7
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds nuw [4 x i64], ptr %12, i64 0, i64 %17
  %23 = load i64, ptr %22, align 8, !tbaa !11
  %24 = mul i64 %21, %23
  %25 = add i64 %24, %18
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %16, !llvm.loop !13

28:                                               ; preds = %5, %16
  %29 = phi i64 [ %25, %16 ], [ 0, %5 ]
  ret i64 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @target(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !7
  %5 = and i64 %4, 127
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !7
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !7
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %58, label %15

15:                                               ; preds = %11, %7, %2
  %16 = icmp sgt i64 %4, 32767
  br i1 %16, label %17, label %58

17:                                               ; preds = %15
  %18 = load i64, ptr %1, align 8, !tbaa !7
  %19 = icmp sgt i64 %18, 2047
  br i1 %19, label %50, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %0, align 4, !tbaa !14
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %58, label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %31, label %26, !llvm.loop !4

26:                                               ; preds = %20, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %20 ]
  %28 = getelementptr inbounds nuw [4 x i64], ptr %1, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !7
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %58, label %23

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %33 = load i64, ptr %32, align 8, !tbaa !11
  %34 = mul i64 %33, %18
  %35 = lshr i64 %34, 8
  br label %36

36:                                               ; preds = %36, %31
  %37 = phi i64 [ 1, %31 ], [ %46, %36 ]
  %38 = phi i64 [ %35, %31 ], [ %45, %36 ]
  %39 = getelementptr inbounds nuw [4 x i64], ptr %1, i64 0, i64 %37
  %40 = load i64, ptr %39, align 8, !tbaa !7
  %41 = add nsw i64 %40, -1
  %42 = getelementptr inbounds nuw [4 x i64], ptr %32, i64 0, i64 %37
  %43 = load i64, ptr %42, align 8, !tbaa !11
  %44 = mul i64 %41, %43
  %45 = add i64 %44, %38
  %46 = add nuw nsw i64 %37, 1
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %36, !llvm.loop !13

48:                                               ; preds = %36
  %49 = icmp ugt i64 %45, 268435455
  br i1 %49, label %50, label %58

50:                                               ; preds = %48, %17
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %52 = load i64, ptr %51, align 8, !tbaa !7
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %56 = load i64, ptr %55, align 8, !tbaa !7
  %57 = icmp eq i64 %56, 1
  br label %58

58:                                               ; preds = %26, %15, %20, %48, %50, %54, %11
  %59 = phi i1 [ true, %11 ], [ false, %50 ], [ false, %48 ], [ false, %20 ], [ false, %15 ], [ %57, %54 ], [ false, %26 ]
  ret i1 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @witness() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %6, %1 ]
  %3 = getelementptr inbounds nuw [4 x i64], ptr @__const.witness.t, i64 0, i64 %2
  %4 = load i64, ptr %3, align 8, !tbaa !7
  %5 = icmp sgt i64 %4, 0
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp ne i64 %6, 4
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %1, label %9, !llvm.loop !4

9:                                                ; preds = %1
  ret i1 %5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = distinct !{!4, !5, !6}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = distinct !{!13, !5, !6}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTS27ggml_backend_opencl_context", !16, i64 0}
!16 = !{!"_ZTS14ADRENO_GPU_GEN", !9, i64 0}
