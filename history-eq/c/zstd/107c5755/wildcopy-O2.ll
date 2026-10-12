; ModuleID = 'wildcopy.c'
source_filename = "wildcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind
define dso_local void @zstd_old_wildcopy(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %11, %6 ], [ %1, %3 ]
  %8 = phi ptr [ %10, %6 ], [ %0, %3 ]
  %9 = tail call ptr @memcpy(ptr noundef %8, ptr noundef %7, i64 noundef 8) #4
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %12 = icmp ult ptr %10, %4
  br i1 %12, label %6, label %13, !llvm.loop !4

13:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @zstd_new_wildcopy(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %0, %3 ], [ %9, %5 ]
  %7 = phi ptr [ %1, %3 ], [ %10, %5 ]
  %8 = tail call ptr @memcpy(ptr noundef %6, ptr noundef %7, i64 noundef 8) #4
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %11 = icmp ult ptr %9, %4
  br i1 %11, label %5, label %12, !llvm.loop !6

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef range(i32 0, 256) i32 @zstd_old_probe() local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local range(i32 0, 256) i32 @zstd_new_probe() local_unnamed_addr #0 {
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #5
  store i64 1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8
  %3 = call ptr @memcpy(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef 8) #4
  %4 = load i8, ptr %2, align 8, !tbaa !7
  %5 = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #5
  ret i32 %5
}

; Function Attrs: nounwind
declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
