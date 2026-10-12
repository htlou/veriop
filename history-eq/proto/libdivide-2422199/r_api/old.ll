; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/proto/libdivide-2422199/wrap2.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/proto/libdivide-2422199/wrap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = trunc nuw nsw i32 %6 to i8
  br label %39

11:                                               ; preds = %4
  %12 = shl nuw i32 1, %6
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %1 to i64
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %1, %17
  %19 = add i32 %18, %1
  %20 = icmp ult i32 %19, %12
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = trunc nuw nsw i32 %6 to i8
  br label %34

23:                                               ; preds = %11
  %24 = sub i32 0, %18
  %25 = shl i32 %17, 1
  %26 = shl i32 %24, 1
  %27 = icmp uge i32 %26, %1
  %28 = icmp slt i32 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i32
  %31 = or disjoint i32 %25, %30
  %32 = trunc nuw nsw i32 %6 to i8
  %33 = or disjoint i8 %32, 64
  br label %34

34:                                               ; preds = %21, %23
  %35 = phi i32 [ %31, %23 ], [ %17, %21 ]
  %36 = phi i8 [ %33, %23 ], [ %22, %21 ]
  %37 = add i32 %35, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = and i8 %40, 31
  %42 = zext nneg i8 %41 to i32
  %43 = lshr i32 %0, %42
  br label %60

44:                                               ; preds = %34
  %45 = zext i32 %37 to i64
  %46 = zext i32 %0 to i64
  %47 = mul nuw i64 %45, %46
  %48 = lshr i64 %47, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = zext nneg i8 %36 to i32
  %51 = icmp samesign ult i8 %36, 64
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = sub i32 %0, %49
  %54 = lshr i32 %53, 1
  %55 = add i32 %54, %49
  %56 = and i32 %50, 31
  %57 = lshr i32 %55, %56
  br label %60

58:                                               ; preds = %44
  %59 = lshr i32 %49, %50
  br label %60

60:                                               ; preds = %58, %52, %39, %2
  %61 = phi i32 [ 0, %2 ], [ %43, %39 ], [ %57, %52 ], [ %59, %58 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %41

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = zext i64 %14 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %1 to i128
  %18 = udiv i128 %16, %17
  %19 = trunc i128 %18 to i64
  %20 = mul i64 %1, %19
  %21 = add i64 %20, %1
  %22 = icmp ult i64 %21, %14
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = trunc nuw nsw i32 %7 to i8
  br label %36

25:                                               ; preds = %12
  %26 = sub i64 0, %20
  %27 = shl i64 %19, 1
  %28 = shl i64 %26, 1
  %29 = icmp uge i64 %28, %1
  %30 = icmp slt i64 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i64
  %33 = or disjoint i64 %27, %32
  %34 = trunc nuw nsw i32 %7 to i8
  %35 = or disjoint i8 %34, 64
  br label %36

36:                                               ; preds = %23, %25
  %37 = phi i8 [ %35, %25 ], [ %24, %23 ]
  %38 = phi i64 [ %33, %25 ], [ %19, %23 ]
  %39 = add i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %10, %36
  %42 = phi i8 [ %11, %10 ], [ %37, %36 ]
  %43 = and i8 %42, 63
  %44 = zext nneg i8 %43 to i64
  %45 = lshr i64 %0, %44
  br label %63

46:                                               ; preds = %36
  %47 = zext i64 %39 to i128
  %48 = zext i64 %0 to i128
  %49 = mul nuw i128 %47, %48
  %50 = lshr i128 %49, 64
  %51 = trunc nuw i128 %50 to i64
  %52 = icmp samesign ult i8 %37, 64
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = sub i64 %0, %51
  %55 = lshr i64 %54, 1
  %56 = add i64 %55, %51
  %57 = and i8 %37, 63
  %58 = zext nneg i8 %57 to i64
  %59 = lshr i64 %56, %58
  br label %63

60:                                               ; preds = %46
  %61 = zext nneg i8 %37 to i64
  %62 = lshr i64 %51, %61
  br label %63

63:                                               ; preds = %60, %53, %41, %2
  %64 = phi i64 [ 0, %2 ], [ %45, %41 ], [ %59, %53 ], [ %62, %60 ]
  ret i64 %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
