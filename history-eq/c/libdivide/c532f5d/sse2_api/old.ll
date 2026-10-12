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
define dso_local <2 x i64> @target_u32_api(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %71, label %4

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
  %37 = insertelement <4 x i32> poison, i32 %35, i64 0
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer
  %39 = bitcast <4 x i32> %38 to <2 x i64>
  %40 = and <2 x i64> %0, splat (i64 4294967295)
  %41 = and <2 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <2 x i64> %41, %40
  %43 = lshr <2 x i64> %42, splat (i64 32)
  %44 = lshr <2 x i64> %0, splat (i64 32)
  %45 = mul nuw <2 x i64> %41, %44
  %46 = and <2 x i64> %45, splat (i64 -4294967296)
  %47 = or disjoint <2 x i64> %43, %46
  %48 = icmp samesign ult i8 %34, 64
  br i1 %48, label %66, label %55

49:                                               ; preds = %4
  %50 = insertelement <4 x i32> poison, i32 %6, i64 0
  %51 = bitcast <2 x i64> %0 to <4 x i32>
  %52 = shufflevector <4 x i32> %50, <4 x i32> poison, <4 x i32> zeroinitializer
  %53 = lshr <4 x i32> %51, %52
  %54 = bitcast <4 x i32> %53 to <2 x i64>
  br label %71

55:                                               ; preds = %32
  %56 = and i32 %36, 31
  %57 = bitcast <2 x i64> %0 to <4 x i32>
  %58 = bitcast <2 x i64> %47 to <4 x i32>
  %59 = sub <4 x i32> %57, %58
  %60 = lshr <4 x i32> %59, splat (i32 1)
  %61 = add <4 x i32> %60, %58
  %62 = insertelement <4 x i32> poison, i32 %56, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = lshr <4 x i32> %61, %63
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  br label %71

66:                                               ; preds = %32
  %67 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %36, i64 0
  %68 = bitcast <2 x i64> %47 to <4 x i32>
  %69 = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %68, <4 x i32> %67)
  %70 = bitcast <4 x i32> %69 to <2 x i64>
  br label %71

