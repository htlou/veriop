; ModuleID = 'history-eq/c/zstd/5d39357b/threshold.c'
source_filename = "history-eq/c/zstd/5d39357b/threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i64 0, 38757784879104) i64 @target_long_length(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = add nuw nsw i64 %4, %3
  %6 = icmp samesign ult i64 %5, 131070
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ugt i32 %0, 65535
  %8 = icmp ult i32 %1, 65536
  %9 = and i32 %0, 65535
  %10 = icmp eq i32 %9, 65535
  %11 = select i1 %10, i64 37383395344384, i64 0
  %12 = and i32 %1, 65535
  %13 = icmp eq i32 %12, 65535
  %14 = select i1 %13, i64 219043332096, i64 0
  %15 = select i1 %7, i64 38482906972160, i64 %11
  %16 = select i1 %8, i64 %14, i64 223338299392
  %17 = shl i32 %0, 16
  %18 = or disjoint i32 %12, %17
  %19 = zext i32 %18 to i64
  %20 = or disjoint i64 %15, %19
  %21 = or disjoint i64 %20, %16
  ret i64 %21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
