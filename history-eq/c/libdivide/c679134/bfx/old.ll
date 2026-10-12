; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c679134/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c679134/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local { i64, i8 } @libdivide_internal_u64_gen(i64 noundef %0, i32 %1) local_unnamed_addr #0 {
  %3 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %4 = icmp samesign ult i64 %3, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %0, i1 true)
  %7 = trunc nuw nsw i64 %6 to i8
  %8 = or disjoint i8 %7, -128
  br label %85

9:                                                ; preds = %2
  %10 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = xor i32 %11, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %0
  br i1 %15, label %16, label %64

16:                                               ; preds = %9
  %17 = shl i64 %0, %10
  %18 = shl i64 %14, %10
  %19 = lshr i64 %17, 32
  %20 = and i64 %17, 4294967295
  %21 = udiv i64 %18, %19
  %22 = mul i64 %21, %19
  %23 = urem i64 %18, %19
  br label %24

24:                                               ; preds = %32, %16
  %25 = phi i64 [ %21, %16 ], [ %33, %32 ]
  %26 = phi i64 [ %23, %16 ], [ %34, %32 ]
  %27 = icmp ugt i64 %25, 4294967295
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = mul nuw i64 %25, %20
  %30 = shl i64 %26, 32
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %24
  %33 = add i64 %25, -1
  %34 = add i64 %26, %19
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %24, label %36

36:                                               ; preds = %32, %28
  %37 = phi i64 [ %33, %32 ], [ %25, %28 ]
  %38 = shl i64 %18, 32
  %39 = mul i64 %37, %17
  %40 = sub i64 %38, %39
  %41 = udiv i64 %40, %19
  %42 = mul i64 %41, %19
  %43 = urem i64 %40, %19
  br label %44

44:                                               ; preds = %52, %36
  %45 = phi i64 [ %41, %36 ], [ %53, %52 ]
  %46 = phi i64 [ %43, %36 ], [ %54, %52 ]
  %47 = icmp ugt i64 %45, 4294967295
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = mul nuw i64 %45, %20
  %50 = shl i64 %46, 32
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %44
  %53 = add i64 %45, -1
  %54 = add i64 %46, %19
  %55 = icmp ult i64 %54, 4294967296
  br i1 %55, label %44, label %56

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %53, %52 ], [ %45, %48 ]
  %58 = shl i64 %40, 32
  %59 = mul i64 %57, %17
  %60 = sub i64 %58, %59
  %61 = lshr i64 %60, %10
  %62 = shl i64 %37, 32
  %63 = add i64 %57, %62
  br label %64

64:                                               ; preds = %9, %56
  %65 = phi i64 [ %61, %56 ], [ -1, %9 ]
  %66 = phi i64 [ %63, %56 ], [ -1, %9 ]
  %67 = sub i64 %0, %65
  %68 = icmp ult i64 %67, %14
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = trunc nuw nsw i32 %12 to i8
  br label %81

71:                                               ; preds = %64
  %72 = shl i64 %66, 1
  %73 = shl i64 %65, 1
  %74 = icmp uge i64 %73, %0
  %75 = icmp slt i64 %65, 0
  %76 = or i1 %75, %74
  %77 = zext i1 %76 to i64
  %78 = or disjoint i64 %72, %77
  %79 = trunc nuw nsw i32 %12 to i8
  %80 = or disjoint i8 %79, 64
  br label %81

81:                                               ; preds = %71, %69
  %82 = phi i64 [ %66, %69 ], [ %78, %71 ]
  %83 = phi i8 [ %70, %69 ], [ %80, %71 ]
  %84 = add i64 %82, 1
  br label %85

