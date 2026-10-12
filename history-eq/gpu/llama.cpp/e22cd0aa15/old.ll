; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/e22cd0aa15/old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/e22cd0aa15/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_small_batch(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %2, 127
  %6 = or i32 %5, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = icmp ult i32 %0, 4
  %10 = and i32 %0, -2
  %11 = icmp eq i32 %10, 6
  %12 = or i1 %9, %11
  %13 = icmp eq i32 %0, 8
  %14 = or i1 %13, %12
  %15 = icmp eq i32 %0, 39
  %16 = or i1 %15, %14
  %17 = icmp eq i32 %0, 20
  %18 = or i1 %17, %16
  %19 = add i32 %3, -2
  %20 = icmp ult i32 %19, 7
  %21 = and i1 %20, %18
  br i1 %21, label %28, label %22

22:                                               ; preds = %8
  %23 = add i32 %0, -12
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = add i32 %3, -4
  %27 = icmp ult i32 %26, 5
  br label %28

28:                                               ; preds = %22, %8, %25, %4
  %29 = phi i1 [ false, %4 ], [ true, %8 ], [ %27, %25 ], [ false, %22 ]
  ret i1 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_bf16() local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_q2_k() local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_q3_k() local_unnamed_addr #0 {
  ret i1 false
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
