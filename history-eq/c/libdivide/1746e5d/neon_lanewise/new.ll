; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1746e5d/wrap.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1746e5d/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <4 x i32> @target_u32_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = trunc nuw nsw i32 %6 to i8
  br label %55

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
  br i1 %38, label %55, label %39

39:                                               ; preds = %34
  %40 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %41 = insertelement <2 x i32> poison, i32 %37, i64 0
  %42 = shufflevector <2 x i32> %41, <2 x i32> poison, <2 x i32> zeroinitializer
  %43 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %40, <2 x i32> %42)
  %44 = bitcast <2 x i64> %43 to <4 x i32>
  %45 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %46 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %45, <2 x i32> %42)
  %47 = bitcast <2 x i64> %46 to <4 x i32>
  %48 = shufflevector <4 x i32> %44, <4 x i32> %47, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %49 = and i8 %36, 64
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = and i8 %36, 31
  %53 = tail call noundef <4 x i32> @llvm.aarch64.neon.uhsub.v4i32(<4 x i32> %0, <4 x i32> %48)
  %54 = add <4 x i32> %53, %48
  br label %55

55:                                               ; preds = %39, %34, %9, %51
  %56 = phi i8 [ %52, %51 ], [ %10, %9 ], [ %36, %34 ], [ %36, %39 ]
  %57 = phi <4 x i32> [ %54, %51 ], [ %0, %9 ], [ %0, %34 ], [ %48, %39 ]
  %58 = zext nneg i8 %56 to i32
  %59 = sub nsw i32 0, %58
  %60 = insertelement <4 x i32> poison, i32 %59, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = tail call noundef <4 x i32> @llvm.aarch64.neon.ushl.v4i32(<4 x i32> %57, <4 x i32> %61)
  br label %63

63:                                               ; preds = %55, %2
  %64 = phi <4 x i32> [ %0, %2 ], [ %62, %55 ]
  ret <4 x i32> %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i32> @target_s32_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %101, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %7 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %6, i1 true)
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
  %58 = icmp slt <4 x i32> %0, zeroinitializer
  %59 = select <4 x i1> %58, <4 x i32> %57, <4 x i32> zeroinitializer
  %60 = add <4 x i32> %59, %0
  %61 = sub nsw i32 0, %53
  %62 = insertelement <4 x i32> poison, i32 %61, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = tail call noundef <4 x i32> @llvm.aarch64.neon.sshl.v4i32(<4 x i32> %60, <4 x i32> %63)
  %65 = ashr i8 %51, 7
  %66 = sext i8 %65 to i32
  %67 = insertelement <4 x i32> poison, i32 %66, i64 0
  %68 = shufflevector <4 x i32> %67, <4 x i32> poison, <4 x i32> zeroinitializer
  %69 = xor <4 x i32> %64, %68
  %70 = sub <4 x i32> %69, %68
  br label %101

71:                                               ; preds = %41
  %72 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %73 = insertelement <2 x i32> poison, i32 %48, i64 0
  %74 = shufflevector <2 x i32> %73, <2 x i32> poison, <2 x i32> zeroinitializer
  %75 = tail call noundef <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %72, <2 x i32> %74)
  %76 = bitcast <2 x i64> %75 to <4 x i32>
  %77 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %78 = tail call noundef <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %77, <2 x i32> %74)
  %79 = bitcast <2 x i64> %78 to <4 x i32>
  %80 = shufflevector <4 x i32> %76, <4 x i32> %79, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %81 = and i8 %47, 64
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %71
  %84 = ashr i8 %47, 7
  %85 = sext i8 %84 to i32
  %86 = insertelement <4 x i32> poison, i32 %85, i64 0
  %87 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> zeroinitializer
  %88 = xor <4 x i32> %87, %0
  %89 = sub <4 x i32> %88, %87
  %90 = add <4 x i32> %89, %80
  br label %91

91:                                               ; preds = %83, %71
  %92 = phi <4 x i32> [ %90, %83 ], [ %80, %71 ]
  %93 = and i8 %47, 31
  %94 = zext nneg i8 %93 to i32
  %95 = sub nsw i32 0, %94
  %96 = insertelement <4 x i32> poison, i32 %95, i64 0
  %97 = shufflevector <4 x i32> %96, <4 x i32> poison, <4 x i32> zeroinitializer
  %98 = tail call noundef <4 x i32> @llvm.aarch64.neon.sshl.v4i32(<4 x i32> %92, <4 x i32> %97)
  %99 = lshr <4 x i32> %98, splat (i32 31)
  %100 = add <4 x i32> %99, %98
  br label %101

