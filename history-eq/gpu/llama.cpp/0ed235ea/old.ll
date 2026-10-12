; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/0ed235ea/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/0ed235ea/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local i64 @target(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 3072
  tail call void @llvm.assume(i1 %2)
  %3 = and i32 %0, 4092
  %4 = lshr i32 %0, 10
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 10
  %7 = zext nneg i32 %3 to i64
  %8 = sub nsw i64 %7, %6
  %9 = shl nuw nsw i64 %5, 11
  %10 = add nsw i64 %8, %9
  %11 = and i32 %0, 3
  %12 = zext nneg i32 %11 to i64
  %13 = or disjoint i64 %7, %12
  %14 = shl nuw nsw i64 %13, 32
  %15 = or i64 %10, %14
  %16 = or disjoint i64 %15, %12
  ret i64 %16
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
