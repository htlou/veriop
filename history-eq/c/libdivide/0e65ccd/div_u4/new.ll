; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_div.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = shl i64 %2, %6
  %8 = shl i64 %0, %6
  %9 = sub nsw i64 0, %6
  %10 = and i64 %9, 63
  %11 = lshr i64 %1, %10
  %12 = icmp eq i64 %6, 0
  %13 = select i1 %12, i64 0, i64 %11
  %14 = or i64 %13, %8
  %15 = shl i64 %1, %6
  %16 = lshr i64 %15, 32
  %17 = lshr i64 %7, 32
  %18 = udiv i64 %14, %17
  %19 = urem i64 %14, %17
  %20 = and i64 %7, 4294967295
  %21 = mul i64 %18, %20
  %22 = shl nuw i64 %19, 32
  %23 = or disjoint i64 %22, %16
  %24 = icmp ugt i64 %21, %23
  %25 = sub nuw i64 %21, %23
  %26 = icmp ugt i64 %25, %7
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %18
  %30 = shl i64 %14, 32
  %31 = or disjoint i64 %30, %16
  %32 = and i64 %29, 4294967295
  %33 = mul i64 %32, %7
  %34 = sub i64 %31, %33
  %35 = udiv i64 %34, %17
  %36 = urem i64 %34, %17
  %37 = mul i64 %35, %20
  %38 = shl nuw i64 %36, 32
  %39 = and i64 %15, 4294967295
  %40 = or disjoint i64 %38, %39
  %41 = icmp ugt i64 %37, %40
  %42 = sub nuw i64 %37, %40
  %43 = icmp ugt i64 %42, %7
  %44 = select i1 %43, i64 4294967294, i64 4294967295
  %45 = select i1 %41, i64 %44, i64 0
  %46 = add i64 %45, %35
  %47 = and i64 %46, 4294967295
  %48 = shl nuw i64 %32, 32
  %49 = or disjoint i64 %47, %48
  br label %50

50:                                               ; preds = %3, %5
  %51 = phi i64 [ %49, %5 ], [ -1, %3 ]
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %53

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = shl i64 %2, %6
  %8 = shl i64 %0, %6
  %9 = sub nsw i64 0, %6
  %10 = and i64 %9, 63
  %11 = lshr i64 %1, %10
  %12 = icmp eq i64 %6, 0
  %13 = select i1 %12, i64 0, i64 %11
  %14 = or i64 %13, %8
  %15 = shl i64 %1, %6
  %16 = lshr i64 %15, 32
  %17 = lshr i64 %7, 32
  %18 = udiv i64 %14, %17
  %19 = urem i64 %14, %17
  %20 = and i64 %7, 4294967295
  %21 = mul i64 %18, %20
  %22 = shl nuw i64 %19, 32
  %23 = or disjoint i64 %22, %16
  %24 = icmp ugt i64 %21, %23
  %25 = sub nuw i64 %21, %23
  %26 = icmp ugt i64 %25, %7
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %18
  %30 = shl i64 %14, 32
  %31 = or disjoint i64 %30, %16
  %32 = and i64 %29, 4294967295
  %33 = mul i64 %32, %7
  %34 = sub i64 %31, %33
  %35 = udiv i64 %34, %17
  %36 = urem i64 %34, %17
  %37 = mul i64 %35, %20
  %38 = shl nuw i64 %36, 32
  %39 = and i64 %15, 4294967295
  %40 = or disjoint i64 %38, %39
  %41 = icmp ugt i64 %37, %40
  %42 = sub nuw i64 %37, %40
  %43 = icmp ugt i64 %42, %7
  %44 = select i1 %43, i64 4294967294, i64 4294967295
  %45 = select i1 %41, i64 %44, i64 0
  %46 = add i64 %45, %35
  %47 = shl i64 %34, 32
  %48 = or disjoint i64 %47, %39
  %49 = and i64 %46, 4294967295
  %50 = mul i64 %49, %7
  %51 = sub i64 %48, %50
  %52 = lshr i64 %51, %6
  br label %53