101:                                              ; preds = %91, %50, %2
  %102 = phi <4 x i32> [ %0, %2 ], [ %100, %91 ], [ %70, %50 ]
  ret <4 x i32> %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x i64> @target_u64_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %126, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %84

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
  %23 = sub i64 %18, %22
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
  %43 = sub i64 %40, %42
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
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = shl i64 %66, 1
  %71 = shl i64 %65, 1
  %72 = icmp uge i64 %71, %1
  %73 = icmp slt i64 %65, 0
  %74 = or i1 %73, %72
  %75 = zext i1 %74 to i64
  %76 = or disjoint i64 %70, %75
  %77 = or disjoint i32 %7, 64
  br label %78

78:                                               ; preds = %64, %69
  %79 = phi i32 [ %77, %69 ], [ %7, %64 ]
  %80 = phi i64 [ %76, %69 ], [ %66, %64 ]
  %81 = add i64 %80, 1
  %82 = trunc nuw nsw i32 %79 to i8
  %83 = icmp eq i64 %81, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %10, %78
  %85 = phi i8 [ %11, %10 ], [ %82, %78 ]
  %86 = zext nneg i8 %85 to i64
  br label %119

87:                                               ; preds = %78
  %88 = insertelement <2 x i64> poison, i64 %81, i64 0
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> zeroinitializer
  %90 = trunc <2 x i64> %0 to <2 x i32>
  %91 = trunc <2 x i64> %89 to <2 x i32>
  %92 = lshr <2 x i64> %0, splat (i64 32)
  %93 = trunc nuw <2 x i64> %92 to <2 x i32>
  %94 = lshr <2 x i64> %89, splat (i64 32)
  %95 = trunc nuw <2 x i64> %94 to <2 x i32>
  %96 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %90, <2 x i32> %91)
  %97 = lshr <2 x i64> %96, splat (i64 32)
  %98 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %93, <2 x i32> %91)
  %99 = add <2 x i64> %97, %98
  %100 = and <2 x i64> %99, splat (i64 4294967295)
  %101 = lshr <2 x i64> %99, splat (i64 32)
  %102 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %90, <2 x i32> %95)
  %103 = add <2 x i64> %100, %102
  %104 = lshr <2 x i64> %103, splat (i64 32)
  %105 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %93, <2 x i32> %95)
  %106 = add <2 x i64> %101, %105
  %107 = add <2 x i64> %106, %104
  %108 = and i8 %82, 64
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %87
  %111 = and i8 %82, 63
  %112 = sub <2 x i64> %0, %107
  %113 = lshr <2 x i64> %112, splat (i64 1)
  %114 = add <2 x i64> %113, %107
  %115 = zext nneg i8 %111 to i64
  br label %119

116:                                              ; preds = %87
  %117 = and i32 %79, 255
  %118 = zext nneg i32 %117 to i64
  br label %119

119:                                              ; preds = %84, %110, %116
  %120 = phi i64 [ %118, %116 ], [ %115, %110 ], [ %86, %84 ]
  %121 = phi <2 x i64> [ %107, %116 ], [ %114, %110 ], [ %0, %84 ]
  %122 = sub nsw i64 0, %120
  %123 = insertelement <2 x i64> poison, i64 %122, i64 0
  %124 = shufflevector <2 x i64> %123, <2 x i64> poison, <2 x i32> zeroinitializer
  %125 = tail call noundef <2 x i64> @llvm.aarch64.neon.ushl.v2i64(<2 x i64> %121, <2 x i64> %124)
  br label %126

126:                                              ; preds = %119, %2
  %127 = phi <2 x i64> [ %0, %2 ], [ %125, %119 ]
  ret <2 x i64> %127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s64_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %167, label %4

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
  %30 = sub i64 %25, %29
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
  %50 = sub i64 %47, %49
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

71:                                               ; preds = %63, %18
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
  br i1 %98, label %99, label %120

