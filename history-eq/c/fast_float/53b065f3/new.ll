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
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = and <8 x i16> %6, splat (i16 255)
  %16 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %15, <8 x i16> poison)
  %17 = bitcast <16 x i8> %16 to <2 x i64>
  %18 = extractelement <2 x i64> %17, i64 0
  %19 = mul i64 %2, 100000000
  %20 = add i64 %18, -3472328296227680304
  %21 = mul i64 %20, 10
  %22 = lshr i64 %20, 8
  %23 = add i64 %21, %22
  %24 = and i64 %23, 1095216660735
  %25 = mul i64 %24, 4294967296000100
  %26 = lshr i64 %23, 16
  %27 = and i64 %26, 1095216660735
  %28 = mul i64 %27, 42949672960001
  %29 = add i64 %28, %25
  %30 = lshr i64 %29, 32
  %31 = add i64 %30, %19
  br label %32

32:                                               ; preds = %3, %14
  %33 = phi i64 [ %31, %14 ], [ %2, %3 ]
  ret i64 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_char16_packed(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = insertelement <2 x i64> poison, i64 %0, i64 0
  %4 = insertelement <2 x i64> %3, i64 %1, i64 1
  %5 = bitcast <2 x i64> %4 to <8 x i16>
  %6 = and <8 x i16> %5, splat (i16 255)
  %7 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %6, <8 x i16> poison)
  %8 = bitcast <16 x i8> %7 to <2 x i64>
  %9 = extractelement <2 x i64> %8, i64 0
  ret i64 %9
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
