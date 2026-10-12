; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c8edb85/wrap_gen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c8edb85/wrap_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %3 = icmp samesign ult i64 %2, 2
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %6 = xor i64 %5, 63
  %7 = shl nuw i64 1, %6
  %8 = zext i64 %7 to i128
  %9 = shl nuw i128 %8, 64
  %10 = zext i64 %0 to i128
  %11 = udiv i128 %9, %10
  %12 = trunc i128 %11 to i64
  %13 = mul i64 %0, %12
  %14 = add i64 %13, %0
  %15 = icmp ult i64 %14, %7
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = sub i64 0, %13
  %18 = shl i64 %12, 1
  %19 = shl i64 %17, 1
  %20 = icmp uge i64 %19, %0
  %21 = icmp slt i64 %17, 0
  %22 = or i1 %21, %20
  %23 = zext i1 %22 to i64
  %24 = or disjoint i64 %18, %23
  br label %25

25:                                               ; preds = %4, %16
  %26 = phi i64 [ %24, %16 ], [ %12, %4 ]
  %27 = add i64 %26, 1
  br label %28

28:                                               ; preds = %25, %1
  %29 = phi i64 [ 0, %1 ], [ %27, %25 ]
  ret i64 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, -128) i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %25

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = zext i64 %13 to i128
  %15 = shl nuw i128 %14, 64
  %16 = zext i64 %0 to i128
  %17 = udiv i128 %15, %16
  %18 = trunc i128 %17 to i64
  %19 = add i64 %18, 1
  %20 = mul i64 %19, %0
  %21 = icmp ult i64 %20, %13
  %22 = trunc nuw nsw i32 %6 to i8
  %23 = or disjoint i8 %22, 64
  %24 = select i1 %21, i8 %22, i8 %23
  br label %25

25:                                               ; preds = %11, %9, %1
  %26 = phi i8 [ 0, %1 ], [ %10, %9 ], [ %24, %11 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %7 = icmp samesign ult i64 %6, 2
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %10 = xor i64 %9, 63
  %11 = sub nuw nsw i64 62, %9
  %12 = shl nuw nsw i64 1, %11
  %13 = zext nneg i64 %12 to i128
  %14 = shl nuw nsw i128 %13, 64
  %15 = zext i64 %5 to i128
  %16 = udiv i128 %14, %15
  %17 = trunc i128 %16 to i64
  %18 = mul i64 %5, %17
  %19 = add i64 %18, %5
  %20 = lshr i64 %19, %10
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %8
  %23 = sub i64 0, %18
  %24 = shl i64 %17, 1
  %25 = shl i64 %23, 1
  %26 = icmp uge i64 %25, %5
  %27 = icmp slt i64 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i64
  %30 = or disjoint i64 %24, %29
  br label %31

31:                                               ; preds = %8, %22
  %32 = phi i64 [ %30, %22 ], [ %17, %8 ]
  %33 = add i64 %32, 1
  %34 = xor i64 %32, -1
  %35 = select i1 %4, i64 %34, i64 %33
  br label %36

36:                                               ; preds = %31, %3, %1
  %37 = phi i64 [ 0, %1 ], [ %35, %31 ], [ 0, %3 ]
  ret i64 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @target_s64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %4, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %4)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = lshr i64 %0, 56
  %12 = trunc nuw nsw i64 %11 to i32
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %7, %13
  %15 = trunc nuw i32 %14 to i8
  br label %37

16:                                               ; preds = %3
  %17 = icmp slt i64 %0, 0
  %18 = sub nsw i32 62, %6
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = zext i64 %20 to i128
  %22 = shl nuw i128 %21, 64
  %23 = zext i64 %4 to i128
  %24 = udiv i128 %22, %23
  %25 = trunc i128 %24 to i64
  %26 = add i64 %25, 1
  %27 = mul i64 %26, %4
  %28 = zext nneg i32 %7 to i64
  %29 = lshr i64 %27, %28
  %30 = icmp eq i64 %29, 0
  %31 = trunc nuw nsw i32 %7 to i8
  %32 = or disjoint i8 %31, 64
  %33 = trunc nsw i32 %18 to i8
  %34 = select i1 %30, i8 %33, i8 %32
  %35 = or i8 %34, -128
  %36 = select i1 %17, i8 %35, i8 %34
  br label %37

