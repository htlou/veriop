; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/1548a240/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/1548a240/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @target(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %0, -32
  %5 = icmp ult i64 %4, 2147483616
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, %0
  %7 = icmp ult i64 %2, -9223372036854775807
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.assume(i1 %7)
  %8 = lshr i64 %0, 2
  %9 = lshr i64 %1, 2
  %10 = icmp samesign ult i64 %9, %8
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = shl i64 %1, 2
  %13 = add i64 %2, %12
  br label %19

14:                                               ; preds = %3
  %15 = icmp eq i64 %9, %8
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = shl i64 %1, 2
  %18 = add i64 %2, %17
  br label %19

19:                                               ; preds = %14, %16, %11
  %20 = phi i64 [ %13, %11 ], [ %18, %16 ], [ -1, %14 ]
  ret i64 %20
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
