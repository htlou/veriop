; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/cp1-new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/cp1-new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @changed_scale_block(i8 noundef %0, i8 noundef %1, i8 noundef %2, i8 noundef %3, <4 x i32> noundef %4, <4 x i32> noundef %5, <4 x i32> noundef %6, <4 x i32> noundef %7, <4 x i32> noundef %8, <4 x i32> noundef %9, ptr noundef writeonly initializes((0, 32)) %10) local_unnamed_addr #0 {
  %12 = sext i8 %0 to i32
  %13 = sext i8 %1 to i32
  %14 = sext i8 %2 to i32
  %15 = sext i8 %3 to i32
  %16 = insertelement <2 x i32> poison, i32 %12, i64 0
  %17 = insertelement <2 x i32> poison, i32 %13, i64 0
  %18 = shufflevector <2 x i32> %16, <2 x i32> %17, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %19 = insertelement <2 x i32> poison, i32 %14, i64 0
  %20 = insertelement <2 x i32> poison, i32 %15, i64 0
  %21 = shufflevector <2 x i32> %19, <2 x i32> %20, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %22 = mul <4 x i32> %18, %4
  %23 = add <4 x i32> %8, %22
  %24 = mul <4 x i32> %6, %18
  %25 = mul <4 x i32> %21, %5
  %26 = add <4 x i32> %23, %25
  %27 = mul <4 x i32> %7, %21
  %28 = add <4 x i32> %27, %24
  %29 = add <4 x i32> %28, %9
  store <4 x i32> %26, ptr %10, align 16
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <4 x i32> %29, ptr %30, align 16
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }


