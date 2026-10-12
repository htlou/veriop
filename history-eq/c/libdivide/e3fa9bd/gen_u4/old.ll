; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e3fa9bd/wrap_gen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e3fa9bd/wrap_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %75, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %75, label %7

7:                                                ; preds = %3
  %8 = xor i64 %4, 63
  %9 = shl nuw i64 1, %8
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = shl i64 %0, %4
  %13 = shl i64 %9, %4
  %14 = lshr i64 %12, 32
  %15 = and i64 %12, 4294967295
  %16 = udiv i64 %13, %14
  %17 = mul i64 %16, %14
  %18 = urem i64 %13, %14
  br label %19

19:                                               ; preds = %27, %11
  %20 = phi i64 [ %16, %11 ], [ %28, %27 ]
  %21 = phi i64 [ %18, %11 ], [ %29, %27 ]
  %22 = icmp ugt i64 %20, 4294967295
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = mul nuw i64 %20, %15
  %25 = shl i64 %21, 32
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %19
  %28 = add i64 %20, -1
  %29 = add i64 %21, %14
  %30 = icmp ugt i64 %29, 4294967295
  br i1 %30, label %31, label %19

31:                                               ; preds = %27, %23
  %32 = phi i64 [ %28, %27 ], [ %20, %23 ]
  %33 = shl i64 %13, 32
  %34 = mul i64 %32, %12
  %35 = sub i64 %33, %34
  %36 = udiv i64 %35, %14
  %37 = mul i64 %36, %14
  %38 = urem i64 %35, %14
  br label %39

39:                                               ; preds = %47, %31
  %40 = phi i64 [ %36, %31 ], [ %48, %47 ]
  %41 = phi i64 [ %38, %31 ], [ %49, %47 ]
  %42 = icmp ugt i64 %40, 4294967295
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = mul nuw i64 %40, %15
  %45 = shl i64 %41, 32
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %39
  %48 = add i64 %40, -1
  %49 = add i64 %41, %14
  %50 = icmp ugt i64 %49, 4294967295
  br i1 %50, label %51, label %39

51:                                               ; preds = %47, %43
  %52 = phi i64 [ %48, %47 ], [ %40, %43 ]
  %53 = shl i64 %35, 32
  %54 = mul i64 %52, %12
  %55 = sub i64 %53, %54
  %56 = lshr i64 %55, %4
  %57 = shl i64 %32, 32
  %58 = add i64 %52, %57
  br label %59

59:                                               ; preds = %51, %7
  %60 = phi i64 [ %56, %51 ], [ -1, %7 ]
  %61 = phi i64 [ %58, %51 ], [ -1, %7 ]
  %62 = sub i64 %0, %60
  %63 = icmp ult i64 %62, %9
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  %65 = shl i64 %61, 1
  %66 = shl i64 %60, 1
  %67 = icmp uge i64 %66, %0
  %68 = icmp slt i64 %60, 0
  %69 = or i1 %68, %67
  %70 = zext i1 %69 to i64
  %71 = or disjoint i64 %65, %70
  br label %72

72:                                               ; preds = %59, %64
  %73 = phi i64 [ %71, %64 ], [ %61, %59 ]
  %74 = add i64 %73, 1
  br label %75

75:                                               ; preds = %72, %3, %1
  %76 = phi i64 [ 0, %1 ], [ %74, %72 ], [ 0, %3 ]
  ret i64 %76
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext range(i8 0, -64) i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %69, label %3

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
  br label %69

12:                                               ; preds = %3
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %0
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = shl i64 %0, %4
  %18 = shl i64 %14, %4
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
  %35 = icmp ugt i64 %34, 4294967295
  br i1 %35, label %36, label %24

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
  %55 = icmp ugt i64 %54, 4294967295
  br i1 %55, label %56, label %44

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %53, %52 ], [ %45, %48 ]
  %58 = shl i64 %40, 32
  %59 = mul i64 %57, %17
  %60 = sub i64 %58, %59
  %61 = lshr i64 %60, %4
  br label %62

62:                                               ; preds = %56, %12
  %63 = phi i64 [ %61, %56 ], [ -1, %12 ]
  %64 = sub i64 %0, %63
  %65 = icmp ult i64 %64, %14
  %66 = trunc nuw nsw i32 %6 to i8
  %67 = or disjoint i8 %66, 64
  %68 = select i1 %65, i8 %66, i8 %67
  br label %69

69:                                               ; preds = %62, %9, %1
  %70 = phi i8 [ 0, %1 ], [ %11, %9 ], [ %68, %62 ]
  ret i8 %70
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %82, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %7 = xor i64 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %82, label %10

10:                                               ; preds = %3
  %11 = sub nsw i64 62, %6
  %12 = and i64 %11, 4294967295
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %5
  br i1 %14, label %15, label %63

15:                                               ; preds = %10
  %16 = shl i64 %5, %6
  %17 = shl i64 %13, %6
  %18 = lshr i64 %16, 32
  %19 = and i64 %16, 4294967295
  %20 = udiv i64 %17, %18
  %21 = mul i64 %20, %18
  %22 = urem i64 %17, %18
  br label %23

