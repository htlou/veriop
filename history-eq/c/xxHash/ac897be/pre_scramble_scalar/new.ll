; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/pre_scramble_scalar/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/pre_scramble_scalar/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_scramble(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i64, ptr %16, align 8
  %18 = load i64, ptr %1, align 1
  %19 = lshr i64 %3, 47
  %20 = xor i64 %18, %19
  %21 = xor i64 %20, %3
  %22 = mul i64 %21, 2654435761
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %24 = load i64, ptr %23, align 1
  %25 = lshr i64 %5, 47
  %26 = xor i64 %24, %25
  %27 = xor i64 %26, %5
  %28 = mul i64 %27, 2654435761
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = lshr i64 %7, 47
  %32 = xor i64 %30, %31
  %33 = xor i64 %32, %7
  %34 = mul i64 %33, 2654435761
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %36 = load i64, ptr %35, align 1
  %37 = lshr i64 %9, 47
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %9
  %40 = mul i64 %39, 2654435761
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %42 = load i64, ptr %41, align 1
  %43 = lshr i64 %11, 47
  %44 = xor i64 %42, %43
  %45 = xor i64 %44, %11
  %46 = mul i64 %45, 2654435761
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %48 = load i64, ptr %47, align 1
  %49 = lshr i64 %13, 47
  %50 = xor i64 %48, %49
  %51 = xor i64 %50, %13
  %52 = mul i64 %51, 2654435761
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %54 = load i64, ptr %53, align 1
  %55 = lshr i64 %15, 47
  %56 = xor i64 %54, %55
  %57 = xor i64 %56, %15
  %58 = mul i64 %57, 2654435761
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %60 = load i64, ptr %59, align 1
  %61 = lshr i64 %17, 47
  %62 = xor i64 %60, %61
  %63 = xor i64 %62, %17
  %64 = mul i64 %63, 2654435761
  store i64 %22, ptr %0, align 8
  store i64 %28, ptr %4, align 8
  store i64 %34, ptr %6, align 8
  store i64 %40, ptr %8, align 8
  store i64 %46, ptr %10, align 8
  store i64 %52, ptr %12, align 8
  store i64 %58, ptr %14, align 8
  store i64 %64, ptr %16, align 8
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
