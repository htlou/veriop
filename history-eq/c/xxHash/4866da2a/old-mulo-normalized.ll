; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4866da2a/old-mulo.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4866da2a/old-mulo.c"
target datalayout = "e-m:e-Fn32-i64:64-i128:128-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none)
define dso_local <2 x i64> @target(<4 x i32> noundef %0, <4 x i32> noundef %1) local_unnamed_addr #0 {
  %3 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %0, <4 x i32> %1) #1
  ret <2 x i64> %3
}

attributes #0 = { nofree nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr9" "target-features"="+altivec,+bpermd,+crbits,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+isa-v30-instructions,+power8-vector,+power9-vector,+quadword-atomics,+vsx,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-privileged,-rop-protect,-spe" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!4 = !{i64 210}