99:                                               ; preds = %12, %90
  %100 = phi i8 [ %17, %12 ], [ %96, %90 ]
  %101 = and i8 %100, 63
  %102 = zext nneg i8 %101 to i64
  %103 = shl nsw i64 -1, %102
  %104 = xor i64 %103, -1
  %105 = insertelement <2 x i64> poison, i64 %104, i64 0
  %106 = shufflevector <2 x i64> %105, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = icmp slt <2 x i64> %0, zeroinitializer
  %108 = select <2 x i1> %107, <2 x i64> %106, <2 x i64> zeroinitializer
  %109 = add <2 x i64> %108, %0
  %110 = sub nsw i64 0, %102
  %111 = insertelement <2 x i64> poison, i64 %110, i64 0
  %112 = shufflevector <2 x i64> %111, <2 x i64> poison, <2 x i32> zeroinitializer
  %113 = tail call noundef <2 x i64> @llvm.aarch64.neon.sshl.v2i64(<2 x i64> %109, <2 x i64> %112)
  %114 = ashr i8 %100, 7
  %115 = insertelement <16 x i8> poison, i8 %114, i64 0
  %116 = shufflevector <16 x i8> %115, <16 x i8> poison, <16 x i32> zeroinitializer
  %117 = bitcast <16 x i8> %116 to <2 x i64>
  %118 = xor <2 x i64> %113, %117
  %119 = sub <2 x i64> %118, %117
  br label %167

120:                                              ; preds = %90
  %121 = insertelement <2 x i64> poison, i64 %97, i64 0
  %122 = shufflevector <2 x i64> %121, <2 x i64> poison, <2 x i32> zeroinitializer
  %123 = trunc <2 x i64> %0 to <2 x i32>
  %124 = trunc <2 x i64> %122 to <2 x i32>
  %125 = lshr <2 x i64> %0, splat (i64 32)
  %126 = trunc nuw <2 x i64> %125 to <2 x i32>
  %127 = lshr <2 x i64> %122, splat (i64 32)
  %128 = trunc nuw <2 x i64> %127 to <2 x i32>
  %129 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %123, <2 x i32> %124)
  %130 = lshr <2 x i64> %129, splat (i64 32)
  %131 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %126, <2 x i32> %124)
  %132 = add <2 x i64> %130, %131
  %133 = and <2 x i64> %132, splat (i64 4294967295)
  %134 = lshr <2 x i64> %132, splat (i64 32)
  %135 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %123, <2 x i32> %128)
  %136 = add <2 x i64> %133, %135
  %137 = lshr <2 x i64> %136, splat (i64 32)
  %138 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %126, <2 x i32> %128)
  %139 = icmp slt <2 x i64> %0, zeroinitializer
  %140 = select <2 x i1> %139, <2 x i64> %122, <2 x i64> zeroinitializer
  %141 = icmp slt <2 x i64> %122, zeroinitializer
  %142 = select <2 x i1> %141, <2 x i64> %0, <2 x i64> zeroinitializer
  %143 = add <2 x i64> %142, %140
  %144 = sub <2 x i64> %138, %143
  %145 = add <2 x i64> %144, %134
  %146 = add <2 x i64> %145, %137
  %147 = and i8 %96, 64
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %120
  %150 = ashr i8 %96, 7
  %151 = sext i8 %150 to i64
  %152 = insertelement <2 x i64> poison, i64 %151, i64 0
  %153 = shufflevector <2 x i64> %152, <2 x i64> poison, <2 x i32> zeroinitializer
  %154 = xor <2 x i64> %153, %0
  %155 = sub <2 x i64> %154, %153
  %156 = add <2 x i64> %155, %146
  br label %157

157:                                              ; preds = %149, %120
  %158 = phi <2 x i64> [ %156, %149 ], [ %146, %120 ]
  %159 = and i8 %96, 63
  %160 = zext nneg i8 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = insertelement <2 x i64> poison, i64 %161, i64 0
  %163 = shufflevector <2 x i64> %162, <2 x i64> poison, <2 x i32> zeroinitializer
  %164 = tail call noundef <2 x i64> @llvm.aarch64.neon.sshl.v2i64(<2 x i64> %158, <2 x i64> %163)
  %165 = lshr <2 x i64> %164, splat (i64 63)
  %166 = add <2 x i64> %165, %164
  br label %167

