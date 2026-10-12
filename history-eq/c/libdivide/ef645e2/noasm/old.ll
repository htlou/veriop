; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/ef645e2/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/ef645e2/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_u16(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 range(i16 1, 0) %1, i1 true)
  %7 = trunc nuw nsw i16 %6 to i8
  %8 = xor i8 %7, 15
  %9 = add nuw nsw i32 %5, 65535
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  %13 = zext nneg i8 %8 to i32
  %14 = shl nuw i32 65536, %13
  %15 = udiv i32 %14, %5
  %16 = trunc i32 %15 to i16
  %17 = mul i16 %1, %16
  %18 = add i16 %17, %1
  %19 = zext i16 %18 to i32
  %20 = lshr i32 %19, %13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = sub i16 0, %17
  %24 = shl i16 %16, 1
  %25 = shl i16 %23, 1
  %26 = icmp uge i16 %25, %1
  %27 = icmp slt i16 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i16
  %30 = or disjoint i16 %24, %29
  %31 = or disjoint i8 %8, 64
  br label %32

32:                                               ; preds = %12, %22
  %33 = phi i16 [ %30, %22 ], [ %16, %12 ]
  %34 = phi i8 [ %31, %22 ], [ %8, %12 ]
  %35 = add i16 %33, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4, %32
  %38 = phi i8 [ %34, %32 ], [ %8, %4 ]
  %39 = zext i16 %0 to i32
  %40 = zext nneg i8 %38 to i32
  %41 = lshr i32 %39, %40
  br label %58

42:                                               ; preds = %32
  %43 = zext i16 %35 to i32
  %44 = zext i16 %0 to i32
  %45 = mul nuw i32 %43, %44
  %46 = lshr i32 %45, 16
  %47 = zext nneg i8 %34 to i32
  %48 = icmp samesign ult i8 %34, 64
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = sub nsw i32 %44, %46
  %51 = lshr i32 %50, 1
  %52 = add nuw i32 %51, %46
  %53 = and i32 %52, 65535
  %54 = and i32 %47, 31
  %55 = lshr i32 %53, %54
  br label %58

56:                                               ; preds = %42
  %57 = lshr i32 %46, %47
  br label %58

58:                                               ; preds = %37, %49, %56
  %59 = phi i32 [ %41, %37 ], [ %55, %49 ], [ %57, %56 ]
  %60 = trunc nuw i32 %59 to i16
  br label %61

61:                                               ; preds = %2, %58
  %62 = phi i16 [ %60, %58 ], [ 0, %2 ]
  ret i16 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @target_s16(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = icmp slt i16 %1, 0
  %6 = tail call i16 @llvm.abs.i16(i16 range(i16 1, 0) %1, i1 false)
  %7 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %6, i1 true)
  %8 = xor i16 %7, 15
  %9 = zext i16 %6 to i32
  %10 = add nuw nsw i32 %9, 65535
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = lshr i16 %1, 8
  %15 = and i16 %14, 128
  %16 = or disjoint i16 %8, %15
  %17 = trunc nuw i16 %16 to i8
  %18 = and i8 %17, 15
  br label %53

19:                                               ; preds = %4
  %20 = zext nneg i16 %8 to i32
  %21 = shl nuw nsw i32 32768, %20
  %22 = udiv i32 %21, %9
  %23 = trunc i32 %22 to i16
  %24 = mul i16 %6, %23
  %25 = add i16 %24, %6
  %26 = zext i16 %25 to i32
  %27 = lshr i32 %26, %20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = trunc nuw nsw i16 %7 to i8
  %31 = sub nsw i8 14, %30
  br label %43

32:                                               ; preds = %19
  %33 = sub i16 0, %24
  %34 = shl i16 %23, 1
  %35 = shl i16 %33, 1
  %36 = icmp uge i16 %35, %6
  %37 = icmp slt i16 %33, 0
  %38 = or i1 %37, %36
  %39 = zext i1 %38 to i16
  %40 = or disjoint i16 %34, %39
  %41 = trunc nuw nsw i16 %8 to i8
  %42 = or disjoint i8 %41, 64
  br label %43

