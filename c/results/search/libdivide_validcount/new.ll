; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/libdivide_validcount/libdivide_validcount.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/libdivide_validcount/libdivide_validcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  %5 = zext i8 %2 to i32
  br i1 %4, label %6, label %8

6:                                                ; preds = %3
  %7 = lshr i32 %0, %5
  br label %26

8:                                                ; preds = %3
  %9 = and i32 %5, 64
  %10 = icmp ne i32 %9, 0
  %11 = icmp ult i8 %2, 32
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = zext i32 %0 to i64
  %15 = zext i32 %1 to i64
  %16 = mul nuw i64 %15, %14
  %17 = lshr i64 %16, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = icmp eq i32 %9, 0
  %20 = sub i32 %0, %18
  %21 = lshr i32 %20, 1
  %22 = select i1 %19, i32 0, i32 %21
  %23 = add i32 %22, %18
  %24 = and i32 %5, 31
  %25 = lshr i32 %23, %24
  br label %26

26:                                               ; preds = %13, %8, %6
  %27 = phi i32 [ %7, %6 ], [ %25, %13 ], [ 0, %8 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext nneg i8 %2 to i64
  %7 = lshr i64 %0, %6
  br label %27

8:                                                ; preds = %3
  %9 = zext i8 %2 to i32
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  %12 = icmp ult i8 %2, 64
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = zext i64 %0 to i128
  %16 = zext i64 %1 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = trunc nuw i128 %18 to i64
  %20 = sub i64 %0, %19
  %21 = lshr i64 %20, 1
  %22 = select i1 %11, i64 %21, i64 0
  %23 = add i64 %22, %19
  %24 = and i32 %9, 63
  %25 = zext nneg i32 %24 to i64
  %26 = lshr i64 %23, %25
  br label %27

27:                                               ; preds = %14, %8, %5
  %28 = phi i64 [ %7, %5 ], [ %26, %14 ], [ 0, %8 ]
  ret i64 %28
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
