; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/50d22279/new-tail.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/50d22279/new-tail.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @reduce(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = insertelement <4 x float> poison, float %0, i64 0
  %6 = insertelement <4 x float> %5, float %1, i64 1
  %7 = insertelement <4 x float> %6, float %2, i64 2
  %8 = insertelement <4 x float> %7, float %3, i64 3
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %10 = fadd <4 x float> %8, %9
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %12 = fadd <4 x float> %10, %11
  %13 = extractelement <4 x float> %12, i64 0
  ret float %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