71:                                               ; preds = %66, %55, %49, %2
  %72 = phi <2 x i64> [ %0, %2 ], [ %54, %49 ], [ %65, %55 ], [ %70, %66 ]
  ret <2 x i64> %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u32_bf_api(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
define dso_local <2 x i64> @target_s32_api(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %115, label %4

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
  %60 = insertelement <4 x i32> poison, i32 %59, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = bitcast <2 x i64> %0 to <4 x i32>
  %63 = icmp slt <4 x i32> %62, zeroinitializer
  %64 = select <4 x i1> %63, <4 x i32> %61, <4 x i32> zeroinitializer
  %65 = add <4 x i32> %64, %62
  %66 = insertelement <4 x i32> poison, i32 %57, i64 0
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> zeroinitializer
  %68 = ashr <4 x i32> %65, %67
  %69 = ashr i8 %52, 7
  %70 = sext i8 %69 to i32
  %71 = insertelement <4 x i32> poison, i32 %70, i64 0
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> zeroinitializer
  %73 = xor <4 x i32> %68, %72
  %74 = sub <4 x i32> %73, %72
  %75 = bitcast <4 x i32> %74 to <2 x i64>
  br label %115

76:                                               ; preds = %50
  %77 = insertelement <4 x i32> poison, i32 %51, i64 0
  %78 = shufflevector <4 x i32> %77, <4 x i32> poison, <4 x i32> zeroinitializer
  %79 = bitcast <4 x i32> %78 to <2 x i64>
  %80 = and <2 x i64> %0, splat (i64 4294967295)
  %81 = and <2 x i64> %79, splat (i64 4294967295)
  %82 = mul nuw <2 x i64> %81, %80
  %83 = lshr <2 x i64> %82, splat (i64 32)
  %84 = lshr <2 x i64> %0, splat (i64 32)
  %85 = mul nuw <2 x i64> %81, %84
  %86 = and <2 x i64> %85, splat (i64 -4294967296)
  %87 = or disjoint <2 x i64> %83, %86
  %88 = bitcast <2 x i64> %0 to <4 x i32>
  %89 = bitcast <2 x i64> %87 to <4 x i32>
  %90 = icmp slt <4 x i32> %88, zeroinitializer
  %91 = select <4 x i1> %90, <4 x i32> %78, <4 x i32> zeroinitializer
  %92 = icmp slt <4 x i32> %78, zeroinitializer
  %93 = select <4 x i1> %92, <4 x i32> %88, <4 x i32> zeroinitializer
  %94 = add <4 x i32> %93, %91
  %95 = sub <4 x i32> %89, %94
  %96 = and i32 %53, 64
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %76
  %99 = ashr i8 %52, 7
  %100 = sext i8 %99 to i32
  %101 = insertelement <4 x i32> poison, i32 %100, i64 0
  %102 = shufflevector <4 x i32> %101, <4 x i32> poison, <4 x i32> zeroinitializer
  %103 = xor <4 x i32> %102, %88
  %104 = sub <4 x i32> %103, %102
  %105 = add <4 x i32> %104, %95
  br label %106

106:                                              ; preds = %98, %76
  %107 = phi <4 x i32> [ %105, %98 ], [ %95, %76 ]
  %108 = and i32 %53, 31
  %109 = insertelement <4 x i32> poison, i32 %108, i64 0
  %110 = shufflevector <4 x i32> %109, <4 x i32> poison, <4 x i32> zeroinitializer
  %111 = ashr <4 x i32> %107, %110
  %112 = lshr <4 x i32> %111, splat (i32 31)
  %113 = add <4 x i32> %112, %111
  %114 = bitcast <4 x i32> %113 to <2 x i64>
  br label %115

115:                                              ; preds = %106, %56, %2
  %116 = phi <2 x i64> [ %0, %2 ], [ %75, %56 ], [ %114, %106 ]
  ret <2 x i64> %116
}

; Function Attrs: nofree nounwind uwtable
define dso_local <2 x i64> @target_s32_bf_api(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %9 [
    i32 0, label %86
    i32 1, label %3
    i32 -1, label %6
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 1011, ptr noundef nonnull @__func__.libdivide_s32_branchfree_gen, ptr noundef nonnull @.str.2) #7
  tail call void @exit(i32 noundef -1) #8
  unreachable

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @__func__.libdivide_s32_branchfree_gen, ptr noundef nonnull @.str.3) #7
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
  %48 = insertelement <4 x i32> poison, i32 %47, i64 0
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> zeroinitializer
  %50 = insertelement <4 x i32> poison, i32 %43, i64 0
  %51 = shufflevector <4 x i32> %50, <4 x i32> poison, <4 x i32> zeroinitializer
  %52 = bitcast <4 x i32> %51 to <2 x i64>
  %53 = and <2 x i64> %0, splat (i64 4294967295)
  %54 = and <2 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <2 x i64> %54, %53
  %56 = lshr <2 x i64> %55, splat (i64 32)
  %57 = lshr <2 x i64> %0, splat (i64 32)
  %58 = mul nuw <2 x i64> %54, %57
  %59 = and <2 x i64> %58, splat (i64 -4294967296)
  %60 = or disjoint <2 x i64> %56, %59
  %61 = bitcast <2 x i64> %0 to <4 x i32>
  %62 = bitcast <2 x i64> %60 to <4 x i32>
  %63 = icmp slt <4 x i32> %61, zeroinitializer
  %64 = select <4 x i1> %63, <4 x i32> %51, <4 x i32> zeroinitializer
  %65 = icmp slt <4 x i32> %51, zeroinitializer
  %66 = select <4 x i1> %65, <4 x i32> %61, <4 x i32> zeroinitializer
  %67 = add <4 x i32> %64, %66
  %68 = sub <4 x i32> %61, %67
  %69 = add <4 x i32> %68, %62
  %70 = icmp eq i32 %43, 0
  %71 = sext i1 %70 to i32
  %72 = zext nneg i8 %45 to i32
  %73 = shl nuw i32 1, %72
  %74 = add i32 %73, %71
  %75 = insertelement <4 x i32> poison, i32 %74, i64 0
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> zeroinitializer
  %77 = icmp slt <4 x i32> %69, zeroinitializer
  %78 = select <4 x i1> %77, <4 x i32> %76, <4 x i32> zeroinitializer
  %79 = add <4 x i32> %78, %69
  %80 = insertelement <4 x i32> poison, i32 %72, i64 0
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> zeroinitializer
  %82 = ashr <4 x i32> %79, %81
  %83 = xor <4 x i32> %82, %49
  %84 = sub <4 x i32> %83, %49
  %85 = bitcast <4 x i32> %84 to <2 x i64>
  br label %86

86:                                               ; preds = %2, %42
  %87 = phi <2 x i64> [ %85, %42 ], [ %0, %2 ]
  ret <2 x i64> %87
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u64_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %82, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %64, label %10

10:                                               ; preds = %4
  %11 = zext nneg i32 %7 to i64
  %12 = shl nuw i64 1, %11
  %13 = zext i64 %12 to i128
  %14 = shl nuw i128 %13, 64
  %15 = zext i64 %1 to i128
  %16 = udiv i128 %14, %15
  %17 = trunc i128 %16 to i64
  %18 = mul i64 %1, %17
  %19 = add i64 %18, %1
  %20 = icmp ult i64 %19, %12
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = trunc nuw nsw i32 %7 to i8
  br label %34

23:                                               ; preds = %10
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
  %39 = insertelement <2 x i64> poison, i64 %37, i64 0
  %40 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> zeroinitializer
  %41 = bitcast <2 x i64> %0 to <4 x i32>
  %42 = shufflevector <4 x i32> %41, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %43 = bitcast <4 x i32> %42 to <2 x i64>
  %44 = bitcast <2 x i64> %40 to <4 x i32>
  %45 = shufflevector <4 x i32> %44, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %46 = bitcast <4 x i32> %45 to <2 x i64>
  %47 = and <2 x i64> %0, splat (i64 4294967295)
  %48 = and <2 x i64> %40, splat (i64 4294967295)
  %49 = mul nuw <2 x i64> %48, %47
  %50 = and <2 x i64> %46, splat (i64 4294967295)
  %51 = mul nuw <2 x i64> %50, %47
  %52 = and <2 x i64> %43, splat (i64 4294967295)
  %53 = mul nuw <2 x i64> %48, %52
  %54 = mul nuw <2 x i64> %50, %52
  %55 = lshr <2 x i64> %49, splat (i64 32)
  %56 = add nuw <2 x i64> %51, %55
  %57 = and <2 x i64> %56, splat (i64 4294967295)
  %58 = lshr <2 x i64> %56, splat (i64 32)
  %59 = add nuw <2 x i64> %57, %53
  %60 = lshr <2 x i64> %59, splat (i64 32)
  %61 = add nuw <2 x i64> %58, %54
  %62 = add nuw <2 x i64> %61, %60
  %63 = icmp samesign ult i8 %35, 64
  br i1 %63, label %78, label %69

64:                                               ; preds = %4
  %65 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %7, i64 0
  %66 = bitcast <4 x i32> %65 to <2 x i64>
  %67 = shufflevector <2 x i64> %66, <2 x i64> poison, <2 x i32> zeroinitializer
  %68 = lshr <2 x i64> %0, %67
  br label %82

69:                                               ; preds = %34
  %70 = and i32 %38, 63
  %71 = sub <2 x i64> %0, %62
  %72 = lshr <2 x i64> %71, splat (i64 1)
  %73 = add <2 x i64> %72, %62
  %74 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %70, i64 0
  %75 = bitcast <4 x i32> %74 to <2 x i64>
  %76 = shufflevector <2 x i64> %75, <2 x i64> poison, <2 x i32> zeroinitializer
  %77 = lshr <2 x i64> %73, %76
  br label %82

78:                                               ; preds = %34
  %79 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %38, i64 0
  %80 = bitcast <4 x i32> %79 to <2 x i64>
  %81 = tail call <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %62, <2 x i64> %80)
  br label %82