85:                                               ; preds = %81, %5
  %86 = phi i64 [ 0, %5 ], [ %84, %81 ]
  %87 = phi i8 [ %8, %5 ], [ %83, %81 ]
  %88 = insertvalue { i64, i8 } poison, i64 %86, 0
  %89 = insertvalue { i64, i8 } %88, i8 %87, 1
  ret { i64, i8 } %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 1099511627776) i64 @libdivide_internal_s32_gen(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
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
define dso_local { i64, i8 } @libdivide_internal_s64_gen(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
define dso_local i32 @target_u32_bfx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i32 30, %5
  br label %29

10:                                               ; preds = %4
  %11 = xor i32 %5, 31
  %12 = shl nuw i32 1, %11
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %1 to i64
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %1, %17
  %19 = sub i32 0, %18
  %20 = shl nuw nsw i64 %16, 1
  %21 = shl i32 %19, 1
  %22 = icmp uge i32 %21, %1
  %23 = icmp slt i32 %19, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i64
  %26 = or disjoint i64 %20, 1
  %27 = add nuw nsw i64 %26, %25
  %28 = and i64 %27, 4294967295
  br label %29

29:                                               ; preds = %8, %10
  %30 = phi i64 [ 0, %8 ], [ %28, %10 ]
  %31 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %32 = zext i32 %0 to i64
  %33 = mul nuw i64 %30, %32
  %34 = lshr i64 %33, 32
  %35 = trunc nuw i64 %34 to i32
  %36 = sub i32 %0, %35
  %37 = lshr i32 %36, 1
  %38 = add i32 %37, %35
  %39 = lshr i32 %38, %31
  br label %40

40:                                               ; preds = %2, %29
  %41 = phi i32 [ %39, %29 ], [ 0, %2 ]
  ret i32 %41
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bfx(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %98, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %67, label %7

7:                                                ; preds = %4
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw i64 1, %11
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %62

14:                                               ; preds = %7
  %15 = shl i64 %1, %8
  %16 = shl i64 %12, %8
  %17 = lshr i64 %15, 32
  %18 = and i64 %15, 4294967295
  %19 = udiv i64 %16, %17
  %20 = mul i64 %19, %17
  %21 = urem i64 %16, %17
  br label %22

22:                                               ; preds = %30, %14
  %23 = phi i64 [ %19, %14 ], [ %31, %30 ]
  %24 = phi i64 [ %21, %14 ], [ %32, %30 ]
  %25 = icmp ugt i64 %23, 4294967295
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = mul nuw i64 %23, %18
  %28 = shl i64 %24, 32
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22
  %31 = add i64 %23, -1
  %32 = add i64 %24, %17
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %22, label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %31, %30 ], [ %23, %26 ]
  %36 = shl i64 %16, 32
  %37 = mul i64 %35, %15
  %38 = sub i64 %36, %37
  %39 = udiv i64 %38, %17
  %40 = mul i64 %39, %17
  %41 = urem i64 %38, %17
  br label %42

42:                                               ; preds = %50, %34
  %43 = phi i64 [ %39, %34 ], [ %51, %50 ]
  %44 = phi i64 [ %41, %34 ], [ %52, %50 ]
  %45 = icmp ugt i64 %43, 4294967295
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = mul nuw i64 %43, %18
  %48 = shl i64 %44, 32
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42
  %51 = add i64 %43, -1
  %52 = add i64 %44, %17
  %53 = icmp ult i64 %52, 4294967296
  br i1 %53, label %42, label %54

54:                                               ; preds = %50, %46
  %55 = phi i64 [ %51, %50 ], [ %43, %46 ]
  %56 = shl i64 %38, 32
  %57 = mul i64 %55, %15
  %58 = sub i64 %56, %57
  %59 = lshr i64 %58, %8
  %60 = shl i64 %35, 32
  %61 = add i64 %55, %60
  br label %62

62:                                               ; preds = %54, %7
  %63 = phi i64 [ %59, %54 ], [ -1, %7 ]
  %64 = phi i64 [ %61, %54 ], [ -1, %7 ]
  %65 = sub i64 %1, %63
  %66 = icmp ult i64 %65, %12
  br i1 %66, label %89, label %70

67:                                               ; preds = %4
  %68 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 2, 0) %1, i1 true)
  %69 = lshr i64 %0, %68
  br label %98

70:                                               ; preds = %62
  %71 = shl i64 %64, 1
  %72 = icmp slt i64 %63, 0
  %73 = shl i64 %63, 1
  %74 = icmp uge i64 %73, %1
  %75 = or i1 %72, %74
  %76 = zext i1 %75 to i64
  %77 = or disjoint i64 %71, %76
  %78 = add i64 %77, 1
  %79 = zext i64 %78 to i128
  %80 = zext i64 %0 to i128
  %81 = mul nuw i128 %79, %80
  %82 = lshr i128 %81, 64
  %83 = trunc nuw i128 %82 to i64
  %84 = zext nneg i32 %10 to i64
  %85 = sub i64 %0, %83
  %86 = lshr i64 %85, 1
  %87 = add i64 %86, %83
  %88 = lshr i64 %87, %84
  br label %98

89:                                               ; preds = %62
  %90 = zext nneg i32 %10 to i64
  %91 = add i64 %64, 1
  %92 = zext i64 %91 to i128
  %93 = zext i64 %0 to i128
  %94 = mul nuw i128 %92, %93
  %95 = lshr i128 %94, 64
  %96 = trunc nuw i128 %95 to i64
  %97 = lshr i64 %96, %90
  br label %98

98:                                               ; preds = %89, %70, %67, %2
  %99 = phi i64 [ 0, %2 ], [ %69, %67 ], [ %88, %70 ], [ %97, %89 ]
  ret i64 %99
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
