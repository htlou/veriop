; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2d2be3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2d2be3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
  %79 = zext i64 %0 to i128
  %80 = zext i64 %72 to i128
  %81 = mul nuw i128 %80, %79
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
  %104 = sext i64 %0 to i128
  %105 = sext i64 %86 to i128
  %106 = mul nsw i128 %105, %104
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
define dso_local i64 @target_u64_bf_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %67 = zext i64 %0 to i128
  %68 = zext i64 %65 to i128
  %69 = mul nuw i128 %68, %67
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
define dso_local i64 @target_s64_bf_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %96, label %4

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
  %79 = sext i64 %0 to i128
  %80 = sext i64 %74 to i128
  %81 = mul nsw i128 %80, %79
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
