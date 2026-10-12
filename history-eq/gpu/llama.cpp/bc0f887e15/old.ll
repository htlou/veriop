; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/bc0f887e15/old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/bc0f887e15/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @support_matmul(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  switch i32 %0, label %5 [
    i32 1, label %3
    i32 2, label %3
    i32 3, label %3
    i32 4, label %6
  ]

3:                                                ; preds = %2, %2, %2
  %4 = icmp sgt i64 %1, 33
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %2, %3, %5
  %7 = phi i1 [ false, %5 ], [ %4, %3 ], [ true, %2 ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @support_q8_0_32() local_unnamed_addr #0 {
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
