; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"libdivide.h:%d: %s(): Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"branchfree divider must be != 1\00", align 1
@__func__.libdivide_s32_branchfree_gen = private unnamed_addr constant [29 x i8] c"libdivide_s32_branchfree_gen\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"branchfree divider must be != -1\00", align 1
@__func__.libdivide_s64_branchfree_gen = private unnamed_addr constant [29 x i8] c"libdivide_s64_branchfree_gen\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u32_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %49, label %9

9:                                                ; preds = %4
  %10 = shl nuw i32 1, %6
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = zext i32 %1 to i64
  %14 = udiv i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = mul i32 %1, %15
  %17 = add i32 %16, %1
  %18 = icmp ult i32 %17, %10
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = trunc nuw nsw i32 %6 to i8
  br label %32

21:                                               ; preds = %9
  %22 = sub i32 0, %16
  %23 = shl i32 %15, 1
  %24 = shl i32 %22, 1
  %25 = icmp uge i32 %24, %1
  %26 = icmp slt i32 %22, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i32
  %29 = or disjoint i32 %23, %28
  %30 = trunc nuw nsw i32 %6 to i8
  %31 = or disjoint i8 %30, 64
  br label %32

32:                                               ; preds = %19, %21
  %33 = phi i32 [ %29, %21 ], [ %15, %19 ]
  %34 = phi i8 [ %31, %21 ], [ %20, %19 ]
  %35 = add i32 %33, 1
  %36 = zext nneg i8 %34 to i32
  %37 = insertelement <8 x i32> poison, i32 %35, i64 0
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> zeroinitializer
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %0, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = lshr <4 x i64> %42, splat (i64 32)
  %44 = lshr <4 x i64> %0, splat (i64 32)
  %45 = mul nuw <4 x i64> %41, %44
  %46 = and <4 x i64> %45, splat (i64 -4294967296)
  %47 = or disjoint <4 x i64> %43, %46
  %48 = icmp samesign ult i8 %34, 64
  br i1 %48, label %66, label %55

49:                                               ; preds = %4
  %50 = bitcast <4 x i64> %0 to <8 x i32>
  %51 = insertelement <8 x i32> poison, i32 %6, i64 0
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> zeroinitializer
  %53 = lshr <8 x i32> %50, %52
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  br label %70

55:                                               ; preds = %32
  %56 = and i32 %36, 31
  %57 = bitcast <4 x i64> %0 to <8 x i32>
  %58 = bitcast <4 x i64> %47 to <8 x i32>
  %59 = sub <8 x i32> %57, %58
  %60 = lshr <8 x i32> %59, splat (i32 1)
  %61 = add <8 x i32> %60, %58
  %62 = insertelement <8 x i32> poison, i32 %56, i64 0
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> zeroinitializer
  %64 = lshr <8 x i32> %61, %63
  %65 = bitcast <8 x i32> %64 to <4 x i64>
  br label %70

66:                                               ; preds = %32
  %67 = bitcast <4 x i64> %47 to <8 x i32>
  %68 = tail call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %67, i32 range(i32 0, 256) %36)
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  br label %70

70:                                               ; preds = %66, %55, %49, %2
  %71 = phi <4 x i64> [ %0, %2 ], [ %54, %49 ], [ %65, %55 ], [ %69, %66 ]
  ret <4 x i64> %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s32_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %113, label %4

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
  %16 = or disjoint i8 %15, 32
  br label %50

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

42:                                               ; preds = %31, %29
  %43 = phi i32 [ %39, %31 ], [ %24, %29 ]
  %44 = phi i8 [ %41, %31 ], [ %30, %29 ]
  %45 = add i32 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i32 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i32 %47, i32 %45
  br label %50

