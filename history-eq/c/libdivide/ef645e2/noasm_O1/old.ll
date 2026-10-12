; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/ef645e2/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/ef645e2/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_u16(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 range(i16 1, 0) %1, i1 true)
  %7 = trunc nuw nsw i16 %6 to i8
  %8 = xor i8 %7, 15
  %9 = add nuw nsw i32 %5, 65535
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

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

32:                                               ; preds = %22, %12
  %33 = phi i16 [ %30, %22 ], [ %16, %12 ]
  %34 = phi i8 [ %31, %22 ], [ %8, %12 ]
  %35 = add i16 %33, 1
  br label %36

36:                                               ; preds = %4, %32
  %37 = phi i16 [ %35, %32 ], [ 0, %4 ]
  %38 = phi i8 [ %34, %32 ], [ %8, %4 ]
  %39 = icmp eq i16 %37, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = zext i16 %0 to i32
  %42 = zext nneg i8 %38 to i32
  %43 = lshr i32 %41, %42
  br label %60

44:                                               ; preds = %36
  %45 = zext i16 %37 to i32
  %46 = zext i16 %0 to i32
  %47 = mul nuw i32 %45, %46
  %48 = lshr i32 %47, 16
  %49 = zext nneg i8 %38 to i32
  %50 = icmp ult i8 %38, 64
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = sub nsw i32 %46, %48
  %53 = lshr i32 %52, 1
  %54 = add nuw i32 %53, %48
  %55 = and i32 %54, 65535
  %56 = and i32 %49, 31
  %57 = lshr i32 %55, %56
  br label %60

58:                                               ; preds = %44
  %59 = lshr i32 %48, %49
  br label %60

60:                                               ; preds = %40, %51, %58
  %61 = phi i32 [ %43, %40 ], [ %57, %51 ], [ %59, %58 ]
  %62 = trunc nuw i32 %61 to i16
  br label %63

63:                                               ; preds = %2, %60
  %64 = phi i16 [ %62, %60 ], [ 0, %2 ]
  ret i16 %64
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
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = lshr i16 %1, 8
  %15 = and i16 %14, 128
  %16 = or disjoint i16 %8, %15
  %17 = trunc nuw i16 %16 to i8
  br label %50

18:                                               ; preds = %4
  %19 = zext nneg i16 %8 to i32
  %20 = shl nuw nsw i32 32768, %19
  %21 = udiv i32 %20, %9
  %22 = trunc i32 %21 to i16
  %23 = mul i16 %6, %22
  %24 = add i16 %23, %6
  %25 = zext i16 %24 to i32
  %26 = lshr i32 %25, %19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = trunc nuw nsw i16 %7 to i8
  %30 = sub nsw i8 14, %29
  br label %42

31:                                               ; preds = %18
  %32 = sub i16 0, %23
  %33 = shl i16 %22, 1
  %34 = shl i16 %32, 1
  %35 = icmp uge i16 %34, %6
  %36 = icmp slt i16 %32, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i16
  %39 = or disjoint i16 %33, %38
  %40 = trunc nuw nsw i16 %8 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %31, %28
  %43 = phi i16 [ %39, %31 ], [ %22, %28 ]
  %44 = phi i8 [ %41, %31 ], [ %30, %28 ]
  %45 = add i16 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i16 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i16 %47, i16 %45
  br label %50

50:                                               ; preds = %13, %42
  %51 = phi i16 [ 0, %13 ], [ %49, %42 ]
  %52 = phi i8 [ %17, %13 ], [ %48, %42 ]
  %53 = and i8 %52, 31
  %54 = icmp eq i16 %51, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = zext nneg i8 %53 to i32
  %57 = shl nsw i32 -1, %56
  %58 = sext i16 %0 to i32
  %59 = lshr i32 %58, 15
  %60 = xor i32 %57, -1
  %61 = and i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = add i16 %0, %62
  %64 = sext i16 %63 to i32
  %65 = ashr i32 %64, %56
  %66 = icmp slt i8 %52, 0
  %67 = select i1 %66, i32 65535, i32 0
  %68 = xor i32 %65, %67
  %69 = sub nsw i32 %68, %67
  br label %92