37:                                               ; preds = %16, %10, %1
  %38 = phi i8 [ 0, %1 ], [ %15, %10 ], [ %36, %16 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %62, label %4

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
  br i1 %40, label %41, label %45

41:                                               ; preds = %10, %36
  %42 = phi i8 [ %11, %10 ], [ %37, %36 ]
  %43 = zext nneg i8 %42 to i64
  %44 = lshr i64 %0, %43
  br label %62

45:                                               ; preds = %36
  %46 = zext i64 %39 to i128
  %47 = zext i64 %0 to i128
  %48 = mul nuw i128 %46, %47
  %49 = lshr i128 %48, 64
  %50 = trunc nuw i128 %49 to i64
  %51 = icmp samesign ult i8 %37, 64
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = sub i64 %0, %50
  %54 = lshr i64 %53, 1
  %55 = add i64 %54, %50
  %56 = and i8 %37, 63
  %57 = zext nneg i8 %56 to i64
  %58 = lshr i64 %55, %57
  br label %62

59:                                               ; preds = %45
  %60 = zext nneg i8 %37 to i64
  %61 = lshr i64 %50, %60
  br label %62

62:                                               ; preds = %59, %52, %41, %2
  %63 = phi i64 [ 0, %2 ], [ %44, %41 ], [ %58, %52 ], [ %61, %59 ]
  ret i64 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %90, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  %18 = and i8 %17, 63
  br label %56

19:                                               ; preds = %4
  %20 = sub nsw i32 62, %8
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = zext i64 %22 to i128
  %24 = shl nuw i128 %23, 64
  %25 = zext i64 %6 to i128
  %26 = udiv i128 %24, %25
  %27 = trunc i128 %26 to i64
  %28 = mul i64 %6, %27
  %29 = add i64 %28, %6
  %30 = zext nneg i32 %9 to i64
  %31 = lshr i64 %29, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = trunc nsw i32 %20 to i8
  br label %46

35:                                               ; preds = %19
  %36 = sub i64 0, %28
  %37 = shl i64 %27, 1
  %38 = shl i64 %36, 1
  %39 = icmp uge i64 %38, %6
  %40 = icmp slt i64 %36, 0
  %41 = or i1 %40, %39
  %42 = zext i1 %41 to i64
  %43 = or disjoint i64 %37, %42
  %44 = trunc nuw nsw i32 %9 to i8
  %45 = or disjoint i8 %44, 64
  br label %46

46:                                               ; preds = %33, %35
  %47 = phi i64 [ %43, %35 ], [ %27, %33 ]
  %48 = phi i8 [ %45, %35 ], [ %34, %33 ]
  %49 = add i64 %47, 1
  %50 = or i8 %48, -128
  %51 = xor i64 %47, -1
  %52 = select i1 %5, i8 %50, i8 %48
  %53 = select i1 %5, i64 %51, i64 %49
  %54 = and i8 %52, 63
  %55 = icmp eq i64 %53, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %12, %46
  %57 = phi i8 [ %18, %12 ], [ %54, %46 ]
  %58 = phi i8 [ %17, %12 ], [ %52, %46 ]
  %59 = zext nneg i8 %57 to i64
  %60 = shl nsw i64 -1, %59
  %61 = xor i64 %60, -1
  %62 = icmp slt i64 %0, 0
  %63 = select i1 %62, i64 %61, i64 0
  %64 = add i64 %63, %0
  %65 = ashr i64 %64, %59
  %66 = ashr i8 %58, 7
  %67 = sext i8 %66 to i64
  %68 = xor i64 %65, %67
  %69 = sub nsw i64 %68, %67
  br label %90

70:                                               ; preds = %46
  %71 = sext i64 %53 to i128
  %72 = sext i64 %0 to i128
  %73 = mul nsw i128 %71, %72
  %74 = lshr i128 %73, 64
  %75 = trunc nuw i128 %74 to i64
  %76 = and i8 %52, 64
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = ashr i8 %52, 7
  %80 = sext i8 %79 to i64
  %81 = xor i64 %0, %80
  %82 = sub i64 %81, %80
  %83 = add i64 %82, %75
  br label %84

84:                                               ; preds = %78, %70
  %85 = phi i64 [ %83, %78 ], [ %75, %70 ]
  %86 = zext nneg i8 %54 to i64
  %87 = ashr i64 %85, %86
  %88 = lshr i64 %87, 63
  %89 = add nsw i64 %88, %87
  br label %90

90:                                               ; preds = %84, %56, %2
  %91 = phi i64 [ 0, %2 ], [ %89, %84 ], [ %69, %56 ]
  ret i64 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

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
