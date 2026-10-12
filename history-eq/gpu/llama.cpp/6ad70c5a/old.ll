; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/6ad70c5a/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @changed_scale_block(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x [8 x i8]], align 16
  %6 = alloca [8 x <4 x i32>], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #2
  %7 = load <16 x i8>, ptr %1, align 1, !tbaa !3
  store <16 x i8> %7, ptr %5, align 16, !tbaa !3
  %8 = load <4 x i32>, ptr %2, align 16, !tbaa !3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = load <4 x i32>, ptr %9, align 16, !tbaa !3
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load <4 x i32>, ptr %11, align 16, !tbaa !3
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %14 = load <4 x i32>, ptr %13, align 16, !tbaa !3
  %15 = load <4 x i32>, ptr %3, align 16, !tbaa !3
  store <4 x i32> %15, ptr %6, align 16, !tbaa !3
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %17 = load <4 x i32>, ptr %16, align 16, !tbaa !3
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x i32> %17, ptr %18, align 16, !tbaa !3
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %20 = load <4 x i32>, ptr %19, align 16, !tbaa !3
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x i32> %20, ptr %21, align 16, !tbaa !3
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %23 = load <4 x i32>, ptr %22, align 16, !tbaa !3
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x i32> %23, ptr %24, align 16, !tbaa !3
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %26 = load <4 x i32>, ptr %25, align 16, !tbaa !3
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <4 x i32> %26, ptr %27, align 16, !tbaa !3
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %29 = load <4 x i32>, ptr %28, align 16, !tbaa !3
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <4 x i32> %29, ptr %30, align 16, !tbaa !3
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %32 = load <4 x i32>, ptr %31, align 16, !tbaa !3
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <4 x i32> %32, ptr %33, align 16, !tbaa !3
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %35 = load <4 x i32>, ptr %34, align 16, !tbaa !3
  %36 = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <4 x i32> %35, ptr %36, align 16, !tbaa !3
  %37 = shl nsw i32 %0, 1
  %38 = sext i32 %37 to i64
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds [8 x <4 x i32>], ptr %6, i64 0, i64 %39
  %41 = add nsw i32 %0, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x <4 x i32>], ptr %6, i64 0, i64 %42
  %44 = load <4 x i32>, ptr %40, align 16, !tbaa !3
  %45 = load <4 x i32>, ptr %43, align 16, !tbaa !3
  %46 = getelementptr inbounds [2 x [8 x i8]], ptr %5, i64 0, i64 0, i64 %38
  %47 = load <2 x i8>, ptr %46, align 2, !tbaa !3
  %48 = shufflevector <2 x i8> %47, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %49 = sext <4 x i8> %48 to <4 x i32>
  %50 = mul <4 x i32> %8, %49
  %51 = add <4 x i32> %50, %44
  %52 = mul <4 x i32> %12, %49
  %53 = add <4 x i32> %52, %45
  %54 = getelementptr inbounds [2 x [8 x i8]], ptr %5, i64 0, i64 1, i64 %38
  %55 = load <2 x i8>, ptr %54, align 2, !tbaa !3
  %56 = shufflevector <2 x i8> %55, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %57 = sext <4 x i8> %56 to <4 x i32>
  %58 = mul <4 x i32> %10, %57
  %59 = add <4 x i32> %58, %51
  %60 = mul <4 x i32> %14, %57
  %61 = add <4 x i32> %60, %53
  store <4 x i32> %59, ptr %40, align 16, !tbaa !3
  store <4 x i32> %61, ptr %43, align 16, !tbaa !3
  %62 = load <4 x i32>, ptr %6, align 16, !tbaa !3
  store <4 x i32> %62, ptr %3, align 16, !tbaa !3
  %63 = load <4 x i32>, ptr %18, align 16, !tbaa !3
  store <4 x i32> %63, ptr %16, align 16, !tbaa !3
  %64 = load <4 x i32>, ptr %21, align 16, !tbaa !3
  store <4 x i32> %64, ptr %19, align 16, !tbaa !3
  %65 = load <4 x i32>, ptr %24, align 16, !tbaa !3
  store <4 x i32> %65, ptr %22, align 16, !tbaa !3
  %66 = load <4 x i32>, ptr %27, align 16, !tbaa !3
  store <4 x i32> %66, ptr %25, align 16, !tbaa !3
  %67 = load <4 x i32>, ptr %30, align 16, !tbaa !3
  store <4 x i32> %67, ptr %28, align 16, !tbaa !3
  %68 = load <4 x i32>, ptr %33, align 16, !tbaa !3
  store <4 x i32> %68, ptr %31, align 16, !tbaa !3
  %69 = load <4 x i32>, ptr %36, align 16, !tbaa !3
  store <4 x i32> %69, ptr %34, align 16, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 1}
!2 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
