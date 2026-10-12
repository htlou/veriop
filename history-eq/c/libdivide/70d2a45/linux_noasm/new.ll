; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/70d2a45/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/70d2a45/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %59, label %4

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
  br i1 %38, label %39, label %43

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = zext nneg i8 %40 to i32
  %42 = lshr i32 %0, %41
  br label %59

43:                                               ; preds = %34
  %44 = zext i32 %37 to i64
  %45 = zext i32 %0 to i64
  %46 = mul nuw i64 %44, %45
  %47 = lshr i64 %46, 32
  %48 = trunc nuw i64 %47 to i32
  %49 = zext nneg i8 %36 to i32
  %50 = icmp samesign ult i8 %36, 64
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = sub i32 %0, %48
  %53 = lshr i32 %52, 1
  %54 = add i32 %53, %48
  %55 = and i32 %49, 31
  %56 = lshr i32 %54, %55
  br label %59

57:                                               ; preds = %43
  %58 = lshr i32 %48, %49
  br label %59

59:                                               ; preds = %57, %51, %39, %2
  %60 = phi i32 [ 0, %2 ], [ %42, %39 ], [ %56, %51 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %7 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  %16 = and i8 %15, 31
  br label %52

17:                                               ; preds = %4
  %18 = sub nsw i32 30, %7
  %19 = shl nuw nsw i32 1, %18
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = zext i32 %6 to i64
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %6, %24
  %26 = add i32 %25, %6
  %27 = lshr i32 %26, %8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = trunc nsw i32 %18 to i8
  br label %42

31:                                               ; preds = %17
  %32 = sub i32 0, %25
  %33 = shl i32 %24, 1
  %34 = shl i32 %32, 1
  %35 = icmp uge i32 %34, %6
  %36 = icmp slt i32 %32, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i32
  %39 = or disjoint i32 %33, %38
  %40 = trunc nuw nsw i32 %8 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %29, %31
  %43 = phi i32 [ %39, %31 ], [ %24, %29 ]
  %44 = phi i8 [ %41, %31 ], [ %30, %29 ]
  %45 = add i32 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i32 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i32 %47, i32 %45
  %50 = and i8 %48, 31
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %11, %42
  %53 = phi i8 [ %16, %11 ], [ %50, %42 ]
  %54 = phi i8 [ %15, %11 ], [ %48, %42 ]
  %55 = ashr i8 %54, 7
  %56 = sext i8 %55 to i32
  %57 = zext nneg i8 %53 to i32
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = icmp slt i32 %0, 0
  %61 = select i1 %60, i32 %59, i32 0
  %62 = add i32 %61, %0
  %63 = ashr i32 %62, %57
  %64 = xor i32 %63, %56
  %65 = sub i32 %64, %56
  br label %86

66:                                               ; preds = %42
  %67 = sext i32 %49 to i64
  %68 = sext i32 %0 to i64
  %69 = mul nsw i64 %67, %68
  %70 = lshr i64 %69, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = and i8 %48, 64
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = ashr i8 %48, 7
  %76 = sext i8 %75 to i32
  %77 = xor i32 %0, %76
  %78 = sub i32 %77, %76
  %79 = add i32 %78, %71
  br label %80

80:                                               ; preds = %74, %66
  %81 = phi i32 [ %79, %74 ], [ %71, %66 ]
  %82 = zext nneg i8 %50 to i32
  %83 = ashr i32 %81, %82
  %84 = lshr i32 %83, 31
  %85 = add nsw i32 %84, %83
  br label %86

86:                                               ; preds = %80, %52, %2
  %87 = phi i32 [ 0, %2 ], [ %85, %80 ], [ %65, %52 ]
  ret i32 %87
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
define dso_local i32 @target_u32_bf(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %76, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = sub nuw nsw i64 62, %5
  br label %64

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %54

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
  %50 = shl i64 %30, 33
  %51 = shl nuw nsw i64 %46, 1
  %52 = or disjoint i64 %51, %50
  %53 = or disjoint i64 %52, 1
  br label %54

54:                                               ; preds = %12, %16
  %55 = phi i64 [ %49, %16 ], [ -1, %12 ]
  %56 = phi i64 [ %53, %16 ], [ -1, %12 ]
  %57 = shl i64 %55, 1
  %58 = icmp uge i64 %57, %1
  %59 = icmp slt i64 %55, 0
  %60 = or i1 %59, %58
  %61 = zext i1 %60 to i64
  %62 = zext nneg i32 %7 to i64
  %63 = add i64 %56, %61
  br label %64

64:                                               ; preds = %10, %54
  %65 = phi i64 [ 0, %10 ], [ %63, %54 ]
  %66 = phi i64 [ %11, %10 ], [ %62, %54 ]
  %67 = zext i64 %65 to i128
  %68 = zext i64 %0 to i128
  %69 = mul nuw i128 %67, %68
  %70 = lshr i128 %69, 64
  %71 = trunc nuw i128 %70 to i64
  %72 = sub i64 %0, %71
  %73 = lshr i64 %72, 1
  %74 = add i64 %73, %71
  %75 = lshr i64 %74, %66
  br label %76

76:                                               ; preds = %2, %64
  %77 = phi i64 [ %75, %64 ], [ 0, %2 ]
  ret i64 %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bf(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %6 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %5, i1 true)
  %7 = xor i32 %6, 31
  %8 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %5)
  %9 = icmp samesign ult i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = lshr i32 %1, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %7, %12
  %14 = trunc nuw i32 %13 to i8
  br label %37

15:                                               ; preds = %4
  %16 = icmp slt i32 %1, 0
  %17 = sub nsw i32 30, %6
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext i32 %5 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %5, %23
  %25 = sub i32 0, %24
  %26 = shl i32 %23, 1
  %27 = shl i32 %25, 1
  %28 = icmp uge i32 %27, %5
  %29 = icmp slt i32 %25, 0
  %30 = or i1 %29, %28
  %31 = zext i1 %30 to i32
  %32 = trunc nuw nsw i32 %7 to i8
  %33 = or disjoint i32 %26, 1
  %34 = add i32 %33, %31
  %35 = select i1 %16, i8 -64, i8 64
  %36 = or disjoint i8 %35, %32
  br label %37

37:                                               ; preds = %10, %15
  %38 = phi i32 [ 0, %10 ], [ %34, %15 ]
  %39 = phi i8 [ %14, %10 ], [ %36, %15 ]
  %40 = and i8 %39, 31
  %41 = ashr i8 %39, 7
  %42 = sext i8 %41 to i32
  %43 = sext i32 %38 to i64
  %44 = sext i32 %0 to i64
  %45 = mul nsw i64 %43, %44
  %46 = lshr i64 %45, 32
  %47 = trunc nuw i64 %46 to i32
  %48 = add nsw i32 %0, %47
  %49 = icmp eq i32 %38, 0
  %50 = sext i1 %49 to i32
  %51 = zext nneg i8 %40 to i32
  %52 = shl nuw i32 1, %51
  %53 = add i32 %52, %50
  %54 = icmp slt i32 %48, 0
  %55 = select i1 %54, i32 %53, i32 0
  %56 = add i32 %55, %48
  %57 = ashr i32 %56, %51
  %58 = xor i32 %57, %42
  %59 = sub nsw i32 %58, %42
  br label %60

60:                                               ; preds = %2, %37
  %61 = phi i32 [ %59, %37 ], [ 0, %2 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %96, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 true)
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
  br label %73

18:                                               ; preds = %4
  %19 = sub nsw i64 62, %7
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = shl i64 %6, %7
  %25 = shl i64 %21, %7
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
  %56 = lshr i64 %55, %7
  %57 = shl i64 %37, 33
  %58 = shl nuw nsw i64 %53, 1
  %59 = or disjoint i64 %58, %57
  %60 = or disjoint i64 %59, 1
  br label %61

61:                                               ; preds = %18, %23
  %62 = phi i64 [ %56, %23 ], [ -1, %18 ]
  %63 = phi i64 [ %60, %23 ], [ -1, %18 ]
  %64 = shl i64 %62, 1
  %65 = icmp uge i64 %64, %6
  %66 = icmp slt i64 %62, 0
  %67 = or i1 %66, %65
  %68 = zext i1 %67 to i64
  %69 = trunc nuw nsw i32 %9 to i8
  %70 = add i64 %63, %68
  %71 = select i1 %5, i8 -64, i8 64
  %72 = or disjoint i8 %71, %69
  br label %73

73:                                               ; preds = %12, %61
  %74 = phi i64 [ 0, %12 ], [ %70, %61 ]
  %75 = phi i8 [ %17, %12 ], [ %72, %61 ]
  %76 = and i8 %75, 63
  %77 = ashr i8 %75, 7
  %78 = sext i8 %77 to i64
  %79 = sext i64 %74 to i128
  %80 = sext i64 %0 to i128
  %81 = mul nsw i128 %79, %80
  %82 = lshr i128 %81, 64
  %83 = trunc nuw i128 %82 to i64
  %84 = add nsw i64 %0, %83
  %85 = icmp eq i64 %74, 0
  %86 = sext i1 %85 to i64
  %87 = zext nneg i8 %76 to i64
  %88 = shl nuw i64 1, %87
  %89 = add i64 %88, %86
  %90 = icmp slt i64 %84, 0
  %91 = select i1 %90, i64 %89, i64 0
  %92 = add i64 %91, %84
  %93 = ashr i64 %92, %87
  %94 = xor i64 %93, %78
  %95 = sub nsw i64 %94, %78
  br label %96

96:                                               ; preds = %2, %73
  %97 = phi i64 [ %95, %73 ], [ 0, %2 ]
  ret i64 %97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_recover(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %0, i1 true)
  %5 = xor i32 %4, 31
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %0)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = trunc nuw nsw i32 %5 to i8
  br label %39

