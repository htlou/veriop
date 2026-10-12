; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/df8f699/wrap_accm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/df8f699/wrap_accm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_acc512_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %3, i64 0
  %29 = insertelement <2 x i64> %28, i64 %4, i64 1
  %30 = insertelement <2 x i64> poison, i64 %5, i64 0
  %31 = insertelement <2 x i64> %30, i64 %6, i64 1
  %32 = insertelement <2 x i64> poison, i64 %9, i64 0
  %33 = insertelement <2 x i64> %32, i64 %10, i64 1
  %34 = insertelement <2 x i64> poison, i64 %11, i64 0
  %35 = insertelement <2 x i64> %34, i64 %12, i64 1
  %36 = insertelement <2 x i64> poison, i64 %13, i64 0
  %37 = insertelement <2 x i64> %36, i64 %14, i64 1
  %38 = insertelement <2 x i64> poison, i64 %17, i64 0
  %39 = insertelement <2 x i64> %38, i64 %18, i64 1
  %40 = insertelement <2 x i64> poison, i64 %19, i64 0
  %41 = insertelement <2 x i64> %40, i64 %20, i64 1
  %42 = insertelement <2 x i64> poison, i64 %21, i64 0
  %43 = insertelement <2 x i64> %42, i64 %22, i64 1
  %44 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %45 = add <2 x i64> %44, %27
  %46 = xor <2 x i64> %39, %33
  %47 = lshr <2 x i64> %46, splat (i64 32)
  %48 = and <2 x i64> %46, splat (i64 4294967295)
  %49 = mul nuw <2 x i64> %47, %48
  %50 = add <2 x i64> %45, %49
  %51 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %52 = add <2 x i64> %51, %29
  %53 = xor <2 x i64> %41, %35
  %54 = lshr <2 x i64> %53, splat (i64 32)
  %55 = and <2 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <2 x i64> %54, %55
  %57 = add <2 x i64> %52, %56
  %58 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %59 = add <2 x i64> %58, %31
  %60 = xor <2 x i64> %43, %37
  %61 = lshr <2 x i64> %60, splat (i64 32)
  %62 = and <2 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <2 x i64> %61, %62
  %64 = add <2 x i64> %59, %63
  %65 = xor i64 %23, %15
  %66 = lshr i64 %15, 63
  %67 = and i64 %65, 4294967295
  %68 = lshr i64 %65, 32
  %69 = mul nuw i64 %67, %68
  %70 = xor i64 %24, %16
  %71 = lshr i64 %16, 63
  %72 = add i64 %16, %7
  %73 = add i64 %72, %71
  %74 = add i64 %73, %69
  %75 = and i64 %70, 4294967295
  %76 = lshr i64 %70, 32
  %77 = mul nuw i64 %75, %76
  %78 = add i64 %15, %8
  %79 = add i64 %78, %66
  %80 = add i64 %79, %77
  store <2 x i64> %50, ptr %0, align 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %57, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %64, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %74, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %80, ptr %84, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <2 x i64> poison, i64 %1, i64 0
  %19 = insertelement <2 x i64> %18, i64 %2, i64 1
  %20 = insertelement <2 x i64> poison, i64 %3, i64 0
  %21 = insertelement <2 x i64> %20, i64 %4, i64 1
  %22 = insertelement <2 x i64> poison, i64 %5, i64 0
  %23 = insertelement <2 x i64> %22, i64 %6, i64 1
  %24 = insertelement <2 x i64> poison, i64 %9, i64 0
  %25 = insertelement <2 x i64> %24, i64 %10, i64 1
  %26 = insertelement <2 x i64> poison, i64 %11, i64 0
  %27 = insertelement <2 x i64> %26, i64 %12, i64 1
  %28 = insertelement <2 x i64> poison, i64 %13, i64 0
  %29 = insertelement <2 x i64> %28, i64 %14, i64 1
  %30 = lshr <2 x i64> %19, splat (i64 47)
  %31 = xor <2 x i64> %30, %25
  %32 = xor <2 x i64> %31, %19
  %33 = mul <2 x i64> %32, splat (i64 2654435761)
  %34 = lshr <2 x i64> %21, splat (i64 47)
  %35 = xor <2 x i64> %34, %27
  %36 = xor <2 x i64> %35, %21
  %37 = mul <2 x i64> %36, splat (i64 2654435761)
  %38 = lshr <2 x i64> %23, splat (i64 47)
  %39 = xor <2 x i64> %38, %29
  %40 = xor <2 x i64> %39, %23
  %41 = mul <2 x i64> %40, splat (i64 2654435761)
  %42 = lshr i64 %7, 47
  %43 = xor i64 %42, %15
  %44 = xor i64 %43, %7
  %45 = mul i64 %44, 2654435761
  %46 = lshr i64 %8, 47
  %47 = xor i64 %46, %16
  %48 = xor i64 %47, %8
  %49 = mul i64 %48, 2654435761
  store <2 x i64> %33, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %37, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %41, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %45, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %49, ptr %53, align 8
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
