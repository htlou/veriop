; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/39eab74a/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/39eab74a/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
define dso_local zeroext i1 @target(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
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
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %7, %2
  %16 = icmp sgt i64 %4, 32767
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = load i64, ptr %1, align 8, !tbaa !7
  %19 = icmp sgt i64 %18, 2047
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %22 = load i64, ptr %21, align 8, !tbaa !7
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %26 = load i64, ptr %25, align 8, !tbaa !7
  %27 = icmp eq i64 %26, 1
  br label %28

28:                                               ; preds = %15, %17, %20, %24, %11
  %29 = phi i1 [ true, %11 ], [ false, %20 ], [ false, %17 ], [ false, %15 ], [ %27, %24 ]
  ret i1 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @witness() local_unnamed_addr #1 {
  ret i1 false
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
