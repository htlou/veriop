; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/42fe36d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/42fe36d/wrap.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.0"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz32(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %1 ]
  %6 = shl nuw i32 %5, 1
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp sgt i32 %6, -1
  br i1 %8, label %3, label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz64(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i64 %0, -1
  br i1 %2, label %3, label %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %6, %3 ], [ %0, %1 ]
  %6 = shl nuw i64 %5, 1
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp sgt i64 %6, -1
  br i1 %8, label %3, label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_ctz32(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = xor i32 %2, %0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %7 = phi i32 [ %8, %5 ], [ %3, %1 ]
  %8 = lshr i32 %7, 1
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp ult i32 %7, 4
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_ctz64(i64 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i64 %0 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  %6 = xor i32 %5, %2
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %28, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %11, %8 ], [ %6, %4 ]
  %11 = lshr i32 %10, 1
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp ult i32 %10, 4
  br i1 %13, label %28, label %8

14:                                               ; preds = %1
  %15 = lshr exact i64 %0, 32
  %16 = trunc nuw i64 %15 to i32
  %17 = add i32 %16, -1
  %18 = xor i32 %17, %16
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %28, label %20

20:                                               ; preds = %14, %20
  %21 = phi i32 [ %24, %20 ], [ 0, %14 ]
  %22 = phi i32 [ %23, %20 ], [ %18, %14 ]
  %23 = lshr i32 %22, 1
  %24 = add nuw nsw i32 %21, 1
  %25 = icmp ult i32 %22, 4
  br i1 %25, label %26, label %20

26:                                               ; preds = %20
  %27 = add nuw nsw i32 %21, 33
  br label %28

28:                                               ; preds = %8, %14, %26, %4
  %29 = phi i32 [ 0, %4 ], [ 32, %14 ], [ %27, %26 ], [ %12, %8 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz32_nz(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %1 ]
  %6 = shl nuw i32 %5, 1
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp sgt i32 %6, -1
  br i1 %8, label %3, label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz64_nz(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i64 %0, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %6, %3 ], [ %0, %1 ]
  %6 = shl nuw i64 %5, 1
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp sgt i64 %6, -1
  br i1 %8, label %3, label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_ctz32_nz(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = xor i32 %4, %0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %10, %7 ], [ %5, %3 ]
  %10 = lshr i32 %9, 1
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp ult i32 %9, 4
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %3, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_ctz64_nz(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = trunc i64 %0 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = add i32 %4, -1
  %8 = xor i32 %7, %4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %30, label %10

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %14, %10 ], [ 0, %6 ]
  %12 = phi i32 [ %13, %10 ], [ %8, %6 ]
  %13 = lshr i32 %12, 1
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp ult i32 %12, 4
  br i1 %15, label %30, label %10

16:                                               ; preds = %3
  %17 = lshr exact i64 %0, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = add i32 %18, -1
  %20 = xor i32 %19, %18
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %30, label %22

22:                                               ; preds = %16, %22
  %23 = phi i32 [ %26, %22 ], [ 0, %16 ]
  %24 = phi i32 [ %25, %22 ], [ %20, %16 ]
  %25 = lshr i32 %24, 1
  %26 = add nuw nsw i32 %23, 1
  %27 = icmp ult i32 %24, 4
  br i1 %27, label %28, label %22

28:                                               ; preds = %22
  %29 = add nuw nsw i32 %23, 33
  br label %30

30:                                               ; preds = %10, %16, %28, %6, %1
  %31 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 32, %16 ], [ %29, %28 ], [ %14, %10 ]
  ret i32 %31
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
