; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/8e9bf17/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/8e9bf17/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -1) <8 x i64> @target_mullhi_u64_raw(<8 x i64> noundef %0, <8 x i64> noundef %1) local_unnamed_addr #0 {
  %3 = bitcast <8 x i64> %0 to <16 x i32>
  %4 = shufflevector <16 x i32> %3, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %5 = bitcast <16 x i32> %4 to <8 x i64>
  %6 = bitcast <8 x i64> %1 to <16 x i32>
  %7 = shufflevector <16 x i32> %6, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %8 = bitcast <16 x i32> %7 to <8 x i64>
  %9 = and <8 x i64> %0, splat (i64 4294967295)
  %10 = and <8 x i64> %1, splat (i64 4294967295)
  %11 = mul nuw <8 x i64> %10, %9
  %12 = and <8 x i64> %8, splat (i64 4294967295)
  %13 = mul nuw <8 x i64> %12, %9
  %14 = and <8 x i64> %5, splat (i64 4294967295)
  %15 = mul nuw <8 x i64> %14, %10
  %16 = mul nuw <8 x i64> %12, %14
  %17 = lshr <8 x i64> %11, splat (i64 32)
  %18 = add nuw <8 x i64> %13, %17
  %19 = and <8 x i64> %18, splat (i64 4294967295)
  %20 = lshr <8 x i64> %18, splat (i64 32)
  %21 = add nuw <8 x i64> %19, %15
  %22 = lshr <8 x i64> %21, splat (i64 32)
  %23 = add nuw <8 x i64> %20, %16
  %24 = add nuw <8 x i64> %23, %22
  ret <8 x i64> %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -1) <8 x i64> @target_mullhi_u64_pre(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = insertelement <8 x i64> poison, i64 %1, i64 0
  %4 = shufflevector <8 x i64> %3, <8 x i64> poison, <8 x i32> zeroinitializer
  %5 = bitcast <8 x i64> %0 to <16 x i32>
  %6 = shufflevector <16 x i32> %5, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %7 = bitcast <16 x i32> %6 to <8 x i64>
  %8 = bitcast <8 x i64> %4 to <16 x i32>
  %9 = shufflevector <16 x i32> %8, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %10 = bitcast <16 x i32> %9 to <8 x i64>
  %11 = and <8 x i64> %0, splat (i64 4294967295)
  %12 = and <8 x i64> %4, splat (i64 4294967295)
  %13 = mul nuw <8 x i64> %12, %11
  %14 = and <8 x i64> %10, splat (i64 4294967295)
  %15 = mul nuw <8 x i64> %14, %11
  %16 = and <8 x i64> %7, splat (i64 4294967295)
  %17 = mul nuw <8 x i64> %16, %12
  %18 = mul nuw <8 x i64> %14, %16
  %19 = lshr <8 x i64> %13, splat (i64 32)
  %20 = add nuw <8 x i64> %15, %19
  %21 = and <8 x i64> %20, splat (i64 4294967295)
  %22 = lshr <8 x i64> %20, splat (i64 32)
  %23 = add nuw <8 x i64> %21, %17
  %24 = lshr <8 x i64> %23, splat (i64 32)
  %25 = add nuw <8 x i64> %22, %18
  %26 = add nuw <8 x i64> %25, %24
  ret <8 x i64> %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u64_api(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %83, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %41

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = zext i64 %14 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %1 to i128
  %18 = udiv i128 %16, %17
  %19 = trunc i128 %18 to i64
  %20 = mul i64 %1, %19
  %21 = add i64 %20, %1
  %22 = icmp ult i64 %21, %14
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = trunc nuw nsw i32 %7 to i8
  br label %36

25:                                               ; preds = %12
  %26 = sub i64 0, %20
  %27 = shl i64 %19, 1
  %28 = shl i64 %26, 1
  %29 = icmp uge i64 %28, %1
  %30 = icmp slt i64 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i64
  %33 = or disjoint i64 %27, %32
  %34 = trunc nuw nsw i32 %7 to i8
  %35 = or disjoint i8 %34, 64
  br label %36

36:                                               ; preds = %23, %25
  %37 = phi i8 [ %35, %25 ], [ %24, %23 ]
  %38 = phi i64 [ %33, %25 ], [ %19, %23 ]
  %39 = add i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %10, %36
  %42 = phi i8 [ %11, %10 ], [ %37, %36 ]
  %43 = zext nneg i8 %42 to i32
  %44 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %0, i32 range(i32 0, 256) %43)
  br label %83

45:                                               ; preds = %36
  %46 = insertelement <8 x i64> poison, i64 %39, i64 0
  %47 = shufflevector <8 x i64> %46, <8 x i64> poison, <8 x i32> zeroinitializer
  %48 = bitcast <8 x i64> %0 to <16 x i32>
  %49 = shufflevector <16 x i32> %48, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %50 = bitcast <16 x i32> %49 to <8 x i64>
  %51 = bitcast <8 x i64> %47 to <16 x i32>
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = and <8 x i64> %0, splat (i64 4294967295)
  %55 = and <8 x i64> %47, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, %54
  %57 = and <8 x i64> %53, splat (i64 4294967295)
  %58 = mul nuw <8 x i64> %57, %54
  %59 = and <8 x i64> %50, splat (i64 4294967295)
  %60 = mul nuw <8 x i64> %55, %59
  %61 = mul nuw <8 x i64> %57, %59
  %62 = lshr <8 x i64> %56, splat (i64 32)
  %63 = add nuw <8 x i64> %58, %62
  %64 = and <8 x i64> %63, splat (i64 4294967295)
  %65 = lshr <8 x i64> %63, splat (i64 32)
  %66 = add nuw <8 x i64> %64, %60
  %67 = lshr <8 x i64> %66, splat (i64 32)
  %68 = add nuw <8 x i64> %65, %61
  %69 = add nuw <8 x i64> %68, %67
  %70 = zext nneg i8 %37 to i32
  %71 = icmp samesign ult i8 %37, 64
  br i1 %71, label %81, label %72

72:                                               ; preds = %45
  %73 = and i32 %70, 63
  %74 = sub <8 x i64> %0, %69
  %75 = lshr <8 x i64> %74, splat (i64 1)
  %76 = add <8 x i64> %75, %69
  %77 = zext nneg i32 %73 to i64
  %78 = insertelement <8 x i64> poison, i64 %77, i64 0
  %79 = shufflevector <8 x i64> %78, <8 x i64> poison, <8 x i32> zeroinitializer
  %80 = lshr <8 x i64> %76, %79
  br label %83

81:                                               ; preds = %45
  %82 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %69, i32 range(i32 0, 256) %70)
  br label %83