82:                                               ; preds = %78, %69, %64, %2
  %83 = phi <2 x i64> [ %0, %2 ], [ %68, %64 ], [ %77, %69 ], [ %81, %78 ]
  ret <2 x i64> %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u64_bf_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %33 = insertelement <2 x i64> poison, i64 %31, i64 0
  %34 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> zeroinitializer
  %35 = bitcast <2 x i64> %0 to <4 x i32>
  %36 = shufflevector <4 x i32> %35, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %37 = bitcast <4 x i32> %36 to <2 x i64>
  %38 = bitcast <2 x i64> %34 to <4 x i32>
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %40 = bitcast <4 x i32> %39 to <2 x i64>
  %41 = and <2 x i64> %0, splat (i64 4294967295)
  %42 = and <2 x i64> %34, splat (i64 4294967295)
  %43 = mul nuw <2 x i64> %42, %41
  %44 = and <2 x i64> %40, splat (i64 4294967295)
  %45 = mul nuw <2 x i64> %44, %41
  %46 = and <2 x i64> %37, splat (i64 4294967295)
  %47 = mul nuw <2 x i64> %42, %46
  %48 = mul nuw <2 x i64> %44, %46
  %49 = lshr <2 x i64> %43, splat (i64 32)
  %50 = add nuw <2 x i64> %45, %49
  %51 = and <2 x i64> %50, splat (i64 4294967295)
  %52 = lshr <2 x i64> %50, splat (i64 32)
  %53 = add nuw <2 x i64> %51, %47
  %54 = lshr <2 x i64> %53, splat (i64 32)
  %55 = add nuw <2 x i64> %52, %48
  %56 = add nuw <2 x i64> %55, %54
  %57 = sub <2 x i64> %0, %56
  %58 = lshr <2 x i64> %57, splat (i64 1)
  %59 = add <2 x i64> %58, %56
  %60 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %32, i64 0
  %61 = bitcast <4 x i32> %60 to <2 x i64>
  %62 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> zeroinitializer
  %63 = lshr <2 x i64> %59, %62
  br label %64

