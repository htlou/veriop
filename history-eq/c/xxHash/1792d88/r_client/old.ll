; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1792d88/wrap_client.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1792d88/wrap_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @target_client_create(ptr noundef initializes((0, 4)) %0) local_unnamed_addr #0 {
  store i32 1, ptr %0, align 4
  %2 = tail call ptr @XXH64_createState() #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  store i32 2, ptr %2, align 4
  %5 = load i32, ptr %0, align 4
  %6 = tail call i32 @XXH64_freeState(ptr noundef nonnull %2) #2
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %5, %4 ], [ -1, %1 ]
  ret i32 %8
}

declare ptr @XXH64_createState() local_unnamed_addr #1

declare i32 @XXH64_freeState(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
