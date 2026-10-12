; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/748d4225/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/748d4225/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_q4(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 252645135
  %3 = bitcast i32 %2 to <4 x i8>
  %4 = tail call <4 x i8> @llvm.sadd.sat.v4i8(<4 x i8> %3, <4 x i8> splat (i8 -8))
  %5 = bitcast <4 x i8> %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_q5(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 522133279
  %3 = bitcast i32 %2 to <4 x i8>
  %4 = tail call <4 x i8> @llvm.sadd.sat.v4i8(<4 x i8> %3, <4 x i8> splat (i8 -16))
  %5 = bitcast <4 x i8> %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_q3(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 117901063
  %3 = bitcast i32 %2 to <4 x i8>
  %4 = tail call <4 x i8> @llvm.sadd.sat.v4i8(<4 x i8> %3, <4 x i8> splat (i8 -4))
  %5 = bitcast <4 x i8> %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_sc3_q6(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1061109567
  %3 = bitcast i32 %2 to <4 x i8>
  %4 = tail call <4 x i8> @llvm.sadd.sat.v4i8(<4 x i8> %3, <4 x i8> splat (i8 -32))
  %5 = bitcast <4 x i8> %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_q3_pair(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 50529027
  %4 = and i32 %1, 67372036
  %5 = bitcast i32 %3 to <4 x i8>
  %6 = bitcast i32 %4 to <4 x i8>
  %7 = tail call <4 x i8> @llvm.ssub.sat.v4i8(<4 x i8> %5, <4 x i8> %6)
  %8 = bitcast <4 x i8> %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_unrestricted(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = bitcast i32 %0 to <4 x i8>
  %4 = bitcast i32 %1 to <4 x i8>
  %5 = tail call <4 x i8> @llvm.ssub.sat.v4i8(<4 x i8> %3, <4 x i8> %4)
  %6 = bitcast <4 x i8> %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.ssub.sat.v4i8(<4 x i8>, <4 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.sadd.sat.v4i8(<4 x i8>, <4 x i8>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
