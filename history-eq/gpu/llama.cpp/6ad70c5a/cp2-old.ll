; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/cp2-old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/cp2-old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @changed_scale_block(i8 noundef %0, i8 noundef %1, i8 noundef %2, i8 noundef %3, <4 x i32> noundef %4, <4 x i32> noundef %5, <4 x i32> noundef %6, <4 x i32> noundef %7, <4 x i32> noundef %8, <4 x i32> noundef %9, ptr nocapture noundef writeonly initializes((0, 32)) %10) local_unnamed_addr #0 {
  %12 = insertelement <2 x i8> poison, i8 %0, i64 0
  %13 = insertelement <2 x i8> %12, i8 %1, i64 1
  %14 = shufflevector <2 x i8> %13, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %15 = sext <4 x i8> %14 to <4 x i32>
  %16 = mul <4 x i32> %4, %15
  %17 = add <4 x i32> %16, %8
  %18 = mul <4 x i32> %6, %15
  %19 = add <4 x i32> %18, %9
  %20 = insertelement <2 x i8> poison, i8 %2, i64 0
  %21 = insertelement <2 x i8> %20, i8 %3, i64 1
  %22 = shufflevector <2 x i8> %21, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %23 = sext <4 x i8> %22 to <4 x i32>
  %24 = mul <4 x i32> %5, %23
  %25 = add <4 x i32> %24, %17
  %26 = mul <4 x i32> %7, %23
  %27 = add <4 x i32> %26, %19
  store <4 x i32> %25, ptr %10, align 16, !tbaa !3
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <4 x i32> %27, ptr %28, align 16, !tbaa !3
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 1}
!2 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
