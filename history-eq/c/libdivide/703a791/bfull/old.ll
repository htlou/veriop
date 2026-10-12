; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/703a791/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/703a791/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_bfull(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %59, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %1, i1 true)
  %9 = or disjoint i32 %8, 128
  br label %37

10:                                               ; preds = %4
  %11 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %12 = xor i32 %11, 31
  %13 = shl nuw i32 1, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %1 to i64
  %17 = udiv i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %1, %18
  %20 = add i32 %19, %1
  %21 = icmp ult i32 %20, %13
  br i1 %21, label %32, label %22

22:                                               ; preds = %10
  %23 = sub i32 0, %19
  %24 = shl nuw nsw i64 %17, 1
  %25 = shl i32 %23, 1
  %26 = icmp uge i32 %25, %1
  %27 = icmp slt i32 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i64
  %30 = or disjoint i64 %24, %29
  %31 = or disjoint i32 %12, 64
  br label %32

32:                                               ; preds = %22, %10
  %33 = phi i32 [ %31, %22 ], [ %12, %10 ]
  %34 = phi i64 [ %30, %22 ], [ %17, %10 ]
  %35 = add nuw nsw i64 %34, 1
  %36 = and i64 %35, 4294967295
  br label %37

37:                                               ; preds = %7, %32
  %38 = phi i64 [ 0, %7 ], [ %36, %32 ]
  %39 = phi i32 [ %9, %7 ], [ %33, %32 ]
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = and i32 %39, 31
  %44 = lshr i32 %0, %43
  br label %59

45:                                               ; preds = %37
  %46 = zext i32 %0 to i64
  %47 = mul nuw i64 %38, %46
  %48 = lshr i64 %47, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = icmp samesign ult i32 %39, 64
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = sub i32 %0, %49
  %53 = lshr i32 %52, 1
  %54 = add i32 %53, %49
  %55 = and i32 %39, 31
  %56 = lshr i32 %54, %55
  br label %59

57:                                               ; preds = %45
  %58 = lshr i32 %49, %39
  br label %59

59:                                               ; preds = %57, %51, %42, %2
  %60 = phi i32 [ 0, %2 ], [ %44, %42 ], [ %56, %51 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bfull(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %98, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %67, label %7

7:                                                ; preds = %4
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
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

62:                                               ; preds = %7, %54
  %63 = phi i64 [ %59, %54 ], [ -1, %7 ]
  %64 = phi i64 [ %61, %54 ], [ -1, %7 ]
  %65 = sub i64 %1, %63
  %66 = icmp ult i64 %65, %12
  br i1 %66, label %89, label %70

67:                                               ; preds = %4
  %68 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1, i1 true)
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
  %10 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %1, i1 true)
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
  %10 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true)
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

72:                                               ; preds = %16, %64
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
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

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
