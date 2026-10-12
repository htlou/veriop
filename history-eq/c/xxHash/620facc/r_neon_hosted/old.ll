; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c"
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
  %44 = xor i64 %23, %15
  %45 = add i64 %15, %8
  %46 = and i64 %44, 4294967295
  %47 = lshr i64 %44, 32
  %48 = mul nuw i64 %46, %47
  %49 = xor i64 %24, %16
  %50 = add i64 %16, %7
  %51 = add i64 %50, %48
  %52 = and i64 %49, 4294967295
  %53 = lshr i64 %49, 32
  %54 = mul nuw i64 %52, %53
  %55 = add i64 %45, %54
  %56 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %57 = xor <2 x i64> %39, %33
  %58 = trunc <2 x i64> %57 to <2 x i32>
  %59 = lshr <2 x i64> %57, splat (i64 32)
  %60 = trunc nuw <2 x i64> %59 to <2 x i32>
  %61 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %58, <2 x i32> %60)
  %62 = add <2 x i64> %56, %27
  %63 = add <2 x i64> %62, %61
  %64 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %65 = xor <2 x i64> %41, %35
  %66 = trunc <2 x i64> %65 to <2 x i32>
  %67 = lshr <2 x i64> %65, splat (i64 32)
  %68 = trunc nuw <2 x i64> %67 to <2 x i32>
  %69 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %66, <2 x i32> %68)
  %70 = add <2 x i64> %64, %29
  %71 = add <2 x i64> %70, %69
  %72 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %73 = xor <2 x i64> %43, %37
  %74 = trunc <2 x i64> %73 to <2 x i32>
  %75 = lshr <2 x i64> %73, splat (i64 32)
  %76 = trunc nuw <2 x i64> %75 to <2 x i32>
  %77 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %74, <2 x i32> %76)
  %78 = add <2 x i64> %72, %31
  %79 = add <2 x i64> %78, %77
  store <2 x i64> %63, ptr %0, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %71, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %79, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %51, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %55, ptr %83, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
