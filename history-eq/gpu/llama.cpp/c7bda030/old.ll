; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c7bda030/old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c7bda030/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @pred(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #0 {
  %10 = icmp eq i64 %0, %7
  %11 = icmp eq i64 %2, %8
  %12 = and i1 %10, %11
  %13 = mul i64 %5, %2
  %14 = icmp eq i64 %1, %13
  %15 = and i1 %14, %12
  %16 = mul i64 %4, %1
  %17 = icmp eq i64 %3, %16
  %18 = and i1 %17, %15
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
