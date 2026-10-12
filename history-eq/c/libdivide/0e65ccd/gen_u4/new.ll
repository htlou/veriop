; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_gen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %63, label %7

7:                                                ; preds = %3
  %8 = xor i64 %4, 63
  %9 = shl nuw i64 1, %8
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = shl i64 %0, %4
  %13 = shl i64 %9, %4
  %14 = lshr i64 %12, 32
  %15 = udiv i64 %13, %14
  %16 = urem i64 %13, %14
  %17 = and i64 %12, 4294967295
  %18 = mul i64 %15, %17
  %19 = shl nuw i64 %16, 32
  %20 = icmp ugt i64 %18, %19
  %21 = sub nuw i64 %18, %19
  %22 = icmp ugt i64 %21, %12
  %23 = select i1 %22, i64 4294967294, i64 4294967295
  %24 = select i1 %20, i64 %23, i64 0
  %25 = add i64 %24, %15
  %26 = shl i64 %13, 32
  %27 = and i64 %25, 4294967295
  %28 = mul i64 %27, %12
  %29 = sub i64 %26, %28
  %30 = udiv i64 %29, %14
  %31 = urem i64 %29, %14
  %32 = mul i64 %30, %17
  %33 = shl nuw i64 %31, 32
  %34 = icmp ugt i64 %32, %33
  %35 = sub nuw i64 %32, %33
  %36 = icmp ugt i64 %35, %12
  %37 = select i1 %36, i64 4294967294, i64 4294967295
  %38 = select i1 %34, i64 %37, i64 0
  %39 = add i64 %38, %30
  %40 = shl i64 %29, 32
  %41 = and i64 %39, 4294967295
  %42 = mul i64 %41, %12
  %43 = sub i64 %40, %42
  %44 = lshr i64 %43, %4
  %45 = shl nuw i64 %27, 32
  %46 = or disjoint i64 %41, %45
  br label %47

47:                                               ; preds = %7, %11
  %48 = phi i64 [ %44, %11 ], [ -1, %7 ]
  %49 = phi i64 [ %46, %11 ], [ -1, %7 ]
  %50 = sub i64 %0, %48
  %51 = icmp ult i64 %50, %9
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = shl i64 %49, 1
  %54 = shl i64 %48, 1
  %55 = icmp uge i64 %54, %0
  %56 = icmp slt i64 %48, 0
  %57 = or i1 %56, %55
  %58 = zext i1 %57 to i64
  %59 = or disjoint i64 %53, %58
  br label %60

60:                                               ; preds = %47, %52
  %61 = phi i64 [ %59, %52 ], [ %49, %47 ]
  %62 = add i64 %61, 1
  br label %63

63:                                               ; preds = %60, %3, %1
  %64 = phi i64 [ 0, %1 ], [ %62, %60 ], [ 0, %3 ]
  ret i64 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, -128) i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %56

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = shl i64 %0, %4
  %17 = shl i64 %13, %4
  %18 = lshr i64 %16, 32
  %19 = udiv i64 %17, %18
  %20 = urem i64 %17, %18
  %21 = and i64 %16, 4294967295
  %22 = mul i64 %19, %21
  %23 = shl nuw i64 %20, 32
  %24 = icmp ugt i64 %22, %23
  %25 = sub nuw i64 %22, %23
  %26 = icmp ugt i64 %25, %16
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %19
  %30 = shl i64 %17, 32
  %31 = and i64 %29, 4294967295
  %32 = mul i64 %31, %16
  %33 = sub i64 %30, %32
  %34 = udiv i64 %33, %18
  %35 = urem i64 %33, %18
  %36 = mul i64 %34, %21
  %37 = shl nuw i64 %35, 32
  %38 = icmp ugt i64 %36, %37
  %39 = sub nuw i64 %36, %37
  %40 = icmp ugt i64 %39, %16
  %41 = select i1 %40, i64 4294967294, i64 4294967295
  %42 = select i1 %38, i64 %41, i64 0
  %43 = add i64 %42, %34
  %44 = shl i64 %33, 32
  %45 = and i64 %43, 4294967295
  %46 = mul i64 %45, %16
  %47 = sub i64 %44, %46
  %48 = lshr i64 %47, %4
  br label %49

49:                                               ; preds = %11, %15
  %50 = phi i64 [ %48, %15 ], [ -1, %11 ]
  %51 = sub i64 %0, %50
  %52 = icmp ult i64 %51, %13
  %53 = trunc nuw nsw i32 %6 to i8
  %54 = or disjoint i8 %53, 64
  %55 = select i1 %52, i8 %53, i8 %54
  br label %56

