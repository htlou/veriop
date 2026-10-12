; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @changed_scale_block(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x [8 x i8]], align 16
  %6 = alloca [8 x <4 x i32>], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #2
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load <16 x i8>, ptr %1, align 1
  store <16 x i8> %8, ptr %5, align 16
  %9 = load <4 x i32>, ptr %2, align 16
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %11 = load <4 x i32>, ptr %10, align 16
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load <4 x i32>, ptr %12, align 16
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %15 = load <4 x i32>, ptr %14, align 16
  %16 = load <4 x i32>, ptr %3, align 16
  store <4 x i32> %16, ptr %6, align 16
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = load <4 x i32>, ptr %17, align 16
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x i32> %18, ptr %19, align 16
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %21 = load <4 x i32>, ptr %20, align 16
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x i32> %21, ptr %22, align 16
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %24 = load <4 x i32>, ptr %23, align 16
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x i32> %24, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %27 = load <4 x i32>, ptr %26, align 16
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <4 x i32> %27, ptr %28, align 16
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %30 = load <4 x i32>, ptr %29, align 16
  %31 = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <4 x i32> %30, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %33 = load <4 x i32>, ptr %32, align 16
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <4 x i32> %33, ptr %34, align 16
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %36 = load <4 x i32>, ptr %35, align 16
  %37 = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <4 x i32> %36, ptr %37, align 16
  %38 = shl nsw i32 %0, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %39
  %41 = load i8, ptr %40, align 2
  %42 = sext i8 %41 to i32
  %43 = or disjoint i32 %38, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  %48 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 %39
  %49 = load i8, ptr %48, align 2
  %50 = sext i8 %49 to i32
  %51 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 %44
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = insertelement <2 x i32> poison, i32 %42, i64 0
  %55 = insertelement <2 x i32> poison, i32 %47, i64 0
  %56 = shufflevector <2 x i32> %54, <2 x i32> %55, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %57 = insertelement <2 x i32> poison, i32 %50, i64 0
  %58 = insertelement <2 x i32> poison, i32 %53, i64 0
  %59 = shufflevector <2 x i32> %57, <2 x i32> %58, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %60 = sext i32 %0 to i64
  %61 = getelementptr inbounds [8 x <4 x i32>], ptr %6, i64 0, i64 %60
  %62 = load <4 x i32>, ptr %61, align 16
  %63 = mul <4 x i32> %9, %56
  %64 = add <4 x i32> %63, %62
  %65 = add nsw i32 %0, 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x <4 x i32>], ptr %6, i64 0, i64 %66
  %68 = load <4 x i32>, ptr %67, align 16
  %69 = mul <4 x i32> %13, %56
  %70 = add <4 x i32> %69, %68
  %71 = mul <4 x i32> %11, %59
  %72 = add <4 x i32> %71, %64
  store <4 x i32> %72, ptr %61, align 16
  %73 = mul <4 x i32> %15, %59
  %74 = add <4 x i32> %73, %70
  store <4 x i32> %74, ptr %67, align 16
  %75 = load <4 x i32>, ptr %6, align 16
  store <4 x i32> %75, ptr %3, align 16
  %76 = load <4 x i32>, ptr %19, align 16
  store <4 x i32> %76, ptr %17, align 16
  %77 = load <4 x i32>, ptr %22, align 16
  store <4 x i32> %77, ptr %20, align 16
  %78 = load <4 x i32>, ptr %25, align 16
  store <4 x i32> %78, ptr %23, align 16
  %79 = load <4 x i32>, ptr %28, align 16
  store <4 x i32> %79, ptr %26, align 16
  %80 = load <4 x i32>, ptr %31, align 16
  store <4 x i32> %80, ptr %29, align 16
  %81 = load <4 x i32>, ptr %34, align 16
  store <4 x i32> %81, ptr %32, align 16
  %82 = load <4 x i32>, ptr %37, align 16
  store <4 x i32> %82, ptr %35, align 16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }


