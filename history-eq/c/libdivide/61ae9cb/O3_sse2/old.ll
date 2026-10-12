; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_vu32(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %74, label %4

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
  br i1 %38, label %39, label %44

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = zext nneg i8 %40 to i32
  %42 = bitcast <2 x i64> %0 to <4 x i32>
  %43 = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %42, i32 range(i32 0, 256) %41)
  br label %71

44:                                               ; preds = %34
  %45 = insertelement <4 x i32> poison, i32 %37, i64 0
  %46 = shufflevector <4 x i32> %45, <4 x i32> poison, <4 x i32> zeroinitializer
  %47 = bitcast <4 x i32> %46 to <2 x i64>
  %48 = and <2 x i64> %0, splat (i64 4294967295)
  %49 = and <2 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <2 x i64> %49, %48
  %51 = lshr <2 x i64> %50, splat (i64 32)
  %52 = lshr <2 x i64> %0, splat (i64 32)
  %53 = mul nuw <2 x i64> %49, %52
  %54 = and <2 x i64> %53, splat (i64 -4294967296)
  %55 = or disjoint <2 x i64> %51, %54
  %56 = zext nneg i8 %36 to i32
  %57 = icmp samesign ult i8 %36, 64
  br i1 %57, label %68, label %58

58:                                               ; preds = %44
  %59 = and i32 %56, 31
  %60 = bitcast <2 x i64> %0 to <4 x i32>
  %61 = bitcast <2 x i64> %55 to <4 x i32>
  %62 = sub <4 x i32> %60, %61
  %63 = lshr <4 x i32> %62, splat (i32 1)
  %64 = add <4 x i32> %63, %61
  %65 = insertelement <4 x i32> poison, i32 %59, i64 0
  %66 = shufflevector <4 x i32> %65, <4 x i32> poison, <4 x i32> zeroinitializer
  %67 = lshr <4 x i32> %64, %66
  br label %71

68:                                               ; preds = %44
  %69 = bitcast <2 x i64> %55 to <4 x i32>
  %70 = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %69, i32 range(i32 0, 256) %56)
  br label %71

71:                                               ; preds = %39, %58, %68
  %72 = phi <4 x i32> [ %43, %39 ], [ %67, %58 ], [ %70, %68 ]
  %73 = bitcast <4 x i32> %72 to <2 x i64>
  br label %74

