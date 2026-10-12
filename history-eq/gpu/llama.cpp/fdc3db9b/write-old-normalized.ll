; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/fdc3db9b/write-old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/fdc3db9b/write-old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%u%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @transfer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %0, align 1
  br label %5

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %9, %5 ]
  %7 = shl nuw nsw i64 %6, 2
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  store i32 %3, ptr %8, align 1
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %6, 0
  br i1 %10, label %5, label %4, !llvm.loop !5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [12 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #4
  br label %11

2:                                                ; preds = %11
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i32, ptr %1, align 4
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %9, %5 ]
  %7 = shl nuw nsw i64 %6, 2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 %7
  store i32 %4, ptr %8, align 4
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %6, 0
  br i1 %10, label %5, label %18, !llvm.loop !5

11:                                               ; preds = %0, %11
  %12 = phi i64 [ 0, %0 ], [ %15, %11 ]
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 0, i64 %12
  store i8 %13, ptr %14, align 1, !tbaa !8
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, 12
  br i1 %16, label %2, label %11, !llvm.loop !11

17:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #4
  ret i32 0

18:                                               ; preds = %5, %18
  %19 = phi i64 [ %26, %18 ], [ 0, %5 ]
  %20 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !8
  %22 = zext i8 %21 to i32
  %23 = icmp eq i64 %19, 11
  %24 = select i1 %23, ptr @.str.1, ptr @.str.2
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %22, ptr noundef nonnull %24)
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, 12
  br i1 %27, label %17, label %18, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