23:                                               ; preds = %31, %15
  %24 = phi i64 [ %20, %15 ], [ %32, %31 ]
  %25 = phi i64 [ %22, %15 ], [ %33, %31 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %19
  %29 = shl i64 %25, 32
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = add i64 %24, -1
  %33 = add i64 %25, %18
  %34 = icmp ugt i64 %33, 4294967295
  br i1 %34, label %35, label %23

35:                                               ; preds = %31, %27
  %36 = phi i64 [ %32, %31 ], [ %24, %27 ]
  %37 = shl i64 %17, 32
  %38 = mul i64 %36, %16
  %39 = sub i64 %37, %38
  %40 = udiv i64 %39, %18
  %41 = mul i64 %40, %18
  %42 = urem i64 %39, %18
  br label %43

43:                                               ; preds = %51, %35
  %44 = phi i64 [ %40, %35 ], [ %52, %51 ]
  %45 = phi i64 [ %42, %35 ], [ %53, %51 ]
  %46 = icmp ugt i64 %44, 4294967295
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = mul nuw i64 %44, %19
  %49 = shl i64 %45, 32
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = add i64 %44, -1
  %53 = add i64 %45, %18
  %54 = icmp ugt i64 %53, 4294967295
  br i1 %54, label %55, label %43

55:                                               ; preds = %51, %47
  %56 = phi i64 [ %52, %51 ], [ %44, %47 ]
  %57 = shl i64 %39, 32
  %58 = mul i64 %56, %16
  %59 = sub i64 %57, %58
  %60 = lshr i64 %59, %6
  %61 = shl i64 %36, 32
  %62 = add i64 %56, %61
  br label %63

63:                                               ; preds = %55, %10
  %64 = phi i64 [ %60, %55 ], [ -1, %10 ]
  %65 = phi i64 [ %62, %55 ], [ -1, %10 ]
  %66 = sub i64 %5, %64
  %67 = lshr i64 %66, %7
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %63
  %70 = shl i64 %65, 1
  %71 = shl i64 %64, 1
  %72 = icmp uge i64 %71, %5
  %73 = icmp slt i64 %64, 0
  %74 = or i1 %73, %72
  %75 = zext i1 %74 to i64
  %76 = or disjoint i64 %70, %75
  br label %77

77:                                               ; preds = %63, %69
  %78 = phi i64 [ %76, %69 ], [ %65, %63 ]
  %79 = add i64 %78, 1
  %80 = xor i64 %78, -1
  %81 = select i1 %4, i64 %80, i64 %79
  br label %82

82:                                               ; preds = %77, %3, %1
  %83 = phi i64 [ 0, %1 ], [ %81, %77 ], [ 0, %3 ]
  ret i64 %83
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i8 @target_s64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %80, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = xor i32 %7, 63
  %9 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %10 = icmp samesign ult i64 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = lshr i64 %0, 56
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = and i32 %13, 128
  %15 = or disjoint i32 %8, %14
  %16 = trunc nuw i32 %15 to i8
  br label %80

17:                                               ; preds = %3
  %18 = sub nsw i32 62, %7
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = icmp ult i64 %20, %5
  br i1 %21, label %22, label %68

22:                                               ; preds = %17
  %23 = shl i64 %5, %6
  %24 = shl i64 %20, %6
  %25 = lshr i64 %23, 32
  %26 = and i64 %23, 4294967295
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
  %41 = icmp ugt i64 %40, 4294967295
  br i1 %41, label %42, label %30

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
  %61 = icmp ugt i64 %60, 4294967295
  br i1 %61, label %62, label %50

62:                                               ; preds = %58, %54
  %63 = phi i64 [ %59, %58 ], [ %51, %54 ]
  %64 = shl i64 %46, 32
  %65 = mul i64 %63, %23
  %66 = sub i64 %64, %65
  %67 = lshr i64 %66, %6
  br label %68

68:                                               ; preds = %62, %17
  %69 = phi i64 [ %67, %62 ], [ -1, %17 ]
  %70 = sub i64 %5, %69
  %71 = zext nneg i32 %8 to i64
  %72 = lshr i64 %70, %71
  %73 = icmp eq i64 %72, 0
  %74 = trunc nuw nsw i32 %8 to i8
  %75 = or disjoint i8 %74, 64
  %76 = trunc nsw i32 %18 to i8
  %77 = select i1 %73, i8 %76, i8 %75
  %78 = or i8 %77, -128
  %79 = select i1 %4, i8 %78, i8 %77
  br label %80

80:                                               ; preds = %68, %11, %1
  %81 = phi i8 [ 0, %1 ], [ %16, %11 ], [ %79, %68 ]
  ret i8 %81
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %33 = icmp ugt i64 %32, 4294967295
  br i1 %33, label %34, label %22

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
  %53 = icmp ugt i64 %52, 4294967295
  br i1 %53, label %54, label %42

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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %135, label %4

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
  br label %99

18:                                               ; preds = %4
  %19 = sub nsw i32 62, %8
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = shl i64 %6, %7
  %25 = shl i64 %21, %7
  %26 = lshr i64 %24, 32
  %27 = and i64 %24, 4294967295
  %28 = udiv i64 %25, %26
  %29 = mul i64 %28, %26
  %30 = urem i64 %25, %26
  br label %31

31:                                               ; preds = %39, %23
  %32 = phi i64 [ %28, %23 ], [ %40, %39 ]
  %33 = phi i64 [ %30, %23 ], [ %41, %39 ]
  %34 = icmp ugt i64 %32, 4294967295
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = mul nuw i64 %32, %27
  %37 = shl i64 %33, 32
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31
  %40 = add i64 %32, -1
  %41 = add i64 %33, %26
  %42 = icmp ugt i64 %41, 4294967295
  br i1 %42, label %43, label %31

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %40, %39 ], [ %32, %35 ]
  %45 = shl i64 %25, 32
  %46 = mul i64 %44, %24
  %47 = sub i64 %45, %46
  %48 = udiv i64 %47, %26
  %49 = mul i64 %48, %26
  %50 = urem i64 %47, %26
  br label %51

