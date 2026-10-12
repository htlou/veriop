; ModuleID = 'history-eq/c/fast_float/cda25408/checker_wrap.cpp'
source_filename = "history-eq/c/fast_float/cda25408/checker_wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_raw(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = trunc i64 %0 to i16
  %4 = insertelement <8 x i16> poison, i16 %3, i64 0
  %5 = trunc i64 %1 to i16
  %6 = lshr i64 %0, 16
  %7 = trunc i64 %6 to i16
  %8 = insertelement <8 x i16> %4, i16 %7, i64 1
  %9 = lshr i64 %1, 16
  %10 = trunc i64 %9 to i16
  %11 = lshr i64 %0, 32
  %12 = trunc i64 %11 to i16
  %13 = insertelement <8 x i16> %8, i16 %12, i64 2
  %14 = lshr i64 %1, 32
  %15 = trunc i64 %14 to i16
  %16 = lshr i64 %0, 48
  %17 = trunc nuw i64 %16 to i16
  %18 = insertelement <8 x i16> %13, i16 %17, i64 3
  %19 = insertelement <8 x i16> %18, i16 %5, i64 4
  %20 = insertelement <8 x i16> %19, i16 %10, i64 5
  %21 = insertelement <8 x i16> %20, i16 %15, i64 6
  %22 = lshr i64 %1, 48
  %23 = trunc nuw i64 %22 to i16
  %24 = insertelement <8 x i16> %21, i16 %23, i64 7
  %25 = add <8 x i16> %24, splat (i16 -48)
  %26 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %25, <8 x i16> <i16 10, i16 1, i16 10, i16 1, i16 10, i16 1, i16 10, i16 1>)
  %27 = bitcast <4 x i32> %26 to <8 x i16>
  %28 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %27, <8 x i16> poison)
  %29 = bitcast <16 x i8> %28 to <8 x i16>
  %30 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %29, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %31 = bitcast <4 x i32> %30 to <8 x i16>
  %32 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %31, <8 x i16> poison)
  %33 = bitcast <16 x i8> %32 to <8 x i16>
  %34 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %33, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %35 = extractelement <4 x i32> %34, i64 0
  %36 = zext i32 %35 to i64
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -1, 4294967296) i64 @target_raw_valid(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = trunc i64 %0 to i16
  %4 = trunc i64 %1 to i16
  %5 = lshr i64 %0, 16
  %6 = trunc i64 %5 to i16
  %7 = lshr i64 %1, 16
  %8 = trunc i64 %7 to i16
  %9 = lshr i64 %0, 32
  %10 = trunc i64 %9 to i16
  %11 = lshr i64 %1, 32
  %12 = trunc i64 %11 to i16
  %13 = lshr i64 %0, 48
  %14 = trunc nuw i64 %13 to i16
  %15 = lshr i64 %1, 48
  %16 = trunc nuw i64 %15 to i16
  %17 = add i16 %3, -48
  %18 = icmp ult i16 %17, 10
  %19 = add i16 %6, -48
  %20 = icmp ult i16 %19, 10
  %21 = and i1 %18, %20
  %22 = add i16 %10, -48
  %23 = icmp ult i16 %22, 10
  %24 = and i1 %21, %23
  %25 = add i16 %14, -48
  %26 = icmp ult i16 %25, 10
  %27 = select i1 %24, i1 %26, i1 false
  %28 = add i16 %4, -48
  %29 = icmp ult i16 %28, 10
  %30 = and i1 %27, %29
  %31 = add i16 %8, -48
  %32 = icmp ult i16 %31, 10
  %33 = and i1 %30, %32
  %34 = add i16 %12, -48
  %35 = icmp ult i16 %34, 10
  %36 = and i1 %33, %35
  %37 = add i16 %16, -48
  %38 = icmp ult i16 %37, 10
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %61

40:                                               ; preds = %2
  %41 = insertelement <8 x i16> poison, i16 %3, i64 0
  %42 = insertelement <8 x i16> %41, i16 %6, i64 1
  %43 = insertelement <8 x i16> %42, i16 %10, i64 2
  %44 = insertelement <8 x i16> %43, i16 %14, i64 3
  %45 = insertelement <8 x i16> %44, i16 %4, i64 4
  %46 = insertelement <8 x i16> %45, i16 %8, i64 5
  %47 = insertelement <8 x i16> %46, i16 %12, i64 6
  %48 = insertelement <8 x i16> %47, i16 %16, i64 7
  %49 = add <8 x i16> %48, splat (i16 -48)
  %50 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %49, <8 x i16> <i16 10, i16 1, i16 10, i16 1, i16 10, i16 1, i16 10, i16 1>)
  %51 = bitcast <4 x i32> %50 to <8 x i16>
  %52 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %51, <8 x i16> poison)
  %53 = bitcast <16 x i8> %52 to <8 x i16>
  %54 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %53, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %55 = bitcast <4 x i32> %54 to <8 x i16>
  %56 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %55, <8 x i16> poison)
  %57 = bitcast <16 x i8> %56 to <8 x i16>
  %58 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %57, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %59 = extractelement <4 x i32> %58, i64 0
  %60 = zext i32 %59 to i64
  br label %61

61:                                               ; preds = %2, %40
  %62 = phi i64 [ %60, %40 ], [ -1, %2 ]
  ret i64 %62
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
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #1

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