64:                                               ; preds = %2, %30
  %65 = phi <2 x i64> [ %63, %30 ], [ %0, %2 ]
  ret <2 x i64> %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s64_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %150, label %4

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
  br i1 %53, label %54, label %87

54:                                               ; preds = %12, %45
  %55 = phi i8 [ %17, %12 ], [ %51, %45 ]
  %56 = and i8 %55, 63
  %57 = zext nneg i8 %56 to i32
  %58 = zext nneg i8 %56 to i64
  %59 = shl nsw i64 -1, %58
  %60 = xor i64 %59, -1
  %61 = insertelement <2 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> zeroinitializer
  %63 = bitcast <2 x i64> %0 to <4 x i32>
  %64 = ashr <4 x i32> %63, <i32 0, i32 31, i32 0, i32 31>
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %66 = bitcast <4 x i32> %65 to <2 x i64>
  %67 = and <2 x i64> %62, %66
  %68 = add <2 x i64> %67, %0
  %69 = xor i32 %57, 63
  %70 = zext nneg i32 %69 to i64
  %71 = shl nuw i64 1, %70
  %72 = insertelement <2 x i64> poison, i64 %71, i64 0
  %73 = shufflevector <2 x i64> %72, <2 x i64> poison, <2 x i32> zeroinitializer
  %74 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %57, i64 0
  %75 = bitcast <4 x i32> %74 to <2 x i64>
  %76 = shufflevector <2 x i64> %75, <2 x i64> poison, <2 x i32> zeroinitializer
  %77 = lshr <2 x i64> %68, %76
  %78 = xor <2 x i64> %77, %73
  %79 = sub <2 x i64> %78, %73
  %80 = ashr i8 %55, 7
  %81 = sext i8 %80 to i32
  %82 = insertelement <4 x i32> poison, i32 %81, i64 0
  %83 = shufflevector <4 x i32> %82, <4 x i32> poison, <4 x i32> zeroinitializer
  %84 = bitcast <4 x i32> %83 to <2 x i64>
  %85 = xor <2 x i64> %79, %84
  %86 = sub <2 x i64> %85, %84
  br label %150