70:                                               ; preds = %50
  %71 = sext i16 %51 to i32
  %72 = sext i16 %0 to i32
  %73 = mul nsw i32 %71, %72
  %74 = lshr i32 %73, 16
  %75 = and i8 %52, 64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = ashr i8 %52, 7
  %79 = zext i16 %0 to i32
  %80 = sext i8 %78 to i32
  %81 = xor i32 %80, %79
  %82 = sub nsw i32 %74, %80
  %83 = add nsw i32 %82, %81
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i32 [ %83, %77 ], [ %74, %70 ]
  %86 = zext nneg i8 %53 to i32
  %87 = shl i32 %85, 16
  %88 = ashr exact i32 %87, 16
  %89 = ashr i32 %88, %86
  %90 = lshr i32 %89, 31
  %91 = add nsw i32 %90, %89
  br label %92

92:                                               ; preds = %55, %84
  %93 = phi i32 [ %91, %84 ], [ %69, %55 ]
  %94 = trunc i32 %93 to i16
  br label %95

95:                                               ; preds = %2, %92
  %96 = phi i16 [ %94, %92 ], [ 0, %2 ]
  ret i16 %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %97, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %73

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

69:                                               ; preds = %59, %57
  %70 = phi i8 [ %68, %59 ], [ %58, %57 ]
  %71 = phi i64 [ %66, %59 ], [ %54, %57 ]
  %72 = add i64 %71, 1
  br label %73

73:                                               ; preds = %10, %69
  %74 = phi i64 [ 0, %10 ], [ %72, %69 ]
  %75 = phi i8 [ %11, %10 ], [ %70, %69 ]
  %76 = icmp eq i64 %74, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = zext nneg i8 %75 to i64
  %79 = lshr i64 %0, %78
  br label %97

80:                                               ; preds = %73
  %81 = zext i64 %74 to i128
  %82 = zext i64 %0 to i128
  %83 = mul nuw i128 %81, %82
  %84 = lshr i128 %83, 64
  %85 = trunc nuw i128 %84 to i64
  %86 = icmp ult i8 %75, 64
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = sub i64 %0, %85
  %89 = lshr i64 %88, 1
  %90 = add i64 %89, %85
  %91 = and i8 %75, 63
  %92 = zext nneg i8 %91 to i64
  %93 = lshr i64 %90, %92
  br label %97

94:                                               ; preds = %80
  %95 = zext nneg i8 %75 to i64
  %96 = lshr i64 %85, %95
  br label %97

97:                                               ; preds = %94, %87, %77, %2
  %98 = phi i64 [ 0, %2 ], [ %79, %77 ], [ %93, %87 ], [ %96, %94 ]
  ret i64 %98
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
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  br label %86

18:                                               ; preds = %4
  %19 = sub nsw i32 62, %8
  %20 = zext nneg i32 %19 to i64
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
  %52 = shl i64 %41, 32
  %53 = and i64 %51, 4294967295
  %54 = mul i64 %53, %24
  %55 = sub i64 %52, %54
  %56 = lshr i64 %55, %7
  %57 = shl nuw i64 %39, 32
  %58 = or disjoint i64 %53, %57
  br label %59

59:                                               ; preds = %18, %23
  %60 = phi i64 [ %56, %23 ], [ -1, %18 ]
  %61 = phi i64 [ %58, %23 ], [ -1, %18 ]
  %62 = sub i64 %6, %60
  %63 = zext nneg i32 %9 to i64
  %64 = lshr i64 %62, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = trunc nsw i32 %19 to i8
  br label %78

68:                                               ; preds = %59
  %69 = shl i64 %61, 1
  %70 = shl i64 %60, 1
  %71 = icmp uge i64 %70, %6
  %72 = icmp slt i64 %60, 0
  %73 = or i1 %72, %71
  %74 = zext i1 %73 to i64
  %75 = or disjoint i64 %69, %74
  %76 = trunc nuw nsw i32 %9 to i8
  %77 = or disjoint i8 %76, 64
  br label %78

78:                                               ; preds = %68, %66
  %79 = phi i64 [ %75, %68 ], [ %61, %66 ]
  %80 = phi i8 [ %77, %68 ], [ %67, %66 ]
  %81 = add i64 %79, 1
  %82 = or i8 %80, -128
  %83 = xor i64 %79, -1
  %84 = select i1 %5, i8 %82, i8 %80
  %85 = select i1 %5, i64 %83, i64 %81
  br label %86

