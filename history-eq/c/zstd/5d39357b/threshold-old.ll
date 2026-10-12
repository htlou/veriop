; ModuleID = 'history-eq/c/zstd/5d39357b/threshold.c'
source_filename = "history-eq/c/zstd/5d39357b/threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i64 0, 55525337202688) i64 @target_long_length(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = add nuw nsw i64 %4, %3
  %6 = icmp samesign ult i64 %5, 131070
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ugt i32 %0, 65534
  %8 = select i1 %7, i32 %0, i32 0
  %9 = icmp ugt i32 %1, 65534
  %10 = select i1 %9, i32 %1, i32 %8
  %11 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 65535, 1) %10, i1 true)
  %12 = sub nuw nsw i32 50, %11
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 40
  %15 = select i1 %7, i32 %10, i32 %0
  %16 = select i1 %7, i64 %14, i64 0
  %17 = sub nuw nsw i32 67, %11
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 32
  %20 = select i1 %9, i64 %19, i64 0
  %21 = shl i32 %15, 16
  %22 = and i32 %1, 65535
  %23 = or disjoint i32 %22, %21
  %24 = zext i32 %23 to i64
  %25 = or disjoint i64 %20, %24
  %26 = or disjoint i64 %25, %16
  ret i64 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
