; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/bf79e0e/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/bf79e0e/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"libdivide.h:%d: %s(): Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"branchfree divider must be != 1\00", align 1
@__func__.libdivide_s64_branchfree_gen = private unnamed_addr constant [29 x i8] c"libdivide_s64_branchfree_gen\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"branchfree divider must be != -1\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -1) <2 x i64> @target_mullhi_u64_raw(<2 x i64> noundef %0, <2 x i64> noundef %1) local_unnamed_addr #0 {
  %3 = and <2 x i64> %0, splat (i64 4294967295)
  %4 = lshr <2 x i64> %0, splat (i64 32)
  %5 = and <2 x i64> %1, splat (i64 4294967295)
  %6 = lshr <2 x i64> %1, splat (i64 32)
  %7 = mul nuw <2 x i64> %5, %3
  %8 = lshr <2 x i64> %7, splat (i64 32)
  %9 = mul nuw <2 x i64> %6, %3
  %10 = mul nuw <2 x i64> %5, %4
  %11 = mul nuw <2 x i64> %6, %4
  %12 = add nuw <2 x i64> %8, %10
  %13 = and <2 x i64> %12, splat (i64 4294967295)
  %14 = lshr <2 x i64> %12, splat (i64 32)
  %15 = add nuw <2 x i64> %13, %9
  %16 = lshr <2 x i64> %15, splat (i64 32)
  %17 = add nuw <2 x i64> %14, %11
  %18 = add nuw <2 x i64> %17, %16
  ret <2 x i64> %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -1) <2 x i64> @target_mullhi_u64_pre(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = insertelement <2 x i64> poison, i64 %1, i64 0
  %4 = shufflevector <2 x i64> %3, <2 x i64> poison, <2 x i32> zeroinitializer
  %5 = and <2 x i64> %0, splat (i64 4294967295)
  %6 = lshr <2 x i64> %0, splat (i64 32)
  %7 = and <2 x i64> %4, splat (i64 4294967295)
  %8 = lshr <2 x i64> %4, splat (i64 32)
  %9 = mul nuw <2 x i64> %7, %5
  %10 = lshr <2 x i64> %9, splat (i64 32)
  %11 = mul nuw <2 x i64> %8, %5
  %12 = mul nuw <2 x i64> %7, %6
  %13 = mul nuw <2 x i64> %8, %6
  %14 = add nuw <2 x i64> %10, %12
  %15 = and <2 x i64> %14, splat (i64 4294967295)
  %16 = lshr <2 x i64> %14, splat (i64 32)
  %17 = add nuw <2 x i64> %15, %11
  %18 = lshr <2 x i64> %17, splat (i64 32)
  %19 = add nuw <2 x i64> %16, %13
  %20 = add nuw <2 x i64> %19, %18
  ret <2 x i64> %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u64_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %76, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %58, label %10

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
  %41 = and <2 x i64> %0, splat (i64 4294967295)
  %42 = lshr <2 x i64> %0, splat (i64 32)
  %43 = and <2 x i64> %40, splat (i64 4294967295)
  %44 = lshr <2 x i64> %40, splat (i64 32)
  %45 = mul nuw <2 x i64> %43, %41
  %46 = lshr <2 x i64> %45, splat (i64 32)
  %47 = mul nuw <2 x i64> %44, %41
  %48 = mul nuw <2 x i64> %43, %42
  %49 = mul nuw <2 x i64> %44, %42
  %50 = add nuw <2 x i64> %46, %48
  %51 = and <2 x i64> %50, splat (i64 4294967295)
  %52 = lshr <2 x i64> %50, splat (i64 32)
  %53 = add nuw <2 x i64> %51, %47
  %54 = lshr <2 x i64> %53, splat (i64 32)
  %55 = add nuw <2 x i64> %52, %49
  %56 = add nuw <2 x i64> %55, %54
  %57 = icmp samesign ult i8 %35, 64
  br i1 %57, label %72, label %63

58:                                               ; preds = %4
  %59 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %7, i64 0
  %60 = bitcast <4 x i32> %59 to <2 x i64>
  %61 = shufflevector <2 x i64> %60, <2 x i64> poison, <2 x i32> zeroinitializer
  %62 = lshr <2 x i64> %0, %61
  br label %76

63:                                               ; preds = %34
  %64 = and i32 %38, 63
  %65 = sub <2 x i64> %0, %56
  %66 = lshr <2 x i64> %65, splat (i64 1)
  %67 = add <2 x i64> %66, %56
  %68 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %64, i64 0
  %69 = bitcast <4 x i32> %68 to <2 x i64>
  %70 = shufflevector <2 x i64> %69, <2 x i64> poison, <2 x i32> zeroinitializer
  %71 = lshr <2 x i64> %67, %70
  br label %76

72:                                               ; preds = %34
  %73 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %38, i64 0
  %74 = bitcast <4 x i32> %73 to <2 x i64>
  %75 = tail call <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %56, <2 x i64> %74)
  br label %76