167:                                              ; preds = %157, %99, %2
  %168 = phi <2 x i64> [ %0, %2 ], [ %119, %99 ], [ %166, %157 ]
  ret <2 x i64> %168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <4 x i32> @target_u32_branchfree_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
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
  %31 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %32 = insertelement <2 x i32> poison, i32 %29, i64 0
  %33 = shufflevector <2 x i32> %32, <2 x i32> poison, <2 x i32> zeroinitializer
  %34 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %31, <2 x i32> %33)
  %35 = bitcast <2 x i64> %34 to <4 x i32>
  %36 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %37 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %36, <2 x i32> %33)
  %38 = bitcast <2 x i64> %37 to <4 x i32>
  %39 = shufflevector <4 x i32> %35, <4 x i32> %38, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %40 = tail call noundef <4 x i32> @llvm.aarch64.neon.uhsub.v4i32(<4 x i32> %0, <4 x i32> %39)
  %41 = add <4 x i32> %39, %40
  %42 = sub nsw i32 0, %30
  %43 = insertelement <4 x i32> poison, i32 %42, i64 0
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> zeroinitializer
  %45 = tail call noundef <4 x i32> @llvm.aarch64.neon.ushl.v4i32(<4 x i32> %41, <4 x i32> %44)
  br label %46

46:                                               ; preds = %2, %28
  %47 = phi <4 x i32> [ %45, %28 ], [ %0, %2 ]
  ret <4 x i32> %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i32> @target_s32_branchfree_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %6 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %5, i1 true)
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
  %45 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %46 = insertelement <2 x i32> poison, i32 %38, i64 0
  %47 = shufflevector <2 x i32> %46, <2 x i32> poison, <2 x i32> zeroinitializer
  %48 = tail call noundef <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %45, <2 x i32> %47)
  %49 = bitcast <2 x i64> %48 to <4 x i32>
  %50 = shufflevector <4 x i32> %0, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %51 = tail call noundef <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %50, <2 x i32> %47)
  %52 = bitcast <2 x i64> %51 to <4 x i32>
  %53 = shufflevector <4 x i32> %49, <4 x i32> %52, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %54 = add <4 x i32> %53, %0
  %55 = icmp eq i32 %38, 0
  %56 = sext i1 %55 to i32
  %57 = zext nneg i8 %40 to i32
  %58 = shl nuw i32 1, %57
  %59 = add i32 %58, %56
  %60 = insertelement <4 x i32> poison, i32 %59, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = icmp slt <4 x i32> %54, zeroinitializer
  %63 = select <4 x i1> %62, <4 x i32> %61, <4 x i32> zeroinitializer
  %64 = add <4 x i32> %63, %54
  %65 = sub nsw i32 0, %57
  %66 = insertelement <4 x i32> poison, i32 %65, i64 0
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> zeroinitializer
  %68 = tail call noundef <4 x i32> @llvm.aarch64.neon.sshl.v4i32(<4 x i32> %64, <4 x i32> %67)
  %69 = xor <4 x i32> %44, %68
  %70 = sub <4 x i32> %69, %44
  br label %71

71:                                               ; preds = %2, %37
  %72 = phi <4 x i32> [ %70, %37 ], [ %0, %2 ]
  ret <4 x i32> %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x i64> @target_u64_branchfree_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %107, label %4

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
  %23 = sub i64 %18, %22
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
  %43 = sub i64 %40, %42
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
  %79 = zext nneg i32 %78 to i64
  %80 = insertelement <2 x i64> poison, i64 %76, i64 0
  %81 = shufflevector <2 x i64> %80, <2 x i64> poison, <2 x i32> zeroinitializer
  %82 = trunc <2 x i64> %0 to <2 x i32>
  %83 = trunc <2 x i64> %81 to <2 x i32>
  %84 = lshr <2 x i64> %0, splat (i64 32)
  %85 = trunc nuw <2 x i64> %84 to <2 x i32>
  %86 = lshr <2 x i64> %81, splat (i64 32)
  %87 = trunc nuw <2 x i64> %86 to <2 x i32>
  %88 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %82, <2 x i32> %83)
  %89 = lshr <2 x i64> %88, splat (i64 32)
  %90 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %85, <2 x i32> %83)
  %91 = add <2 x i64> %89, %90
  %92 = and <2 x i64> %91, splat (i64 4294967295)
  %93 = lshr <2 x i64> %91, splat (i64 32)
  %94 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %82, <2 x i32> %87)
  %95 = add <2 x i64> %92, %94
  %96 = lshr <2 x i64> %95, splat (i64 32)
  %97 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %85, <2 x i32> %87)
  %98 = add <2 x i64> %93, %97
  %99 = add <2 x i64> %98, %96
  %100 = sub <2 x i64> %0, %99
  %101 = lshr <2 x i64> %100, splat (i64 1)
  %102 = add <2 x i64> %101, %99
  %103 = sub nsw i64 0, %79
  %104 = insertelement <2 x i64> poison, i64 %103, i64 0
  %105 = shufflevector <2 x i64> %104, <2 x i64> poison, <2 x i32> zeroinitializer
  %106 = tail call noundef <2 x i64> @llvm.aarch64.neon.ushl.v2i64(<2 x i64> %102, <2 x i64> %105)
  br label %107

