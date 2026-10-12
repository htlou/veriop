; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_wasm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_wasm.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-i128:128-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define hidden void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #4
  %27 = insertelement <2 x i64> poison, i64 %1, i64 0
  %28 = insertelement <2 x i64> %27, i64 %2, i64 1
  %29 = insertelement <2 x i64> poison, i64 %3, i64 0
  %30 = insertelement <2 x i64> %29, i64 %4, i64 1
  %31 = insertelement <2 x i64> poison, i64 %5, i64 0
  %32 = insertelement <2 x i64> %31, i64 %6, i64 1
  %33 = insertelement <2 x i64> poison, i64 %7, i64 0
  %34 = insertelement <2 x i64> %33, i64 %8, i64 1
  %35 = insertelement <2 x i64> poison, i64 %9, i64 0
  %36 = insertelement <2 x i64> %35, i64 %10, i64 1
  %37 = insertelement <2 x i64> poison, i64 %11, i64 0
  %38 = insertelement <2 x i64> %37, i64 %12, i64 1
  %39 = insertelement <2 x i64> poison, i64 %13, i64 0
  %40 = insertelement <2 x i64> %39, i64 %14, i64 1
  %41 = insertelement <2 x i64> poison, i64 %15, i64 0
  %42 = insertelement <2 x i64> %41, i64 %16, i64 1
  store i64 %17, ptr %26, align 16
  %43 = getelementptr inbounds nuw i8, ptr %26, i32 8
  store i64 %18, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %26, i32 16
  store i64 %19, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %26, i32 24
  store i64 %20, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %26, i32 32
  store i64 %21, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %26, i32 40
  store i64 %22, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %26, i32 48
  store i64 %23, ptr %48, align 16
  %49 = getelementptr inbounds nuw i8, ptr %26, i32 56
  store i64 %24, ptr %49, align 8
  %50 = freeze ptr %26
  %51 = bitcast <2 x i64> %36 to <4 x i32>
  %52 = bitcast <2 x i64> %38 to <4 x i32>
  %53 = load <4 x i32>, ptr %50, align 1
  %54 = getelementptr inbounds nuw i8, ptr %50, i32 16
  %55 = load <4 x i32>, ptr %54, align 1
  %56 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %57 = shufflevector <2 x i64> %38, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %58 = xor <4 x i32> %53, %51
  %59 = xor <4 x i32> %55, %52
  %60 = bitcast <4 x i32> %58 to <16 x i8>
  %61 = bitcast <4 x i32> %59 to <16 x i8>
  %62 = shufflevector <16 x i8> %60, <16 x i8> %61, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %63 = bitcast <16 x i8> %62 to <4 x i32>
  %64 = shufflevector <16 x i8> %60, <16 x i8> %61, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %65 = bitcast <16 x i8> %64 to <4 x i32>
  %66 = shufflevector <4 x i32> %63, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %67 = zext <2 x i32> %66 to <2 x i64>
  %68 = shufflevector <4 x i32> %65, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %69 = zext <2 x i32> %68 to <2 x i64>
  %70 = mul nuw <2 x i64> %69, %67
  %71 = shufflevector <4 x i32> %63, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %72 = shufflevector <4 x i32> %65, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %73 = zext <2 x i32> %71 to <2 x i64>
  %74 = zext <2 x i32> %72 to <2 x i64>
  %75 = mul nuw <2 x i64> %74, %73
  %76 = add <2 x i64> %28, %56
  %77 = add <2 x i64> %76, %70
  %78 = add <2 x i64> %30, %57
  %79 = add <2 x i64> %78, %75
  %80 = bitcast <2 x i64> %40 to <4 x i32>
  %81 = bitcast <2 x i64> %42 to <4 x i32>
  %82 = getelementptr inbounds nuw i8, ptr %50, i32 32
  %83 = load <4 x i32>, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %50, i32 48
  %85 = load <4 x i32>, ptr %84, align 1
  %86 = shufflevector <2 x i64> %40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %87 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %88 = xor <4 x i32> %83, %80
  %89 = xor <4 x i32> %85, %81
  %90 = bitcast <4 x i32> %88 to <16 x i8>
  %91 = bitcast <4 x i32> %89 to <16 x i8>
  %92 = shufflevector <16 x i8> %90, <16 x i8> %91, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %93 = bitcast <16 x i8> %92 to <4 x i32>
  %94 = shufflevector <16 x i8> %90, <16 x i8> %91, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %95 = bitcast <16 x i8> %94 to <4 x i32>
  %96 = shufflevector <4 x i32> %93, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %97 = zext <2 x i32> %96 to <2 x i64>
  %98 = shufflevector <4 x i32> %95, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %99 = zext <2 x i32> %98 to <2 x i64>
  %100 = mul nuw <2 x i64> %99, %97
  %101 = shufflevector <4 x i32> %93, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %102 = shufflevector <4 x i32> %95, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %103 = zext <2 x i32> %101 to <2 x i64>
  %104 = zext <2 x i32> %102 to <2 x i64>
  %105 = mul nuw <2 x i64> %104, %103
  %106 = add <2 x i64> %32, %86
  %107 = add <2 x i64> %106, %100
  %108 = add <2 x i64> %34, %87
  %109 = add <2 x i64> %108, %105
  store <2 x i64> %77, ptr %0, align 8
  %110 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %79, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %107, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %109, ptr %112, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define hidden void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
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
  %37 = mul <2 x i64> %36, splat (i64 2654435761)
  %38 = lshr <2 x i64> %21, splat (i64 47)
  %39 = xor <2 x i64> %29, %38
  %40 = xor <2 x i64> %39, %21
  %41 = mul <2 x i64> %40, splat (i64 2654435761)
  %42 = lshr <2 x i64> %23, splat (i64 47)
  %43 = xor <2 x i64> %31, %42
  %44 = xor <2 x i64> %43, %23
  %45 = mul <2 x i64> %44, splat (i64 2654435761)
  %46 = lshr <2 x i64> %25, splat (i64 47)
  %47 = xor <2 x i64> %33, %46
  %48 = xor <2 x i64> %47, %25
  %49 = mul <2 x i64> %48, splat (i64 2654435761)
  store <2 x i64> %37, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %41, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %45, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %49, ptr %52, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.wasm.shuffle(<16 x i8>, <16 x i8>, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg) #3

attributes #0 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bulk-memory,+bulk-memory-opt,+call-indirect-overlong,+multivalue,+mutable-globals,+nontrapping-fptoint,+reference-types,+sign-ext,+simd128" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bulk-memory,+bulk-memory-opt,+call-indirect-overlong,+multivalue,+mutable-globals,+nontrapping-fptoint,+reference-types,+sign-ext,+simd128" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!2 = !{i64 2152806445}
!3 = !{!4}
!4 = distinct !{!4, !5, !"XXH3_accumulate_512_neon: argument 1"}
!5 = distinct !{!5, !"XXH3_accumulate_512_neon"}
