; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e3fa9bd/wrap_gen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e3fa9bd/wrap_gen.c"
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
define dso_local zeroext range(i8 0, -64) i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  %11 = or disjoint i8 %10, -128
  br label %26

12:                                               ; preds = %3
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw i64 1, %13
  %15 = zext i64 %14 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %0 to i128
  %18 = udiv i128 %16, %17
  %19 = trunc i128 %18 to i64
  %20 = add i64 %19, 1
  %21 = mul i64 %20, %0
  %22 = icmp ult i64 %21, %14
  %23 = trunc nuw nsw i32 %6 to i8
  %24 = or disjoint i8 %23, 64
  %25 = select i1 %22, i8 %23, i8 %24
  br label %26

26:                                               ; preds = %12, %9, %1
  %27 = phi i8 [ 0, %1 ], [ %11, %9 ], [ %25, %12 ]
  ret i8 %27
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
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  %10 = zext nneg i32 %7 to i64
  br i1 %9, label %30, label %11

11:                                               ; preds = %4
  %12 = shl nuw i64 1, %10
  %13 = zext i64 %12 to i128
  %14 = shl nuw i128 %13, 64
  %15 = zext i64 %1 to i128
  %16 = udiv i128 %14, %15
  %17 = trunc i128 %16 to i64
  %18 = mul i64 %1, %17
  %19 = add i64 %18, %1
  %20 = icmp ult i64 %19, %12
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = zext nneg i32 %7 to i64
  %23 = add i64 %17, 1
  %24 = zext i64 %23 to i128
  %25 = zext i64 %0 to i128
  %26 = mul nuw i128 %24, %25
  %27 = lshr i128 %26, 64
  %28 = trunc nuw i128 %27 to i64
  %29 = lshr i64 %28, %22
  br label %52

30:                                               ; preds = %4
  %31 = lshr i64 %0, %10
  br label %52

32:                                               ; preds = %11
  %33 = sub i64 0, %18
  %34 = shl i64 %17, 1
  %35 = shl i64 %33, 1
  %36 = icmp uge i64 %35, %1
  %37 = icmp slt i64 %33, 0
  %38 = or i1 %37, %36
  %39 = zext i1 %38 to i64
  %40 = or disjoint i64 %34, %39
  %41 = zext nneg i32 %7 to i64
  %42 = add i64 %40, 1
  %43 = zext i64 %42 to i128
  %44 = zext i64 %0 to i128
  %45 = mul nuw i128 %43, %44
  %46 = lshr i128 %45, 64
  %47 = trunc nuw i128 %46 to i64
  %48 = sub i64 %0, %47
  %49 = lshr i64 %48, 1
  %50 = add i64 %49, %47
  %51 = lshr i64 %50, %41
  br label %52

52:                                               ; preds = %21, %32, %30, %2
  %53 = phi i64 [ 0, %2 ], [ %31, %30 ], [ %51, %32 ], [ %29, %21 ]
  ret i64 %53
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
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  br label %54

18:                                               ; preds = %4
  %19 = sub nsw i32 62, %8
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = zext i64 %21 to i128
  %23 = shl nuw i128 %22, 64
  %24 = zext i64 %6 to i128
  %25 = udiv i128 %23, %24
  %26 = trunc i128 %25 to i64
  %27 = mul i64 %6, %26
  %28 = add i64 %27, %6
  %29 = zext nneg i32 %9 to i64
  %30 = lshr i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = trunc nsw i32 %19 to i8
  br label %45

34:                                               ; preds = %18
  %35 = sub i64 0, %27
  %36 = shl i64 %26, 1
  %37 = shl i64 %35, 1
  %38 = icmp uge i64 %37, %6
  %39 = icmp slt i64 %35, 0
  %40 = or i1 %39, %38
  %41 = zext i1 %40 to i64
  %42 = or disjoint i64 %36, %41
  %43 = trunc nuw nsw i32 %9 to i8
  %44 = or disjoint i8 %43, 64
  br label %45

45:                                               ; preds = %32, %34
  %46 = phi i64 [ %42, %34 ], [ %26, %32 ]
  %47 = phi i8 [ %44, %34 ], [ %33, %32 ]
  %48 = add i64 %46, 1
  %49 = or i8 %47, -128
  %50 = xor i64 %46, -1
  %51 = select i1 %5, i8 %49, i8 %47
  %52 = select i1 %5, i64 %50, i64 %48
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %12, %45
  %55 = phi i8 [ %17, %12 ], [ %51, %45 ]
  %56 = and i8 %55, 63
  %57 = zext nneg i8 %56 to i64
  %58 = shl nsw i64 -1, %57
  %59 = xor i64 %58, -1
  %60 = icmp slt i64 %0, 0
  %61 = select i1 %60, i64 %59, i64 0
  %62 = add i64 %61, %0
  %63 = ashr i64 %62, %57
  %64 = ashr i8 %55, 7
  %65 = sext i8 %64 to i64
  %66 = xor i64 %63, %65
  %67 = sub nsw i64 %66, %65
  br label %90

68:                                               ; preds = %45
  %69 = sext i64 %52 to i128
  %70 = sext i64 %0 to i128
  %71 = mul nsw i128 %69, %70
  %72 = lshr i128 %71, 64
  %73 = trunc nuw i128 %72 to i64
  %74 = zext i8 %51 to i32
  %75 = and i32 %74, 64
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %68
  %78 = ashr i8 %51, 7
  %79 = sext i8 %78 to i64
  %80 = xor i64 %0, %79
  %81 = sub i64 %80, %79
  %82 = add i64 %81, %73
  br label %83

83:                                               ; preds = %77, %68
  %84 = phi i64 [ %82, %77 ], [ %73, %68 ]
  %85 = and i32 %74, 63
  %86 = zext nneg i32 %85 to i64
  %87 = ashr i64 %84, %86
  %88 = lshr i64 %87, 63
  %89 = add nsw i64 %88, %87
  br label %90

90:                                               ; preds = %83, %54, %2
  %91 = phi i64 [ 0, %2 ], [ %67, %54 ], [ %89, %83 ]
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
