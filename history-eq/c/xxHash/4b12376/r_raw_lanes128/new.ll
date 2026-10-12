; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_raw_lanes128.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_raw_lanes128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 0
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 0
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %9, %0
  %51 = add i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane1(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 3, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 1
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 1
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %8, %1
  %51 = add i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 2
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 2
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %11, %2
  %51 = add i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane3(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 3
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 3
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %10, %3
  %51 = add i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane4(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 9, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 4
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 4
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %13, %4
  %51 = add i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane5(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 11, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 5
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 5
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %12, %5
  %51 = add i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane6(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 13, i32 12, i32 poison, i32 poison>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 6
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 6
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %15, %6
  %51 = add i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_acc512_128_lane7(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23) local_unnamed_addr #0 {
  %25 = insertelement <8 x i64> poison, i64 %8, i64 0
  %26 = insertelement <8 x i64> %25, i64 %9, i64 1
  %27 = insertelement <8 x i64> %26, i64 %10, i64 2
  %28 = insertelement <8 x i64> %27, i64 %11, i64 3
  %29 = insertelement <8 x i64> %28, i64 %12, i64 4
  %30 = insertelement <8 x i64> %29, i64 %13, i64 5
  %31 = insertelement <8 x i64> %30, i64 %14, i64 6
  %32 = insertelement <8 x i64> %31, i64 %15, i64 7
  %33 = insertelement <8 x i64> poison, i64 %16, i64 0
  %34 = insertelement <8 x i64> %33, i64 %17, i64 1
  %35 = insertelement <8 x i64> %34, i64 %18, i64 2
  %36 = insertelement <8 x i64> %35, i64 %19, i64 3
  %37 = insertelement <8 x i64> %36, i64 %20, i64 4
  %38 = insertelement <8 x i64> %37, i64 %21, i64 5
  %39 = insertelement <8 x i64> %38, i64 %22, i64 6
  %40 = insertelement <8 x i64> %39, i64 %23, i64 7
  %41 = xor <8 x i64> %40, %32
  %42 = bitcast <8 x i64> %41 to <16 x i32>
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 15, i32 12>
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = extractelement <8 x i64> %44, i64 7
  %46 = and i64 %45, 4294967295
  %47 = extractelement <8 x i64> %41, i64 7
  %48 = and i64 %47, 4294967295
  %49 = mul nuw i64 %46, %48
  %50 = add i64 %14, %7
  %51 = add i64 %50, %49
  ret i64 %51
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
