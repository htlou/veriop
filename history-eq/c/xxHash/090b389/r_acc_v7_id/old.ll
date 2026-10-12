; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/090b389/wrap_acc2020.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/090b389/wrap_acc2020.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nounwind memory(argmem: write)
define dso_local void @target_acc512_w64(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
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
  %50 = xor <2 x i64> %43, %35
  %51 = add <2 x i64> %35, %27
  %52 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %50) #1
  %53 = bitcast <2 x i64> %52 to <4 x i32>
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %55 = shufflevector <4 x i32> %53, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %56 = zext <2 x i32> %54 to <2 x i64>
  %57 = zext <2 x i32> %55 to <2 x i64>
  %58 = mul nuw <2 x i64> %56, %57
  %59 = add <2 x i64> %51, %58
  %60 = xor <2 x i64> %45, %37
  %61 = add <2 x i64> %37, %29
  %62 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %60) #1
  %63 = bitcast <2 x i64> %62 to <4 x i32>
  %64 = shufflevector <4 x i32> %63, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %65 = shufflevector <4 x i32> %63, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %66 = zext <2 x i32> %64 to <2 x i64>
  %67 = zext <2 x i32> %65 to <2 x i64>
  %68 = mul nuw <2 x i64> %66, %67
  %69 = add <2 x i64> %61, %68
  %70 = xor <2 x i64> %47, %39
  %71 = add <2 x i64> %39, %31
  %72 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %70) #1
  %73 = bitcast <2 x i64> %72 to <4 x i32>
  %74 = shufflevector <4 x i32> %73, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %75 = shufflevector <4 x i32> %73, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %76 = zext <2 x i32> %74 to <2 x i64>
  %77 = zext <2 x i32> %75 to <2 x i64>
  %78 = mul nuw <2 x i64> %76, %77
  %79 = add <2 x i64> %71, %78
  %80 = xor <2 x i64> %49, %41
  %81 = add <2 x i64> %41, %33
  %82 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %80) #1
  %83 = bitcast <2 x i64> %82 to <4 x i32>
  %84 = shufflevector <4 x i32> %83, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %85 = shufflevector <4 x i32> %83, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %86 = zext <2 x i32> %84 to <2 x i64>
  %87 = zext <2 x i32> %85 to <2 x i64>
  %88 = mul nuw <2 x i64> %86, %87
  %89 = add <2 x i64> %81, %88
  store <2 x i64> %59, ptr %0, align 8
  %90 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %69, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %79, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %89, ptr %92, align 8
  ret void
}

; Function Attrs: nounwind memory(argmem: write)
define dso_local void @target_acc512_w128(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
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
  %50 = xor <2 x i64> %43, %35
  %51 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %52 = add <2 x i64> %51, %27
  %53 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %50) #1
  %54 = bitcast <2 x i64> %53 to <4 x i32>
  %55 = shufflevector <4 x i32> %54, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %56 = shufflevector <4 x i32> %54, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %57 = zext <2 x i32> %55 to <2 x i64>
  %58 = zext <2 x i32> %56 to <2 x i64>
  %59 = mul nuw <2 x i64> %57, %58
  %60 = add <2 x i64> %52, %59
  %61 = xor <2 x i64> %45, %37
  %62 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %63 = add <2 x i64> %62, %29
  %64 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %61) #1
  %65 = bitcast <2 x i64> %64 to <4 x i32>
  %66 = shufflevector <4 x i32> %65, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %67 = shufflevector <4 x i32> %65, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %68 = zext <2 x i32> %66 to <2 x i64>
  %69 = zext <2 x i32> %67 to <2 x i64>
  %70 = mul nuw <2 x i64> %68, %69
  %71 = add <2 x i64> %63, %70
  %72 = xor <2 x i64> %47, %39
  %73 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %74 = add <2 x i64> %73, %31
  %75 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %72) #1
  %76 = bitcast <2 x i64> %75 to <4 x i32>
  %77 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %78 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %79 = zext <2 x i32> %77 to <2 x i64>
  %80 = zext <2 x i32> %78 to <2 x i64>
  %81 = mul nuw <2 x i64> %79, %80
  %82 = add <2 x i64> %74, %81
  %83 = xor <2 x i64> %49, %41
  %84 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %85 = add <2 x i64> %84, %33
  %86 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %83) #1
  %87 = bitcast <2 x i64> %86 to <4 x i32>
  %88 = shufflevector <4 x i32> %87, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %89 = shufflevector <4 x i32> %87, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %90 = zext <2 x i32> %88 to <2 x i64>
  %91 = zext <2 x i32> %89 to <2 x i64>
  %92 = mul nuw <2 x i64> %90, %91
  %93 = add <2 x i64> %85, %92
  store <2 x i64> %60, ptr %0, align 8
  %94 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %71, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %82, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %93, ptr %96, align 8
  ret void
}

attributes #0 = { nounwind memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2150741886}
