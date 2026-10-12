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
  br i1 %38, label %39, label %45

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = zext nneg i8 %40 to i32
  %42 = bitcast <2 x i64> %0 to <4 x i32>
  %43 = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %42, i32 range(i32 0, 256) %41)
  %44 = bitcast <4 x i32> %43 to <2 x i64>
  br label %74

45:                                               ; preds = %34
  %46 = insertelement <4 x i32> poison, i32 %37, i64 0
  %47 = shufflevector <4 x i32> %46, <4 x i32> poison, <4 x i32> zeroinitializer
  %48 = bitcast <4 x i32> %47 to <2 x i64>
  %49 = and <2 x i64> %0, splat (i64 4294967295)
  %50 = and <2 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <2 x i64> %50, %49
  %52 = lshr <2 x i64> %51, splat (i64 32)
  %53 = lshr <2 x i64> %0, splat (i64 32)
  %54 = mul nuw <2 x i64> %50, %53
  %55 = and <2 x i64> %54, splat (i64 -4294967296)
  %56 = or disjoint <2 x i64> %52, %55
  %57 = zext nneg i8 %36 to i32
  %58 = icmp samesign ult i8 %36, 64
  br i1 %58, label %70, label %59

59:                                               ; preds = %45
  %60 = and i32 %57, 31
  %61 = bitcast <2 x i64> %0 to <4 x i32>
  %62 = bitcast <2 x i64> %56 to <4 x i32>
  %63 = sub <4 x i32> %61, %62
  %64 = lshr <4 x i32> %63, splat (i32 1)
  %65 = add <4 x i32> %64, %62
  %66 = insertelement <4 x i32> poison, i32 %60, i64 0
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> zeroinitializer
  %68 = lshr <4 x i32> %65, %67
  %69 = bitcast <4 x i32> %68 to <2 x i64>
  br label %74

70:                                               ; preds = %45
  %71 = bitcast <2 x i64> %56 to <4 x i32>
  %72 = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %71, i32 range(i32 0, 256) %57)
  %73 = bitcast <4 x i32> %72 to <2 x i64>
  br label %74

