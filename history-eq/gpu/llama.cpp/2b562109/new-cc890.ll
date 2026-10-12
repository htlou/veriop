; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/2b562109/new-cc890.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/2b562109/new-cc890.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_Z25ggml_cuda_should_use_mmvq9ggml_typeix(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, 10
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  switch i32 %1, label %24 [
    i32 890, label %6
    i32 1200, label %15
    i32 1210, label %22
  ]

6:                                                ; preds = %5
  switch i32 %0, label %13 [
    i32 10, label %7
    i32 11, label %9
    i32 12, label %11
    i32 13, label %11
  ]

7:                                                ; preds = %6
  %8 = icmp slt i64 %2, 5
  br label %26

9:                                                ; preds = %6
  %10 = icmp slt i64 %2, 7
  br label %26

11:                                               ; preds = %6, %6
  %12 = icmp slt i64 %2, 8
  br label %26

13:                                               ; preds = %6
  %14 = icmp slt i64 %2, 9
  br label %26

15:                                               ; preds = %5
  switch i32 %0, label %20 [
    i32 10, label %16
    i32 11, label %16
    i32 12, label %16
    i32 13, label %16
    i32 14, label %18
  ]

16:                                               ; preds = %15, %15, %15, %15
  %17 = icmp slt i64 %2, 6
  br label %26

18:                                               ; preds = %15
  %19 = icmp slt i64 %2, 8
  br label %26

20:                                               ; preds = %15
  %21 = icmp slt i64 %2, 9
  br label %26

22:                                               ; preds = %5
  %23 = icmp slt i64 %2, 7
  br label %26

24:                                               ; preds = %5
  %25 = icmp slt i64 %2, 9
  br label %26

26:                                               ; preds = %3, %24, %22, %20, %18, %16, %13, %11, %9, %7
  %27 = phi i1 [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %23, %22 ], [ %25, %24 ], [ false, %3 ]
  ret i1 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @target(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i64 %0, 5
  %3 = zext i1 %2 to i32
  ret i32 %3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
