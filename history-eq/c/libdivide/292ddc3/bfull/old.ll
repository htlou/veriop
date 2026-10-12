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
define dso_local { i64, i8 } @libdivide_internal_s64_gen(i64 noundef %0, i32 %1) local_unnamed_addr #1 {
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
define dso_local i32 @target_u32_bfull(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = or disjoint i32 %6, 128
  br label %36

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
  br i1 %20, label %31, label %21

21:                                               ; preds = %11
  %22 = sub i32 0, %18
  %23 = shl nuw nsw i64 %16, 1
  %24 = shl i32 %22, 1
  %25 = icmp uge i32 %24, %1
  %26 = icmp slt i32 %22, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i64
  %29 = or disjoint i64 %23, %28
  %30 = or disjoint i32 %6, 64
  br label %31

31:                                               ; preds = %21, %11
  %32 = phi i32 [ %30, %21 ], [ %6, %11 ]
  %33 = phi i64 [ %29, %21 ], [ %16, %11 ]
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 4294967295
  br label %36

36:                                               ; preds = %9, %31
  %37 = phi i64 [ 0, %9 ], [ %35, %31 ]
  %38 = phi i32 [ %10, %9 ], [ %32, %31 ]
  %39 = and i32 %38, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = and i32 %38, 31
  %43 = lshr i32 %0, %42
  br label %58

44:                                               ; preds = %36
  %45 = zext i32 %0 to i64
  %46 = mul nuw i64 %37, %45
  %47 = lshr i64 %46, 32
  %48 = trunc nuw i64 %47 to i32
  %49 = icmp samesign ult i32 %38, 64
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = sub i32 %0, %48
  %52 = lshr i32 %51, 1
  %53 = add i32 %52, %48
  %54 = and i32 %38, 31
  %55 = lshr i32 %53, %54
  br label %58

56:                                               ; preds = %44
  %57 = lshr i32 %48, %38
  br label %58

58:                                               ; preds = %56, %50, %41, %2
  %59 = phi i32 [ 0, %2 ], [ %43, %41 ], [ %55, %50 ], [ %57, %56 ]
  ret i32 %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bfull(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %97, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  %10 = zext nneg i32 %7 to i64
  br i1 %9, label %67, label %11

11:                                               ; preds = %4
  %12 = shl nuw i64 1, %10
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %62

14:                                               ; preds = %11
  %15 = shl i64 %1, %5
  %16 = shl i64 %12, %5
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
  %59 = lshr i64 %58, %5
  %60 = shl i64 %35, 32
  %61 = add i64 %55, %60
  br label %62

62:                                               ; preds = %54, %11
  %63 = phi i64 [ %59, %54 ], [ -1, %11 ]
  %64 = phi i64 [ %61, %54 ], [ -1, %11 ]
  %65 = sub i64 %1, %63
  %66 = icmp ult i64 %65, %12
  br i1 %66, label %88, label %69

67:                                               ; preds = %4
  %68 = lshr i64 %0, %10
  br label %97

69:                                               ; preds = %62
  %70 = shl i64 %64, 1
  %71 = icmp slt i64 %63, 0
  %72 = shl i64 %63, 1
  %73 = icmp uge i64 %72, %1
  %74 = or i1 %71, %73
  %75 = zext i1 %74 to i64
  %76 = or disjoint i64 %70, %75
  %77 = add i64 %76, 1
  %78 = zext i64 %77 to i128
  %79 = zext i64 %0 to i128
  %80 = mul nuw i128 %78, %79
  %81 = lshr i128 %80, 64
  %82 = trunc nuw i128 %81 to i64
  %83 = zext nneg i32 %7 to i64
  %84 = sub i64 %0, %82
  %85 = lshr i64 %84, 1
  %86 = add i64 %85, %82
  %87 = lshr i64 %86, %83
  br label %97

88:                                               ; preds = %62
  %89 = zext nneg i32 %7 to i64
  %90 = add i64 %64, 1
  %91 = zext i64 %90 to i128
  %92 = zext i64 %0 to i128
  %93 = mul nuw i128 %91, %92
  %94 = lshr i128 %93, 64
  %95 = trunc nuw i128 %94 to i64
  %96 = lshr i64 %95, %89
  br label %97

97:                                               ; preds = %88, %69, %67, %2
  %98 = phi i64 [ 0, %2 ], [ %68, %67 ], [ %87, %69 ], [ %96, %88 ]
  ret i64 %98
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bfull(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 true)
  %7 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %6)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %1, i1 true)
  %11 = lshr i32 %1, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %10, %12
  %14 = or disjoint i32 %13, 32
  br label %49