53:                                               ; preds = %3, %5
  %54 = phi i64 [ %52, %5 ], [ -1, %3 ]
  ret i64 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_pre_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = shl i64 %2, %6
  %8 = shl i64 %0, %6
  %9 = sub nsw i64 0, %6
  %10 = and i64 %9, 63
  %11 = lshr i64 %1, %10
  %12 = icmp eq i64 %6, 0
  %13 = select i1 %12, i64 0, i64 %11
  %14 = or i64 %13, %8
  %15 = shl i64 %1, %6
  %16 = lshr i64 %15, 32
  %17 = lshr i64 %7, 32
  %18 = udiv i64 %14, %17
  %19 = urem i64 %14, %17
  %20 = and i64 %7, 4294967295
  %21 = mul i64 %18, %20
  %22 = shl nuw i64 %19, 32
  %23 = or disjoint i64 %22, %16
  %24 = icmp ugt i64 %21, %23
  %25 = sub nuw i64 %21, %23
  %26 = icmp ugt i64 %25, %7
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %18
  %30 = shl i64 %14, 32
  %31 = or disjoint i64 %30, %16
  %32 = and i64 %29, 4294967295
  %33 = mul i64 %32, %7
  %34 = sub i64 %31, %33
  %35 = udiv i64 %34, %17
  %36 = urem i64 %34, %17
  %37 = mul i64 %35, %20
  %38 = shl nuw i64 %36, 32
  %39 = and i64 %15, 4294967295
  %40 = or disjoint i64 %38, %39
  %41 = icmp ugt i64 %37, %40
  %42 = sub nuw i64 %37, %40
  %43 = icmp ugt i64 %42, %7
  %44 = select i1 %43, i64 4294967294, i64 4294967295
  %45 = select i1 %41, i64 %44, i64 0
  %46 = add i64 %45, %35
  %47 = and i64 %46, 4294967295
  %48 = shl nuw i64 %32, 32
  %49 = or disjoint i64 %47, %48
  br label %50

50:                                               ; preds = %3, %5
  %51 = phi i64 [ %49, %5 ], [ 0, %3 ]
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_pre_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %53

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = shl i64 %2, %6
  %8 = shl i64 %0, %6
  %9 = sub nsw i64 0, %6
  %10 = and i64 %9, 63
  %11 = lshr i64 %1, %10
  %12 = icmp eq i64 %6, 0
  %13 = select i1 %12, i64 0, i64 %11
  %14 = or i64 %13, %8
  %15 = shl i64 %1, %6
  %16 = lshr i64 %15, 32
  %17 = lshr i64 %7, 32
  %18 = udiv i64 %14, %17
  %19 = urem i64 %14, %17
  %20 = and i64 %7, 4294967295
  %21 = mul i64 %18, %20
  %22 = shl nuw i64 %19, 32
  %23 = or disjoint i64 %22, %16
  %24 = icmp ugt i64 %21, %23
  %25 = sub nuw i64 %21, %23
  %26 = icmp ugt i64 %25, %7
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %18
  %30 = shl i64 %14, 32
  %31 = or disjoint i64 %30, %16
  %32 = and i64 %29, 4294967295
  %33 = mul i64 %32, %7
  %34 = sub i64 %31, %33
  %35 = udiv i64 %34, %17
  %36 = urem i64 %34, %17
  %37 = mul i64 %35, %20
  %38 = shl nuw i64 %36, 32
  %39 = and i64 %15, 4294967295
  %40 = or disjoint i64 %38, %39
  %41 = icmp ugt i64 %37, %40
  %42 = sub nuw i64 %37, %40
  %43 = icmp ugt i64 %42, %7
  %44 = select i1 %43, i64 4294967294, i64 4294967295
  %45 = select i1 %41, i64 %44, i64 0
  %46 = add i64 %45, %35
  %47 = shl i64 %34, 32
  %48 = or disjoint i64 %47, %39
  %49 = and i64 %46, 4294967295
  %50 = mul i64 %49, %7
  %51 = sub i64 %48, %50
  %52 = lshr i64 %51, %6
  br label %53

53:                                               ; preds = %3, %5
  %54 = phi i64 [ %52, %5 ], [ 0, %3 ]
  ret i64 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
