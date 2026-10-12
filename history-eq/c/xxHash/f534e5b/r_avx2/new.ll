; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_avx2.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_avx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_acc512_avx2(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <4 x i64> poison, i64 %1, i64 0
  %27 = insertelement <4 x i64> %26, i64 %2, i64 1
  %28 = insertelement <4 x i64> %27, i64 %3, i64 2
  %29 = insertelement <4 x i64> %28, i64 %4, i64 3
  %30 = insertelement <4 x i64> poison, i64 %5, i64 0
  %31 = insertelement <4 x i64> %30, i64 %6, i64 1
  %32 = insertelement <4 x i64> %31, i64 %7, i64 2
  %33 = insertelement <4 x i64> %32, i64 %8, i64 3
  %34 = insertelement <4 x i64> poison, i64 %9, i64 0
  %35 = insertelement <4 x i64> %34, i64 %10, i64 1
  %36 = insertelement <4 x i64> %35, i64 %11, i64 2
  %37 = insertelement <4 x i64> %36, i64 %12, i64 3
  %38 = insertelement <4 x i64> poison, i64 %13, i64 0
  %39 = insertelement <4 x i64> %38, i64 %14, i64 1
  %40 = insertelement <4 x i64> %39, i64 %15, i64 2
  %41 = insertelement <4 x i64> %40, i64 %16, i64 3
  %42 = insertelement <4 x i64> poison, i64 %17, i64 0
  %43 = insertelement <4 x i64> %42, i64 %18, i64 1
  %44 = insertelement <4 x i64> %43, i64 %19, i64 2
  %45 = insertelement <4 x i64> %44, i64 %20, i64 3
  %46 = insertelement <4 x i64> poison, i64 %21, i64 0
  %47 = insertelement <4 x i64> %46, i64 %22, i64 1
  %48 = insertelement <4 x i64> %47, i64 %23, i64 2
  %49 = insertelement <4 x i64> %48, i64 %24, i64 3
  %50 = xor <4 x i64> %45, %37
  %51 = lshr <4 x i64> %50, splat (i64 32)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = shufflevector <4 x i64> %37, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %55 = add <4 x i64> %29, %54
  %56 = add <4 x i64> %55, %53
  %57 = xor <4 x i64> %49, %41
  %58 = lshr <4 x i64> %57, splat (i64 32)
  %59 = and <4 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <4 x i64> %59, %58
  %61 = shufflevector <4 x i64> %41, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %62 = add <4 x i64> %33, %61
  %63 = add <4 x i64> %62, %60
  store <4 x i64> %56, ptr %0, align 8
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %63, ptr %64, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble_avx2(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <4 x i64> poison, i64 %1, i64 0
  %19 = insertelement <4 x i64> %18, i64 %2, i64 1
  %20 = insertelement <4 x i64> %19, i64 %3, i64 2
  %21 = insertelement <4 x i64> %20, i64 %4, i64 3
  %22 = insertelement <4 x i64> poison, i64 %5, i64 0
  %23 = insertelement <4 x i64> %22, i64 %6, i64 1
  %24 = insertelement <4 x i64> %23, i64 %7, i64 2
  %25 = insertelement <4 x i64> %24, i64 %8, i64 3
  %26 = insertelement <4 x i64> poison, i64 %9, i64 0
  %27 = insertelement <4 x i64> %26, i64 %10, i64 1
  %28 = insertelement <4 x i64> %27, i64 %11, i64 2
  %29 = insertelement <4 x i64> %28, i64 %12, i64 3
  %30 = insertelement <4 x i64> poison, i64 %13, i64 0
  %31 = insertelement <4 x i64> %30, i64 %14, i64 1
  %32 = insertelement <4 x i64> %31, i64 %15, i64 2
  %33 = insertelement <4 x i64> %32, i64 %16, i64 3
  %34 = lshr <4 x i64> %21, splat (i64 47)
  %35 = xor <4 x i64> %34, %29
  %36 = xor <4 x i64> %35, %21
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, splat (i64 2654435761)
  %40 = mul <4 x i64> %37, splat (i64 -7046029290881679360)
  %41 = add <4 x i64> %39, %40
  %42 = lshr <4 x i64> %25, splat (i64 47)
  %43 = xor <4 x i64> %42, %33
  %44 = xor <4 x i64> %43, %25
  %45 = lshr <4 x i64> %44, splat (i64 32)
  %46 = and <4 x i64> %44, splat (i64 4294967295)
  %47 = mul nuw <4 x i64> %46, splat (i64 2654435761)
  %48 = mul <4 x i64> %45, splat (i64 -7046029290881679360)
  %49 = add <4 x i64> %47, %48
  store <4 x i64> %41, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %49, ptr %50, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