86:                                               ; preds = %12, %78
  %87 = phi i64 [ 0, %12 ], [ %85, %78 ]
  %88 = phi i8 [ %17, %12 ], [ %84, %78 ]
  %89 = and i8 %88, 63
  %90 = icmp eq i64 %87, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = zext nneg i8 %89 to i64
  %93 = shl nsw i64 -1, %92
  %94 = xor i64 %93, -1
  %95 = icmp slt i64 %0, 0
  %96 = select i1 %95, i64 %94, i64 0
  %97 = add i64 %96, %0
  %98 = ashr i64 %97, %92
  %99 = ashr i8 %88, 7
  %100 = sext i8 %99 to i64
  %101 = xor i64 %98, %100
  %102 = sub nsw i64 %101, %100
  br label %123

103:                                              ; preds = %86
  %104 = sext i64 %87 to i128
  %105 = sext i64 %0 to i128
  %106 = mul nsw i128 %104, %105
  %107 = lshr i128 %106, 64
  %108 = trunc nuw i128 %107 to i64
  %109 = and i8 %88, 64
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %103
  %112 = ashr i8 %88, 7
  %113 = sext i8 %112 to i64
  %114 = xor i64 %0, %113
  %115 = sub i64 %114, %113
  %116 = add i64 %115, %108
  br label %117

117:                                              ; preds = %111, %103
  %118 = phi i64 [ %116, %111 ], [ %108, %103 ]
  %119 = zext nneg i8 %89 to i64
  %120 = ashr i64 %118, %119
  %121 = lshr i64 %120, 63
  %122 = add nsw i64 %121, %120
  br label %123

123:                                              ; preds = %117, %91, %2
  %124 = phi i64 [ 0, %2 ], [ %122, %117 ], [ %102, %91 ]
  ret i64 %124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_recover(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %146, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %72

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

68:                                               ; preds = %58, %56
  %69 = phi i8 [ %67, %58 ], [ %57, %56 ]
  %70 = phi i64 [ %65, %58 ], [ %53, %56 ]
  %71 = add i64 %70, 1
  br label %72

72:                                               ; preds = %9, %68
  %73 = phi i64 [ 0, %9 ], [ %71, %68 ]
  %74 = phi i8 [ %10, %9 ], [ %69, %68 ]
  %75 = and i8 %74, 63
  %76 = icmp eq i64 %73, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = zext nneg i8 %75 to i64
  %79 = shl nuw i64 1, %78
  br label %146

80:                                               ; preds = %72
  %81 = and i8 %74, 64
  %82 = icmp eq i8 %81, 0
  %83 = zext nneg i8 %75 to i64
  %84 = shl nuw i64 1, %83
  br i1 %82, label %85, label %121

85:                                               ; preds = %80
  %86 = icmp ult i64 %84, %73
  br i1 %86, label %87, label %146

87:                                               ; preds = %85
  %88 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %73, i1 true)
  %89 = shl i64 %73, %88
  %90 = shl i64 %84, %88
  %91 = lshr i64 %89, 32
  %92 = udiv i64 %90, %91
  %93 = urem i64 %90, %91
  %94 = and i64 %89, 4294967295
  %95 = mul i64 %92, %94
  %96 = shl nuw i64 %93, 32
  %97 = icmp ugt i64 %95, %96
  %98 = sub nuw i64 %95, %96
  %99 = icmp ugt i64 %98, %89
  %100 = select i1 %99, i64 4294967294, i64 4294967295
  %101 = select i1 %97, i64 %100, i64 0
  %102 = add i64 %101, %92
  %103 = shl i64 %90, 32
  %104 = and i64 %102, 4294967295
  %105 = mul i64 %104, %89
  %106 = sub i64 %103, %105
  %107 = udiv i64 %106, %91
  %108 = urem i64 %106, %91
  %109 = mul i64 %107, %94
  %110 = shl nuw i64 %108, 32
  %111 = icmp ugt i64 %109, %110
  %112 = sub nuw i64 %109, %110
  %113 = icmp ugt i64 %112, %89
  %114 = select i1 %113, i64 4294967294, i64 4294967295
  %115 = select i1 %111, i64 %114, i64 0
  %116 = add i64 %115, %107
  %117 = and i64 %116, 4294967295
  %118 = shl nuw i64 %104, 32
  %119 = or disjoint i64 %118, 1
  %120 = add i64 %119, %117
  br label %146

