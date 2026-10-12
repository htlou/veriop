; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/zstd/007cda88/xxh64_round.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/zstd/007cda88/xxh64_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind
define dso_local i64 @xxh_old_round(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = mul i64 %5, -4417276706812531889
  %7 = load i64, ptr %3, align 8
  %8 = add i64 %7, %6
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = shl i64 %9, 31
  %11 = load i64, ptr %3, align 8
  %12 = lshr i64 %11, 33
  %13 = or i64 %10, %12
  store i64 %13, ptr %3, align 8
  %14 = load i64, ptr %3, align 8
  %15 = mul i64 %14, -7046029288634856825
  store i64 %15, ptr %3, align 8
  %16 = load i64, ptr %3, align 8
  ret i64 %16
}

; Function Attrs: noinline nounwind
define dso_local i64 @xxh_new_round(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = mul i64 %5, -4417276706812531889
  %7 = load i64, ptr %3, align 8
  %8 = add i64 %7, %6
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = shl i64 %9, 31
  %11 = load i64, ptr %3, align 8
  %12 = lshr i64 %11, 33
  %13 = or i64 %10, %12
  store i64 %13, ptr %3, align 8
  %14 = load i64, ptr %3, align 8
  %15 = mul i64 %14, -7046029288634856825
  store i64 %15, ptr %3, align 8
  %16 = load i64, ptr %3, align 8
  %17 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %16) #1, !srcloc !5
  store i64 %17, ptr %3, align 8
  %18 = load i64, ptr %3, align 8
  ret i64 %18
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2147534007}