50:                                               ; preds = %11, %42
  %51 = phi i32 [ 0, %11 ], [ %49, %42 ]
  %52 = phi i8 [ %16, %11 ], [ %48, %42 ]
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %50
  %57 = and i32 %53, 31
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = insertelement <8 x i32> poison, i32 %59, i64 0
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> zeroinitializer
  %62 = bitcast <4 x i64> %0 to <8 x i32>
  %63 = icmp slt <8 x i32> %62, zeroinitializer
  %64 = select <8 x i1> %63, <8 x i32> %61, <8 x i32> zeroinitializer
  %65 = add <8 x i32> %64, %62
  %66 = insertelement <8 x i32> poison, i32 %57, i64 0
  %67 = shufflevector <8 x i32> %66, <8 x i32> poison, <8 x i32> zeroinitializer
  %68 = ashr <8 x i32> %65, %67
  %69 = ashr i8 %52, 7
  %70 = sext i8 %69 to i32
  %71 = insertelement <8 x i32> poison, i32 %70, i64 0
  %72 = shufflevector <8 x i32> %71, <8 x i32> poison, <8 x i32> zeroinitializer
  %73 = xor <8 x i32> %68, %72
  %74 = sub <8 x i32> %73, %72
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  br label %113

76:                                               ; preds = %50
  %77 = insertelement <8 x i32> poison, i32 %51, i64 0
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> zeroinitializer
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = shl <4 x i64> %0, splat (i64 32)
  %81 = ashr exact <4 x i64> %80, splat (i64 32)
  %82 = shl <4 x i64> %79, splat (i64 32)
  %83 = ashr exact <4 x i64> %82, splat (i64 32)
  %84 = mul nsw <4 x i64> %83, %81
  %85 = lshr <4 x i64> %84, splat (i64 32)
  %86 = ashr <4 x i64> %0, splat (i64 32)
  %87 = mul nsw <4 x i64> %83, %86
  %88 = and <4 x i64> %87, splat (i64 -4294967296)
  %89 = or disjoint <4 x i64> %85, %88
  %90 = and i32 %53, 64
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %76
  %93 = ashr i8 %52, 7
  %94 = sext i8 %93 to i32
  %95 = insertelement <8 x i32> poison, i32 %94, i64 0
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> zeroinitializer
  %97 = bitcast <4 x i64> %0 to <8 x i32>
  %98 = xor <8 x i32> %96, %97
  %99 = sub <8 x i32> %98, %96
  %100 = bitcast <4 x i64> %89 to <8 x i32>
  %101 = add <8 x i32> %99, %100
  %102 = bitcast <8 x i32> %101 to <4 x i64>
  br label %103

103:                                              ; preds = %92, %76
  %104 = phi <4 x i64> [ %102, %92 ], [ %89, %76 ]
  %105 = and i32 %53, 31
  %106 = bitcast <4 x i64> %104 to <8 x i32>
  %107 = insertelement <8 x i32> poison, i32 %105, i64 0
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> zeroinitializer
  %109 = ashr <8 x i32> %106, %108
  %110 = lshr <8 x i32> %109, splat (i32 31)
  %111 = add <8 x i32> %110, %109
  %112 = bitcast <8 x i32> %111 to <4 x i64>
  br label %113

113:                                              ; preds = %103, %56, %2
  %114 = phi <4 x i64> [ %0, %2 ], [ %75, %56 ], [ %112, %103 ]
  ret <4 x i64> %114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u64_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  %10 = zext nneg i32 %7 to i64
  br i1 %9, label %64, label %11

11:                                               ; preds = %4
  %12 = shl nuw i64 1, %10
  %13 = zext i64 %12 to i128
  %14 = shl nuw i128 %13, 64
  %15 = zext i64 %1 to i128
  %16 = udiv i128 %14, %15
  %17 = trunc i128 %16 to i64
  %18 = mul i64 %1, %17
  %19 = add i64 %18, %1
  %20 = icmp ult i64 %19, %12
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = trunc nuw nsw i32 %7 to i8
  br label %34

