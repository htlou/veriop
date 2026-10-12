; ModuleID = 'history-eq/c/fast_float/7e45de0c/wrap.cpp'
source_filename = "history-eq/c/fast_float/7e45de0c/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 223
  %7 = icmp eq i32 %6, 78
  %8 = and i32 %1, 223
  %9 = icmp eq i32 %8, 65
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !5

11:                                               ; preds = %5
  %12 = and i32 %2, 223
  %13 = icmp eq i32 %12, 78
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 223
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, 223
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !5

11:                                               ; preds = %5
  %12 = and i32 %2, 223
  %13 = icmp eq i32 %12, 70
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 223
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, 223
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  %11 = and i32 %2, 223
  %12 = icmp eq i32 %11, 73
  %13 = and i1 %10, %12
  %14 = and i32 %3, 223
  %15 = icmp eq i32 %14, 84
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %20, !llvm.loop !5

17:                                               ; preds = %5
  %18 = and i32 %4, 223
  %19 = icmp eq i32 %18, 89
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  ret i1 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char8_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 223
  %7 = icmp eq i32 %6, 78
  %8 = and i32 %1, 223
  %9 = icmp eq i32 %8, 65
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !7

11:                                               ; preds = %5
  %12 = and i32 %2, 223
  %13 = icmp eq i32 %12, 78
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char8_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 223
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, 223
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !7

11:                                               ; preds = %5
  %12 = and i32 %2, 223
  %13 = icmp eq i32 %12, 70
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char8_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 223
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, 223
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  %11 = and i32 %2, 223
  %12 = icmp eq i32 %11, 73
  %13 = and i1 %10, %12
  %14 = and i32 %3, 223
  %15 = icmp eq i32 %14, 84
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %20, !llvm.loop !7

17:                                               ; preds = %5
  %18 = and i32 %4, 223
  %19 = icmp eq i32 %18, 89
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  ret i1 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char16_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 65503
  %7 = icmp eq i32 %6, 78
  %8 = and i32 %1, 65503
  %9 = icmp eq i32 %8, 65
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !8

11:                                               ; preds = %5
  %12 = and i32 %2, 65503
  %13 = icmp eq i32 %12, 78
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char16_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 65503
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, 65503
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !8

11:                                               ; preds = %5
  %12 = and i32 %2, 65503
  %13 = icmp eq i32 %12, 70
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char16_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 65503
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, 65503
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  %11 = and i32 %2, 65503
  %12 = icmp eq i32 %11, 73
  %13 = and i1 %10, %12
  %14 = and i32 %3, 65503
  %15 = icmp eq i32 %14, 84
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %20, !llvm.loop !8

17:                                               ; preds = %5
  %18 = and i32 %4, 65503
  %19 = icmp eq i32 %18, 89
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  ret i1 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char32_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, -33
  %7 = icmp eq i32 %6, 78
  %8 = and i32 %1, -33
  %9 = icmp eq i32 %8, 65
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !9

11:                                               ; preds = %5
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 78
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char32_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, -33
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, -33
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !9

11:                                               ; preds = %5
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 70
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_char32_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, -33
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, -33
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  %11 = and i32 %2, -33
  %12 = icmp eq i32 %11, 73
  %13 = and i1 %10, %12
  %14 = and i32 %3, -33
  %15 = icmp eq i32 %14, 84
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %20, !llvm.loop !9

17:                                               ; preds = %5
  %18 = and i32 %4, -33
  %19 = icmp eq i32 %18, 89
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  ret i1 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_wchar_nan(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, -33
  %7 = icmp eq i32 %6, 78
  %8 = and i32 %1, -33
  %9 = icmp eq i32 %8, 65
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !10

11:                                               ; preds = %5
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 78
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_wchar_inf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, -33
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, -33
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %14, !llvm.loop !10

11:                                               ; preds = %5
  %12 = and i32 %2, -33
  %13 = icmp eq i32 %12, 70
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_wchar_inity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, -33
  %7 = icmp eq i32 %6, 73
  %8 = and i32 %1, -33
  %9 = icmp eq i32 %8, 78
  %10 = and i1 %7, %9
  %11 = and i32 %2, -33
  %12 = icmp eq i32 %11, 73
  %13 = and i1 %10, %12
  %14 = and i32 %3, -33
  %15 = icmp eq i32 %14, 84
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %20, !llvm.loop !10

17:                                               ; preds = %5
  %18 = and i32 %4, -33
  %19 = icmp eq i32 %18, 89
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  ret i1 %21
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
