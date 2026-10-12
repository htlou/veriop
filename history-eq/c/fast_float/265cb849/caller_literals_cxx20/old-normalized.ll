; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/caller_literals.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/caller_literals.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_char(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 223
  %5 = icmp eq i32 %4, 78
  %6 = and i32 %1, 223
  %7 = icmp eq i32 %6, 65
  %8 = and i1 %5, %7
  %9 = and i32 %2, 223
  %10 = icmp eq i32 %9, 78
  %11 = and i1 %8, %10
  ret i1 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_char(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 223
  %5 = icmp eq i32 %4, 73
  %6 = and i32 %1, 223
  %7 = icmp eq i32 %6, 78
  %8 = and i1 %5, %7
  %9 = and i32 %2, 223
  %10 = icmp eq i32 %9, 70
  %11 = and i1 %8, %10
  ret i1 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_char(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
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
  %17 = and i32 %4, 223
  %18 = icmp eq i32 %17, 89
  %19 = and i1 %16, %18
  ret i1 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_u16(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 65535
  %5 = and i32 %0, 65280
  %6 = icmp eq i32 %5, 0
  %7 = or i32 %4, 32
  %8 = select i1 %6, i32 %7, i32 %4
  %9 = icmp eq i32 %8, 110
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = and i32 %1, 65535
  %12 = and i32 %1, 65280
  %13 = icmp eq i32 %12, 0
  %14 = or i32 %11, 32
  %15 = select i1 %13, i32 %14, i32 %11
  %16 = icmp eq i32 %15, 97
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = and i32 %2, 65535
  %19 = and i32 %2, 65280
  %20 = icmp eq i32 %19, 0
  %21 = or i32 %18, 32
  %22 = select i1 %20, i32 %21, i32 %18
  %23 = icmp eq i32 %22, 110
  br label %24

24:                                               ; preds = %3, %10, %17
  %25 = phi i1 [ false, %3 ], [ false, %10 ], [ %23, %17 ]
  ret i1 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_u16(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 65535
  %5 = and i32 %0, 65280
  %6 = icmp eq i32 %5, 0
  %7 = or i32 %4, 32
  %8 = select i1 %6, i32 %7, i32 %4
  %9 = icmp eq i32 %8, 105
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = and i32 %1, 65535
  %12 = and i32 %1, 65280
  %13 = icmp eq i32 %12, 0
  %14 = or i32 %11, 32
  %15 = select i1 %13, i32 %14, i32 %11
  %16 = icmp eq i32 %15, 110
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = and i32 %2, 65535
  %19 = and i32 %2, 65280
  %20 = icmp eq i32 %19, 0
  %21 = or i32 %18, 32
  %22 = select i1 %20, i32 %21, i32 %18
  %23 = icmp eq i32 %22, 102
  br label %24

24:                                               ; preds = %3, %10, %17
  %25 = phi i1 [ false, %3 ], [ false, %10 ], [ %23, %17 ]
  ret i1 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_u16(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %0, 65535
  %7 = and i32 %0, 65280
  %8 = icmp eq i32 %7, 0
  %9 = or i32 %6, 32
  %10 = select i1 %8, i32 %9, i32 %6
  %11 = icmp eq i32 %10, 105
  br i1 %11, label %12, label %40

12:                                               ; preds = %5
  %13 = and i32 %1, 65535
  %14 = and i32 %1, 65280
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %13, 32
  %17 = select i1 %15, i32 %16, i32 %13
  %18 = icmp eq i32 %17, 110
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = and i32 %2, 65535
  %21 = and i32 %2, 65280
  %22 = icmp eq i32 %21, 0
  %23 = or i32 %20, 32
  %24 = select i1 %22, i32 %23, i32 %20
  %25 = icmp eq i32 %24, 105
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = and i32 %3, 65535
  %28 = and i32 %3, 65280
  %29 = icmp eq i32 %28, 0
  %30 = or i32 %27, 32
  %31 = select i1 %29, i32 %30, i32 %27
  %32 = icmp eq i32 %31, 116
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = and i32 %4, 65535
  %35 = and i32 %4, 65280
  %36 = icmp eq i32 %35, 0
  %37 = or i32 %34, 32
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = icmp eq i32 %38, 121
  br label %40

40:                                               ; preds = %5, %12, %19, %26, %33
  %41 = phi i1 [ false, %5 ], [ false, %12 ], [ false, %19 ], [ false, %26 ], [ %39, %33 ]
  ret i1 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_u32(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %0, 256
  %5 = or i32 %0, 32
  %6 = select i1 %4, i32 %5, i32 %0
  %7 = icmp eq i32 %6, 110
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = icmp ult i32 %1, 256
  %10 = or i32 %1, 32
  %11 = select i1 %9, i32 %10, i32 %1
  %12 = icmp eq i32 %11, 97
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = icmp ult i32 %2, 256
  %15 = or i32 %2, 32
  %16 = select i1 %14, i32 %15, i32 %2
  %17 = icmp eq i32 %16, 110
  br label %18

18:                                               ; preds = %3, %8, %13
  %19 = phi i1 [ false, %3 ], [ false, %8 ], [ %17, %13 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_u32(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %0, 256
  %5 = or i32 %0, 32
  %6 = select i1 %4, i32 %5, i32 %0
  %7 = icmp eq i32 %6, 105
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = icmp ult i32 %1, 256
  %10 = or i32 %1, 32
  %11 = select i1 %9, i32 %10, i32 %1
  %12 = icmp eq i32 %11, 110
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = icmp ult i32 %2, 256
  %15 = or i32 %2, 32
  %16 = select i1 %14, i32 %15, i32 %2
  %17 = icmp eq i32 %16, 102
  br label %18

18:                                               ; preds = %3, %8, %13
  %19 = phi i1 [ false, %3 ], [ false, %8 ], [ %17, %13 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_u32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i32 %0, 256
  %7 = or i32 %0, 32
  %8 = select i1 %6, i32 %7, i32 %0
  %9 = icmp eq i32 %8, 105
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = icmp ult i32 %1, 256
  %12 = or i32 %1, 32
  %13 = select i1 %11, i32 %12, i32 %1
  %14 = icmp eq i32 %13, 110
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = icmp ult i32 %2, 256
  %17 = or i32 %2, 32
  %18 = select i1 %16, i32 %17, i32 %2
  %19 = icmp eq i32 %18, 105
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = icmp ult i32 %3, 256
  %22 = or i32 %3, 32
  %23 = select i1 %21, i32 %22, i32 %3
  %24 = icmp eq i32 %23, 116
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = icmp ult i32 %4, 256
  %27 = or i32 %4, 32
  %28 = select i1 %26, i32 %27, i32 %4
  %29 = icmp eq i32 %28, 121
  br label %30

30:                                               ; preds = %5, %10, %15, %20, %25
  %31 = phi i1 [ false, %5 ], [ false, %10 ], [ false, %15 ], [ false, %20 ], [ %29, %25 ]
  ret i1 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_wchar(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %0, 256
  %5 = or i32 %0, 32
  %6 = select i1 %4, i32 %5, i32 %0
  %7 = icmp eq i32 %6, 110
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = icmp slt i32 %1, 256
  %10 = or i32 %1, 32
  %11 = select i1 %9, i32 %10, i32 %1
  %12 = icmp eq i32 %11, 97
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = icmp slt i32 %2, 256
  %15 = or i32 %2, 32
  %16 = select i1 %14, i32 %15, i32 %2
  %17 = icmp eq i32 %16, 110
  br label %18

18:                                               ; preds = %3, %8, %13
  %19 = phi i1 [ false, %3 ], [ false, %8 ], [ %17, %13 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_wchar(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %0, 256
  %5 = or i32 %0, 32
  %6 = select i1 %4, i32 %5, i32 %0
  %7 = icmp eq i32 %6, 105
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = icmp slt i32 %1, 256
  %10 = or i32 %1, 32
  %11 = select i1 %9, i32 %10, i32 %1
  %12 = icmp eq i32 %11, 110
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = icmp slt i32 %2, 256
  %15 = or i32 %2, 32
  %16 = select i1 %14, i32 %15, i32 %2
  %17 = icmp eq i32 %16, 102
  br label %18

18:                                               ; preds = %3, %8, %13
  %19 = phi i1 [ false, %3 ], [ false, %8 ], [ %17, %13 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_wchar(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %0, 256
  %7 = or i32 %0, 32
  %8 = select i1 %6, i32 %7, i32 %0
  %9 = icmp eq i32 %8, 105
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = icmp slt i32 %1, 256
  %12 = or i32 %1, 32
  %13 = select i1 %11, i32 %12, i32 %1
  %14 = icmp eq i32 %13, 110
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = icmp slt i32 %2, 256
  %17 = or i32 %2, 32
  %18 = select i1 %16, i32 %17, i32 %2
  %19 = icmp eq i32 %18, 105
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = icmp slt i32 %3, 256
  %22 = or i32 %3, 32
  %23 = select i1 %21, i32 %22, i32 %3
  %24 = icmp eq i32 %23, 116
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = icmp slt i32 %4, 256
  %27 = or i32 %4, 32
  %28 = select i1 %26, i32 %27, i32 %4
  %29 = icmp eq i32 %28, 121
  br label %30

30:                                               ; preds = %5, %10, %15, %20, %25
  %31 = phi i1 [ false, %5 ], [ false, %10 ], [ false, %15 ], [ false, %20 ], [ %29, %25 ]
  ret i1 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @nan3_u8(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 223
  %5 = icmp eq i32 %4, 78
  %6 = and i32 %1, 223
  %7 = icmp eq i32 %6, 65
  %8 = and i1 %5, %7
  %9 = and i32 %2, 223
  %10 = icmp eq i32 %9, 78
  %11 = and i1 %8, %10
  ret i1 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inf3_u8(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 223
  %5 = icmp eq i32 %4, 73
  %6 = and i32 %1, 223
  %7 = icmp eq i32 %6, 78
  %8 = and i1 %5, %7
  %9 = and i32 %2, 223
  %10 = icmp eq i32 %9, 70
  %11 = and i1 %8, %10
  ret i1 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @inity5_u8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
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
  %17 = and i32 %4, 223
  %18 = icmp eq i32 %17, 89
  %19 = and i1 %16, %18
  ret i1 %19
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