23:                                               ; preds = %11
  %24 = sub i64 0, %18
  %25 = shl i64 %17, 1
  %26 = shl i64 %24, 1
  %27 = icmp uge i64 %26, %1
  %28 = icmp slt i64 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i64
  %31 = or disjoint i64 %25, %30
  %32 = trunc nuw nsw i32 %7 to i8
  %33 = or disjoint i8 %32, 64
  br label %34

34:                                               ; preds = %21, %23
  %35 = phi i8 [ %33, %23 ], [ %22, %21 ]
  %36 = phi i64 [ %31, %23 ], [ %17, %21 ]
  %37 = add i64 %36, 1
  %38 = zext nneg i8 %35 to i32
  %39 = insertelement <4 x i64> poison, i64 %37, i64 0
  %40 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> zeroinitializer
  %41 = bitcast <4 x i64> %0 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = bitcast <4 x i64> %40 to <8 x i32>
  %45 = shufflevector <8 x i32> %44, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %46 = bitcast <8 x i32> %45 to <4 x i64>
  %47 = and <4 x i64> %0, splat (i64 4294967295)
  %48 = and <4 x i64> %40, splat (i64 4294967295)
  %49 = mul nuw <4 x i64> %48, %47
  %50 = and <4 x i64> %46, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, %47
  %52 = and <4 x i64> %43, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %48, %52
  %54 = mul nuw <4 x i64> %50, %52
  %55 = lshr <4 x i64> %49, splat (i64 32)
  %56 = add nuw <4 x i64> %51, %55
  %57 = and <4 x i64> %56, splat (i64 4294967295)
  %58 = lshr <4 x i64> %56, splat (i64 32)
  %59 = add nuw <4 x i64> %57, %53
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = add nuw <4 x i64> %58, %54
  %62 = add nuw <4 x i64> %61, %60
  %63 = icmp samesign ult i8 %35, 64
  br i1 %63, label %77, label %68

64:                                               ; preds = %4
  %65 = insertelement <4 x i64> poison, i64 %10, i64 0
  %66 = shufflevector <4 x i64> %65, <4 x i64> poison, <4 x i32> zeroinitializer
  %67 = lshr <4 x i64> %0, %66
  br label %79

68:                                               ; preds = %34
  %69 = and i32 %38, 63
  %70 = sub <4 x i64> %0, %62
  %71 = lshr <4 x i64> %70, splat (i64 1)
  %72 = add <4 x i64> %71, %62
  %73 = zext nneg i32 %69 to i64
  %74 = insertelement <4 x i64> poison, i64 %73, i64 0
  %75 = shufflevector <4 x i64> %74, <4 x i64> poison, <4 x i32> zeroinitializer
  %76 = lshr <4 x i64> %72, %75
  br label %79

77:                                               ; preds = %34
  %78 = tail call <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %62, i32 range(i32 0, 256) %38)
  br label %79

79:                                               ; preds = %77, %68, %64, %2
  %80 = phi <4 x i64> [ %0, %2 ], [ %67, %64 ], [ %76, %68 ], [ %78, %77 ]
  ret <4 x i64> %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s64_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %148, label %4

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
  br label %54

18:                                               ; preds = %4
  %19 = sub nsw i32 62, %8
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = zext i64 %21 to i128
  %23 = shl nuw i128 %22, 64
  %24 = zext i64 %6 to i128
  %25 = udiv i128 %23, %24
  %26 = trunc i128 %25 to i64
  %27 = mul i64 %6, %26
  %28 = add i64 %27, %6
  %29 = zext nneg i32 %9 to i64
  %30 = lshr i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = trunc nsw i32 %19 to i8
  br label %45

34:                                               ; preds = %18
  %35 = sub i64 0, %27
  %36 = shl i64 %26, 1
  %37 = shl i64 %35, 1
  %38 = icmp uge i64 %37, %6
  %39 = icmp slt i64 %35, 0
  %40 = or i1 %39, %38
  %41 = zext i1 %40 to i64
  %42 = or disjoint i64 %36, %41
  %43 = trunc nuw nsw i32 %9 to i8
  %44 = or disjoint i8 %43, 64
  br label %45

