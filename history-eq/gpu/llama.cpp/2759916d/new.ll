; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/2759916d/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/2759916d/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 1073741824) i32 @target(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = mul nuw nsw i64 %2, 1431655766
  %4 = lshr i64 %3, 32
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = add i32 %0, %5
  %7 = lshr i32 %6, 2
  ret i32 %7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
