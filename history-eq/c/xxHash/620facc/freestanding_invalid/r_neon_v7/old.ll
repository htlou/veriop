; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nounwind
define dso_local void @target_acc512_neon(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 1
  %28 = alloca [64 x i8], align 1
  %29 = alloca [8 x i64], align 8
  %30 = alloca [8 x i64], align 8
  %31 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #5
  store i64 %1, ptr %29, align 8
  %32 = getelementptr inbounds nuw i8, ptr %29, i32 8
  store i64 %2, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %29, i32 16
  store i64 %3, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %29, i32 24
  store i64 %4, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %29, i32 32
  store i64 %5, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %29, i32 40
  store i64 %6, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %29, i32 48
  store i64 %7, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %29, i32 56
  store i64 %8, ptr %38, align 8
  %39 = call ptr @memcpy(ptr noundef nonnull %26, ptr noundef nonnull %29, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %30) #5
  store i64 %9, ptr %30, align 8
  %40 = getelementptr inbounds nuw i8, ptr %30, i32 8
  store i64 %10, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %30, i32 16
  store i64 %11, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %30, i32 24
  store i64 %12, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %30, i32 32
  store i64 %13, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %30, i32 40
  store i64 %14, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %30, i32 48
  store i64 %15, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %30, i32 56
  store i64 %16, ptr %46, align 8
  %47 = call ptr @memcpy(ptr noundef nonnull %27, ptr noundef nonnull %30, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %30) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %31) #5
  store i64 %17, ptr %31, align 8
  %48 = getelementptr inbounds nuw i8, ptr %31, i32 8
  store i64 %18, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %31, i32 16
  store i64 %19, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %31, i32 24
  store i64 %20, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %31, i32 32
  store i64 %21, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %31, i32 40
  store i64 %22, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %31, i32 48
  store i64 %23, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %31, i32 56
  store i64 %24, ptr %54, align 8
  %55 = call ptr @memcpy(ptr noundef nonnull %28, ptr noundef nonnull %31, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %31) #5
  %56 = load <2 x i64>, ptr %26, align 64
  %57 = load <2 x i64>, ptr %27, align 1
  %58 = load <2 x i64>, ptr %28, align 1
  %59 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %60 = xor <2 x i64> %58, %57
  %61 = call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %60) #7
  %62 = bitcast <2 x i64> %61 to <4 x i32>
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %64 = shufflevector <4 x i32> %62, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %65 = call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %63, <2 x i32> %64)
  %66 = add <2 x i64> %59, %56
  %67 = add <2 x i64> %66, %65
  store <2 x i64> %67, ptr %26, align 64
  %68 = getelementptr inbounds nuw i8, ptr %26, i32 16
  %69 = load <2 x i64>, ptr %68, align 16
  %70 = getelementptr inbounds nuw i8, ptr %27, i32 16
  %71 = load <2 x i64>, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %28, i32 16
  %73 = load <2 x i64>, ptr %72, align 1
  %74 = shufflevector <2 x i64> %71, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %75 = xor <2 x i64> %73, %71
  %76 = call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %75) #7
  %77 = bitcast <2 x i64> %76 to <4 x i32>
  %78 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %79 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %80 = call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %78, <2 x i32> %79)
  %81 = add <2 x i64> %74, %69
  %82 = add <2 x i64> %81, %80
  store <2 x i64> %82, ptr %68, align 16
  %83 = getelementptr inbounds nuw i8, ptr %26, i32 32
  %84 = load <2 x i64>, ptr %83, align 32
  %85 = getelementptr inbounds nuw i8, ptr %27, i32 32
  %86 = load <2 x i64>, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %28, i32 32
  %88 = load <2 x i64>, ptr %87, align 1
  %89 = shufflevector <2 x i64> %86, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %90 = xor <2 x i64> %88, %86
  %91 = call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %90) #7
  %92 = bitcast <2 x i64> %91 to <4 x i32>
  %93 = shufflevector <4 x i32> %92, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %94 = shufflevector <4 x i32> %92, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %95 = call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %93, <2 x i32> %94)
  %96 = add <2 x i64> %89, %84
  %97 = add <2 x i64> %96, %95
  store <2 x i64> %97, ptr %83, align 32
  %98 = getelementptr inbounds nuw i8, ptr %26, i32 48
  %99 = load <2 x i64>, ptr %98, align 16
  %100 = getelementptr inbounds nuw i8, ptr %27, i32 48
  %101 = load <2 x i64>, ptr %100, align 1
  %102 = getelementptr inbounds nuw i8, ptr %28, i32 48
  %103 = load <2 x i64>, ptr %102, align 1
  %104 = shufflevector <2 x i64> %101, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %105 = xor <2 x i64> %103, %101
  %106 = call <2 x i64> asm "vzip.32  ${0:e}, ${0:f}", "=w,0"(<2 x i64> %105) #7
  %107 = bitcast <2 x i64> %106 to <4 x i32>
  %108 = shufflevector <4 x i32> %107, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %109 = shufflevector <4 x i32> %107, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %110 = call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %108, <2 x i32> %109)
  %111 = add <2 x i64> %104, %99
  %112 = add <2 x i64> %111, %110
  store <2 x i64> %112, ptr %98, align 16
  %113 = call ptr @memcpy(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_accumulate_512_neon: argument 0"}
!7 = distinct !{!7, !"XXH3_accumulate_512_neon"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_accumulate_512_neon: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !"XXH3_accumulate_512_neon: argument 2"}
!12 = !{!9, !11}
!13 = !{!6, !11}
!14 = !{!6, !9}
!15 = !{i64 2150738660}
