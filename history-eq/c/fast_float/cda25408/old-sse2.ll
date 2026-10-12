; ModuleID = 'history-eq/c/fast_float/cda25408/checker_wrap.cpp'
source_filename = "history-eq/c/fast_float/cda25408/checker_wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_raw(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = insertelement <2 x i64> poison, i64 %0, i64 0
  %4 = insertelement <2 x i64> poison, i64 %1, i64 0
  %5 = bitcast <2 x i64> %3 to <8 x i16>
  %6 = and <8 x i16> %5, <i16 255, i16 255, i16 255, i16 255, i16 poison, i16 poison, i16 poison, i16 poison>
  %7 = bitcast <2 x i64> %4 to <8 x i16>
  %8 = and <8 x i16> %7, <i16 255, i16 255, i16 255, i16 255, i16 poison, i16 poison, i16 poison, i16 poison>
  %9 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %6, <8 x i16> %8)
  %10 = bitcast <16 x i8> %9 to <4 x i32>
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %12 = bitcast <4 x i32> %11 to <2 x i64>
  %13 = extractelement <2 x i64> %12, i64 0
  %14 = add i64 %13, -3472328296227680304
  %15 = mul i64 %14, 10
  %16 = lshr i64 %14, 8
  %17 = add i64 %15, %16
  %18 = and i64 %17, 1095216660735
  %19 = mul i64 %18, 4294967296000100
  %20 = lshr i64 %17, 16
  %21 = and i64 %20, 1095216660735
  %22 = mul i64 %21, 42949672960001
  %23 = add i64 %22, %19
  %24 = lshr i64 %23, 32
  ret i64 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -1, 4294967296) i64 @target_raw_valid(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = trunc i64 %0 to i16
  %4 = add i16 %3, -48
  %5 = icmp ult i16 %4, 10
  br i1 %5, label %6, label %63

6:                                                ; preds = %2
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i16
  %9 = add i16 %8, -48
  %10 = icmp ult i16 %9, 10
  br i1 %10, label %11, label %63

11:                                               ; preds = %6
  %12 = lshr i64 %0, 32
  %13 = trunc i64 %12 to i16
  %14 = add i16 %13, -48
  %15 = icmp ult i16 %14, 10
  br i1 %15, label %16, label %63

16:                                               ; preds = %11
  %17 = lshr i64 %0, 48
  %18 = trunc nuw i64 %17 to i16
  %19 = add i16 %18, -48
  %20 = icmp ult i16 %19, 10
  %21 = trunc i64 %1 to i16
  %22 = add i16 %21, -48
  %23 = icmp ult i16 %22, 10
  %24 = and i1 %20, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %16
  %26 = lshr i64 %1, 16
  %27 = trunc i64 %26 to i16
  %28 = add i16 %27, -48
  %29 = icmp ult i16 %28, 10
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = lshr i64 %1, 32
  %32 = trunc i64 %31 to i16
  %33 = add i16 %32, -48
  %34 = icmp ult i16 %33, 10
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = lshr i64 %1, 48
  %37 = trunc nuw i64 %36 to i16
  %38 = add i16 %37, -48
  %39 = icmp ult i16 %38, 10
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = insertelement <2 x i64> poison, i64 %0, i64 0
  %42 = insertelement <2 x i64> poison, i64 %1, i64 0
  %43 = bitcast <2 x i64> %41 to <8 x i16>
  %44 = and <8 x i16> %43, <i16 255, i16 255, i16 255, i16 255, i16 poison, i16 poison, i16 poison, i16 poison>
  %45 = bitcast <2 x i64> %42 to <8 x i16>
  %46 = and <8 x i16> %45, <i16 255, i16 255, i16 255, i16 255, i16 poison, i16 poison, i16 poison, i16 poison>
  %47 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %44, <8 x i16> %46)
  %48 = bitcast <16 x i8> %47 to <4 x i32>
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %50 = bitcast <4 x i32> %49 to <2 x i64>
  %51 = extractelement <2 x i64> %50, i64 0
  %52 = add i64 %51, -3472328296227680304
  %53 = mul i64 %52, 10
  %54 = lshr i64 %52, 8
  %55 = add i64 %53, %54
  %56 = and i64 %55, 1095216660735
  %57 = mul i64 %56, 4294967296000100
  %58 = lshr i64 %55, 16
  %59 = and i64 %58, 1095216660735
  %60 = mul i64 %59, 42949672960001
  %61 = add i64 %60, %57
  %62 = lshr i64 %61, 32
  br label %63