121:                                              ; preds = %80
  %122 = zext i64 %84 to i128
  %123 = shl nuw i128 %122, 64
  %124 = zext i64 %73 to i128
  %125 = or disjoint i128 %124, 18446744073709551616
  %126 = udiv i128 %123, %125
  %127 = trunc nuw i128 %126 to i64
  %128 = mul nuw i128 %126, %125
  %129 = sub i128 %123, %128
  %130 = trunc i128 %129 to i64
  %131 = lshr i128 %129, 64
  %132 = trunc nuw i128 %131 to i64
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %130, i64 1)
  %134 = icmp ugt i64 %133, 1
  br i1 %134, label %141, label %135

135:                                              ; preds = %121
  %136 = shl i64 %130, 1
  %137 = icmp eq i64 %133, 1
  %138 = icmp uge i64 %136, %73
  %139 = select i1 %137, i1 %138, i1 false
  %140 = zext i1 %139 to i64
  br label %141

141:                                              ; preds = %135, %121
  %142 = phi i64 [ 1, %121 ], [ %140, %135 ]
  %143 = shl i64 %127, 1
  %144 = or disjoint i64 %143, 1
  %145 = add i64 %144, %142
  br label %146

146:                                              ; preds = %87, %85, %141, %77, %1
  %147 = phi i64 [ 0, %1 ], [ %145, %141 ], [ %79, %77 ], [ %120, %87 ], [ 0, %85 ]
  ret i64 %147
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
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = lshr i64 %0, 56
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = and i32 %13, 128
  %15 = or disjoint i32 %8, %14
  %16 = trunc nuw i32 %15 to i8
  br label %85

17:                                               ; preds = %3
  %18 = sub nsw i32 62, %7
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = icmp ult i64 %20, %5
  br i1 %21, label %22, label %58

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
  %56 = shl nuw i64 %38, 32
  %57 = or disjoint i64 %52, %56
  br label %58

58:                                               ; preds = %17, %22
  %59 = phi i64 [ %55, %22 ], [ -1, %17 ]
  %60 = phi i64 [ %57, %22 ], [ -1, %17 ]
  %61 = sub i64 %5, %59
  %62 = zext nneg i32 %8 to i64
  %63 = lshr i64 %61, %62
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = trunc nsw i32 %18 to i8
  br label %77

67:                                               ; preds = %58
  %68 = shl i64 %60, 1
  %69 = shl i64 %59, 1
  %70 = icmp uge i64 %69, %5
  %71 = icmp slt i64 %59, 0
  %72 = or i1 %71, %70
  %73 = zext i1 %72 to i64
  %74 = or disjoint i64 %68, %73
  %75 = trunc nuw nsw i32 %8 to i8
  %76 = or disjoint i8 %75, 64
  br label %77

77:                                               ; preds = %67, %65
  %78 = phi i64 [ %74, %67 ], [ %60, %65 ]
  %79 = phi i8 [ %76, %67 ], [ %66, %65 ]
  %80 = add i64 %78, 1
  %81 = or i8 %79, -128
  %82 = xor i64 %78, -1
  %83 = select i1 %4, i8 %81, i8 %79
  %84 = select i1 %4, i64 %82, i64 %80
  br label %85

85:                                               ; preds = %11, %77
  %86 = phi i64 [ 0, %11 ], [ %84, %77 ]
  %87 = phi i8 [ %16, %11 ], [ %83, %77 ]
  %88 = and i8 %87, 63
  %89 = icmp eq i64 %86, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = zext nneg i8 %88 to i64
  %92 = shl nuw i64 1, %91
  %93 = sub i64 0, %92
  %94 = icmp slt i8 %87, 0
  %95 = select i1 %94, i64 %93, i64 %92
  br label %146

96:                                               ; preds = %85
  %97 = and i8 %87, 64
  %98 = icmp eq i8 %97, 0
  %99 = icmp slt i64 %86, 1
  %100 = icmp sgt i64 %86, -1
  %101 = select i1 %98, i1 %100, i1 %99
  %102 = sub nsw i64 0, %86
  %103 = select i1 %101, i64 %86, i64 %102
  %104 = zext nneg i8 %88 to i64
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
  %144 = icmp slt i8 %87, 0
  %145 = select i1 %144, i64 %143, i64 %142
  br label %146

146:                                              ; preds = %140, %90, %1
  %147 = phi i64 [ 0, %1 ], [ %95, %90 ], [ %145, %140 ]
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
