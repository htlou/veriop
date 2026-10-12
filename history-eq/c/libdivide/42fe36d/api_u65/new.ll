; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/42fe36d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/42fe36d/wrap.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %59, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %1, i1 true)
  %9 = or disjoint i32 %8, 128
  br label %37

10:                                               ; preds = %4
  %11 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %12 = xor i32 %11, 31
  %13 = lshr exact i32 -2147483648, %11
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %85, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 true)
  %7 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %6)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  %11 = lshr i32 %1, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %10, %12
  %14 = or disjoint i32 %13, 32
  br label %48

15:                                               ; preds = %4
  %16 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %17 = sub nuw nsw i32 30, %16
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext nneg i32 %6 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %6, %23
  %25 = add i32 %24, %6
  %26 = lshr exact i32 -2147483648, %16
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %15
  %29 = sub i32 0, %24
  %30 = shl i32 %23, 1
  %31 = shl i32 %29, 1
  %32 = icmp uge i32 %31, %6
  %33 = icmp slt i32 %29, 0
  %34 = or i1 %33, %32
  %35 = zext i1 %34 to i32
  %36 = or disjoint i32 %30, %35
  %37 = lshr i32 %1, 24
  %38 = and i32 %37, 128
  %39 = or disjoint i32 %16, %38
  %40 = xor i32 %39, 95
  br label %41

41:                                               ; preds = %28, %15
  %42 = phi i32 [ %40, %28 ], [ %17, %15 ]
  %43 = phi i32 [ %36, %28 ], [ %23, %15 ]
  %44 = add i32 %43, 1
  %45 = xor i32 %43, -1
  %46 = select i1 %5, i32 %45, i32 %44
  %47 = sext i32 %46 to i64
  br label %48

48:                                               ; preds = %9, %41
  %49 = phi i64 [ 0, %9 ], [ %47, %41 ]
  %50 = phi i32 [ %14, %9 ], [ %42, %41 ]
  %51 = and i32 %50, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = and i32 %50, 31
  %55 = shl nsw i32 -1, %54
  %56 = xor i32 %55, -1
  %57 = icmp slt i32 %0, 0
  %58 = select i1 %57, i32 %56, i32 0
  %59 = add nsw i32 %58, %0
  %60 = ashr i32 %59, %54
  %61 = shl nuw i32 %50, 24
  %62 = ashr i32 %61, 31
  %63 = xor i32 %60, %62
  %64 = sub nsw i32 %63, %62
  br label %85

65:                                               ; preds = %48
  %66 = sext i32 %0 to i64
  %67 = mul nsw i64 %49, %66
  %68 = lshr i64 %67, 32
  %69 = trunc nuw i64 %68 to i32
  %70 = and i32 %50, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = shl nuw i32 %50, 24
  %74 = lshr i32 %50, 7
  %75 = ashr i32 %73, 31
  %76 = xor i32 %75, %0
  %77 = add i32 %74, %69
  %78 = add i32 %77, %76
  br label %79

79:                                               ; preds = %72, %65
  %80 = phi i32 [ %78, %72 ], [ %69, %65 ]
  %81 = and i32 %50, 31
  %82 = ashr i32 %80, %81
  %83 = lshr i32 %82, 31
  %84 = add nsw i32 %83, %82
  br label %85

85:                                               ; preds = %79, %53, %2
  %86 = phi i32 [ 0, %2 ], [ %64, %53 ], [ %84, %79 ]
  ret i32 %86
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %113, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %79, label %7

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
  %16 = lshr i64 %15, 32
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %12, %8
  %19 = udiv i64 %18, %16
  %20 = mul i64 %19, %16
  %21 = urem i64 %18, %16
  br label %22

22:                                               ; preds = %30, %14
  %23 = phi i64 [ %19, %14 ], [ %31, %30 ]
  %24 = phi i64 [ %21, %14 ], [ %32, %30 ]
  %25 = icmp ugt i64 %23, 4294967295
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = mul nuw i64 %23, %17
  %28 = shl i64 %24, 32
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22
  %31 = add i64 %23, -1
  %32 = add i64 %24, %16
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %22, label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %31, %30 ], [ %23, %26 ]
  %36 = shl i64 %18, 32
  %37 = mul i64 %35, %15
  %38 = sub i64 %36, %37
  %39 = udiv i64 %38, %16
  %40 = mul i64 %39, %16
  %41 = urem i64 %38, %16
  br label %42

42:                                               ; preds = %50, %34
  %43 = phi i64 [ %39, %34 ], [ %51, %50 ]
  %44 = phi i64 [ %41, %34 ], [ %52, %50 ]
  %45 = icmp ugt i64 %43, 4294967295
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = mul nuw i64 %43, %17
  %48 = shl i64 %44, 32
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42
  %51 = add i64 %43, -1
  %52 = add i64 %44, %16
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
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = trunc nuw nsw i32 %10 to i8
  br label %82

69:                                               ; preds = %62
  %70 = shl i64 %64, 1
  %71 = shl i64 %63, 1
  %72 = icmp uge i64 %71, %1
  %73 = icmp slt i64 %63, 0
  %74 = or i1 %73, %72
  %75 = zext i1 %74 to i64
  %76 = or disjoint i64 %70, %75
  %77 = trunc nuw nsw i32 %10 to i8
  %78 = or disjoint i8 %77, 64
  br label %82

