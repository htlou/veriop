; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len32_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len32_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 16)) %2) local_unnamed_addr #0 {
  %4 = mul i64 %1, -7046029288634856825
  %5 = add i64 %4, -4112008351800799008
  %6 = load i64, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = add i64 %1, 2568260970027576377
  %10 = xor i64 %6, %9
  %11 = sub i64 -639039334258736852, %1
  %12 = xor i64 %8, %11
  %13 = zext i64 %10 to i128
  %14 = zext i64 %12 to i128
  %15 = mul nuw i128 %14, %13
  %16 = lshr i128 %15, 64
  %17 = xor i128 %16, %15
  %18 = trunc i128 %17 to i64
  %19 = add i64 %5, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i64, ptr %22, align 1
  %24 = add i64 %1, -8966499887502561815
  %25 = xor i64 %21, %24
  %26 = sub i64 -5209706959179045724, %1
  %27 = xor i64 %23, %26
  %28 = zext i64 %25 to i128
  %29 = zext i64 %27 to i128
  %30 = mul nuw i128 %29, %28
  %31 = lshr i128 %30, 64
  %32 = xor i128 %31, %30
  %33 = trunc i128 %32 to i64
  %34 = add i64 %19, %33
  %35 = mul i64 %19, 1609587929392839161
  %36 = mul i64 %33, -8796714831421723037
  %37 = sub i64 32, %1
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %35, %38
  %40 = add i64 %39, %36
  %41 = lshr i64 %34, 37
  %42 = xor i64 %41, %34
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  %46 = lshr i64 %40, 37
  %47 = xor i64 %46, %40
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  %51 = sub i64 0, %50
  store i64 %45, ptr %2, align 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %51, ptr %52, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