43:                                               ; preds = %29, %32
  %44 = phi i16 [ %40, %32 ], [ %23, %29 ]
  %45 = phi i8 [ %42, %32 ], [ %31, %29 ]
  %46 = add i16 %44, 1
  %47 = or i8 %45, -128
  %48 = xor i16 %44, -1
  %49 = select i1 %5, i8 %47, i8 %45
  %50 = select i1 %5, i16 %48, i16 %46
  %51 = and i8 %49, 31
  %52 = icmp eq i16 %50, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %13, %43
  %54 = phi i8 [ %18, %13 ], [ %51, %43 ]
  %55 = phi i8 [ %17, %13 ], [ %49, %43 ]
  %56 = zext nneg i8 %54 to i32
  %57 = shl nsw i32 -1, %56
  %58 = sext i16 %0 to i32
  %59 = lshr i32 %58, 15
  %60 = xor i32 %57, -1
  %61 = and i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = add i16 %0, %62
  %64 = sext i16 %63 to i32
  %65 = ashr i32 %64, %56
  %66 = icmp slt i8 %55, 0
  %67 = select i1 %66, i32 65535, i32 0
  %68 = xor i32 %65, %67
  %69 = sub nsw i32 %68, %67
  br label %92

70:                                               ; preds = %43
  %71 = sext i16 %50 to i32
  %72 = sext i16 %0 to i32
  %73 = mul nsw i32 %71, %72
  %74 = lshr i32 %73, 16
  %75 = and i8 %49, 64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = ashr i8 %49, 7
  %79 = zext i16 %0 to i32
  %80 = sext i8 %78 to i32
  %81 = xor i32 %80, %79
  %82 = sub nsw i32 %74, %80
  %83 = add nsw i32 %82, %81
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i32 [ %83, %77 ], [ %74, %70 ]
  %86 = zext nneg i8 %51 to i32
  %87 = shl i32 %85, 16
  %88 = ashr exact i32 %87, 16
  %89 = ashr i32 %88, %86
  %90 = lshr i32 %89, 31
  %91 = add nsw i32 %90, %89
  br label %92

92:                                               ; preds = %53, %84
  %93 = phi i32 [ %91, %84 ], [ %69, %53 ]
  %94 = trunc i32 %93 to i16
  br label %95

95:                                               ; preds = %2, %92
  %96 = phi i16 [ %94, %92 ], [ 0, %2 ]
  ret i16 %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