79:                                               ; preds = %4
  %80 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1, i1 true)
  %81 = lshr i64 %0, %80
  br label %113

82:                                               ; preds = %69, %67
  %83 = phi i8 [ %68, %67 ], [ %78, %69 ]
  %84 = phi i64 [ %64, %67 ], [ %76, %69 ]
  %85 = add i64 %84, 1
  %86 = lshr i64 %85, 32
  %87 = lshr i64 %0, 32
  %88 = and i64 %85, 4294967295
  %89 = and i64 %0, 4294967295
  %90 = mul nuw i64 %88, %89
  %91 = lshr i64 %90, 32
  %92 = mul nuw i64 %88, %87
  %93 = mul nuw i64 %86, %89
  %94 = mul nuw i64 %86, %87
  %95 = add nuw i64 %91, %93
  %96 = and i64 %95, 4294967295
  %97 = lshr i64 %95, 32
  %98 = add nuw i64 %97, %94
  %99 = add nuw i64 %96, %92
  %100 = lshr i64 %99, 32
  %101 = add nuw i64 %98, %100
  %102 = icmp samesign ult i8 %83, 64
  br i1 %102, label %110, label %103

103:                                              ; preds = %82
  %104 = sub i64 %0, %101
  %105 = lshr i64 %104, 1
  %106 = add i64 %105, %101
  %107 = and i8 %83, 63
  %108 = zext nneg i8 %107 to i64
  %109 = lshr i64 %106, %108
  br label %113

110:                                              ; preds = %82
  %111 = zext nneg i8 %83 to i64
  %112 = lshr i64 %101, %111
  br label %113

113:                                              ; preds = %110, %103, %79, %2
  %114 = phi i64 [ 0, %2 ], [ %81, %79 ], [ %109, %103 ], [ %112, %110 ]
  ret i64 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %149, label %4

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
  %26 = lshr i64 %25, 32
  %27 = and i64 %25, 4294967294
  %28 = shl i64 %22, %17
  %29 = udiv i64 %28, %26
  %30 = mul i64 %29, %26
  %31 = urem i64 %28, %26
  br label %32

32:                                               ; preds = %40, %24
  %33 = phi i64 [ %29, %24 ], [ %41, %40 ]
  %34 = phi i64 [ %31, %24 ], [ %42, %40 ]
  %35 = icmp ugt i64 %33, 4294967295
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = mul nuw i64 %33, %27
  %38 = shl i64 %34, 32
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32
  %41 = add i64 %33, -1
  %42 = add i64 %34, %26
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %32, label %44

44:                                               ; preds = %40, %36
  %45 = phi i64 [ %41, %40 ], [ %33, %36 ]
  %46 = shl i64 %28, 32
  %47 = mul i64 %45, %25
  %48 = sub i64 %46, %47
  %49 = udiv i64 %48, %26
  %50 = mul i64 %49, %26
  %51 = urem i64 %48, %26
  br label %52

52:                                               ; preds = %60, %44
  %53 = phi i64 [ %49, %44 ], [ %61, %60 ]
  %54 = phi i64 [ %51, %44 ], [ %62, %60 ]
  %55 = icmp ugt i64 %53, 4294967295
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = mul nuw i64 %53, %27
  %58 = shl i64 %54, 32
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %52
  %61 = add i64 %53, -1
  %62 = add i64 %54, %26
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
  %96 = phi i64 [ %74, %79 ], [ %88, %81 ]
  %97 = phi i8 [ %80, %79 ], [ %94, %81 ]
  %98 = add i64 %96, 1
  %99 = xor i64 %96, -1
  %100 = select i1 %5, i64 %99, i64 %98
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %9, %95
  %103 = phi i8 [ %15, %9 ], [ %97, %95 ]
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
  br label %149

116:                                              ; preds = %95
  %117 = and i64 %100, 4294967295
  %118 = and i64 %0, 4294967295
  %119 = mul nuw i64 %117, %118
  %120 = lshr i64 %119, 32
  %121 = ashr i64 %100, 32
  %122 = mul nsw i64 %121, %118
  %123 = add nsw i64 %120, %122
  %124 = ashr i64 %0, 32
  %125 = mul nsw i64 %117, %124
  %126 = and i64 %123, 4294967295
  %127 = add nsw i64 %126, %125
  %128 = mul nsw i64 %121, %124
  %129 = ashr i64 %123, 32
  %130 = add nsw i64 %129, %128
  %131 = ashr i64 %127, 32
  %132 = add nsw i64 %130, %131
  %133 = zext i8 %97 to i32
  %134 = and i32 %133, 64
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %116
  %137 = ashr i8 %97, 7
  %138 = sext i8 %137 to i64
  %139 = xor i64 %0, %138
  %140 = sub i64 %139, %138
  %141 = add nsw i64 %140, %132
  br label %142

142:                                              ; preds = %136, %116
  %143 = phi i64 [ %141, %136 ], [ %132, %116 ]
  %144 = and i32 %133, 63
  %145 = zext nneg i32 %144 to i64
  %146 = ashr i64 %143, %145
  %147 = lshr i64 %146, 63
  %148 = add nsw i64 %147, %146
  br label %149

149:                                              ; preds = %142, %102, %2
  %150 = phi i64 [ 0, %2 ], [ %115, %102 ], [ %148, %142 ]
  ret i64 %150
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

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
