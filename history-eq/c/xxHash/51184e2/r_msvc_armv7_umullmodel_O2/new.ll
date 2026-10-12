; ModuleID = '51184e2/r_msvc_armv7_umullmodel/new.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/51184e2/wrap_simd.c"
target datalayout = "e-m:w-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7-pc-windows-msvc19.33.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local arm_aapcs_vfpcc void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %3, i64 0
  %29 = insertelement <2 x i64> %28, i64 %4, i64 1
  %30 = insertelement <2 x i64> poison, i64 %5, i64 0
  %31 = insertelement <2 x i64> %30, i64 %6, i64 1
  %32 = insertelement <2 x i64> poison, i64 %7, i64 0
  %33 = insertelement <2 x i64> %32, i64 %8, i64 1
  %34 = insertelement <2 x i64> poison, i64 %9, i64 0
  %35 = insertelement <2 x i64> %34, i64 %10, i64 1
  %36 = insertelement <2 x i64> poison, i64 %11, i64 0
  %37 = insertelement <2 x i64> %36, i64 %12, i64 1
  %38 = insertelement <2 x i64> poison, i64 %13, i64 0
  %39 = insertelement <2 x i64> %38, i64 %14, i64 1
  %40 = insertelement <2 x i64> poison, i64 %15, i64 0
  %41 = insertelement <2 x i64> %40, i64 %16, i64 1
  %42 = insertelement <2 x i64> poison, i64 %17, i64 0
  %43 = insertelement <2 x i64> %42, i64 %18, i64 1
  %44 = insertelement <2 x i64> poison, i64 %19, i64 0
  %45 = insertelement <2 x i64> %44, i64 %20, i64 1
  %46 = insertelement <2 x i64> poison, i64 %21, i64 0
  %47 = insertelement <2 x i64> %46, i64 %22, i64 1
  %48 = insertelement <2 x i64> poison, i64 %23, i64 0
  %49 = insertelement <2 x i64> %48, i64 %24, i64 1
  %50 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %51 = add <2 x i64> %50, %27
  %52 = xor <2 x i64> %43, %35
  %53 = lshr <2 x i64> %52, splat (i64 32)
  %umza_56 = and <2 x i64> %52, splat (i64 4294967295)
  %54 = mul nuw <2 x i64> %umza_56, %53
  %55 = add <2 x i64> %51, %54
  %56 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %57 = add <2 x i64> %56, %29
  %58 = xor <2 x i64> %45, %37
  %59 = lshr <2 x i64> %58, splat (i64 32)
  %umza_64 = and <2 x i64> %58, splat (i64 4294967295)
  %60 = mul nuw <2 x i64> %umza_64, %59
  %61 = add <2 x i64> %57, %60
  %62 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %63 = add <2 x i64> %62, %31
  %64 = xor <2 x i64> %47, %39
  %65 = lshr <2 x i64> %64, splat (i64 32)
  %umza_72 = and <2 x i64> %64, splat (i64 4294967295)
  %66 = mul nuw <2 x i64> %umza_72, %65
  %67 = add <2 x i64> %63, %66
  %68 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %69 = add <2 x i64> %68, %33
  %70 = xor <2 x i64> %49, %41
  %71 = lshr <2 x i64> %70, splat (i64 32)
  %umza_80 = and <2 x i64> %70, splat (i64 4294967295)
  %72 = mul nuw <2 x i64> %umza_80, %71
  %73 = add <2 x i64> %69, %72
  store <2 x i64> %55, ptr %0, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %61, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %67, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %73, ptr %76, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local arm_aapcs_vfpcc void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <2 x i64> poison, i64 %1, i64 0
  %19 = insertelement <2 x i64> %18, i64 %2, i64 1
  %20 = insertelement <2 x i64> poison, i64 %3, i64 0
  %21 = insertelement <2 x i64> %20, i64 %4, i64 1
  %22 = insertelement <2 x i64> poison, i64 %5, i64 0
  %23 = insertelement <2 x i64> %22, i64 %6, i64 1
  %24 = insertelement <2 x i64> poison, i64 %7, i64 0
  %25 = insertelement <2 x i64> %24, i64 %8, i64 1
  %26 = insertelement <2 x i64> poison, i64 %9, i64 0
  %27 = insertelement <2 x i64> %26, i64 %10, i64 1
  %28 = insertelement <2 x i64> poison, i64 %11, i64 0
  %29 = insertelement <2 x i64> %28, i64 %12, i64 1
  %30 = insertelement <2 x i64> poison, i64 %13, i64 0
  %31 = insertelement <2 x i64> %30, i64 %14, i64 1
  %32 = insertelement <2 x i64> poison, i64 %15, i64 0
  %33 = insertelement <2 x i64> %32, i64 %16, i64 1
  %34 = lshr <2 x i64> %19, splat (i64 47)
  %35 = xor <2 x i64> %34, %27
  %36 = xor <2 x i64> %35, %19
  %37 = mul <2 x i64> %36, splat (i64 2654435761)
  %38 = lshr <2 x i64> %21, splat (i64 47)
  %39 = xor <2 x i64> %38, %29
  %40 = xor <2 x i64> %39, %21
  %41 = mul <2 x i64> %40, splat (i64 2654435761)
  %42 = lshr <2 x i64> %23, splat (i64 47)
  %43 = xor <2 x i64> %42, %31
  %44 = xor <2 x i64> %43, %23
  %45 = mul <2 x i64> %44, splat (i64 2654435761)
  %46 = lshr <2 x i64> %25, splat (i64 47)
  %47 = xor <2 x i64> %46, %33
  %48 = xor <2 x i64> %47, %25
  %49 = mul <2 x i64> %48, splat (i64 2654435761)
  store <2 x i64> %37, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %41, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %45, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %49, ptr %52, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