15:                                               ; preds = %4
  %16 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %17 = xor i32 %16, 31
  %18 = sub nuw nsw i32 30, %16
  %19 = shl nuw nsw i32 1, %18
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = zext nneg i32 %6 to i64
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %6, %24
  %26 = add i32 %25, %6
  %27 = lshr i32 %26, %17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %15
  %30 = sub i32 0, %25
  %31 = shl i32 %24, 1
  %32 = shl i32 %30, 1
  %33 = icmp uge i32 %32, %6
  %34 = icmp slt i32 %30, 0
  %35 = or i1 %34, %33
  %36 = zext i1 %35 to i32
  %37 = or disjoint i32 %31, %36
  %38 = lshr i32 %1, 24
  %39 = and i32 %38, 128
  %40 = or disjoint i32 %39, %17
  %41 = or disjoint i32 %40, 64
  br label %42

42:                                               ; preds = %29, %15
  %43 = phi i32 [ %41, %29 ], [ %18, %15 ]
  %44 = phi i32 [ %37, %29 ], [ %24, %15 ]
  %45 = add i32 %44, 1
  %46 = xor i32 %44, -1
  %47 = select i1 %5, i32 %46, i32 %45
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %9, %42
  %50 = phi i64 [ 0, %9 ], [ %48, %42 ]
  %51 = phi i32 [ %14, %9 ], [ %43, %42 ]
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = and i32 %51, 31
  %56 = shl nsw i32 -1, %55
  %57 = xor i32 %56, -1
  %58 = icmp slt i32 %0, 0
  %59 = select i1 %58, i32 %57, i32 0
  %60 = add nsw i32 %59, %0
  %61 = ashr i32 %60, %55
  %62 = shl nuw i32 %51, 24
  %63 = ashr i32 %62, 31
  %64 = xor i32 %61, %63
  %65 = sub nsw i32 %64, %63
  br label %86

66:                                               ; preds = %49
  %67 = sext i32 %0 to i64
  %68 = mul nsw i64 %50, %67
  %69 = lshr i64 %68, 32
  %70 = trunc nuw i64 %69 to i32
  %71 = and i32 %51, 64
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = shl nuw i32 %51, 24
  %75 = lshr i32 %51, 7
  %76 = ashr i32 %74, 31
  %77 = xor i32 %76, %0
  %78 = add i32 %75, %70
  %79 = add i32 %78, %77
  br label %80

80:                                               ; preds = %73, %66
  %81 = phi i32 [ %79, %73 ], [ %70, %66 ]
  %82 = and i32 %51, 31
  %83 = ashr i32 %81, %82
  %84 = lshr i32 %83, 31
  %85 = add nsw i32 %84, %83
  br label %86

86:                                               ; preds = %80, %54, %2
  %87 = phi i32 [ 0, %2 ], [ %65, %54 ], [ %85, %80 ]
  ret i32 %87
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_bfull(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %138, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 true)
  %7 = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %6)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1, i1 true)
  %11 = trunc nuw nsw i64 %10 to i8
  %12 = lshr i64 %1, 56
  %13 = trunc nuw i64 %12 to i8
  %14 = and i8 %13, -128
  %15 = or disjoint i8 %14, %11
  br label %102

16:                                               ; preds = %4
  %17 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 true)
  %18 = trunc nuw nsw i64 %17 to i32
  %19 = xor i32 %18, 63
  %20 = sub nuw nsw i32 62, %18
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw nsw i64 1, %21
  %23 = icmp samesign ult i64 %22, %6
  br i1 %23, label %24, label %72

24:                                               ; preds = %16
  %25 = shl i64 %6, %17
  %26 = shl i64 %22, %17
  %27 = lshr i64 %25, 32
  %28 = and i64 %25, 4294967294
  %29 = udiv i64 %26, %27
  %30 = mul i64 %29, %27
  %31 = urem i64 %26, %27
  br label %32

32:                                               ; preds = %40, %24
  %33 = phi i64 [ %29, %24 ], [ %41, %40 ]
  %34 = phi i64 [ %31, %24 ], [ %42, %40 ]
  %35 = icmp ugt i64 %33, 4294967295
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = mul nuw i64 %33, %28
  %38 = shl i64 %34, 32
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32
  %41 = add i64 %33, -1
  %42 = add i64 %34, %27
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %32, label %44