56:                                               ; preds = %49, %9, %1
  %57 = phi i8 [ 0, %1 ], [ %10, %9 ], [ %55, %49 ]
  ret i8 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %7 = xor i64 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %70, label %10

10:                                               ; preds = %3
  %11 = sub nsw i64 62, %6
  %12 = and i64 %11, 4294967295
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %5
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = shl i64 %5, %6
  %17 = shl i64 %13, %6
  %18 = lshr i64 %16, 32
  %19 = udiv i64 %17, %18
  %20 = urem i64 %17, %18
  %21 = and i64 %16, 4294967295
  %22 = mul i64 %19, %21
  %23 = shl nuw i64 %20, 32
  %24 = icmp ugt i64 %22, %23
  %25 = sub nuw i64 %22, %23
  %26 = icmp ugt i64 %25, %16
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %19
  %30 = shl i64 %17, 32
  %31 = and i64 %29, 4294967295
  %32 = mul i64 %31, %16
  %33 = sub i64 %30, %32
  %34 = udiv i64 %33, %18
  %35 = urem i64 %33, %18
  %36 = mul i64 %34, %21
  %37 = shl nuw i64 %35, 32
  %38 = icmp ugt i64 %36, %37
  %39 = sub nuw i64 %36, %37
  %40 = icmp ugt i64 %39, %16
  %41 = select i1 %40, i64 4294967294, i64 4294967295
  %42 = select i1 %38, i64 %41, i64 0
  %43 = add i64 %42, %34
  %44 = shl i64 %33, 32
  %45 = and i64 %43, 4294967295
  %46 = mul i64 %45, %16
  %47 = sub i64 %44, %46
  %48 = lshr i64 %47, %6
  %49 = shl nuw i64 %31, 32
  %50 = or disjoint i64 %45, %49
  br label %51

51:                                               ; preds = %10, %15
  %52 = phi i64 [ %48, %15 ], [ -1, %10 ]
  %53 = phi i64 [ %50, %15 ], [ -1, %10 ]
  %54 = sub i64 %5, %52
  %55 = lshr i64 %54, %7
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = shl i64 %53, 1
  %59 = shl i64 %52, 1
  %60 = icmp uge i64 %59, %5
  %61 = icmp slt i64 %52, 0
  %62 = or i1 %61, %60
  %63 = zext i1 %62 to i64
  %64 = or disjoint i64 %58, %63
  br label %65

65:                                               ; preds = %51, %57
  %66 = phi i64 [ %64, %57 ], [ %53, %51 ]
  %67 = add i64 %66, 1
  %68 = xor i64 %66, -1
  %69 = select i1 %4, i64 %68, i64 %67
  br label %70

70:                                               ; preds = %65, %3, %1
  %71 = phi i64 [ 0, %1 ], [ %69, %65 ], [ 0, %3 ]
  ret i64 %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @target_s64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %68, label %3

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
  br label %68

17:                                               ; preds = %3
  %18 = sub nsw i32 62, %7
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = icmp ult i64 %20, %5
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = shl i64 %5, %6
  %24 = shl i64 %20, %6
  %25 = lshr i64 %23, 32
  %26 = udiv i64 %24, %25
  %27 = urem i64 %24, %25
  %28 = and i64 %23, 4294967295
  %29 = mul i64 %26, %28
  %30 = shl nuw i64 %27, 32
  %31 = icmp ugt i64 %29, %30
  %32 = sub nuw i64 %29, %30
  %33 = icmp ugt i64 %32, %23
  %34 = select i1 %33, i64 4294967294, i64 4294967295
  %35 = select i1 %31, i64 %34, i64 0
  %36 = add i64 %35, %26
  %37 = shl i64 %24, 32
  %38 = and i64 %36, 4294967295
  %39 = mul i64 %38, %23
  %40 = sub i64 %37, %39
  %41 = udiv i64 %40, %25
  %42 = urem i64 %40, %25
  %43 = mul i64 %41, %28
  %44 = shl nuw i64 %42, 32
  %45 = icmp ugt i64 %43, %44
  %46 = sub nuw i64 %43, %44
  %47 = icmp ugt i64 %46, %23
  %48 = select i1 %47, i64 4294967294, i64 4294967295
  %49 = select i1 %45, i64 %48, i64 0
  %50 = add i64 %49, %41
  %51 = shl i64 %40, 32
  %52 = and i64 %50, 4294967295
  %53 = mul i64 %52, %23
  %54 = sub i64 %51, %53
  %55 = lshr i64 %54, %6
  br label %56

