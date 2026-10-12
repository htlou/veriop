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
  %3 = bitcast <2 x i64> %0 to <4 x i32>
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  %6 = bitcast <2 x i64> %1 to <4 x i32>
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %8 = bitcast <4 x i32> %7 to <2 x i64>
  %9 = and <2 x i64> %0, splat (i64 4294967295)
  %10 = and <2 x i64> %1, splat (i64 4294967295)
  %11 = mul nuw <2 x i64> %10, %9
  %12 = and <2 x i64> %8, splat (i64 4294967295)
  %13 = mul nuw <2 x i64> %12, %9
  %14 = and <2 x i64> %5, splat (i64 4294967295)
  %15 = mul nuw <2 x i64> %14, %10
  %16 = mul nuw <2 x i64> %12, %14
  %17 = lshr <2 x i64> %11, splat (i64 32)
  %18 = add nuw <2 x i64> %13, %17
  %19 = and <2 x i64> %18, splat (i64 4294967295)
  %20 = lshr <2 x i64> %18, splat (i64 32)
  %21 = add nuw <2 x i64> %19, %15
  %22 = lshr <2 x i64> %21, splat (i64 32)
  %23 = add nuw <2 x i64> %20, %16
  %24 = add nuw <2 x i64> %23, %22
  ret <2 x i64> %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -1) <2 x i64> @target_mullhi_u64_pre(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = insertelement <2 x i64> poison, i64 %1, i64 0
  %4 = shufflevector <2 x i64> %3, <2 x i64> poison, <2 x i32> zeroinitializer
  %5 = bitcast <2 x i64> %0 to <4 x i32>
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %7 = bitcast <4 x i32> %6 to <2 x i64>
  %8 = bitcast <2 x i64> %4 to <4 x i32>
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %10 = bitcast <4 x i32> %9 to <2 x i64>
  %11 = and <2 x i64> %0, splat (i64 4294967295)
  %12 = and <2 x i64> %4, splat (i64 4294967295)
  %13 = mul nuw <2 x i64> %12, %11
  %14 = and <2 x i64> %10, splat (i64 4294967295)
  %15 = mul nuw <2 x i64> %14, %11
  %16 = and <2 x i64> %7, splat (i64 4294967295)
  %17 = mul nuw <2 x i64> %16, %12
  %18 = mul nuw <2 x i64> %14, %16
  %19 = lshr <2 x i64> %13, splat (i64 32)
  %20 = add nuw <2 x i64> %15, %19
  %21 = and <2 x i64> %20, splat (i64 4294967295)
  %22 = lshr <2 x i64> %20, splat (i64 32)
  %23 = add nuw <2 x i64> %21, %17
  %24 = lshr <2 x i64> %23, splat (i64 32)
  %25 = add nuw <2 x i64> %22, %18
  %26 = add nuw <2 x i64> %25, %24
  ret <2 x i64> %26
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
