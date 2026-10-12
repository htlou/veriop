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
  %51 = xor <2 x i64> %43, %35
  %52 = trunc <2 x i64> %51 to <2 x i32>
  %53 = lshr <2 x i64> %51, splat (i64 32)
  %54 = trunc nuw <2 x i64> %53 to <2 x i32>
  %55 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %52, <2 x i32> %54)
  %56 = add <2 x i64> %50, %27
  %57 = add <2 x i64> %56, %55
  %58 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %59 = xor <2 x i64> %45, %37
  %60 = trunc <2 x i64> %59 to <2 x i32>
  %61 = lshr <2 x i64> %59, splat (i64 32)
  %62 = trunc nuw <2 x i64> %61 to <2 x i32>
  %63 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %60, <2 x i32> %62)
  %64 = add <2 x i64> %58, %29
  %65 = add <2 x i64> %64, %63
  %66 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %67 = xor <2 x i64> %47, %39
  %68 = trunc <2 x i64> %67 to <2 x i32>
  %69 = lshr <2 x i64> %67, splat (i64 32)
  %70 = trunc nuw <2 x i64> %69 to <2 x i32>
  %71 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %68, <2 x i32> %70)
  %72 = add <2 x i64> %66, %31
  %73 = add <2 x i64> %72, %71
  %74 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %75 = xor <2 x i64> %49, %41
  %76 = trunc <2 x i64> %75 to <2 x i32>
  %77 = lshr <2 x i64> %75, splat (i64 32)
  %78 = trunc nuw <2 x i64> %77 to <2 x i32>
  %79 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %76, <2 x i32> %78)
  %80 = add <2 x i64> %74, %33
  %81 = add <2 x i64> %80, %79
  store <2 x i64> %57, ptr %0, align 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %65, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %73, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %81, ptr %84, align 8
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
