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
  %24 = insertelement <2 x i64> poison, i64 %9, i64 0
  %25 = insertelement <2 x i64> %24, i64 %10, i64 1
  %26 = insertelement <2 x i64> poison, i64 %11, i64 0
  %27 = insertelement <2 x i64> %26, i64 %12, i64 1
  %28 = insertelement <2 x i64> poison, i64 %13, i64 0
  %29 = insertelement <2 x i64> %28, i64 %14, i64 1
  %30 = lshr i64 %7, 47
  %31 = xor i64 %30, %15
  %32 = xor i64 %31, %7
  %33 = mul i64 %32, 2654435761
  %34 = lshr i64 %8, 47
  %35 = xor i64 %34, %16
  %36 = xor i64 %35, %8
  %37 = mul i64 %36, 2654435761
  %38 = lshr <2 x i64> %19, splat (i64 47)
  %39 = xor <2 x i64> %25, %38
  %40 = xor <2 x i64> %39, %19
  %41 = trunc <2 x i64> %40 to <2 x i32>
  %42 = lshr <2 x i64> %40, splat (i64 32)
  %43 = trunc nuw <2 x i64> %42 to <2 x i32>
  %44 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %43, <2 x i32> splat (i32 -1640531535))
  %45 = shl <2 x i64> %44, splat (i64 32)
  %46 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %41, <2 x i32> splat (i32 -1640531535))
  %47 = add <2 x i64> %45, %46
  %48 = lshr <2 x i64> %21, splat (i64 47)
  %49 = xor <2 x i64> %27, %48
  %50 = xor <2 x i64> %49, %21
  %51 = trunc <2 x i64> %50 to <2 x i32>
  %52 = lshr <2 x i64> %50, splat (i64 32)
  %53 = trunc nuw <2 x i64> %52 to <2 x i32>
  %54 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %53, <2 x i32> splat (i32 -1640531535))
  %55 = shl <2 x i64> %54, splat (i64 32)
  %56 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %51, <2 x i32> splat (i32 -1640531535))
  %57 = add <2 x i64> %55, %56
  %58 = lshr <2 x i64> %23, splat (i64 47)
  %59 = xor <2 x i64> %29, %58
  %60 = xor <2 x i64> %59, %23
  %61 = trunc <2 x i64> %60 to <2 x i32>
  %62 = lshr <2 x i64> %60, splat (i64 32)
  %63 = trunc nuw <2 x i64> %62 to <2 x i32>
  %64 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %63, <2 x i32> splat (i32 -1640531535))
  %65 = shl <2 x i64> %64, splat (i64 32)
  %66 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %61, <2 x i32> splat (i32 -1640531535))
  %67 = add <2 x i64> %65, %66
  store <2 x i64> %47, ptr %0, align 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %57, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %67, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %33, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %37, ptr %71, align 8
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
  %46 = lshr i64 %44, 32
  %47 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %44, i64 range(i64 0, 4294967296) %46, i64 %7) #3
  %48 = xor i64 %24, %16
  %49 = add i64 %47, %16
  %50 = lshr i64 %48, 32
  %51 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %48, i64 range(i64 0, 4294967296) %50, i64 %45) #3
  %52 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %53 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %54 = xor <2 x i64> %39, %33
  %55 = xor <2 x i64> %41, %35
  %56 = bitcast <2 x i64> %54 to <4 x i32>
  %57 = bitcast <2 x i64> %55 to <4 x i32>
  %58 = shufflevector <4 x i32> %56, <4 x i32> %57, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %59 = shufflevector <4 x i32> %56, <4 x i32> %57, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %60 = shufflevector <4 x i32> %58, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %61 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %62 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %60, <2 x i32> %61)
  %63 = add <2 x i64> %62, %52
  %64 = shufflevector <4 x i32> %58, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %65 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %66 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %64, <2 x i32> %65)
  %67 = add <2 x i64> %66, %53
  %68 = freeze <2 x i64> %63
  %69 = freeze <2 x i64> %67
  %70 = add <2 x i64> %27, %68
  %71 = add <2 x i64> %29, %69
  %72 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %73 = xor <2 x i64> %43, %37
  %74 = trunc <2 x i64> %73 to <2 x i32>
  %75 = lshr <2 x i64> %73, splat (i64 32)
  %76 = trunc nuw <2 x i64> %75 to <2 x i32>
  %77 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %74, <2 x i32> %76)
  %78 = add <2 x i64> %77, %72
  %79 = freeze <2 x i64> %78
  %80 = add <2 x i64> %31, %79
  store <2 x i64> %70, ptr %0, align 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %71, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %80, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %49, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %51, ptr %84, align 8
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
!6 = !{i64 254903}
!7 = !{i64 2150837723}
!8 = !{i64 2150837754}
!9 = !{i64 2150838184}