56:                                               ; preds = %17, %22
  %57 = phi i64 [ %55, %22 ], [ -1, %17 ]
  %58 = sub i64 %5, %57
  %59 = zext nneg i32 %8 to i64
  %60 = lshr i64 %58, %59
  %61 = icmp eq i64 %60, 0
  %62 = trunc nuw nsw i32 %8 to i8
  %63 = or disjoint i8 %62, 64
  %64 = trunc nsw i32 %18 to i8
  %65 = select i1 %61, i8 %64, i8 %63
  %66 = or i8 %65, -128
  %67 = select i1 %4, i8 %66, i8 %65
  br label %68

68:                                               ; preds = %56, %11, %1
  %69 = phi i8 [ 0, %1 ], [ %16, %11 ], [ %67, %56 ]
  ret i8 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %74

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = shl i64 %1, %5
  %18 = shl i64 %14, %5
  %19 = lshr i64 %17, 32
  %20 = udiv i64 %18, %19
  %21 = urem i64 %18, %19
  %22 = and i64 %17, 4294967295
  %23 = mul i64 %20, %22
  %24 = shl nuw i64 %21, 32
  %25 = icmp ugt i64 %23, %24
  %26 = sub nuw i64 %23, %24
  %27 = icmp ugt i64 %26, %17
  %28 = select i1 %27, i64 4294967294, i64 4294967295
  %29 = select i1 %25, i64 %28, i64 0
  %30 = add i64 %29, %20
  %31 = shl i64 %18, 32
  %32 = and i64 %30, 4294967295
  %33 = mul i64 %32, %17
  %34 = sub i64 %31, %33
  %35 = udiv i64 %34, %19
  %36 = urem i64 %34, %19
  %37 = mul i64 %35, %22
  %38 = shl nuw i64 %36, 32
  %39 = icmp ugt i64 %37, %38
  %40 = sub nuw i64 %37, %38
  %41 = icmp ugt i64 %40, %17
  %42 = select i1 %41, i64 4294967294, i64 4294967295
  %43 = select i1 %39, i64 %42, i64 0
  %44 = add i64 %43, %35
  %45 = shl i64 %34, 32
  %46 = and i64 %44, 4294967295
  %47 = mul i64 %46, %17
  %48 = sub i64 %45, %47
  %49 = lshr i64 %48, %5
  %50 = shl nuw i64 %32, 32
  %51 = or disjoint i64 %46, %50
  br label %52

52:                                               ; preds = %12, %16
  %53 = phi i64 [ %49, %16 ], [ -1, %12 ]
  %54 = phi i64 [ %51, %16 ], [ -1, %12 ]
  %55 = sub i64 %1, %53
  %56 = icmp ult i64 %55, %14
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = trunc nuw nsw i32 %7 to i8
  br label %69

59:                                               ; preds = %52
  %60 = shl i64 %54, 1
  %61 = shl i64 %53, 1
  %62 = icmp uge i64 %61, %1
  %63 = icmp slt i64 %53, 0
  %64 = or i1 %63, %62
  %65 = zext i1 %64 to i64
  %66 = or disjoint i64 %60, %65
  %67 = trunc nuw nsw i32 %7 to i8
  %68 = or disjoint i8 %67, 64
  br label %69

69:                                               ; preds = %57, %59
  %70 = phi i8 [ %68, %59 ], [ %58, %57 ]
  %71 = phi i64 [ %66, %59 ], [ %54, %57 ]
  %72 = add i64 %71, 1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %10, %69
  %75 = phi i8 [ %11, %10 ], [ %70, %69 ]
  %76 = zext nneg i8 %75 to i64
  %77 = lshr i64 %0, %76
  br label %95

78:                                               ; preds = %69
  %79 = zext i64 %72 to i128
  %80 = zext i64 %0 to i128
  %81 = mul nuw i128 %79, %80
  %82 = lshr i128 %81, 64
  %83 = trunc nuw i128 %82 to i64
  %84 = icmp samesign ult i8 %70, 64
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = sub i64 %0, %83
  %87 = lshr i64 %86, 1
  %88 = add i64 %87, %83
  %89 = and i8 %70, 63
  %90 = zext nneg i8 %89 to i64
  %91 = lshr i64 %88, %90
  br label %95

92:                                               ; preds = %78
  %93 = zext nneg i8 %70 to i64
  %94 = lshr i64 %83, %93
  br label %95

95:                                               ; preds = %92, %85, %74, %2
  %96 = phi i64 [ 0, %2 ], [ %77, %74 ], [ %91, %85 ], [ %94, %92 ]
  ret i64 %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %123, label %4

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
  br label %89

