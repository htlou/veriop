; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_avx512.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_avx512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_acc512_avx512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <8 x i64> poison, i64 %1, i64 0
  %27 = insertelement <8 x i64> %26, i64 %2, i64 1
  %28 = insertelement <8 x i64> %27, i64 %3, i64 2
  %29 = insertelement <8 x i64> %28, i64 %4, i64 3
  %30 = insertelement <8 x i64> %29, i64 %5, i64 4
  %31 = insertelement <8 x i64> %30, i64 %6, i64 5
  %32 = insertelement <8 x i64> %31, i64 %7, i64 6
  %33 = insertelement <8 x i64> %32, i64 %8, i64 7
  %34 = insertelement <8 x i64> poison, i64 %9, i64 0
  %35 = insertelement <8 x i64> %34, i64 %10, i64 1
  %36 = insertelement <8 x i64> %35, i64 %11, i64 2
  %37 = insertelement <8 x i64> %36, i64 %12, i64 3
  %38 = insertelement <8 x i64> %37, i64 %13, i64 4
  %39 = insertelement <8 x i64> %38, i64 %14, i64 5
  %40 = insertelement <8 x i64> %39, i64 %15, i64 6
  %41 = insertelement <8 x i64> %40, i64 %16, i64 7
  %42 = insertelement <8 x i64> poison, i64 %17, i64 0
  %43 = insertelement <8 x i64> %42, i64 %18, i64 1
  %44 = insertelement <8 x i64> %43, i64 %19, i64 2
  %45 = insertelement <8 x i64> %44, i64 %20, i64 3
  %46 = insertelement <8 x i64> %45, i64 %21, i64 4
  %47 = insertelement <8 x i64> %46, i64 %22, i64 5
  %48 = insertelement <8 x i64> %47, i64 %23, i64 6
  %49 = insertelement <8 x i64> %48, i64 %24, i64 7
  %50 = xor <8 x i64> %49, %41
  %51 = bitcast <8 x i64> %50 to <16 x i32>
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = and <8 x i64> %50, splat (i64 4294967295)
  %55 = and <8 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, %54
  %57 = shufflevector <8 x i64> %41, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %58 = add <8 x i64> %33, %57
  %59 = add <8 x i64> %58, %56
  store <8 x i64> %59, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble_avx512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <8 x i64> poison, i64 %1, i64 0
  %19 = insertelement <8 x i64> %18, i64 %2, i64 1
  %20 = insertelement <8 x i64> %19, i64 %3, i64 2
  %21 = insertelement <8 x i64> %20, i64 %4, i64 3
  %22 = insertelement <8 x i64> %21, i64 %5, i64 4
  %23 = insertelement <8 x i64> %22, i64 %6, i64 5
  %24 = insertelement <8 x i64> %23, i64 %7, i64 6
  %25 = insertelement <8 x i64> %24, i64 %8, i64 7
  %26 = insertelement <8 x i64> poison, i64 %9, i64 0
  %27 = insertelement <8 x i64> %26, i64 %10, i64 1
  %28 = insertelement <8 x i64> %27, i64 %11, i64 2
  %29 = insertelement <8 x i64> %28, i64 %12, i64 3
  %30 = insertelement <8 x i64> %29, i64 %13, i64 4
  %31 = insertelement <8 x i64> %30, i64 %14, i64 5
  %32 = insertelement <8 x i64> %31, i64 %15, i64 6
  %33 = insertelement <8 x i64> %32, i64 %16, i64 7
  %34 = lshr <8 x i64> %25, splat (i64 47)
  %35 = xor <8 x i64> %34, %33
  %36 = xor <8 x i64> %35, %25
  %37 = bitcast <8 x i64> %36 to <16 x i32>
  %38 = shufflevector <16 x i32> %37, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %39 = bitcast <16 x i32> %38 to <8 x i64>
  %40 = and <8 x i64> %36, splat (i64 4294967295)
  %41 = mul nuw <8 x i64> %40, splat (i64 2654435761)
  %42 = mul <8 x i64> %39, splat (i64 -7046029290881679360)
  %43 = add <8 x i64> %42, %41
  store <8 x i64> %43, ptr %0, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
