; ModuleID = 'history-eq/c/zstd/68c14bd/zero_weights.c'
source_filename = "history-eq/c/zstd/68c14bd/zero_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @zstd_old_has_zero(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = add i8 %2, -13
  %5 = icmp ult i8 %4, -12
  %6 = add i32 %1, -256
  %7 = icmp ult i32 %6, -255
  %8 = or i1 %7, %5
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = zext nneg i32 %1 to i64
  br label %18

11:                                               ; preds = %18
  %12 = add nuw nsw i64 %19, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %14, label %18, !llvm.loop !5

14:                                               ; preds = %11
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %14
  %17 = zext nneg i32 %1 to i64
  br label %23

18:                                               ; preds = %9, %11
  %19 = phi i64 [ 0, %9 ], [ %12, %11 ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !8
  %22 = icmp ugt i8 %21, 12
  br i1 %22, label %33, label %11

23:                                               ; preds = %16, %23
  %24 = phi i64 [ 0, %16 ], [ %31, %23 ]
  %25 = phi i32 [ 0, %16 ], [ %30, %23 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  %27 = load i8, ptr %26, align 1, !tbaa !8
  %28 = icmp eq i8 %27, 0
  %29 = zext i1 %28 to i32
  %30 = or i32 %25, %29
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %17
  br i1 %32, label %33, label %23, !llvm.loop !11

33:                                               ; preds = %18, %23, %14, %3
  %34 = phi i32 [ 0, %3 ], [ 0, %14 ], [ %30, %23 ], [ 0, %18 ]
  ret i32 %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @zstd_new_has_zero(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = add i8 %2, -13
  %5 = icmp ult i8 %4, -12
  %6 = add i32 %1, -256
  %7 = icmp ult i32 %6, -255
  %8 = or i1 %7, %5
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %9, %17
  %12 = phi i64 [ 0, %9 ], [ %21, %17 ]
  %13 = phi i32 [ 0, %9 ], [ %20, %17 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  %15 = load i8, ptr %14, align 1, !tbaa !8
  %16 = icmp ugt i8 %15, 12
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = icmp eq i8 %15, 0
  %19 = zext i1 %18 to i32
  %20 = add i32 %13, %19
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %23, label %11, !llvm.loop !12

23:                                               ; preds = %17
  %24 = icmp ne i32 %20, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %11, %23, %3
  %27 = phi i32 [ 0, %3 ], [ %25, %23 ], [ 0, %11 ]
  ret i32 %27
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
