; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/51184e2/wrap_simd.c'
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
  %53 = trunc <2 x i64> %52 to <2 x i32>
  %54 = lshr <2 x i64> %52, splat (i64 32)
  %55 = trunc nuw <2 x i64> %54 to <2 x i32>
  %56 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %53, <2 x i32> %55)
  %57 = add <2 x i64> %51, %56
  %58 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %59 = add <2 x i64> %58, %29
  %60 = xor <2 x i64> %45, %37
  %61 = trunc <2 x i64> %60 to <2 x i32>
  %62 = lshr <2 x i64> %60, splat (i64 32)
  %63 = trunc nuw <2 x i64> %62 to <2 x i32>
  %64 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %61, <2 x i32> %63)
  %65 = add <2 x i64> %59, %64
  %66 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %67 = add <2 x i64> %66, %31
  %68 = xor <2 x i64> %47, %39
  %69 = trunc <2 x i64> %68 to <2 x i32>
  %70 = lshr <2 x i64> %68, splat (i64 32)
  %71 = trunc nuw <2 x i64> %70 to <2 x i32>
  %72 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %69, <2 x i32> %71)
  %73 = add <2 x i64> %67, %72
  %74 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %75 = add <2 x i64> %74, %33
  %76 = xor <2 x i64> %49, %41
  %77 = trunc <2 x i64> %76 to <2 x i32>
  %78 = lshr <2 x i64> %76, splat (i64 32)
  %79 = trunc nuw <2 x i64> %78 to <2 x i32>
  %80 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %77, <2 x i32> %79)
  %81 = add <2 x i64> %75, %80
  store <2 x i64> %57, ptr %0, align 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %65, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %73, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %81, ptr %84, align 8
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
  %37 = trunc <2 x i64> %36 to <2 x i32>
  %38 = lshr <2 x i64> %36, splat (i64 32)
  %39 = trunc nuw <2 x i64> %38 to <2 x i32>
  %40 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %39, <2 x i32> splat (i32 -1640531535))
  %41 = shl <2 x i64> %40, splat (i64 32)
  %42 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %37, <2 x i32> splat (i32 -1640531535))
  %43 = add <2 x i64> %41, %42
  %44 = lshr <2 x i64> %21, splat (i64 47)
  %45 = xor <2 x i64> %44, %29
  %46 = xor <2 x i64> %45, %21
  %47 = trunc <2 x i64> %46 to <2 x i32>
  %48 = lshr <2 x i64> %46, splat (i64 32)
  %49 = trunc nuw <2 x i64> %48 to <2 x i32>
  %50 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %49, <2 x i32> splat (i32 -1640531535))
  %51 = shl <2 x i64> %50, splat (i64 32)
  %52 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %47, <2 x i32> splat (i32 -1640531535))
  %53 = add <2 x i64> %51, %52
  %54 = lshr <2 x i64> %23, splat (i64 47)
  %55 = xor <2 x i64> %54, %31
  %56 = xor <2 x i64> %55, %23
  %57 = trunc <2 x i64> %56 to <2 x i32>
  %58 = lshr <2 x i64> %56, splat (i64 32)
  %59 = trunc nuw <2 x i64> %58 to <2 x i32>
  %60 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %59, <2 x i32> splat (i32 -1640531535))
  %61 = shl <2 x i64> %60, splat (i64 32)
  %62 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %57, <2 x i32> splat (i32 -1640531535))
  %63 = add <2 x i64> %61, %62
  %64 = lshr <2 x i64> %25, splat (i64 47)
  %65 = xor <2 x i64> %64, %33
  %66 = xor <2 x i64> %65, %25
  %67 = trunc <2 x i64> %66 to <2 x i32>
  %68 = lshr <2 x i64> %66, splat (i64 32)
  %69 = trunc nuw <2 x i64> %68 to <2 x i32>
  %70 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %69, <2 x i32> splat (i32 -1640531535))
  %71 = shl <2 x i64> %70, splat (i64 32)
  %72 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %67, <2 x i32> splat (i32 -1640531535))
  %73 = add <2 x i64> %71, %72
  store <2 x i64> %43, ptr %0, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %53, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %63, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %73, ptr %76, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32>, <2 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+armv7-a,+d32,+dsp,+fp16,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
