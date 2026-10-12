; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/76614f35/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/76614f35/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @target_q8_gate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %3)
  %4 = and i32 %0, 15
  %5 = icmp eq i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne i32 %1, 0
  tail call void @llvm.assume(i1 %6)
  %7 = and i32 %1, 15
  %8 = icmp eq i32 %7, 0
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i32 %1, 32
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @target_gemv_gate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %3)
  %4 = and i32 %0, 15
  %5 = icmp eq i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne i32 %1, 0
  tail call void @llvm.assume(i1 %6)
  %7 = and i32 %1, 15
  %8 = icmp eq i32 %7, 0
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i32 %1, 32
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @target_gemv_assert_survives(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %4)
  %5 = and i32 %0, 15
  %6 = icmp eq i32 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne i32 %1, 0
  tail call void @llvm.assume(i1 %7)
  %8 = and i32 %1, 15
  %9 = icmp eq i32 %8, 0
  tail call void @llvm.assume(i1 %9)
  %10 = icmp ne i32 %1, 32
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @target_q8_gate_stable(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %3)
  %4 = and i32 %0, 15
  %5 = icmp eq i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp eq i32 %1, %0
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq i32 %0, 32
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @target_gemv_gate_stable(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %3)
  %4 = and i32 %0, 15
  %5 = icmp eq i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp eq i32 %1, %0
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq i32 %0, 32
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @target_gemv_assert_survives_stable(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %4)
  %5 = and i32 %0, 15
  %6 = icmp eq i32 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq i32 %1, %0
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne i32 %0, 32
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
