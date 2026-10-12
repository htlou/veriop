; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/08aff8b/wrap_client.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/08aff8b/wrap_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @target_client_xxh32_twice(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef %2) #2
  %5 = tail call i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef %2) #2
  %6 = sub i32 %4, %5
  ret i32 %6
}

declare i32 @XXH32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @target_client_xxh64_twice(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @XXH64(ptr noundef %0, i64 noundef %1, i64 noundef %2) #2
  %5 = tail call i64 @XXH64(ptr noundef %0, i64 noundef %1, i64 noundef %2) #2
  %6 = sub i64 %4, %5
  ret i64 %6
}

declare i64 @XXH64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @target_client_xxh3_twice(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @XXH3_64bits(ptr noundef %0, i64 noundef %1) #2
  %4 = tail call i64 @XXH3_64bits(ptr noundef %0, i64 noundef %1) #2
  %5 = sub i64 %3, %4
  ret i64 %5
}

declare i64 @XXH3_64bits(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @target_client_digest_twice(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @XXH64_digest(ptr noundef %0) #2
  %3 = tail call i64 @XXH64_digest(ptr noundef %0) #2
  %4 = sub i64 %2, %3
  ret i64 %4
}

declare i64 @XXH64_digest(ptr noundef) local_unnamed_addr #1

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
