; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a16928e/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a16928e/wrap_raw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local i64 @target_mergeAccs(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <4 x i64> poison, i64 %8, i64 0
  %19 = insertelement <4 x i64> %18, i64 %10, i64 1
  %20 = insertelement <4 x i64> %19, i64 %12, i64 2
  %21 = insertelement <4 x i64> %20, i64 %14, i64 3
  %22 = insertelement <4 x i64> poison, i64 %0, i64 0
  %23 = insertelement <4 x i64> %22, i64 %2, i64 1
  %24 = insertelement <4 x i64> %23, i64 %4, i64 2
  %25 = insertelement <4 x i64> %24, i64 %6, i64 3
  %26 = xor <4 x i64> %21, %25
  %27 = insertelement <4 x i64> poison, i64 %9, i64 0
  %28 = insertelement <4 x i64> %27, i64 %11, i64 1
  %29 = insertelement <4 x i64> %28, i64 %13, i64 2
  %30 = insertelement <4 x i64> %29, i64 %15, i64 3
  %31 = insertelement <4 x i64> poison, i64 %1, i64 0
  %32 = insertelement <4 x i64> %31, i64 %3, i64 1
  %33 = insertelement <4 x i64> %32, i64 %5, i64 2
  %34 = insertelement <4 x i64> %33, i64 %7, i64 3
  %35 = xor <4 x i64> %30, %34
  %36 = and <4 x i64> %26, splat (i64 4294967295)
  %37 = and <4 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <4 x i64> %37, %36
  %39 = lshr <4 x i64> %26, splat (i64 32)
  %40 = mul nuw <4 x i64> %37, %39
  %41 = lshr <4 x i64> %35, splat (i64 32)
  %42 = mul nuw <4 x i64> %41, %36
  %43 = mul nuw <4 x i64> %41, %39
  %44 = lshr <4 x i64> %38, splat (i64 32)
  %45 = and <4 x i64> %40, splat (i64 4294967295)
  %46 = add nuw <4 x i64> %45, %42
  %47 = add nuw <4 x i64> %46, %44
  %48 = lshr <4 x i64> %40, splat (i64 32)
  %49 = lshr <4 x i64> %47, splat (i64 32)
  %50 = add nuw <4 x i64> %48, %43
  %51 = add nuw <4 x i64> %50, %49
  %52 = shl <4 x i64> %47, splat (i64 32)
  %53 = and <4 x i64> %38, splat (i64 4294967295)
  %54 = or disjoint <4 x i64> %52, %53
  %55 = xor <4 x i64> %54, %51
  %56 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %55)
  %57 = add i64 %56, %16
  %58 = lshr i64 %57, 37
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587791953885689
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  ret i64 %62
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
