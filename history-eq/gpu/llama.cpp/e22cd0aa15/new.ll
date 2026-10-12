; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/e22cd0aa15/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/e22cd0aa15/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_small_batch(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %2, 127
  %6 = or i32 %5, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = icmp eq i32 %0, 30
  %10 = icmp ult i32 %0, 4
  %11 = or i1 %10, %9
  %12 = and i32 %0, -2
  %13 = icmp eq i32 %12, 6
  %14 = or i1 %11, %13
  %15 = icmp eq i32 %0, 8
  %16 = or i1 %15, %14
  %17 = icmp eq i32 %0, 39
  %18 = or i1 %17, %16
  %19 = icmp eq i32 %0, 20
  %20 = or i1 %19, %18
  %21 = add i32 %3, -2
  %22 = icmp ult i32 %21, 7
  %23 = and i1 %22, %20
  br i1 %23, label %30, label %24

24:                                               ; preds = %8
  %25 = add i32 %0, -10
  %26 = icmp ult i32 %25, 5
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = add i32 %3, -4
  %29 = icmp ult i32 %28, 5
  br label %30

30:                                               ; preds = %24, %8, %27, %4
  %31 = phi i1 [ false, %4 ], [ true, %8 ], [ %29, %27 ], [ false, %24 ]
  ret i1 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_bf16() local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_q2_k() local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @select_q3_k() local_unnamed_addr #0 {
  ret i1 true
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
