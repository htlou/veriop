; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/fdc3db9b/read-new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/fdc3db9b/read-new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%u%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @transfer(ptr nocapture noundef initializes((8, 12)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i64, ptr %0, align 1
  store i64 %3, ptr %2, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [12 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #4
  br label %5

2:                                                ; preds = %5
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i64, ptr %1, align 8
  store i64 %4, ptr %3, align 4
  br label %12

5:                                                ; preds = %0, %5
  %6 = phi i64 [ 0, %0 ], [ %9, %5 ]
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 0, i64 %6
  store i8 %7, ptr %8, align 1, !tbaa !5
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 12
  br i1 %10, label %2, label %5, !llvm.loop !8

11:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #4
  ret i32 0

12:                                               ; preds = %2, %12
  %13 = phi i64 [ 0, %2 ], [ %20, %12 ]
  %14 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = icmp eq i64 %13, 11
  %18 = select i1 %17, ptr @.str.1, ptr @.str.2
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %16, ptr noundef nonnull %18)
  %20 = add nuw nsw i64 %13, 1
  %21 = icmp eq i64 %20, 12
  br i1 %21, label %11, label %12, !llvm.loop !11
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
