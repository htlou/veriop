; ModuleID = 'history-eq/c/zstd/f36da5b4/reduce_model.c'
source_filename = "history-eq/c/zstd/f36da5b4/reduce_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @old16(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load <4 x i32>, ptr %0, align 4, !tbaa !5
  %4 = insertelement <4 x i32> poison, i32 %1, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %3, <4 x i32> %5)
  store <4 x i32> %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %9 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %8, <4 x i32> %5)
  store <4 x i32> %9, ptr %7, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %11 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %12 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %11, <4 x i32> %5)
  store <4 x i32> %12, ptr %10, align 4, !tbaa !5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %15 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %14, <4 x i32> %5)
  store <4 x i32> %15, ptr %13, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @new16(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load <4 x i32>, ptr %0, align 4, !tbaa !5
  %4 = insertelement <4 x i32> poison, i32 %1, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %3, <4 x i32> %5)
  store <4 x i32> %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %9 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %8, <4 x i32> %5)
  store <4 x i32> %9, ptr %7, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %11 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %12 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %11, <4 x i32> %5)
  store <4 x i32> %12, ptr %10, align 4, !tbaa !5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %15 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %14, <4 x i32> %5)
  store <4 x i32> %15, ptr %13, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @old32(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = insertelement <4 x i32> poison, i32 %1, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load <4 x i32>, ptr %0, align 4, !tbaa !5
  %7 = load <4 x i32>, ptr %5, align 4, !tbaa !5
  %8 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %6, <4 x i32> %4)
  %9 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %7, <4 x i32> %4)
  store <4 x i32> %8, ptr %0, align 4, !tbaa !5
  store <4 x i32> %9, ptr %5, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %13 = load <4 x i32>, ptr %11, align 4, !tbaa !5
  %14 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %12, <4 x i32> %4)
  %15 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %13, <4 x i32> %4)
  store <4 x i32> %14, ptr %10, align 4, !tbaa !5
  store <4 x i32> %15, ptr %11, align 4, !tbaa !5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %18 = load <4 x i32>, ptr %16, align 4, !tbaa !5
  %19 = load <4 x i32>, ptr %17, align 4, !tbaa !5
  %20 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %18, <4 x i32> %4)
  %21 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %19, <4 x i32> %4)
  store <4 x i32> %20, ptr %16, align 4, !tbaa !5
  store <4 x i32> %21, ptr %17, align 4, !tbaa !5
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x i32>, ptr %22, align 4, !tbaa !5
  %25 = load <4 x i32>, ptr %23, align 4, !tbaa !5
  %26 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %24, <4 x i32> %4)
  %27 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %25, <4 x i32> %4)
  store <4 x i32> %26, ptr %22, align 4, !tbaa !5
  store <4 x i32> %27, ptr %23, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @new32(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = insertelement <4 x i32> poison, i32 %1, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = load <4 x i32>, ptr %0, align 4, !tbaa !5
  %6 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %5, <4 x i32> %4)
  store <4 x i32> %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %9 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %8, <4 x i32> %4)
  store <4 x i32> %9, ptr %7, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %11 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %12 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %11, <4 x i32> %4)
  store <4 x i32> %12, ptr %10, align 4, !tbaa !5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %15 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %14, <4 x i32> %4)
  store <4 x i32> %15, ptr %13, align 4, !tbaa !5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %17 = load <4 x i32>, ptr %16, align 4, !tbaa !5
  %18 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %17, <4 x i32> %4)
  store <4 x i32> %18, ptr %16, align 4, !tbaa !5
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x i32>, ptr %19, align 4, !tbaa !5
  %21 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %20, <4 x i32> %4)
  store <4 x i32> %21, ptr %19, align 4, !tbaa !5
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %23 = load <4 x i32>, ptr %22, align 4, !tbaa !5
  %24 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %23, <4 x i32> %4)
  store <4 x i32> %24, ptr %22, align 4, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %26 = load <4 x i32>, ptr %25, align 4, !tbaa !5
  %27 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %26, <4 x i32> %4)
  store <4 x i32> %27, ptr %25, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @new16_bad(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %1)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load <4 x i32>, ptr %5, align 4, !tbaa !5
  %7 = insertelement <4 x i32> poison, i32 %1, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %6, <4 x i32> %8)
  store <4 x i32> %9, ptr %5, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %11 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %12 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %11, <4 x i32> %8)
  store <4 x i32> %12, ptr %10, align 4, !tbaa !5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %14 = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %15 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %14, <4 x i32> %8)
  store <4 x i32> %15, ptr %13, align 4, !tbaa !5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %17, i32 %1)
  store i32 %18, ptr %16, align 4, !tbaa !5
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %20, i32 %1)
  store i32 %21, ptr %19, align 4, !tbaa !5
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %23, i32 %1)
  store i32 %24, ptr %22, align 4, !tbaa !5
  %25 = add i32 %4, 1
  store i32 %25, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