74:                                               ; preds = %2, %71
  %75 = phi <2 x i64> [ %73, %71 ], [ %0, %2 ]
  ret <2 x i64> %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_vs32(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %113, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %7 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  br label %50

16:                                               ; preds = %4
  %17 = sub nsw i32 30, %7
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext i32 %6 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %6, %23
  %25 = add i32 %24, %6
  %26 = lshr i32 %25, %8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = trunc nsw i32 %17 to i8
  br label %41

30:                                               ; preds = %16
  %31 = sub i32 0, %24
  %32 = shl i32 %23, 1
  %33 = shl i32 %31, 1
  %34 = icmp uge i32 %33, %6
  %35 = icmp slt i32 %31, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i32
  %38 = or disjoint i32 %32, %37
  %39 = trunc nuw nsw i32 %8 to i8
  %40 = or disjoint i8 %39, 64
  br label %41

41:                                               ; preds = %28, %30
  %42 = phi i32 [ %38, %30 ], [ %23, %28 ]
  %43 = phi i8 [ %40, %30 ], [ %29, %28 ]
  %44 = add i32 %42, 1
  %45 = or i8 %43, -128
  %46 = xor i32 %42, -1
  %47 = select i1 %5, i8 %45, i8 %43
  %48 = select i1 %5, i32 %46, i32 %44
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %11, %41
  %51 = phi i8 [ %15, %11 ], [ %47, %41 ]
  %52 = and i8 %51, 31
  %53 = zext nneg i8 %52 to i32
  %54 = shl nsw i32 -1, %53
  %55 = xor i32 %54, -1
  %56 = insertelement <4 x i32> poison, i32 %55, i64 0
  %57 = shufflevector <4 x i32> %56, <4 x i32> poison, <4 x i32> zeroinitializer
  %58 = bitcast <2 x i64> %0 to <4 x i32>
  %59 = icmp slt <4 x i32> %58, zeroinitializer
  %60 = select <4 x i1> %59, <4 x i32> %57, <4 x i32> zeroinitializer
  %61 = add <4 x i32> %60, %58
  %62 = insertelement <4 x i32> poison, i32 %53, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = ashr <4 x i32> %61, %63
  %65 = ashr i8 %51, 7
  %66 = sext i8 %65 to i32
  %67 = insertelement <4 x i32> poison, i32 %66, i64 0
  %68 = shufflevector <4 x i32> %67, <4 x i32> poison, <4 x i32> zeroinitializer
  %69 = xor <4 x i32> %64, %68
  %70 = sub <4 x i32> %69, %68
  br label %110

71:                                               ; preds = %41
  %72 = insertelement <4 x i32> poison, i32 %48, i64 0
  %73 = shufflevector <4 x i32> %72, <4 x i32> poison, <4 x i32> zeroinitializer
  %74 = bitcast <4 x i32> %73 to <2 x i64>
  %75 = and <2 x i64> %0, splat (i64 4294967295)
  %76 = and <2 x i64> %74, splat (i64 4294967295)
  %77 = mul nuw <2 x i64> %76, %75
  %78 = lshr <2 x i64> %77, splat (i64 32)
  %79 = lshr <2 x i64> %0, splat (i64 32)
  %80 = mul nuw <2 x i64> %76, %79
  %81 = and <2 x i64> %80, splat (i64 -4294967296)
  %82 = or disjoint <2 x i64> %78, %81
  %83 = bitcast <2 x i64> %0 to <4 x i32>
  %84 = bitcast <2 x i64> %82 to <4 x i32>
  %85 = icmp slt <4 x i32> %83, zeroinitializer
  %86 = select <4 x i1> %85, <4 x i32> %73, <4 x i32> zeroinitializer
  %87 = icmp slt <4 x i32> %73, zeroinitializer
  %88 = select <4 x i1> %87, <4 x i32> %83, <4 x i32> zeroinitializer
  %89 = add <4 x i32> %88, %86
  %90 = sub <4 x i32> %84, %89
  %91 = zext i8 %47 to i32
  %92 = and i32 %91, 64
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %71
  %95 = ashr i8 %47, 7
  %96 = sext i8 %95 to i32
  %97 = insertelement <4 x i32> poison, i32 %96, i64 0
  %98 = shufflevector <4 x i32> %97, <4 x i32> poison, <4 x i32> zeroinitializer
  %99 = xor <4 x i32> %98, %83
  %100 = sub <4 x i32> %99, %98
  %101 = add <4 x i32> %100, %90
  br label %102

102:                                              ; preds = %94, %71
  %103 = phi <4 x i32> [ %101, %94 ], [ %90, %71 ]
  %104 = and i32 %91, 31
  %105 = insertelement <4 x i32> poison, i32 %104, i64 0
  %106 = shufflevector <4 x i32> %105, <4 x i32> poison, <4 x i32> zeroinitializer
  %107 = ashr <4 x i32> %103, %106
  %108 = lshr <4 x i32> %107, splat (i32 31)
  %109 = add <4 x i32> %108, %107
  br label %110

110:                                              ; preds = %50, %102
  %111 = phi <4 x i32> [ %109, %102 ], [ %70, %50 ]
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  br label %113

113:                                              ; preds = %2, %110
  %114 = phi <2 x i64> [ %112, %110 ], [ %0, %2 ]
  ret <2 x i64> %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local <2 x i64> @target_vu64(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %128, label %4

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

64:                                               ; preds = %56, %12
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
  %88 = zext nneg i8 %87 to i32
  %89 = tail call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 range(i32 0, 256) %88)
  br label %128

90:                                               ; preds = %81
  %91 = insertelement <2 x i64> poison, i64 %84, i64 0
  %92 = shufflevector <2 x i64> %91, <2 x i64> poison, <2 x i32> zeroinitializer
  %93 = and <2 x i64> %0, splat (i64 4294967295)
  %94 = and <2 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <2 x i64> %94, %93
  %96 = lshr <2 x i64> %95, splat (i64 32)
  %97 = bitcast <2 x i64> %0 to <4 x i32>
  %98 = shufflevector <4 x i32> %97, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %99 = bitcast <4 x i32> %98 to <2 x i64>
  %100 = bitcast <2 x i64> %92 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = and <2 x i64> %102, splat (i64 4294967295)
  %104 = mul nuw <2 x i64> %103, %93
  %105 = and <2 x i64> %99, splat (i64 4294967295)
  %106 = mul nuw <2 x i64> %94, %105
  %107 = mul nuw <2 x i64> %103, %105
  %108 = add nuw <2 x i64> %96, %106
  %109 = and <2 x i64> %108, splat (i64 4294967295)
  %110 = lshr <2 x i64> %108, splat (i64 32)
  %111 = add nuw <2 x i64> %109, %104
  %112 = lshr <2 x i64> %111, splat (i64 32)
  %113 = add nuw <2 x i64> %110, %107
  %114 = add nuw <2 x i64> %113, %112
  %115 = zext nneg i8 %82 to i32
  %116 = icmp ult i8 %82, 64
  br i1 %116, label %126, label %117

117:                                              ; preds = %90
  %118 = and i32 %115, 63
  %119 = sub <2 x i64> %0, %114
  %120 = lshr <2 x i64> %119, splat (i64 1)
  %121 = add <2 x i64> %120, %114
  %122 = zext nneg i32 %118 to i64
  %123 = insertelement <2 x i64> poison, i64 %122, i64 0
  %124 = shufflevector <2 x i64> %123, <2 x i64> poison, <2 x i32> zeroinitializer
  %125 = lshr <2 x i64> %121, %124
  br label %128

126:                                              ; preds = %90
  %127 = tail call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %114, i32 range(i32 0, 256) %115)
  br label %128