107:                                              ; preds = %2, %75
  %108 = phi <2 x i64> [ %106, %75 ], [ %0, %2 ]
  ret <2 x i64> %108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s64_branchfree_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %136, label %4

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
  %30 = sub i64 %25, %29
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
  %50 = sub i64 %47, %49
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
  %90 = sext i8 %89 to i64
  %91 = insertelement <2 x i64> poison, i64 %90, i64 0
  %92 = shufflevector <2 x i64> %91, <2 x i64> poison, <2 x i32> zeroinitializer
  %93 = insertelement <2 x i64> poison, i64 %86, i64 0
  %94 = shufflevector <2 x i64> %93, <2 x i64> poison, <2 x i32> zeroinitializer
  %95 = trunc <2 x i64> %0 to <2 x i32>
  %96 = trunc <2 x i64> %94 to <2 x i32>
  %97 = lshr <2 x i64> %0, splat (i64 32)
  %98 = trunc nuw <2 x i64> %97 to <2 x i32>
  %99 = lshr <2 x i64> %94, splat (i64 32)
  %100 = trunc nuw <2 x i64> %99 to <2 x i32>
  %101 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %95, <2 x i32> %96)
  %102 = lshr <2 x i64> %101, splat (i64 32)
  %103 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %98, <2 x i32> %96)
  %104 = add <2 x i64> %102, %103
  %105 = and <2 x i64> %104, splat (i64 4294967295)
  %106 = lshr <2 x i64> %104, splat (i64 32)
  %107 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %95, <2 x i32> %100)
  %108 = add <2 x i64> %105, %107
  %109 = lshr <2 x i64> %108, splat (i64 32)
  %110 = tail call noundef <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %98, <2 x i32> %100)
  %111 = icmp slt <2 x i64> %0, zeroinitializer
  %112 = select <2 x i1> %111, <2 x i64> %94, <2 x i64> zeroinitializer
  %113 = icmp slt <2 x i64> %94, zeroinitializer
  %114 = select <2 x i1> %113, <2 x i64> %0, <2 x i64> zeroinitializer
  %115 = add <2 x i64> %112, %114
  %116 = sub <2 x i64> %0, %115
  %117 = add <2 x i64> %116, %110
  %118 = add <2 x i64> %117, %106
  %119 = add <2 x i64> %118, %109
  %120 = icmp eq i64 %86, 0
  %121 = zext nneg i8 %88 to i64
  %122 = shl nuw i64 1, %121
  %123 = sext i1 %120 to i64
  %124 = add i64 %122, %123
  %125 = insertelement <2 x i64> poison, i64 %124, i64 0
  %126 = shufflevector <2 x i64> %125, <2 x i64> poison, <2 x i32> zeroinitializer
  %127 = icmp slt <2 x i64> %119, zeroinitializer
  %128 = select <2 x i1> %127, <2 x i64> %126, <2 x i64> zeroinitializer
  %129 = add <2 x i64> %128, %119
  %130 = sub nsw i64 0, %121
  %131 = insertelement <2 x i64> poison, i64 %130, i64 0
  %132 = shufflevector <2 x i64> %131, <2 x i64> poison, <2 x i32> zeroinitializer
  %133 = tail call noundef <2 x i64> @llvm.aarch64.neon.sshl.v2i64(<2 x i64> %129, <2 x i64> %132)
  %134 = xor <2 x i64> %133, %92
  %135 = sub <2 x i64> %134, %92
  br label %136

136:                                              ; preds = %2, %85
  %137 = phi <2 x i64> [ %135, %85 ], [ %0, %2 ]
  ret <2 x i64> %137
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.ushl.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.uhsub.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.sshl.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32>, <2 x i32>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.ushl.v2i64(<2 x i64>, <2 x i64>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.sshl.v2i64(<2 x i64>, <2 x i64>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
