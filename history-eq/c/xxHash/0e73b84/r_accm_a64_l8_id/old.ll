; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e73b84/wrap_accm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e73b84/wrap_accm.c"
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
  %52 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %53 = xor <2 x i64> %45, %37
  %54 = bitcast <2 x i64> %51 to <4 x i32>
  %55 = bitcast <2 x i64> %53 to <4 x i32>
  %56 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %57 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %58 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %59 = zext <2 x i32> %58 to <2 x i64>
  %60 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %61 = zext <2 x i32> %60 to <2 x i64>
  %62 = mul nuw <2 x i64> %59, %61
  %63 = add <2 x i64> %62, %50
  %64 = bitcast <2 x i64> %63 to <2 x i64>
  %65 = add <2 x i64> %64, %27
  %66 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %67 = zext <2 x i32> %66 to <2 x i64>
  %68 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %69 = zext <2 x i32> %68 to <2 x i64>
  %70 = mul nuw <2 x i64> %67, %69
  %71 = add <2 x i64> %70, %52
  %72 = bitcast <2 x i64> %71 to <2 x i64>
  %73 = add <2 x i64> %72, %29
  %74 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %75 = xor <2 x i64> %47, %39
  %76 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %77 = xor <2 x i64> %49, %41
  %78 = bitcast <2 x i64> %75 to <4 x i32>
  %79 = bitcast <2 x i64> %77 to <4 x i32>
  %80 = shufflevector <4 x i32> %78, <4 x i32> %79, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %81 = shufflevector <4 x i32> %78, <4 x i32> %79, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %82 = shufflevector <4 x i32> %80, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %83 = zext <2 x i32> %82 to <2 x i64>
  %84 = shufflevector <4 x i32> %81, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %85 = zext <2 x i32> %84 to <2 x i64>
  %86 = mul nuw <2 x i64> %83, %85
  %87 = add <2 x i64> %86, %74
  %88 = bitcast <2 x i64> %87 to <2 x i64>
  %89 = add <2 x i64> %88, %31
  %90 = shufflevector <4 x i32> %80, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %91 = zext <2 x i32> %90 to <2 x i64>
  %92 = shufflevector <4 x i32> %81, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %93 = zext <2 x i32> %92 to <2 x i64>
  %94 = mul nuw <2 x i64> %91, %93
  %95 = add <2 x i64> %94, %76
  %96 = bitcast <2 x i64> %95 to <2 x i64>
  %97 = add <2 x i64> %96, %33
  store <2 x i64> %65, ptr %0, align 8
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %73, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %89, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %97, ptr %100, align 8
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
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %41, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %45, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %49, ptr %52, align 8
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!7, !9, !10}
!7 = distinct !{!7, !8, !"XXH3_accumulate_512_neon: argument 0"}
!8 = distinct !{!8, !"XXH3_accumulate_512_neon"}
!9 = distinct !{!9, !8, !"XXH3_accumulate_512_neon: argument 1"}
!10 = distinct !{!10, !8, !"XXH3_accumulate_512_neon: argument 2"}
!11 = !{i64 2150832274}
!12 = !{i64 2150832558}