76:                                               ; preds = %72, %63, %58, %2
  %77 = phi <2 x i64> [ %0, %2 ], [ %62, %58 ], [ %71, %63 ], [ %75, %72 ]
  ret <2 x i64> %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s64_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %146, label %4

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
  br label %146

87:                                               ; preds = %45
  %88 = insertelement <2 x i64> poison, i64 %52, i64 0
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> zeroinitializer
  %90 = and <2 x i64> %0, splat (i64 4294967295)
  %91 = lshr <2 x i64> %0, splat (i64 32)
  %92 = and <2 x i64> %89, splat (i64 4294967295)
  %93 = lshr <2 x i64> %89, splat (i64 32)
  %94 = mul nuw <2 x i64> %92, %90
  %95 = lshr <2 x i64> %94, splat (i64 32)
  %96 = mul nuw <2 x i64> %93, %90
  %97 = mul nuw <2 x i64> %92, %91
  %98 = mul nuw <2 x i64> %93, %91
  %99 = add nuw <2 x i64> %95, %97
  %100 = and <2 x i64> %99, splat (i64 4294967295)
  %101 = lshr <2 x i64> %99, splat (i64 32)
  %102 = add nuw <2 x i64> %100, %96
  %103 = lshr <2 x i64> %102, splat (i64 32)
  %104 = bitcast <2 x i64> %0 to <4 x i32>
  %105 = ashr <4 x i32> %104, <i32 0, i32 31, i32 0, i32 31>
  %106 = shufflevector <4 x i32> %105, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %107 = bitcast <4 x i32> %106 to <2 x i64>
  %108 = and <2 x i64> %89, %107
  %109 = bitcast <2 x i64> %89 to <4 x i32>
  %110 = ashr <4 x i32> %109, <i32 0, i32 31, i32 0, i32 31>
  %111 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  %113 = and <2 x i64> %0, %112
  %114 = add nuw <2 x i64> %98, %101
  %115 = add <2 x i64> %108, %113
  %116 = sub <2 x i64> %114, %115
  %117 = add <2 x i64> %116, %103
  %118 = zext i8 %51 to i32
  %119 = and i32 %118, 64
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %87
  %122 = ashr i8 %51, 7
  %123 = sext i8 %122 to i32
  %124 = insertelement <4 x i32> poison, i32 %123, i64 0
  %125 = shufflevector <4 x i32> %124, <4 x i32> poison, <4 x i32> zeroinitializer
  %126 = bitcast <4 x i32> %125 to <2 x i64>
  %127 = xor <2 x i64> %0, %126
  %128 = sub <2 x i64> %127, %126
  %129 = add <2 x i64> %128, %117
  br label %130

130:                                              ; preds = %121, %87
  %131 = phi <2 x i64> [ %129, %121 ], [ %117, %87 ]
  %132 = and i32 %118, 63
  %133 = xor i32 %132, 63
  %134 = zext nneg i32 %133 to i64
  %135 = shl nuw i64 1, %134
  %136 = insertelement <2 x i64> poison, i64 %135, i64 0
  %137 = shufflevector <2 x i64> %136, <2 x i64> poison, <2 x i32> zeroinitializer
  %138 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %132, i64 0
  %139 = bitcast <4 x i32> %138 to <2 x i64>
  %140 = shufflevector <2 x i64> %139, <2 x i64> poison, <2 x i32> zeroinitializer
  %141 = lshr <2 x i64> %131, %140
  %142 = xor <2 x i64> %141, %137
  %143 = sub <2 x i64> %142, %137
  %144 = lshr <2 x i64> %143, splat (i64 63)
  %145 = add <2 x i64> %144, %143
  br label %146