74:                                               ; preds = %70, %59, %39, %2
  %75 = phi <2 x i64> [ %0, %2 ], [ %44, %39 ], [ %69, %59 ], [ %73, %70 ]
  ret <2 x i64> %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_vs32(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %112, label %4

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
  br i1 %49, label %50, label %72

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
  %71 = bitcast <4 x i32> %70 to <2 x i64>
  br label %112

72:                                               ; preds = %41
  %73 = insertelement <4 x i32> poison, i32 %48, i64 0
  %74 = shufflevector <4 x i32> %73, <4 x i32> poison, <4 x i32> zeroinitializer
  %75 = bitcast <4 x i32> %74 to <2 x i64>
  %76 = and <2 x i64> %0, splat (i64 4294967295)
  %77 = and <2 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <2 x i64> %77, %76
  %79 = lshr <2 x i64> %78, splat (i64 32)
  %80 = lshr <2 x i64> %0, splat (i64 32)
  %81 = mul nuw <2 x i64> %77, %80
  %82 = and <2 x i64> %81, splat (i64 -4294967296)
  %83 = or disjoint <2 x i64> %79, %82
  %84 = bitcast <2 x i64> %0 to <4 x i32>
  %85 = icmp slt <4 x i32> %84, zeroinitializer
  %86 = select <4 x i1> %85, <4 x i32> %74, <4 x i32> zeroinitializer
  %87 = bitcast <2 x i64> %83 to <4 x i32>
  %88 = icmp slt <4 x i32> %74, zeroinitializer
  %89 = select <4 x i1> %88, <4 x i32> %84, <4 x i32> zeroinitializer
  %90 = add <4 x i32> %89, %86
  %91 = sub <4 x i32> %87, %90
  %92 = zext i8 %47 to i32
  %93 = and i32 %92, 64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %72
  %96 = ashr i8 %47, 7
  %97 = sext i8 %96 to i32
  %98 = insertelement <4 x i32> poison, i32 %97, i64 0
  %99 = shufflevector <4 x i32> %98, <4 x i32> poison, <4 x i32> zeroinitializer
  %100 = xor <4 x i32> %99, %84
  %101 = sub <4 x i32> %100, %99
  %102 = add <4 x i32> %101, %91
  br label %103

103:                                              ; preds = %95, %72
  %104 = phi <4 x i32> [ %102, %95 ], [ %91, %72 ]
  %105 = and i32 %92, 31
  %106 = insertelement <4 x i32> poison, i32 %105, i64 0
  %107 = shufflevector <4 x i32> %106, <4 x i32> poison, <4 x i32> zeroinitializer
  %108 = ashr <4 x i32> %104, %107
  %109 = lshr <4 x i32> %108, splat (i32 31)
  %110 = add <4 x i32> %109, %108
  %111 = bitcast <4 x i32> %110 to <2 x i64>
  br label %112

112:                                              ; preds = %103, %50, %2
  %113 = phi <2 x i64> [ %0, %2 ], [ %111, %103 ], [ %71, %50 ]
  ret <2 x i64> %113
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
  %113 = add nuw <2 x i64> %107, %110
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
  br i1 %3, label %191, label %4

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
  br label %99

18:                                               ; preds = %4
  %19 = sub nsw i32 62, %8
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %71

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
  %69 = shl i64 %44, 32
  %70 = add i64 %64, %69
  br label %71

71:                                               ; preds = %18, %63
  %72 = phi i64 [ %68, %63 ], [ -1, %18 ]
  %73 = phi i64 [ %70, %63 ], [ -1, %18 ]
  %74 = sub i64 %6, %72
  %75 = zext nneg i32 %9 to i64
  %76 = lshr i64 %74, %75
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = trunc nsw i32 %19 to i8
  br label %90

80:                                               ; preds = %71
  %81 = shl i64 %73, 1
  %82 = shl i64 %72, 1
  %83 = icmp uge i64 %82, %6
  %84 = icmp slt i64 %72, 0
  %85 = or i1 %84, %83
  %86 = zext i1 %85 to i64
  %87 = or disjoint i64 %81, %86
  %88 = trunc nuw nsw i32 %9 to i8
  %89 = or disjoint i8 %88, 64
  br label %90

90:                                               ; preds = %78, %80
  %91 = phi i64 [ %87, %80 ], [ %73, %78 ]
  %92 = phi i8 [ %89, %80 ], [ %79, %78 ]
  %93 = add i64 %91, 1
  %94 = or i8 %92, -128
  %95 = xor i64 %91, -1
  %96 = select i1 %5, i8 %94, i8 %92
  %97 = select i1 %5, i64 %95, i64 %93
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %12, %90
  %100 = phi i8 [ %17, %12 ], [ %96, %90 ]
  %101 = and i8 %100, 63
  %102 = zext nneg i8 %101 to i64
  %103 = shl nsw i64 -1, %102
  %104 = xor i64 %103, -1
  %105 = insertelement <2 x i64> poison, i64 %104, i64 0
  %106 = shufflevector <2 x i64> %105, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = bitcast <2 x i64> %0 to <4 x i32>
  %108 = ashr <4 x i32> %107, <i32 0, i32 31, i32 0, i32 31>
  %109 = shufflevector <4 x i32> %108, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %110 = bitcast <4 x i32> %109 to <2 x i64>
  %111 = and <2 x i64> %106, %110
  %112 = add <2 x i64> %111, %0
  %113 = xor i8 %101, 63
  %114 = zext nneg i8 %113 to i64
  %115 = shl nuw i64 1, %114
  %116 = insertelement <2 x i64> poison, i64 %115, i64 0
  %117 = shufflevector <2 x i64> %116, <2 x i64> poison, <2 x i32> zeroinitializer
  %118 = insertelement <2 x i64> poison, i64 %102, i64 0
  %119 = shufflevector <2 x i64> %118, <2 x i64> poison, <2 x i32> zeroinitializer
  %120 = lshr <2 x i64> %112, %119
  %121 = xor <2 x i64> %120, %117
  %122 = sub <2 x i64> %121, %117
  %123 = ashr i8 %100, 7
  %124 = sext i8 %123 to i32
  %125 = insertelement <4 x i32> poison, i32 %124, i64 0
  %126 = shufflevector <4 x i32> %125, <4 x i32> poison, <4 x i32> zeroinitializer
  %127 = bitcast <4 x i32> %126 to <2 x i64>
  %128 = xor <2 x i64> %122, %127
  %129 = sub <2 x i64> %128, %127
  br label %191

130:                                              ; preds = %90
  %131 = insertelement <2 x i64> poison, i64 %97, i64 0
  %132 = shufflevector <2 x i64> %131, <2 x i64> poison, <2 x i32> zeroinitializer
  %133 = and <2 x i64> %0, splat (i64 4294967295)
  %134 = and <2 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <2 x i64> %134, %133
  %136 = lshr <2 x i64> %135, splat (i64 32)
  %137 = bitcast <2 x i64> %0 to <4 x i32>
  %138 = shufflevector <4 x i32> %137, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %139 = bitcast <4 x i32> %138 to <2 x i64>
  %140 = bitcast <2 x i64> %132 to <4 x i32>
  %141 = shufflevector <4 x i32> %140, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %142 = bitcast <4 x i32> %141 to <2 x i64>
  %143 = and <2 x i64> %142, splat (i64 4294967295)
  %144 = mul nuw <2 x i64> %143, %133
  %145 = and <2 x i64> %139, splat (i64 4294967295)
  %146 = mul nuw <2 x i64> %134, %145
  %147 = mul nuw <2 x i64> %143, %145
  %148 = add nuw <2 x i64> %136, %146
  %149 = and <2 x i64> %148, splat (i64 4294967295)
  %150 = lshr <2 x i64> %148, splat (i64 32)
  %151 = add nuw <2 x i64> %149, %144
  %152 = lshr <2 x i64> %151, splat (i64 32)
  %153 = ashr <4 x i32> %138, splat (i32 31)
  %154 = bitcast <4 x i32> %153 to <2 x i64>
  %155 = and <2 x i64> %132, %154
  %156 = ashr <4 x i32> %141, splat (i32 31)
  %157 = bitcast <4 x i32> %156 to <2 x i64>
  %158 = and <2 x i64> %0, %157
  %159 = add nuw <2 x i64> %150, %147
  %160 = add <2 x i64> %155, %158
  %161 = sub <2 x i64> %159, %160
  %162 = add <2 x i64> %161, %152
  %163 = zext i8 %96 to i32
  %164 = and i32 %163, 64
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %130
  %167 = ashr i8 %96, 7
  %168 = sext i8 %167 to i32
  %169 = insertelement <4 x i32> poison, i32 %168, i64 0
  %170 = shufflevector <4 x i32> %169, <4 x i32> poison, <4 x i32> zeroinitializer
  %171 = bitcast <4 x i32> %170 to <2 x i64>
  %172 = xor <2 x i64> %0, %171
  %173 = sub <2 x i64> %172, %171
  %174 = add <2 x i64> %173, %162
  br label %175

175:                                              ; preds = %166, %130
  %176 = phi <2 x i64> [ %174, %166 ], [ %162, %130 ]
  %177 = and i32 %163, 63
  %178 = xor i32 %177, 63
  %179 = zext nneg i32 %178 to i64
  %180 = shl nuw i64 1, %179
  %181 = insertelement <2 x i64> poison, i64 %180, i64 0
  %182 = shufflevector <2 x i64> %181, <2 x i64> poison, <2 x i32> zeroinitializer
  %183 = zext nneg i32 %177 to i64
  %184 = insertelement <2 x i64> poison, i64 %183, i64 0
  %185 = shufflevector <2 x i64> %184, <2 x i64> poison, <2 x i32> zeroinitializer
  %186 = lshr <2 x i64> %176, %185
  %187 = xor <2 x i64> %186, %182
  %188 = sub <2 x i64> %187, %182
  %189 = lshr <2 x i64> %188, splat (i64 63)
  %190 = add <2 x i64> %189, %188
  br label %191

191:                                              ; preds = %175, %99, %2
  %192 = phi <2 x i64> [ %0, %2 ], [ %129, %99 ], [ %190, %175 ]
  ret <2 x i64> %192
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
  %57 = icmp slt <4 x i32> %56, zeroinitializer
  %58 = select <4 x i1> %57, <4 x i32> %46, <4 x i32> zeroinitializer
  %59 = bitcast <2 x i64> %55 to <4 x i32>
  %60 = icmp slt <4 x i32> %46, zeroinitializer
  %61 = select <4 x i1> %60, <4 x i32> %56, <4 x i32> zeroinitializer
  %62 = add <4 x i32> %58, %61
  %63 = sub <4 x i32> %56, %62
  %64 = add <4 x i32> %63, %59
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

66:                                               ; preds = %12, %56
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
  %101 = add nuw <2 x i64> %95, %98
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
  br i1 %3, label %152, label %4

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
  %116 = ashr <4 x i32> %101, splat (i32 31)
  %117 = bitcast <4 x i32> %116 to <2 x i64>
  %118 = and <2 x i64> %95, %117
  %119 = ashr <4 x i32> %104, splat (i32 31)
  %120 = bitcast <4 x i32> %119 to <2 x i64>
  %121 = and <2 x i64> %0, %120
  %122 = sub <2 x i64> %0, %118
  %123 = add <2 x i64> %122, %113
  %124 = add <2 x i64> %123, %110
  %125 = sub <2 x i64> %124, %121
  %126 = add <2 x i64> %125, %115
  %127 = icmp eq i64 %86, 0
  %128 = bitcast <2 x i64> %126 to <4 x i32>
  %129 = ashr <4 x i32> %128, <i32 0, i32 31, i32 0, i32 31>
  %130 = shufflevector <4 x i32> %129, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %131 = bitcast <4 x i32> %130 to <2 x i64>
  %132 = zext nneg i8 %88 to i64
  %133 = shl nuw i64 1, %132
  %134 = sext i1 %127 to i64
  %135 = add i64 %133, %134
  %136 = insertelement <2 x i64> poison, i64 %135, i64 0
  %137 = shufflevector <2 x i64> %136, <2 x i64> poison, <2 x i32> zeroinitializer
  %138 = and <2 x i64> %137, %131
  %139 = add <2 x i64> %138, %126
  %140 = xor i8 %88, 63
  %141 = zext nneg i8 %140 to i64
  %142 = shl nuw i64 1, %141
  %143 = insertelement <2 x i64> poison, i64 %142, i64 0
  %144 = shufflevector <2 x i64> %143, <2 x i64> poison, <2 x i32> zeroinitializer
  %145 = insertelement <2 x i64> poison, i64 %132, i64 0
  %146 = shufflevector <2 x i64> %145, <2 x i64> poison, <2 x i32> zeroinitializer
  %147 = lshr <2 x i64> %139, %146
  %148 = xor <2 x i64> %147, %144
  %149 = sub <2 x i64> %148, %144
  %150 = xor <2 x i64> %149, %93
  %151 = sub <2 x i64> %150, %93
  br label %152

152:                                              ; preds = %2, %85
  %153 = phi <2 x i64> [ %151, %85 ], [ %0, %2 ]
  ret <2 x i64> %153
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
