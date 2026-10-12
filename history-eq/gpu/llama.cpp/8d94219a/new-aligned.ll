; ModuleID = 'history-eq/gpu/llama.cpp/8d94219a/new-aligned.c'
source_filename = "history-eq/gpu/llama.cpp/8d94219a/new-aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @target(i8* noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = ptrtoint i8* %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %1, i8* noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false) #3
  %6 = getelementptr inbounds i8, i8* %0, i64 24
  %7 = getelementptr inbounds i8, i8* %1, i64 16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %7, i8* noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false) #3
  %8 = getelementptr inbounds i8, i8* %0, i64 48
  %9 = getelementptr inbounds i8, i8* %1, i64 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %9, i8* noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false) #3
  %10 = getelementptr inbounds i8, i8* %0, i64 80
  %11 = getelementptr inbounds i8, i8* %1, i64 48
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %11, i8* noundef nonnull align 4 dereferenceable(16) %10, i64 16, i1 false) #3
  %12 = getelementptr inbounds i8, i8* %0, i64 104
  %13 = getelementptr inbounds i8, i8* %1, i64 64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %13, i8* noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false) #3
  %14 = getelementptr inbounds i8, i8* %0, i64 128
  %15 = getelementptr inbounds i8, i8* %1, i64 80
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %15, i8* noundef nonnull align 4 dereferenceable(16) %14, i64 16, i1 false) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
