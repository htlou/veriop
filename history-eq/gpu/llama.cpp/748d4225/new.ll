; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/748d4225/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/748d4225/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_q4(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 252645135
  %3 = add nuw i32 %2, 2021161080
  %4 = xor i32 %3, -2139062144
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_q5(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 522133279
  %3 = add nuw i32 %2, 1886417008
  %4 = xor i32 %3, -2139062144
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_q3(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 117901063
  %3 = add nuw i32 %2, 2088533116
  %4 = xor i32 %3, -2139062144
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_sc3_q6(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1061109567
  %3 = add nuw i32 %2, 1616928864
  %4 = xor i32 %3, -2139062144
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_q3_pair(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 50529027
  %4 = and i32 %1, 67372036
  %5 = or disjoint i32 %3, -2139062144
  %6 = sub nuw i32 %5, %4
  %7 = xor i32 %6, -2139062144
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_unrestricted(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = or i32 %0, -2139062144
  %4 = and i32 %1, 2139062143
  %5 = sub nuw i32 %3, %4
  %6 = xor i32 %1, %0
  %7 = and i32 %6, -2139062144
  %8 = xor i32 %7, %5
  %9 = xor i32 %8, -2139062144
  ret i32 %9
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
