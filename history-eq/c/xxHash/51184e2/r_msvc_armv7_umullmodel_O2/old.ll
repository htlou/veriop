; ModuleID = '51184e2/r_msvc_armv7_umullmodel/old.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/51184e2/wrap_simd.c"
target datalayout = "e-m:w-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7-pc-windows-msvc19.33.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local arm_aapcs_vfpcc void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = xor i64 %17, %9
  %27 = add i64 %9, %2
  %28 = and i64 %26, 4294967295
  %29 = lshr i64 %26, 32
  %30 = mul nuw i64 %28, %29
  %31 = xor i64 %18, %10
  %32 = add i64 %10, %1
  %33 = add i64 %32, %30
  %34 = and i64 %31, 4294967295
  %35 = lshr i64 %31, 32
  %36 = mul nuw i64 %34, %35
  %37 = add i64 %27, %36
  %38 = xor i64 %19, %11
  %39 = add i64 %11, %4
  %40 = and i64 %38, 4294967295
  %41 = lshr i64 %38, 32
  %42 = mul nuw i64 %40, %41
  %43 = xor i64 %20, %12
  %44 = add i64 %12, %3
  %45 = add i64 %44, %42
  %46 = and i64 %43, 4294967295
  %47 = lshr i64 %43, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %39, %48
  %50 = xor i64 %21, %13
  %51 = add i64 %13, %6
  %52 = and i64 %50, 4294967295
  %53 = lshr i64 %50, 32
  %54 = mul nuw i64 %52, %53
  %55 = xor i64 %22, %14
  %56 = add i64 %14, %5
  %57 = add i64 %56, %54
  %58 = and i64 %55, 4294967295
  %59 = lshr i64 %55, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %51, %60
  %62 = xor i64 %23, %15
  %63 = add i64 %15, %8
  %64 = and i64 %62, 4294967295
  %65 = lshr i64 %62, 32
  %66 = mul nuw i64 %64, %65
  %67 = xor i64 %24, %16
  %68 = add i64 %16, %7
  %69 = add i64 %68, %66
  %70 = and i64 %67, 4294967295
  %71 = lshr i64 %67, 32
  %72 = mul nuw i64 %70, %71
  %73 = add i64 %63, %72
  store i64 %33, ptr %0, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %37, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 %45, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 %49, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 %57, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 %61, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 %69, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 %73, ptr %80, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local arm_aapcs_vfpcc void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = lshr i64 %1, 47
  %19 = xor i64 %18, %9
  %20 = xor i64 %19, %1
  %21 = mul i64 %20, 2654435761
  %22 = lshr i64 %2, 47
  %23 = xor i64 %22, %10
  %24 = xor i64 %23, %2
  %25 = mul i64 %24, 2654435761
  %26 = lshr i64 %3, 47
  %27 = xor i64 %26, %11
  %28 = xor i64 %27, %3
  %29 = mul i64 %28, 2654435761
  %30 = lshr i64 %4, 47
  %31 = xor i64 %30, %12
  %32 = xor i64 %31, %4
  %33 = mul i64 %32, 2654435761
  %34 = lshr i64 %5, 47
  %35 = xor i64 %34, %13
  %36 = xor i64 %35, %5
  %37 = mul i64 %36, 2654435761
  %38 = lshr i64 %6, 47
  %39 = xor i64 %38, %14
  %40 = xor i64 %39, %6
  %41 = mul i64 %40, 2654435761
  %42 = lshr i64 %7, 47
  %43 = xor i64 %42, %15
  %44 = xor i64 %43, %7
  %45 = mul i64 %44, 2654435761
  %46 = lshr i64 %8, 47
  %47 = xor i64 %46, %16
  %48 = xor i64 %47, %8
  %49 = mul i64 %48, 2654435761
  store i64 %21, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %25, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 %29, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 %33, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 %37, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 %41, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 %45, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 %49, ptr %56, align 8
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
