; ModuleID = 'history-eq/c/fast_float/7e45de0c/wrap.cpp'
source_filename = "history-eq/c/fast_float/7e45de0c/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = trunc i32 %0 to i24
  %7 = and i24 %6, 223
  %8 = trunc i32 %1 to i24
  %9 = shl i24 %8, 8
  %10 = and i24 %9, 57088
  %11 = or disjoint i24 %10, %7
  %12 = trunc i32 %2 to i24
  %13 = shl i24 %12, 16
  %14 = and i24 %13, -2162688
  %15 = or disjoint i24 %11, %14
  %16 = icmp eq i24 %15, 5128526
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = trunc i32 %0 to i24
  %7 = and i24 %6, 223
  %8 = trunc i32 %1 to i24
  %9 = shl i24 %8, 8
  %10 = and i24 %9, 57088
  %11 = or disjoint i24 %10, %7
  %12 = trunc i32 %2 to i24
  %13 = shl i24 %12, 16
  %14 = and i24 %13, -2162688
  %15 = or disjoint i24 %11, %14
  %16 = icmp eq i24 %15, 4607561
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %4, 223
  %7 = zext nneg i32 %6 to i40
  %8 = shl nuw i40 %7, 32
  %9 = shl i32 %3, 24
  %10 = shl i32 %2, 16
  %11 = and i32 %10, 14614528
  %12 = zext nneg i32 %11 to i40
  %13 = shl i32 %1, 8
  %14 = and i32 %13, 57088
  %15 = zext nneg i32 %14 to i40
  %16 = and i32 %0, 223
  %17 = zext nneg i32 %16 to i40
  %18 = and i32 %9, -553648128
  %19 = zext i32 %18 to i40
  %20 = or disjoint i40 %8, %19
  %21 = or disjoint i40 %20, %12
  %22 = or disjoint i40 %21, %15
  %23 = or disjoint i40 %22, %17
  %24 = icmp eq i40 %23, 383666179657
  ret i1 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char8_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = trunc i32 %0 to i24
  %7 = and i24 %6, 223
  %8 = trunc i32 %1 to i24
  %9 = shl i24 %8, 8
  %10 = and i24 %9, 57088
  %11 = or disjoint i24 %10, %7
  %12 = trunc i32 %2 to i24
  %13 = shl i24 %12, 16
  %14 = and i24 %13, -2162688
  %15 = or disjoint i24 %11, %14
  %16 = icmp eq i24 %15, 5128526
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char8_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = trunc i32 %0 to i24
  %7 = and i24 %6, 223
  %8 = trunc i32 %1 to i24
  %9 = shl i24 %8, 8
  %10 = and i24 %9, 57088
  %11 = or disjoint i24 %10, %7
  %12 = trunc i32 %2 to i24
  %13 = shl i24 %12, 16
  %14 = and i24 %13, -2162688
  %15 = or disjoint i24 %11, %14
  %16 = icmp eq i24 %15, 4607561
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char8_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %4, 223
  %7 = zext nneg i32 %6 to i40
  %8 = shl nuw i40 %7, 32
  %9 = shl i32 %3, 24
  %10 = shl i32 %2, 16
  %11 = and i32 %10, 14614528
  %12 = zext nneg i32 %11 to i40
  %13 = shl i32 %1, 8
  %14 = and i32 %13, 57088
  %15 = zext nneg i32 %14 to i40
  %16 = and i32 %0, 223
  %17 = zext nneg i32 %16 to i40
  %18 = and i32 %9, -553648128
  %19 = zext i32 %18 to i40
  %20 = or disjoint i40 %8, %19
  %21 = or disjoint i40 %20, %12
  %22 = or disjoint i40 %21, %15
  %23 = or disjoint i40 %22, %17
  %24 = icmp eq i40 %23, 383666179657
  ret i1 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char16_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl i32 %1, 16
  %7 = and i32 %0, 65503
  %8 = and i32 %2, 65503
  %9 = zext nneg i32 %8 to i48
  %10 = shl nuw i48 %9, 32
  %11 = and i32 %6, -2162688
  %12 = or disjoint i32 %11, %7
  %13 = zext i32 %12 to i48
  %14 = or disjoint i48 %10, %13
  %15 = icmp eq i48 %14, 335011709006
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char16_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl i32 %1, 16
  %7 = and i32 %0, 65503
  %8 = and i32 %2, 65503
  %9 = zext nneg i32 %8 to i48
  %10 = shl nuw i48 %9, 32
  %11 = and i32 %6, -2162688
  %12 = or disjoint i32 %11, %7
  %13 = zext i32 %12 to i48
  %14 = or disjoint i48 %10, %13
  %15 = icmp eq i48 %14, 300652822601
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char16_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl i32 %1, 16
  %7 = and i32 %0, 65503
  %8 = and i32 %2, 65503
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = and i32 %3, 65503
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw i64 %12, 48
  %14 = and i32 %6, -2162688
  %15 = or disjoint i32 %14, %7
  %16 = zext i32 %15 to i64
  %17 = or disjoint i64 %10, %16
  %18 = or disjoint i64 %17, %13
  %19 = icmp eq i64 %18, 23644211581419593
  %20 = and i32 %4, 65503
  %21 = icmp eq i32 %20, 89
  %22 = and i1 %21, %19
  ret i1 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char32_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  %10 = and i64 %9, -137438953505
  %11 = icmp eq i64 %10, 279172874318
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 78
  %14 = and i1 %13, %11
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char32_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  %10 = and i64 %9, -137438953505
  %11 = icmp eq i64 %10, 335007449161
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 70
  %14 = and i1 %13, %11
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @target_char32_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  %10 = zext i32 %2 to i64
  %11 = zext i32 %3 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  %14 = and i64 %9, -137438953505
  %15 = icmp eq i64 %14, 335007449161
  %16 = and i64 %13, -137438953505
  %17 = icmp eq i64 %16, 360777252937
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = and i32 %4, -33
  %21 = icmp eq i32 %20, 89
  br label %22

22:                                               ; preds = %5, %19
  %23 = phi i1 [ %21, %19 ], [ false, %5 ]
  ret i1 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_wchar_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  %10 = and i64 %9, -137438953505
  %11 = icmp eq i64 %10, 279172874318
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 78
  %14 = and i1 %13, %11
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_wchar_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  %10 = and i64 %9, -137438953505
  %11 = icmp eq i64 %10, 335007449161
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 70
  %14 = and i1 %13, %11
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @target_wchar_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  %10 = zext i32 %2 to i64
  %11 = zext i32 %3 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  %14 = and i64 %9, -137438953505
  %15 = icmp eq i64 %14, 335007449161
  %16 = and i64 %13, -137438953505
  %17 = icmp eq i64 %16, 360777252937
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = and i32 %4, -33
  %21 = icmp eq i32 %20, 89
  br label %22

22:                                               ; preds = %5, %19
  %23 = phi i1 [ %21, %19 ], [ false, %5 ]
  ret i1 %23
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
