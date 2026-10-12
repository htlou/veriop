; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/0bbc87b16/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/0bbc87b16/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 461168601842738791) i64 @threshold(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i32 %1, 4098
  %6 = icmp eq i32 %3, 0
  %7 = or i1 %5, %6
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 1
  %10 = icmp ult i32 %3, 32
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = zext nneg i32 %3 to i64
  %14 = mul nuw nsw i64 %13, 500000000
  br label %22

15:                                               ; preds = %8
  %16 = icmp ne i32 %2, 1
  %17 = icmp ult i32 %3, 24
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = zext nneg i32 %3 to i64
  %21 = mul nuw nsw i64 %20, 2000000000
  br label %22

22:                                               ; preds = %12, %19, %15, %4
  %23 = phi i64 [ %14, %12 ], [ %21, %19 ], [ 200000000000, %15 ], [ 200000000000, %4 ]
  %24 = udiv i64 %0, 40
  %25 = tail call noundef i64 @llvm.umin.i64(i64 %23, i64 %24)
  ret i64 %25
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