45:                                               ; preds = %32, %34
  %46 = phi i64 [ %42, %34 ], [ %26, %32 ]
  %47 = phi i8 [ %44, %34 ], [ %33, %32 ]
  %48 = add i64 %46, 1
  %49 = or i8 %47, -128
  %50 = xor i64 %46, -1
  %51 = select i1 %5, i8 %49, i8 %47
  %52 = select i1 %5, i64 %50, i64 %48
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %12, %45
  %55 = phi i8 [ %17, %12 ], [ %51, %45 ]
  %56 = and i8 %55, 63
  %57 = zext nneg i8 %56 to i64
  %58 = shl nsw i64 -1, %57
  %59 = xor i64 %58, -1
  %60 = insertelement <4 x i64> poison, i64 %59, i64 0
  %61 = shufflevector <4 x i64> %60, <4 x i64> poison, <4 x i32> zeroinitializer
  %62 = bitcast <4 x i64> %0 to <8 x i32>
  %63 = ashr <8 x i32> %62, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %64 = shufflevector <8 x i32> %63, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %65 = bitcast <8 x i32> %64 to <4 x i64>
  %66 = and <4 x i64> %61, %65
  %67 = add <4 x i64> %66, %0
  %68 = xor i8 %56, 63
  %69 = zext nneg i8 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = insertelement <4 x i64> poison, i64 %70, i64 0
  %72 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> zeroinitializer
  %73 = insertelement <4 x i64> poison, i64 %57, i64 0
  %74 = shufflevector <4 x i64> %73, <4 x i64> poison, <4 x i32> zeroinitializer
  %75 = lshr <4 x i64> %67, %74
  %76 = xor <4 x i64> %75, %72
  %77 = sub <4 x i64> %76, %72
  %78 = ashr i8 %55, 7
  %79 = sext i8 %78 to i32
  %80 = insertelement <8 x i32> poison, i32 %79, i64 0
  %81 = shufflevector <8 x i32> %80, <8 x i32> poison, <8 x i32> zeroinitializer
  %82 = bitcast <8 x i32> %81 to <4 x i64>
  %83 = xor <4 x i64> %77, %82
  %84 = sub <4 x i64> %83, %82
  br label %148

85:                                               ; preds = %45
  %86 = insertelement <4 x i64> poison, i64 %52, i64 0
  %87 = shufflevector <4 x i64> %86, <4 x i64> poison, <4 x i32> zeroinitializer
  %88 = bitcast <4 x i64> %0 to <8 x i32>
  %89 = shufflevector <8 x i32> %88, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %90 = bitcast <8 x i32> %89 to <4 x i64>
  %91 = bitcast <4 x i64> %87 to <8 x i32>
  %92 = shufflevector <8 x i32> %91, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %93 = bitcast <8 x i32> %92 to <4 x i64>
  %94 = and <4 x i64> %0, splat (i64 4294967295)
  %95 = and <4 x i64> %87, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, %94
  %97 = and <4 x i64> %93, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, %94
  %99 = and <4 x i64> %90, splat (i64 4294967295)
  %100 = mul nuw <4 x i64> %95, %99
  %101 = mul nuw <4 x i64> %97, %99
  %102 = lshr <4 x i64> %96, splat (i64 32)
  %103 = add nuw <4 x i64> %98, %102
  %104 = and <4 x i64> %103, splat (i64 4294967295)
  %105 = lshr <4 x i64> %103, splat (i64 32)
  %106 = add nuw <4 x i64> %104, %100
  %107 = lshr <4 x i64> %106, splat (i64 32)
  %108 = ashr <8 x i32> %88, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %110 = bitcast <8 x i32> %109 to <4 x i64>
  %111 = and <4 x i64> %87, %110
  %112 = ashr <8 x i32> %91, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %0, %114
  %116 = add <4 x i64> %115, %111
  %117 = sub <4 x i64> %101, %116
  %118 = add <4 x i64> %117, %105
  %119 = add <4 x i64> %118, %107
  %120 = zext i8 %51 to i32
  %121 = and i32 %120, 64
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %85
  %124 = ashr i8 %51, 7
  %125 = sext i8 %124 to i32
  %126 = insertelement <8 x i32> poison, i32 %125, i64 0
  %127 = shufflevector <8 x i32> %126, <8 x i32> poison, <8 x i32> zeroinitializer
  %128 = bitcast <8 x i32> %127 to <4 x i64>
  %129 = xor <4 x i64> %0, %128
  %130 = sub <4 x i64> %129, %128
  %131 = add <4 x i64> %130, %119
  br label %132