define dso_local i64 @target_s64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %123, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 true)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_recover(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %144, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %74

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %51

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
  %49 = shl nuw i64 %31, 32
  %50 = or disjoint i64 %45, %49
  br label %51

51:                                               ; preds = %11, %15
  %52 = phi i64 [ %48, %15 ], [ -1, %11 ]
  %53 = phi i64 [ %50, %15 ], [ -1, %11 ]
  %54 = sub i64 %0, %52
  %55 = icmp ult i64 %54, %13
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = trunc nuw nsw i32 %6 to i8
  br label %68

58:                                               ; preds = %51
  %59 = shl i64 %53, 1
  %60 = shl i64 %52, 1
  %61 = icmp uge i64 %60, %0
  %62 = icmp slt i64 %52, 0
  %63 = or i1 %62, %61
  %64 = zext i1 %63 to i64
  %65 = or disjoint i64 %59, %64
  %66 = trunc nuw nsw i32 %6 to i8
  %67 = or disjoint i8 %66, 64
  br label %68

68:                                               ; preds = %56, %58
  %69 = phi i8 [ %67, %58 ], [ %57, %56 ]
  %70 = phi i64 [ %65, %58 ], [ %53, %56 ]
  %71 = add i64 %70, 1
  %72 = and i8 %69, 63
  %73 = icmp eq i64 %71, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %9, %68
  %75 = phi i8 [ %10, %9 ], [ %72, %68 ]
  %76 = zext nneg i8 %75 to i64
  %77 = shl nuw i64 1, %76
  br label %144

78:                                               ; preds = %68
  %79 = and i8 %69, 64
  %80 = icmp eq i8 %79, 0
  %81 = zext nneg i8 %72 to i64
  %82 = shl nuw i64 1, %81
  br i1 %80, label %83, label %119

83:                                               ; preds = %78
  %84 = icmp ult i64 %82, %71
  br i1 %84, label %85, label %144

85:                                               ; preds = %83
  %86 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %71, i1 true)
  %87 = shl i64 %71, %86
  %88 = shl i64 %82, %86
  %89 = lshr i64 %87, 32
  %90 = udiv i64 %88, %89
  %91 = urem i64 %88, %89
  %92 = and i64 %87, 4294967295
  %93 = mul i64 %90, %92
  %94 = shl nuw i64 %91, 32
  %95 = icmp ugt i64 %93, %94
  %96 = sub nuw i64 %93, %94
  %97 = icmp ugt i64 %96, %87
  %98 = select i1 %97, i64 4294967294, i64 4294967295
  %99 = select i1 %95, i64 %98, i64 0
  %100 = add i64 %99, %90
  %101 = shl i64 %88, 32
  %102 = and i64 %100, 4294967295
  %103 = mul i64 %102, %87
  %104 = sub i64 %101, %103
  %105 = udiv i64 %104, %89
  %106 = urem i64 %104, %89
  %107 = mul i64 %105, %92
  %108 = shl nuw i64 %106, 32
  %109 = icmp ugt i64 %107, %108
  %110 = sub nuw i64 %107, %108
  %111 = icmp ugt i64 %110, %87
  %112 = select i1 %111, i64 4294967294, i64 4294967295
  %113 = select i1 %109, i64 %112, i64 0
  %114 = add i64 %113, %105
  %115 = and i64 %114, 4294967295
  %116 = shl nuw i64 %102, 32
  %117 = or disjoint i64 %116, 1
  %118 = add i64 %117, %115
  br label %144

119:                                              ; preds = %78
  %120 = zext i64 %82 to i128
  %121 = shl nuw i128 %120, 64
  %122 = zext i64 %71 to i128
  %123 = or disjoint i128 %122, 18446744073709551616
  %124 = udiv i128 %121, %123
  %125 = trunc nuw i128 %124 to i64
  %126 = mul nuw i128 %124, %123
  %127 = sub i128 %121, %126
  %128 = trunc i128 %127 to i64
  %129 = lshr i128 %127, 64
  %130 = trunc nuw i128 %129 to i64
  %131 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %128, i64 1)
  %132 = icmp ugt i64 %131, 1
  br i1 %132, label %139, label %133

133:                                              ; preds = %119
  %134 = shl i64 %128, 1
  %135 = icmp eq i64 %131, 1
  %136 = icmp uge i64 %134, %71
  %137 = select i1 %135, i1 %136, i1 false
  %138 = zext i1 %137 to i64
  br label %139

139:                                              ; preds = %133, %119
  %140 = phi i64 [ 1, %119 ], [ %138, %133 ]
  %141 = shl i64 %125, 1
  %142 = or disjoint i64 %141, 1
  %143 = add i64 %142, %140
  br label %144