10:                                               ; preds = %3
  %11 = shl nuw i32 1, %5
  %12 = zext i32 %11 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %0 to i64
  %15 = udiv i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = mul i32 %0, %16
  %18 = add i32 %17, %0
  %19 = icmp ult i32 %18, %11
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = trunc nuw nsw i32 %5 to i8
  br label %33

22:                                               ; preds = %10
  %23 = sub i32 0, %17
  %24 = shl i32 %16, 1
  %25 = shl i32 %23, 1
  %26 = icmp uge i32 %25, %0
  %27 = icmp slt i32 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i32
  %30 = or disjoint i32 %24, %29
  %31 = trunc nuw nsw i32 %5 to i8
  %32 = or disjoint i8 %31, 64
  br label %33

33:                                               ; preds = %20, %22
  %34 = phi i32 [ %30, %22 ], [ %16, %20 ]
  %35 = phi i8 [ %32, %22 ], [ %21, %20 ]
  %36 = add i32 %34, 1
  %37 = and i8 %35, 31
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %8, %33
  %40 = phi i8 [ %9, %8 ], [ %37, %33 ]
  %41 = zext nneg i8 %40 to i32
  %42 = shl nuw i32 1, %41
  br label %70

43:                                               ; preds = %33
  %44 = and i8 %35, 64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = zext nneg i8 %37 to i32
  %48 = shl nuw i32 1, %47
  %49 = zext i32 %48 to i64
  %50 = shl nuw i64 %49, 32
  %51 = zext i32 %36 to i64
  %52 = udiv i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = add i32 %53, 1
  br label %70

55:                                               ; preds = %43
  %56 = or disjoint i8 %37, 32
  %57 = zext nneg i8 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = zext i32 %36 to i64
  %60 = or disjoint i64 %59, 4294967296
  %61 = udiv i64 %58, %60
  %62 = trunc nuw i64 %61 to i32
  %63 = urem i64 %58, %60
  %64 = shl i32 %62, 1
  %65 = shl nuw nsw i64 %63, 1
  %66 = icmp samesign uge i64 %65, %60
  %67 = zext i1 %66 to i32
  %68 = or disjoint i32 %64, 1
  %69 = add i32 %68, %67
  br label %70

70:                                               ; preds = %55, %46, %39, %1
  %71 = phi i32 [ 0, %1 ], [ %69, %55 ], [ %54, %46 ], [ %42, %39 ]
  ret i32 %71
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

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
