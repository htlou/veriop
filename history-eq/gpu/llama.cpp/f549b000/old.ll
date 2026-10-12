; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f549b000/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f549b000/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @target(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = zext i64 %1 to i128
  %7 = zext i64 %0 to i128
  %8 = lshr i64 %3, 40
  %9 = zext nneg i64 %8 to i128
  %10 = shl nuw i128 %9, 104
  %11 = shl i128 %6, 80
  %12 = shl nuw nsw i128 %7, 16
  %13 = or disjoint i128 %11, %12
  %14 = and i128 %13, 20282409603651670422847739658240
  %15 = or disjoint i128 %10, %14
  %16 = and i64 %2, 1099511627775
  %17 = trunc i128 %14 to i64
  %18 = or disjoint i64 %16, %17
  %19 = lshr i128 %15, 64
  %20 = trunc nuw i128 %19 to i64
  %21 = insertvalue { i64, i64 } poison, i64 %18, 0
  %22 = insertvalue { i64, i64 } %21, i64 %20, 1
  ret { i64, i64 } %22
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
