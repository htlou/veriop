; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c"
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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
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
define dso_local i64 @target_s64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %135, label %4

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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %89, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = sub nuw nsw i64 62, %5
  br label %76

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %66

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
  %62 = shl i64 %37, 33
  %63 = shl i64 %57, 1
  %64 = add i64 %63, %62
  %65 = or disjoint i64 %64, 1
  br label %66

66:                                               ; preds = %12, %56
  %67 = phi i64 [ %61, %56 ], [ -1, %12 ]
  %68 = phi i64 [ %65, %56 ], [ -1, %12 ]
  %69 = shl i64 %67, 1
  %70 = icmp uge i64 %69, %1
  %71 = icmp slt i64 %67, 0
  %72 = or i1 %71, %70
  %73 = zext i1 %72 to i64
  %74 = zext nneg i32 %7 to i64
  %75 = add i64 %68, %73
  br label %76

76:                                               ; preds = %10, %66
  %77 = phi i64 [ 0, %10 ], [ %75, %66 ]
  %78 = phi i64 [ %11, %10 ], [ %74, %66 ]
  %79 = and i64 %78, 63
  %80 = zext i64 %77 to i128
  %81 = zext i64 %0 to i128
  %82 = mul nuw i128 %80, %81
  %83 = lshr i128 %82, 64
  %84 = trunc nuw i128 %83 to i64
  %85 = sub i64 %0, %84
  %86 = lshr i64 %85, 1
  %87 = add i64 %86, %84
  %88 = lshr i64 %87, %79
  br label %89

89:                                               ; preds = %2, %76
  %90 = phi i64 [ %88, %76 ], [ 0, %2 ]
  ret i64 %90
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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %108, label %4

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
  br label %85

18:                                               ; preds = %4
  %19 = sub nsw i64 62, %7
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %73

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
  %69 = shl i64 %44, 33
  %70 = shl i64 %64, 1
  %71 = add i64 %70, %69
  %72 = or disjoint i64 %71, 1
  br label %73

73:                                               ; preds = %18, %63
  %74 = phi i64 [ %68, %63 ], [ -1, %18 ]
  %75 = phi i64 [ %72, %63 ], [ -1, %18 ]
  %76 = shl i64 %74, 1
  %77 = icmp uge i64 %76, %6
  %78 = icmp slt i64 %74, 0
  %79 = or i1 %78, %77
  %80 = zext i1 %79 to i64
  %81 = trunc nuw nsw i32 %9 to i8
  %82 = add i64 %75, %80
  %83 = select i1 %5, i8 -64, i8 64
  %84 = or disjoint i8 %83, %81
  br label %85

85:                                               ; preds = %12, %73
  %86 = phi i64 [ 0, %12 ], [ %82, %73 ]
  %87 = phi i8 [ %17, %12 ], [ %84, %73 ]
  %88 = and i8 %87, 63
  %89 = ashr i8 %87, 7
  %90 = sext i8 %89 to i64
  %91 = sext i64 %86 to i128
  %92 = sext i64 %0 to i128
  %93 = mul nsw i128 %91, %92
  %94 = lshr i128 %93, 64
  %95 = trunc nuw i128 %94 to i64
  %96 = add nsw i64 %0, %95
  %97 = icmp eq i64 %86, 0
  %98 = sext i1 %97 to i64
  %99 = zext nneg i8 %88 to i64
  %100 = shl nuw i64 1, %99
  %101 = add i64 %100, %98
  %102 = icmp slt i64 %96, 0
  %103 = select i1 %102, i64 %101, i64 0
  %104 = add i64 %103, %96
  %105 = ashr i64 %104, %99
  %106 = xor i64 %105, %90
  %107 = sub nsw i64 %106, %90
  br label %108