63:                                               ; preds = %2, %6, %11, %16, %25, %30, %35, %40
  %64 = phi i64 [ %62, %40 ], [ -1, %35 ], [ -1, %30 ], [ -1, %25 ], [ -1, %16 ], [ -1, %11 ], [ -1, %6 ], [ -1, %2 ]
  ret i64 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_guarded_valid(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %4 = trunc i64 %0 to i16
  %5 = insertelement <8 x i16> poison, i16 %4, i64 0
  %6 = trunc i64 %1 to i16
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i16
  %9 = insertelement <8 x i16> %5, i16 %8, i64 1
  %10 = lshr i64 %1, 16
  %11 = trunc i64 %10 to i16
  %12 = lshr i64 %0, 32
  %13 = trunc i64 %12 to i16
  %14 = insertelement <8 x i16> %9, i16 %13, i64 2
  %15 = lshr i64 %1, 32
  %16 = trunc i64 %15 to i16
  %17 = lshr i64 %0, 48
  %18 = trunc nuw i64 %17 to i16
  %19 = insertelement <8 x i16> %14, i16 %18, i64 3
  %20 = insertelement <8 x i16> %19, i16 %6, i64 4
  %21 = insertelement <8 x i16> %20, i16 %11, i64 5
  %22 = insertelement <8 x i16> %21, i16 %16, i64 6
  %23 = lshr i64 %1, 48
  %24 = trunc nuw i64 %23 to i16
  %25 = insertelement <8 x i16> %22, i16 %24, i64 7
  %26 = add <8 x i16> %25, splat (i16 -80)
  %27 = icmp sgt <8 x i16> %26, splat (i16 -119)
  %28 = sext <8 x i1> %27 to <8 x i16>
  %29 = bitcast <8 x i16> %28 to <16 x i8>
  %30 = icmp slt <16 x i8> %29, zeroinitializer
  %31 = bitcast <16 x i1> %30 to i16
  %32 = icmp eq i16 %31, 0
  %33 = zext i1 %32 to i64
  ret i64 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_guarded_value(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %4 = trunc i64 %0 to i16
  %5 = insertelement <8 x i16> poison, i16 %4, i64 0
  %6 = trunc i64 %1 to i16
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i16
  %9 = insertelement <8 x i16> %5, i16 %8, i64 1
  %10 = lshr i64 %1, 16
  %11 = trunc i64 %10 to i16
  %12 = lshr i64 %0, 32
  %13 = trunc i64 %12 to i16
  %14 = insertelement <8 x i16> %9, i16 %13, i64 2
  %15 = lshr i64 %1, 32
  %16 = trunc i64 %15 to i16
  %17 = lshr i64 %0, 48
  %18 = trunc nuw i64 %17 to i16
  %19 = insertelement <8 x i16> %14, i16 %18, i64 3
  %20 = insertelement <8 x i16> %19, i16 %6, i64 4
  %21 = insertelement <8 x i16> %20, i16 %11, i64 5
  %22 = insertelement <8 x i16> %21, i16 %16, i64 6
  %23 = lshr i64 %1, 48
  %24 = trunc nuw i64 %23 to i16
  %25 = insertelement <8 x i16> %22, i16 %24, i64 7
  %26 = add <8 x i16> %25, splat (i16 -80)
  %27 = icmp sgt <8 x i16> %26, splat (i16 -119)
  %28 = sext <8 x i1> %27 to <8 x i16>
  %29 = bitcast <8 x i16> %28 to <16 x i8>
  %30 = icmp slt <16 x i8> %29, zeroinitializer
  %31 = bitcast <16 x i1> %30 to i16
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %3
  %34 = add <8 x i16> %25, splat (i16 -48)
  %35 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %34, <8 x i16> <i16 10, i16 1, i16 10, i16 1, i16 10, i16 1, i16 10, i16 1>)
  %36 = bitcast <4 x i32> %35 to <8 x i16>
  %37 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %36, <8 x i16> poison)
  %38 = bitcast <16 x i8> %37 to <8 x i16>
  %39 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %38, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %40 = bitcast <4 x i32> %39 to <8 x i16>
  %41 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %40, <8 x i16> poison)
  %42 = bitcast <16 x i8> %41 to <8 x i16>
  %43 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %42, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %44 = extractelement <4 x i32> %43, i64 0
  %45 = mul i64 %2, 100000000
  %46 = zext i32 %44 to i64
  %47 = add i64 %45, %46
  br label %48

48:                                               ; preds = %3, %33
  %49 = phi i64 [ %47, %33 ], [ %2, %3 ]
  ret i64 %49
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
