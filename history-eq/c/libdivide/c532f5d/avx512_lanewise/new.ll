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
define dso_local <8 x i64> @target_u32_lanewise(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
  %37 = insertelement <16 x i32> poison, i32 %35, i64 0
  %38 = shufflevector <16 x i32> %37, <16 x i32> poison, <16 x i32> zeroinitializer
  %39 = bitcast <16 x i32> %38 to <8 x i64>
  %40 = and <8 x i64> %0, splat (i64 4294967295)
  %41 = and <8 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <8 x i64> %41, %40
  %43 = lshr <8 x i64> %42, splat (i64 32)
  %44 = lshr <8 x i64> %0, splat (i64 32)
  %45 = mul nuw <8 x i64> %41, %44
  %46 = and <8 x i64> %45, splat (i64 -4294967296)
  %47 = or disjoint <8 x i64> %43, %46
  %48 = icmp samesign ult i8 %34, 64
  br i1 %48, label %66, label %55

49:                                               ; preds = %4
  %50 = bitcast <8 x i64> %0 to <16 x i32>
  %51 = insertelement <16 x i32> poison, i32 %6, i64 0
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> zeroinitializer
  %53 = lshr <16 x i32> %50, %52
  %54 = bitcast <16 x i32> %53 to <8 x i64>
  br label %70

55:                                               ; preds = %32
  %56 = and i32 %36, 31
  %57 = bitcast <8 x i64> %0 to <16 x i32>
  %58 = bitcast <8 x i64> %47 to <16 x i32>
  %59 = sub <16 x i32> %57, %58
  %60 = lshr <16 x i32> %59, splat (i32 1)
  %61 = add <16 x i32> %60, %58
  %62 = insertelement <16 x i32> poison, i32 %56, i64 0
  %63 = shufflevector <16 x i32> %62, <16 x i32> poison, <16 x i32> zeroinitializer
  %64 = lshr <16 x i32> %61, %63
  %65 = bitcast <16 x i32> %64 to <8 x i64>
  br label %70

66:                                               ; preds = %32
  %67 = bitcast <8 x i64> %47 to <16 x i32>
  %68 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %67, i32 range(i32 0, 256) %36)
  %69 = bitcast <16 x i32> %68 to <8 x i64>
  br label %70

