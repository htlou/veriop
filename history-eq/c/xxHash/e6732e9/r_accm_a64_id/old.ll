; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6732e9/wrap_accm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6732e9/wrap_accm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
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
  %46 = lshr i64 %44, 32
  %47 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %44, i64 range(i64 0, 4294967296) %46, i64 %7) #2
  %48 = xor i64 %24, %16
  %49 = add i64 %47, %16
  %50 = lshr i64 %48, 32
  %51 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %48, i64 range(i64 0, 4294967296) %50, i64 %45) #2
  %52 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %53 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %54 = xor <2 x i64> %39, %33
  %55 = xor <2 x i64> %41, %35
  %56 = bitcast <2 x i64> %54 to <4 x i32>
  %57 = bitcast <2 x i64> %55 to <4 x i32>
  %58 = shufflevector <4 x i32> %56, <4 x i32> %57, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %59 = shufflevector <4 x i32> %56, <4 x i32> %57, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %60 = tail call <2 x i64> asm "umlal   $0.2d, $1.2s, $2.2s", "=w,w,w,0"(<4 x i32> %58, <4 x i32> %59, <2 x i64> %52) #2
  %61 = tail call <2 x i64> asm "umlal2  $0.2d, $1.4s, $2.4s", "=w,w,w,0"(<4 x i32> %58, <4 x i32> %59, <2 x i64> %53) #2
  %62 = add <2 x i64> %27, %60
  %63 = add <2 x i64> %29, %61
  %64 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %65 = xor <2 x i64> %43, %37
  %66 = lshr <2 x i64> %65, splat (i64 32)
  %67 = and <2 x i64> %65, splat (i64 4294967295)
  %68 = mul nuw <2 x i64> %66, %67
  %69 = add <2 x i64> %68, %64
  %70 = bitcast <2 x i64> %69 to <2 x i64>
  %71 = add <2 x i64> %31, %70
  store <2 x i64> %62, ptr %0, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %63, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %71, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %49, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %51, ptr %75, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #1 {
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
  %41 = mul <2 x i64> %40, splat (i64 2654435761)
  %42 = lshr <2 x i64> %21, splat (i64 47)
  %43 = xor <2 x i64> %27, %42
  %44 = xor <2 x i64> %43, %21
  %45 = mul <2 x i64> %44, splat (i64 2654435761)
  %46 = lshr <2 x i64> %23, splat (i64 47)
  %47 = xor <2 x i64> %29, %46
  %48 = xor <2 x i64> %47, %23
  %49 = mul <2 x i64> %48, splat (i64 2654435761)
  store <2 x i64> %41, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %45, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %49, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %33, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %37, ptr %53, align 8
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 3231526}
!7 = !{i64 3169364}
!8 = !{i64 3169559}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"XXH3_accumulate_512_neon: argument 1"}
!11 = distinct !{!11, !"XXH3_accumulate_512_neon"}
!12 = distinct !{!12, !11, !"XXH3_accumulate_512_neon: argument 2"}
!13 = !{i64 2150839507}