132:                                              ; preds = %123, %85
  %133 = phi <4 x i64> [ %131, %123 ], [ %119, %85 ]
  %134 = and i32 %120, 63
  %135 = xor i32 %134, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = insertelement <4 x i64> poison, i64 %137, i64 0
  %139 = shufflevector <4 x i64> %138, <4 x i64> poison, <4 x i32> zeroinitializer
  %140 = zext nneg i32 %134 to i64
  %141 = insertelement <4 x i64> poison, i64 %140, i64 0
  %142 = shufflevector <4 x i64> %141, <4 x i64> poison, <4 x i32> zeroinitializer
  %143 = lshr <4 x i64> %133, %142
  %144 = xor <4 x i64> %143, %139
  %145 = sub <4 x i64> %144, %139
  %146 = lshr <4 x i64> %145, splat (i64 63)
  %147 = add <4 x i64> %146, %145
  br label %148

148:                                              ; preds = %132, %54, %2
  %149 = phi <4 x i64> [ %0, %2 ], [ %84, %54 ], [ %147, %132 ]
  ret <4 x i64> %149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u32_branchfree_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
  %31 = insertelement <8 x i32> poison, i32 %29, i64 0
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> zeroinitializer
  %33 = bitcast <8 x i32> %32 to <4 x i64>
  %34 = and <4 x i64> %0, splat (i64 4294967295)
  %35 = and <4 x i64> %33, splat (i64 4294967295)
  %36 = mul nuw <4 x i64> %35, %34
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = lshr <4 x i64> %0, splat (i64 32)
  %39 = mul nuw <4 x i64> %35, %38
  %40 = and <4 x i64> %39, splat (i64 -4294967296)
  %41 = or disjoint <4 x i64> %37, %40
  %42 = bitcast <4 x i64> %0 to <8 x i32>
  %43 = bitcast <4 x i64> %41 to <8 x i32>
  %44 = sub <8 x i32> %42, %43
  %45 = lshr <8 x i32> %44, splat (i32 1)
  %46 = add <8 x i32> %45, %43
  %47 = insertelement <8 x i32> poison, i32 %30, i64 0
  %48 = shufflevector <8 x i32> %47, <8 x i32> poison, <8 x i32> zeroinitializer
  %49 = lshr <8 x i32> %46, %48
  %50 = bitcast <8 x i32> %49 to <4 x i64>
  br label %51

51:                                               ; preds = %2, %28
  %52 = phi <4 x i64> [ %50, %28 ], [ %0, %2 ]
  ret <4 x i64> %52
}

; Function Attrs: nofree nounwind uwtable
define dso_local <4 x i64> @target_s32_branchfree_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %9 [
    i32 0, label %82
    i32 1, label %3
    i32 -1, label %6
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 1007, ptr noundef nonnull @__func__.libdivide_s32_branchfree_gen, ptr noundef nonnull @.str.2) #7
  tail call void @exit(i32 noundef -1) #8
  unreachable

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 1010, ptr noundef nonnull @__func__.libdivide_s32_branchfree_gen, ptr noundef nonnull @.str.3) #7
  tail call void @exit(i32 noundef -1) #8
  unreachable

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %11 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %10, i1 true)
  %12 = xor i32 %11, 31
  %13 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %10)
  %14 = icmp samesign ult i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = lshr i32 %1, 24
  %17 = and i32 %16, 128
  %18 = or disjoint i32 %12, %17
  %19 = trunc nuw i32 %18 to i8
  br label %42

