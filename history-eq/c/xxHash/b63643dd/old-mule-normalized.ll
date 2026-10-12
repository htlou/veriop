; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b63643dd/old-mule.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b63643dd/old-mule.c"
target datalayout = "E-m:e-i1:8:16-i8:8:16-i64:64-f128:64-v128:64-a:8:16-n32:64"
target triple = "s390x-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none)
define dso_local <2 x i64> @target(<4 x i32> noundef %0, <4 x i32> noundef %1) local_unnamed_addr #0 {
  %3 = tail call <2 x i64> asm "vmuleuw $0, $1, $2", "=v,v,v"(<4 x i32> %0, <4 x i32> %1) #1
  ret <2 x i64> %3
}

attributes #0 = { nofree nosync nounwind memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="z13" "target-features"="+transactional-execution,+vector" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"s390x-visible-vector-ABI", i32 1}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 189}