108:                                              ; preds = %2, %85
  %109 = phi i64 [ %107, %85 ], [ 0, %2 ]
  ret i64 %109
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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_recover(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %168, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %86

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %63

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
  %61 = shl i64 %36, 32
  %62 = add i64 %56, %61
  br label %63

63:                                               ; preds = %11, %55
  %64 = phi i64 [ %60, %55 ], [ -1, %11 ]
  %65 = phi i64 [ %62, %55 ], [ -1, %11 ]
  %66 = sub i64 %0, %64
  %67 = icmp ult i64 %66, %13
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = trunc nuw nsw i32 %6 to i8
  br label %80

70:                                               ; preds = %63
  %71 = shl i64 %65, 1
  %72 = shl i64 %64, 1
  %73 = icmp uge i64 %72, %0
  %74 = icmp slt i64 %64, 0
  %75 = or i1 %74, %73
  %76 = zext i1 %75 to i64
  %77 = or disjoint i64 %71, %76
  %78 = trunc nuw nsw i32 %6 to i8
  %79 = or disjoint i8 %78, 64
  br label %80

80:                                               ; preds = %68, %70
  %81 = phi i8 [ %79, %70 ], [ %69, %68 ]
  %82 = phi i64 [ %77, %70 ], [ %65, %68 ]
  %83 = add i64 %82, 1
  %84 = and i8 %81, 63
  %85 = icmp eq i64 %83, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %9, %80
  %87 = phi i8 [ %10, %9 ], [ %84, %80 ]
  %88 = zext nneg i8 %87 to i64
  %89 = shl nuw i64 1, %88
  br label %168

90:                                               ; preds = %80
  %91 = and i8 %81, 64
  %92 = icmp eq i8 %91, 0
  %93 = zext nneg i8 %84 to i64
  %94 = shl nuw i64 1, %93
  br i1 %92, label %95, label %143

95:                                               ; preds = %90
  %96 = icmp ult i64 %94, %83
  br i1 %96, label %97, label %168

97:                                               ; preds = %95
  %98 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %83, i1 true)
  %99 = shl i64 %83, %98
  %100 = shl i64 %94, %98
  %101 = lshr i64 %99, 32
  %102 = and i64 %99, 4294967295
  %103 = udiv i64 %100, %101
  %104 = mul i64 %103, %101
  %105 = urem i64 %100, %101
  br label %106

106:                                              ; preds = %114, %97
  %107 = phi i64 [ %103, %97 ], [ %115, %114 ]
  %108 = phi i64 [ %105, %97 ], [ %116, %114 ]
  %109 = icmp ugt i64 %107, 4294967295
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = mul nuw i64 %107, %102
  %112 = shl i64 %108, 32
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110, %106
  %115 = add i64 %107, -1
  %116 = add i64 %108, %101
  %117 = icmp ugt i64 %116, 4294967295
  br i1 %117, label %118, label %106

118:                                              ; preds = %114, %110
  %119 = phi i64 [ %115, %114 ], [ %107, %110 ]
  %120 = shl i64 %100, 32
  %121 = mul i64 %119, %99
  %122 = sub i64 %120, %121
  %123 = udiv i64 %122, %101
  %124 = mul i64 %123, %101
  %125 = urem i64 %122, %101
  br label %126

126:                                              ; preds = %134, %118
  %127 = phi i64 [ %123, %118 ], [ %135, %134 ]
  %128 = phi i64 [ %125, %118 ], [ %136, %134 ]
  %129 = icmp ugt i64 %127, 4294967295
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = mul nuw i64 %127, %102
  %132 = shl i64 %128, 32
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130, %126
  %135 = add i64 %127, -1
  %136 = add i64 %128, %101
  %137 = icmp ugt i64 %136, 4294967295
  br i1 %137, label %138, label %126

138:                                              ; preds = %134, %130
  %139 = phi i64 [ %135, %134 ], [ %127, %130 ]
  %140 = shl i64 %119, 32
  %141 = or disjoint i64 %140, 1
  %142 = add i64 %141, %139
  br label %168

143:                                              ; preds = %90
  %144 = zext i64 %94 to i128
  %145 = shl nuw i128 %144, 64
  %146 = zext i64 %83 to i128
  %147 = or disjoint i128 %146, 18446744073709551616
  %148 = udiv i128 %145, %147
  %149 = trunc nuw i128 %148 to i64
  %150 = mul nuw i128 %148, %147
  %151 = sub i128 %145, %150
  %152 = trunc i128 %151 to i64
  %153 = lshr i128 %151, 64
  %154 = trunc nuw i128 %153 to i64
  %155 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %152, i64 1)
  %156 = icmp ugt i64 %155, 1
  br i1 %156, label %163, label %157

157:                                              ; preds = %143
  %158 = shl i64 %152, 1
  %159 = icmp eq i64 %155, 1
  %160 = icmp uge i64 %158, %83
  %161 = select i1 %159, i1 %160, i1 false
  %162 = zext i1 %161 to i64
  br label %163

