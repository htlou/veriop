; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/292ddc3/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/292ddc3/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 1099511627776) i64 @libdivide_internal_s32_gen(i32 noundef %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %5 = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %4)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %9 = lshr i32 %0, 24
  %10 = and i32 %9, 128
  %11 = or disjoint i32 %8, %10
  %12 = or disjoint i32 %11, 32
  br label %47

13:                                               ; preds = %2
  %14 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %15 = xor i32 %14, 31
  %16 = sub nuw nsw i32 30, %14
  %17 = shl nuw nsw i32 1, %16
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 32
  %20 = zext nneg i32 %4 to i64
  %21 = udiv i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %4, %22
  %24 = add i32 %23, %4
  %25 = lshr i32 %24, %15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %13
  %28 = sub i32 0, %23
  %29 = shl i32 %22, 1
  %30 = shl i32 %28, 1
  %31 = icmp uge i32 %30, %4
  %32 = icmp slt i32 %28, 0
  %33 = or i1 %32, %31
  %34 = zext i1 %33 to i32
  %35 = or disjoint i32 %29, %34
  %36 = lshr i32 %0, 24
  %37 = and i32 %36, 128
  %38 = or disjoint i32 %37, %15
  %39 = or disjoint i32 %38, 64
  br label %40

40:                                               ; preds = %13, %27
  %41 = phi i32 [ %39, %27 ], [ %16, %13 ]
  %42 = phi i32 [ %35, %27 ], [ %22, %13 ]
  %43 = add i32 %42, 1
  %44 = xor i32 %42, -1
  %45 = select i1 %3, i32 %44, i32 %43
  %46 = zext i32 %45 to i64
  br label %47

47:                                               ; preds = %40, %7
  %48 = phi i64 [ 0, %7 ], [ %46, %40 ]
  %49 = phi i32 [ %12, %7 ], [ %41, %40 ]
  %50 = zext nneg i32 %49 to i64
  %51 = shl nuw nsw i64 %50, 32
  %52 = or disjoint i64 %51, %48
  ret i64 %52
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local { i64, i8 } @libdivide_internal_s64_gen(i64 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i64 %0, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  %5 = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %4)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %0, i1 true)
  %9 = trunc nuw nsw i64 %8 to i8
  %10 = lshr i64 %0, 56
  %11 = trunc nuw i64 %10 to i8
  %12 = and i8 %11, -128
  %13 = or disjoint i8 %12, %9
  br label %99

14:                                               ; preds = %2
  %15 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %4, i1 true)
  %16 = trunc nuw nsw i64 %15 to i32
  %17 = xor i32 %16, 63
  %18 = sub nuw nsw i32 62, %16
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 1, %19
  %21 = icmp samesign ult i64 %20, %4
  br i1 %21, label %22, label %70

22:                                               ; preds = %14
  %23 = shl i64 %4, %15
  %24 = shl i64 %20, %15
  %25 = lshr i64 %23, 32
  %26 = and i64 %23, 4294967294
  %27 = udiv i64 %24, %25
  %28 = mul i64 %27, %25
  %29 = urem i64 %24, %25
  br label %30

30:                                               ; preds = %38, %22
  %31 = phi i64 [ %27, %22 ], [ %39, %38 ]
  %32 = phi i64 [ %29, %22 ], [ %40, %38 ]
  %33 = icmp ugt i64 %31, 4294967295
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = mul nuw i64 %31, %26
  %36 = shl i64 %32, 32
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %30
  %39 = add i64 %31, -1
  %40 = add i64 %32, %25
  %41 = icmp ult i64 %40, 4294967296
  br i1 %41, label %30, label %42

42:                                               ; preds = %38, %34
  %43 = phi i64 [ %39, %38 ], [ %31, %34 ]
  %44 = shl i64 %24, 32
  %45 = mul i64 %43, %23
  %46 = sub i64 %44, %45
  %47 = udiv i64 %46, %25
  %48 = mul i64 %47, %25
  %49 = urem i64 %46, %25
  br label %50

50:                                               ; preds = %58, %42
  %51 = phi i64 [ %47, %42 ], [ %59, %58 ]
  %52 = phi i64 [ %49, %42 ], [ %60, %58 ]
  %53 = icmp ugt i64 %51, 4294967295
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = mul nuw i64 %51, %26
  %56 = shl i64 %52, 32
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50
  %59 = add i64 %51, -1
  %60 = add i64 %52, %25
  %61 = icmp ult i64 %60, 4294967296
  br i1 %61, label %50, label %62

62:                                               ; preds = %58, %54
  %63 = phi i64 [ %59, %58 ], [ %51, %54 ]
  %64 = shl i64 %46, 32
  %65 = mul i64 %63, %23
  %66 = sub i64 %64, %65
  %67 = lshr i64 %66, %15
  %68 = shl i64 %43, 32
  %69 = add i64 %63, %68
  br label %70

