; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/55c509da/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/55c509da/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_1_1_0_0_0(ptr nocapture noundef initializes((0, 4)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_1_2_0_0_0(ptr nocapture noundef initializes((0, 4), (32, 36)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_1_3_0_0_0(ptr nocapture noundef initializes((0, 4), (32, 36), (64, 68)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_1_4_0_0_0(ptr nocapture noundef initializes((0, 4), (32, 36), (64, 68), (96, 100)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_2_1_0_0_0(ptr nocapture noundef initializes((0, 8)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr i8, ptr %0, i64 528
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %5, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_2_2_0_0_0(ptr nocapture noundef initializes((0, 8), (32, 40)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 528
  %8 = getelementptr i8, ptr %0, i64 4
  %9 = load float, ptr %7, align 4, !tbaa !5
  store float %9, ptr %8, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 532
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr i8, ptr %0, i64 36
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_2_3_0_0_0(ptr nocapture noundef initializes((0, 8), (32, 40), (64, 72)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 528
  %11 = getelementptr i8, ptr %0, i64 4
  %12 = load float, ptr %10, align 4, !tbaa !5
  store float %12, ptr %11, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 532
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr i8, ptr %0, i64 36
  store float %14, ptr %15, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 536
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 68
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_2_4_0_0_0(ptr nocapture noundef initializes((0, 8), (32, 40), (64, 72), (96, 104)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr i8, ptr %0, i64 96
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 528
  %14 = getelementptr i8, ptr %0, i64 4
  %15 = load float, ptr %13, align 4, !tbaa !5
  store float %15, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 532
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 36
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 536
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = getelementptr i8, ptr %0, i64 68
  store float %20, ptr %21, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 540
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr i8, ptr %0, i64 100
  store float %23, ptr %24, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_3_1_0_0_0(ptr nocapture noundef initializes((0, 12)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr i8, ptr %0, i64 528
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 544
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %8, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_3_2_0_0_0(ptr nocapture noundef initializes((0, 12), (32, 44)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 528
  %8 = getelementptr i8, ptr %0, i64 4
  %9 = load float, ptr %7, align 4, !tbaa !5
  store float %9, ptr %8, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 532
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr i8, ptr %0, i64 36
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 544
  %14 = getelementptr i8, ptr %0, i64 8
  %15 = load float, ptr %13, align 4, !tbaa !5
  store float %15, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 548
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 40
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_3_3_0_0_0(ptr nocapture noundef initializes((0, 12), (32, 44), (64, 76)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 528
  %11 = getelementptr i8, ptr %0, i64 4
  %12 = load float, ptr %10, align 4, !tbaa !5
  store float %12, ptr %11, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 532
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr i8, ptr %0, i64 36
  store float %14, ptr %15, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 536
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 68
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 544
  %20 = getelementptr i8, ptr %0, i64 8
  %21 = load float, ptr %19, align 4, !tbaa !5
  store float %21, ptr %20, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 548
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr i8, ptr %0, i64 40
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 552
  %26 = load float, ptr %25, align 4, !tbaa !5
  %27 = getelementptr i8, ptr %0, i64 72
  store float %26, ptr %27, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_3_4_0_0_0(ptr nocapture noundef initializes((0, 12), (32, 44), (64, 76), (96, 108)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr i8, ptr %0, i64 96
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 528
  %14 = getelementptr i8, ptr %0, i64 4
  %15 = load float, ptr %13, align 4, !tbaa !5
  store float %15, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 532
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 36
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 536
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = getelementptr i8, ptr %0, i64 68
  store float %20, ptr %21, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 540
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr i8, ptr %0, i64 100
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 544
  %26 = getelementptr i8, ptr %0, i64 8
  %27 = load float, ptr %25, align 4, !tbaa !5
  store float %27, ptr %26, align 4, !tbaa !5
  %28 = getelementptr i8, ptr %0, i64 548
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = getelementptr i8, ptr %0, i64 40
  store float %29, ptr %30, align 4, !tbaa !5
  %31 = getelementptr i8, ptr %0, i64 552
  %32 = load float, ptr %31, align 4, !tbaa !5
  %33 = getelementptr i8, ptr %0, i64 72
  store float %32, ptr %33, align 4, !tbaa !5
  %34 = getelementptr i8, ptr %0, i64 556
  %35 = load float, ptr %34, align 4, !tbaa !5
  %36 = getelementptr i8, ptr %0, i64 104
  store float %35, ptr %36, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_1_0_0_0(ptr nocapture noundef initializes((0, 16)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr i8, ptr %0, i64 528
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 544
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 560
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_2_0_0_0(ptr nocapture noundef initializes((0, 16), (32, 48)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 528
  %8 = getelementptr i8, ptr %0, i64 4
  %9 = load float, ptr %7, align 4, !tbaa !5
  store float %9, ptr %8, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 532
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr i8, ptr %0, i64 36
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 544
  %14 = getelementptr i8, ptr %0, i64 8
  %15 = load float, ptr %13, align 4, !tbaa !5
  store float %15, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 548
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 40
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 560
  %20 = getelementptr i8, ptr %0, i64 12
  %21 = load float, ptr %19, align 4, !tbaa !5
  store float %21, ptr %20, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 564
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr i8, ptr %0, i64 44
  store float %23, ptr %24, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_3_0_0_0(ptr nocapture noundef initializes((0, 16), (32, 48), (64, 80)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 528
  %11 = getelementptr i8, ptr %0, i64 4
  %12 = load float, ptr %10, align 4, !tbaa !5
  store float %12, ptr %11, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 532
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr i8, ptr %0, i64 36
  store float %14, ptr %15, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 536
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 68
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 544
  %20 = getelementptr i8, ptr %0, i64 8
  %21 = load float, ptr %19, align 4, !tbaa !5
  store float %21, ptr %20, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 548
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr i8, ptr %0, i64 40
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 552
  %26 = load float, ptr %25, align 4, !tbaa !5
  %27 = getelementptr i8, ptr %0, i64 72
  store float %26, ptr %27, align 4, !tbaa !5
  %28 = getelementptr i8, ptr %0, i64 560
  %29 = getelementptr i8, ptr %0, i64 12
  %30 = load float, ptr %28, align 4, !tbaa !5
  store float %30, ptr %29, align 4, !tbaa !5
  %31 = getelementptr i8, ptr %0, i64 564
  %32 = load float, ptr %31, align 4, !tbaa !5
  %33 = getelementptr i8, ptr %0, i64 44
  store float %32, ptr %33, align 4, !tbaa !5
  %34 = getelementptr i8, ptr %0, i64 568
  %35 = load float, ptr %34, align 4, !tbaa !5
  %36 = getelementptr i8, ptr %0, i64 76
  store float %35, ptr %36, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_4_0_0_0(ptr nocapture noundef initializes((0, 16), (32, 48), (64, 80), (96, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load float, ptr %2, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr i8, ptr %0, i64 32
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr i8, ptr %0, i64 64
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr i8, ptr %0, i64 96
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 528
  %14 = getelementptr i8, ptr %0, i64 4
  %15 = load float, ptr %13, align 4, !tbaa !5
  store float %15, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 532
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr i8, ptr %0, i64 36
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 536
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = getelementptr i8, ptr %0, i64 68
  store float %20, ptr %21, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 540
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr i8, ptr %0, i64 100
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 544
  %26 = getelementptr i8, ptr %0, i64 8
  %27 = load float, ptr %25, align 4, !tbaa !5
  store float %27, ptr %26, align 4, !tbaa !5
  %28 = getelementptr i8, ptr %0, i64 548
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = getelementptr i8, ptr %0, i64 40
  store float %29, ptr %30, align 4, !tbaa !5
  %31 = getelementptr i8, ptr %0, i64 552
  %32 = load float, ptr %31, align 4, !tbaa !5
  %33 = getelementptr i8, ptr %0, i64 72
  store float %32, ptr %33, align 4, !tbaa !5
  %34 = getelementptr i8, ptr %0, i64 556
  %35 = load float, ptr %34, align 4, !tbaa !5
  %36 = getelementptr i8, ptr %0, i64 104
  store float %35, ptr %36, align 4, !tbaa !5
  %37 = getelementptr i8, ptr %0, i64 560
  %38 = getelementptr i8, ptr %0, i64 12
  %39 = load float, ptr %37, align 4, !tbaa !5
  store float %39, ptr %38, align 4, !tbaa !5
  %40 = getelementptr i8, ptr %0, i64 564
  %41 = load float, ptr %40, align 4, !tbaa !5
  %42 = getelementptr i8, ptr %0, i64 44
  store float %41, ptr %42, align 4, !tbaa !5
  %43 = getelementptr i8, ptr %0, i64 568
  %44 = load float, ptr %43, align 4, !tbaa !5
  %45 = getelementptr i8, ptr %0, i64 76
  store float %44, ptr %45, align 4, !tbaa !5
  %46 = getelementptr i8, ptr %0, i64 572
  %47 = load float, ptr %46, align 4, !tbaa !5
  %48 = getelementptr i8, ptr %0, i64 108
  store float %47, ptr %48, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_4_0_4_4(ptr nocapture noundef initializes((128, 144), (160, 176), (192, 208), (224, 240)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %3 = load float, ptr %2, align 4, !tbaa !5
  %4 = getelementptr i8, ptr %0, i64 128
  store float %3, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 580
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 160
  store float %6, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 584
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 192
  store float %9, ptr %10, align 4, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 588
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 224
  store float %12, ptr %13, align 4, !tbaa !5
  %14 = getelementptr i8, ptr %0, i64 592
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 132
  store float %15, ptr %16, align 4, !tbaa !5
  %17 = getelementptr i8, ptr %0, i64 596
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 164
  store float %18, ptr %19, align 4, !tbaa !5
  %20 = getelementptr i8, ptr %0, i64 600
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 196
  store float %21, ptr %22, align 4, !tbaa !5
  %23 = getelementptr i8, ptr %0, i64 604
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 228
  store float %24, ptr %25, align 4, !tbaa !5
  %26 = getelementptr i8, ptr %0, i64 608
  %27 = load float, ptr %26, align 4, !tbaa !5
  %28 = getelementptr i8, ptr %0, i64 136
  store float %27, ptr %28, align 4, !tbaa !5
  %29 = getelementptr i8, ptr %0, i64 612
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = getelementptr i8, ptr %0, i64 168
  store float %30, ptr %31, align 4, !tbaa !5
  %32 = getelementptr i8, ptr %0, i64 616
  %33 = load float, ptr %32, align 4, !tbaa !5
  %34 = getelementptr i8, ptr %0, i64 200
  store float %33, ptr %34, align 4, !tbaa !5
  %35 = getelementptr i8, ptr %0, i64 620
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = getelementptr i8, ptr %0, i64 232
  store float %36, ptr %37, align 4, !tbaa !5
  %38 = getelementptr i8, ptr %0, i64 624
  %39 = load float, ptr %38, align 4, !tbaa !5
  %40 = getelementptr i8, ptr %0, i64 140
  store float %39, ptr %40, align 4, !tbaa !5
  %41 = getelementptr i8, ptr %0, i64 628
  %42 = load float, ptr %41, align 4, !tbaa !5
  %43 = getelementptr i8, ptr %0, i64 172
  store float %42, ptr %43, align 4, !tbaa !5
  %44 = getelementptr i8, ptr %0, i64 632
  %45 = load float, ptr %44, align 4, !tbaa !5
  %46 = getelementptr i8, ptr %0, i64 204
  store float %45, ptr %46, align 4, !tbaa !5
  %47 = getelementptr i8, ptr %0, i64 636
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = getelementptr i8, ptr %0, i64 236
  store float %48, ptr %49, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_4_4_0_4(ptr nocapture noundef initializes((16, 32), (48, 64), (80, 96), (112, 128)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %4 = load float, ptr %3, align 4, !tbaa !5
  store float %4, ptr %2, align 4, !tbaa !5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 580
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 48
  store float %6, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 584
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 80
  store float %9, ptr %10, align 4, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 588
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 112
  store float %12, ptr %13, align 4, !tbaa !5
  %14 = getelementptr i8, ptr %0, i64 592
  %15 = getelementptr i8, ptr %0, i64 20
  %16 = load float, ptr %14, align 4, !tbaa !5
  store float %16, ptr %15, align 4, !tbaa !5
  %17 = getelementptr i8, ptr %0, i64 596
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 52
  store float %18, ptr %19, align 4, !tbaa !5
  %20 = getelementptr i8, ptr %0, i64 600
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 84
  store float %21, ptr %22, align 4, !tbaa !5
  %23 = getelementptr i8, ptr %0, i64 604
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 116
  store float %24, ptr %25, align 4, !tbaa !5
  %26 = getelementptr i8, ptr %0, i64 608
  %27 = getelementptr i8, ptr %0, i64 24
  %28 = load float, ptr %26, align 4, !tbaa !5
  store float %28, ptr %27, align 4, !tbaa !5
  %29 = getelementptr i8, ptr %0, i64 612
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = getelementptr i8, ptr %0, i64 56
  store float %30, ptr %31, align 4, !tbaa !5
  %32 = getelementptr i8, ptr %0, i64 616
  %33 = load float, ptr %32, align 4, !tbaa !5
  %34 = getelementptr i8, ptr %0, i64 88
  store float %33, ptr %34, align 4, !tbaa !5
  %35 = getelementptr i8, ptr %0, i64 620
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = getelementptr i8, ptr %0, i64 120
  store float %36, ptr %37, align 4, !tbaa !5
  %38 = getelementptr i8, ptr %0, i64 624
  %39 = getelementptr i8, ptr %0, i64 28
  %40 = load float, ptr %38, align 4, !tbaa !5
  store float %40, ptr %39, align 4, !tbaa !5
  %41 = getelementptr i8, ptr %0, i64 628
  %42 = load float, ptr %41, align 4, !tbaa !5
  %43 = getelementptr i8, ptr %0, i64 60
  store float %42, ptr %43, align 4, !tbaa !5
  %44 = getelementptr i8, ptr %0, i64 632
  %45 = load float, ptr %44, align 4, !tbaa !5
  %46 = getelementptr i8, ptr %0, i64 92
  store float %45, ptr %46, align 4, !tbaa !5
  %47 = getelementptr i8, ptr %0, i64 636
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = getelementptr i8, ptr %0, i64 124
  store float %48, ptr %49, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_4_0_4_8(ptr nocapture noundef initializes((128, 144), (160, 176), (192, 208), (224, 240)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %3 = load float, ptr %2, align 4, !tbaa !5
  %4 = getelementptr i8, ptr %0, i64 128
  store float %3, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 644
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 160
  store float %6, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 192
  store float %9, ptr %10, align 4, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 652
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 224
  store float %12, ptr %13, align 4, !tbaa !5
  %14 = getelementptr i8, ptr %0, i64 656
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 132
  store float %15, ptr %16, align 4, !tbaa !5
  %17 = getelementptr i8, ptr %0, i64 660
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 164
  store float %18, ptr %19, align 4, !tbaa !5
  %20 = getelementptr i8, ptr %0, i64 664
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 196
  store float %21, ptr %22, align 4, !tbaa !5
  %23 = getelementptr i8, ptr %0, i64 668
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 228
  store float %24, ptr %25, align 4, !tbaa !5
  %26 = getelementptr i8, ptr %0, i64 672
  %27 = load float, ptr %26, align 4, !tbaa !5
  %28 = getelementptr i8, ptr %0, i64 136
  store float %27, ptr %28, align 4, !tbaa !5
  %29 = getelementptr i8, ptr %0, i64 676
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = getelementptr i8, ptr %0, i64 168
  store float %30, ptr %31, align 4, !tbaa !5
  %32 = getelementptr i8, ptr %0, i64 680
  %33 = load float, ptr %32, align 4, !tbaa !5
  %34 = getelementptr i8, ptr %0, i64 200
  store float %33, ptr %34, align 4, !tbaa !5
  %35 = getelementptr i8, ptr %0, i64 684
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = getelementptr i8, ptr %0, i64 232
  store float %36, ptr %37, align 4, !tbaa !5
  %38 = getelementptr i8, ptr %0, i64 688
  %39 = load float, ptr %38, align 4, !tbaa !5
  %40 = getelementptr i8, ptr %0, i64 140
  store float %39, ptr %40, align 4, !tbaa !5
  %41 = getelementptr i8, ptr %0, i64 692
  %42 = load float, ptr %41, align 4, !tbaa !5
  %43 = getelementptr i8, ptr %0, i64 172
  store float %42, ptr %43, align 4, !tbaa !5
  %44 = getelementptr i8, ptr %0, i64 696
  %45 = load float, ptr %44, align 4, !tbaa !5
  %46 = getelementptr i8, ptr %0, i64 204
  store float %45, ptr %46, align 4, !tbaa !5
  %47 = getelementptr i8, ptr %0, i64 700
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = getelementptr i8, ptr %0, i64 236
  store float %48, ptr %49, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compare_4_4_4_4_12(ptr nocapture noundef initializes((144, 160), (176, 192), (208, 224), (240, 256)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %3 = load float, ptr %2, align 4, !tbaa !5
  %4 = getelementptr i8, ptr %0, i64 144
  store float %3, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 708
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 176
  store float %6, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr i8, ptr %0, i64 208
  store float %9, ptr %10, align 4, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 716
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr i8, ptr %0, i64 240
  store float %12, ptr %13, align 4, !tbaa !5
  %14 = getelementptr i8, ptr %0, i64 720
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = getelementptr i8, ptr %0, i64 148
  store float %15, ptr %16, align 4, !tbaa !5
  %17 = getelementptr i8, ptr %0, i64 724
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = getelementptr i8, ptr %0, i64 180
  store float %18, ptr %19, align 4, !tbaa !5
  %20 = getelementptr i8, ptr %0, i64 728
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = getelementptr i8, ptr %0, i64 212
  store float %21, ptr %22, align 4, !tbaa !5
  %23 = getelementptr i8, ptr %0, i64 732
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = getelementptr i8, ptr %0, i64 244
  store float %24, ptr %25, align 4, !tbaa !5
  %26 = getelementptr i8, ptr %0, i64 736
  %27 = load float, ptr %26, align 4, !tbaa !5
  %28 = getelementptr i8, ptr %0, i64 152
  store float %27, ptr %28, align 4, !tbaa !5
  %29 = getelementptr i8, ptr %0, i64 740
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = getelementptr i8, ptr %0, i64 184
  store float %30, ptr %31, align 4, !tbaa !5
  %32 = getelementptr i8, ptr %0, i64 744
  %33 = load float, ptr %32, align 4, !tbaa !5
  %34 = getelementptr i8, ptr %0, i64 216
  store float %33, ptr %34, align 4, !tbaa !5
  %35 = getelementptr i8, ptr %0, i64 748
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = getelementptr i8, ptr %0, i64 248
  store float %36, ptr %37, align 4, !tbaa !5
  %38 = getelementptr i8, ptr %0, i64 752
  %39 = load float, ptr %38, align 4, !tbaa !5
  %40 = getelementptr i8, ptr %0, i64 156
  store float %39, ptr %40, align 4, !tbaa !5
  %41 = getelementptr i8, ptr %0, i64 756
  %42 = load float, ptr %41, align 4, !tbaa !5
  %43 = getelementptr i8, ptr %0, i64 188
  store float %42, ptr %43, align 4, !tbaa !5
  %44 = getelementptr i8, ptr %0, i64 760
  %45 = load float, ptr %44, align 4, !tbaa !5
  %46 = getelementptr i8, ptr %0, i64 220
  store float %45, ptr %46, align 4, !tbaa !5
  %47 = getelementptr i8, ptr %0, i64 764
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = getelementptr i8, ptr %0, i64 252
  store float %48, ptr %49, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