163:                                              ; preds = %157, %143
  %164 = phi i64 [ 1, %143 ], [ %162, %157 ]
  %165 = shl i64 %149, 1
  %166 = or disjoint i64 %165, 1
  %167 = add i64 %166, %164
  br label %168

168:                                              ; preds = %138, %95, %163, %86, %1
  %169 = phi i64 [ 0, %1 ], [ %167, %163 ], [ %89, %86 ], [ %142, %138 ], [ 0, %95 ]
  ret i64 %169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_recover(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %77, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 0
  %5 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %0, i1 false)
  %6 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %5, i1 true)
  %7 = xor i32 %6, 31
  %8 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %5)
  %9 = icmp samesign ult i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = lshr i32 %0, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %7, %12
  %14 = trunc nuw i32 %13 to i8
  %15 = and i8 %14, 31
  br label %51

16:                                               ; preds = %3
  %17 = sub nsw i32 30, %6
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext i32 %5 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %5, %23
  %25 = add i32 %24, %5
  %26 = lshr i32 %25, %7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = trunc nsw i32 %17 to i8
  br label %41

30:                                               ; preds = %16
  %31 = sub i32 0, %24
  %32 = shl i32 %23, 1
  %33 = shl i32 %31, 1
  %34 = icmp uge i32 %33, %5
  %35 = icmp slt i32 %31, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i32
  %38 = or disjoint i32 %32, %37
  %39 = trunc nuw nsw i32 %7 to i8
  %40 = or disjoint i8 %39, 64
  br label %41

41:                                               ; preds = %28, %30
  %42 = phi i32 [ %38, %30 ], [ %23, %28 ]
  %43 = phi i8 [ %40, %30 ], [ %29, %28 ]
  %44 = add i32 %42, 1
  %45 = or i8 %43, -128
  %46 = xor i32 %42, -1
  %47 = select i1 %4, i8 %45, i8 %43
  %48 = select i1 %4, i32 %46, i32 %44
  %49 = and i8 %47, 31
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %10, %41
  %52 = phi i8 [ %15, %10 ], [ %49, %41 ]
  %53 = phi i8 [ %14, %10 ], [ %47, %41 ]
  %54 = zext nneg i8 %52 to i32
  %55 = shl nuw i32 1, %54
  %56 = sub i32 0, %55
  %57 = icmp slt i8 %53, 0
  %58 = select i1 %57, i32 %56, i32 %55
  br label %77

59:                                               ; preds = %41
  %60 = and i8 %47, 64
  %61 = icmp eq i8 %60, 0
  %62 = icmp slt i32 %48, 1
  %63 = icmp sgt i32 %48, -1
  %64 = select i1 %61, i1 %63, i1 %62
  %65 = sub nsw i32 0, %48
  %66 = select i1 %64, i32 %48, i32 %65
  %67 = or disjoint i8 %49, 32
  %68 = zext nneg i8 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = zext i32 %66 to i64
  %71 = udiv i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, 1
  %74 = xor i32 %72, -1
  %75 = icmp slt i8 %47, 0
  %76 = select i1 %75, i32 %74, i32 %73
  br label %77