146:                                              ; preds = %130, %54, %2
  %147 = phi <2 x i64> [ %0, %2 ], [ %86, %54 ], [ %145, %130 ]
  ret <2 x i64> %147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u64_bf_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %58, label %4

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
  %35 = and <2 x i64> %0, splat (i64 4294967295)
  %36 = lshr <2 x i64> %0, splat (i64 32)
  %37 = and <2 x i64> %34, splat (i64 4294967295)
  %38 = lshr <2 x i64> %34, splat (i64 32)
  %39 = mul nuw <2 x i64> %37, %35
  %40 = lshr <2 x i64> %39, splat (i64 32)
  %41 = mul nuw <2 x i64> %38, %35
  %42 = mul nuw <2 x i64> %37, %36
  %43 = mul nuw <2 x i64> %38, %36
  %44 = add nuw <2 x i64> %40, %42
  %45 = and <2 x i64> %44, splat (i64 4294967295)
  %46 = lshr <2 x i64> %44, splat (i64 32)
  %47 = add nuw <2 x i64> %45, %41
  %48 = lshr <2 x i64> %47, splat (i64 32)
  %49 = add nuw <2 x i64> %46, %43
  %50 = add nuw <2 x i64> %49, %48
  %51 = sub <2 x i64> %0, %50
  %52 = lshr <2 x i64> %51, splat (i64 1)
  %53 = add <2 x i64> %52, %50
  %54 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %32, i64 0
  %55 = bitcast <4 x i32> %54 to <2 x i64>
  %56 = shufflevector <2 x i64> %55, <2 x i64> poison, <2 x i32> zeroinitializer
  %57 = lshr <2 x i64> %53, %56
  br label %58

58:                                               ; preds = %2, %30
  %59 = phi <2 x i64> [ %57, %30 ], [ %0, %2 ]
  ret <2 x i64> %59
}

; Function Attrs: nofree nounwind uwtable
define dso_local <2 x i64> @target_s64_bf_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  switch i64 %1, label %9 [
    i64 0, label %111
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
  %55 = and <2 x i64> %0, splat (i64 4294967295)
  %56 = lshr <2 x i64> %0, splat (i64 32)
  %57 = and <2 x i64> %54, splat (i64 4294967295)
  %58 = lshr <2 x i64> %54, splat (i64 32)
  %59 = mul nuw <2 x i64> %57, %55
  %60 = lshr <2 x i64> %59, splat (i64 32)
  %61 = mul nuw <2 x i64> %58, %55
  %62 = mul nuw <2 x i64> %57, %56
  %63 = mul nuw <2 x i64> %58, %56
  %64 = add nuw <2 x i64> %60, %62
  %65 = and <2 x i64> %64, splat (i64 4294967295)
  %66 = lshr <2 x i64> %64, splat (i64 32)
  %67 = add nuw <2 x i64> %65, %61
  %68 = lshr <2 x i64> %67, splat (i64 32)
  %69 = bitcast <2 x i64> %0 to <4 x i32>
  %70 = ashr <4 x i32> %69, <i32 0, i32 31, i32 0, i32 31>
  %71 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %72 = bitcast <4 x i32> %71 to <2 x i64>
  %73 = and <2 x i64> %54, %72
  %74 = bitcast <2 x i64> %54 to <4 x i32>
  %75 = ashr <4 x i32> %74, <i32 0, i32 31, i32 0, i32 31>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %0, %77
  %79 = sub <2 x i64> %0, %73
  %80 = add <2 x i64> %79, %63
  %81 = add <2 x i64> %80, %66
  %82 = sub <2 x i64> %81, %78
  %83 = add <2 x i64> %82, %68
  %84 = icmp eq i64 %45, 0
  %85 = bitcast <2 x i64> %83 to <4 x i32>
  %86 = ashr <4 x i32> %85, <i32 0, i32 31, i32 0, i32 31>
  %87 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %88 = bitcast <4 x i32> %87 to <2 x i64>
  %89 = zext nneg i8 %47 to i32
  %90 = zext nneg i8 %47 to i64
  %91 = shl nuw i64 1, %90
  %92 = sext i1 %84 to i64
  %93 = add i64 %91, %92
  %94 = insertelement <2 x i64> poison, i64 %93, i64 0
  %95 = shufflevector <2 x i64> %94, <2 x i64> poison, <2 x i32> zeroinitializer
  %96 = and <2 x i64> %95, %88
  %97 = add <2 x i64> %96, %83
  %98 = xor i32 %89, 63
  %99 = zext nneg i32 %98 to i64
  %100 = shl nuw i64 1, %99
  %101 = insertelement <2 x i64> poison, i64 %100, i64 0
  %102 = shufflevector <2 x i64> %101, <2 x i64> poison, <2 x i32> zeroinitializer
  %103 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %89, i64 0
  %104 = bitcast <4 x i32> %103 to <2 x i64>
  %105 = shufflevector <2 x i64> %104, <2 x i64> poison, <2 x i32> zeroinitializer
  %106 = lshr <2 x i64> %97, %105
  %107 = xor <2 x i64> %106, %102
  %108 = sub <2 x i64> %107, %102
  %109 = xor <2 x i64> %108, %52
  %110 = sub <2 x i64> %109, %52
  br label %111

111:                                              ; preds = %2, %44
  %112 = phi <2 x i64> [ %110, %44 ], [ %0, %2 ]
  ret <2 x i64> %112
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef, ptr noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) #5

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