87:                                               ; preds = %45
  %88 = insertelement <2 x i64> poison, i64 %52, i64 0
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> zeroinitializer
  %90 = bitcast <2 x i64> %0 to <4 x i32>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = bitcast <2 x i64> %89 to <4 x i32>
  %94 = shufflevector <4 x i32> %93, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %95 = bitcast <4 x i32> %94 to <2 x i64>
  %96 = and <2 x i64> %0, splat (i64 4294967295)
  %97 = and <2 x i64> %89, splat (i64 4294967295)
  %98 = mul nuw <2 x i64> %97, %96
  %99 = and <2 x i64> %95, splat (i64 4294967295)
  %100 = mul nuw <2 x i64> %99, %96
  %101 = and <2 x i64> %92, splat (i64 4294967295)
  %102 = mul nuw <2 x i64> %97, %101
  %103 = mul nuw <2 x i64> %99, %101
  %104 = lshr <2 x i64> %98, splat (i64 32)
  %105 = add nuw <2 x i64> %100, %104
  %106 = and <2 x i64> %105, splat (i64 4294967295)
  %107 = lshr <2 x i64> %105, splat (i64 32)
  %108 = add nuw <2 x i64> %106, %102
  %109 = lshr <2 x i64> %108, splat (i64 32)
  %110 = ashr <4 x i32> %90, <i32 0, i32 31, i32 0, i32 31>
  %111 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  %113 = and <2 x i64> %89, %112
  %114 = ashr <4 x i32> %93, <i32 0, i32 31, i32 0, i32 31>
  %115 = shufflevector <4 x i32> %114, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %116 = bitcast <4 x i32> %115 to <2 x i64>
  %117 = and <2 x i64> %0, %116
  %118 = add <2 x i64> %117, %113
  %119 = sub <2 x i64> %103, %118
  %120 = add <2 x i64> %119, %107
  %121 = add <2 x i64> %120, %109
  %122 = zext i8 %51 to i32
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %87
  %126 = ashr i8 %51, 7
  %127 = sext i8 %126 to i32
  %128 = insertelement <4 x i32> poison, i32 %127, i64 0
  %129 = shufflevector <4 x i32> %128, <4 x i32> poison, <4 x i32> zeroinitializer
  %130 = bitcast <4 x i32> %129 to <2 x i64>
  %131 = xor <2 x i64> %0, %130
  %132 = sub <2 x i64> %131, %130
  %133 = add <2 x i64> %132, %121
  br label %134

134:                                              ; preds = %125, %87
  %135 = phi <2 x i64> [ %133, %125 ], [ %121, %87 ]
  %136 = and i32 %122, 63
  %137 = xor i32 %136, 63
  %138 = zext nneg i32 %137 to i64
  %139 = shl nuw i64 1, %138
  %140 = insertelement <2 x i64> poison, i64 %139, i64 0
  %141 = shufflevector <2 x i64> %140, <2 x i64> poison, <2 x i32> zeroinitializer
  %142 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %136, i64 0
  %143 = bitcast <4 x i32> %142 to <2 x i64>
  %144 = shufflevector <2 x i64> %143, <2 x i64> poison, <2 x i32> zeroinitializer
  %145 = lshr <2 x i64> %135, %144
  %146 = xor <2 x i64> %145, %141
  %147 = sub <2 x i64> %146, %141
  %148 = lshr <2 x i64> %147, splat (i64 63)
  %149 = add <2 x i64> %148, %147
  br label %150

150:                                              ; preds = %134, %54, %2
  %151 = phi <2 x i64> [ %0, %2 ], [ %86, %54 ], [ %149, %134 ]
  ret <2 x i64> %151
}

