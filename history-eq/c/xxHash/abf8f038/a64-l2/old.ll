; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6732e9/wrap_accm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6732e9/wrap_accm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_acc512_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %9, i64 0
  %29 = insertelement <2 x i64> %28, i64 %10, i64 1
  %30 = insertelement <2 x i64> poison, i64 %17, i64 0
  %31 = insertelement <2 x i64> %30, i64 %18, i64 1
  %32 = shufflevector <2 x i64> %29, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %33 = add <2 x i64> %32, %27
  %34 = xor <2 x i64> %31, %29
  %35 = lshr <2 x i64> %34, splat (i64 32)
  %36 = and <2 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <2 x i64> %35, %36
  %38 = add <2 x i64> %33, %37
  %39 = xor i64 %19, %11
  %40 = add i64 %11, %4
  %41 = and i64 %39, 4294967295
  %42 = lshr i64 %39, 32
  %43 = mul nuw i64 %41, %42
  %44 = xor i64 %20, %12
  %45 = add i64 %12, %3
  %46 = add i64 %45, %43
  %47 = and i64 %44, 4294967295
  %48 = lshr i64 %44, 32
  %49 = mul nuw i64 %47, %48
  %50 = add i64 %40, %49
  %51 = xor i64 %21, %13
  %52 = add i64 %13, %6
  %53 = and i64 %51, 4294967295
  %54 = lshr i64 %51, 32
  %55 = mul nuw i64 %53, %54
  %56 = xor i64 %22, %14
  %57 = add i64 %14, %5
  %58 = add i64 %57, %55
  %59 = and i64 %56, 4294967295
  %60 = lshr i64 %56, 32
  %61 = mul nuw i64 %59, %60
  %62 = add i64 %52, %61
  %63 = xor i64 %23, %15
  %64 = add i64 %15, %8
  %65 = and i64 %63, 4294967295
  %66 = lshr i64 %63, 32
  %67 = mul nuw i64 %65, %66
  %68 = xor i64 %24, %16
  %69 = add i64 %16, %7
  %70 = add i64 %69, %67
  %71 = and i64 %68, 4294967295
  %72 = lshr i64 %68, 32
  %73 = mul nuw i64 %71, %72
  %74 = add i64 %64, %73
  store <2 x i64> %38, ptr %0, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %46, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %50, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %58, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %62, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %70, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %74, ptr %80, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <2 x i64> poison, i64 %1, i64 0
  %19 = insertelement <2 x i64> %18, i64 %2, i64 1
  %20 = insertelement <2 x i64> poison, i64 %9, i64 0
  %21 = insertelement <2 x i64> %20, i64 %10, i64 1
  %22 = lshr <2 x i64> %19, splat (i64 47)
  %23 = xor <2 x i64> %22, %21
  %24 = xor <2 x i64> %23, %19
  %25 = mul <2 x i64> %24, splat (i64 2654435761)
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
  store <2 x i64> %25, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %29, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %33, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %37, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %41, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %45, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %49, ptr %55, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