144:                                              ; preds = %85, %83, %139, %74, %1
  %145 = phi i64 [ 0, %1 ], [ %143, %139 ], [ %77, %74 ], [ %118, %85 ], [ 0, %83 ]
  ret i64 %145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_recover(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %146, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %5, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = xor i32 %7, 63
  %9 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %10 = icmp samesign ult i64 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = lshr i64 %0, 56
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = and i32 %13, 128
  %15 = or disjoint i32 %8, %14
  %16 = trunc nuw i32 %15 to i8
  %17 = and i8 %16, 63
  br label %88

18:                                               ; preds = %3
  %19 = sub nsw i32 62, %7
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %5
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = shl i64 %5, %6
  %25 = shl i64 %21, %6
  %26 = lshr i64 %24, 32
  %27 = udiv i64 %25, %26
  %28 = urem i64 %25, %26
  %29 = and i64 %24, 4294967295
  %30 = mul i64 %27, %29
  %31 = shl nuw i64 %28, 32
  %32 = icmp ugt i64 %30, %31
  %33 = sub nuw i64 %30, %31
  %34 = icmp ugt i64 %33, %24
  %35 = select i1 %34, i64 4294967294, i64 4294967295
  %36 = select i1 %32, i64 %35, i64 0
  %37 = add i64 %36, %27
  %38 = shl i64 %25, 32
  %39 = and i64 %37, 4294967295
  %40 = mul i64 %39, %24
  %41 = sub i64 %38, %40
  %42 = udiv i64 %41, %26
  %43 = urem i64 %41, %26
  %44 = mul i64 %42, %29
  %45 = shl nuw i64 %43, 32
  %46 = icmp ugt i64 %44, %45
  %47 = sub nuw i64 %44, %45
  %48 = icmp ugt i64 %47, %24
  %49 = select i1 %48, i64 4294967294, i64 4294967295
  %50 = select i1 %46, i64 %49, i64 0
  %51 = add i64 %50, %42
  %52 = shl i64 %41, 32
  %53 = and i64 %51, 4294967295
  %54 = mul i64 %53, %24
  %55 = sub i64 %52, %54
  %56 = lshr i64 %55, %6
  %57 = shl nuw i64 %39, 32
  %58 = or disjoint i64 %53, %57
  br label %59

59:                                               ; preds = %18, %23
  %60 = phi i64 [ %56, %23 ], [ -1, %18 ]
  %61 = phi i64 [ %58, %23 ], [ -1, %18 ]
  %62 = sub i64 %5, %60
  %63 = zext nneg i32 %8 to i64
  %64 = lshr i64 %62, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = trunc nsw i32 %19 to i8
  br label %78

68:                                               ; preds = %59
  %69 = shl i64 %61, 1
  %70 = shl i64 %60, 1
  %71 = icmp uge i64 %70, %5
  %72 = icmp slt i64 %60, 0
  %73 = or i1 %72, %71
  %74 = zext i1 %73 to i64
  %75 = or disjoint i64 %69, %74
  %76 = trunc nuw nsw i32 %8 to i8
  %77 = or disjoint i8 %76, 64
  br label %78

78:                                               ; preds = %66, %68
  %79 = phi i64 [ %75, %68 ], [ %61, %66 ]
  %80 = phi i8 [ %77, %68 ], [ %67, %66 ]
  %81 = add i64 %79, 1
  %82 = or i8 %80, -128
  %83 = xor i64 %79, -1
  %84 = select i1 %4, i8 %82, i8 %80
  %85 = select i1 %4, i64 %83, i64 %81
  %86 = and i8 %84, 63
  %87 = icmp eq i64 %85, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %11, %78
  %89 = phi i8 [ %17, %11 ], [ %86, %78 ]
  %90 = phi i8 [ %16, %11 ], [ %84, %78 ]
  %91 = zext nneg i8 %89 to i64
  %92 = shl nuw i64 1, %91
  %93 = sub i64 0, %92
  %94 = icmp slt i8 %90, 0
  %95 = select i1 %94, i64 %93, i64 %92
  br label %146

96:                                               ; preds = %78
  %97 = and i8 %84, 64
  %98 = icmp eq i8 %97, 0
  %99 = icmp slt i64 %85, 1
  %100 = icmp sgt i64 %85, -1
  %101 = select i1 %98, i1 %100, i1 %99
  %102 = sub nsw i64 0, %85
  %103 = select i1 %101, i64 %85, i64 %102
  %104 = zext nneg i8 %86 to i64
  %105 = shl nuw i64 1, %104
  %106 = icmp ult i64 %105, %103
  br i1 %106, label %107, label %140

107:                                              ; preds = %96
  %108 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %103, i1 true)
  %109 = shl i64 %103, %108
  %110 = shl i64 %105, %108
  %111 = lshr i64 %109, 32
  %112 = udiv i64 %110, %111
  %113 = urem i64 %110, %111
  %114 = and i64 %109, 4294967295
  %115 = mul i64 %112, %114
  %116 = shl nuw i64 %113, 32
  %117 = icmp ugt i64 %115, %116
  %118 = sub nuw i64 %115, %116
  %119 = icmp ugt i64 %118, %109
  %120 = select i1 %119, i64 4294967294, i64 4294967295
  %121 = select i1 %117, i64 %120, i64 0
  %122 = add i64 %121, %112
  %123 = shl i64 %110, 32
  %124 = and i64 %122, 4294967295
  %125 = mul i64 %124, %109
  %126 = sub i64 %123, %125
  %127 = udiv i64 %126, %111
  %128 = urem i64 %126, %111
  %129 = mul i64 %127, %114
  %130 = shl nuw i64 %128, 32
  %131 = icmp ugt i64 %129, %130
  %132 = sub nuw i64 %129, %130
  %133 = icmp ugt i64 %132, %109
  %134 = select i1 %133, i64 4294967294, i64 4294967295
  %135 = select i1 %131, i64 %134, i64 0
  %136 = add i64 %135, %127
  %137 = and i64 %136, 4294967295
  %138 = shl nuw i64 %124, 32
  %139 = or disjoint i64 %137, %138
  br label %140

