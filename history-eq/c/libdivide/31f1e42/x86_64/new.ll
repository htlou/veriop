; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/31f1e42/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/31f1e42/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_u16_do_raw(i16 noundef zeroext %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i16 %1, 0
  %5 = zext i16 %0 to i32
  br i1 %4, label %6, label %9

6:                                                ; preds = %3
  %7 = zext nneg i8 %2 to i32
  %8 = lshr i32 %5, %7
  br label %25

9:                                                ; preds = %3
  %10 = zext i16 %1 to i32
  %11 = mul nuw i32 %10, %5
  %12 = lshr i32 %11, 16
  %13 = zext i8 %2 to i32
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = sub nsw i32 %5, %12
  %18 = lshr i32 %17, 1
  %19 = add nuw i32 %18, %12
  %20 = and i32 %19, 65535
  %21 = and i32 %13, 31
  %22 = lshr i32 %20, %21
  br label %25

23:                                               ; preds = %9
  %24 = lshr i32 %12, %13
  br label %25

25:                                               ; preds = %6, %16, %23
  %26 = phi i32 [ %8, %6 ], [ %22, %16 ], [ %24, %23 ]
  %27 = trunc nuw i32 %26 to i16
  ret i16 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_do_raw(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext nneg i8 %2 to i32
  %7 = lshr i32 %0, %6
  br label %25

8:                                                ; preds = %3
  %9 = zext i32 %0 to i64
  %10 = zext i32 %1 to i64
  %11 = mul nuw i64 %10, %9
  %12 = lshr i64 %11, 32
  %13 = trunc nuw i64 %12 to i32
  %14 = zext i8 %2 to i32
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %8
  %18 = sub i32 %0, %13
  %19 = lshr i32 %18, 1
  %20 = add i32 %19, %13
  %21 = and i32 %14, 31
  %22 = lshr i32 %20, %21
  br label %25

23:                                               ; preds = %8
  %24 = lshr i32 %13, %14
  br label %25

25:                                               ; preds = %5, %17, %23
  %26 = phi i32 [ %7, %5 ], [ %22, %17 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_do_raw(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext nneg i8 %2 to i64
  %7 = lshr i64 %0, %6
  br label %27

8:                                                ; preds = %3
  %9 = zext i64 %0 to i128
  %10 = zext i64 %1 to i128
  %11 = mul nuw i128 %10, %9
  %12 = lshr i128 %11, 64
  %13 = trunc nuw i128 %12 to i64
  %14 = zext i8 %2 to i32
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %8
  %18 = sub i64 %0, %13
  %19 = lshr i64 %18, 1
  %20 = add i64 %19, %13
  %21 = and i32 %14, 63
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %20, %22
  br label %27

24:                                               ; preds = %8
  %25 = zext nneg i8 %2 to i64
  %26 = lshr i64 %13, %25
  br label %27

27:                                               ; preds = %5, %17, %24
  %28 = phi i64 [ %7, %5 ], [ %23, %17 ], [ %26, %24 ]
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @target_s16_do_raw(i16 noundef signext %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 31
  %5 = icmp eq i16 %1, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = zext nneg i8 %4 to i32
  %8 = shl nsw i32 -1, %7
  %9 = sext i16 %0 to i32
  %10 = lshr i32 %9, 15
  %11 = xor i32 %8, -1
  %12 = and i32 %10, %11
  %13 = trunc i32 %12 to i16
  %14 = add i16 %0, %13
  %15 = sext i16 %14 to i32
  %16 = ashr i32 %15, %7
  %17 = icmp slt i8 %2, 0
  %18 = select i1 %17, i32 65535, i32 0
  %19 = xor i32 %16, %18
  %20 = sub nsw i32 %19, %18
  br label %43

21:                                               ; preds = %3
  %22 = sext i16 %0 to i32
  %23 = sext i16 %1 to i32
  %24 = mul nsw i32 %23, %22
  %25 = lshr i32 %24, 16
  %26 = and i8 %2, 64
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = ashr i8 %2, 7
  %30 = zext i16 %0 to i32
  %31 = sext i8 %29 to i32
  %32 = xor i32 %31, %30
  %33 = sub nsw i32 %25, %31
  %34 = add nsw i32 %33, %32
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi i32 [ %34, %28 ], [ %25, %21 ]
  %37 = zext nneg i8 %4 to i32
  %38 = shl i32 %36, 16
  %39 = ashr exact i32 %38, 16
  %40 = ashr i32 %39, %37
  %41 = lshr i32 %40, 31
  %42 = add nsw i32 %41, %40
  br label %43

43:                                               ; preds = %6, %35
  %44 = phi i32 [ %42, %35 ], [ %20, %6 ]
  %45 = trunc i32 %44 to i16
  ret i16 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_do_raw(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 31
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = ashr i8 %2, 7
  %8 = sext i8 %7 to i32
  %9 = zext nneg i8 %4 to i32
  %10 = shl nsw i32 -1, %9
  %11 = xor i32 %10, -1
  %12 = icmp slt i32 %0, 0
  %13 = select i1 %12, i32 %11, i32 0
  %14 = add i32 %13, %0
  %15 = ashr i32 %14, %9
  %16 = xor i32 %15, %8
  %17 = sub i32 %16, %8
  br label %38

18:                                               ; preds = %3
  %19 = sext i32 %0 to i64
  %20 = sext i32 %1 to i64
  %21 = mul nsw i64 %20, %19
  %22 = lshr i64 %21, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = and i8 %2, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = ashr i8 %2, 7
  %28 = sext i8 %27 to i32
  %29 = xor i32 %0, %28
  %30 = sub i32 %29, %28
  %31 = add i32 %30, %23
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi i32 [ %31, %26 ], [ %23, %18 ]
  %34 = zext nneg i8 %4 to i32
  %35 = ashr i32 %33, %34
  %36 = lshr i32 %35, 31
  %37 = add nsw i32 %36, %35
  br label %38

38:                                               ; preds = %6, %32
  %39 = phi i32 [ %37, %32 ], [ %17, %6 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_do_raw(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 63
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = zext nneg i8 %4 to i64
  %8 = shl nsw i64 -1, %7
  %9 = xor i64 %8, -1
  %10 = icmp slt i64 %0, 0
  %11 = select i1 %10, i64 %9, i64 0
  %12 = add i64 %11, %0
  %13 = ashr i64 %12, %7
  %14 = ashr i8 %2, 7
  %15 = sext i8 %14 to i64
  %16 = xor i64 %13, %15
  %17 = sub nsw i64 %16, %15
  br label %38

18:                                               ; preds = %3
  %19 = sext i64 %0 to i128
  %20 = sext i64 %1 to i128
  %21 = mul nsw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = and i8 %2, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = ashr i8 %2, 7
  %28 = sext i8 %27 to i64
  %29 = xor i64 %0, %28
  %30 = sub i64 %29, %28
  %31 = add i64 %30, %23
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi i64 [ %31, %26 ], [ %23, %18 ]
  %34 = zext nneg i8 %4 to i64
  %35 = ashr i64 %33, %34
  %36 = lshr i64 %35, 63
  %37 = add nsw i64 %36, %35
  br label %38

38:                                               ; preds = %6, %32
  %39 = phi i64 [ %37, %32 ], [ %17, %6 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_u16_bf(i16 noundef zeroext %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i16 %0 to i32
  %5 = zext i16 %1 to i32
  %6 = mul nuw i32 %5, %4
  %7 = lshr i32 %6, 16
  %8 = sub nsw i32 %4, %7
  %9 = lshr i32 %8, 1
  %10 = add nuw i32 %9, %7
  %11 = and i32 %10, 65535
  %12 = zext nneg i8 %2 to i32
  %13 = lshr i32 %11, %12
  %14 = trunc nuw i32 %13 to i16
  ret i16 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_bf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = mul nuw i64 %5, %4
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %9 = sub i32 %0, %8
  %10 = lshr i32 %9, 1
  %11 = add i32 %10, %8
  %12 = zext nneg i8 %2 to i32
  %13 = lshr i32 %11, %12
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_bf(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i64 %0 to i128
  %5 = zext i64 %1 to i128
  %6 = mul nuw i128 %5, %4
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %9 = sub i64 %0, %8
  %10 = lshr i64 %9, 1
  %11 = add i64 %10, %8
  %12 = zext nneg i8 %2 to i64
  %13 = lshr i64 %11, %12
  ret i64 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @target_s16_bf(i16 noundef signext %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 31
  %5 = ashr i8 %2, 7
  %6 = sext i16 %0 to i32
  %7 = sext i16 %1 to i32
  %8 = mul nsw i32 %7, %6
  %9 = lshr i32 %8, 16
  %10 = trunc nuw i32 %9 to i16
  %11 = add i16 %0, %10
  %12 = icmp eq i16 %1, 0
  %13 = zext nneg i8 %4 to i32
  %14 = shl nuw i32 1, %13
  %15 = sext i1 %12 to i32
  %16 = add i32 %14, %15
  %17 = trunc i32 %16 to i16
  %18 = icmp slt i16 %11, 0
  %19 = select i1 %18, i16 %17, i16 0
  %20 = add i16 %19, %11
  %21 = sext i16 %20 to i32
  %22 = ashr i32 %21, %13
  %23 = sext i8 %5 to i32
  %24 = xor i32 %22, %23
  %25 = sub nsw i32 %24, %23
  %26 = trunc i32 %25 to i16
  ret i16 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 31
  %5 = ashr i8 %2, 7
  %6 = sext i8 %5 to i32
  %7 = sext i32 %0 to i64
  %8 = sext i32 %1 to i64
  %9 = mul nsw i64 %8, %7
  %10 = lshr i64 %9, 32
  %11 = trunc nuw i64 %10 to i32
  %12 = add nsw i32 %0, %11
  %13 = icmp eq i32 %1, 0
  %14 = sext i1 %13 to i32
  %15 = zext nneg i8 %4 to i32
  %16 = shl nuw i32 1, %15
  %17 = add i32 %16, %14
  %18 = icmp slt i32 %12, 0
  %19 = select i1 %18, i32 %17, i32 0
  %20 = add i32 %19, %12
  %21 = ashr i32 %20, %15
  %22 = xor i32 %21, %6
  %23 = sub nsw i32 %22, %6
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_bf(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 63
  %5 = ashr i8 %2, 7
  %6 = sext i8 %5 to i64
  %7 = sext i64 %0 to i128
  %8 = sext i64 %1 to i128
  %9 = mul nsw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %12 = add nsw i64 %0, %11
  %13 = icmp eq i64 %1, 0
  %14 = sext i1 %13 to i64
  %15 = zext nneg i8 %4 to i64
  %16 = shl nuw i64 1, %15
  %17 = add i64 %16, %14
  %18 = icmp slt i64 %12, 0
  %19 = select i1 %18, i64 %17, i64 0
  %20 = add i64 %19, %12
  %21 = ashr i64 %20, %15
  %22 = xor i64 %21, %6
  %23 = sub nsw i64 %22, %6
  ret i64 %23
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
