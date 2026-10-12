; ModuleID = 'history-eq/c/zstd/0cf74fa9/old.c'
source_filename = "history-eq/c/zstd/0cf74fa9/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none) uwtable
define dso_local range(i64 88, 4153) i64 @target_buffer_request(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %2)
  %3 = icmp ult i32 %0, 129
  tail call void @llvm.assume(i1 %3)
  %4 = shl nuw nsw i32 %0, 5
  %5 = add nuw nsw i32 %4, 56
  %6 = zext nneg i32 %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none) uwtable
define dso_local range(i64 24, 1041) i64 @target_cctx_request(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %2)
  %3 = icmp ult i32 %0, 129
  tail call void @llvm.assume(i1 %3)
  %4 = shl nuw nsw i32 %0, 3
  %5 = add nuw nsw i32 %4, 16
  %6 = zext nneg i32 %5 to i64
  ret i64 %6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
