; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len32_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len32_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 16)) %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = add i64 %1, 2568260970027576377
  %8 = xor i64 %4, %7
  %9 = sub i64 -639039334258736852, %1
  %10 = xor i64 %6, %9
  %11 = zext i64 %8 to i128
  %12 = zext i64 %10 to i128
  %13 = mul nuw i128 %12, %11
  %14 = lshr i128 %13, 64
  %15 = xor i128 %14, %13
  %16 = trunc i128 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %20 = load i64, ptr %19, align 1
  %21 = add i64 %1, -8966499887502561815
  %22 = xor i64 %18, %21
  %23 = sub i64 -5209706959179045724, %1
  %24 = xor i64 %20, %23
  %25 = zext i64 %22 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = mul i64 %1, -7046029288634856825
  %32 = add i64 %31, -4112008351800799008
  %33 = add i64 %32, %16
  %34 = add i64 %33, %30
  %35 = mul i64 %33, 1609587929392839161
  %36 = mul i64 %30, -8796714831421723037
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