77:                                               ; preds = %59, %51, %1
  %78 = phi i32 [ 0, %1 ], [ %58, %51 ], [ %76, %59 ]
  ret i32 %78
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_recover(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %170, label %3

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
  br label %100

18:                                               ; preds = %3
  %19 = sub nsw i32 62, %7
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %5
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = shl i64 %5, %6
  %25 = shl i64 %21, %6
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
  %68 = lshr i64 %67, %6
  %69 = shl i64 %44, 32
  %70 = add i64 %64, %69
  br label %71

71:                                               ; preds = %18, %63
  %72 = phi i64 [ %68, %63 ], [ -1, %18 ]
  %73 = phi i64 [ %70, %63 ], [ -1, %18 ]
  %74 = sub i64 %5, %72
  %75 = zext nneg i32 %8 to i64
  %76 = lshr i64 %74, %75
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = trunc nsw i32 %19 to i8
  br label %90

80:                                               ; preds = %71
  %81 = shl i64 %73, 1
  %82 = shl i64 %72, 1
  %83 = icmp uge i64 %82, %5
  %84 = icmp slt i64 %72, 0
  %85 = or i1 %84, %83
  %86 = zext i1 %85 to i64
  %87 = or disjoint i64 %81, %86
  %88 = trunc nuw nsw i32 %8 to i8
  %89 = or disjoint i8 %88, 64
  br label %90

90:                                               ; preds = %78, %80
  %91 = phi i64 [ %87, %80 ], [ %73, %78 ]
  %92 = phi i8 [ %89, %80 ], [ %79, %78 ]
  %93 = add i64 %91, 1
  %94 = or i8 %92, -128
  %95 = xor i64 %91, -1
  %96 = select i1 %4, i8 %94, i8 %92
  %97 = select i1 %4, i64 %95, i64 %93
  %98 = and i8 %96, 63
  %99 = icmp eq i64 %97, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %11, %90
  %101 = phi i8 [ %17, %11 ], [ %98, %90 ]
  %102 = phi i8 [ %16, %11 ], [ %96, %90 ]
  %103 = zext nneg i8 %101 to i64
  %104 = shl nuw i64 1, %103
  %105 = sub i64 0, %104
  %106 = icmp slt i8 %102, 0
  %107 = select i1 %106, i64 %105, i64 %104
  br label %170

108:                                              ; preds = %90
  %109 = and i8 %96, 64
  %110 = icmp eq i8 %109, 0
  %111 = icmp slt i64 %97, 1
  %112 = icmp sgt i64 %97, -1
  %113 = select i1 %110, i1 %112, i1 %111
  %114 = sub nsw i64 0, %97
  %115 = select i1 %113, i64 %97, i64 %114
  %116 = zext nneg i8 %98 to i64
  %117 = shl nuw i64 1, %116
  %118 = icmp ult i64 %117, %115
  br i1 %118, label %119, label %164

119:                                              ; preds = %108
  %120 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %115, i1 true)
  %121 = shl i64 %115, %120
  %122 = shl i64 %117, %120
  %123 = lshr i64 %121, 32
  %124 = and i64 %121, 4294967295
  %125 = udiv i64 %122, %123
  %126 = mul i64 %125, %123
  %127 = urem i64 %122, %123
  br label %128

128:                                              ; preds = %136, %119
  %129 = phi i64 [ %125, %119 ], [ %137, %136 ]
  %130 = phi i64 [ %127, %119 ], [ %138, %136 ]
  %131 = icmp ugt i64 %129, 4294967295
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = mul nuw i64 %129, %124
  %134 = shl i64 %130, 32
  %135 = icmp ugt i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132, %128
  %137 = add i64 %129, -1
  %138 = add i64 %130, %123
  %139 = icmp ugt i64 %138, 4294967295
  br i1 %139, label %140, label %128

140:                                              ; preds = %136, %132
  %141 = phi i64 [ %137, %136 ], [ %129, %132 ]
  %142 = shl i64 %122, 32
  %143 = mul i64 %141, %121
  %144 = sub i64 %142, %143
  %145 = udiv i64 %144, %123
  %146 = mul i64 %145, %123
  %147 = urem i64 %144, %123
  br label %148

148:                                              ; preds = %156, %140
  %149 = phi i64 [ %145, %140 ], [ %157, %156 ]
  %150 = phi i64 [ %147, %140 ], [ %158, %156 ]
  %151 = icmp ugt i64 %149, 4294967295
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = mul nuw i64 %149, %124
  %154 = shl i64 %150, 32
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152, %148
  %157 = add i64 %149, -1
  %158 = add i64 %150, %123
  %159 = icmp ugt i64 %158, 4294967295
  br i1 %159, label %160, label %148

160:                                              ; preds = %156, %152
  %161 = phi i64 [ %157, %156 ], [ %149, %152 ]
  %162 = shl i64 %141, 32
  %163 = add i64 %161, %162
  br label %164

164:                                              ; preds = %108, %160
  %165 = phi i64 [ %163, %160 ], [ -1, %108 ]
  %166 = add i64 %165, 1
  %167 = xor i64 %165, -1
  %168 = icmp slt i8 %96, 0
  %169 = select i1 %168, i64 %167, i64 %166
  br label %170

170:                                              ; preds = %164, %100, %1
  %171 = phi i64 [ 0, %1 ], [ %107, %100 ], [ %169, %164 ]
  ret i64 %171
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
