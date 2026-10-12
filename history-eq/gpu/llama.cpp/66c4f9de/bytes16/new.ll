; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/66c4f9de/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/66c4f9de/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @target_q40_0(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = zext i32 %0 to i64
  %10 = zext i32 %4 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = zext i32 %1 to i64
  %14 = zext i32 %5 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or disjoint i64 %15, %13
  %17 = insertvalue { i64, i64 } poison, i64 %12, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @target_q40_1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = zext i32 %2 to i64
  %10 = zext i32 %6 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = zext i32 %3 to i64
  %14 = zext i32 %7 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or disjoint i64 %15, %13
  %17 = insertvalue { i64, i64 } poison, i64 %12, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @target_q41_0(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = zext i32 %0 to i64
  %10 = zext i32 %4 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = zext i32 %1 to i64
  %14 = zext i32 %5 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or disjoint i64 %15, %13
  %17 = insertvalue { i64, i64 } poison, i64 %12, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @target_q41_1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = zext i32 %2 to i64
  %10 = zext i32 %6 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = zext i32 %3 to i64
  %14 = zext i32 %7 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or disjoint i64 %15, %13
  %17 = insertvalue { i64, i64 } poison, i64 %12, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
