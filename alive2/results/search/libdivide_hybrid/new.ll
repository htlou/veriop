; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/libdivide_hybrid/libdivide_hybrid.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/libdivide_hybrid/libdivide_hybrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext nneg i8 %2 to i32
  %7 = lshr i32 %0, %6
  br label %26

8:                                                ; preds = %3
  %9 = zext i32 %0 to i64
  %10 = zext i32 %1 to i64
  %11 = mul nuw i64 %10, %9
  %12 = lshr i64 %11, 32
  %13 = trunc nuw i64 %12 to i32
  %14 = zext i8 %2 to i32
  %15 = lshr i32 %14, 6
  %16 = and i32 %15, 1
  %17 = sub i32 %0, %13
  %18 = lshr i32 %17, 1
  %19 = icmp eq i32 %16, 0
  %20 = select i1 %19, i32 0, i32 %18
  %21 = add i32 %20, %13
  %22 = mul nuw nsw i32 %16, 224
  %23 = xor i32 %22, -1
  %24 = and i32 %23, %14
  %25 = lshr i32 %21, %24
  br label %26

26:                                               ; preds = %8, %5
  %27 = phi i32 [ %25, %8 ], [ %7, %5 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext nneg i8 %2 to i64
  %7 = lshr i64 %0, %6
  br label %25

8:                                                ; preds = %3
  %9 = zext i64 %0 to i128
  %10 = zext i64 %1 to i128
  %11 = mul nuw i128 %10, %9
  %12 = lshr i128 %11, 64
  %13 = trunc nuw i128 %12 to i64
  %14 = zext i8 %2 to i32
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  %17 = sub i64 %0, %13
  %18 = lshr i64 %17, 1
  %19 = select i1 %16, i64 0, i64 %18
  %20 = add i64 %19, %13
  %21 = and i32 %14, 63
  %22 = select i1 %16, i32 %14, i32 %21
  %23 = zext nneg i32 %22 to i64
  %24 = lshr i64 %20, %23
  br label %25

25:                                               ; preds = %8, %5
  %26 = phi i64 [ %24, %8 ], [ %7, %5 ]
  ret i64 %26
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