128:                                              ; preds = %126, %117, %86, %2
  %129 = phi <2 x i64> [ %0, %2 ], [ %89, %86 ], [ %125, %117 ], [ %127, %126 ]
  ret <2 x i64> %129
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local <2 x i64> @target_vs64(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %194, label %4

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
  %18 = bitcast <2 x i64> %0 to <4 x i32>
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

72:                                               ; preds = %64, %19
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
  %99 = icmp eq i64 %98, 0
  %100 = bitcast <2 x i64> %0 to <4 x i32>
  br i1 %99, label %101, label %132

101:                                              ; preds = %12, %91
  %102 = phi <4 x i32> [ %18, %12 ], [ %100, %91 ]
  %103 = phi i8 [ %17, %12 ], [ %97, %91 ]
  %104 = and i8 %103, 63
  %105 = zext nneg i8 %104 to i64
  %106 = shl nsw i64 -1, %105
  %107 = xor i64 %106, -1
  %108 = insertelement <2 x i64> poison, i64 %107, i64 0
  %109 = shufflevector <2 x i64> %108, <2 x i64> poison, <2 x i32> zeroinitializer
  %110 = ashr <4 x i32> %102, <i32 0, i32 31, i32 0, i32 31>
  %111 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  %113 = and <2 x i64> %109, %112
  %114 = add <2 x i64> %113, %0
  %115 = xor i8 %104, 63
  %116 = zext nneg i8 %115 to i64
  %117 = shl nuw i64 1, %116
  %118 = insertelement <2 x i64> poison, i64 %117, i64 0
  %119 = shufflevector <2 x i64> %118, <2 x i64> poison, <2 x i32> zeroinitializer
  %120 = insertelement <2 x i64> poison, i64 %105, i64 0
  %121 = shufflevector <2 x i64> %120, <2 x i64> poison, <2 x i32> zeroinitializer
  %122 = lshr <2 x i64> %114, %121
  %123 = xor <2 x i64> %122, %119
  %124 = sub <2 x i64> %123, %119
  %125 = ashr i8 %103, 7
  %126 = sext i8 %125 to i32
  %127 = insertelement <4 x i32> poison, i32 %126, i64 0
  %128 = shufflevector <4 x i32> %127, <4 x i32> poison, <4 x i32> zeroinitializer
  %129 = bitcast <4 x i32> %128 to <2 x i64>
  %130 = xor <2 x i64> %124, %129
  %131 = sub <2 x i64> %130, %129
  br label %194

132:                                              ; preds = %91
  %133 = insertelement <2 x i64> poison, i64 %98, i64 0
  %134 = shufflevector <2 x i64> %133, <2 x i64> poison, <2 x i32> zeroinitializer
  %135 = and <2 x i64> %0, splat (i64 4294967295)
  %136 = and <2 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <2 x i64> %136, %135
  %138 = lshr <2 x i64> %137, splat (i64 32)
  %139 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %140 = bitcast <4 x i32> %139 to <2 x i64>
  %141 = bitcast <2 x i64> %134 to <4 x i32>
  %142 = shufflevector <4 x i32> %141, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %143 = bitcast <4 x i32> %142 to <2 x i64>
  %144 = and <2 x i64> %143, splat (i64 4294967295)
  %145 = mul nuw <2 x i64> %144, %135
  %146 = and <2 x i64> %140, splat (i64 4294967295)
  %147 = mul nuw <2 x i64> %136, %146
  %148 = mul nuw <2 x i64> %144, %146
  %149 = add nuw <2 x i64> %138, %147
  %150 = and <2 x i64> %149, splat (i64 4294967295)
  %151 = lshr <2 x i64> %149, splat (i64 32)
  %152 = add nuw <2 x i64> %150, %145
  %153 = lshr <2 x i64> %152, splat (i64 32)
  %154 = ashr <4 x i32> %100, <i32 0, i32 31, i32 0, i32 31>
  %155 = shufflevector <4 x i32> %154, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %156 = bitcast <4 x i32> %155 to <2 x i64>
  %157 = and <2 x i64> %134, %156
  %158 = ashr <4 x i32> %141, <i32 0, i32 31, i32 0, i32 31>
  %159 = shufflevector <4 x i32> %158, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %160 = bitcast <4 x i32> %159 to <2 x i64>
  %161 = and <2 x i64> %0, %160
  %162 = add <2 x i64> %161, %157
  %163 = sub <2 x i64> %148, %162
  %164 = add <2 x i64> %163, %151
  %165 = add <2 x i64> %164, %153
  %166 = zext i8 %97 to i32
  %167 = and i32 %166, 64
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %132
  %170 = ashr i8 %97, 7
  %171 = sext i8 %170 to i32
  %172 = insertelement <4 x i32> poison, i32 %171, i64 0
  %173 = shufflevector <4 x i32> %172, <4 x i32> poison, <4 x i32> zeroinitializer
  %174 = bitcast <4 x i32> %173 to <2 x i64>
  %175 = xor <2 x i64> %0, %174
  %176 = sub <2 x i64> %175, %174
  %177 = add <2 x i64> %176, %165
  br label %178

178:                                              ; preds = %169, %132
  %179 = phi <2 x i64> [ %177, %169 ], [ %165, %132 ]
  %180 = and i32 %166, 63
  %181 = xor i32 %180, 63
  %182 = zext nneg i32 %181 to i64
  %183 = shl nuw i64 1, %182
  %184 = insertelement <2 x i64> poison, i64 %183, i64 0
  %185 = shufflevector <2 x i64> %184, <2 x i64> poison, <2 x i32> zeroinitializer
  %186 = zext nneg i32 %180 to i64
  %187 = insertelement <2 x i64> poison, i64 %186, i64 0
  %188 = shufflevector <2 x i64> %187, <2 x i64> poison, <2 x i32> zeroinitializer
  %189 = lshr <2 x i64> %179, %188
  %190 = xor <2 x i64> %189, %185
  %191 = sub <2 x i64> %190, %185
  %192 = lshr <2 x i64> %191, splat (i64 63)
  %193 = add <2 x i64> %192, %191
  br label %194

194:                                              ; preds = %178, %101, %2
  %195 = phi <2 x i64> [ %0, %2 ], [ %131, %101 ], [ %193, %178 ]
  ret <2 x i64> %195
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_vu32_bf(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i32 30, %5
  br label %28

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
  %20 = shl i32 %17, 1
  %21 = shl i32 %19, 1
  %22 = icmp uge i32 %21, %1
  %23 = icmp slt i32 %19, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i32
  %26 = or disjoint i32 %20, 1
  %27 = add i32 %26, %25
  br label %28

28:                                               ; preds = %8, %10
  %29 = phi i32 [ 0, %8 ], [ %27, %10 ]
  %30 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %31 = insertelement <4 x i32> poison, i32 %29, i64 0
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> zeroinitializer
  %33 = bitcast <4 x i32> %32 to <2 x i64>
  %34 = and <2 x i64> %0, splat (i64 4294967295)
  %35 = and <2 x i64> %33, splat (i64 4294967295)
  %36 = mul nuw <2 x i64> %35, %34
  %37 = lshr <2 x i64> %36, splat (i64 32)
  %38 = lshr <2 x i64> %0, splat (i64 32)
  %39 = mul nuw <2 x i64> %35, %38
  %40 = and <2 x i64> %39, splat (i64 -4294967296)
  %41 = or disjoint <2 x i64> %37, %40
  %42 = bitcast <2 x i64> %0 to <4 x i32>
  %43 = bitcast <2 x i64> %41 to <4 x i32>
  %44 = sub <4 x i32> %42, %43
  %45 = lshr <4 x i32> %44, splat (i32 1)
  %46 = add <4 x i32> %45, %43
  %47 = insertelement <4 x i32> poison, i32 %30, i64 0
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> zeroinitializer
  %49 = lshr <4 x i32> %46, %48
  %50 = bitcast <4 x i32> %49 to <2 x i64>
  br label %51

51:                                               ; preds = %2, %28
  %52 = phi <2 x i64> [ %50, %28 ], [ %0, %2 ]
  ret <2 x i64> %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_vs32_bf(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %81, label %4

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
  %43 = insertelement <4 x i32> poison, i32 %42, i64 0
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> zeroinitializer
  %45 = insertelement <4 x i32> poison, i32 %38, i64 0
  %46 = shufflevector <4 x i32> %45, <4 x i32> poison, <4 x i32> zeroinitializer
  %47 = bitcast <4 x i32> %46 to <2 x i64>
  %48 = and <2 x i64> %0, splat (i64 4294967295)
  %49 = and <2 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <2 x i64> %49, %48
  %51 = lshr <2 x i64> %50, splat (i64 32)
  %52 = lshr <2 x i64> %0, splat (i64 32)
  %53 = mul nuw <2 x i64> %49, %52
  %54 = and <2 x i64> %53, splat (i64 -4294967296)
  %55 = or disjoint <2 x i64> %51, %54
  %56 = bitcast <2 x i64> %0 to <4 x i32>
  %57 = bitcast <2 x i64> %55 to <4 x i32>
  %58 = icmp slt <4 x i32> %56, zeroinitializer
  %59 = select <4 x i1> %58, <4 x i32> %46, <4 x i32> zeroinitializer
  %60 = icmp slt <4 x i32> %46, zeroinitializer
  %61 = select <4 x i1> %60, <4 x i32> %56, <4 x i32> zeroinitializer
  %62 = add <4 x i32> %59, %61
  %63 = sub <4 x i32> %56, %62
  %64 = add <4 x i32> %63, %57
  %65 = icmp eq i32 %38, 0
  %66 = sext i1 %65 to i32
  %67 = zext nneg i8 %40 to i32
  %68 = shl nuw i32 1, %67
  %69 = add i32 %68, %66
  %70 = insertelement <4 x i32> poison, i32 %69, i64 0
  %71 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> zeroinitializer
  %72 = icmp slt <4 x i32> %64, zeroinitializer
  %73 = select <4 x i1> %72, <4 x i32> %71, <4 x i32> zeroinitializer
  %74 = add <4 x i32> %73, %64
  %75 = insertelement <4 x i32> poison, i32 %67, i64 0
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> zeroinitializer
  %77 = ashr <4 x i32> %74, %76
  %78 = xor <4 x i32> %77, %44
  %79 = sub <4 x i32> %78, %44
  %80 = bitcast <4 x i32> %79 to <2 x i64>
  br label %81

81:                                               ; preds = %2, %37
  %82 = phi <2 x i64> [ %80, %37 ], [ %0, %2 ]
  ret <2 x i64> %82
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local <2 x i64> @target_vu64_bf(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %110, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = sub nuw nsw i32 62, %6
  br label %75

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

66:                                               ; preds = %56, %12
  %67 = phi i64 [ %61, %56 ], [ -1, %12 ]
  %68 = phi i64 [ %65, %56 ], [ -1, %12 ]
  %69 = shl i64 %67, 1
  %70 = icmp uge i64 %69, %1
  %71 = icmp slt i64 %67, 0
  %72 = or i1 %71, %70
  %73 = zext i1 %72 to i64
  %74 = add i64 %68, %73
  br label %75

75:                                               ; preds = %10, %66
  %76 = phi i64 [ 0, %10 ], [ %74, %66 ]
  %77 = phi i32 [ %11, %10 ], [ %7, %66 ]
  %78 = and i32 %77, 63
  %79 = insertelement <2 x i64> poison, i64 %76, i64 0
  %80 = shufflevector <2 x i64> %79, <2 x i64> poison, <2 x i32> zeroinitializer
  %81 = and <2 x i64> %0, splat (i64 4294967295)
  %82 = and <2 x i64> %80, splat (i64 4294967295)
  %83 = mul nuw <2 x i64> %82, %81
  %84 = lshr <2 x i64> %83, splat (i64 32)
  %85 = bitcast <2 x i64> %0 to <4 x i32>
  %86 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %87 = bitcast <4 x i32> %86 to <2 x i64>
  %88 = bitcast <2 x i64> %80 to <4 x i32>
  %89 = shufflevector <4 x i32> %88, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %90 = bitcast <4 x i32> %89 to <2 x i64>
  %91 = and <2 x i64> %90, splat (i64 4294967295)
  %92 = mul nuw <2 x i64> %91, %81
  %93 = and <2 x i64> %87, splat (i64 4294967295)
  %94 = mul nuw <2 x i64> %82, %93
  %95 = mul nuw <2 x i64> %91, %93
  %96 = add nuw <2 x i64> %84, %94
  %97 = and <2 x i64> %96, splat (i64 4294967295)
  %98 = lshr <2 x i64> %96, splat (i64 32)
  %99 = add nuw <2 x i64> %97, %92
  %100 = lshr <2 x i64> %99, splat (i64 32)
  %101 = add nuw <2 x i64> %98, %95
  %102 = add nuw <2 x i64> %101, %100
  %103 = sub <2 x i64> %0, %102
  %104 = lshr <2 x i64> %103, splat (i64 1)
  %105 = add <2 x i64> %104, %102
  %106 = zext nneg i32 %78 to i64
  %107 = insertelement <2 x i64> poison, i64 %106, i64 0
  %108 = shufflevector <2 x i64> %107, <2 x i64> poison, <2 x i32> zeroinitializer
  %109 = lshr <2 x i64> %105, %108
  br label %110

110:                                              ; preds = %2, %75
  %111 = phi <2 x i64> [ %109, %75 ], [ %0, %2 ]
  ret <2 x i64> %111
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local <2 x i64> @target_vs64_bf(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %154, label %4

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

73:                                               ; preds = %63, %18
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
  %90 = sext i8 %89 to i32
  %91 = insertelement <4 x i32> poison, i32 %90, i64 0
  %92 = shufflevector <4 x i32> %91, <4 x i32> poison, <4 x i32> zeroinitializer
  %93 = bitcast <4 x i32> %92 to <2 x i64>
  %94 = insertelement <2 x i64> poison, i64 %86, i64 0
  %95 = shufflevector <2 x i64> %94, <2 x i64> poison, <2 x i32> zeroinitializer
  %96 = and <2 x i64> %0, splat (i64 4294967295)
  %97 = and <2 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <2 x i64> %97, %96
  %99 = lshr <2 x i64> %98, splat (i64 32)
  %100 = bitcast <2 x i64> %0 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = bitcast <2 x i64> %95 to <4 x i32>
  %104 = shufflevector <4 x i32> %103, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %105 = bitcast <4 x i32> %104 to <2 x i64>
  %106 = and <2 x i64> %105, splat (i64 4294967295)
  %107 = mul nuw <2 x i64> %106, %96
  %108 = and <2 x i64> %102, splat (i64 4294967295)
  %109 = mul nuw <2 x i64> %97, %108
  %110 = mul nuw <2 x i64> %106, %108
  %111 = add nuw <2 x i64> %99, %109
  %112 = and <2 x i64> %111, splat (i64 4294967295)
  %113 = lshr <2 x i64> %111, splat (i64 32)
  %114 = add nuw <2 x i64> %112, %107
  %115 = lshr <2 x i64> %114, splat (i64 32)
  %116 = ashr <4 x i32> %100, <i32 0, i32 31, i32 0, i32 31>
  %117 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %118 = bitcast <4 x i32> %117 to <2 x i64>
  %119 = and <2 x i64> %95, %118
  %120 = ashr <4 x i32> %103, <i32 0, i32 31, i32 0, i32 31>
  %121 = shufflevector <4 x i32> %120, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %122 = bitcast <4 x i32> %121 to <2 x i64>
  %123 = and <2 x i64> %0, %122
  %124 = add <2 x i64> %119, %123
  %125 = sub <2 x i64> %0, %124
  %126 = add <2 x i64> %125, %110
  %127 = add <2 x i64> %126, %113
  %128 = add <2 x i64> %127, %115
  %129 = icmp eq i64 %86, 0
  %130 = bitcast <2 x i64> %128 to <4 x i32>
  %131 = ashr <4 x i32> %130, <i32 0, i32 31, i32 0, i32 31>
  %132 = shufflevector <4 x i32> %131, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %133 = bitcast <4 x i32> %132 to <2 x i64>
  %134 = zext nneg i8 %88 to i64
  %135 = shl nuw i64 1, %134
  %136 = sext i1 %129 to i64
  %137 = add i64 %135, %136
  %138 = insertelement <2 x i64> poison, i64 %137, i64 0
  %139 = shufflevector <2 x i64> %138, <2 x i64> poison, <2 x i32> zeroinitializer
  %140 = and <2 x i64> %139, %133
  %141 = add <2 x i64> %140, %128
  %142 = xor i8 %88, 63
  %143 = zext nneg i8 %142 to i64
  %144 = shl nuw i64 1, %143
  %145 = insertelement <2 x i64> poison, i64 %144, i64 0
  %146 = shufflevector <2 x i64> %145, <2 x i64> poison, <2 x i32> zeroinitializer
  %147 = insertelement <2 x i64> poison, i64 %134, i64 0
  %148 = shufflevector <2 x i64> %147, <2 x i64> poison, <2 x i32> zeroinitializer
  %149 = lshr <2 x i64> %141, %148
  %150 = xor <2 x i64> %149, %146
  %151 = sub <2 x i64> %150, %146
  %152 = xor <2 x i64> %151, %93
  %153 = sub <2 x i64> %152, %93
  br label %154

154:                                              ; preds = %2, %85
  %155 = phi <2 x i64> [ %153, %85 ], [ %0, %2 ]
  ret <2 x i64> %155
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
