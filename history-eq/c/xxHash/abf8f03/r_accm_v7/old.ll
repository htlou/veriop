; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/abf8f03/wrap_accm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/abf8f03/wrap_accm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nounwind memory(argmem: write)
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
  %51 = add <2 x i64> %50, %27
  %52 = xor <2 x i64> %43, %35
  %53 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %52) #1
  %54 = bitcast <2 x i64> %53 to <4 x i32>
  %55 = shufflevector <4 x i32> %54, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %56 = shufflevector <4 x i32> %54, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %57 = zext <2 x i32> %55 to <2 x i64>
  %58 = zext <2 x i32> %56 to <2 x i64>
  %59 = mul nuw <2 x i64> %57, %58
  %60 = add <2 x i64> %51, %59
  %61 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %62 = add <2 x i64> %61, %29
  %63 = xor <2 x i64> %45, %37
  %64 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %63) #1
  %65 = bitcast <2 x i64> %64 to <4 x i32>
  %66 = shufflevector <4 x i32> %65, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %67 = shufflevector <4 x i32> %65, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %68 = zext <2 x i32> %66 to <2 x i64>
  %69 = zext <2 x i32> %67 to <2 x i64>
  %70 = mul nuw <2 x i64> %68, %69
  %71 = add <2 x i64> %62, %70
  %72 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %73 = add <2 x i64> %72, %31
  %74 = xor <2 x i64> %47, %39
  %75 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %74) #1
  %76 = bitcast <2 x i64> %75 to <4 x i32>
  %77 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %78 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %79 = zext <2 x i32> %77 to <2 x i64>
  %80 = zext <2 x i32> %78 to <2 x i64>
  %81 = mul nuw <2 x i64> %79, %80
  %82 = add <2 x i64> %73, %81
  %83 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %84 = add <2 x i64> %83, %33
  %85 = xor <2 x i64> %49, %41
  %86 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %85) #1
  %87 = bitcast <2 x i64> %86 to <4 x i32>
  %88 = shufflevector <4 x i32> %87, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %89 = shufflevector <4 x i32> %87, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %90 = zext <2 x i32> %88 to <2 x i64>
  %91 = zext <2 x i32> %89 to <2 x i64>
  %92 = mul nuw <2 x i64> %90, %91
  %93 = add <2 x i64> %84, %92
  store <2 x i64> %60, ptr %0, align 8
  %94 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %71, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %82, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %93, ptr %96, align 8
  ret void
}

; Function Attrs: nounwind memory(argmem: write)
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
  %35 = xor <2 x i64> %34, %27
  %36 = xor <2 x i64> %35, %19
  %37 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %36) #1
  %38 = bitcast <2 x i64> %37 to <4 x i32>
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %40 = shufflevector <4 x i32> %38, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %41 = zext <2 x i32> %40 to <2 x i64>
  %42 = mul <2 x i64> %41, splat (i64 -7046029290881679360)
  %43 = zext <2 x i32> %39 to <2 x i64>
  %44 = mul nuw <2 x i64> %43, splat (i64 2654435761)
  %45 = add <2 x i64> %42, %44
  %46 = lshr <2 x i64> %21, splat (i64 47)
  %47 = xor <2 x i64> %46, %29
  %48 = xor <2 x i64> %47, %21
  %49 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %48) #1
  %50 = bitcast <2 x i64> %49 to <4 x i32>
  %51 = shufflevector <4 x i32> %50, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %52 = shufflevector <4 x i32> %50, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %53 = zext <2 x i32> %52 to <2 x i64>
  %54 = mul <2 x i64> %53, splat (i64 -7046029290881679360)
  %55 = zext <2 x i32> %51 to <2 x i64>
  %56 = mul nuw <2 x i64> %55, splat (i64 2654435761)
  %57 = add <2 x i64> %54, %56
  %58 = lshr <2 x i64> %23, splat (i64 47)
  %59 = xor <2 x i64> %58, %31
  %60 = xor <2 x i64> %59, %23
  %61 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %60) #1
  %62 = bitcast <2 x i64> %61 to <4 x i32>
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %64 = shufflevector <4 x i32> %62, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %65 = zext <2 x i32> %64 to <2 x i64>
  %66 = mul <2 x i64> %65, splat (i64 -7046029290881679360)
  %67 = zext <2 x i32> %63 to <2 x i64>
  %68 = mul nuw <2 x i64> %67, splat (i64 2654435761)
  %69 = add <2 x i64> %66, %68
  %70 = lshr <2 x i64> %25, splat (i64 47)
  %71 = xor <2 x i64> %70, %33
  %72 = xor <2 x i64> %71, %25
  %73 = tail call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %72) #1
  %74 = bitcast <2 x i64> %73 to <4 x i32>
  %75 = shufflevector <4 x i32> %74, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %76 = shufflevector <4 x i32> %74, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %77 = zext <2 x i32> %76 to <2 x i64>
  %78 = mul <2 x i64> %77, splat (i64 -7046029290881679360)
  %79 = zext <2 x i32> %75 to <2 x i64>
  %80 = mul nuw <2 x i64> %79, splat (i64 2654435761)
  %81 = add <2 x i64> %78, %80
  store <2 x i64> %45, ptr %0, align 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store <2 x i64> %57, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store <2 x i64> %69, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store <2 x i64> %81, ptr %84, align 8
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
!5 = !{i64 2150722276}
!6 = !{i64 2150723688}
