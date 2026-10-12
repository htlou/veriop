; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e701df3/wrap_accm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e701df3/wrap_accm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nounwind
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
  %51 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %52 = xor <2 x i64> %43, %35
  %53 = xor <2 x i64> %45, %37
  %54 = bitcast <2 x i64> %52 to <4 x i32>
  %55 = bitcast <2 x i64> %53 to <4 x i32>
  %56 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %57 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %58 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %59 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %60 = zext <2 x i32> %58 to <2 x i64>
  %61 = zext <2 x i32> %59 to <2 x i64>
  %62 = mul nuw <2 x i64> %60, %61
  %63 = add <2 x i64> %62, %50
  %64 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %65 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %66 = zext <2 x i32> %64 to <2 x i64>
  %67 = zext <2 x i32> %65 to <2 x i64>
  %68 = mul nuw <2 x i64> %66, %67
  %69 = add <2 x i64> %68, %51
  %70 = bitcast <2 x i64> %63 to <2 x i64>
  %71 = bitcast <2 x i64> %69 to <2 x i64>
  %72 = add <2 x i64> %27, %70
  %73 = add <2 x i64> %29, %71
  %74 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %75 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %76 = xor <2 x i64> %47, %39
  %77 = xor <2 x i64> %49, %41
  %78 = bitcast <2 x i64> %76 to <4 x i32>
  %79 = bitcast <2 x i64> %77 to <4 x i32>
  %80 = shufflevector <4 x i32> %78, <4 x i32> %79, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %81 = shufflevector <4 x i32> %78, <4 x i32> %79, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %82 = shufflevector <4 x i32> %80, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %83 = shufflevector <4 x i32> %81, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %84 = zext <2 x i32> %82 to <2 x i64>
  %85 = zext <2 x i32> %83 to <2 x i64>
  %86 = mul nuw <2 x i64> %84, %85
  %87 = add <2 x i64> %86, %74
  %88 = shufflevector <4 x i32> %80, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %89 = shufflevector <4 x i32> %81, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %90 = zext <2 x i32> %88 to <2 x i64>
  %91 = zext <2 x i32> %89 to <2 x i64>
  %92 = mul nuw <2 x i64> %90, %91
  %93 = add <2 x i64> %92, %75
  %94 = bitcast <2 x i64> %87 to <2 x i64>
  %95 = bitcast <2 x i64> %93 to <2 x i64>
  %96 = add <2 x i64> %31, %94
  %97 = add <2 x i64> %33, %95
  store <2 x i64> %72, ptr %0, align 8
  %98 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %73, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %96, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %97, ptr %100, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
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

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"XXH3_accumulate_512_neon: argument 1"}
!7 = distinct !{!7, !"XXH3_accumulate_512_neon"}
!8 = distinct !{!8, !7, !"XXH3_accumulate_512_neon: argument 2"}
!9 = !{i64 2150754263}
!10 = !{i64 2150754307}