83:                                               ; preds = %81, %72, %41, %2
  %84 = phi <8 x i64> [ %0, %2 ], [ %44, %41 ], [ %80, %72 ], [ %82, %81 ]
  ret <8 x i64> %84
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_s64_api(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
define dso_local <8 x i64> @target_u64_bf_api(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_s64_bf_api(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = xor i32 %7, 63
  %9 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %10 = icmp samesign ult i64 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = lshr i64 %1, 56
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = and i32 %13, 128
  %15 = or disjoint i32 %8, %14
  %16 = trunc nuw i32 %15 to i8
  br label %40

17:                                               ; preds = %4
  %18 = icmp slt i64 %1, 0
  %19 = sub nsw i64 62, %6
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = zext i64 %21 to i128
  %23 = shl nuw i128 %22, 64
  %24 = zext i64 %5 to i128
  %25 = udiv i128 %23, %24
  %26 = trunc i128 %25 to i64
  %27 = mul i64 %5, %26
  %28 = sub i64 0, %27
  %29 = shl i64 %26, 1
  %30 = shl i64 %28, 1
  %31 = icmp uge i64 %30, %5
  %32 = icmp slt i64 %28, 0
  %33 = or i1 %32, %31
  %34 = zext i1 %33 to i64
  %35 = trunc nuw nsw i32 %8 to i8
  %36 = or disjoint i64 %29, 1
  %37 = add i64 %36, %34
  %38 = select i1 %18, i8 -64, i8 64
  %39 = or disjoint i8 %38, %35
  br label %40

40:                                               ; preds = %11, %17
  %41 = phi i64 [ 0, %11 ], [ %37, %17 ]
  %42 = phi i8 [ %16, %11 ], [ %39, %17 ]
  %43 = and i8 %42, 63
  %44 = ashr i8 %42, 7
  %45 = sext i8 %44 to i32
  %46 = insertelement <16 x i32> poison, i32 %45, i64 0
  %47 = shufflevector <16 x i32> %46, <16 x i32> poison, <16 x i32> zeroinitializer
  %48 = bitcast <16 x i32> %47 to <8 x i64>
  %49 = insertelement <8 x i64> poison, i64 %41, i64 0
  %50 = shufflevector <8 x i64> %49, <8 x i64> poison, <8 x i32> zeroinitializer
  %51 = bitcast <8 x i64> %0 to <16 x i32>
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = bitcast <8 x i64> %50 to <16 x i32>
  %55 = shufflevector <16 x i32> %54, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %56 = bitcast <16 x i32> %55 to <8 x i64>
  %57 = and <8 x i64> %0, splat (i64 4294967295)
  %58 = and <8 x i64> %50, splat (i64 4294967295)
  %59 = mul nuw <8 x i64> %58, %57
  %60 = and <8 x i64> %56, splat (i64 4294967295)
  %61 = mul nuw <8 x i64> %60, %57
  %62 = and <8 x i64> %53, splat (i64 4294967295)
  %63 = mul nuw <8 x i64> %58, %62
  %64 = mul nuw <8 x i64> %60, %62
  %65 = lshr <8 x i64> %59, splat (i64 32)
  %66 = add nuw <8 x i64> %61, %65
  %67 = and <8 x i64> %66, splat (i64 4294967295)
  %68 = lshr <8 x i64> %66, splat (i64 32)
  %69 = add nuw <8 x i64> %67, %63
  %70 = lshr <8 x i64> %69, splat (i64 32)
  %71 = icmp slt <8 x i64> %0, zeroinitializer
  %72 = select <8 x i1> %71, <8 x i64> %50, <8 x i64> zeroinitializer
  %73 = icmp slt <8 x i64> %50, zeroinitializer
  %74 = select <8 x i1> %73, <8 x i64> %0, <8 x i64> zeroinitializer
  %75 = add <8 x i64> %72, %74
  %76 = sub <8 x i64> %0, %75
  %77 = add <8 x i64> %76, %64
  %78 = add <8 x i64> %77, %68
  %79 = add <8 x i64> %78, %70
  %80 = icmp eq i64 %41, 0
  %81 = zext nneg i8 %43 to i64
  %82 = shl nuw i64 1, %81
  %83 = sext i1 %80 to i64
  %84 = add i64 %82, %83
  %85 = insertelement <8 x i64> poison, i64 %84, i64 0
  %86 = shufflevector <8 x i64> %85, <8 x i64> poison, <8 x i32> zeroinitializer
  %87 = icmp slt <8 x i64> %79, zeroinitializer
  %88 = select <8 x i1> %87, <8 x i64> %86, <8 x i64> zeroinitializer
  %89 = add <8 x i64> %88, %79
  %90 = insertelement <8 x i64> poison, i64 %81, i64 0
  %91 = shufflevector <8 x i64> %90, <8 x i64> poison, <8 x i32> zeroinitializer
  %92 = ashr <8 x i64> %89, %91
  %93 = xor <8 x i64> %92, %48
  %94 = sub <8 x i64> %93, %48
  br label %95

95:                                               ; preds = %2, %40
  %96 = phi <8 x i64> [ %94, %40 ], [ %0, %2 ]
  ret <8 x i64> %96
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64>, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