51:                                               ; preds = %59, %43
  %52 = phi i64 [ %48, %43 ], [ %60, %59 ]
  %53 = phi i64 [ %50, %43 ], [ %61, %59 ]
  %54 = icmp ugt i64 %52, 4294967295
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = mul nuw i64 %52, %27
  %57 = shl i64 %53, 32
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = add i64 %52, -1
  %61 = add i64 %53, %26
  %62 = icmp ugt i64 %61, 4294967295
  br i1 %62, label %63, label %51

63:                                               ; preds = %59, %55
  %64 = phi i64 [ %60, %59 ], [ %52, %55 ]
  %65 = shl i64 %47, 32
  %66 = mul i64 %64, %24
  %67 = sub i64 %65, %66
  %68 = lshr i64 %67, %7
  %69 = shl i64 %44, 32
  %70 = add i64 %64, %69
  br label %71

71:                                               ; preds = %63, %18
  %72 = phi i64 [ %68, %63 ], [ -1, %18 ]
  %73 = phi i64 [ %70, %63 ], [ -1, %18 ]
  %74 = sub i64 %6, %72
  %75 = zext nneg i32 %9 to i64
  %76 = lshr i64 %74, %75
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = trunc nsw i32 %19 to i8
  br label %90

80:                                               ; preds = %71
  %81 = shl i64 %73, 1
  %82 = shl i64 %72, 1
  %83 = icmp uge i64 %82, %6
  %84 = icmp slt i64 %72, 0
  %85 = or i1 %84, %83
  %86 = zext i1 %85 to i64
  %87 = or disjoint i64 %81, %86
  %88 = trunc nuw nsw i32 %9 to i8
  %89 = or disjoint i8 %88, 64
  br label %90

90:                                               ; preds = %78, %80
  %91 = phi i64 [ %87, %80 ], [ %73, %78 ]
  %92 = phi i8 [ %89, %80 ], [ %79, %78 ]
  %93 = add i64 %91, 1
  %94 = or i8 %92, -128
  %95 = xor i64 %91, -1
  %96 = select i1 %5, i8 %94, i8 %92
  %97 = select i1 %5, i64 %95, i64 %93
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %12, %90
  %100 = phi i8 [ %17, %12 ], [ %96, %90 ]
  %101 = and i8 %100, 63
  %102 = zext nneg i8 %101 to i64
  %103 = shl nsw i64 -1, %102
  %104 = xor i64 %103, -1
  %105 = icmp slt i64 %0, 0
  %106 = select i1 %105, i64 %104, i64 0
  %107 = add i64 %106, %0
  %108 = ashr i64 %107, %102
  %109 = ashr i8 %100, 7
  %110 = sext i8 %109 to i64
  %111 = xor i64 %108, %110
  %112 = sub nsw i64 %111, %110
  br label %135

113:                                              ; preds = %90
  %114 = sext i64 %97 to i128
  %115 = sext i64 %0 to i128
  %116 = mul nsw i128 %114, %115
  %117 = lshr i128 %116, 64
  %118 = trunc nuw i128 %117 to i64
  %119 = zext i8 %96 to i32
  %120 = and i32 %119, 64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %113
  %123 = ashr i8 %96, 7
  %124 = sext i8 %123 to i64
  %125 = xor i64 %0, %124
  %126 = sub i64 %125, %124
  %127 = add i64 %126, %118
  br label %128

128:                                              ; preds = %122, %113
  %129 = phi i64 [ %127, %122 ], [ %118, %113 ]
  %130 = and i32 %119, 63
  %131 = zext nneg i32 %130 to i64
  %132 = ashr i64 %129, %131
  %133 = lshr i64 %132, 63
  %134 = add nsw i64 %133, %132
  br label %135

135:                                              ; preds = %128, %99, %2
  %136 = phi i64 [ 0, %2 ], [ %112, %99 ], [ %134, %128 ]
  ret i64 %136
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
