; ModuleID = 'history-eq/c/fast_float/38613a39/wrap.cpp'
source_filename = "history-eq/c/fast_float/38613a39/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 0, 9) i64 @target_char_offset(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, 5063812098665367110
  %4 = add i64 %0, -3472328296227680304
  %5 = or i64 %3, %4
  %6 = and i64 %5, -9187201950435737472
  %7 = icmp eq i64 %6, 0
  %8 = select i1 %7, i64 8, i64 0
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_char_value(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, 5063812098665367110
  %4 = add i64 %0, -3472328296227680304
  %5 = or i64 %3, %4
  %6 = and i64 %5, -9187201950435737472
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = mul i64 %1, 100000000
  %10 = mul i64 %4, 10
  %11 = lshr i64 %4, 8
  %12 = add i64 %10, %11
  %13 = and i64 %12, 1095216660735
  %14 = mul i64 %13, 4294967296000100
  %15 = lshr i64 %12, 16
  %16 = and i64 %15, 1095216660735
  %17 = mul i64 %16, 42949672960001
  %18 = add i64 %17, %14
  %19 = lshr i64 %18, 32
  %20 = add i64 %19, %9
  br label %21

21:                                               ; preds = %2, %8
  %22 = phi i64 [ %20, %8 ], [ %1, %2 ]
  ret i64 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 9) i64 @target_char16_offset(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
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
  %33 = select i1 %32, i64 8, i64 0
  ret i64 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_char16_value(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
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
  br i1 %32, label %33, label %50

33:                                               ; preds = %3
  %34 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %25, <8 x i16> poison)
  %35 = bitcast <16 x i8> %34 to <2 x i64>
  %36 = extractelement <2 x i64> %35, i64 0
  %37 = mul i64 %2, 100000000
  %38 = add i64 %36, -3472328296227680304
  %39 = mul i64 %38, 10
  %40 = lshr i64 %38, 8
  %41 = add i64 %39, %40
  %42 = and i64 %41, 1095216660735
  %43 = mul i64 %42, 4294967296000100
  %44 = lshr i64 %41, 16
  %45 = and i64 %44, 1095216660735
  %46 = mul i64 %45, 42949672960001
  %47 = add i64 %46, %43
  %48 = lshr i64 %47, 32
  %49 = add i64 %48, %37
  br label %50

50:                                               ; preds = %3, %33
  %51 = phi i64 [ %2, %3 ], [ %49, %33 ]
  ret i64 %51
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
