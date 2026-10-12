; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_gen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_gen.c"
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

59:                                               ; preds = %7, %51
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
define dso_local zeroext range(i8 0, -128) i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %68, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %68

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = shl i64 %0, %4
  %17 = shl i64 %13, %4
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
  %60 = lshr i64 %59, %4
  br label %61

61:                                               ; preds = %11, %55
  %62 = phi i64 [ %60, %55 ], [ -1, %11 ]
  %63 = sub i64 %0, %62
  %64 = icmp ult i64 %63, %13
  %65 = trunc nuw nsw i32 %6 to i8
  %66 = or disjoint i8 %65, 64
  %67 = select i1 %64, i8 %65, i8 %66
  br label %68

68:                                               ; preds = %61, %9, %1
  %69 = phi i8 [ 0, %1 ], [ %10, %9 ], [ %67, %61 ]
  ret i8 %69
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

63:                                               ; preds = %10, %55
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

68:                                               ; preds = %17, %62
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
  br i1 %3, label %107, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %86

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = shl i64 %1, %5
  %18 = shl i64 %14, %5
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
  %61 = lshr i64 %60, %5
  %62 = shl i64 %37, 32
  %63 = add i64 %57, %62
  br label %64

64:                                               ; preds = %12, %56
  %65 = phi i64 [ %61, %56 ], [ -1, %12 ]
  %66 = phi i64 [ %63, %56 ], [ -1, %12 ]
  %67 = sub i64 %1, %65
  %68 = icmp ult i64 %67, %14
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = trunc nuw nsw i32 %7 to i8
  br label %81

71:                                               ; preds = %64
  %72 = shl i64 %66, 1
  %73 = shl i64 %65, 1
  %74 = icmp uge i64 %73, %1
  %75 = icmp slt i64 %65, 0
  %76 = or i1 %75, %74
  %77 = zext i1 %76 to i64
  %78 = or disjoint i64 %72, %77
  %79 = trunc nuw nsw i32 %7 to i8
  %80 = or disjoint i8 %79, 64
  br label %81

81:                                               ; preds = %69, %71
  %82 = phi i8 [ %80, %71 ], [ %70, %69 ]
  %83 = phi i64 [ %78, %71 ], [ %66, %69 ]
  %84 = add i64 %83, 1
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %10, %81
  %87 = phi i8 [ %11, %10 ], [ %82, %81 ]
  %88 = zext nneg i8 %87 to i64
  %89 = lshr i64 %0, %88
  br label %107

90:                                               ; preds = %81
  %91 = zext i64 %84 to i128
  %92 = zext i64 %0 to i128
  %93 = mul nuw i128 %91, %92
  %94 = lshr i128 %93, 64
  %95 = trunc nuw i128 %94 to i64
  %96 = icmp ult i8 %82, 64
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = sub i64 %0, %95
  %99 = lshr i64 %98, 1
  %100 = add i64 %99, %95
  %101 = and i8 %82, 63
  %102 = zext nneg i8 %101 to i64
  %103 = lshr i64 %100, %102
  br label %107

104:                                              ; preds = %90
  %105 = zext nneg i8 %82 to i64
  %106 = lshr i64 %95, %105
  br label %107

107:                                              ; preds = %104, %97, %86, %2
  %108 = phi i64 [ 0, %2 ], [ %89, %86 ], [ %103, %97 ], [ %106, %104 ]
  ret i64 %108
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
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  %18 = and i8 %17, 63
  br label %101

19:                                               ; preds = %4
  %20 = sub nsw i32 62, %8
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = icmp ult i64 %22, %6
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = shl i64 %6, %7
  %26 = shl i64 %22, %7
  %27 = lshr i64 %25, 32
  %28 = and i64 %25, 4294967295
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
  %43 = icmp ugt i64 %42, 4294967295
  br i1 %43, label %44, label %32

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
  %63 = icmp ugt i64 %62, 4294967295
  br i1 %63, label %64, label %52

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %61, %60 ], [ %53, %56 ]
  %66 = shl i64 %48, 32
  %67 = mul i64 %65, %25
  %68 = sub i64 %66, %67
  %69 = lshr i64 %68, %7
  %70 = shl i64 %45, 32
  %71 = add i64 %65, %70
  br label %72

72:                                               ; preds = %19, %64
  %73 = phi i64 [ %69, %64 ], [ -1, %19 ]
  %74 = phi i64 [ %71, %64 ], [ -1, %19 ]
  %75 = sub i64 %6, %73
  %76 = zext nneg i32 %9 to i64
  %77 = lshr i64 %75, %76
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = trunc nsw i32 %20 to i8
  br label %91

81:                                               ; preds = %72
  %82 = shl i64 %74, 1
  %83 = shl i64 %73, 1
  %84 = icmp uge i64 %83, %6
  %85 = icmp slt i64 %73, 0
  %86 = or i1 %85, %84
  %87 = zext i1 %86 to i64
  %88 = or disjoint i64 %82, %87
  %89 = trunc nuw nsw i32 %9 to i8
  %90 = or disjoint i8 %89, 64
  br label %91

91:                                               ; preds = %79, %81
  %92 = phi i64 [ %88, %81 ], [ %74, %79 ]
  %93 = phi i8 [ %90, %81 ], [ %80, %79 ]
  %94 = add i64 %92, 1
  %95 = or i8 %93, -128
  %96 = xor i64 %92, -1
  %97 = select i1 %5, i8 %95, i8 %93
  %98 = select i1 %5, i64 %96, i64 %94
  %99 = and i8 %97, 63
  %100 = icmp eq i64 %98, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %12, %91
  %102 = phi i8 [ %18, %12 ], [ %99, %91 ]
  %103 = phi i8 [ %17, %12 ], [ %97, %91 ]
  %104 = zext nneg i8 %102 to i64
  %105 = shl nsw i64 -1, %104
  %106 = xor i64 %105, -1
  %107 = icmp slt i64 %0, 0
  %108 = select i1 %107, i64 %106, i64 0
  %109 = add i64 %108, %0
  %110 = ashr i64 %109, %104
  %111 = ashr i8 %103, 7
  %112 = sext i8 %111 to i64
  %113 = xor i64 %110, %112
  %114 = sub nsw i64 %113, %112
  br label %135

115:                                              ; preds = %91
  %116 = sext i64 %98 to i128
  %117 = sext i64 %0 to i128
  %118 = mul nsw i128 %116, %117
  %119 = lshr i128 %118, 64
  %120 = trunc nuw i128 %119 to i64
  %121 = and i8 %97, 64
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %115
  %124 = ashr i8 %97, 7
  %125 = sext i8 %124 to i64
  %126 = xor i64 %0, %125
  %127 = sub i64 %126, %125
  %128 = add i64 %127, %120
  br label %129

129:                                              ; preds = %123, %115
  %130 = phi i64 [ %128, %123 ], [ %120, %115 ]
  %131 = zext nneg i8 %99 to i64
  %132 = ashr i64 %130, %131
  %133 = lshr i64 %132, 63
  %134 = add nsw i64 %133, %132
  br label %135

135:                                              ; preds = %129, %101, %2
  %136 = phi i64 [ 0, %2 ], [ %134, %129 ], [ %114, %101 ]
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
