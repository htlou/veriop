; ModuleID = 'history-eq/gpu/llama.cpp/8d94219a/old.c'
source_filename = "history-eq/gpu/llama.cpp/8d94219a/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @target(i8* noundef readonly %0, i8* noundef writeonly %1) local_unnamed_addr #0 {
  br label %4

3:                                                ; preds = %9
  ret void

4:                                                ; preds = %2, %9
  %5 = phi i64 [ 0, %2 ], [ %10, %9 ]
  %6 = phi i64 [ 0, %2 ], [ %18, %9 ]
  %7 = mul nuw nsw i64 %5, 80
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %4, label %3, !llvm.loop !5

12:                                               ; preds = %4, %12
  %13 = phi i64 [ 0, %4 ], [ %19, %12 ]
  %14 = phi i64 [ %6, %4 ], [ %18, %12 ]
  %15 = mul nuw nsw i64 %13, 24
  %16 = getelementptr inbounds i8, i8* %8, i64 %15
  %17 = getelementptr inbounds i8, i8* %1, i64 %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %17, i8* noundef nonnull align 1 dereferenceable(16) %16, i64 16, i1 false)
  %18 = add i64 %14, 16
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %9, label %12, !llvm.loop !8
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias writeonly, i8* noalias readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
