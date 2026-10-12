; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/77d5e9a7/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/77d5e9a7/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggml_bf16_t = type { i16 }

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_0(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = load i32, ptr %10, align 16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_1(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_2(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %29 = load i32, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_3(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_4(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %29 = load i32, ptr %28, align 16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_5(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 20
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_6(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %29 = load i32, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_7(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [8 x %struct.ggml_bf16_t], align 16
  %10 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #2
  store i16 %0, ptr %9, align 16
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 %1, ptr %11, align 2
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 %3, ptr %13, align 2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %4, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %5, ptr %15, align 2
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i16 %6, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 %7, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #2
  br label %18

18:                                               ; preds = %18, %8
  %19 = phi i64 [ 0, %8 ], [ %25, %18 ]
  %20 = getelementptr inbounds nuw %struct.ggml_bf16_t, ptr %9, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = getelementptr inbounds nuw float, ptr %10, i64 %19
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #2
  ret i32 %29
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-amx-avx512,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