44:                                               ; preds = %40, %36
  %45 = phi i64 [ %41, %40 ], [ %33, %36 ]
  %46 = shl i64 %26, 32
  %47 = mul i64 %45, %25
  %48 = sub i64 %46, %47
  %49 = udiv i64 %48, %27
  %50 = mul i64 %49, %27
  %51 = urem i64 %48, %27
  br label %52

52:                                               ; preds = %60, %44
  %53 = phi i64 [ %49, %44 ], [ %61, %60 ]
  %54 = phi i64 [ %51, %44 ], [ %62, %60 ]
  %55 = icmp ugt i64 %53, 4294967295
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = mul nuw i64 %53, %28
  %58 = shl i64 %54, 32
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %52
  %61 = add i64 %53, -1
  %62 = add i64 %54, %27
  %63 = icmp ult i64 %62, 4294967296
  br i1 %63, label %52, label %64

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %61, %60 ], [ %53, %56 ]
  %66 = shl i64 %48, 32
  %67 = mul i64 %65, %25
  %68 = sub i64 %66, %67
  %69 = lshr i64 %68, %17
  %70 = shl i64 %45, 32
  %71 = add i64 %65, %70
  br label %72

72:                                               ; preds = %64, %16
  %73 = phi i64 [ %69, %64 ], [ -1, %16 ]
  %74 = phi i64 [ %71, %64 ], [ -1, %16 ]
  %75 = sub i64 %6, %73
  %76 = zext nneg i32 %19 to i64
  %77 = lshr i64 %75, %76
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = trunc nuw nsw i32 %20 to i8
  br label %95

81:                                               ; preds = %72
  %82 = shl i64 %74, 1
  %83 = shl i64 %73, 1
  %84 = icmp uge i64 %83, %6
  %85 = icmp slt i64 %73, 0
  %86 = or i1 %85, %84
  %87 = zext i1 %86 to i64
  %88 = or disjoint i64 %82, %87
  %89 = lshr i64 %1, 56
  %90 = trunc nuw nsw i64 %89 to i32
  %91 = and i32 %90, 128
  %92 = or disjoint i32 %19, %91
  %93 = trunc nuw i32 %92 to i8
  %94 = or disjoint i8 %93, 64
  br label %95

95:                                               ; preds = %79, %81
  %96 = phi i8 [ %80, %79 ], [ %94, %81 ]
  %97 = phi i64 [ %74, %79 ], [ %88, %81 ]
  %98 = add i64 %97, 1
  %99 = xor i64 %97, -1
  %100 = select i1 %5, i64 %99, i64 %98
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %9, %95
  %103 = phi i8 [ %15, %9 ], [ %96, %95 ]
  %104 = and i8 %103, 63
  %105 = zext nneg i8 %104 to i64
  %106 = shl nsw i64 -1, %105
  %107 = xor i64 %106, -1
  %108 = icmp slt i64 %0, 0
  %109 = select i1 %108, i64 %107, i64 0
  %110 = add nsw i64 %109, %0
  %111 = ashr i64 %110, %105
  %112 = ashr i8 %103, 7
  %113 = sext i8 %112 to i64
  %114 = xor i64 %111, %113
  %115 = sub nsw i64 %114, %113
  br label %138

116:                                              ; preds = %95
  %117 = sext i64 %100 to i128
  %118 = sext i64 %0 to i128
  %119 = mul nsw i128 %117, %118
  %120 = lshr i128 %119, 64
  %121 = trunc nuw i128 %120 to i64
  %122 = zext i8 %96 to i32
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %116
  %126 = ashr i8 %96, 7
  %127 = sext i8 %126 to i64
  %128 = xor i64 %0, %127
  %129 = sub i64 %128, %127
  %130 = add nsw i64 %129, %121
  br label %131

131:                                              ; preds = %125, %116
  %132 = phi i64 [ %130, %125 ], [ %121, %116 ]
  %133 = and i32 %122, 63
  %134 = zext nneg i32 %133 to i64
  %135 = ashr i64 %132, %134
  %136 = lshr i64 %135, 63
  %137 = add nsw i64 %136, %135
  br label %138

138:                                              ; preds = %131, %102, %2
  %139 = phi i64 [ 0, %2 ], [ %115, %102 ], [ %137, %131 ]
  ret i64 %139
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