20:                                               ; preds = %9
  %21 = icmp slt i32 %1, 0
  %22 = sub nuw nsw i32 30, %11
  %23 = shl nuw nsw i32 1, %22
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 32
  %26 = zext i32 %10 to i64
  %27 = udiv i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = mul i32 %10, %28
  %30 = sub i32 0, %29
  %31 = shl i32 %28, 1
  %32 = shl i32 %30, 1
  %33 = icmp uge i32 %32, %10
  %34 = icmp slt i32 %30, 0
  %35 = or i1 %34, %33
  %36 = zext i1 %35 to i32
  %37 = trunc nuw nsw i32 %12 to i8
  %38 = or disjoint i32 %31, 1
  %39 = add i32 %38, %36
  %40 = select i1 %21, i8 -64, i8 64
  %41 = or disjoint i8 %40, %37
  br label %42

42:                                               ; preds = %15, %20
  %43 = phi i32 [ 0, %15 ], [ %39, %20 ]
  %44 = phi i8 [ %19, %15 ], [ %41, %20 ]
  %45 = and i8 %44, 31
  %46 = ashr i8 %44, 7
  %47 = sext i8 %46 to i32
  %48 = insertelement <8 x i32> poison, i32 %47, i64 0
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer
  %50 = insertelement <8 x i32> poison, i32 %43, i64 0
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> zeroinitializer
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = shl <4 x i64> %0, splat (i64 32)
  %54 = ashr exact <4 x i64> %53, splat (i64 32)
  %55 = shl <4 x i64> %52, splat (i64 32)
  %56 = ashr exact <4 x i64> %55, splat (i64 32)
  %57 = mul nsw <4 x i64> %56, %54
  %58 = lshr <4 x i64> %57, splat (i64 32)
  %59 = ashr <4 x i64> %0, splat (i64 32)
  %60 = mul nsw <4 x i64> %56, %59
  %61 = and <4 x i64> %60, splat (i64 -4294967296)
  %62 = or disjoint <4 x i64> %58, %61
  %63 = bitcast <4 x i64> %62 to <8 x i32>
  %64 = bitcast <4 x i64> %0 to <8 x i32>
  %65 = add <8 x i32> %63, %64
  %66 = icmp eq i32 %43, 0
  %67 = sext i1 %66 to i32
  %68 = zext nneg i8 %45 to i32
  %69 = shl nuw i32 1, %68
  %70 = add i32 %69, %67
  %71 = insertelement <8 x i32> poison, i32 %70, i64 0
  %72 = shufflevector <8 x i32> %71, <8 x i32> poison, <8 x i32> zeroinitializer
  %73 = icmp slt <8 x i32> %65, zeroinitializer
  %74 = select <8 x i1> %73, <8 x i32> %72, <8 x i32> zeroinitializer
  %75 = add <8 x i32> %74, %65
  %76 = insertelement <8 x i32> poison, i32 %68, i64 0
  %77 = shufflevector <8 x i32> %76, <8 x i32> poison, <8 x i32> zeroinitializer
  %78 = ashr <8 x i32> %75, %77
  %79 = xor <8 x i32> %78, %49
  %80 = sub <8 x i32> %79, %49
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  br label %82

82:                                               ; preds = %2, %42
  %83 = phi <4 x i64> [ %81, %42 ], [ %0, %2 ]
  ret <4 x i64> %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u64_branchfree_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %7 = icmp samesign ult i64 %6, 2
  %8 = trunc nuw nsw i64 %5 to i32
  br i1 %7, label %9, label %11

9:                                                ; preds = %4
  %10 = sub nuw nsw i32 62, %8
  br label %30

