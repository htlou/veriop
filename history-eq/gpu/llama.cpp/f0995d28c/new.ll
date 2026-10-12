; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f0995d28c/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f0995d28c/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @vector_gate(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %1, 19
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = and i64 %0, 127
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  switch i64 %0, label %8 [
    i64 192, label %11
    i64 96, label %11
  ]

8:                                                ; preds = %7
  %9 = icmp eq i64 %0, 576
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %7, %4, %8, %2
  %12 = phi i32 [ 0, %2 ], [ 1, %7 ], [ %10, %8 ], [ 1, %4 ], [ 1, %7 ]
  ret i32 %12
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