70:                                               ; preds = %14, %62
  %71 = phi i64 [ %67, %62 ], [ -1, %14 ]
  %72 = phi i64 [ %69, %62 ], [ -1, %14 ]
  %73 = sub i64 %4, %71
  %74 = zext nneg i32 %17 to i64
  %75 = lshr i64 %73, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = trunc nuw nsw i32 %18 to i8
  br label %93

79:                                               ; preds = %70
  %80 = shl i64 %72, 1
  %81 = shl i64 %71, 1
  %82 = icmp uge i64 %81, %4
  %83 = icmp slt i64 %71, 0
  %84 = or i1 %83, %82
  %85 = zext i1 %84 to i64
  %86 = or disjoint i64 %80, %85
  %87 = lshr i64 %0, 56
  %88 = trunc nuw nsw i64 %87 to i32
  %89 = and i32 %88, 128
  %90 = or disjoint i32 %17, %89
  %91 = trunc nuw i32 %90 to i8
  %92 = or disjoint i8 %91, 64
  br label %93

93:                                               ; preds = %79, %77
  %94 = phi i8 [ %78, %77 ], [ %92, %79 ]
  %95 = phi i64 [ %72, %77 ], [ %86, %79 ]
  %96 = add i64 %95, 1
  %97 = xor i64 %95, -1
  %98 = select i1 %3, i64 %97, i64 %96
  br label %99

99:                                               ; preds = %93, %7
  %100 = phi i64 [ 0, %7 ], [ %98, %93 ]
  %101 = phi i8 [ %13, %7 ], [ %94, %93 ]
  %102 = insertvalue { i64, i8 } poison, i64 %100, 0
  %103 = insertvalue { i64, i8 } %102, i8 %101, 1
  ret { i64, i8 } %103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bfx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %87, label %5

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, 0
  %7 = tail call i32 @llvm.abs.i32(i32 range(i32 2, -1) %1, i1 true)
  %8 = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %7)
  %9 = icmp samesign ult i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 2, -1) %1, i1 true)
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %11, %13
  %15 = or disjoint i32 %14, 32
  br label %50

16:                                               ; preds = %5
  %17 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true)
  %18 = xor i32 %17, 31
  %19 = sub nuw nsw i32 30, %17
  %20 = shl nuw nsw i32 1, %19
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = zext nneg i32 %7 to i64
  %24 = udiv i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = mul i32 %7, %25
  %27 = add i32 %26, %7
  %28 = lshr i32 %27, %18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %16
  %31 = sub i32 0, %26
  %32 = shl i32 %25, 1
  %33 = shl i32 %31, 1
  %34 = icmp uge i32 %33, %7
  %35 = icmp slt i32 %31, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i32
  %38 = or disjoint i32 %32, %37
  %39 = lshr i32 %1, 24
  %40 = and i32 %39, 128
  %41 = or disjoint i32 %40, %18
  %42 = or disjoint i32 %41, 64
  br label %43

43:                                               ; preds = %30, %16
  %44 = phi i32 [ %42, %30 ], [ %19, %16 ]
  %45 = phi i32 [ %38, %30 ], [ %25, %16 ]
  %46 = add i32 %45, 1
  %47 = xor i32 %45, -1
  %48 = select i1 %6, i32 %47, i32 %46
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %10, %43
  %51 = phi i64 [ 0, %10 ], [ %49, %43 ]
  %52 = phi i32 [ %15, %10 ], [ %44, %43 ]
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = and i32 %52, 31
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = icmp slt i32 %0, 0
  %60 = select i1 %59, i32 %58, i32 0
  %61 = add nsw i32 %60, %0
  %62 = ashr i32 %61, %56
  %63 = shl nuw i32 %52, 24
  %64 = ashr i32 %63, 31
  %65 = xor i32 %62, %64
  %66 = sub nsw i32 %65, %64
  br label %87

67:                                               ; preds = %50
  %68 = sext i32 %0 to i64
  %69 = mul nsw i64 %51, %68
  %70 = lshr i64 %69, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = and i32 %52, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = shl nuw i32 %52, 24
  %76 = lshr i32 %52, 7
  %77 = ashr i32 %75, 31
  %78 = xor i32 %77, %0
  %79 = add i32 %76, %71
  %80 = add i32 %79, %78
  br label %81

81:                                               ; preds = %74, %67
  %82 = phi i32 [ %80, %74 ], [ %71, %67 ]
  %83 = and i32 %52, 31
  %84 = ashr i32 %82, %83
  %85 = lshr i32 %84, 31
  %86 = add nsw i32 %85, %84
  br label %87

87:                                               ; preds = %81, %55, %2
  %88 = phi i32 [ 0, %2 ], [ %66, %55 ], [ %86, %81 ]
  ret i32 %88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