140:                                              ; preds = %96, %107
  %141 = phi i64 [ %139, %107 ], [ -1, %96 ]
  %142 = add i64 %141, 1
  %143 = xor i64 %141, -1
  %144 = icmp slt i8 %84, 0
  %145 = select i1 %144, i64 %143, i64 %142
  br label %146

146:                                              ; preds = %140, %88, %1
  %147 = phi i64 [ 0, %1 ], [ %95, %88 ], [ %145, %140 ]
  ret i64 %147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_div_32_16(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i16 %0 to i32
  %5 = shl nuw i32 %4, 16
  %6 = zext i16 %1 to i32
  %7 = or disjoint i32 %5, %6
  %8 = zext i16 %2 to i32
  %9 = udiv i32 %7, %8
  %10 = trunc i32 %9 to i16
  %11 = mul i16 %2, %10
  %12 = sub i16 %1, %11
  %13 = xor i16 %12, %10
  ret i16 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_div_128_64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %57

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
  %53 = shl nuw i64 %32, 32
  %54 = or disjoint i64 %49, %53
  %55 = mul i64 %52, 3
  %56 = xor i64 %55, %54
  br label %57

57:                                               ; preds = %3, %5
  %58 = phi i64 [ %56, %5 ], [ 2, %3 ]
  ret i64 %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_div_128_128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = zext i64 %0 to i128
  %6 = zext i64 %2 to i128
  %7 = shl nuw i128 %5, 64
  %8 = zext i64 %1 to i128
  %9 = or disjoint i128 %7, %8
  %10 = shl nuw i128 %6, 64
  %11 = zext i64 %3 to i128
  %12 = or disjoint i128 %10, %11
  %13 = udiv i128 %9, %12
  %14 = trunc i128 %13 to i64
  %15 = and i128 %13, 18446744073709551615
  %16 = mul i128 %15, %12
  %17 = sub i128 %9, %16
  %18 = trunc i128 %17 to i64
  %19 = lshr i128 %17, 64
  %20 = trunc nuw i128 %19 to i64
  %21 = mul i64 %20, 3
  %22 = mul i64 %18, 5
  %23 = xor i64 %22, %14
  %24 = xor i64 %23, %21
  ret i64 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #2

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
