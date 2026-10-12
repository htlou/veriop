; ModuleID = 'history-eq/c/fast_float/53b065f3/wrap.cpp'
source_filename = "history-eq/c/fast_float/53b065f3/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char16_success(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %4 = insertelement <2 x i64> poison, i64 %0, i64 0
  %5 = insertelement <2 x i64> %4, i64 %1, i64 1
  %6 = bitcast <2 x i64> %5 to <8 x i16>
  %7 = add <8 x i16> %6, splat (i16 -80)
  %8 = icmp sgt <8 x i16> %7, splat (i16 -119)
  %9 = sext <8 x i1> %8 to <8 x i16>
  %10 = bitcast <8 x i16> %9 to <16 x i8>
  %11 = icmp slt <16 x i8> %10, zeroinitializer
  %12 = bitcast <16 x i1> %11 to i16
  %13 = icmp eq i16 %12, 0
  ret i1 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_char16_value(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %4 = insertelement <2 x i64> poison, i64 %0, i64 0
  %5 = insertelement <2 x i64> %4, i64 %1, i64 1
  %6 = bitcast <2 x i64> %5 to <8 x i16>
  %7 = add <8 x i16> %6, splat (i16 -80)
  %8 = icmp sgt <8 x i16> %7, splat (i16 -119)
  %9 = sext <8 x i1> %8 to <8 x i16>
  %10 = bitcast <8 x i16> %9 to <16 x i8>
  %11 = icmp slt <16 x i8> %10, zeroinitializer
  %12 = bitcast <16 x i1> %11 to i16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = insertelement <2 x i64> poison, i64 %1, i64 0
  %16 = bitcast <2 x i64> %4 to <8 x i16>
  %17 = and <8 x i16> %16, <i16 255, i16 255, i16 255, i16 255, i16 poison, i16 poison, i16 poison, i16 poison>
  %18 = bitcast <2 x i64> %15 to <8 x i16>
  %19 = and <8 x i16> %18, <i16 255, i16 255, i16 255, i16 255, i16 poison, i16 poison, i16 poison, i16 poison>
  %20 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %17, <8 x i16> %19)
  %21 = bitcast <16 x i8> %20 to <4 x i32>
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %23 = bitcast <4 x i32> %22 to <2 x i64>
  %24 = extractelement <2 x i64> %23, i64 0
  %25 = mul i64 %2, 100000000
  %26 = add i64 %24, -3472328296227680304
  %27 = mul i64 %26, 10
  %28 = lshr i64 %26, 8
  %29 = add i64 %27, %28
  %30 = and i64 %29, 1095216660735
  %31 = mul i64 %30, 4294967296000100
  %32 = lshr i64 %29, 16
  %33 = and i64 %32, 1095216660735
  %34 = mul i64 %33, 42949672960001
  %35 = add i64 %34, %31
  %36 = lshr i64 %35, 32
  %37 = add i64 %36, %25
  br label %38

38:                                               ; preds = %3, %14
  %39 = phi i64 [ %37, %14 ], [ %2, %3 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_char16_packed(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  ret i64 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @target_char_success(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %3 = add i64 %0, 5063812098665367110
  %4 = add i64 %0, -3472328296227680304
  %5 = or i64 %3, %4
  %6 = and i64 %5, -9187201950435737472
  %7 = icmp eq i64 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_char_value(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
