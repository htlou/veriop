; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/asmtest/b.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/_work2020/asmtest/b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @target_f(i64 noundef %0) local_unnamed_addr #0 {
  %2 = mul i64 %0, 3
  %3 = freeze i64 %2
  %4 = add i64 %3, 1
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_g(i64 noundef %0) local_unnamed_addr #0 {
  %2 = mul i64 %0, 3
  %3 = freeze i64 %2
  %4 = add i64 %3, 1
  ret i64 %4
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 163}
!6 = !{i64 257}