70:                                               ; preds = %66, %55, %49, %2
  %71 = phi <8 x i64> [ %0, %2 ], [ %54, %49 ], [ %65, %55 ], [ %69, %66 ]
  ret <8 x i64> %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_s32_lanewise(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
  %60 = insertelement <16 x i32> poison, i32 %59, i64 0
  %61 = shufflevector <16 x i32> %60, <16 x i32> poison, <16 x i32> zeroinitializer
  %62 = bitcast <8 x i64> %0 to <16 x i32>
  %63 = icmp slt <16 x i32> %62, zeroinitializer
  %64 = select <16 x i1> %63, <16 x i32> %61, <16 x i32> zeroinitializer
  %65 = add <16 x i32> %64, %62
  %66 = insertelement <16 x i32> poison, i32 %57, i64 0
  %67 = shufflevector <16 x i32> %66, <16 x i32> poison, <16 x i32> zeroinitializer
  %68 = ashr <16 x i32> %65, %67
  %69 = ashr i8 %52, 7
  %70 = sext i8 %69 to i32
  %71 = insertelement <16 x i32> poison, i32 %70, i64 0
  %72 = shufflevector <16 x i32> %71, <16 x i32> poison, <16 x i32> zeroinitializer
  %73 = xor <16 x i32> %68, %72
  %74 = sub <16 x i32> %73, %72
  %75 = bitcast <16 x i32> %74 to <8 x i64>
  br label %113

76:                                               ; preds = %50
  %77 = insertelement <16 x i32> poison, i32 %51, i64 0
  %78 = shufflevector <16 x i32> %77, <16 x i32> poison, <16 x i32> zeroinitializer
  %79 = bitcast <16 x i32> %78 to <8 x i64>
  %80 = shl <8 x i64> %0, splat (i64 32)
  %81 = ashr exact <8 x i64> %80, splat (i64 32)
  %82 = shl <8 x i64> %79, splat (i64 32)
  %83 = ashr exact <8 x i64> %82, splat (i64 32)
  %84 = mul nsw <8 x i64> %83, %81
  %85 = lshr <8 x i64> %84, splat (i64 32)
  %86 = ashr <8 x i64> %0, splat (i64 32)
  %87 = mul nsw <8 x i64> %83, %86
  %88 = and <8 x i64> %87, splat (i64 -4294967296)
  %89 = or disjoint <8 x i64> %85, %88
  %90 = and i32 %53, 64
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %76
  %93 = ashr i8 %52, 7
  %94 = sext i8 %93 to i32
  %95 = insertelement <16 x i32> poison, i32 %94, i64 0
  %96 = shufflevector <16 x i32> %95, <16 x i32> poison, <16 x i32> zeroinitializer
  %97 = bitcast <8 x i64> %0 to <16 x i32>
  %98 = xor <16 x i32> %96, %97
  %99 = sub <16 x i32> %98, %96
  %100 = bitcast <8 x i64> %89 to <16 x i32>
  %101 = add <16 x i32> %99, %100
  %102 = bitcast <16 x i32> %101 to <8 x i64>
  br label %103

103:                                              ; preds = %92, %76
  %104 = phi <8 x i64> [ %102, %92 ], [ %89, %76 ]
  %105 = and i32 %53, 31
  %106 = bitcast <8 x i64> %104 to <16 x i32>
  %107 = insertelement <16 x i32> poison, i32 %105, i64 0
  %108 = shufflevector <16 x i32> %107, <16 x i32> poison, <16 x i32> zeroinitializer
  %109 = ashr <16 x i32> %106, %108
  %110 = lshr <16 x i32> %109, splat (i32 31)
  %111 = add <16 x i32> %110, %109
  %112 = bitcast <16 x i32> %111 to <8 x i64>
  br label %113

113:                                              ; preds = %103, %56, %2
  %114 = phi <8 x i64> [ %0, %2 ], [ %75, %56 ], [ %112, %103 ]
  ret <8 x i64> %114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u64_lanewise(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %39 = insertelement <8 x i64> poison, i64 %37, i64 0
  %40 = shufflevector <8 x i64> %39, <8 x i64> poison, <8 x i32> zeroinitializer
  %41 = bitcast <8 x i64> %0 to <16 x i32>
  %42 = shufflevector <16 x i32> %41, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %43 = bitcast <16 x i32> %42 to <8 x i64>
  %44 = bitcast <8 x i64> %40 to <16 x i32>
  %45 = shufflevector <16 x i32> %44, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %46 = bitcast <16 x i32> %45 to <8 x i64>
  %47 = and <8 x i64> %0, splat (i64 4294967295)
  %48 = and <8 x i64> %40, splat (i64 4294967295)
  %49 = mul nuw <8 x i64> %48, %47
  %50 = and <8 x i64> %46, splat (i64 4294967295)
  %51 = mul nuw <8 x i64> %50, %47
  %52 = and <8 x i64> %43, splat (i64 4294967295)
  %53 = mul nuw <8 x i64> %48, %52
  %54 = mul nuw <8 x i64> %50, %52
  %55 = lshr <8 x i64> %49, splat (i64 32)
  %56 = add nuw <8 x i64> %51, %55
  %57 = and <8 x i64> %56, splat (i64 4294967295)
  %58 = lshr <8 x i64> %56, splat (i64 32)
  %59 = add nuw <8 x i64> %57, %53
  %60 = lshr <8 x i64> %59, splat (i64 32)
  %61 = add nuw <8 x i64> %58, %54
  %62 = add nuw <8 x i64> %61, %60
  %63 = icmp samesign ult i8 %35, 64
  br i1 %63, label %77, label %68

64:                                               ; preds = %4
  %65 = insertelement <8 x i64> poison, i64 %10, i64 0
  %66 = shufflevector <8 x i64> %65, <8 x i64> poison, <8 x i32> zeroinitializer
  %67 = lshr <8 x i64> %0, %66
  br label %79

68:                                               ; preds = %34
  %69 = and i32 %38, 63
  %70 = sub <8 x i64> %0, %62
  %71 = lshr <8 x i64> %70, splat (i64 1)
  %72 = add <8 x i64> %71, %62
  %73 = zext nneg i32 %69 to i64
  %74 = insertelement <8 x i64> poison, i64 %73, i64 0
  %75 = shufflevector <8 x i64> %74, <8 x i64> poison, <8 x i32> zeroinitializer
  %76 = lshr <8 x i64> %72, %75
  br label %79

77:                                               ; preds = %34
  %78 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %62, i32 range(i32 0, 256) %38)
  br label %79

79:                                               ; preds = %77, %68, %64, %2
  %80 = phi <8 x i64> [ %0, %2 ], [ %67, %64 ], [ %76, %68 ], [ %78, %77 ]
  ret <8 x i64> %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_s64_lanewise(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %127, label %4

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
  br i1 %53, label %54, label %75

54:                                               ; preds = %12, %45
  %55 = phi i8 [ %17, %12 ], [ %51, %45 ]
  %56 = and i8 %55, 63
  %57 = zext nneg i8 %56 to i64
  %58 = shl nsw i64 -1, %57
  %59 = xor i64 %58, -1
  %60 = insertelement <8 x i64> poison, i64 %59, i64 0
  %61 = shufflevector <8 x i64> %60, <8 x i64> poison, <8 x i32> zeroinitializer
  %62 = icmp slt <8 x i64> %0, zeroinitializer
  %63 = select <8 x i1> %62, <8 x i64> %61, <8 x i64> zeroinitializer
  %64 = add <8 x i64> %63, %0
  %65 = insertelement <8 x i64> poison, i64 %57, i64 0
  %66 = shufflevector <8 x i64> %65, <8 x i64> poison, <8 x i32> zeroinitializer
  %67 = ashr <8 x i64> %64, %66
  %68 = ashr i8 %55, 7
  %69 = sext i8 %68 to i32
  %70 = insertelement <16 x i32> poison, i32 %69, i64 0
  %71 = shufflevector <16 x i32> %70, <16 x i32> poison, <16 x i32> zeroinitializer
  %72 = bitcast <16 x i32> %71 to <8 x i64>
  %73 = xor <8 x i64> %67, %72
  %74 = sub <8 x i64> %73, %72
  br label %127

75:                                               ; preds = %45
  %76 = insertelement <8 x i64> poison, i64 %52, i64 0
  %77 = shufflevector <8 x i64> %76, <8 x i64> poison, <8 x i32> zeroinitializer
  %78 = bitcast <8 x i64> %0 to <16 x i32>
  %79 = shufflevector <16 x i32> %78, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %80 = bitcast <16 x i32> %79 to <8 x i64>
  %81 = bitcast <8 x i64> %77 to <16 x i32>
  %82 = shufflevector <16 x i32> %81, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %83 = bitcast <16 x i32> %82 to <8 x i64>
  %84 = and <8 x i64> %0, splat (i64 4294967295)
  %85 = and <8 x i64> %77, splat (i64 4294967295)
  %86 = mul nuw <8 x i64> %85, %84
  %87 = and <8 x i64> %83, splat (i64 4294967295)
  %88 = mul nuw <8 x i64> %87, %84
  %89 = and <8 x i64> %80, splat (i64 4294967295)
  %90 = mul nuw <8 x i64> %85, %89
  %91 = mul nuw <8 x i64> %87, %89
  %92 = lshr <8 x i64> %86, splat (i64 32)
  %93 = add nuw <8 x i64> %88, %92
  %94 = and <8 x i64> %93, splat (i64 4294967295)
  %95 = lshr <8 x i64> %93, splat (i64 32)
  %96 = add nuw <8 x i64> %94, %90
  %97 = lshr <8 x i64> %96, splat (i64 32)
  %98 = icmp slt <8 x i64> %0, zeroinitializer
  %99 = select <8 x i1> %98, <8 x i64> %77, <8 x i64> zeroinitializer
  %100 = icmp slt <8 x i64> %77, zeroinitializer
  %101 = select <8 x i1> %100, <8 x i64> %0, <8 x i64> zeroinitializer
  %102 = add <8 x i64> %101, %99
  %103 = sub <8 x i64> %91, %102
  %104 = add <8 x i64> %103, %95
  %105 = add <8 x i64> %104, %97
  %106 = zext i8 %51 to i32
  %107 = and i32 %106, 64
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %75
  %110 = ashr i8 %51, 7
  %111 = sext i8 %110 to i32
  %112 = insertelement <16 x i32> poison, i32 %111, i64 0
  %113 = shufflevector <16 x i32> %112, <16 x i32> poison, <16 x i32> zeroinitializer
  %114 = bitcast <16 x i32> %113 to <8 x i64>
  %115 = xor <8 x i64> %0, %114
  %116 = sub <8 x i64> %115, %114
  %117 = add <8 x i64> %116, %105
  br label %118

118:                                              ; preds = %109, %75
  %119 = phi <8 x i64> [ %117, %109 ], [ %105, %75 ]
  %120 = and i32 %106, 63
  %121 = zext nneg i32 %120 to i64
  %122 = insertelement <8 x i64> poison, i64 %121, i64 0
  %123 = shufflevector <8 x i64> %122, <8 x i64> poison, <8 x i32> zeroinitializer
  %124 = ashr <8 x i64> %119, %123
  %125 = lshr <8 x i64> %124, splat (i64 63)
  %126 = add <8 x i64> %125, %124
  br label %127

127:                                              ; preds = %118, %54, %2
  %128 = phi <8 x i64> [ %0, %2 ], [ %74, %54 ], [ %126, %118 ]
  ret <8 x i64> %128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u32_branchfree_lanewise(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
  %31 = insertelement <16 x i32> poison, i32 %29, i64 0
  %32 = shufflevector <16 x i32> %31, <16 x i32> poison, <16 x i32> zeroinitializer
  %33 = bitcast <16 x i32> %32 to <8 x i64>
  %34 = and <8 x i64> %0, splat (i64 4294967295)
  %35 = and <8 x i64> %33, splat (i64 4294967295)
  %36 = mul nuw <8 x i64> %35, %34
  %37 = lshr <8 x i64> %36, splat (i64 32)
  %38 = lshr <8 x i64> %0, splat (i64 32)
  %39 = mul nuw <8 x i64> %35, %38
  %40 = and <8 x i64> %39, splat (i64 -4294967296)
  %41 = or disjoint <8 x i64> %37, %40
  %42 = bitcast <8 x i64> %0 to <16 x i32>
  %43 = bitcast <8 x i64> %41 to <16 x i32>
  %44 = sub <16 x i32> %42, %43
  %45 = lshr <16 x i32> %44, splat (i32 1)
  %46 = add <16 x i32> %45, %43
  %47 = insertelement <16 x i32> poison, i32 %30, i64 0
  %48 = shufflevector <16 x i32> %47, <16 x i32> poison, <16 x i32> zeroinitializer
  %49 = lshr <16 x i32> %46, %48
  %50 = bitcast <16 x i32> %49 to <8 x i64>
  br label %51

51:                                               ; preds = %2, %28
  %52 = phi <8 x i64> [ %50, %28 ], [ %0, %2 ]
  ret <8 x i64> %52
}

; Function Attrs: nofree nounwind uwtable
define dso_local <8 x i64> @target_s32_branchfree_lanewise(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #1 {
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
  %48 = insertelement <16 x i32> poison, i32 %47, i64 0
  %49 = shufflevector <16 x i32> %48, <16 x i32> poison, <16 x i32> zeroinitializer
  %50 = insertelement <16 x i32> poison, i32 %43, i64 0
  %51 = shufflevector <16 x i32> %50, <16 x i32> poison, <16 x i32> zeroinitializer
  %52 = bitcast <16 x i32> %51 to <8 x i64>
  %53 = shl <8 x i64> %0, splat (i64 32)
  %54 = ashr exact <8 x i64> %53, splat (i64 32)
  %55 = shl <8 x i64> %52, splat (i64 32)
  %56 = ashr exact <8 x i64> %55, splat (i64 32)
  %57 = mul nsw <8 x i64> %56, %54
  %58 = lshr <8 x i64> %57, splat (i64 32)
  %59 = ashr <8 x i64> %0, splat (i64 32)
  %60 = mul nsw <8 x i64> %56, %59
  %61 = and <8 x i64> %60, splat (i64 -4294967296)
  %62 = or disjoint <8 x i64> %58, %61
  %63 = bitcast <8 x i64> %62 to <16 x i32>
  %64 = bitcast <8 x i64> %0 to <16 x i32>
  %65 = add <16 x i32> %63, %64
  %66 = icmp eq i32 %43, 0
  %67 = sext i1 %66 to i32
  %68 = zext nneg i8 %45 to i32
  %69 = shl nuw i32 1, %68
  %70 = add i32 %69, %67
  %71 = insertelement <16 x i32> poison, i32 %70, i64 0
  %72 = shufflevector <16 x i32> %71, <16 x i32> poison, <16 x i32> zeroinitializer
  %73 = icmp slt <16 x i32> %65, zeroinitializer
  %74 = select <16 x i1> %73, <16 x i32> %72, <16 x i32> zeroinitializer
  %75 = add <16 x i32> %74, %65
  %76 = insertelement <16 x i32> poison, i32 %68, i64 0
  %77 = shufflevector <16 x i32> %76, <16 x i32> poison, <16 x i32> zeroinitializer
  %78 = ashr <16 x i32> %75, %77
  %79 = xor <16 x i32> %78, %49
  %80 = sub <16 x i32> %79, %49
  %81 = bitcast <16 x i32> %80 to <8 x i64>
  br label %82

82:                                               ; preds = %2, %42
  %83 = phi <8 x i64> [ %81, %42 ], [ %0, %2 ]
  ret <8 x i64> %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u64_branchfree_lanewise(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %33 = insertelement <8 x i64> poison, i64 %31, i64 0
  %34 = shufflevector <8 x i64> %33, <8 x i64> poison, <8 x i32> zeroinitializer
  %35 = bitcast <8 x i64> %0 to <16 x i32>
  %36 = shufflevector <16 x i32> %35, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %37 = bitcast <16 x i32> %36 to <8 x i64>
  %38 = bitcast <8 x i64> %34 to <16 x i32>
  %39 = shufflevector <16 x i32> %38, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %40 = bitcast <16 x i32> %39 to <8 x i64>
  %41 = and <8 x i64> %0, splat (i64 4294967295)
  %42 = and <8 x i64> %34, splat (i64 4294967295)
  %43 = mul nuw <8 x i64> %42, %41
  %44 = and <8 x i64> %40, splat (i64 4294967295)
  %45 = mul nuw <8 x i64> %44, %41
  %46 = and <8 x i64> %37, splat (i64 4294967295)
  %47 = mul nuw <8 x i64> %42, %46
  %48 = mul nuw <8 x i64> %44, %46
  %49 = lshr <8 x i64> %43, splat (i64 32)
  %50 = add nuw <8 x i64> %45, %49
  %51 = and <8 x i64> %50, splat (i64 4294967295)
  %52 = lshr <8 x i64> %50, splat (i64 32)
  %53 = add nuw <8 x i64> %51, %47
  %54 = lshr <8 x i64> %53, splat (i64 32)
  %55 = add nuw <8 x i64> %52, %48
  %56 = add nuw <8 x i64> %55, %54
  %57 = sub <8 x i64> %0, %56
  %58 = lshr <8 x i64> %57, splat (i64 1)
  %59 = add <8 x i64> %58, %56
  %60 = zext nneg i32 %32 to i64
  %61 = insertelement <8 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <8 x i64> %61, <8 x i64> poison, <8 x i32> zeroinitializer
  %63 = lshr <8 x i64> %59, %62
  br label %64

64:                                               ; preds = %2, %30
  %65 = phi <8 x i64> [ %63, %30 ], [ %0, %2 ]
  ret <8 x i64> %65
}

; Function Attrs: nofree nounwind uwtable
define dso_local <8 x i64> @target_s64_branchfree_lanewise(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  switch i64 %1, label %9 [
    i64 0, label %99
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
  %50 = insertelement <16 x i32> poison, i32 %49, i64 0
  %51 = shufflevector <16 x i32> %50, <16 x i32> poison, <16 x i32> zeroinitializer
  %52 = bitcast <16 x i32> %51 to <8 x i64>
  %53 = insertelement <8 x i64> poison, i64 %45, i64 0
  %54 = shufflevector <8 x i64> %53, <8 x i64> poison, <8 x i32> zeroinitializer
  %55 = bitcast <8 x i64> %0 to <16 x i32>
  %56 = shufflevector <16 x i32> %55, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %57 = bitcast <16 x i32> %56 to <8 x i64>
  %58 = bitcast <8 x i64> %54 to <16 x i32>
  %59 = shufflevector <16 x i32> %58, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %60 = bitcast <16 x i32> %59 to <8 x i64>
  %61 = and <8 x i64> %0, splat (i64 4294967295)
  %62 = and <8 x i64> %54, splat (i64 4294967295)
  %63 = mul nuw <8 x i64> %62, %61
  %64 = and <8 x i64> %60, splat (i64 4294967295)
  %65 = mul nuw <8 x i64> %64, %61
  %66 = and <8 x i64> %57, splat (i64 4294967295)
  %67 = mul nuw <8 x i64> %62, %66
  %68 = mul nuw <8 x i64> %64, %66
  %69 = lshr <8 x i64> %63, splat (i64 32)
  %70 = add nuw <8 x i64> %65, %69
  %71 = and <8 x i64> %70, splat (i64 4294967295)
  %72 = lshr <8 x i64> %70, splat (i64 32)
  %73 = add nuw <8 x i64> %71, %67
  %74 = lshr <8 x i64> %73, splat (i64 32)
  %75 = icmp slt <8 x i64> %0, zeroinitializer
  %76 = select <8 x i1> %75, <8 x i64> %54, <8 x i64> zeroinitializer
  %77 = icmp slt <8 x i64> %54, zeroinitializer
  %78 = select <8 x i1> %77, <8 x i64> %0, <8 x i64> zeroinitializer
  %79 = add <8 x i64> %76, %78
  %80 = sub <8 x i64> %0, %79
  %81 = add <8 x i64> %80, %68
  %82 = add <8 x i64> %81, %72
  %83 = add <8 x i64> %82, %74
  %84 = icmp eq i64 %45, 0
  %85 = zext nneg i8 %47 to i64
  %86 = shl nuw i64 1, %85
  %87 = sext i1 %84 to i64
  %88 = add i64 %86, %87
  %89 = insertelement <8 x i64> poison, i64 %88, i64 0
  %90 = shufflevector <8 x i64> %89, <8 x i64> poison, <8 x i32> zeroinitializer
  %91 = icmp slt <8 x i64> %83, zeroinitializer
  %92 = select <8 x i1> %91, <8 x i64> %90, <8 x i64> zeroinitializer
  %93 = add <8 x i64> %92, %83
  %94 = insertelement <8 x i64> poison, i64 %85, i64 0
  %95 = shufflevector <8 x i64> %94, <8 x i64> poison, <8 x i32> zeroinitializer
  %96 = ashr <8 x i64> %93, %95
  %97 = xor <8 x i64> %96, %52
  %98 = sub <8 x i64> %97, %52
  br label %99

99:                                               ; preds = %2, %44
  %100 = phi <8 x i64> [ %98, %44 ], [ %0, %2 ]
  ret <8 x i64> %100
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef, ptr noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32>, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64>, i32) #5

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
