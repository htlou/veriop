; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2d2be3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2d2be3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %93, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %72

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %50

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
  %45 = shl nuw i64 %32, 32
  %46 = and i64 %44, 4294967295
  %47 = or disjoint i64 %46, %45
  %48 = mul i64 %1, %47
  %49 = sub i64 0, %48
  br label %50

50:                                               ; preds = %12, %16
  %51 = phi i64 [ %49, %16 ], [ -1, %12 ]
  %52 = phi i64 [ %47, %16 ], [ -1, %12 ]
  %53 = sub i64 %1, %51
  %54 = icmp ult i64 %53, %14
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = trunc nuw nsw i32 %7 to i8
  br label %67

57:                                               ; preds = %50
  %58 = shl i64 %52, 1
  %59 = shl i64 %51, 1
  %60 = icmp uge i64 %59, %1
  %61 = icmp slt i64 %51, 0
  %62 = or i1 %61, %60
  %63 = zext i1 %62 to i64
  %64 = or disjoint i64 %58, %63
  %65 = trunc nuw nsw i32 %7 to i8
  %66 = or disjoint i8 %65, 64
  br label %67

67:                                               ; preds = %55, %57
  %68 = phi i8 [ %66, %57 ], [ %56, %55 ]
  %69 = phi i64 [ %64, %57 ], [ %52, %55 ]
  %70 = add i64 %69, 1
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %10, %67
  %73 = phi i8 [ %11, %10 ], [ %68, %67 ]
  %74 = zext nneg i8 %73 to i64
  %75 = lshr i64 %0, %74
  br label %93

76:                                               ; preds = %67
  %77 = zext i64 %0 to i128
  %78 = zext i64 %70 to i128
  %79 = mul nuw i128 %78, %77
  %80 = lshr i128 %79, 64
  %81 = trunc nuw i128 %80 to i64
  %82 = icmp samesign ult i8 %68, 64
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = sub i64 %0, %81
  %85 = lshr i64 %84, 1
  %86 = add i64 %85, %81
  %87 = and i8 %68, 63
  %88 = zext nneg i8 %87 to i64
  %89 = lshr i64 %86, %88
  br label %93

90:                                               ; preds = %76
  %91 = zext nneg i8 %68 to i64
  %92 = lshr i64 %81, %91
  br label %93

93:                                               ; preds = %90, %83, %72, %2
  %94 = phi i64 [ 0, %2 ], [ %75, %72 ], [ %89, %83 ], [ %92, %90 ]
  ret i64 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %121, label %4

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
  br label %87

19:                                               ; preds = %4
  %20 = sub nsw i32 62, %8
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = icmp ult i64 %22, %6
  br i1 %23, label %24, label %58

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
  %53 = shl nuw i64 %40, 32
  %54 = and i64 %52, 4294967295
  %55 = or disjoint i64 %54, %53
  %56 = mul i64 %6, %55
  %57 = sub i64 0, %56
  br label %58

58:                                               ; preds = %19, %24
  %59 = phi i64 [ %57, %24 ], [ -1, %19 ]
  %60 = phi i64 [ %55, %24 ], [ -1, %19 ]
  %61 = sub i64 %6, %59
  %62 = zext nneg i32 %9 to i64
  %63 = lshr i64 %61, %62
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = trunc nsw i32 %20 to i8
  br label %77

67:                                               ; preds = %58
  %68 = shl i64 %60, 1
  %69 = shl i64 %59, 1
  %70 = icmp uge i64 %69, %6
  %71 = icmp slt i64 %59, 0
  %72 = or i1 %71, %70
  %73 = zext i1 %72 to i64
  %74 = or disjoint i64 %68, %73
  %75 = trunc nuw nsw i32 %9 to i8
  %76 = or disjoint i8 %75, 64
  br label %77

77:                                               ; preds = %65, %67
  %78 = phi i64 [ %74, %67 ], [ %60, %65 ]
  %79 = phi i8 [ %76, %67 ], [ %66, %65 ]
  %80 = add i64 %78, 1
  %81 = or i8 %79, -128
  %82 = xor i64 %78, -1
  %83 = select i1 %5, i8 %81, i8 %79
  %84 = select i1 %5, i64 %82, i64 %80
  %85 = and i8 %83, 63
  %86 = icmp eq i64 %84, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %12, %77
  %88 = phi i8 [ %18, %12 ], [ %85, %77 ]
  %89 = phi i8 [ %17, %12 ], [ %83, %77 ]
  %90 = zext nneg i8 %88 to i64
  %91 = shl nsw i64 -1, %90
  %92 = xor i64 %91, -1
  %93 = icmp slt i64 %0, 0
  %94 = select i1 %93, i64 %92, i64 0
  %95 = add i64 %94, %0
  %96 = ashr i64 %95, %90
  %97 = ashr i8 %89, 7
  %98 = sext i8 %97 to i64
  %99 = xor i64 %96, %98
  %100 = sub nsw i64 %99, %98
  br label %121