19:                                               ; preds = %4
  %20 = sub nsw i32 62, %8
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = icmp ult i64 %22, %6
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = shl i64 %6, %7
  %26 = shl i64 %22, %7
  %27 = lshr i64 %25, 32
  %28 = udiv i64 %26, %27
  %29 = urem i64 %26, %27
  %30 = and i64 %25, 4294967295
  %31 = mul i64 %28, %30
  %32 = shl nuw i64 %29, 32
  %33 = icmp ugt i64 %31, %32
  %34 = sub nuw i64 %31, %32
  %35 = icmp ugt i64 %34, %25
  %36 = select i1 %35, i64 4294967294, i64 4294967295
  %37 = select i1 %33, i64 %36, i64 0
  %38 = add i64 %37, %28
  %39 = shl i64 %26, 32
  %40 = and i64 %38, 4294967295
  %41 = mul i64 %40, %25
  %42 = sub i64 %39, %41
  %43 = udiv i64 %42, %27
  %44 = urem i64 %42, %27
  %45 = mul i64 %43, %30
  %46 = shl nuw i64 %44, 32
  %47 = icmp ugt i64 %45, %46
  %48 = sub nuw i64 %45, %46
  %49 = icmp ugt i64 %48, %25
  %50 = select i1 %49, i64 4294967294, i64 4294967295
  %51 = select i1 %47, i64 %50, i64 0
  %52 = add i64 %51, %43
  %53 = shl i64 %42, 32
  %54 = and i64 %52, 4294967295
  %55 = mul i64 %54, %25
  %56 = sub i64 %53, %55
  %57 = lshr i64 %56, %7
  %58 = shl nuw i64 %40, 32
  %59 = or disjoint i64 %54, %58
  br label %60

60:                                               ; preds = %19, %24
  %61 = phi i64 [ %57, %24 ], [ -1, %19 ]
  %62 = phi i64 [ %59, %24 ], [ -1, %19 ]
  %63 = sub i64 %6, %61
  %64 = zext nneg i32 %9 to i64
  %65 = lshr i64 %63, %64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = trunc nsw i32 %20 to i8
  br label %79

69:                                               ; preds = %60
  %70 = shl i64 %62, 1
  %71 = shl i64 %61, 1
  %72 = icmp uge i64 %71, %6
  %73 = icmp slt i64 %61, 0
  %74 = or i1 %73, %72
  %75 = zext i1 %74 to i64
  %76 = or disjoint i64 %70, %75
  %77 = trunc nuw nsw i32 %9 to i8
  %78 = or disjoint i8 %77, 64
  br label %79

79:                                               ; preds = %67, %69
  %80 = phi i64 [ %76, %69 ], [ %62, %67 ]
  %81 = phi i8 [ %78, %69 ], [ %68, %67 ]
  %82 = add i64 %80, 1
  %83 = or i8 %81, -128
  %84 = xor i64 %80, -1
  %85 = select i1 %5, i8 %83, i8 %81
  %86 = select i1 %5, i64 %84, i64 %82
  %87 = and i8 %85, 63
  %88 = icmp eq i64 %86, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %12, %79
  %90 = phi i8 [ %18, %12 ], [ %87, %79 ]
  %91 = phi i8 [ %17, %12 ], [ %85, %79 ]
  %92 = zext nneg i8 %90 to i64
  %93 = shl nsw i64 -1, %92
  %94 = xor i64 %93, -1
  %95 = icmp slt i64 %0, 0
  %96 = select i1 %95, i64 %94, i64 0
  %97 = add i64 %96, %0
  %98 = ashr i64 %97, %92
  %99 = ashr i8 %91, 7
  %100 = sext i8 %99 to i64
  %101 = xor i64 %98, %100
  %102 = sub nsw i64 %101, %100
  br label %123

103:                                              ; preds = %79
  %104 = sext i64 %86 to i128
  %105 = sext i64 %0 to i128
  %106 = mul nsw i128 %104, %105
  %107 = lshr i128 %106, 64
  %108 = trunc nuw i128 %107 to i64
  %109 = and i8 %85, 64
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %103
  %112 = ashr i8 %85, 7
  %113 = sext i8 %112 to i64
  %114 = xor i64 %0, %113
  %115 = sub i64 %114, %113
  %116 = add i64 %115, %108
  br label %117

117:                                              ; preds = %111, %103
  %118 = phi i64 [ %116, %111 ], [ %108, %103 ]
  %119 = zext nneg i8 %87 to i64
  %120 = ashr i64 %118, %119
  %121 = lshr i64 %120, 63
  %122 = add nsw i64 %121, %120
  br label %123

123:                                              ; preds = %117, %89, %2
  %124 = phi i64 [ 0, %2 ], [ %122, %117 ], [ %102, %89 ]
  ret i64 %124
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