11:                                               ; preds = %4
  %12 = xor i32 %8, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = zext i64 %14 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %1 to i128
  %18 = udiv i128 %16, %17
  %19 = trunc i128 %18 to i64
  %20 = mul i64 %1, %19
  %21 = sub i64 0, %20
  %22 = shl i64 %19, 1
  %23 = shl i64 %21, 1
  %24 = icmp uge i64 %23, %1
  %25 = icmp slt i64 %21, 0
  %26 = or i1 %25, %24
  %27 = zext i1 %26 to i64
  %28 = or disjoint i64 %22, 1
  %29 = add i64 %28, %27
  br label %30

30:                                               ; preds = %9, %11
  %31 = phi i64 [ 0, %9 ], [ %29, %11 ]
  %32 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %33 = insertelement <4 x i64> poison, i64 %31, i64 0
  %34 = shufflevector <4 x i64> %33, <4 x i64> poison, <4 x i32> zeroinitializer
  %35 = bitcast <4 x i64> %0 to <8 x i32>
  %36 = shufflevector <8 x i32> %35, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %37 = bitcast <8 x i32> %36 to <4 x i64>
  %38 = bitcast <4 x i64> %34 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %0, splat (i64 4294967295)
  %42 = and <4 x i64> %34, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = mul nuw <4 x i64> %44, %41
  %46 = and <4 x i64> %37, splat (i64 4294967295)
  %47 = mul nuw <4 x i64> %42, %46
  %48 = mul nuw <4 x i64> %44, %46
  %49 = lshr <4 x i64> %43, splat (i64 32)
  %50 = add nuw <4 x i64> %45, %49
  %51 = and <4 x i64> %50, splat (i64 4294967295)
  %52 = lshr <4 x i64> %50, splat (i64 32)
  %53 = add nuw <4 x i64> %51, %47
  %54 = lshr <4 x i64> %53, splat (i64 32)
  %55 = add nuw <4 x i64> %52, %48
  %56 = add nuw <4 x i64> %55, %54
  %57 = sub <4 x i64> %0, %56
  %58 = lshr <4 x i64> %57, splat (i64 1)
  %59 = add <4 x i64> %58, %56
  %60 = zext nneg i32 %32 to i64
  %61 = insertelement <4 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <4 x i64> %61, <4 x i64> poison, <4 x i32> zeroinitializer
  %63 = lshr <4 x i64> %59, %62
  br label %64

64:                                               ; preds = %2, %30
  %65 = phi <4 x i64> [ %63, %30 ], [ %0, %2 ]
  ret <4 x i64> %65
}

; Function Attrs: nofree nounwind uwtable
define dso_local <4 x i64> @target_s64_branchfree_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  switch i64 %1, label %9 [
    i64 0, label %113
    i64 1, label %3
    i64 -1, label %6
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @__func__.libdivide_s64_branchfree_gen, ptr noundef nonnull @.str.2) #7
  tail call void @exit(i32 noundef -1) #8
  unreachable

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 1232, ptr noundef nonnull @__func__.libdivide_s64_branchfree_gen, ptr noundef nonnull @.str.3) #7
  tail call void @exit(i32 noundef -1) #8
  unreachable

9:                                                ; preds = %2
  %10 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %11 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %10, i1 true)
  %12 = trunc nuw nsw i64 %11 to i32
  %13 = xor i32 %12, 63
  %14 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %10)
  %15 = icmp samesign ult i64 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = lshr i64 %1, 56
  %18 = trunc nuw nsw i64 %17 to i32
  %19 = and i32 %18, 128
  %20 = or disjoint i32 %13, %19
  %21 = trunc nuw i32 %20 to i8
  br label %44