101:                                              ; preds = %77
  %102 = sext i64 %0 to i128
  %103 = sext i64 %84 to i128
  %104 = mul nsw i128 %103, %102
  %105 = lshr i128 %104, 64
  %106 = trunc nuw i128 %105 to i64
  %107 = and i8 %83, 64
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %101
  %110 = ashr i8 %83, 7
  %111 = sext i8 %110 to i64
  %112 = xor i64 %0, %111
  %113 = sub i64 %112, %111
  %114 = add i64 %113, %106
  br label %115

115:                                              ; preds = %109, %101
  %116 = phi i64 [ %114, %109 ], [ %106, %101 ]
  %117 = zext nneg i8 %85 to i64
  %118 = ashr i64 %116, %117
  %119 = lshr i64 %118, 63
  %120 = add nsw i64 %119, %118
  br label %121

121:                                              ; preds = %115, %87, %2
  %122 = phi i64 [ 0, %2 ], [ %120, %115 ], [ %100, %87 ]
  ret i64 %122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_bf_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %74, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = sub nuw nsw i64 62, %5
  br label %62

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
  %45 = shl nuw i64 %32, 32
  %46 = and i64 %44, 4294967295
  %47 = or disjoint i64 %46, %45
  %48 = mul i64 %1, %47
  %49 = sub i64 0, %48
  %50 = shl i64 %47, 1
  %51 = or disjoint i64 %50, 1
  br label %52

52:                                               ; preds = %12, %16
  %53 = phi i64 [ %49, %16 ], [ -1, %12 ]
  %54 = phi i64 [ %51, %16 ], [ -1, %12 ]
  %55 = shl i64 %53, 1
  %56 = icmp uge i64 %55, %1
  %57 = icmp slt i64 %53, 0
  %58 = or i1 %57, %56
  %59 = zext i1 %58 to i64
  %60 = zext nneg i32 %7 to i64
  %61 = add i64 %54, %59
  br label %62

62:                                               ; preds = %10, %52
  %63 = phi i64 [ 0, %10 ], [ %61, %52 ]
  %64 = phi i64 [ %11, %10 ], [ %60, %52 ]
  %65 = zext i64 %0 to i128
  %66 = zext i64 %63 to i128
  %67 = mul nuw i128 %66, %65
  %68 = lshr i128 %67, 64
  %69 = trunc nuw i128 %68 to i64
  %70 = sub i64 %0, %69
  %71 = lshr i64 %70, 1
  %72 = add i64 %71, %69
  %73 = lshr i64 %72, %64
  br label %74

74:                                               ; preds = %2, %62
  %75 = phi i64 [ %73, %62 ], [ 0, %2 ]
  ret i64 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_bf_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %94, label %4

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
  br label %71

18:                                               ; preds = %4
  %19 = sub nsw i64 62, %7
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %59

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
  %52 = shl nuw i64 %39, 32
  %53 = and i64 %51, 4294967295
  %54 = or disjoint i64 %53, %52
  %55 = mul i64 %6, %54
  %56 = sub i64 0, %55
  %57 = shl i64 %54, 1
  %58 = or disjoint i64 %57, 1
  br label %59

59:                                               ; preds = %18, %23
  %60 = phi i64 [ %56, %23 ], [ -1, %18 ]
  %61 = phi i64 [ %58, %23 ], [ -1, %18 ]
  %62 = shl i64 %60, 1
  %63 = icmp uge i64 %62, %6
  %64 = icmp slt i64 %60, 0
  %65 = or i1 %64, %63
  %66 = zext i1 %65 to i64
  %67 = trunc nuw nsw i32 %9 to i8
  %68 = add i64 %61, %66
  %69 = select i1 %5, i8 -64, i8 64
  %70 = or disjoint i8 %69, %67
  br label %71

71:                                               ; preds = %12, %59
  %72 = phi i64 [ 0, %12 ], [ %68, %59 ]
  %73 = phi i8 [ %17, %12 ], [ %70, %59 ]
  %74 = and i8 %73, 63
  %75 = ashr i8 %73, 7
  %76 = sext i8 %75 to i64
  %77 = sext i64 %0 to i128
  %78 = sext i64 %72 to i128
  %79 = mul nsw i128 %78, %77
  %80 = lshr i128 %79, 64
  %81 = trunc nuw i128 %80 to i64
  %82 = add nsw i64 %0, %81
  %83 = icmp eq i64 %72, 0
  %84 = sext i1 %83 to i64
  %85 = zext nneg i8 %74 to i64
  %86 = shl nuw i64 1, %85
  %87 = add i64 %86, %84
  %88 = icmp slt i64 %82, 0
  %89 = select i1 %88, i64 %87, i64 0
  %90 = add i64 %89, %82
  %91 = ashr i64 %90, %85
  %92 = xor i64 %91, %76
  %93 = sub nsw i64 %92, %76
  br label %94

94:                                               ; preds = %2, %71
  %95 = phi i64 [ %93, %71 ], [ 0, %2 ]
  ret i64 %95
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
