; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_len64_reroll0/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_len64_reroll0/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i64, ptr %3, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i64, ptr %5, align 1
  %7 = add i64 %1, -3692699387471206834
  %8 = xor i64 %4, %7
  %9 = sub i64 -3675093282664558467, %1
  %10 = xor i64 %6, %9
  %11 = zext i64 %8 to i128
  %12 = zext i64 %10 to i128
  %13 = mul nuw i128 %12, %11
  %14 = lshr i128 %13, 64
  %15 = xor i128 %14, %13
  %16 = trunc i128 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i64, ptr %19, align 1
  %21 = add i64 %1, -629619327510231436
  %22 = xor i64 %18, %21
  %23 = sub i64 -9134946782546652954, %1
  %24 = xor i64 %20, %23
  %25 = zext i64 %22 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %16, -8224016703601598016
  %32 = add i64 %31, %30
  %33 = load i64, ptr %0, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i64, ptr %34, align 1
  %36 = add i64 %1, 2568260970027576377
  %37 = xor i64 %33, %36
  %38 = sub i64 -639039334258736852, %1
  %39 = xor i64 %35, %38
  %40 = zext i64 %37 to i128
  %41 = zext i64 %39 to i128
  %42 = mul nuw i128 %41, %40
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %32, %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %1, -8966499887502561815
  %52 = xor i64 %48, %51
  %53 = sub i64 -5209706959179045724, %1
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = lshr i64 %61, 37
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  ret i64 %66
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
