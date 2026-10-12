; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_neon.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
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
  %35 = xor <2 x i64> %27, %34
  %36 = xor <2 x i64> %35, %19
  %37 = bitcast <2 x i64> %36 to <4 x i32>
  %38 = mul <4 x i32> %37, <i32 0, i32 -1640531535, i32 0, i32 -1640531535>
  %39 = trunc <2 x i64> %36 to <2 x i32>
  %40 = bitcast <4 x i32> %38 to <2 x i64>
  %41 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %39, <2 x i32> splat (i32 -1640531535))
  %42 = add <2 x i64> %41, %40
  %43 = lshr <2 x i64> %21, splat (i64 47)
  %44 = xor <2 x i64> %29, %43
  %45 = xor <2 x i64> %44, %21
  %46 = bitcast <2 x i64> %45 to <4 x i32>
  %47 = mul <4 x i32> %46, <i32 0, i32 -1640531535, i32 0, i32 -1640531535>
  %48 = trunc <2 x i64> %45 to <2 x i32>
  %49 = bitcast <4 x i32> %47 to <2 x i64>
  %50 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %48, <2 x i32> splat (i32 -1640531535))
  %51 = add <2 x i64> %50, %49
  %52 = lshr <2 x i64> %23, splat (i64 47)
  %53 = xor <2 x i64> %31, %52
  %54 = xor <2 x i64> %53, %23
  %55 = bitcast <2 x i64> %54 to <4 x i32>
  %56 = mul <4 x i32> %55, <i32 0, i32 -1640531535, i32 0, i32 -1640531535>
  %57 = trunc <2 x i64> %54 to <2 x i32>
  %58 = bitcast <4 x i32> %56 to <2 x i64>
  %59 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %57, <2 x i32> splat (i32 -1640531535))
  %60 = add <2 x i64> %59, %58
  %61 = lshr <2 x i64> %25, splat (i64 47)
  %62 = xor <2 x i64> %33, %61
  %63 = xor <2 x i64> %62, %25
  %64 = bitcast <2 x i64> %63 to <4 x i32>
  %65 = mul <4 x i32> %64, <i32 0, i32 -1640531535, i32 0, i32 -1640531535>
  %66 = trunc <2 x i64> %63 to <2 x i32>
  %67 = bitcast <4 x i32> %65 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %66, <2 x i32> splat (i32 -1640531535))
  %69 = add <2 x i64> %68, %67
  store <2 x i64> %42, ptr %0, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %51, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %60, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %69, ptr %72, align 8
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @target_acc512_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #1 {
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
  %51 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %52 = xor <2 x i64> %43, %35
  %53 = xor <2 x i64> %45, %37
  %54 = bitcast <2 x i64> %52 to <4 x i32>
  %55 = bitcast <2 x i64> %53 to <4 x i32>
  %56 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %57 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %58 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %59 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %60 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %58, <2 x i32> %59)
  %61 = add <2 x i64> %60, %50
  %62 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %63 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %64 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %62, <2 x i32> %63)
  %65 = add <2 x i64> %64, %51
  %66 = freeze <2 x i64> %61
  %67 = freeze <2 x i64> %65
  %68 = add <2 x i64> %27, %66
  %69 = add <2 x i64> %29, %67
  %70 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %71 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %72 = xor <2 x i64> %47, %39
  %73 = xor <2 x i64> %49, %41
  %74 = bitcast <2 x i64> %72 to <4 x i32>
  %75 = bitcast <2 x i64> %73 to <4 x i32>
  %76 = shufflevector <4 x i32> %74, <4 x i32> %75, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %77 = shufflevector <4 x i32> %74, <4 x i32> %75, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %78 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %79 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %80 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %78, <2 x i32> %79)
  %81 = add <2 x i64> %80, %70
  %82 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %83 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %84 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %82, <2 x i32> %83)
  %85 = add <2 x i64> %84, %71
  %86 = freeze <2 x i64> %81
  %87 = freeze <2 x i64> %85
  %88 = add <2 x i64> %31, %86
  %89 = add <2 x i64> %33, %87
  store <2 x i64> %68, ptr %0, align 8
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %69, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %88, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %89, ptr %92, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nounwind memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 2150838996}
!7 = !{i64 2150839027}