; Function Attrs: nofree nounwind uwtable
define dso_local <2 x i64> @target_s64_bf_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  switch i64 %1, label %9 [
    i64 0, label %115
    i64 1, label %3
    i64 -1, label %6
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 1233, ptr noundef nonnull @__func__.libdivide_s64_branchfree_gen, ptr noundef nonnull @.str.2) #7
  tail call void @exit(i32 noundef -1) #8
  unreachable

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 1236, ptr noundef nonnull @__func__.libdivide_s64_branchfree_gen, ptr noundef nonnull @.str.3) #7
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
  %50 = insertelement <4 x i32> poison, i32 %49, i64 0
  %51 = shufflevector <4 x i32> %50, <4 x i32> poison, <4 x i32> zeroinitializer
  %52 = bitcast <4 x i32> %51 to <2 x i64>
  %53 = insertelement <2 x i64> poison, i64 %45, i64 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> zeroinitializer
  %55 = bitcast <2 x i64> %0 to <4 x i32>
  %56 = shufflevector <4 x i32> %55, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = bitcast <4 x i32> %56 to <2 x i64>
  %58 = bitcast <2 x i64> %54 to <4 x i32>
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %60 = bitcast <4 x i32> %59 to <2 x i64>
  %61 = and <2 x i64> %0, splat (i64 4294967295)
  %62 = and <2 x i64> %54, splat (i64 4294967295)
  %63 = mul nuw <2 x i64> %62, %61
  %64 = and <2 x i64> %60, splat (i64 4294967295)
  %65 = mul nuw <2 x i64> %64, %61
  %66 = and <2 x i64> %57, splat (i64 4294967295)
  %67 = mul nuw <2 x i64> %62, %66
  %68 = mul nuw <2 x i64> %64, %66
  %69 = lshr <2 x i64> %63, splat (i64 32)
  %70 = add nuw <2 x i64> %65, %69
  %71 = and <2 x i64> %70, splat (i64 4294967295)
  %72 = lshr <2 x i64> %70, splat (i64 32)
  %73 = add nuw <2 x i64> %71, %67
  %74 = lshr <2 x i64> %73, splat (i64 32)
  %75 = ashr <4 x i32> %55, <i32 0, i32 31, i32 0, i32 31>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %54, %77
  %79 = ashr <4 x i32> %58, <i32 0, i32 31, i32 0, i32 31>
  %80 = shufflevector <4 x i32> %79, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %81 = bitcast <4 x i32> %80 to <2 x i64>
  %82 = and <2 x i64> %0, %81
  %83 = add <2 x i64> %78, %82
  %84 = sub <2 x i64> %0, %83
  %85 = add <2 x i64> %84, %68
  %86 = add <2 x i64> %85, %72
  %87 = add <2 x i64> %86, %74
  %88 = icmp eq i64 %45, 0
  %89 = bitcast <2 x i64> %87 to <4 x i32>
  %90 = ashr <4 x i32> %89, <i32 0, i32 31, i32 0, i32 31>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = zext nneg i8 %47 to i32
  %94 = zext nneg i8 %47 to i64
  %95 = shl nuw i64 1, %94
  %96 = sext i1 %88 to i64
  %97 = add i64 %95, %96
  %98 = insertelement <2 x i64> poison, i64 %97, i64 0
  %99 = shufflevector <2 x i64> %98, <2 x i64> poison, <2 x i32> zeroinitializer
  %100 = and <2 x i64> %99, %92
  %101 = add <2 x i64> %100, %87
  %102 = xor i32 %93, 63
  %103 = zext nneg i32 %102 to i64
  %104 = shl nuw i64 1, %103
  %105 = insertelement <2 x i64> poison, i64 %104, i64 0
  %106 = shufflevector <2 x i64> %105, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %93, i64 0
  %108 = bitcast <4 x i32> %107 to <2 x i64>
  %109 = shufflevector <2 x i64> %108, <2 x i64> poison, <2 x i32> zeroinitializer
  %110 = lshr <2 x i64> %101, %109
  %111 = xor <2 x i64> %110, %106
  %112 = sub <2 x i64> %111, %106
  %113 = xor <2 x i64> %112, %52
  %114 = sub <2 x i64> %113, %52
  br label %115

115:                                              ; preds = %2, %44
  %116 = phi <2 x i64> [ %114, %44 ], [ %0, %2 ]
  ret <2 x i64> %116
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef, ptr noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