22:                                               ; preds = %9
  %23 = icmp slt i64 %1, 0
  %24 = sub nuw nsw i64 62, %11
  %25 = shl nuw nsw i64 1, %24
  %26 = zext nneg i64 %25 to i128
  %27 = shl nuw nsw i128 %26, 64
  %28 = zext i64 %10 to i128
  %29 = udiv i128 %27, %28
  %30 = trunc i128 %29 to i64
  %31 = mul i64 %10, %30
  %32 = sub i64 0, %31
  %33 = shl i64 %30, 1
  %34 = shl i64 %32, 1
  %35 = icmp uge i64 %34, %10
  %36 = icmp slt i64 %32, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i64
  %39 = trunc nuw nsw i32 %13 to i8
  %40 = or disjoint i64 %33, 1
  %41 = add i64 %40, %38
  %42 = select i1 %23, i8 -64, i8 64
  %43 = or disjoint i8 %42, %39
  br label %44

44:                                               ; preds = %16, %22
  %45 = phi i64 [ 0, %16 ], [ %41, %22 ]
  %46 = phi i8 [ %21, %16 ], [ %43, %22 ]
  %47 = and i8 %46, 63
  %48 = ashr i8 %46, 7
  %49 = sext i8 %48 to i32
  %50 = insertelement <8 x i32> poison, i32 %49, i64 0
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> zeroinitializer
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = insertelement <4 x i64> poison, i64 %45, i64 0
  %54 = shufflevector <4 x i64> %53, <4 x i64> poison, <4 x i32> zeroinitializer
  %55 = bitcast <4 x i64> %0 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = bitcast <4 x i64> %54 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %0, splat (i64 4294967295)
  %62 = and <4 x i64> %54, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, %61
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %61
  %66 = and <4 x i64> %57, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %62, %66
  %68 = mul nuw <4 x i64> %64, %66
  %69 = lshr <4 x i64> %63, splat (i64 32)
  %70 = add nuw <4 x i64> %65, %69
  %71 = and <4 x i64> %70, splat (i64 4294967295)
  %72 = lshr <4 x i64> %70, splat (i64 32)
  %73 = add nuw <4 x i64> %71, %67
  %74 = lshr <4 x i64> %73, splat (i64 32)
  %75 = ashr <8 x i32> %55, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %76 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %77 = bitcast <8 x i32> %76 to <4 x i64>
  %78 = and <4 x i64> %54, %77
  %79 = ashr <8 x i32> %58, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %0, %81
  %83 = add <4 x i64> %78, %82
  %84 = sub <4 x i64> %0, %83
  %85 = add <4 x i64> %84, %68
  %86 = add <4 x i64> %85, %72
  %87 = add <4 x i64> %86, %74
  %88 = icmp eq i64 %45, 0
  %89 = bitcast <4 x i64> %87 to <8 x i32>
  %90 = ashr <8 x i32> %89, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = zext nneg i8 %47 to i64
  %94 = shl nuw i64 1, %93
  %95 = sext i1 %88 to i64
  %96 = add i64 %94, %95
  %97 = insertelement <4 x i64> poison, i64 %96, i64 0
  %98 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> zeroinitializer
  %99 = and <4 x i64> %98, %92
  %100 = add <4 x i64> %99, %87
  %101 = xor i8 %47, 63
  %102 = zext nneg i8 %101 to i64
  %103 = shl nuw i64 1, %102
  %104 = insertelement <4 x i64> poison, i64 %103, i64 0
  %105 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> zeroinitializer
  %106 = insertelement <4 x i64> poison, i64 %93, i64 0
  %107 = shufflevector <4 x i64> %106, <4 x i64> poison, <4 x i32> zeroinitializer
  %108 = lshr <4 x i64> %100, %107
  %109 = xor <4 x i64> %108, %105
  %110 = sub <4 x i64> %109, %105
  %111 = xor <4 x i64> %110, %52
  %112 = sub <4 x i64> %111, %52
  br label %113

113:                                              ; preds = %2, %44
  %114 = phi <4 x i64> [ %112, %44 ], [ %0, %2 ]
  ret <4 x i64> %114
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef, ptr noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32>, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64>, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
